<?php

namespace App\Http\Controllers\Architectural;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;


class EnginneringController extends WebController
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
    public function enginStart(Request $request)
    {
        $this->user();
        $data=$this->enginnering($request,0);
        $data['subnavid']   =3503;
        if( !(in_array(3502,$this->user()->pageauth)) && !in_array(3502,$this->user()->manageauth)){
            return redirect('/home');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('architectural.enginnering.enginStart',$data);
    }
    /**
     *实施项目列表
     * @return \Illuminate\Http\Response
     */
    public function enginConduct(Request $request)
    {
        $this->user();
        $data=$this->enginnering($request,1);
        $data['subnavid']   =3503;
        if( !(in_array(3503,$this->user()->pageauth)) && !in_array(3503,$this->user()->manageauth)){
            return redirect('/architectural/enginStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('architectural.enginnering.enginConduct',$data);
    }
    /**
     *竣工项目列表
     * @return \Illuminate\Http\Response
     */
    public function enginCompleted(Request $request)
    {
        $this->user();
        $data=$this->enginnering($request,2);
        $data['subnavid']   =3503;
        if( !(in_array(3504,$this->user()->pageauth)) && !in_array(3504,$this->user()->manageauth)){
            return redirect('/architectural/enginStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('architectural.enginnering.enginCompleted',$data);
    }
    /**
     *终止项目列表
     * @return \Illuminate\Http\Response
     */
    public function enginTermination(Request $request)
    {
        $this->user();
        $data=$this->enginnering($request,4);
        $data['subnavid']   =3503;
        if( !(in_array(3505,$this->user()->pageauth)) && !in_array(3505,$this->user()->manageauth)){
            return redirect('/architectural/enginStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('architectural.enginnering.enginTermination',$data);
    }

    //查询项目信息
    protected function getEngineList($status,$project_name='',$address='',$customer_leader='',$success_level=1,$page=1,$rows=20)
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
    //工程信息列表
    private function enginnering($request,$status=0)
    {
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
        $datalist=$this->getEngineList($status,$project_name,$address,$customer_leader,$success_level,$page,$rows);
        if($status == 0){
            $url='/architectural/enginStart?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }elseif($status == 1){
            $url='/architectural/enginConduct?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }elseif($status == 2){
            $url='/architectural/enginCompleted?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }elseif($status == 4){
            $url='/architectural/enginTermination?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }else{
            $url='/architectural/enginStart?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }$data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['navid']      =35;
        return $data;
    }
    //查看工程设计详情
    public function enginDetail(Request $request)
    {

    }
    //编辑工程设计详情
    public function editEngin(Request $request,$id)
    {
        $this->user();
        $data['navid']      =35;
        $data['subnavid']   =3503;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/architectural/enginStart?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(35030102,$this->user()->pageauth) && $project->design_uid == $this->user()->id ) || in_array(350702,$this->user()->manageauth)){
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/architectural/enginStart?status=2&notice='.'您没有权限编辑该工程信息');
        }
        //建筑系统信息 以及项目对应的子系统信息

        $arch_system=DB::table('architectural_sub_system as sub_s')
                       ->join('architectural_system as a','a.id','=','sub_s.architectural_id')
            ->where('sub_s.status',1)
            ->where('a.status',1)
            ->select(['a.id as arch_id',
                'a.system_name','a.engineering_name as engin_name','a.system_code',
                'sub_s.id as sub_arch_id','sub_s.sub_system_name','sub_s.sub_system_code','sub_s.work_code'])
            ->orderby('a.system_code')
            ->orderby('sub_s.sub_system_code')
            ->get();
        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$id)
            ->pluck('work_code','sub_arch_id');
        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;
        $data['arch_system']=$arch_system;
        return view('architectural.enginnering.editEngin',$data);
    }

    //提交编辑工程设计详情
    public function postEditEngin(Request $request,$id)
    {
        //return $this->success($request->all());
        $sub_arch_id    =$request->input('sub_arch_id',[]);
        $engin_work_code=$request->input('engin_work_code',[]);
        if(empty($sub_arch_id) || count($sub_arch_id) != count($engin_work_code)){
            echo "<script>alert('内容不能为空');history.go(-1);</script>";
        }
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/architectural/enginStart?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(35030102,$this->user()->pageauth) && $project->design_uid == $this->user()->id ) || in_array(350702,$this->user()->manageauth)){
        }else{
            //设计人员和管理者可以操作更改工程设计详情
            return redirect('/architectural/enginStart?status=2&notice='.'您没有权限编辑该工程信息');
        }
        $enginList=DB::table('architectural_sub_system as sub_s')
            ->join('architectural_system as a','a.id','=','sub_s.architectural_id')
            ->where('sub_s.status',1)
            ->where('a.status',1)
            ->wherein('sub_s.id',array_values($sub_arch_id))
            ->select(['a.id as arch_id',
                'a.system_name','a.engineering_name as engin_name','a.system_code',
                'sub_s.id as sub_arch_id','sub_s.sub_system_name','sub_s.sub_system_code','sub_s.work_code',
               ])
            ->get();
        //$datalist['canshu']=$request->all();
        //$datalist['engin']=$enginList;
        DB::beginTransaction();
        //删除原始数据
        DB::table('enginnering_architectural')->where('engin_id',$id)->delete();
        //设置工程配置建筑设计信息
        DB::table('engineering')->where('id',$id)->update(['is_conf_architectural'=>1]);
        //添加新数据
        if($enginList){
            $time=date('Y-m-d');
            foreach($enginList as $engin){
                $data[]=[
                    'project_id'=>$engineering->project_id,
                    'engin_id'=>$id,
                    'arch_id'=>$engin->arch_id,
                    'system_name'=>$engin->system_name,
                    'engin_name'=>$engin->engin_name,
                    'system_code'=>$engin->system_code,
                    'sub_arch_id'=>$engin->sub_arch_id,
                    'sub_system_name'=>$engin->sub_system_name,
                    'sub_system_code'=>$engin->sub_system_code,
                    'work_code'=>$engin_work_code[$engin->sub_arch_id],
                    'uid'=>$this->user()->id,
                    'created_at'=>$time,
                ];
            }
            DB::table('enginnering_architectural')->insert($data);
        }
        DB::commit();
        return redirect('/architectural/enginStart?status=1&notice='.'编辑工程对应的建筑设计信息成功');

    }
    //编辑实施工程设计详情
    public function editConductEngin(Request $request,$id)
    {
        $this->user();
        $data['navid']      =35;
        $data['subnavid']   =3503;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/architectural/enginConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(35030202,$this->user()->pageauth) && $project->design_uid == $this->user()->id ) || in_array(350704,$this->user()->manageauth)){
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/architectural/enginConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }
        //建筑系统信息 以及项目对应的子系统信息

        $arch_system=DB::table('architectural_sub_system as sub_s')
            ->join('architectural_system as a','a.id','=','sub_s.architectural_id')
            ->where('sub_s.status',1)
            ->where('a.status',1)
            ->select(['a.id as arch_id',
                'a.system_name','a.engineering_name as engin_name','a.system_code',
                'sub_s.id as sub_arch_id','sub_s.sub_system_name','sub_s.sub_system_code','sub_s.work_code'])
            ->orderby('a.system_code')
            ->orderby('sub_s.sub_system_code')
            ->get();
        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$id)
            ->pluck('work_code','sub_arch_id');
        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;
        $data['arch_system']=$arch_system;
        return view('architectural.enginnering.editConductEngin',$data);
    }
    //提交编辑实施工程设计详情
    public function postConductEngin(Request $request,$id)
    {
        $sub_arch_id    =$request->input('sub_arch_id',[]);
        $engin_work_code=$request->input('engin_work_code',[]);
        if(empty($sub_arch_id) || count($sub_arch_id) != count($engin_work_code)){
            echo "<script>alert('内容不能为空');history.go(-1);</script>";
        }
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/architectural/enginConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(35030202,$this->user()->pageauth) && $project->design_uid == $this->user()->id ) || in_array(350704,$this->user()->manageauth)){
        }else{
            //设计人员和管理者可以操作更改工程设计详情
            return redirect('/architectural/enginConduct?status=2&notice='.'您没有权限编辑该工程信息');
        }
        $enginList=DB::table('architectural_sub_system as sub_s')
            ->join('architectural_system as a','a.id','=','sub_s.architectural_id')
            ->where('sub_s.status',1)
            ->where('a.status',1)
            ->wherein('sub_s.id',array_values($sub_arch_id))
            ->select(['a.id as arch_id',
                'a.system_name','a.engineering_name as engin_name','a.system_code',
                'sub_s.id as sub_arch_id','sub_s.sub_system_name','sub_s.sub_system_code','sub_s.work_code',
            ])
            ->get();
        //$datalist['canshu']=$request->all();
        //$datalist['engin']=$enginList;
        DB::beginTransaction();
        //删除原始数据
        DB::table('enginnering_architectural')->where('engin_id',$id)->delete();
        //设置工程配置建筑设计信息
        DB::table('engineering')->where('id',$id)->update(['is_conf_architectural'=>1]);
        //添加新数据
        if($enginList){
            $time=date('Y-m-d');
            foreach($enginList as $engin){
                $data[]=[
                    'project_id'=>$engineering->project_id,
                    'engin_id'=>$id,
                    'arch_id'=>$engin->arch_id,
                    'system_name'=>$engin->system_name,
                    'engin_name'=>$engin->engin_name,
                    'system_code'=>$engin->system_code,
                    'sub_arch_id'=>$engin->sub_arch_id,
                    'sub_system_name'=>$engin->sub_system_name,
                    'sub_system_code'=>$engin->sub_system_code,
                    'work_code'=>$engin_work_code[$engin->sub_arch_id],
                    'uid'=>$this->user()->id,
                    'created_at'=>$time,
                ];
            }
            DB::table('enginnering_architectural')->insert($data);
        }
        DB::commit();
        return redirect('/architectural/enginConduct?status=1&notice='.'编辑工程对应的建筑设计信息成功');
    }
    //查看实施工程设计详情
    public function enginConductDetail(Request $request)
    {

    }
    //查看竣工工程设计信息
    public function enginCompletedDetail(Request $request)
    {

    }
    //查看终止项目工程设计信息
    public function enginTerminationDetail(Request $request)
    {

    }





}
