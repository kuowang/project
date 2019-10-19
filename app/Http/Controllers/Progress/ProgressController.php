<?php

namespace App\Http\Controllers\Progress;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;


class ProgressController extends WebController
{
    /**
     * 施工安装信息管理
     *
     * @return void
     */
    public function __construct(Request $request)
    {
        //该方法验证说明必须登录用户才能操作
        $this->middleware('auth');
    }
    //施工安装实施项目列表
    public function progressConductProjectList(Request $request){
        return $this->progressProjectList($request,'conduct');
    }

    //施工安装竣工项目列表
    public function progressCompletedProjectList(Request $request){
        return $this->progressProjectList($request,'completed');
    }

    /**
     *施工安装项目列表
     * @return \Illuminate\Http\Response
     */
    public function progressProjectList(Request $request,$projectstatus ='conduct')
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
        $data['projectstatus'] =$projectstatus;

        if($projectstatus == 'conduct'){
            $datalist=$this->getProgressProjectList(1,$project_name,$address,$project_leader,$page,$rows);
            $url='/progress/progressConductProjectList?project_name='.$project_name.'&address='.$address.'&project_leader='.$project_leader;
            $data['subnavid']   =3001;
            $data['formurl']='/progress/progressConductProjectList';
        }else{
            $datalist=$this->getProgressProjectList(2,$project_name,$address,$project_leader,$page,$rows);
            $url='/progress/progressCompletedProjectList?project_name='.$project_name.'&address='.$address.'&project_leader='.$project_leader;
            $data['subnavid']   =3002;
            $data['formurl']='/progress/progressCompletedProjectList';
        }

        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['navid']      =30;
        $data['projectstatus']=$projectstatus;
        if( !(in_array(30,$this->user()->pageauth)) && !in_array(30,$this->user()->manageauth)){
            return redirect('/home');
        }
        return view('progress.progressProjectList',$data);
    }

    //查询项目信息
    protected function getProgressProjectList($status,$project_name='',$address='',$project_leader='',$page=1,$rows=20)
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
    //施工安装工程实施列表
    public function progressConduct(Request $request,$id=0){

        $this->user();
        $project_name       =$request->input('project_name','');
        $engineering_name   =$request->input('engineering_name','');
        $progress_username    =$request->input('progress_username','');
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['engineering_name']        =$engineering_name;
        $data['progress_username']=$progress_username;

        $db=DB::table('engineering')
            ->join('project','project.id','=','project_id')
            ->leftjoin('progress','engineering.id','=','progress.engin_id')
            ->where('engineering.status',1); //实施项目工程
        if($id != 0){
            $db->where('engineering.project_id','=',$id);
        }
        if(!empty($project_name)){
            $db->where('project_name','like','%'.$project_name.'%');
        }
        if(!empty($engineering_name)){
            $db->where('engineering_name','like','%'.$engineering_name.'%');
        }
        if(!empty($progress_username)){
            $db->where('progress_username','like','%'.$progress_username.'%');
        }

        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->orderby('engineering.id','asc')
            ->select(['project.project_name','project.budget_uid','project.budget_username','engineering.progress_uid','engineering.progress_username','is_conf_architectural',
                'engineering.project_id','engineering.id as engin_id', 'engineering.engineering_name','engineering.budget_id',
                'build_area', 'engineering.status as engin_status', 'contract_code',
                'progress.id as progress_id','progress_status','build_status','arrange_status','progress.remark','build_number'
            ])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        //$queries = DB::getQueryLog();
        //var_dump($queries);

        $url='/progress/progressConduct?project_name='.$project_name.'&engineering_name='.$engineering_name.'&progress_username='.$progress_username;
        $data['page']   =$this->webfenye($page,ceil($data['count']/$rows),$url);

        $data['navid']      =30;
        $data['subnavid']   =3001;
        if( !(in_array(3001,$this->user()->pageauth)) && !in_array(3001,$this->user()->manageauth)){
            return redirect('/home');
        }
        if($id){
            $data['project'] =DB::table('project')->where('id',$id)->first();
        }
        $data['id']=$id;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('progress.progressConduct',$data);
    }
    //施工安装工程竣工列表
    public function progressCompleted(Request $request,$id=0){
        $this->user();

        $project_name       =$request->input('project_name','');
        $engineering_name   =$request->input('engineering_name','');
        $progress_username    =$request->input('progress_username','');
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['engineering_name']        =$engineering_name;
        $data['progress_username']=$progress_username;

        $db=DB::table('engineering')
            ->join('project','project.id','=','project_id')
            ->leftjoin('progress','engineering.id','=','progress.engin_id')
            ->where('engineering.status',2); //竣工项目工程
        if($id != 0){
            $db->where('engineering.project_id','=',$id);
        }
        if(!empty($project_name)){
            $db->where('project_name','like','%'.$project_name.'%');
        }
        if(!empty($engineering_name)){
            $db->where('engineering_name','like','%'.$engineering_name.'%');
        }
        if(!empty($progress_username)){
            $db->where('progress_username','like','%'.$progress_username.'%');
        }

        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->orderby('engineering.id','asc')
            ->select(['project.project_name','project.budget_uid','project.budget_username','engineering.progress_uid','engineering.progress_username','is_conf_architectural',
                'engineering.project_id','engineering.id as engin_id', 'engineering.engineering_name','engineering.budget_id',
                'build_area', 'engineering.status as engin_status', 'contract_code',
                'progress.id as progress_id','progress_status','build_status','arrange_status','progress.remark','build_number'
            ])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        //$queries = DB::getQueryLog();
        //var_dump($queries);
        $url='/progress/progressConduct?project_name='.$project_name.'&engineering_name='.$engineering_name.'&progress_username='.$progress_username;
        $data['page']   =$this->webfenye($page,ceil($data['count']/$rows),$url);

        $data['navid']      =30;
        $data['subnavid']   =3002;
        if( !(in_array(3002,$this->user()->pageauth)) && !in_array(3002,$this->user()->manageauth)){
            return redirect('/home');
        }
        if($id){
            $data['project'] =DB::table('project')->where('id',$id)->first();
        }
        $data['id']=$id;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('progress.progressCompleted',$data);
    }

        //编辑施工信息信息 $id 工程id
    public function editProgress(Request $request,$id){
        //判断是否为管理员 如果是管理员可以指定项目采购负责人 否则只能更改状态
        //该页面功能有三部分 更改项目状态 补充项目采购负责人， 添加采购状态
        $this->user();
        $data['navid']      =30;
        $data['subnavid']   =3001;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/progress/progressConduct?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if(!in_array(300104,$this->user()->manageauth)){ //指定项目的采购人员
            if(!in_array($engineering->status,[1,2])){
                return redirect('/progress/progressConduct?status=2&notice='.'只有实施项目才能更改施工状态');
            }
        }
        $data['userList']=DB::table('users')->where('status',1)->where('department_id',5)->orderby('name')->select(['id','name'])->get();

        $data['project']=$project;
        $data['engineering']=$engineering;
        $data['engin_id'] =$id;
        $data['progress'] =DB::table('progress')->where('engin_id',$id)->first();
        if(empty($data['progress'])){
            $data['progress'] = new \stdClass();
            $data['progress']->id = 0;
            $data['progress']->progress_status =0;
            $data['progress']->build_status =0;
        }
        return view('progress.editProgress',$data);
    }
    //编辑项目状态
    public function updateProjectStatus(Request $request,$id)
    {
        $engin=DB::table('engineering')->where('id',$id)->first();
        $status =$request->input('project_status',2);
        if(empty($engin)){
            return redirect('/progress/progressConduct?status=2&notice='.'项目不存在');
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
            return redirect('/progress/progressConduct/'.$engin->project_id.'?status=1&notice='.'项目状态更改成功！');
        }elseif($status == 4){
            return redirect('/progress/progressCompleted/'.$engin->project_id.'?status=1&notice='.'项目状态更改成功！');
        }else{
            return redirect('/progress/progressConduct/'.$engin->project_id.'?status=1&notice='.'项目状态更改成功！');
        }
    }

    //提交保存采购状态 信息
    public function postEditProgress(Request $request,$id){

        $build_status    =$request->input('build_status',0);
        $progress_status   =$request->input('progress_status',0);
        $remark             =$request->input('remark',0);
        $progress_uid       =$request->input('progress_uid',0);

        $progress =DB::table('progress')->where('engin_id',$id)->first();
        $budget =DB::table('budget')->where('engin_id',$id)->first();
        if(empty($progress)){
            $data=[
                'project_id'=>$budget->project_id,
                'engin_id'=>$id,
                'budget_id'=>$budget->id,
                'build_status'=>$build_status,
                'progress_status'=>$progress_status,
                'arrange_status'=>0,
                'remark'=>$remark,
                'created_uid'=>$this->user()->id,
                'created_at'=>date('Y-m-d'),
            ];
            DB::table('progress')->insert($data);
        }else{
            $data=[
                'build_status'=>$build_status,
                'progress_status'=>$progress_status,
                'remark'=>$remark,
                'edit_uid'=>$this->user()->id,
                'updated_at'=>date('Y-m-d'),
            ];
            DB::table('progress')->where('engin_id',$id)->update($data);
        }
        if($progress_uid !=0){
            $progress_username =DB::table('users')->where('id',$progress_uid)->value('name');
            DB::table('engineering')->where('id',$id)
                ->update(['progress_uid'=>$progress_uid,'progress_username'=>$progress_username]);
        }
        return redirect('/progress/progressConduct/'.$budget->project_id.'?status=1&notice='.'编辑成功');
    }





}
