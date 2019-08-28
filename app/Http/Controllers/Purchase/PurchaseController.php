<?php

namespace App\Http\Controllers\Purchase;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;


class PurchaseController extends WebController
{
    /**
     * 采购信息管理
     *
     * @return void
     */
    public function __construct(Request $request)
    {
        //该方法验证说明必须登录用户才能操作
        $this->middleware('auth');
    }
    //实施项目采购列表
    public function purchaseConduct(Request $request){

        $this->user();

        $project_name       =$request->input('project_name','');
        $engineering_name   =$request->input('engineering_name','');
        $purchase_username    =$request->input('purchase_username','');
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['engineering_name']        =$engineering_name;
        $data['purchase_username']=$purchase_username;

        $db=DB::table('engineering')
            ->join('project','project.id','=','project_id')
            ->leftjoin('purchase','engineering.id','=','purchase.engin_id')
            ->where('engineering.status',1); //实施项目工程

        if(!empty($project_name)){
            $db->where('project_name','like','%'.$project_name.'%');
        }
        if(!empty($engineering_name)){
            $db->where('engineering_name','like','%'.$engineering_name.'%');
        }
        if(!empty($purchase_username)){
            $db->where('purchase_username','like','%'.$purchase_username.'%');
        }

        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->orderby('engineering.id','asc')
            ->select(['project.project_name','project.budget_uid','project.budget_username','purchase_uid','purchase_username','is_conf_architectural',
                'engineering.project_id','engineering.id as engin_id', 'engineering.engineering_name','engineering.budget_id',
                'build_area', 'engineering.status as engin_status', 'contract_code',
                'purchase_status','logistics_status','batch_status','purchase.remark'
            ])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        //$queries = DB::getQueryLog();
        //var_dump($queries);

        $url='/purchase/purchaseConduct?project_name='.$project_name.'&engineering_name='.$engineering_name.'&purchase_username='.$purchase_username;
        $data['page']   =$this->webfenye($page,ceil($data['count']/$rows),$url);

        $data['navid']      =25;
        $data['subnavid']   =2501;
        if( !(in_array(2501,$this->user()->pageauth)) && !in_array(2501,$this->user()->manageauth)){
            return redirect('/home');
        }

        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('purchase.purchaseConduct',$data);
    }

