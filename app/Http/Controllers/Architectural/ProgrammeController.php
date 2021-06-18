<?php

namespace App\Http\Controllers\Architectural;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;


class ProgrammeController extends WebController
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
     * 工程方案管理列表
     * @param Request $request
     * @param int $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|\Illuminate\View\View
     * @throws \Exception
     */
    public function enginProgrammeManage(Request $request,$id = 0){
        $this->user();
        $data['navid']      =35;
        $data['subnavid']   =3500;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/architectural/enginStart?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(35000102,$this->user()->pageauth) && $project->design_uid == $this->user()->id ) || in_array(350702,$this->user()->manageauth)){
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/architectural/enginStart/'.$engineering->project_id.'?status=2&notice='.'您没有权限编辑该工程信息');
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
        //获取工程方案列表
        $data['programme_list']=DB::table('engin_programme')
            ->where('engin_id',$id)
            // ->select(['id','project_id','engin_id','programme_name'])
            ->get();

        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;
        $data['arch_system']=$arch_system;

        //获取项目文件
        $data['project_file']=DB::table('project_file')->where('status',1)
            ->where('project_id',$engineering->project_id)
            ->orderby('file_type')
            ->orderby('id')->get();

        //返回地址
        if($engineering->status == 0){
            $data['return_url']='/architectural/enginStart/'.$project->id;
        }elseif($engineering->status==1){
            $data['return_url']='/architectural/enginConduct/'.$project->id;
        }elseif($engineering->status==2){
            $data['return_url']='/architectural/enginCompleted/'.$project->id;
        }elseif($engineering->status==4){
            $data['return_url']='/architectural/enginTermination/'.$project->id;
        }else{
            $data['return_url']='/architectural/enginStart/'.$project->id;
        }
        return view('architectural.programme.enginProgrammeManage',$data);
    }


    //编辑工程设计详情

    /**
     * @param Request $request
     * @param $id int 工程id
     * @param int $programme_id int 方案id 默认为 0 时创建方案
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|\Illuminate\View\View
     * @throws \Exception
     */
    public function editEngin(Request $request,$id,$programme_id = 0)
    {
        $this->user();
        $data['navid']      =35;
        $data['subnavid']   =3500;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/architectural/enginStart?status=2&notice='.'该工程不存在');
        }
        if($engineering->status > 1){
            return redirect('/architectural/enginStart?status=2&notice='.'竣工工程和终止工程不能编辑');
        }

        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();

        if( ($project->design_uid == $this->user()->id ) || in_array(350702,$this->user()->manageauth)){
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/architectural/enginStart/'.$engineering->project_id.'?status=2&notice='.'您没有权限编辑该工程信息');
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
        //获取工程方案列表
        $data['programme']=DB::table('engin_programme')
            ->where('engin_id',$id)
            ->where('id',$programme_id)
            ->select(['id','project_id','engin_id','programme_name'])
            ->first();

        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$id)
            ->where('programme_id',$programme_id)
            ->pluck('work_code','sub_arch_id')->toarray();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;
        $data['arch_system']=$arch_system;
        $data['programme_id'] = $programme_id;//方案id 当前显示的方案id
        $data['programme_name'] = empty($data['programme'])?'':$data['programme']->programme_name;//方案id 当前显示的方案id

        //如果为新增工况 则出现选择模板
        //查询其他工程的模板列表
        $data['otherEngin']=DB::table('engineering')
            ->join('engin_programme','engin_programme.engin_id','=','engineering.id')
            ->where('engineering.project_id',$engineering->project_id)
            ->where('engin_programme.id','!=',$programme_id)
            ->orderby('engineering.engineering_name')
            ->select(['engineering.id','engineering.engineering_name',
                'engineering.status','engineering.is_conf_architectural',
                'engin_programme.id as programme_id','engin_programme.programme_name'
            ])
            ->get();
        //获取项目文件
        $data['project_file']=DB::table('project_file')->where('status',1)
            ->where('project_id',$engineering->project_id)
            ->orderby('file_type')
            ->orderby('id')->get();
        return view('architectural.programme.editEngin',$data);
    }


    //提交编辑工程方案设计详情
    public function postEditEngin(Request $request,$id)
    {
        //return $this->success($request->all());
        $sub_arch_id    =$request->input('sub_arch_id',[]);
        $engin_work_code=$request->input('engin_work_code',[]);

        $programme_id = $request->input('programme_id',0);
        $programme_name = $request->input('programme_name','');

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
        if( ($project->design_uid == $this->user()->id ) || in_array(350702,$this->user()->manageauth)){
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/architectural/enginStart/'.$engineering->project_id.'?status=2&notice='.'您没有权限编辑该工程信息');
        }

        if($programme_id == 0){ //创建一个方案
            if(empty($programme_name)){
                $count =DB::table('engin_programme')->where('engin_id',$id)->count();
                $programme_name ='方案'.($count+1);
            }
            $programme=[
                'project_id'=>$project->id,
                'engin_id'=>$id,
                'programme_name'=>$programme_name,
                'status' => 0,
                'created_uid'=>$this->user()->id,
                'created_at'=>date('Y-m-d'),
            ];
            $programme_id =DB::table('engin_programme')->insertGetId($programme);
        }else{
            $programme =DB::table('engin_programme')->where('engin_id',$id)
                ->where('id',$programme_id)->first();
            if(empty($programme)){
                echo "<script>alert('方案不存在，请重新编辑');history.go(-1);</script>";
            }
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
        DB::table('enginnering_architectural')->where('engin_id',$id)->where('programme_id',$programme_id)->delete();
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
                    'programme_id'=>$programme_id,
                    'system_name'=>$engin->system_name,
                    'engin_name'=>$engin->engin_name,
                    'system_code'=>$engin->system_code,
                    'sub_arch_id'=>$engin->sub_arch_id,
                    'sub_system_name'=>$engin->sub_system_name,
                    'sub_system_code'=>$engin->sub_system_code,
                    'work_code'=>$engin->work_code,
                    'uid'=>$this->user()->id,
                    'created_at'=>$time,
                ];
            }
            DB::table('enginnering_architectural')->insert($data);
        }
        DB::commit();
        return redirect('/architectural/enginProgrammeManage/'.$engineering->id.'?status=1&notice='.'编辑工程对应的建筑设计方案信息成功');

    }

    /**更改工程方案预算状态
     * @param Request $request
     * @param $id
     * @param $programmeid
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function updateEnginProgrammeBudgetStatus(Request $request,$id,$programmeid){

        $this->user();
        $data['navid']      =35;
        $data['subnavid']   =3500;
        //项目子工程
        $engineering =DB::table('engin_programme')->where('id',$programmeid)->where('engin_id',$id)->first();
        if(empty($engineering)){
            return redirect('/architectural/enginStart?status=2&notice='.'该工程方案不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(35000102,$this->user()->pageauth) && $project->design_uid == $this->user()->id ) || in_array(350702,$this->user()->manageauth)){
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/architectural/enginStart/'.$engineering->project_id.'?status=2&notice='.'您没有权限编辑该工程信息');
        }
        $data =DB::table('engin_programme')->where('id',$programmeid)
            ->where('engin_id',$id)
            ->update(['budget_status'=>1]);
        if(empty($data)){
            return $this->error($data);
        }
        return $this->success($data);

    }
    //获取可供实施工程使用的方案列表
    public function getProgrammeList($id=0)
    {
        $info = DB::table('engin_programme')->where('engin_id',$id)
            ->where('budget_status',1)
            ->where('offer_status',1)
            ->where('budget_id','>',0)
            ->where('offer_id','>',0)
            ->select(['id','programme_name'])
            ->get();
        if(!empty($info) && count($info) > 0){
            return $this->success($info);
        }else{
            return $this->error('没有可供实施的工程方案,不能选择实施工程');
        }
    }


}
