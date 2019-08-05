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
     *洽谈项目列表
     * @return \Illuminate\Http\Response
     */
    public function projectStart(Request $request)
    {
        $this->user();
        $data=$this->project($request,0);
        $data['subnavid']   =1502;
        if( !(in_array(1502,$this->user()->pageauth)) && !in_array(1502,$this->user()->manageauth)){
            return redirect('/home');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.projectStart',$data);
    }
    /**
     *实施项目列表
     * @return \Illuminate\Http\Response
     */
    public function projectConduct(Request $request)
    {
        $this->user();
        $data=$this->project($request,1);
        $data['subnavid']   =1503;
        if( !(in_array(1503,$this->user()->pageauth)) && !in_array(1503,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.projectConduct',$data);
    }
    /**
     *竣工项目列表
     * @return \Illuminate\Http\Response
     */
    public function projectCompleted(Request $request)
    {
        $this->user();
        $data=$this->project($request,2);
        $data['subnavid']   =1504;
        if( !(in_array(1504,$this->user()->pageauth)) && !in_array(1504,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.projectCompleted',$data);
    }
    /**
     *终止项目列表
     * @return \Illuminate\Http\Response
     */
    public function projectTermination(Request $request)
    {
        $this->user();
        $data=$this->project($request,4);
        $data['subnavid']   =1505;
        if( !(in_array(1505,$this->user()->pageauth)) && !in_array(1505,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.projectTermination',$data);
    }

    //查询项目信息
    protected function getProjectList($status,$project_name='',$address='',$customer_leader='',$success_level=1,$page=1,$rows=20)
    {
        $db=DB::table('project')
            ->leftjoin('engineering','project.id','=','project_id')
            ->where('engineering.status',$status);

        if(!empty($project_name)){
            $db->where('project_name','like','%'.$project_name.'%');
        }
        if(!empty($address)){
            $db->where('address','like','%'.$address.'%');
        }
        if(!empty($customer_leader)){
            $db->where('customer_leader','like','%'.$customer_leader.'%');
        }
        if(!empty($success_level)){
            $db->where('success_level','like','%'.$success_level.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->orderby('engineering.id','asc')
            ->select(['project.*','engineering.id as engineering_id','engineering_name','build_area','build_floor','build_height'])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        return $data;
    }
    //项目信息列表
    private function project($request,$status=0){
        $project_name       =$request->input('project_name','');
        $address            =$request->input('address','');
        $customer_leader    =$request->input('customer_leader','');
        $success_level      =$request->input('success_level',0);
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['address']        =$address;
        $data['customer_leader']=$customer_leader;
        $data['success_level']  =$success_level;
        $datalist=$this->getProjectList($status,$project_name,$address,$customer_leader,$success_level,$page,$rows);
        $url='/project/projectStart?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['navid']      =15;

        return $data;
    }
    //创建项目页面
    public function createdProject(){
        $this->user();
        $data['navid']      =15;
        $data['subnavid']   =1502;
        if( !(in_array(1501,$this->user()->pageauth)) && !in_array(1501,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['userList']=DB::table('users')->where('status',1)->orderby('name')->select(['id','name'])->get();
        return view('project.createdProject',$data);
    }
    //创建项目提交页面
    public function postAddProject(Request $request){
        $this->user();
        if( !(in_array(1501,$this->user()->pageauth)) && !in_array(1501,$this->user()->manageauth)){
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }
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
        $data["project_leader"]     =$request->input('project_leader','');
        $data["project_job"]        =$request->input('project_job','');
        $data["project_contact"]    =$request->input('project_contact','');
        $data["design_uid"]         =$request->input('design_uid',0);
        $data["budget_uid"]         =$request->input('budget_uid',0);
        $data["technical_uid"]      =$request->input('technical_uid',0);
        $data["plan_creat_at"]      =$request->input('plan_creat_at',0);
        $data["project_limit_time"] =$request->input('project_limit_time',0);

        foreach($data as $v){
            if(empty($v) && $v =='0'){
                echo"<script>alert('内容不能为空');history.go(-1);</script>";
            }
        }
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
        $userlist =DB::table('users')->wherein('id',[$data["design_uid"],$data["budget_uid"],$data["technical_uid"]])->pluck('name','id')->toarray();
        if(isset($userlist[$data["design_uid"]])){
            $data["design_username"] =$userlist[$data["design_uid"]];
        }else{
            return redirect('/project/projectStart?status=2&notice='.'设计人员不存在');
        }
        if(isset($userlist[$data["budget_uid"]])){
            $data["budget_username"] =$userlist[$data["budget_uid"]];
        }else{
            return redirect('/project/projectStart?status=2&notice='.'预算人员不存在');
        }
        if(isset($userlist[$data["technical_uid"]])){
            $data["technical_username"] =$userlist[$data["technical_uid"]];
        }else{
            return redirect('/project/projectStart?status=2&notice='.'技术支持人员不存在');
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

        $data['customer_id'] =$customer_id;
        //保存项目信息
        $project_id =DB::table('project')->insertGetId($data);

        //保存子工程信息
        $engineering_name=$request->input('engineering_name',[]);
        $build_area=$request->input('build_area',[]);
        $build_floor=$request->input('build_floor',[]);
        $build_height=$request->input('build_height',[]);

        if(count($build_height) != count($engineering_name) || count($build_area) != count($build_floor)){
            return redirect('/project/projectStart?status=2&notice='.'子工程信息缺失');
        }
        if(!empty($engineering_name)){
            $datalist=[];
            foreach($engineering_name as $k=>$v){
                $datalist[]=[
                    'project_id'=>$project_id,
                    'engineering_name'=>$v,
                    'build_area'=>$build_area[$k],
                    'build_floor'=>(int)$build_floor[$k],
                    'build_height'=>(float)$build_height[$k],
                    'created_uid'=>$this->user()->id,
                    'created_at'=>date('Y-m-d'),
                ];
            }
            DB::table('engineering')->insert($datalist);
        }
        return redirect('/project/projectStart?status=1&notice='.'创建项目成功');

    }
    //查询项目详情
    public function projectDetail(Request $request,$id){
        $this->user();
        $data['navid']      =15;
        $data['subnavid']   =1502;
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/project/projectStart?status=2&notice='.'该工程不存在');
        }
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(150201,$this->user()->pageauth) && $project->created_uid == $this->user()->id ) || in_array(150201,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectStart?status=2&notice='.'您没有权限查看该项目信息');
        }
        $data['engineering'][0]=$engineering;
        $data['project']    =$project;
        return view('project.projectDetail',$data);
    }

    //编辑项目详情
    public function editProject(Request $request,$id){
        $this->user();
        $this->user();
        $data['navid']      =15;
        $data['subnavid']   =1502;
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/project/projectStart?status=2&notice='.'该工程不存在');
        }
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(150202,$this->user()->pageauth) && $project->created_uid == $this->user()->id ) || in_array(150202,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectStart?status=2&notice='.'您没有权限查看该项目信息');
        }
        $data['engineering'][0]=$engineering;
        $data['project']    =$project;
        $data['id']=$project->id;
        $data['engin_id']=$engineering->id;

        $data['userList']=DB::table('users')->where('status',1)->orderby('name')->select(['id','name'])->get();
        return view('project.editProject',$data);
    }

    //提交编辑的项目信息
    public function postEditProject(Request $request,$id){
        $this->user();
        $project=DB::table('project')->where('id',$id)->first();
        if(empty($project)){
            return redirect('/project/projectStart?status=2&notice='.'项目不存在');
        }
        if((in_array(150202,$this->user()->pageauth) && $project->created_uid == $this->user()->id )|| in_array(150202,$this->user()->manageauth)){
        }else{
            return redirect('/project/projectStart?status=2&notice='.'您没有操作该功能权限');
        }

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
        $data["project_leader"]     =$request->input('project_leader','');
        $data["project_job"]        =$request->input('project_job','');
        $data["project_contact"]    =$request->input('project_contact','');
        $data["design_uid"]         =$request->input('design_uid',0);
        $data["budget_uid"]         =$request->input('budget_uid',0);
        $data["technical_uid"]      =$request->input('technical_uid',0);
        $data["plan_creat_at"]      =$request->input('plan_creat_at',0);
        $data["project_limit_time"] =$request->input('project_limit_time',0);

        foreach($data as $v){
            if(empty($v) && $v =='0'){
                echo"<script>alert('内容不能为空');history.go(-1);</script>";
            }
        }
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
        $userlist =DB::table('users')->wherein('id',[$data["design_uid"],$data["budget_uid"],$data["technical_uid"]])->pluck('name','id')->toarray();

        if(isset($userlist[$data["design_uid"]])){
            $data["design_username"] =$userlist[$data["design_uid"]];
        }else{
            return redirect('/project/projectStart?status=2&notice='.'设计人员不存在');
        }
        if(isset($userlist[$data["budget_uid"]])){
            $data["budget_username"] =$userlist[$data["budget_uid"]];
        }else{
            return redirect('/project/projectStart?status=2&notice='.'预算人员不存在');
        }
        if(isset($userlist[$data["technical_uid"]])){
            $data["technical_username"] =$userlist[$data["technical_uid"]];
        }else{
            return redirect('/project/projectStart?status=2&notice='.'技术支持人员不存在');
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
        if(count($engineering_id) != count($engineering_name) || count($build_area) != count($build_floor)){
            return redirect('/project/projectStart?status=2&notice='.'子工程信息缺失');
        }
        if(!empty($engineering_id)){
            foreach($engineering_id as $k=>$v){
                $datalist=[
                    'project_id'=>$id,
                    'engineering_name'=>$engineering_name[$k],
                    'build_area'=>$build_area[$k],
                    'build_floor'=>$build_floor[$k],
                    'build_height'=>$build_height[$k],
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
        return redirect('/project/projectStart?status=1&notice='.'项目修改成功');

    }

    //编辑项目状态
    public function updateProjectStatus(Request $request,$id){
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
        DB::table('engineering')->where('id',$id)->update(['status'=>$status,
            'edit_uid'=>$this->user()->id,
            'updated_at'=>date('Y-m-d')]);
        if($status == 1){
            return redirect('/project/projectConduct?status=1&notice='.'项目状态更改成功！');
        }elseif($status == 2){
            return redirect('/project/projectCompleted?status=1&notice='.'项目状态更改成功！');
        }elseif($status == 4){
            return redirect('/project/projectTermination?status=1&notice='.'项目状态更改成功！');
        }else{
            return redirect('/project/projectStart?status=1&notice='.'项目状态更改成功！');
        }
    }
    //编辑实施项目信息
    public function editConductProject(Request $request,$id){
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
            return redirect('/project/projectStart?status=2&notice='.'您没有权限查看该项目信息');
        }
        //项目动态信息
        $data['dynamic'] =DB::table('enginnering_dynamic')->where('enginnering_id',$id)->orderby('id')->get();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;
        return view('project.editConductProject',$data);

    }



}