    //编辑采购信息 $id 工程id
    public function editPurchase(Request $request,$id){
        //判断是否为管理员 如果是管理员可以指定项目采购负责人 否则只能更改状态
        //该页面功能有三部分 更改项目状态 补充项目采购负责人， 添加采购状态
        $this->user();
        $data['navid']      =25;
        $data['subnavid']   =2501;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(250101,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) || in_array(250101,$this->user()->manageauth)){
            if($engineering->status != 1){
                return redirect('/purchase/purchaseConduct?status=2&notice='.'只有实施项目才能更改采购状态');
            }
        }else{
            //采购人员可以操作更改工程设计详情
            return redirect('/purchase/purchaseConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }

        if(in_array(250105,$this->user()->manageauth)){ //有指定项目的采购人员权限
            $data['userList']=DB::table('users')->where('status',1)->orderby('name')->select(['id','name'])->get();
        }
        $data['project']=$project;
        $data['engineering']=$engineering;
        $data['engin_id'] =$id;
        $data['purchase'] =DB::table('purchase')->where('engin_id',$id)->first();
        if(empty($data['purchase'])){
            $data['purchase'] = new \stdClass();
            $data['purchase']->id = 0;
            $data['purchase']->purchase_status =0;
            $data['purchase']->logistics_status =0;
        }
        return view('purchase.editPurchase',$data);
    }
    //编辑项目状态
    public function updateProjectStatus(Request $request,$id)
    {
        $engin=DB::table('engineering')->where('id',$id)->first();
        $status =$request->input('project_status',2);
        if(empty($engin)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'项目不存在');
        }

        if($engin->status ==1  && !in_array($status,[2,4])){
            echo"<script>alert('状态更改失败，项目状态不可逆，请更改其他状态');history.go(-1);</script>";
        }elseif($engin->status ==2 && $status != 4){
            echo"<script>alert('状态更改失败，项目状态不可逆，请更改其他状态');history.go(-1);</script>";
        }
        $data=['status'=>$status,
            'edit_uid'=>$this->user()->id,
            'updated_at'=>date('Y-m-d')];
        if($status == 2){
            $data['completed_at'] =date('Y-m-d'); //竣工时间
        }elseif($status ==4){
            $data['termination_at'] =date('Y-m-d');//终止时间
        }
        DB::table('engineering')->where('id',$id)->update($data);
       if($status == 2){
            return redirect('/purchase/purchaseConduct?status=1&notice='.'项目状态更改成功！');
        }elseif($status == 4){
            return redirect('/purchase/purchaseCompleted?status=1&notice='.'项目状态更改成功！');
        }else{
            return redirect('/purchase/purchaseConduct?status=1&notice='.'项目状态更改成功！');
        }
    }
    //提交保存采购状态 信息
    public function postEditPurchase(Request $request,$id){

        $purchase_status    =$request->input('purchase_status',0);
        $logistics_status   =$request->input('logistics_status',0);
        $remark             =$request->input('remark',0);
        $purchase_uid       =$request->input('purchase_uid',0);

        $purchase =DB::table('purchase')->where('engin_id',$id)->first();
        $budget =DB::table('budget')->where('engin_id',$id)->first();
        if(empty($purchase)){
            $data=[
                'project_id'=>$budget->project_id,
                'engin_id'=>$id,
                'budget_id'=>$budget->id,
                'purchase_status'=>$purchase_status,
                'logistics_status'=>$logistics_status,
                'batch_status'=>0,
                'remark'=>$remark,
                'created_uid'=>$this->user()->id,
                'created_at'=>date('Y-m-d'),
            ];
                DB::table('purchase')->insert($data);
        }else{
            $data=[
                'purchase_status'=>$purchase_status,
                'logistics_status'=>$logistics_status,
                'remark'=>$remark,
                'edit_uid'=>$this->user()->id,
                'updated_at'=>date('Y-m-d'),
            ];
            DB::table('purchase')->where('engin_id',$id)->update($data);
        }
        if($purchase_uid !=0 && in_array(250105,$this->user()->manageauth)){
            $purchase_username =DB::table('users')->where('id',$purchase_uid)->value('name');
            DB::table('project')->where('id',$budget->project_id)
                ->update(['purchase_uid'=>$purchase_uid,'purchase_username'=>$purchase_username]);
        }
        return redirect('/purchase/purchaseConduct?status=1&notice='.'编辑成功');
    }

