<?php

namespace App\Http\Controllers\Project;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;

class ProjectController extends WebController
{
    /**
     * Create a new controller instance.
     * @return void
     */
    public function __construct()
    {
        //该方法验证说明必须登录用户才能操作
        //$this->middleware('auth');
    }

    /**
     *洽谈项目工程列表
     * @return \Illuminate\Http\Response
     */
    public function projectEnginStart(Request $request,$id=0)
    {
        $this->user();
        $data=$this->projectEngin($request,$id,0);
        if($id){
            $data['project']=DB::table('project')->where('id',$id)->first();
            if(empty($data['project'])){
                return redirect('/project/projectStart?status=2&notice='.'项目不存在');
            }
            $data['enginList']=DB::table('engineering')->where('project_id',$id)
                ->select(['id','engineering_name','status'])->get();
        }
        $data['subnavid']   =1502;
        if( !(in_array(1502,$this->user()->pageauth)) && !in_array(1502,$this->user()->manageauth)){
            return redirect('/home');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.projectEnginStart',$data);
    }
    /**
     *实施项目工程列表
     * @return \Illuminate\Http\Response
     */
    public function projectEnginConduct(Request $request,$id=0)
    {
        $this->user();
        $data=$this->projectEngin($request,$id,1);
        if($id){
            $data['project']=DB::table('project')->where('id',$id)->first();
            if(empty($data['project'])){
                return redirect('/project/projectStart?status=2&notice='.'项目不存在');
            }
        }
        $data['subnavid']   =1503;
        if( !(in_array(1503,$this->user()->pageauth)) && !in_array(1503,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.projectEnginConduct',$data);
    }
    /**
     *竣工项目工程列表
     * @return \Illuminate\Http\Response
     */
    public function projectEnginCompleted(Request $request,$id=0)
    {
        $this->user();
        $data=$this->projectEngin($request,$id,2);
        if($id){
            $data['project']=DB::table('project')->where('id',$id)->first();
            if(empty($data['project'])){
                return redirect('/project/projectStart?status=2&notice='.'项目不存在');
            }
        }
        $data['subnavid']   =1504;
        if( !(in_array(1504,$this->user()->pageauth)) && !in_array(1504,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.projectEnginCompleted',$data);
    }
    /**
     *终止项目工程列表
     * @return \Illuminate\Http\Response
     */
    public function projectEnginTermination(Request $request,$id=0)
    {
        $this->user();
        $data=$this->projectEngin($request,$id,4);
        if($id){
            $data['project']=DB::table('project')->where('id',$id)->first();
            if(empty($data['project'])){
                return redirect('/project/projectStart?status=2&notice='.'项目不存在');
            }
        }
        $data['subnavid']   =1505;
        if( !(in_array(1505,$this->user()->pageauth)) && !in_array(1505,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.projectEnginTermination',$data);
    }

    //项目工程信息列表 $id 为项目id
    private function projectEngin($request,$id,$status=0){

        $project_name       =$request->input('project_name','');
        $address            =$request->input('address','');
        $project_leader    =$request->input('project_leader','');
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['address']        =$address;
        $data['project_leader']=$project_leader;
        $datalist=$this->getProjectEnginList($id,$status,$project_name,$address,$project_leader,$page,$rows);
        $str='/'.$id.'?project_name='.$project_name.'&address='.$address.'&project_leader='.$project_leader;
        if($status == 0){
            $url='/project/projectEnginStart'.$str;
        }elseif($status == 1){
            $url='/project/projectEnginConduct'.$str;
        }elseif($status == 2){
            $url='/project/projectEnginCompleted'.$str;
        }elseif($status == 4){
            $url='/project/projectEnginTermination'.$str;
        }else{
            $url='/project/projectEnginStart'.$str;
        }
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['navid']      =15;
        $data['id']     =$id;
        return $data;
    }

    //查询项目工程信息
    protected function getProjectEnginList($id,$status,$project_name,$address,$project_leader,$page,$rows)
    {
        $db=DB::table('engineering')
            ->join('project','project.id','=','engineering.project_id')
            ->where('engineering.status',$status);
        if($id !=0){
            $db ->where('engineering.project_id',$id);
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
        $data['data']= $db->orderby('project.created_at','desc')
            ->orderby('engineering.engineering_name')
            ->select(['engineering.*','project_name'])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        return $data;
    }

    //创建项目页面
    public function createdProject()
    {
        $this->user();
        $data['navid']      =15;
        $data['subnavid']   =1502;
        if( !(in_array(1501,$this->user()->pageauth)) && !in_array(1501,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['userList']=DB::table('users')->where('status',1)->orderby('name')->select(['id','name','department_id'])->get();
        return view('project.createdProject',$data);
    }
    //创建项目提交页面
    public function postAddProject(Request $request)
    {
        $this->user();
        if( !(in_array(1501,$this->user()->pageauth)) && !in_array(1501,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data["project_name"]       =$request->input('project_name','');
        $data["country"]            =$request->input('country','');
        $data["type"]               =$request->input('type','');
        $data["source"]             =$request->input('source','');
        $data["stage"]              =$request->input('stage','');
        $data["success_level"]      =(int)$request->input('success_level',1);
        $data["environment"]        =$request->input('environment','');
        $data["traffic"]            =$request->input('traffic','');
        $data["material_storage"]   =$request->input('material_storage','');
        $data["customer_type"]      =$request->input('customer_type','');
        $data["customer"]           =$request->input('customer','');
        $data["customer_address"]   =$request->input('customer_address','');
        $data["customer_email"]     =$request->input('customer_email','');
        $data["customer_leader"]    =$request->input('customer_leader','');
        $data["customer_job"]       =$request->input('customer_job','');
        $data["customer_contact"]   =$request->input('customer_contact','');
        $data["project_uid"]        =$request->input('project_uid','');
        $data["sale_uid"]           =$request->input('sale_uid',0);
        $data["design_uid"]         =$request->input('design_uid',0);
        $data["budget_uid"]         =$request->input('budget_uid',0);
        $data["technical_uid"]      =$request->input('technical_uid',0);
        $data["plan_creat_at"]      =$request->input('plan_creat_at',0);
        $data["project_limit_time"] =(int)$request->input('project_limit_time',0);

        foreach($data as $v){
            if(empty($v) && $v =='0'){
                echo"<script>alert('内容不能为空');history.go(-1);</script>";
            }
        }
        $data['summer_avg_temperature']=$request->input('summer_avg_temperature','');
        $data['summer_max_temperature']=$request->input('summer_max_temperature','');
        $data['winter_avg_temperature']=$request->input('winter_avg_temperature','');
        $data['winter_min_temperature']=$request->input('winter_min_temperature','');
        $data["province"]           =$request->input('province','');
        $data["city"]               =$request->input('city','');
        $data["county"]             =$request->input('county','');
        $data["address_detail"]     =$request->input('address_detail','');
        $data["foreign_address"]    =$request->input('foreign_address','');
        $data["customer_telephone"] =$request->input('customer_telephone','');
        $data["customer_phone"]     =$request->input('customer_phone','');
        $data["is_design"]          =$request->input('is_design',0);
        $data["is_supply"]          =$request->input('is_supply',0);
        $data["is_guidance"]        =$request->input('is_guidance',0);
        $data["is_installation"]    =$request->input('is_installation',0);
        $userlist =DB::table('users')
            ->wherein('id',[$data["design_uid"],$data["budget_uid"],$data["technical_uid"],$data["sale_uid"],$data["project_uid"]])
            ->pluck('name','id')->toarray();

        if(isset($userlist[$data["project_uid"]])){
            $data["project_leader"] =$userlist[$data["project_uid"]];
        }elseif($data['project_uid']){
            return redirect('/project/projectStart?status=2&notice='.'销售人员不存在');
        }
        if(isset($userlist[$data["sale_uid"]])){
            $data["sale_username"] =$userlist[$data["sale_uid"]];
        }elseif($data['sale_uid']){
            return redirect('/project/projectStart?status=2&notice='.'销售人员不存在');
        }
        if(isset($userlist[$data["design_uid"]])){
            $data["design_username"] =$userlist[$data["design_uid"]];
        }elseif($data["design_uid"]){
            return redirect('/project/projectStart?status=2&notice='.'设计人员不存在');
        }
        if(isset($userlist[$data["budget_uid"]])){
            $data["budget_username"] =$userlist[$data["budget_uid"]];
        }elseif($data["budget_uid"]){
            return redirect('/project/projectStart?status=2&notice='.'预算人员不存在');
        }
        if(isset($userlist[$data["technical_uid"]])){
            $data["technical_username"] =$userlist[$data["technical_uid"]];
        }elseif($data["technical_uid"]){
            return redirect('/project/projectStart?status=2&notice='.'合约人员不存在');
        }
        $data['created_uid']=$this->user()->id;
        $data['created_at']=date('Y-m-d');
        //保存客户信息

        $customer['customer'] =$data["customer"];
        $customer['type'] =$data["customer_type"];
        $customer['address'] =$data["customer_address"];
        $customer['telephone'] =$data["customer_telephone"];
        $customer['phone'] =$data["customer_phone"];
        $customer['email'] =$data["customer_email"];
        $customer['status'] =1;
        $customer['uid'] =$this->user()->id;
        $customer['created_at'] =date('Y-m-d');
        $customer['username'] =$this->user()->name;

        $customer_id =DB::table('customer')->insertGetId($customer);
        //保存子工程信息
        $build_area=$request->input('build_area',[]);
        $build_floor=$request->input('build_floor',[]);
        $build_height=$request->input('build_height',[]);
        $indoor_height =$request->input('indoor_height',[]);
        $build_number=$request->input('build_number',[]);
        $engineering_name=$request->input('engineering_name',[]);

        $data['start_count'] =count($engineering_name);
        $data['customer_id'] =$customer_id;
        //保存项目信息
        $project_id =DB::table('project')->insertGetId($data);

        if(count($build_height) != count($engineering_name) || count($build_area) != count($build_floor)){
            return redirect('/project/projectStart?status=2&notice='.'子工程信息缺失');
        }
        if(!empty($engineering_name)){
            $datalist=[];
            foreach($engineering_name as $k=>$v){
                $datalist[]=[
                    'project_id'=>$project_id,
                    'engineering_name'=>$v,
                    'build_area'=>isset($build_area[$k])?(float)$build_area[$k]:1,
                    'build_floor'=>isset($build_floor[$k])?(int)$build_floor[$k]:1,
                    'build_height'=>isset($build_height[$k])?(float)$build_height[$k]:1,
                    'indoor_height'=>isset($indoor_height[$k])?(float)$indoor_height[$k]:1,
                    'build_number'=>isset($build_number[$k])?(int)$build_number[$k]:1,
                    'engin_address'=>$data["province"].$data["city"].$data["county"].$data["address_detail"].$data["foreign_address"],
                    'created_uid'=>$this->user()->id,
                    'created_at'=>date('Y-m-d'),
                ];
            }
            DB::table('engineering')->insert($datalist);
        }
        //设置项目工程数量和建筑总面积
        $this->setProjectEnginNumber($project_id);
        return redirect('/project/projectStart?status=1&notice='.'创建项目成功');

    }
    //查询项目详情
    public function projectDetail(Request $request,$id)
    {
        $this->user();
        $data['navid']      =15;
        $type =$request->input('type','start');
        if($type =='conduct'){
            $data['subnavid']   =1503;
        }elseif($type =='completed'){
            $data['subnavid']   =1504;
        }elseif($type=='termination'){
            $data['subnavid']   =1505;
        }else{
            $data['subnavid']   =1502;
        }
        $project =DB::table('project')->where('id',$id)->first();
        if( (in_array(150201,$this->user()->pageauth) && $project->created_uid == $this->user()->id ) || in_array(150201,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectStart?status=2&notice='.'您没有权限查看该项目信息');
        }
        $engineering =DB::table('engineering')->where('project_id',$id)->get();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        return view('project.projectDetail',$data);
    }

    //编辑项目详情
    public function editProject(Request $request,$id)
    {
        $this->user();
        $data['navid']      =15;
        $data['subnavid']   =1502;
        $project =DB::table('project')->where('id',$id)->first();
        if(empty($project)){
            return redirect('/project/projectStart?status=2&notice='.'项目不存在');
        }
        if((in_array(150202,$this->user()->pageauth) && $project->created_uid == $this->user()->id ) || in_array(150202,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectStart?status=2&notice='.'您没有权限查看该项目信息');
        }
        $engineering =DB::table('engineering')->where('project_id',$id)->get();
        if(empty($engineering)){
            return redirect('/project/projectStart?status=2&notice='.'该工程不存在');
        }
        $type=$request->input('type','start');
        if($type == 'conduct'){
            $data['subnavid']   =1503;
        }else{
            $data['subnavid']   =1502;
        }
        $data['statustype'] =$type;

        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['id']=$project->id;
        $data['userList']=DB::table('users')->where('status',1)->orderby('name')->select(['id','name','department_id'])->get();
        return view('project.editProject',$data);
    }

    //提交编辑的项目信息
    public function postEditProject(Request $request,$id)
    {
        $this->user();
        $project=DB::table('project')->where('id',$id)->first();
        if(empty($project)){
            return redirect('/project/projectStart?status=2&notice='.'项目不存在');
        }
        if((in_array(150202,$this->user()->pageauth) && $project->created_uid == $this->user()->id )|| in_array(150202,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $statustype =$request->input('statustype','start');
        $data["project_name"]       =$request->input('project_name','');
        $data["country"]            =$request->input('country','');
        $data["type"]               =$request->input('type','');
        $data["source"]             =$request->input('source','');
        $data["stage"]              =$request->input('stage','');
        $data["success_level"]      =$request->input('success_level','');
        $data["environment"]        =$request->input('environment','');
        $data["traffic"]            =$request->input('traffic','');
        $data["material_storage"]   =$request->input('material_storage','');
        $data["customer_type"]      =$request->input('customer_type','');
        $data["customer"]           =$request->input('customer','');
        $data["customer_address"]   =$request->input('customer_address','');
        $data["customer_email"]     =$request->input('customer_email','');
        $data["customer_leader"]    =$request->input('customer_leader','');
        $data["customer_job"]       =$request->input('customer_job','');
        $data["customer_contact"]   =$request->input('customer_contact','');
        $data["project_uid"]        =$request->input('project_uid',0);
        $data["sale_uid"]           =$request->input('sale_uid',0);
        $data["design_uid"]         =$request->input('design_uid',0);
        $data["budget_uid"]         =$request->input('budget_uid',0);
        $data["technical_uid"]      =$request->input('technical_uid',0);
        $data["plan_creat_at"]      =$request->input('plan_creat_at',0);
        $data["project_limit_time"] =$request->input('project_limit_time',0);

        foreach($data as $v){
            if(empty($v) && $v !== 0){
                echo"<script>alert('内容不能为空');history.go(-1);</script>";
            }
        }

        $data['summer_avg_temperature']=$request->input('summer_avg_temperature','');
        $data['summer_max_temperature']=$request->input('summer_max_temperature','');
        $data['winter_avg_temperature']=$request->input('winter_avg_temperature','');
        $data['winter_min_temperature']=$request->input('winter_min_temperature','');
        $data["province"]           =$request->input('province','');
        $data["city"]               =$request->input('city','');
        $data["county"]             =$request->input('county','');
        $data["address_detail"]     =$request->input('address_detail','');
        $data["foreign_address"]    =$request->input('foreign_address','');
        $data["customer_telephone"] =$request->input('customer_telephone','');
        $data["customer_phone"]     =$request->input('customer_phone','');
        $data["is_design"]          =$request->input('is_design',0);
        $data["is_supply"]          =$request->input('is_supply',0);
        $data["is_guidance"]        =$request->input('is_guidance',0);
        $data["is_installation"]    =$request->input('is_installation',0);
        $userlist =DB::table('users')
            ->wherein('id',[$data["design_uid"],$data["budget_uid"], $data["technical_uid"],$data["sale_uid"],$data["project_uid"]])
            ->pluck('name','id')
            ->toarray();
        if(isset($userlist[$data["project_uid"]])){
            $data["project_leader"] =$userlist[$data["project_uid"]];
        }elseif($data['project_uid']){
            return redirect('/project/projectStart?status=2&notice='.'总负责人不存在');
        }
        if(isset($userlist[$data["sale_uid"]])){
            $data["sale_username"] =$userlist[$data["sale_uid"]];
        }elseif($data["sale_uid"]){
            return redirect('/project/projectStart?status=2&notice='.'销售总负责人不存在');
        }
        if(isset($userlist[$data["design_uid"]])){
            $data["design_username"] =$userlist[$data["design_uid"]];
        }elseif($data["design_uid"]){
            return redirect('/project/projectStart?status=2&notice='.'设计总负责人不存在');
        }
        if(isset($userlist[$data["budget_uid"]])){
            $data["budget_username"] =$userlist[$data["budget_uid"]];
        }elseif($data["budget_uid"]){
            return redirect('/project/projectStart?status=2&notice='.'预算报价总负责人不存在');
        }
        if(isset($userlist[$data["technical_uid"]])){
            $data["technical_username"] =$userlist[$data["technical_uid"]];
        }elseif($data["technical_uid"]){
            return redirect('/project/projectStart?status=2&notice='.'合约总负责人不存在');
        }
        $data['created_uid']=$this->user()->id;
        $data['created_at']=date('Y-m-d');
        //保存客户信息

        $customer['customer'] =$data["customer"];
        $customer['type'] =$data["customer_type"];
        $customer['address'] =$data["customer_address"];
        $customer['telephone'] =$data["customer_telephone"];
        $customer['phone'] =$data["customer_phone"];
        $customer['email'] =$data["customer_email"];
        $customer['status'] =1;
        $customer['edit_uid'] =$this->user()->id;
        $customer['updated_at'] =date('Y-m-d');
        //更改客户信息
        DB::table('customer')->where('id',$project->customer_id)->update($customer);
        //保存项目信息
        DB::table('project')->where('id',$id)->update($data);

        //保存子工程信息
        $engineering_id=$request->input('engineering_id',[]);
        $engineering_name=$request->input('engineering_name',[]);
        $build_area=$request->input('build_area',[]);
        $build_floor=$request->input('build_floor',[]);
        $build_height=$request->input('build_height',[]);
        $indoor_height =$request->input('indoor_height',[]);
        $build_number =$request->input('build_number',[]);
        if(count($engineering_id) != count($engineering_name) || count($build_area) != count($build_floor)){
            return redirect('/project/projectStart?status=2&notice='.'子工程信息缺失');
        }
        if(!empty($engineering_id)){
            foreach($engineering_id as $k=>$v){
                $datalist=[
                    'project_id'=>$id,
                    'engineering_name'=>$engineering_name[$k],
                    'build_area'=>isset($build_area[$k])?(float)$build_area[$k]:1,
                    'build_floor'=>isset($build_floor[$k])?(int)$build_floor[$k]:1,
                    'build_height'=>isset($build_height[$k])?(float)$build_height[$k]:1,
                    'indoor_height'=>isset($indoor_height[$k])?(float)$indoor_height[$k]:1,
                    'build_number'=>isset($build_number[$k])?(int)$build_number[$k]:1,
                    'engin_address'=>$data["province"].$data["city"].$data["county"].$data["address_detail"].$data["foreign_address"],
                    'created_uid'=>$this->user()->id,
                    'created_at'=>date('Y-m-d'),
                ];
                if($v == 0){
                    DB::table('engineering')->insert($datalist);
                }else{
                    DB::table('engineering')->where('id',$v)->update($datalist);
                }

            }
        }
        //设置项目工程数量和建筑总面积
        $this->setProjectEnginNumber($id);
        if($statustype == 'conduct'){
            return redirect('/project/projectConduct?status=1&notice='.'项目修改成功');
        }else{
            return redirect('/project/projectStart?status=1&notice='.'项目修改成功');
        }
    }

    //编辑项目状态
    public function updateProjectStatus(Request $request,$id)
    {
        $engin=DB::table('engineering')->where('id',$id)->first();
        $status =$request->input('project_status',0);
        if(empty($engin)){
            return redirect('/project/projectStart?status=2&notice='.'项目不存在');
        }
        if((in_array(150202,$this->user()->pageauth) && $engin->created_uid == $this->user()->id )|| in_array(150202,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        if($engin->status == 0 && !in_array($status,[1,4])){
            echo"<script>alert('状态更改失败，项目状态不可逆，请更改其他状态');history.go(-1);</script>";
        }elseif($engin->status ==1  && !in_array($status,[2,4])){
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
        if($status == 1){
            return redirect('/project/projectEnginConduct/'.$engin->project_id.'?status=1&notice='.'项目状态更改成功！');
        }elseif($status == 2){
            return redirect('/project/projectEnginCompleted/'.$engin->project_id.'?status=1&notice='.'项目状态更改成功！');
        }elseif($status == 4){
            return redirect('/project/projectEnginTermination/'.$engin->project_id.'?status=1&notice='.'项目状态更改成功！');
        }else{
            return redirect('/project/projectEnginStart/'.$engin->project_id.'?status=1&notice='.'项目状态更改成功！');
        }
    }
    //编辑实施项目信息
    public function editConductProject(Request $request,$id)
    {
        $this->user();
        $data['navid']      =15;
        $data['subnavid']   =1503;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/project/projectConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(150302,$this->user()->pageauth) && $engineering->created_uid == $this->user()->id ) || in_array(150302,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectStart?status=2&notice='.'您没有权限编辑该工程信息');
        }
        //项目动态信息
        $data['dynamic'] =DB::table('enginnering_dynamic')->where('enginnering_id',$id)->orderby('dynamic_date')->get();
        $data['userList']=DB::table('users')->where('status',1)->orderby('name')->select(['id','name','department_id'])->get();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;
        return view('project.editConductProject',$data);

    }

    //保存实施项目的数据
    public function postConductProject(Request $request,$id)
    {
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/project/projectConduct?status=2&notice='.'该工程不存在');
        }
        if( (in_array(150302,$this->user()->pageauth) && $engineering->created_uid == $this->user()->id ) || in_array(150302,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }
        $data['contract_code']  =$request->input('contract_code','');
        $data['contract_at']    =$request->input('contract_at','');
        $data['contract_type']  =$request->input('contract_type','');
        $data['contract_num']   =(int)$request->input('contract_num',1);
        if($data['contract_num'] > 100){
            $data['contract_num'] =100;
        }
        $data["sale_uid"]           =$request->input('sale_uid',0);
        $data["design_uid"]         =$request->input('design_uid',0);
        $data["budget_uid"]         =$request->input('budget_uid',0);
        $data["technical_uid"]      =$request->input('technical_uid',0);
        $userlist =DB::table('users')
            ->wherein('id',[$data["design_uid"],$data["budget_uid"], $data["technical_uid"],$data["sale_uid"]])
            ->pluck('name','id')
            ->toarray();
        if(isset($userlist[$data["sale_uid"]])){
            $data["sale_username"] =$userlist[$data["sale_uid"]];
        }elseif($data["sale_uid"]){
            return redirect('/project/projectStart?status=2&notice='.'销售负责人不存在');
        }
        if(isset($userlist[$data["design_uid"]])){
            $data["design_username"] =$userlist[$data["design_uid"]];
        }elseif($data["design_uid"]){
            return redirect('/project/projectStart?status=2&notice='.'设计负责人不存在');
        }
        if(isset($userlist[$data["budget_uid"]])){
            $data["budget_username"] =$userlist[$data["budget_uid"]];
        }elseif($data["budget_uid"]){
            return redirect('/project/projectStart?status=2&notice='.'预算报价负责人不存在');
        }
        if(isset($userlist[$data["technical_uid"]])){
            $data["technical_username"] =$userlist[$data["technical_uid"]];
        }elseif($data["technical_uid"]){
            return redirect('/project/projectStart?status=2&notice='.'合约负责人不存在');
        }

        DB::table('engineering')->where('id',$id)->update($data);

        $dynamic_id   =$request->input('dynamic_id',[]);
        $dynamic_date   =$request->input('dynamic_date',[]);
        $dynamic_content   =$request->input('dynamic_content',[]);
        if(count($dynamic_id) >0){
            foreach($dynamic_id as $k=>$v){
                $datalist=[
                    'project_id'=>$engineering->project_id,
                    'enginnering_id'=>$id,
                    'dynamic_date'=>$dynamic_date[$k],
                    'dynamic_content'=>$dynamic_content[$k],
                ];
                if($v == 0){
                    $datalist['created_uid'] =$this->user()->id;
                    $datalist['created_at'] =date('Y-m-d');
                    DB::table('enginnering_dynamic')->insert($datalist);
                }else{
                    $datalist['edit_uid'] =$this->user()->id;
                    $datalist['updated_at'] =date('Y-m-d');
                    DB::table('enginnering_dynamic')->where('id',(int)$v)->update($datalist);
                }
            }
        }
        return redirect('/project/projectEnginConduct/'.$engineering->project_id.'?status=1&notice='.'编辑项目工程信息成功');
    }
//编辑实施项目信息
    public function projectConductDetail(Request $request,$id)
    {
        $this->user();
        $data['navid']      =15;
        $data['subnavid']   =1503;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/project/projectConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(150301,$this->user()->pageauth) && $engineering->created_uid == $this->user()->id ) || in_array(150301,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectStart?status=2&notice='.'您没有权限查询该工程信息');
        }
        //项目动态信息
        $data['dynamic'] =DB::table('enginnering_dynamic')->where('enginnering_id',$id)->orderby('dynamic_date')->get();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;
        return view('project.projectConductDetail',$data);

    }

    //查看竣工项目工程信息
    public function projectCompletedDetail(Request $request,$id)
    {
        $this->user();
        $data['navid']      =15;
        $data['subnavid']   =1504;
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/project/projectCompleted?status=2&notice='.'该工程不存在');
        }
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(150401,$this->user()->pageauth) && $project->created_uid == $this->user()->id ) || in_array(150401,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectCompleted?status=2&notice='.'您没有权限查看该项目信息');
        }
        //项目动态信息
        $data['dynamic'] =DB::table('enginnering_dynamic')->where('enginnering_id',$id)->orderby('dynamic_date')->get();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        return view('project.projectCompletedDetail',$data);
    }

    //查看终止项目工程信息
    public function projectTerminationDetail(Request $request,$id)
    {
        $this->user();
        $data['navid']      =15;
        $data['subnavid']   =1505;
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/project/projectTermination?status=2&notice='.'该工程不存在');
        }
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(150501,$this->user()->pageauth) && $project->created_uid == $this->user()->id ) || in_array(150501,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectTermination?status=2&notice='.'您没有权限查看该项目信息');
        }
        //项目动态信息
        $data['dynamic'] =DB::table('enginnering_dynamic')->where('enginnering_id',$id)->orderby('dynamic_date')->get();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        return view('project.projectTerminationDetail',$data);
    }

    /**
     *洽谈项目工程列表
     * @return \Illuminate\Http\Response
     */
    public function projectStart(Request $request)
    {
        $this->user();
        $data=$this->projectList($request,0);
        $data['subnavid']   =1502;
        if( !(in_array(1502,$this->user()->pageauth)) && !in_array(1502,$this->user()->manageauth)){
            return redirect('/home');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.projectStart',$data);
    }
    /**
     *实施项目工程列表
     * @return \Illuminate\Http\Response
     */
    public function projectConduct(Request $request)
    {
        $this->user();
        $data=$this->projectList($request,1);
        $data['subnavid']   =1503;
        if( !(in_array(1503,$this->user()->pageauth)) && !in_array(1503,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.projectConduct',$data);
    }
    /**
     *竣工项目工程列表
     * @return \Illuminate\Http\Response
     */
    public function projectCompleted(Request $request)
    {
        $this->user();
        $data=$this->projectList($request,2);
        $data['subnavid']   =1504;
        if( !(in_array(1504,$this->user()->pageauth)) && !in_array(1504,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.projectCompleted',$data);
    }
    /**
     *终止项目工程列表
     * @return \Illuminate\Http\Response
     */
    public function projectTermination(Request $request)
    {
        $this->user();
        $data=$this->projectList($request,4);
        $data['subnavid']   =1505;
        if( !(in_array(1505,$this->user()->pageauth)) && !in_array(1505,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.projectTermination',$data);
    }


    //项目工程信息列表
    private function projectList($request,$status=0){
        $project_name       =$request->input('project_name','');
        $address            =$request->input('address','');
        $project_leader    =$request->input('project_leader','');
        $success_level      =$request->input('success_level',0);
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['address']        =$address;
        $data['project_leader']=$project_leader;
        $data['success_level']  =$success_level;
        $datalist=$this->getProjectList($status,$project_name,$address,$project_leader,$success_level,$page,$rows);
        if($status == 0){
            $url='/project/projectStart?project_name='.$project_name.'&address='.$address.'&project_leader='.$project_leader.'&success_level='.$success_level;
        }elseif($status == 1){
            $url='/project/projectConduct?project_name='.$project_name.'&address='.$address.'&project_leader='.$project_leader.'&success_level='.$success_level;
        }elseif($status == 2){
            $url='/project/projectCompleted?project_name='.$project_name.'&address='.$address.'&project_leader='.$project_leader.'&success_level='.$success_level;
        }elseif($status == 4){
            $url='/project/projectTermination?project_name='.$project_name.'&address='.$address.'&project_leader='.$project_leader.'&success_level='.$success_level;
        }else{
            $url='/project/projectStart?project_name='.$project_name.'&address='.$address.'&project_leader='.$project_leader.'&success_level='.$success_level;
        }

        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['navid']      =15;

        return $data;
    }

    //查询项目信息
    protected function getProjectList($status,$project_name='',$address='',$project_leader='',$success_level=1,$page=1,$rows=20)
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
        if(!empty($success_level)){
            $db->where('success_level','like','%'.$success_level.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->select(['project.*'])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        return $data;
    }

    //创建项目的新工程
    public function createdProjectEngin(Request $request,$id){
        $this->user();
        if( !(in_array(1501,$this->user()->pageauth)) && !in_array(1501,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $enginid =$request->input('engin_id',0);
        if(empty($enginid)){
            $data['engin']=null;
        }else{
            $data['engin']=DB::table('engineering')->where('id',$id)->first();
        }
        $data['navid']      =15;
        $data['subnavid']   =1502;
        $project =DB::table('project')->where('id',$id)->first();
        $data['project']=$project;
        $data['id']=$id;
        $data['userList']=DB::table('users')->where('status',1)->orderby('name')->select(['id','name','department_id'])->get();
        return view('project.engin.createdProjectEngin',$data);
    }
    //编辑项目的工程信息
    public function editProjectEngin($id){
        $this->user();
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/project/projectStart?status=2&notice='.'该工程不存在');
        }
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(150202,$this->user()->pageauth) && $project->created_uid == $this->user()->id ) || in_array(150202,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectStart/'.$engineering->project_id.'?status=2&notice='.'您没有权限查看该项目信息');
        }
        $data['navid']      =15;
        $data['subnavid']   =1502;
        $data['project']=$project;
        $data['engin'] =$engineering;
        $data['id']=$id;

        $data['userList']=DB::table('users')->where('status',1)->orderby('name')->select(['id','name','department_id'])->get();
        //项目动态信息
        $data['dynamic'] =DB::table('enginnering_dynamic')->where('enginnering_id',$id)->orderby('dynamic_date')->get();
        return view('project.engin.editProjectEngin',$data);
    }
    //项目的工程信息详情
    public function projectEnginDetail($id){
        $this->user();
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/project/projectStart?status=2&notice='.'该工程不存在');
        }
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(150202,$this->user()->pageauth) && $project->created_uid == $this->user()->id ) || in_array(150202,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectStart/'.$engineering->project_id.'?status=2&notice='.'您没有权限查看该项目信息');
        }
        $data['navid']      =15;
        $data['subnavid']   =1502;
        $data['project']=$project;
        $data['engin'] =$engineering;
        $data['id']=$id;

        $data['userList']=DB::table('users')->where('status',1)->orderby('name')->select(['id','name','department_id'])->get();
        //项目动态信息
        $data['dynamic'] =DB::table('enginnering_dynamic')->where('enginnering_id',$id)->orderby('dynamic_date')->get();
        return view('project.engin.projectEnginDetail',$data);
    }

    //保存项目新工程
    public function postProjectEngin(Request $request,$id){

        $engin_id   =$request->input('engin_id',0);
        $data['engineering_name']   =$request->input('engineering_name','');
        $data['engin_address']  =$request->input('engin_address','');
        $data['build_area'] =(float)$request->input('build_area',0);
        $data['build_floor']    =(int)$request->input('build_floor',1);
        $data['build_number']   =(int)$request->input('build_number',1);
        $data['indoor_height']   =(int)$request->input('indoor_height',1);
        $data['build_height']   =(float)$request->input('build_height',1);

        $data['sale_uid'] =$request->input('sale_uid','');
        $data['design_uid'] =$request->input('design_uid','');
        $data['budget_uid'] =$request->input('budget_uid','');
        $data['technical_uid']  =$request->input('technical_uid','');
        $userlist =DB::table('users')
            ->wherein('id',[$data["design_uid"],$data["budget_uid"],$data["technical_uid"],$data["sale_uid"]])
            ->pluck('name','id')->toarray();
        if(isset($userlist[$data["sale_uid"]])){
            $data["sale_username"] =$userlist[$data["sale_uid"]];
        }elseif($data['sale_uid']){
            return redirect('/project/projectEnginStart/'.$id.'?status=2&notice='.'销售人员不存在');
        }
        if(isset($userlist[$data["design_uid"]])){
            $data["design_username"] =$userlist[$data["design_uid"]];
        }elseif($data["design_uid"]){
            return redirect('/project/projectEnginStart/'.$id.'?status=2&notice='.'设计人员不存在');
        }
        if(isset($userlist[$data["budget_uid"]])){
            $data["budget_username"] =$userlist[$data["budget_uid"]];
        }elseif($data["budget_uid"]){
            return redirect('/project/projectEnginStart/'.$id.'?status=2&notice='.'预算人员不存在');
        }
        if(isset($userlist[$data["technical_uid"]])){
            $data["technical_username"] =$userlist[$data["technical_uid"]];
        }elseif($data["technical_uid"]){
            return redirect('/project/projectEnginStart/'.$id.'?status=2&notice='.'合约人员不存在');
        }
        $data['project_id']=$id;
        if($engin_id ==0){
            $data['created_uid']=$this->user()->id;
            $data['created_at'] =date('Y-m-d');
            $engin_id =DB::table('engineering')->insertGetId($data);
        }else{
            $data['edit_uid']=$this->user()->id;
            $data['updated_at'] =date('Y-m-d');
            DB::table('engineering')->where('id',$engin_id)->update($data);
        }
        $dynamic_id   =$request->input('dynamic_id',[]);
        $dynamic_date   =$request->input('dynamic_date',[]);
        $dynamic_content   =$request->input('dynamic_content',[]);
        if(count($dynamic_id) >0){
            foreach($dynamic_id as $k=>$v){
                $datalist=[
                    'project_id'=>$id,
                    'enginnering_id'=>$engin_id,
                    'dynamic_date'=>$dynamic_date[$k],
                    'dynamic_content'=>$dynamic_content[$k],
                ];
                if($v == 0){
                    $datalist['created_uid'] =$this->user()->id;
                    $datalist['created_at'] =date('Y-m-d');
                    DB::table('enginnering_dynamic')->insert($datalist);
                }else{
                    $datalist['edit_uid'] =$this->user()->id;
                    $datalist['updated_at'] =date('Y-m-d');
                    DB::table('enginnering_dynamic')->where('id',(int)$v)->update($datalist);
                }
            }
        }
        //设置项目工程数量和建筑总面积
        $this->setProjectEnginNumber($id);
        return redirect('/project/projectEnginStart/'.$id);
    }

}
