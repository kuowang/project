<?php

namespace App\Http\Controllers\Offer;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;


class OfferController extends WebController
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
    public function offerStart(Request $request,$id=0)
    {
        $this->user();
        $data=$this->offer($request,$id,0);
        $data['subnavid']   =2002;
        if( !(in_array(200201,$this->user()->pageauth)) && !in_array(200201,$this->user()->manageauth)){
            return redirect('/home');
        }
        if($id){
            $data['project'] =DB::table('project')->where('id',$id)->first();
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('offer.offerStart',$data);
    }
    /**
     *实施项目列表
     * @return \Illuminate\Http\Response
     */
    public function offerConduct(Request $request,$id=0)
    {
        $this->user();
        $data=$this->offer($request,$id,1);
        $data['subnavid']   =2002;
        if( !(in_array(200202,$this->user()->pageauth)) && !in_array(200204,$this->user()->manageauth)){
            return redirect('/offer/offerStart?status=2&notice='.'您没有操作该功能权限');
        }
        if($id){
            $data['project'] =DB::table('project')->where('id',$id)->first();
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('offer.offerConduct',$data);
    }
    /**
     *竣工项目列表
     * @return \Illuminate\Http\Response
     */
    public function offerCompleted(Request $request,$id=0)
    {
        $this->user();
        $data=$this->offer($request,$id, 2, '.', '');
        $data['subnavid']   =2002;
        if( !(in_array(200203,$this->user()->pageauth)) && !in_array(200207,$this->user()->manageauth)){
            return redirect('/offer/offerStart?status=2&notice='.'您没有操作该功能权限');
        }
        if($id){
            $data['project'] =DB::table('project')->where('id',$id)->first();
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('offer.offerCompleted',$data);
    }
    /**
     *终止项目列表
     * @return \Illuminate\Http\Response
     */
    public function offerTermination(Request $request,$id=0)
    {
        $this->user();
        $data=$this->offer($request,$id,4);
        $data['subnavid']   =2002;
        if( !(in_array(200204,$this->user()->pageauth)) && !in_array(200208,$this->user()->manageauth)){
            return redirect('/offer/offerStart?status=2&notice='.'您没有操作该功能权限');
        }
        if($id){
            $data['project'] =DB::table('project')->where('id',$id)->first();
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('offer.offerTermination',$data);
    }

    //查询项目信息
    protected function getOfferList($status,$id=0,$project_name='',$address='',$budget_username='',$page=1,$rows=20)
    {
        //DB::connection()->enableQueryLog();
        $db=DB::table('engineering')
            ->join('project','project.id','=','project_id')
            ->leftjoin('budget','engineering.id','=','budget.engin_id')
            ->leftjoin('offer','offer.engin_id','=','engineering.id')
            ->where('engineering.status',$status);
        if($id){
            $db->where('engineering.project_id',$id);
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
                    ->orwhere('foreign_address', 'like','%'.$address.'%')
                ;
            });
        }
        if(!empty($budget_username)){
            $db->where('budget_username','like','%'.$budget_username.'%');
        }

        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->orderby('engineering.engineering_name','asc')
            ->select(['project.project_name','engineering.project_id','engineering.id as engin_id',
                'engineering.engineering_name','engineering.offer_id','build_area','budget.total_budget_price','budget.budget_order_number',
                'project.budget_uid','project.budget_username','budget.budget_status','is_conf_architectural',
                'budget.id as budget_id','budget.profit_ratio as budget_profit_ratio',
                'budget.profit as budget_profit','budget.tax_ratio as budget_tax_ratio','budget.tax as budget_tax',
                'offer.profit_ratio as offer_profit_ratio','offer.profit as offer_profit','offer.tax_ratio as offer_tax_ratio','offer.tax as offer_tax',
                'offer.id as offer_id','offer.total_offer_price','offer.offer_status','offer_order_number','build_number'])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        //$queries = DB::getQueryLog();
        //var_dump($queries);
        //exit;
        return $data;
    }

    //工程报价信息列表
    private function offer($request,$id=0,$status=0)
    {
        $project_name       =$request->input('project_name','');
        $address            =$request->input('address','');
        $budget_username    =$request->input('budget_username','');
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['address']        =$address;
        $data['budget_username']=$budget_username;

        $datalist=$this->getOfferList($status,$id,$project_name,$address,$budget_username,$page,$rows);
        if($status == 0){
            $url='/offer/offerStart/'.$id.'?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }elseif($status == 1){
            $url='/offer/offerConduct/'.$id.'?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }elseif($status == 2){
            $url='/offer/offerCompleted/'.$id.'?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }elseif($status == 4){
            $url='/offer/offerTermination/'.$id.'?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }else{
            $url='/offer/offerStart?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['navid']      =20;
        $data['id'] =$id;
        return $data;
    }
    //编辑洽谈工程报价详情
    public function editStartOffer(Request $request,$id)
    {
        $this->user();
        $data['navid']      =20;
        $data['subnavid']   =2002;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/offer/offerStart?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(20020101,$this->user()->pageauth) && $project->budget_uid == $this->user()->id ) || in_array(200202,$this->user()->manageauth)){
            if($engineering->status !=0){
                return redirect('/offer/offerStart?status=2&notice='.'您没有权限编辑该工程信息');
            }
        }else{
            //预算人员可以操作编辑报价信息
            return redirect('/offer/offerStart?status=2&notice='.'您没有权限编辑该工程信息');
        }
        //报价信息
        $offer =DB::table('offer')->where('engin_id',$id)->first();
        if(isset($offer->offer_status) && $offer->offer_status==1 ){
            echo"<script>alert('报价单已审核通过，不能编辑');history.go(-1);</script>";
            exit;
        }
        //报价信息
        $budget =DB::table('budget')->where('engin_id',$id)->first();
        if(empty($budget)){
            //return redirect('/offer/offerStart?status=2&notice='.'先创建预算单才能创建报价单');
            echo"<script>alert('创建完预算单才能创建报价单');history.go(-1);</script>";
            exit;
        }
        return $this->editOffer($id,$data,$project,$engineering,$budget,$offer);
    }



    //编辑实施工程报价详情
    public function editConductOffer(Request $request,$id)
    {
        $this->user();
        $data['navid']      =20;
        $data['subnavid']   =2002;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/offer/offerConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(20020201,$this->user()->pageauth) && $project->budget_uid == $this->user()->id ) || in_array(200205,$this->user()->manageauth)){
            if($engineering->status !=1){
                return redirect('/offer/offerConduct?status=2&notice='.'您没有权限编辑该工程信息');
            }
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/offer/offerConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }
        //报价信息
        $offer =DB::table('offer')->where('engin_id',$id)->first();
        if(isset($offer->offer_status) && $offer->offer_status==1 ){
            return redirect('/offer/offerConduct?status=2&notice='.'报价单已审核通过，不能编辑');
        }
        //预算信息
        $budget =DB::table('budget')->where('engin_id',$id)->first();
        if(empty($budget)){
            echo"<script>alert('创建完预算单才能创建报价单');history.go(-1);</script>";
            exit;
        }elseif(isset($budget->budget_status) && $budget->budget_status==1 ){
            echo"<script>alert('报价单已审核通过，不能编辑');history.go(-1);</script>";
            exit;
        }
        return $this->editOffer($id,$data,$project,$engineering,$budget,$offer);
    }



    /**
     * @param Request $request
     * @param $id 工程id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    protected function editOffer($id,$data,$project,$engineering,$budget,$offer)
    {
        //建筑系统信息 以及项目对应的子系统信息
        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$id)
            ->get();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;
        $data['offer_item']=[];
        //报价材料信息
        if(!empty($offer)){ //报价材料存在使用报价信息 不存在使用预算信息

            //报价详情
            $offer_item =DB::table('offer_item')->where('offer_id',$offer->id)->get();
            if($offer_item){
                foreach($offer_item as $item){
                    $data['offer_item'][$item->sub_arch_id][]=$item;
                }
            }
        }else{
            //查询预算信息
            $budget->total_offer_price =$budget->total_budget_price;
            $offer =$budget;
            //报价详情
            $offer_item =DB::table('budget_item')
                ->join('material_brand_supplier','material_brand_supplier.id','=','budget_item.mbs_id')
                ->where('budget_id',$budget->id)
                ->select(['budget_item.*','budget_item.id as budget_item_id','material_brand_supplier.offer_unit_price as offer_price','material_brand_supplier.offer_unit'])
                ->get();
            if($offer_item){
                foreach($offer_item as $item){
                    $data['offer_item'][$item->sub_arch_id][]=$item;
                }
            }
        }

        $data['offer'] =$offer;

        //建筑设计配置参数
        $data['param']=DB::table('engineering_param')->where('engin_id',$id)->first();
        if($data['param']){
            $data['storey_height']  =json_decode($data['param']->storey_height,true) ;
            $data['house_height']   =json_decode($data['param']->house_height,true) ;
            $data['house_area']     =json_decode($data['param']->house_area,true) ;
            $data['room_position']  =json_decode($data['param']->room_position,true) ;
            $data['room_name']      =json_decode($data['param']->room_name,true);
            $data['room_area']      =json_decode($data['param']->room_area,true);
        }
        return view('offer.editOffer',$data);
    }

    //保存报价信息
    public function postEditOffer(Request $request,$id){
       // return $this->success($request->all());
        $quotation_date     =$request->input('quotation_date');  //报价日期
        $quotation_limit_day =(int)$request->input('quotation_limit_day');  //报价有效期限（天）

        $freight_price      =$request->input('freight_price');  //运输单价
        $package_price      =$request->input('package_price');  //包装单价
        $packing_price      =$request->input('packing_price');  //包装费单价
        $construction_price =$request->input('construction_price');  //施工安装单价
        $profit_ratio       =$request->input('profit_ratio');  //预估利润占比
        $tax_ratio          =$request->input('tax_ratio');  //税费占比

        $material_id        =$request->input('material_id',[]);  // 材料id
        $drawing_quantity   =$request->input('drawing_quantity',[]);  //工程量（图纸）
        $brand_id           =$request->input('brand_id',[]);  //品牌id
        $loss_ratio         =$request->input('loss_ratio',[]); //损耗百分比
        $offer_price        =$request->input('offer_price',[]); //报价单价 该价格可以更改
        $offer_unit        =$request->input('offer_unit',[]); //报价单位
        $budget_item_id       =$request->input('budget_item_id',[]); //预算详情id

        if(empty($material_id) || !is_array($material_id)){
            echo"<script>alert('您没有选中材料信息，请重新填写后再提交');history.go(-1);</script>";
            exit;
        }
        //工程信息
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/offer/offerStart?status=2&notice='.'该工程不存在');
        }
        $budget_id =DB::table('budget')->where('engin_id',$id)->value('id');
        $offer =DB::table('offer')->where('engin_id',$id)->first();
        if(!empty($offer) && $offer->offer_status ==1){
            if($engineering->status == 0){
                return redirect('/offer/offerStart?status=2&notice='.'报价单已审核通过，不能编辑');
            }elseif($engineering->status ==1){
                return redirect('/offer/offerConduct?status=2&notice='.'报价单已审核通过，不能编辑');
            }
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        $uid =$this->user()->id;
        $time =date('Y-m-d');
        $offerdata=[]; //报价内容
        $offeritemdata =[]; //报价材料详情
        $direct_project_cost =0;
        foreach ($material_id as $k=>$v){
            //材料信息
            $mater =DB::table('material')->where('id',$v)->first();
            //材料对应品牌信息
            if(!isset($budget_item_id[$k])){
                echo"<script>alert('预算信息有误，请刷新页面再试');history.go(-1);</script>";
                exit;
            }
            $brand =DB::table('budget_item')->where('id',$budget_item_id[$k])->first();
            if(empty($brand)){
                echo"<script>alert('没有查询到预算材料，请刷新页面再试');history.go(-1);</script>";
                exit;
            }
            $engineering_quantity= number_format($drawing_quantity[$k] *(100 + $loss_ratio[$k]) /100, 2, '.', '');
            $total_material_price = number_format($engineering_quantity * $offer_price[$k], 2, '.', '');
            $offeritemdata[]=[
                'project_id'      =>$project->id,
                'engin_id'        =>$id,
                'budget_id'       =>$budget_id,
                'arch_id'         =>$mater->architectural_id,
                'sub_arch_id'     =>$mater->architectural_sub_id,
                'material_id'     =>$v,
                'material_name'   =>$mater->material_name,
                'characteristic'  =>$mater->characteristic,
                'offer_unit'      =>$offer_unit[$k],
                'budget_item_id'  =>$budget_item_id[$k],
                'drawing_quantity'=>$drawing_quantity[$k],
                'loss_ratio'      =>$loss_ratio[$k],
                'engineering_quantity'=> $engineering_quantity,
                'brand_id'        =>$brand_id[$k],
                'brand_name'      =>$brand->brand_name,
                'offer_price'    =>$offer_price[$k],
                'total_material_price'=>$total_material_price,
                'created_uid'=>$uid,
                'created_at'=>$time,
                'offer_id'=>0, //后面补上
          ];
            $direct_project_cost = $direct_project_cost +$total_material_price;
        }
        $area =$engineering->build_area;
        $offerdata['offer_order_number']  ='BJD'.date('YmdHis').mt_rand(100000,999999);
        $offerdata['project_id']           = $project->id;              //```project_id` int(11) DEFAULT NULL COMMENT '项目id',
        $offerdata['engin_id']             =$id;                 //```engin_id` int(11) DEFAULT NULL COMMENT '工程id',
        $offerdata['budget_id']            =$budget_id;                 //```budget_id` int(11) DEFAULT NULL COMMENT '预算id',
        $offerdata['offer_status']         =0 ;               //```offer_status` tinyint(4) DEFAULT '0' COMMENT '报价审核状态 1已审核 0未审核',
        $offerdata['quotation_date']       =$quotation_date;               //```quotation_date` date DEFAULT NULL COMMENT '报价日期',
        $offerdata['quotation_limit_day']  =$quotation_limit_day;              //```quotation_limit_day` varchar(255) DEFAULT NULL COMMENT '报价有效期限（天）',
        $offerdata['freight_price']        =number_format($freight_price, 2, '.', '');                //```freight_price` float(10,2) DEFAULT NULL COMMENT '运输单价',
        $offerdata['freight_charge']       =number_format($freight_price * $area, 2, '.', '');               //```freight_charge` varchar(250) DEFAULT NULL COMMENT '运输费',
        $offerdata['package_price']        =number_format($package_price, 2, '.', '');                //```package_price` float(10,2) DEFAULT NULL COMMENT '包装单价',
        $offerdata['package_charge']       =number_format($package_price * $area, 2, '.', '');              //```package_charge` varchar(250) DEFAULT NULL COMMENT '包装费',
        $offerdata['packing_price']        =number_format($packing_price, 2, '.', '');              //```packing_price` float(10,2) DEFAULT NULL COMMENT '包装费单价',
        $offerdata['packing_charge']       =number_format($packing_price * $area, 2, '.', '');             //```packing_charge` varchar(250) DEFAULT NULL COMMENT '装箱费',
        $offerdata['material_total_price'] =number_format($direct_project_cost + $offerdata['freight_charge'] +$offerdata['package_charge'] + $offerdata['packing_charge'], 2, '.', '');
        $offerdata['construction_price']   =number_format($construction_price, 2, '.', '');           //```construction_price` varchar(250) DEFAULT NULL COMMENT '施工安装单价',
        $offerdata['construction_charge']  =number_format($construction_price * $area, 2, '.', '');            //```construction_charge` varchar(250) DEFAULT NULL COMMENT '施工安装费',
        $offerdata['direct_project_cost']  =number_format($offerdata['material_total_price'] +$offerdata['construction_charge'], 2, '.', '');            //```direct_project_cost` decimal(10,2) DEFAULT NULL COMMENT '工程造价（直接）',
        $offerdata['profit_ratio']         =number_format($profit_ratio, 2, '.', '');                //```profit_ratio` varchar(250) DEFAULT NULL COMMENT '预估利润占比',
        $offerdata['profit']               =number_format($offerdata['direct_project_cost'] * $profit_ratio /100, 2, '.', '');              //```profit` varchar(250) DEFAULT NULL COMMENT '预估利润额',
        $offerdata['tax_ratio']            =number_format($tax_ratio, 2, '.', '');              //```tax_ratio` varchar(250) DEFAULT NULL COMMENT '税费占比',
        $offerdata['tax']                  =number_format(($offerdata['direct_project_cost'] + $offerdata['profit'])   * $tax_ratio /100 , 2, '.', '');        //```tax` varchar(250) DEFAULT NULL COMMENT '税费额',
        $offerdata['total_offer_price']    =number_format($offerdata['direct_project_cost'] +  $offerdata['profit']  + $offerdata['tax'] , 2, '.', '');           //```total_budget_price` varchar(250) DEFAULT NULL COMMENT '工程造价总计（元）',
        $offerdata['purchase_status']      = 0;             //```purchase_status` varchar(250) DEFAULT NULL COMMENT '是否已生成采购单',
        $offerdata['created_uid']          = $uid;             //```created_uid` int(11) DEFAULT NULL COMMENT '创建者',
        $offerdata['created_at']           = $time;              //```created_at` date DEFAULT NULL COMMENT '创建时间',

        DB::beginTransaction();
        //开启事务
        DB::table('offer')->where('engin_id',$id)->delete();
        $offer_id= DB::table('offer')->insertGetId($offerdata);
        foreach($offeritemdata as &$bud){
            $bud['offer_id']=$offer_id;
        }
        DB::table('offer_item')->where('engin_id',$id)->delete();
        DB::table('offer_item')->insert($offeritemdata);
        DB::table('engineering')->where('id',$id)->update(['offer_id'=>$offer_id]);
        DB::commit();
        if($engineering->status == 0){
            return redirect('/offer/offerStart/'.$engineering->project_id.'?status=1&notice='.'编辑报价成功');
        }elseif($engineering->status ==1){
            return redirect('/offer/offerConduct/'.$engineering->project_id.'?status=1&notice='.'编辑报价成功');
        }
        return redirect('/offer/offerStart/'.$engineering->project_id.'?status=1&notice='.'编辑报价成功');
    }


    //审核洽谈工程报价
    public function examineStartOffer(Request $request,$id,$status)
    {
        $this->user();
        if(!in_array(200203,$this->user()->manageauth)){
            return $this->error('您没有更改权限');
        }
        if(!in_array($status,[-1,1])){
            return $this->error('状态不正确');
        }
        $data['offer_status'] =$status;
        $data['edit_uid'] =$this->user()->id;
        $data['updated_at'] =date('Y-m-d');
        DB::table('offer')->where('id',$id)->update($data);
        return $this->success('更改成功');

    }
    //审核实施工程报价
    public function examineConductOffer(Request $request,$id,$status)
    {
        $this->user();
        if(!in_array(200206,$this->user()->manageauth)){
            return $this->error('您没有更改权限');
        }
        if(!in_array($status,[0,1])){
            return $this->error('状态不正确');
        }
        $data['budget_status'] =$status;
        $data['edit_uid'] =$this->user()->id;
        $data['updated_at'] =date('Y-m-d');
        DB::table('budget')->where('id',$id)->update($data);
        return $this->success('更改成功');
    }

    //洽谈工程报价详情
    public function offerStartDetail(Request $request,$id)
    {
        $this->user();
        $data['navid']      =20;
        $data['subnavid']   =2002;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/offer/offerStart?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(20020101,$this->user()->pageauth) && $project->budget_uid == $this->user()->id ) || in_array(200201,$this->user()->manageauth)){
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/offer/offerStart?status=2&notice='.'您没有权限编辑该工程信息');
        }
        if($request->input('download',0) == 1){
            return $this->offerDownload($id,$data,$project,$engineering);
        }else{
            return $this->offerDetail($id,$data,$project,$engineering);
        }
    }

    //查看实施工程报价详情
    public function offerConductDetail(Request $request,$id)
    {
        $this->user();
        $data['navid']      =20;
        $data['subnavid']   =2002;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/offer/offerConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(20020202,$this->user()->pageauth) && $project->budget_uid == $this->user()->id ) || in_array(200204,$this->user()->manageauth)){
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/offer/offerConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }

        if($request->input('download',0) == 1){
            return $this->offerDownload($id,$data,$project,$engineering);
        }else{
            return $this->offerDetail($id,$data,$project,$engineering);
        }
    }

    //查看竣工工程报价信息
    public function offerCompletedDetail(Request $request,$id)
    {
        $this->user();
        $data['navid']      =20;
        $data['subnavid']   =2002;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/offer/offerCompleted?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(20020301,$this->user()->pageauth) && $project->budget_uid == $this->user()->id ) || in_array(200207,$this->user()->manageauth)){
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/offer/offerCompleted?status=2&notice='.'您没有权限编辑该工程信息');
        }

        if($request->input('download',0) == 1){
            return $this->offerDownload($id,$data,$project,$engineering);
        }else{
            return $this->offerDetail($id,$data,$project,$engineering);
        }
    }
    //查看终止项目工程报价信息
    public function offerTerminationDetail(Request $request,$id)
    {
        $this->user();
        $data['navid']      =20;
        $data['subnavid']   =2002;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/offer/offerTermination?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(20020401,$this->user()->pageauth) && $project->budget_uid == $this->user()->id ) || in_array(200208,$this->user()->manageauth)){
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/offer/offerTermination?status=2&notice='.'您没有权限编辑该工程信息');
        }

        if($request->input('download',0) == 1){
            return $this->offerDownload($id,$data,$project,$engineering);
        }else{

        if($request->input('download',0) == 1){
            return $this->offerDownload($id,$data,$project,$engineering);
        }else{
            return $this->offerDetail($id,$data,$project,$engineering);
        }
        }
    }

    //报价详情信息
    protected function offerDetail($id,$data,$project,$engineering){
        //建筑系统信息 以及项目对应的子系统信息
        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$id)
            ->get();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;

        //报价信息
        $offer =DB::table('offer')->where('engin_id',$id)->first();
        $data['offer'] =$offer;
        $data['offer_item']=[];
        //报价材料信息
        if(!empty($offer)){
            //报价详情
            $offer_item =DB::table('offer_item')->where('offer_id',$offer->id)->get();
            if($offer_item){
                foreach($offer_item as $item){
                    $data['offer_item'][$item->sub_arch_id][]=$item;
                }
            }
        }
        //建筑设计配置参数
        $data['param']=DB::table('engineering_param')->where('engin_id',$id)->first();
        if($data['param']){
            $data['storey_height']  =json_decode($data['param']->storey_height,true) ;
            $data['house_height']   =json_decode($data['param']->house_height,true) ;
            $data['house_area']     =json_decode($data['param']->house_area,true) ;
            $data['room_position']  =json_decode($data['param']->room_position,true) ;
            $data['room_name']      =json_decode($data['param']->room_name,true);
            $data['room_area']      =json_decode($data['param']->room_area,true);
        }

        return view('offer.offerDetail',$data);
    }

    //导出报价单
    protected function offerDownload($id,$data,$project,$engineering)
    {
        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$id)
            ->get();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;

        //报价信息
        $offer =DB::table('offer')->where('engin_id',$id)->first();
        $data['offer'] =$offer;
        $data['offer_item']=[];
        //报价材料信息
        if(!empty($offer)){
            //报价详情
            $offer_item =DB::table('offer_item')->where('offer_id',$offer->id)->get();
            if($offer_item){
                foreach($offer_item as $item){
                    $data['offer_item'][$item->sub_arch_id][]=$item;
                }
            }
        }else{
            echo"<script>alert('当前工程没有报价单，无法导出');history.go(-1);</script>";
            exit;
        }

        //建筑设计配置参数
        $data['param']=DB::table('engineering_param')->where('engin_id',$id)->first();
        if($data['param']){
            $data['storey_height']  =json_decode($data['param']->storey_height,true) ;
            $data['house_height']   =json_decode($data['param']->house_height,true) ;
            $data['house_area']     =json_decode($data['param']->house_area,true) ;
            $data['room_position']  =json_decode($data['param']->room_position,true) ;
            $data['room_name']      =json_decode($data['param']->room_name,true);
            $data['room_area']      =json_decode($data['param']->room_area,true);
        }
        //return view('offer.offerDownload',$data);
        $a =view('offer.offerDownload',$data);
        header("Content-type:application/vnd.ms-excel");
        header("Content-Disposition:filename=".$offer->offer_order_number.".xls");
        $strexport=iconv('UTF-8',"GB2312//IGNORE",$a);
        echo "<script>history.go(-1);</script>"; //返回上一页
        exit($strexport); //导出数据
    }

    /**
     *预算项目列表
     * @return \Illuminate\Http\Response
     */
    public function offerProjectList(Request $request)
    {
        $this->user();
        $project_name       =$request->input('project_name','');
        $address            =$request->input('address','');
        $project_leader     =$request->input('budget_uid','');
        $project_status     =(int)$request->input('project_status',0);
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['address']        =$address;
        $data['project_leader']=$project_leader;
        $data['project_status'] =$project_status;
        $datalist=$this->getOfferProjectList($project_status,$project_name,$address,$project_leader,$page,$rows);
        $url='/offer/offerProjectList?project_status='.$project_status.'&project_name='.$project_name.'&address='.$address.'&project_leader='.$project_leader;

        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['navid']      =20;
        $data['subnavid']   =2002;
        if( !(in_array(2002,$this->user()->pageauth)) && !in_array(2002,$this->user()->manageauth)){
            return redirect('/home');
        }
        return view('offer.offerProjectList',$data);
    }
    //查询项目信息
    protected function getOfferProjectList($status,$project_name='',$address='',$project_leader='',$page=1,$rows=20)
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


}