    //批次管理
    public function purchaseBatchManage(Request $request,$id){
        $this->user();
        $data['navid']      =25;
        $data['subnavid']   =2501;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( !(in_array(250102,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(250102,$this->user()->manageauth)){
            //采购人员可以操作更改工程设计详情
            return redirect('/purchase/purchaseConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }
        if($engineering->budget_id ==0){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'请先创建预算单，再创建采购批次？');
        }
        $data['project'] =$project;
        $data['engineering'] =$engineering;
        $data['engin_id']=$id;
        //获取批次列表
        $data['batchList']= DB::table('purchase_batch')->where('engin_id',$id)->get();

        return view('purchase.purchaseBatchManage',$data);

    }
    //保存采购批次信息
    public function postEditPurchaseBatch(Request $request,$id){
        //return $this->success($request->all());
        $batch_id   =$request->input('batch_id',[]);//  批次id
        $purchase_number=$request->input('purchase_number',[]);     //采购批次
        $deliver_properties=$request->input('deliver_properties',[]);       //发货性质
        $purchase_at=$request->input('purchase_at',[]);     //采购时间
        $deliver_time=$request->input('deliver_time',[]);       //发货时间
        $arrive_time=$request->input('arrive_time',[]);     //到达时间
        $transport_type=$request->input('transport_type',[]);       //运输方式
        $load_height=$request->input('load_height',[]);     //装载长度
        $load_mode=$request->input('load_mode',[]);     //装载方式
        $container_size=$request->input('container_size',[]);       //集装箱尺寸
        $container_number=$request->input('container_number',[]);       //集装箱数量
        $van_specs=$request->input('van_specs',[]);     //货车规格
        $van_number=$request->input('van_number',[]);       //货车数量
        $deliver_address=$request->input('deliver_address',[]);         //发货地址

        $purchase =DB::table('purchase')->where('engin_id',$id)->first();
        if(empty($purchase)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'先设置采购状态，再设置采购批次');
        }
        DB::beginTransaction();
        //删除不在批次数组中的批次
        DB::table('purchase_batch')->where('engin_id',$id)
            ->wherenotin('id',$batch_id)
            ->where('purchase_order_status',0)
            ->delete();

        DB::table('purchase')->where('engin_id',$id)
            ->update(['batch_status'=>1,'edit_uid'=>$this->user()->id,'updated_at'=>date('Y-m-d')]);
        $uid =$this->user()->id;
        $time =date('Y-m-d');
        foreach ($batch_id as $k=>$v) {
            $data = [
                'project_id' => $purchase->project_id,
                'engin_id' => $purchase->engin_id,
                'purchase_id' => $purchase->id,
                'purchase_number' => $purchase_number[$k],
                'deliver_properties' => $deliver_properties[$k],
                'purchase_at' => $purchase_at[$k],
                'deliver_time' => $deliver_time[$k],
                'arrive_time' => $arrive_time[$k],
                'transport_type' => $transport_type[$k],
                'load_height' => (float)$load_height[$k],
                'load_mode' => $load_mode[$k],
                'container_size' => $container_size[$k],
                'container_number' => (float)$container_number[$k],
                'van_specs' => $van_specs[$k],
                'van_number' => (float)$van_number[$k],
                'deliver_address' => $deliver_address[$k],
            ];
            if ($v == 0) {
                $data['created_uid'] = $uid;
                $data['created_at'] = $time;
                DB::table('purchase_batch')->insert($data);
            } else {
                $data['edit_uid'] = $uid;
                $data['updated_at'] = $time;
                DB::table('purchase_batch')->where('engin_id', $id)->where('id', $v)->update($data);
            }
        }
        DB::commit();
        return redirect('/purchase/purchaseConduct?status=1&notice='.'设置批次成功');

    }


    //采购单管理
    public function purchaseOrderManage(Request $request,$id){
        $this->user();
        $data['navid']      =25;
        $data['subnavid']   =2501;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( !(in_array(250102,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(250102,$this->user()->manageauth)){
            //采购人员可以操作更改工程设计详情
            return redirect('/purchase/purchaseConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }
        if($engineering->budget_id ==0){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'请先创建预算单，再创建采购批次？');
        }
        $data['project'] =$project;
        $data['engineering'] =$engineering;
        $data['engin_id']=$id;
        //获取批次列表
        $data['batchList']= DB::table('purchase_batch')->where('engin_id',$id)->get();

        return view('purchase.purchaseOrderManage',$data);

    }
    //创建采购单 $id 为采购批次id
    public function createPurchaseOrder(Request $request,$id){
        $this->user();
        $data['navid']      =25;
        $data['subnavid']   =2501;
        //采购批次信息
        $batchList= DB::table('purchase_batch')->where('id',$id)->first();
        if(empty($batchList)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'批次信息不存在');
        }
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$batchList->engin_id)->first();
        if(empty($engineering)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( !(in_array(250102,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(250102,$this->user()->manageauth)){
            //采购人员可以操作更改工程设计详情
            return redirect('/purchase/purchaseConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }
        if($engineering->budget_id ==0){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'请先创建预算单，再创建采购批次？');
        }
        $data['project'] =$project; //项目信息
        $data['engineering'] =$engineering; //工程信息
        $data['batch_id']=$id; //批次id
        //获取批次列表
        $data['batchList']= $batchList;
        //获取预算中的供应商信息
        $data['supplierList'] = DB::table('budget_item')
            ->where('engin_id',$batchList->engin_id)
            ->where('budget_id',$engineering->budget_id)
            ->orderby('supplier')
            ->pluck('supplier','supplier_id');
        return view('purchase.createPurchaseOrder',$data);
    }

    //编辑采购单
    public function editPurchaseOrder(Request $request,$id){

    }

    //物流管理
    public function purchaseLogisticsManage(Request $request,$id){
    }





    //实施项目采购列表
    public function purchaseCompleted(Request $request){

    }





}
