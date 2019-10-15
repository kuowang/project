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
    public function purchaseConduct(Request $request,$id=0){

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
            ->select(['project.project_name','project.budget_uid','project.budget_username','engineering.purchase_uid','engineering.purchase_username','is_conf_architectural',
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
        if($id){
            $data['project'] =DB::table('project')->where('id',$id)->first();
        }
        $data['id']=$id;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('purchase.purchaseConduct',$data);
    }
//实施项目采购列表
    public function purchaseCompleted(Request $request,$id=0){
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
            ->where('engineering.status',2); //竣工项目工程

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
            ->select(['project.project_name','project.budget_uid','project.budget_username','engineering.purchase_uid','engineering.purchase_username','is_conf_architectural',
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
        $data['subnavid']   =2502;
        if( !(in_array(2502,$this->user()->pageauth)) && !in_array(2502,$this->user()->manageauth)){
            return redirect('/home');
        }
        if($id){
            $data['project'] =DB::table('project')->where('id',$id)->first();
        }
        $data['id']=$id;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('purchase.purchaseCompleted',$data);
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
            if(!in_array($engineering->status,[1,2])){
                return redirect('/purchase/purchaseConduct?status=2&notice='.'只有实施项目才能更改采购状态');
            }
        }else{
            //采购人员可以操作更改工程设计详情
            return redirect('/purchase/purchaseConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }

        if(in_array(250105,$this->user()->manageauth)){ //有指定项目的采购人员权限
            $data['userList']=DB::table('users')->where('status',1)->where('department_id',4)->orderby('name')->select(['id','name'])->get();
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
        //设置项目工程数量和建筑总面积
        $this->setProjectEnginNumber($engin->project_id);
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
            DB::table('engineering')->where('id',$id)
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
        return redirect('/purchase/purchaseBatchManage/'.$id.'?status=1&notice='.'设置批次成功');

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

        $orderList =DB::table('purchase_order')->where('engin_id',$id)->get();
        $data['batchOrderList']=[];
        foreach ($orderList as $v){
            $data['batchOrderList'][$v->batch_id][]=$v;
        }
        return view('purchase.purchaseOrderManage',$data);

    }
    //创建采购单 $id 为采购批次id
    public function createPurchaseOrder(Request $request,$id){
        $this->user();
        $data['navid']      =25;
        $data['subnavid']   =2501;
        //采购批次信息
        $batchinfo= DB::table('purchase_batch')->where('id',$id)->first();
        if(empty($batchinfo)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'批次信息不存在');
        }
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$batchinfo->engin_id)->first();
        if(empty($engineering)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( !(in_array(25010304,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(25010304,$this->user()->manageauth)){
            //采购人员可以操作更改工程设计详情
            return redirect('/purchase/purchaseConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }
        if($engineering->budget_id ==0){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'请先创建预算单，再创建采购批次？3');
        }
        $data['project'] =$project; //项目信息
        $data['engineering'] =$engineering; //工程信息
        $data['batch_id']=$id; //批次id
        //获取批次列表
        $data['batchinfo']= $batchinfo;
        //获取预算中的供应商信息
        $data['supplierList'] = DB::table('budget_item')
            ->join('purchase_batch_relation_material','purchase_batch_relation_material.budget_item_id','=','budget_item.id')
            ->where('purchase_batch_relation_material.engin_id',$batchinfo->engin_id)
            ->where('purchase_batch_relation_material.budget_id',$engineering->budget_id)
            ->orderby('supplier')
            ->pluck('supplier','supplier_id');

        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$batchinfo->engin_id)
            ->orderby('system_code')
            ->orderby('sub_system_code')
            ->get();
        //print_R($data['engin_system']);exit;

        return view('purchase.createPurchaseOrder',$data);
    }

    //采购批次下的供应商信息 和采购信息
    public function getSupplierOrMaterial(Request $request,$brach_id,$id){
        $this->user();
        //采购批次信息
        $batchinfo= DB::table('purchase_batch')->where('id',$brach_id)->first();
        if(empty($batchinfo)){
            return $this->error('批次信息不存在');
        }
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$batchinfo->engin_id)->first();
        if(empty($engineering)){
            return $this->error('该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();

        if($engineering->budget_id ==0){
            return $this->error('请先创建预算单，再创建采购批次4');
        }

        $supplier =DB::table('supplier')->where('id',$id)
            ->select(['id','supplier', 'manufactor','address', 'contacts','telephone','email','status'])
            ->first();

        if(empty($supplier)){
            return $this->error('没有查询到供应商信息');
        }elseif($supplier->status ==0){
            return $this->error('该供应商已被禁用，请选择其他供应商');
        }
        $data['supplier']=$supplier;
        //获取批次中允许采购的材料id
        $budgetItemId =DB::table('purchase_batch_relation_material')->where('batch_id',$brach_id)->pluck('budget_item_id');

        //获取预算工程信息材料
        $budgetitem=DB::table('budget_item')
            ->join('material_brand_supplier','material_brand_supplier.id','=','mbs_id')
            ->where('budget_item.engin_id',$batchinfo->engin_id)
            ->where('budget_item.supplier_id',$id)
            ->wherein('budget_item.id',$budgetItemId)
            ->select(['budget_item.id','budget_item.supplier_id','budget_item.sub_arch_id',
                'budget_item.material_name','budget_item.characteristic',
                'budget_item.engineering_quantity','budget_item.brand_name',
                'purchase_unit','purchase_unit_price'
                ])
            ->get();

        $data['budgetitem']=$budgetitem;
        $itemids =[];
        foreach($budgetitem as $value){
            $itemids[]=$value->id;
        }
        //获取已采购的量
        $purchaselist=DB::table('purchase_order_item')
            ->wherein('budget_item_id',$itemids)
            ->where('engin_id',$batchinfo->engin_id)
            ->pluck('actual_purchase_quantity','budget_item_id');

        foreach($budgetitem as &$list){
            $list->total_purchase_price = round($list->engineering_quantity * $list->purchase_unit_price,2); //采购总金额
            if(isset($purchaselist[$list->id])){
                $list->already_purchased_quantity = $purchaselist[$list->id];
                if($list->engineering_quantity - $purchaselist[$list->id] < 0){
                    $list->wait_purchased_quantity = 0;
                }else{
                    $list->wait_purchased_quantity = $list->engineering_quantity - $purchaselist[$list->id];
                }
            }else{
                $list->already_purchased_quantity =0;
                $list->wait_purchased_quantity =$list->engineering_quantity;
            }
        }
        return $this->success($data);
    }
    /*
     * /保存采购单信息
     * $id 为采购批次id
     */

    public function postAddPurchaseOrder(Request $request,$id){

        $deliver_mode       =$request->input('deliver_mode','');          //deliver_mode: "asd",
        $arrival_mode       =$request->input('arrival_mode','');          //arrival_mode: "ss",
        $transfer_address   =$request->input('transfer_address','');          //transfer_address: "d",
        $direct_address     =$request->input('direct_address','');          //direct_address: "fasdf",
        $order_created_date =$request->input('order_created_date','');          //order_created_date: "2019-09-08",
        $transport_mode     =$request->input('transport_mode','');          //transport_mode: "asdf",
        $load_mode          =$request->input('load_mode','');            //load_mode: "as",
        $vehicle_mode       =$request->input('vehicle_mode','');          //vehicle_mode: "asddf",
        $vehicle_number     =(int)$request->input('vehicle_number','');          //vehicle_number: "sadf",
        $packing_mode       =$request->input('packing_mode','');          //packing_mode: "sdasdf",
        $purchaser          =$request->input('purchaser','');          //$purchaser: "asdf",
        $purchaser_phone      =$request->input('purchaser_phone','');          //purchaser_phone: "asdf",
        $purchase_address   =$request->input('purchase_address','');          //purchase_address: "asdf",
        $supplier           =$request->input('supplier','');          //supplier: "1",
        $remark             =$request->input('remark','');          //remark: "",

        $budget_item_id     =$request->input('budget_item_id',[]);          //budget_item_id: ["61","62"],
        $actual_purchase_quantity =$request->input('actual_purchase_quantity',[]);          //actual_purchase_quantity: ["12312", "234132.44"]
        if(empty($budget_item_id) || count($budget_item_id) != count($actual_purchase_quantity)){
            echo"<script>alert('该供应商没有材料信息或者材料不对应');history.go(-1);</script>";
            exit;
        }
        $batchinfo= DB::table('purchase_batch')->where('id',$id)->first();
        if(empty($batchinfo)){
            echo"<script>alert('批次信息不存在');history.go(-1);</script>";
            exit;
        }
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$batchinfo->engin_id)->first();
        if(empty($engineering)){
            echo"<script>alert('该工程不存在');history.go(-1);</script>";
            exit;
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( !(in_array(25010304,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(25010304,$this->user()->manageauth)){
            //采购人员可以操作更改工程设计详情
            echo"<script>alert('您没有权限编辑该工程信息');history.go(-1);</script>";
            exit;
        }
        if($engineering->budget_id ==0){
            echo"<script>alert('请先创建预算单,再创建采购批次');history.go(-1);</script>";
            exit;
        }

        $data['project_id']=$project->id;    //`project_id` int(11) DEFAULT NULL COMMENT '项目id',
        $data['engin_id']=$batchinfo->engin_id;    //`engin_id` int(11) DEFAULT NULL COMMENT '工程id',
        $data['purchase_id']=$batchinfo->purchase_id;    //`purchase_id` int(11) DEFAULT NULL COMMENT '采购id',
        $data['budget_id']=$engineering->budget_id;    //`budget_id` int(11) DEFAULT NULL COMMENT '预算单id',
        $data['batch_id']=$id;    //`batch_id` int(11) DEFAULT NULL COMMENT '批次id',
        $data['purchase_order_number']='CGD'.date('YmdHis').mt_rand(100000,999999);    //`purchase_order_number` varchar(255) DEFAULT NULL COMMENT '采购单单号',
        $data['order_created_date']=$order_created_date;    //`order_created_date` date DEFAULT NULL COMMENT '下单日期',
        $data['deliver_mode']=$deliver_mode;    //`deliver_mode` varchar(255) DEFAULT NULL COMMENT '送货方式',
        $data['arrival_mode']=$arrival_mode;    //`arrival_mode` varchar(255) DEFAULT NULL COMMENT '到达方式',
        $data['transfer_address']=$transfer_address;    //`transfer_address` varchar(255) DEFAULT NULL COMMENT '中转站',
        $data['direct_address']=$direct_address;    //`direct_address` varchar(255) DEFAULT NULL COMMENT '直达地址',
        $data['transport_mode']=$transport_mode;    //`transport_mode` varchar(255) DEFAULT NULL COMMENT '运输方式',
        $data['load_mode']=$load_mode;    //`load_mode` varchar(255) DEFAULT NULL COMMENT '装载方式',
        $data['vehicle_mode']=$vehicle_mode;    //`vehicle_mode` varchar(255) DEFAULT NULL COMMENT '车辆规格',
        $data['vehicle_number']=$vehicle_number;    //`vehicle_number` int(10) DEFAULT '1' COMMENT '车辆数量',
        $data['packing_mode']=$packing_mode;    //`packing_mode` varchar(255) DEFAULT NULL COMMENT '包装要求',
        $data['purchase_address']=$purchase_address;    //`purchase_address` varchar(1000) DEFAULT NULL COMMENT '订单采购地点',
        $data['purchaser']=$purchaser;    //`purchaser` varchar(255) DEFAULT NULL COMMENT '买方联系人',
        $data['purchaser_phone']=$purchaser_phone;    //`purchaser_phone` varchar(255) DEFAULT NULL COMMENT '买方联系人电话',
        $data['supplier_id']=$supplier;    //`supplier_id` int(11) DEFAULT NULL COMMENT '供应商id',
        $data['supplier'] =DB::table('supplier')->where('id',$supplier)->value('supplier');
        $data['order_status']=0;    //`order_status` tinyint(4) DEFAULT '0' COMMENT '订单状态 0未审核 1已审核',
        $data['send_number']=0;    //`send_number` tinyint(4) DEFAULT '0' COMMENT '发送邮件到供应商次数 默认0',
        $data['remark']=$remark;    //`remark` varchar(2000) DEFAULT NULL COMMENT '采购单备注',
        $data['purchase_total_fee']=0;    //`purchase_total_fee` float(15,0) DEFAULT NULL COMMENT '采购总金额',
        $data['created_uid']=$this->user()->id;
        $data['created_user_name'] =$this->user()->name;
        $data['created_at'] =date('Y-m-d');
        $budgetitem=DB::table('budget_item')
            ->join('material_brand_supplier','material_brand_supplier.id','=','mbs_id')
            ->where('budget_item.engin_id',$batchinfo->engin_id)
            ->where('budget_item.supplier_id',$supplier)
            ->wherein('budget_item.id',$budget_item_id)
            ->select(['budget_item.id','budget_item.supplier_id','budget_item.sub_arch_id',
                'budget_item.material_name','budget_item.characteristic',
                'budget_item.engineering_quantity','budget_item.brand_name',
                'purchase_unit','purchase_unit_price','budget_item.mbs_id','budget_item.material_id',
                'budget_item.brand_id','budget_item.arch_id','budget_item.sub_arch_id'
            ])
            ->get();
        if(count($budgetitem) != count($budget_item_id)){
            echo"<script>alert('您选择的材料和预算单的材料不匹配,请重新选择');history.go(-1);</script>";
            exit;
        }
        //获取已采购的量
        $purchaselist=DB::table('purchase_order_item')
            ->wherein('budget_item_id',$budget_item_id)
            ->where('engin_id',$batchinfo->engin_id)
            ->pluck('actual_purchase_quantity','budget_item_id');
        foreach($budgetitem as &$list){
            $list->total_purchase_price = round($list->engineering_quantity * $list->purchase_unit_price,2); //采购总金额
            if(isset($purchaselist[$list->id])){
                $list->already_purchased_quantity = $purchaselist[$list->id];
                if($list->engineering_quantity - $purchaselist[$list->id] < 0){
                    $list->wait_purchased_quantity = 0;
                }else{
                    $list->wait_purchased_quantity = $list->engineering_quantity - $purchaselist[$list->id];
                }
            }else{
                $list->already_purchased_quantity =0;
                $list->wait_purchased_quantity =$list->engineering_quantity;
            }
        }
        $purchaseitem=[];
         foreach($budgetitem as $item){
             $datalist['project_id']             =$project->id;                //`project_id` int(11) DEFAULT NULL COMMENT '项目id',
             $datalist['engin_id']               =$batchinfo->engin_id;                //`engin_id` int(11) DEFAULT NULL COMMENT '工程id',
             $datalist['purchase_id']            =$batchinfo->purchase_id;              //`purchase_id` int(11) DEFAULT NULL COMMENT '采购id',
             $datalist['budget_id']              =$engineering->budget_id;               //`budget_id` int(11) DEFAULT NULL COMMENT '预算单id',
             $datalist['budget_item_id']         =$item->id;                //`budget_item_id` int(11) DEFAULT NULL COMMENT '预算详情id',
             $datalist['batch_id']               =$id;                //`batch_id` int(11) DEFAULT NULL COMMENT '批次id',
             $datalist['arch_id']                =$item->arch_id;                //`arch_id` int(11) DEFAULT NULL COMMENT '建筑工程id',
             $datalist['sub_arch_id']            =$item->sub_arch_id;                //`sub_arch_id` int(11) DEFAULT NULL COMMENT '建筑子工程id',

             $datalist['mbs_id']                 =$item->mbs_id;                //`mbs_id` int(11) DEFAULT NULL COMMENT '材料品牌供应商id',
             $datalist['material_id']            =$item->material_id;              //`material_id` int(11) DEFAULT NULL COMMENT '材料id',
             $datalist['material_name']          =$item->material_name;              //`material_name` varchar(255) DEFAULT NULL COMMENT '材料名称',
             $datalist['characteristic']         =$item->characteristic;                //`characteristic` varchar(1000) DEFAULT NULL COMMENT '规格特征要求',
             $datalist['brand_id']               =$item->brand_id;                //`brand_id` int(11) DEFAULT NULL COMMENT '品牌id',
             $datalist['brand_name']             =$item->brand_name;                //`brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
             $datalist['engineering_quantity']   =number_format($item->engineering_quantity, 2, '.', '');                //`engineering_quantity` varchar(255) DEFAULT NULL COMMENT '总工程量',
             $datalist['already_purchased_quantity'] =number_format($item->already_purchased_quantity, 2, '.', '');                //`already_purchased_quantity` varchar(255) DEFAULT NULL COMMENT '已经采购量',
             $datalist['wait_purchased_quantity'] =number_format($item->wait_purchased_quantity, 2, '.', '');              //`wait_purchased_quantity` varchar(255) DEFAULT NULL COMMENT '待采购量',
             $datalist['actual_purchase_quantity'] =number_format($actual_purchase_quantity[$item->id], 2, '.', '');                //`actual_purchase_quantity` varchar(255) DEFAULT NULL COMMENT '实际采购量',
             $datalist['total_purchase_price']   =number_format($item->total_purchase_price, 2, '.', '');                //`total_purchase_price` varchar(10) DEFAULT NULL COMMENT '总采购价',
             $datalist['actual_total_fee']       =number_format($datalist['actual_purchase_quantity'] * $item->purchase_unit_price , 2, '.', '');                //`actual_total_fee` varchar(255) DEFAULT NULL COMMENT '实际采购金额',
             $datalist['purchase_unit']          =$item->purchase_unit;              //`purchase_unit` varchar(255) DEFAULT NULL COMMENT '采购单位',
             $datalist['purchase_price']         =number_format($item->purchase_unit_price, 2, '.', '');                //`purchase_price` decimal(10,2) DEFAULT NULL COMMENT '采购价格',
             $datalist['uid']                   =$this->user()->id;                //`purchase_price` decimal(10,2) DEFAULT NULL COMMENT '采购价格',
             $datalist['created_at']            =date('Y-m-d');                //`purchase_price` decimal(10,2) DEFAULT NULL COMMENT '采购价格',

             $data['purchase_total_fee'] +=$datalist['actual_total_fee'];
             $purchaseitem[]=$datalist;
         }
        DB::beginTransaction();
        $order_id =DB::table('purchase_order')->insertGetId($data);
        foreach($purchaseitem as &$item){
            $item['order_id'] =$order_id;
        }
        DB::table('purchase_order_item')->insert($purchaseitem);

        DB::table('purchase_batch')->where('id',$id)->update(['purchase_order_status'=>1]);
        DB::commit();
        return redirect('/purchase/purchaseOrderManage/'.$batchinfo->engin_id.'?status=1&notice='.'采购单创建成功');
    }
    //更改采购单审核状态
    public function examinePurchaseOrder($id,$status){
        $this->user();
        if(!in_array(25010305,$this->user()->manageauth)){
            return $this->error('您没有权限更改状态');
        }
        if(!in_array($status,[0,1])){
            return $this->error('采购单审核状态错误');
        }
        DB::table('purchase_order')->where('id',$id)->update(['order_status'=>$status,'edit_uid'=>$this->user()->id]);
        return $this->success('审核状态更改完成');
    }
    //删除采购单
    public function deletePurchaseOrder($id){
        $this->user();
        $orderinfo =DB::table('purchase_order')->where('id',$id)->first();
        if(empty($orderinfo)){
            return $this->error('采购单不存在');
        }
        if($orderinfo->order_status == 1){
            return $this->error('已审核通过采购单不能删除');
        }

        if((in_array(25010303,$this->user()->pageauth) && $orderinfo->created_uid == $this->user()->id ) || in_array(25010303,$this->user()->manageauth)){
            DB::table('purchase_order')->where('id',$id)->delete();
            DB::table('purchase_order_item')->where('order_id',$id)->delete();
            return $this->success('采购单删除成功');

        }else{
            return $this->error('您没有删除该采购单权限');
        }
    }

    //编辑采购单 id 采购单id
    public function editPurchaseOrder(Request $request,$id){
        $this->user();
        $data['navid']      =25;
        $data['subnavid']   =2501;
        $orderinfo=DB::table('purchase_order')->where('id',$id)->first();
        if(empty($orderinfo)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'采购单不存在');
        }
        //采购批次信息
        $batchinfo= DB::table('purchase_batch')->where('id',$orderinfo->batch_id)->first();
        if(empty($batchinfo)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'批次信息不存在');
        }
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$orderinfo->engin_id)->first();
        if(empty($engineering)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$orderinfo->project_id)->first();
        if( !(in_array(25010302,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(25010302,$this->user()->manageauth)){
            //采购人员可以操作更改工程设计详情
            return redirect('/purchase/purchaseConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }
        if($engineering->budget_id ==0){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'请先创建预算单，再创建采购批次？');
        }

        $data['project'] =$project; //项目信息
        $data['engineering'] =$engineering; //工程信息
        $data['order_id']=$id; //订单id
        $data['batchinfo']= $batchinfo; //获取批次列表
        $data['orderinfo']=$orderinfo;//订单信息
        //获取供应商信息
        $data['supplier'] =DB::table('supplier')->where('id',$orderinfo->supplier_id)->first();
        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$orderinfo->engin_id)
            ->orderby('system_code')
            ->orderby('sub_system_code')
            ->get();

        $orderitem =DB::table('purchase_order_item')->where('order_id',$id)->get();
        $itemlist=[];
        foreach($orderitem as $v){
            $itemlist[$v->sub_arch_id][]=$v;
        }
        $data['itemlist']=$itemlist;
        return view('purchase.editPurchaseOrder',$data);
    }
    //保存编辑的采购单
    public function postEditPurchaseOrder(Request $request,$id){

        $deliver_mode       =$request->input('deliver_mode','');          //deliver_mode: "asd",
        $arrival_mode       =$request->input('arrival_mode','');          //arrival_mode: "ss",
        $transfer_address   =$request->input('transfer_address','');          //transfer_address: "d",
        $direct_address     =$request->input('direct_address','');          //direct_address: "fasdf",
        $order_created_date =$request->input('order_created_date','');          //order_created_date: "2019-09-08",
        $transport_mode     =$request->input('transport_mode','');          //transport_mode: "asdf",
        $load_mode          =$request->input('load_mode','');            //load_mode: "as",
        $vehicle_mode       =$request->input('vehicle_mode','');          //vehicle_mode: "asddf",
        $vehicle_number     =(int)$request->input('vehicle_number','');          //vehicle_number: "sadf",
        $packing_mode       =$request->input('packing_mode','');          //packing_mode: "sdasdf",
        $purchaser          =$request->input('purchaser','');          //$purchaser: "asdf",
        $purchaser_phone      =$request->input('purchaser_phone','');          //purchaser_phone: "asdf",
        $purchase_address   =$request->input('purchase_address','');          //purchase_address: "asdf",
        $remark             =$request->input('remark','');          //remark: "",

        $order_item_id     =$request->input('order_item_id',[]);          //budget_item_id: ["61","62"],
        $actual_purchase_quantity =$request->input('actual_purchase_quantity',[]);          //actual_purchase_quantity: ["12312", "234132.44"]
        if(empty($order_item_id) || count($order_item_id) != count($actual_purchase_quantity)){
            echo"<script>alert('该供应商没有材料信息或者材料不对应');history.go(-1);</script>";
            exit;
        }
        $orderinfo= DB::table('purchase_order')->where('id',$id)->first();
        if(empty($orderinfo)){
            echo"<script>alert('采购单不存在');history.go(-1);</script>";
            exit;
        }
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$orderinfo->engin_id)->first();
        if(empty($engineering)){
            echo"<script>alert('该工程不存在');history.go(-1);</script>";
            exit;
        }
        //项目信息
        $project =DB::table('project')->where('id',$orderinfo->project_id)->first();
        if( !(in_array(25010302,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(25010302,$this->user()->manageauth)){
            //采购人员可以操作更改工程设计详情
            echo"<script>alert('您没有权限编辑该工程信息');history.go(-1);</script>";
            exit;
        }
        if($engineering->budget_id ==0){
            echo"<script>alert('请先创建预算单,再创建采购批次');history.go(-1);</script>";
            exit;
        }
        $data['order_created_date']     =$order_created_date;    //`order_created_date` date DEFAULT NULL COMMENT '下单日期',
        $data['deliver_mode']           =$deliver_mode;    //`deliver_mode` varchar(255) DEFAULT NULL COMMENT '送货方式',
        $data['arrival_mode']           =$arrival_mode;    //`arrival_mode` varchar(255) DEFAULT NULL COMMENT '到达方式',
        $data['transfer_address']           =$transfer_address;    //`transfer_address` varchar(255) DEFAULT NULL COMMENT '中转站',
        $data['direct_address']         =$direct_address;    //`direct_address` varchar(255) DEFAULT NULL COMMENT '直达地址',
        $data['transport_mode']         =$transport_mode;    //`transport_mode` varchar(255) DEFAULT NULL COMMENT '运输方式',
        $data['load_mode']              =$load_mode;    //`load_mode` varchar(255) DEFAULT NULL COMMENT '装载方式',
        $data['vehicle_mode']           =$vehicle_mode;    //`vehicle_mode` varchar(255) DEFAULT NULL COMMENT '车辆规格',
        $data['vehicle_number']         =$vehicle_number;    //`vehicle_number` int(10) DEFAULT '1' COMMENT '车辆数量',
        $data['packing_mode']           =$packing_mode;    //`packing_mode` varchar(255) DEFAULT NULL COMMENT '包装要求',
        $data['purchase_address']       =$purchase_address;    //`purchase_address` varchar(1000) DEFAULT NULL COMMENT '订单采购地点',
        $data['purchaser']              =$purchaser;    //`purchaser` varchar(255) DEFAULT NULL COMMENT '买方联系人',
        $data['purchaser_phone']        =$purchaser_phone;    //`purchaser_phone` varchar(255) DEFAULT NULL COMMENT '买方联系人电话',
        $data['order_status']           =0;    //`order_status` tinyint(4) DEFAULT '0' COMMENT '订单状态 0未审核 1已审核',
        $data['send_number']            =0;    //`send_number` tinyint(4) DEFAULT '0' COMMENT '发送邮件到供应商次数 默认0',
        $data['remark']                 =$remark;    //`remark` varchar(2000) DEFAULT NULL COMMENT '采购单备注',
        $data['edit_uid']=$this->user()->id;
        $data['updated_at'] =date('Y-m-d');
        DB::beginTransaction();
        //更改详情信息
        foreach ($order_item_id as $k=>$v){
            $orderItem =DB::table('purchase_order_item')->where('id',$v)->first();
            $list['actual_purchase_quantity'] =number_format($actual_purchase_quantity[$k], 2, '.', '');
            $list['actual_total_fee'] =number_format($actual_purchase_quantity[$k]*$orderItem->purchase_price, 2, '.', '');
            DB::table('purchase_order_item')->where('id',$v)->update($list);
        }
        $sum = DB::table('purchase_order_item')->where('order_id',$id)->sum('actual_total_fee');
        $data['purchase_total_fee'] =number_format($sum,2,'.','');
        //更改订单信息
        DB::table('purchase_order')->where('id',$id)->update($data);

        DB::commit();
        return redirect('/purchase/purchaseOrderManage/'.$orderinfo->engin_id.'?status=1&notice='.'编辑成功');

    }

    //采购单详情
    public function purchaseOrderDetail(Request $request,$id){
        $this->user();
        $data['navid']      =25;
        $data['subnavid']   =2501;
        $orderinfo=DB::table('purchase_order')->where('id',$id)->first();
        if(empty($orderinfo)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'采购单不存在');
        }
        //采购批次信息
        $batchinfo= DB::table('purchase_batch')->where('id',$orderinfo->batch_id)->first();
        if(empty($batchinfo)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'批次信息不存在');
        }
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$orderinfo->engin_id)->first();
        if(empty($engineering)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$orderinfo->project_id)->first();
        if( !(in_array(25010302,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(25010302,$this->user()->manageauth)){
            //采购人员可以操作更改工程设计详情
            return redirect('/purchase/purchaseConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }
        if($engineering->budget_id ==0){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'请先创建预算单，再创建采购批次？');
        }

        $data['project'] =$project; //项目信息
        $data['engineering'] =$engineering; //工程信息
        $data['order_id']=$id; //订单id
        $data['batchinfo']= $batchinfo; //获取批次列表
        $data['orderinfo']=$orderinfo;//订单信息
        //获取供应商信息
        $data['supplier'] =DB::table('supplier')->where('id',$orderinfo->supplier_id)->first();
        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$orderinfo->engin_id)
            ->orderby('system_code')
            ->orderby('sub_system_code')
            ->get();

        $orderitem =DB::table('purchase_order_item')->where('order_id',$id)->get();
        $itemlist=[];
        foreach($orderitem as $v){
            $itemlist[$v->sub_arch_id][]=$v;
        }
        $data['itemlist']=$itemlist;
        return view('purchase.purchaseOrderDetail',$data);
    }



    //物流管理
    public function purchaseLogisticsManage(Request $request,$id){
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

        $orderList =DB::table('purchase_order')->where('engin_id',$id)->get();
        $data['batchOrderList']=[];
        foreach ($orderList as $v){
            $data['batchOrderList'][$v->batch_id][]=$v;
        }
        return view('purchase.purchaseLogisticsManage',$data);
    }
    //更改采购单物流审核状态
    public function examinePurchaseLogis($id,$status){
        $this->user();
        if(!in_array($status,[0,1])){
            return $this->error('物流单审核状态错误');
        }
        DB::table('purchase_order')->where('id',$id)->update(['logistics_status'=>$status,'edit_uid'=>$this->user()->id]);
        return $this->success('物流状态更改完成');
    }





    //编辑物流单
    public function editPurchaseLogis(Request $request,$id){
        $this->user();
        $data['navid']      =25;
        $data['subnavid']   =2501;
        $orderinfo=DB::table('purchase_order')->where('id',$id)->first();
        if(empty($orderinfo)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'采购单不存在');
        }
        //采购批次信息
        $batchinfo= DB::table('purchase_batch')->where('id',$orderinfo->batch_id)->first();
        if(empty($batchinfo)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'批次信息不存在');
        }
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$orderinfo->engin_id)->first();
        if(empty($engineering)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$orderinfo->project_id)->first();
        if( !(in_array(25010302,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(25010302,$this->user()->manageauth)){
            //采购人员可以操作更改工程设计详情
            return redirect('/purchase/purchaseConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }
        if($engineering->budget_id ==0){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'请先创建预算单，再创建采购批次？');
        }

        $data['project'] =$project; //项目信息
        $data['engineering'] =$engineering; //工程信息
        $data['order_id']=$id; //订单id
        $data['batchinfo']= $batchinfo; //获取批次列表
        $data['orderinfo']=$orderinfo;//订单信息
        //获取供应商信息
        $data['supplier'] =DB::table('supplier')->where('id',$orderinfo->supplier_id)->first();
        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$orderinfo->engin_id)
            ->orderby('system_code')
            ->orderby('sub_system_code')
            ->get();

        $orderitem =DB::table('purchase_order_item')
            ->leftjoin('material','material.id','=','purchase_order_item.material_id')
            ->where('order_id',$id)
            ->select(['purchase_order_item.*','material.pack_claim'])
            ->get();
        $itemlist=[];
        foreach($orderitem as $v){
            $itemlist[$v->sub_arch_id][]=$v;
        }
        $data['itemlist']=$itemlist;
        return view('purchase.editPurchaseLogis',$data);
    }
    //保存物流信息
    public function postEditPurchaselogis(Request $request,$id){
        $orderinfo=DB::table('purchase_order')->where('id',$id)->first();
        if(empty($orderinfo)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'采购单不存在');
        }
        $data['vehicle_type'] =$request->input('vehicle_type','');
        $data['driver_name'] =$request->input('driver_name','');
        $data['shenfenzheng'] =$request->input('shenfenzheng','');
        $data['chepaihao'] =$request->input('chepaihao','');

        $data['edit_uid']=$this->user()->id;
        $data['updated_at'] =date('Y-m-d');
        DB::table('purchase_order')->where('id',$id)->update($data);
        return redirect('/purchase/purchaseLogisticsManage/'.$orderinfo->engin_id.'?status=1&notice='.'保存成功');
    }

    //编辑物流单
    public function purchaseLogisDetail(Request $request,$id){
        $this->user();
        $data['navid']      =25;
        $data['subnavid']   =2501;
        $orderinfo=DB::table('purchase_order')->where('id',$id)->first();
        if(empty($orderinfo)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'采购单不存在');
        }
        //采购批次信息
        $batchinfo= DB::table('purchase_batch')->where('id',$orderinfo->batch_id)->first();
        if(empty($batchinfo)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'批次信息不存在');
        }
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$orderinfo->engin_id)->first();
        if(empty($engineering)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$orderinfo->project_id)->first();
        if( !(in_array(25010302,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(25010302,$this->user()->manageauth)){
            //采购人员可以操作更改工程设计详情
            return redirect('/purchase/purchaseConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }
        if($engineering->budget_id ==0){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'请先创建预算单，再创建采购批次？');
        }

        $data['project'] =$project; //项目信息
        $data['engineering'] =$engineering; //工程信息
        $data['order_id']=$id; //订单id
        $data['batchinfo']= $batchinfo; //获取批次列表
        $data['orderinfo']=$orderinfo;//订单信息
        //获取供应商信息
        $data['supplier'] =DB::table('supplier')->where('id',$orderinfo->supplier_id)->first();
        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$orderinfo->engin_id)
            ->orderby('system_code')
            ->orderby('sub_system_code')
            ->get();

        $orderitem =DB::table('purchase_order_item')
            ->leftjoin('material','material.id','=','purchase_order_item.material_id')
            ->where('order_id',$id)
            ->select(['purchase_order_item.*','material.pack_claim'])
            ->get();
        $itemlist=[];
        foreach($orderitem as $v){
            $itemlist[$v->sub_arch_id][]=$v;
        }
        $data['itemlist']=$itemlist;
        return view('purchase.purchaseLogisDetail',$data);
    }
    //竣工批次管理
    public function purchaseCompletedBatchManage(Request $request,$id){
        $this->user();
        $data['navid']      =25;
        $data['subnavid']   =2502;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( !(in_array(250202,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(250202,$this->user()->manageauth)){
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

        return view('purchase.purchaseCompletedBatchManage',$data);

    }
    //竣工采购单管理
    public function purchaseCompletedOrderManage(Request $request,$id){
        $this->user();
        $data['navid']      =25;
        $data['subnavid']   =2502;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( !(in_array(250202,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(250202,$this->user()->manageauth)){
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

        $orderList =DB::table('purchase_order')->where('engin_id',$id)->get();
        $data['batchOrderList']=[];
        foreach ($orderList as $v){
            $data['batchOrderList'][$v->batch_id][]=$v;
        }
        return view('purchase.purchaseCompletedOrderManage',$data);

    }

    //竣工物流管理
    public function purchaseCompletedLogisticsManage(Request $request,$id){
        $this->user();
        $data['navid']      =25;
        $data['subnavid']   =2502;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( !(in_array(250202,$this->user()->pageauth) && $project->purchase_uid == $this->user()->id ) && !in_array(250202,$this->user()->manageauth)){
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

        $orderList =DB::table('purchase_order')->where('engin_id',$id)->get();
        $data['batchOrderList']=[];
        foreach ($orderList as $v){
            $data['batchOrderList'][$v->batch_id][]=$v;
        }
        return view('purchase.purchaseCompletedLogisticsManage',$data);
    }
    //采购实施项目列表
    public function purchaseConductProjectList(Request $request){
        return $this->purchaseProjectList($request,'conduct');
    }

    //采购竣工项目列表
    public function purchaseCompletedProjectList(Request $request){
        return $this->purchaseProjectList($request,'completed');
    }

    /**
     *采购项目列表
     * @return \Illuminate\Http\Response
     */
    public function purchaseProjectList(Request $request,$projectstatus ='conduct')
    {
        $this->user();
        $project_name       =$request->input('project_name','');
        $address            =$request->input('address','');
        $project_leader     =$request->input('budget_uid','');
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['address']        =$address;
        $data['project_leader'] =$project_leader;

        if($projectstatus == 'conduct'){
            $datalist=$this->getPurchaseProjectList(1,$project_name,$address,$project_leader,$page,$rows);
            $url='/purchase/purchaseConductProjectList?project_name='.$project_name.'&address='.$address.'&project_leader='.$project_leader;
            $data['subnavid']   =2501;
        }else{
            $datalist=$this->getPurchaseProjectList(2,$project_name,$address,$project_leader,$page,$rows);
            $url='/purchase/purchaseCompletedProjectList?project_name='.$project_name.'&address='.$address.'&project_leader='.$project_leader;
            $data['subnavid']   =2502;
        }

        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['navid']      =25;
        $data['projectstatus']=$projectstatus;
        if( !(in_array(25,$this->user()->pageauth)) && !in_array(25,$this->user()->manageauth)){
            return redirect('/home');
        }
        return view('purchase.purchaseProjectList',$data);
    }

    //查询项目信息
    protected function getPurchaseProjectList($status,$project_name='',$address='',$project_leader='',$page=1,$rows=20)
    {
        $db=DB::table('project');
        if($status == 0){
            $db->where('start_count','>',0);
        }elseif($status==1){
            $db->where('conduct_count','>',0);
        }elseif($status==2){
            $db->where('completed_count','>',0);
        }elseif($status==4){
            $db->where('termination_count','>',0);
        }
        if(!empty($project_name)){
            $db->where('project_name','like','%'.$project_name.'%');
        }
        if(!empty($address)){
            $db->Where(function ($query)use($address) {
                $query->where('province', 'like','%'.$address.'%')
                    ->orwhere('city', 'like','%'.$address.'%')
                    ->orwhere('county', 'like','%'.$address.'%')
                    ->orwhere('address_detail', 'like','%'.$address.'%')
                    ->orwhere('foreign_address', 'like','%'.$address.'%');
            });
        }
        if(!empty($project_leader)){
            $db->where('project_leader','like','%'.$project_leader.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->select(['project.*'])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        return $data;
    }
    //查看关联材料信息
    public function purchaseRelationMaterialDetail(Request $request,$batchid)
    {
        $data = $this->purchaseRelationMaterial( $request,$batchid,1);
        return view('purchase.purchaseRelationMaterialDetail',$data);
    }
    public function createdRelationMaterial(Request $request,$batchid){
        $data= $this->purchaseRelationMaterial( $request,$batchid,2);
        return view('purchase.createdRelationMaterial',$data);
    }

    //采购创建关联材料
    protected function purchaseRelationMaterial(Request $request,$batchid,$type=1){
        $this->user();
        $batchInfo=DB::table('purchase_batch')->where('id',$batchid)->first();
        if(empty($batchInfo)){
            return redirect('/purchase/purchaseConductProjectList');
        }
        $data['batchid']=$batchid;
        $id=$batchInfo->engin_id;
        $data['navid']      =25;
        $data['subnavid']   =2501;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/budget/budgetStart?status=2&notice='.'该工程不存在');
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
        //建筑系统信息 以及项目对应的子系统信息
        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$id)
            ->orderby('system_code')
            ->orderby('sub_system_code')
            ->get();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;

        //预算信息
        $budget =DB::table('budget')->where('engin_id',$id)->first();
        $data['budget'] =$budget;
        $data['budget_item']=[];
        //预算材料信息
        if(!empty($budget) && $type ==2){
            //查询已选的材料信息
            $relationmate =DB::table('purchase_batch_relation_material')
                ->where('engin_id',$batchInfo->engin_id)
                ->where('batch_id','!=',$batchid)
                ->where('deliver_properties',1)
                ->select(DB::raw('count(id) as purchase_count, budget_item_id,max(purchase_cishu) as cishu'))
                ->groupby('budget_item_id')
                ->get();
            $selecteditems=[];
            $select_items=[];
            if($relationmate){
                foreach($relationmate as $va){
                    //获取已经采购完的材料信息
                    if($va->purchase_count >=$va->cishu){
                        $selecteditems[]=$va->budget_item_id;
                    }else{ //获取部分采购的材料信息
                        $select_items[$va->budget_item_id]=$va->cishu;
                    }
                }
            }
            if(empty($selecteditems)){
                //预算详情
                $budget_item =DB::table('budget_item')
                    ->where('budget_id',$budget->id)->get();
            }else{
                //预算详情
                $budget_item =DB::table('budget_item')
                    ->where('budget_id',$budget->id)->whereNotIn('id',$selecteditems)
                    ->get();
            }
            //var_dump($relationmate);exit;
            if($budget_item){
                foreach($budget_item as $item){
                    $data['budget_item'][$item->sub_arch_id][]=$item;
                }
            }
            $data['select_items']=$select_items;
        }else{
            $budget_item =DB::table('budget_item')
                ->join('purchase_batch_relation_material','purchase_batch_relation_material.budget_item_id','=','budget_item.id')
                ->where('batch_id',$batchid)
                ->where('budget_item.budget_id',$budget->id)
                ->select('budget_item.*')
                ->get();
            if($budget_item){
                foreach($budget_item as $item){
                    $data['budget_item'][$item->sub_arch_id][]=$item;
                }
            }
        }
        //建筑设计配置参数
        $data['param']=DB::table('engineering_param')->where('engin_id',$id)->first();
        $data['batch_material']=DB::table('purchase_batch_relation_material')
            ->where('batch_id',$batchid)
            ->pluck('purchase_cishu','budget_item_id');
        //return $this->success($data);
        return $data;
    }

    //保存关联的材料信息
    public function saveRelationMaterial(Request $request,$batchid)
    {
        $batchInfo=DB::table('purchase_batch')->where('id',$batchid)->first();
        if(empty($batchInfo)){
            return redirect('/purchase/purchaseConductProjectList');
        }
        $budget_item_id=$request->input('budget_item_id',[]);
        $purchase_cishu=$request->input('purchase_cishu',[]);
        if(empty($budget_item_id)){
            echo"<script>alert('没有选中材料，请重新选择');history.go(-1);</script>";
        }
        $budget_item =DB::table('budget_item')
            ->wherein('id',$budget_item_id)
            ->where('engin_id',$batchInfo->engin_id)
            ->get()->toarray();
        if(empty($budget_item)){
            echo"<script>alert('当前工程中没有选中的材料，请重新选择');history.go(-1);</script>";
        }

        DB::beginTransaction();

        //删除原来记录的数据
        DB::table('purchase_batch_relation_material')->where('engin_id',$batchInfo->engin_id)
            ->where('batch_id',$batchid)->delete();
        foreach($budget_item as $item){
            $data[]=[
                'project_id' =>$batchInfo->project_id,
                'engin_id' =>$batchInfo->engin_id,
                'batch_id' =>$batchid,
                'deliver_properties' =>$batchInfo->deliver_properties,
                'budget_id' =>$item->budget_id,
                'budget_item_id' =>$item->id,
                'purchase_cishu' =>isset($purchase_cishu[$item->id])?$purchase_cishu[$item->id]:10000,
                'uid' =>$this->user()->id,
                'created_at' =>date('Y-m-d'),
            ];
        }
        DB::table('purchase_batch_relation_material')->insert($data);
        //记录添加材料个数
        DB::table('purchase_batch')->where('id',$batchid)->update(['pbrm_count'=>count($budget_item)]);
        DB::commit();

        //return $this->success($request->all());
        return redirect('/purchase/purchaseBatchManage/'.$batchInfo->engin_id.'?status=1&notice='.'批次关联材料完成');
    }


}
