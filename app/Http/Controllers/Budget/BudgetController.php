<?php

namespace App\Http\Controllers\Budget;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;


class BudgetController extends WebController
{
    /**
     * 建筑设计人员选择对应项目的建筑设计系统信息
     *
     * @return void
     */
    public function __construct(Request $request)
    {
        //该方法验证说明必须登录用户才能操作
        $this->middleware('auth');
    }

    /**
     *洽谈项目列表
     * @return \Illuminate\Http\Response
     */
    public function budgetStart(Request $request)
    {
        $this->user();
        $data=$this->budget($request,0);
        $data['subnavid']   =2001;
        if( !(in_array(200101,$this->user()->pageauth)) && !in_array(200101,$this->user()->manageauth)){
            return redirect('/home');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('budget.budgetStart',$data);
    }
    /**
     *实施项目列表
     * @return \Illuminate\Http\Response
     */
    public function budgetConduct(Request $request)
    {
        $this->user();
        $data=$this->budget($request,1);
        $data['subnavid']   =2002;
        if( !(in_array(200102,$this->user()->pageauth)) && !in_array(200104,$this->user()->manageauth)){
            return redirect('/budget/budgetStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('budget.budgetConduct',$data);
    }
    /**
     *竣工项目列表
     * @return \Illuminate\Http\Response
     */
    public function budgetCompleted(Request $request)
    {
        $this->user();
        $data=$this->budget($request,2);
        $data['subnavid']   =2003;
        if( !(in_array(200103,$this->user()->pageauth)) && !in_array(200107,$this->user()->manageauth)){
            return redirect('/budget/budgetStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('budget.budgetCompleted',$data);
    }
    /**
     *终止项目列表
     * @return \Illuminate\Http\Response
     */
    public function budgetTermination(Request $request)
    {
        $this->user();
        $data=$this->budget($request,4);
        $data['subnavid']   =2004;
        if( !(in_array(200104,$this->user()->pageauth)) && !in_array(200108,$this->user()->manageauth)){
            return redirect('/budget/budgetStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('budget.budgetTermination',$data);
    }

    //查询项目信息
    protected function getBudgetList($status,$project_name='',$address='',$budget_username='',$page=1,$rows=20)
    {
        //DB::connection()->enableQueryLog();
        $db=DB::table('engineering')
            ->join('project','project.id','=','project_id')
            ->leftjoin('budget','engineering.id','=','budget.engin_id')
            ->where('engineering.status',$status);

        if(!empty($project_name)){
            $db->where('project_name','like','%'.$project_name.'%');
        }
        if(!empty($address)){
            $db->Where(function ($query)use($address) {
                $query->where('province', 'like','%'.$address.'%')
                    ->orwhere('city', 'like','%'.$address.'%')
                    ->orwhere('county', 'like','%'.$address.'%')
                    ->orwhere('address_detail', 'like','%'.$address.'%')
                    ->orwhere('foreign_address', 'like','%'.$address.'%')
                ;
            });
        }
        if(!empty($budget_username)){
            $db->where('budget_username','like','%'.$budget_username.'%');
        }

        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->orderby('engineering.id','asc')
            ->select(['project.project_name','engineering.project_id','engineering.id as engin_id',
                'engineering.engineering_name','build_area','budget.total_budget_price','budget.budget_order_number',
                'project.budget_uid','project.budget_username','budget.budget_status'])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        //$queries = DB::getQueryLog();
        //var_dump($queries);
        //exit;
        return $data;
    }

    //工程信息列表
    private function budget($request,$status=0)
    {
        $project_name       =$request->input('project_name','');
        $address            =$request->input('address','');
        $budget_username    =$request->input('budget_username','');
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['address']        =$address;
        $data['budget_username']=$budget_username;

        $datalist=$this->getBudgetList($status,$project_name,$address,$budget_username,$page,$rows);
        if($status == 0){
            $url='/budget/budgetStart?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }elseif($status == 1){
            $url='/budget/budgetConduct?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }elseif($status == 2){
            $url='/budget/budgetCompleted?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }elseif($status == 4){
            $url='/budget/budgetTermination?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }else{
            $url='/budget/budgetStart?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['navid']      =20;
        return $data;
    }

    /**
     * @param Request $request
     * @param $id 工程id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editBudget(Request $request,$id){
        $this->user();
        $data['navid']      =20;
        $data['subnavid']   =2001;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/architectural/enginStart?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(20010101,$this->user()->pageauth) && $project->budget_uid == $this->user()->id ) || in_array(200102,$this->user()->manageauth)){
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/architectural/enginStart?status=2&notice='.'您没有权限编辑该工程信息');
        }
        //建筑系统信息 以及项目对应的子系统信息
        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$id)
            ->get();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;
        $ids =[];
        //获取工程id数组
        if($data['engin_system']){
            foreach($data['engin_system'] as $v){
                $ids[]=$v->sub_arch_id;
            }
        }
        //获取工程对应的材料数据
        $material =DB::table('material')
            ->where('status',1)
            ->wherein('architectural_sub_id',$ids)
            ->select(['id','architectural_sub_id','material_name','material_code',
                'material_type','characteristic','waste_rate','material_budget_unit',])
            ->orderby('material_code')
            ->get();
        $materlist=[];
        $materialids=[];
        foreach($material as $v){
            $materialids[]=$v->id;
            $materlist[$v->architectural_sub_id][$v->id]=$v;
        }
        $data['materlist'] =$materlist;
        //获取材料对应品牌列表
        if($materialids){
            $brand=DB::table('material_brand_supplier')
                ->wherein('material_id',$materialids)
                ->select(['material_id','brand_id','brand_name','budget_unit_price'])
                ->get();
            $brandlist=[];
            foreach ($brand as $value){
                $brandlist[$value->material_id][]=$value;
            }
            $data['brandlist'] =$brandlist;

        }
        //预算信息
        $budget =DB::table('budget')->where('engin_id',$id)->first();
        $data['budget'] =$budget;
        $data['budget_item']=[];
        //预算材料信息
        if(!empty($budget)){
            $data['storey_height'] =json_decode($budget->storey_height,true);
            $data['house_height'] =json_decode($budget->house_height,true);
            //预算详情
            $budget_item =DB::table('budget_item')->where('budget_id',$budget->id)->get();
            if($budget_item){
                foreach($budget_item as $item){
                    $data['budget_item'][$item->sub_arch_id][]=$item;
                }
            }
        }
        return view('budget.editBudget',$data);
    }
    //获取工程下的材料信息
    public function getEnginMaterialList($id){
        $material =DB::table('material')
            ->where('status',1)
            ->where('architectural_sub_id',$id)
            ->pluck('material_name','id')->toarray();
        if(empty($material)){
            return $this->error('');
        }else{
            return $this->success($material);
        }
    }
    //获取材料信息和对应的品牌信息
    public function getMaterialBrandList(Request $request ,$id){
        $material =DB::table('material')
            ->where('status',1)
            ->where('id',$id)
            ->select(['id','architectural_sub_id','material_name','material_code',
                'material_type','characteristic','waste_rate','material_budget_unit',])
            ->first();
        if(empty($material)){
            return $this->error('材料不存在');
        }
        $brand =DB::table('material_brand_supplier')
                    ->where('material_id',$id)
                    ->orderby('brand_name')
                    ->select(['material_id','brand_id','brand_name','budget_unit_price','budget_unit'])
                    ->get()->toarray();
        if(empty($brand)){
            return $this->error('材料对应品牌部存在，请选择其他材料');
        }
        $data['material']=$material;
        $data['brand']=$brand;
        return $this->success($data);
    }
    //保存预算信息
    public function postEditBudget(Request $request,$id){
        $quotation_date     =$request->input('quotation_date');  //报价日期
        $quotation_limit_day =(int)$request->input('quotation_limit_day');  //报价有效期限（天）
        $use_time           =$request->input('use_time');  //使用时长（年）
        $seismic_grade      =$request->input('seismic_grade');  //抗震等级（级）
        $wind_grade         =$request->input('wind_grade');  //抗风等级（级）
        $keep_warm          =$request->input('keep_warm');  //保温构造形式
        $waterproof_grade   =$request->input('waterproof_grade');  //屋面防水等级
        $structural_style   =$request->input('structural_style');  //结构形式
        $steel_material     =$request->input('steel_material');  //主体钢材材质
        $storey_height      =$request->input('storey_height',[]);  //每层楼的高度（json）
        $house_height       =$request->input('house_height',[]);  //室内净高

        $freight_price      =$request->input('freight_price');  //运输单价
        $package_price      =$request->input('package_price');  //包装单价
        $packing_price      =$request->input('packing_price');  //包装费单价
        $construction_price =$request->input('construction_price');  //施工安装单价
        $profit_ratio       =$request->input('profit_ratio');  //预估利润占比
        $tax_ratio          =$request->input('tax_ratio');  //税费占比

        $material_id        =$request->input('material_id',[]);  // 材料id
        $drawing_quantity   =$request->input('drawing_quantity',[]);  //工程量（图纸）
        $brand_id           =$request->input('brand_id',[]);  //品牌id

        if(empty($material_id) || !is_array($material_id)){
            echo"<script>alert('您没有选中材料信息，请重新填写后再提交');history.go(-1);</script>";
        }
        //工程信息
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/architectural/enginStart?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        $uid =$this->user()->id;
        $time =date('Y-m-d');
        $budgetdata=[]; //预算内容
        $budgetitemdata =[]; //预算材料详情
        $direct_project_cost =0;
        foreach ($material_id as $k=>$v){
            //材料信息
            $mater =DB::table('material')->where('id',$v)->first();
            $brand =DB::table('material_brand_supplier')->where('material_id',$v)->where('brand_id',$brand_id[$k])->first();
            //材料对应品牌信息
            $engineering_quantity= round($drawing_quantity[$k] *(100 + $mater->waste_rate) /100,2);
            $budget_price =$brand->budget_unit_price;
            $total_material_price = round($engineering_quantity * $budget_price,2);
            $budgetitemdata[]=[
                'project_id'      =>$project->id,
                'engin_id'        =>$id,
                'arch_id'         =>$mater->architectural_id,
                'sub_arch_id'     =>$mater->architectural_sub_id,
                'material_id'     =>$v,
                'characteristic'  =>$mater->characteristic,
                'material_budget_unit'=>$mater->material_budget_unit,
                'drawing_quantity'=>$drawing_quantity[$k],
                'loss_ratio'      =>$mater->waste_rate,
                'engineering_quantity'=> $engineering_quantity,
                'brand_id'        =>$brand_id[$k],
                'budget_price'    =>$budget_price,
                'total_material_price'=>$total_material_price,
                'created_uid'=>$uid,
                'created_at'=>$time,
                'budget_id'=>0, //后面补上
          ];
            $direct_project_cost = $direct_project_cost +$total_material_price;
        }
        $area =$engineering->build_area;
        $budgetdata['budget_order_number']  ='YS'.date('Ymd').mt_rand(100000,999999);
        $budgetdata['project_id']           = $project->id;              //```project_id` int(11) DEFAULT NULL COMMENT '项目id',
        $budgetdata['engin_id']             =$id;                 //```engin_id` int(11) DEFAULT NULL COMMENT '工程id',
        $budgetdata['budget_status']        =0 ;               //```budget_status` tinyint(4) DEFAULT '0' COMMENT '预算审核状态 1已审核 0未审核',
        $budgetdata['quotation_date']       =$quotation_date;               //```quotation_date` date DEFAULT NULL COMMENT '报价日期',
        $budgetdata['quotation_limit_day']  =$quotation_limit_day;              //```quotation_limit_day` varchar(255) DEFAULT NULL COMMENT '报价有效期限（天）',
        $budgetdata['use_time']             = $use_time ;               //```use_time` varchar(255) DEFAULT NULL COMMENT '使用时长（年）',
        $budgetdata['seismic_grade']        =$seismic_grade;                //```seismic_grade` varchar(255) DEFAULT NULL COMMENT '抗震等级（级）',
        $budgetdata['wind_grade']           =$wind_grade;               //```wind_grade` varchar(255) DEFAULT NULL COMMENT '抗风等级（级）',
        $budgetdata['keep_warm']            =$keep_warm;                //```keep_warm` varchar(255) DEFAULT NULL COMMENT '保温构造形式',
        $budgetdata['waterproof_grade']     =$waterproof_grade;                 //```waterproof_grade` varchar(255) DEFAULT NULL COMMENT '屋面防水等级',
        $budgetdata['structural_style']     =$structural_style;                 //```structural_style` varchar(255) DEFAULT NULL COMMENT '结构形式',
        $budgetdata['steel_material']       =$steel_material;               //```steel_material` varchar(255) DEFAULT NULL COMMENT '主体钢材材质',
        $budgetdata['storey_height']        =json_encode($storey_height);                //```storey_height` varchar(1000) DEFAULT NULL COMMENT '每层楼的高度（json）',
        $budgetdata['house_height']         =json_encode($house_height);                 //```house_height` varchar(1000) DEFAULT NULL COMMENT '室内净高',
        $budgetdata['freight_price']        =$freight_price;                //```freight_price` float(10,2) DEFAULT NULL COMMENT '运输单价',
        $budgetdata['freight_charge']       =round($freight_price * $area,2);               //```freight_charge` varchar(250) DEFAULT NULL COMMENT '运输费',
        $budgetdata['package_price']        =$package_price;                //```package_price` float(10,2) DEFAULT NULL COMMENT '包装单价',
        $budgetdata['package_charge']       = round($package_price * $area,2);              //```package_charge` varchar(250) DEFAULT NULL COMMENT '包装费',
        $budgetdata['packing_price']        =  $packing_price;              //```packing_price` float(10,2) DEFAULT NULL COMMENT '包装费单价',
        $budgetdata['packing_charge']       =  round($packing_price * $area,2);             //```packing_charge` varchar(250) DEFAULT NULL COMMENT '装箱费',
        $budgetdata['material_total_price'] =$direct_project_cost + $budgetdata['freight_charge'] +$budgetdata['package_charge'] + $budgetdata['packing_charge'];

        $budgetdata['construction_price']   = $construction_price   ;           //```construction_price` varchar(250) DEFAULT NULL COMMENT '施工安装单价',
        $budgetdata['construction_charge']  =  round($construction_price * $area,2);            //```construction_charge` varchar(250) DEFAULT NULL COMMENT '施工安装费',

        $budgetdata['direct_project_cost']  = $budgetdata['material_total_price'] +$budgetdata['construction_charge'];            //```direct_project_cost` decimal(10,2) DEFAULT NULL COMMENT '工程造价（直接）',
        $budgetdata['profit_ratio']         = $profit_ratio;                //```profit_ratio` varchar(250) DEFAULT NULL COMMENT '预估利润占比',
        $budgetdata['profit']               = round($budgetdata['direct_project_cost'] * $profit_ratio /100,2);              //```profit` varchar(250) DEFAULT NULL COMMENT '预估利润额',
        $budgetdata['tax_ratio']            = $tax_ratio;              //```tax_ratio` varchar(250) DEFAULT NULL COMMENT '税费占比',
        $budgetdata['tax']                  =  round(($budgetdata['direct_project_cost'] + $budgetdata['profit'])   * $tax_ratio /100 ,2);        //```tax` varchar(250) DEFAULT NULL COMMENT '税费额',
        $budgetdata['total_budget_price']   = $budgetdata['direct_project_cost'] +  $budgetdata['profit']  + $budgetdata['tax'] ;           //```total_budget_price` varchar(250) DEFAULT NULL COMMENT '工程造价总计（元）',
        $budgetdata['purchase_status']      = 0;             //```purchase_status` varchar(250) DEFAULT NULL COMMENT '是否已生成采购单',
        $budgetdata['created_uid']          = $uid;             //```created_uid` int(11) DEFAULT NULL COMMENT '创建者',
        $budgetdata['created_at']           = $time;              //```created_at` date DEFAULT NULL COMMENT '创建时间',
        $budgetdata['edit_uid']             = $uid;               //```edit_uid` int(11) DEFAULT NULL COMMENT '编辑者',
        $budgetdata['updated_at']           = $time;              //```updated_at` date DEFAULT NULL COMMENT '编辑时间',
        DB::beginTransaction();
        //开启事务
        if($engineering->budget_id){ //存在 不为0 则更改
            DB::table('budget')->where('id',$engineering->budget_id)->update($budgetdata);
            $budget_id =$engineering->budget_id;
            DB::table('budget_item')->where('budget_id',$budget_id)->delete();
        }else{
            $budget_id= DB::table('budget')->insertGetId($budgetdata);
            DB::table('engineering')->where('id',$id)->update(['budget_id'=>$budget_id]);
        }
        foreach($budgetitemdata as &$bud){
            $bud['budget_id']=$budget_id;
        }
        DB::table('budget_item')->insert($budgetitemdata);
        DB::commit();

        return redirect('/budget/budgetStart?status=1&notice='.'编辑预算成功');
    }



}
