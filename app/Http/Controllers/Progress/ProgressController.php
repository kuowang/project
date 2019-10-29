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

    //施工组织统筹计划详情
    public function progressConstrucManageDetail(Request $request,$id){
        $this->user();
        $engin=DB::table('engineering')->where('id',$id)->first();
        if(empty($engin)){
            return redirect('/progress/progressConduct?status=2&notice='.'工程不存在');
        }
        $project= DB::table('project')->where('id',$engin->project_id)->first();
        if(empty($engin)){
            return redirect('/progress/progressConduct?status=2&notice='.'项目不存在');
        }
        $data['project']=$project;
        $data['engineering']=$engin;
        $data['subnavid']   =3001;
        $data['navid']   =30;
        $data['engin_id'] =$id;
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
        $engin_arch =DB::table('enginnering_architectural')->where('engin_id',$id)
            ->orderby('system_code')->orderby('sub_system_code')
            ->get();
        $data['engin_arch']=$engin_arch;
        $enginids=[];
        foreach($engin_arch as $v){
            $enginids[]=$v->sub_arch_id;
        }
        $paramsConf=[];
        $params =DB::table('progress_params_conf')->wherein('sub_arch_id',$enginids)->where('status',1)->get();
        if($params){
            foreach($params as $p){
                $paramsConf[$p->sub_arch_id][] =[
                    'param_id'=>$p->id,
                    'sub_arch_id'=>$p->sub_arch_id,
                    'name'=>$p->name,
                    'is_synchro'=>$p->is_synchro,
                    'length'=>mb_strlen($p->name),
                ];
            }
        }
        $data['paramsConf']=$paramsConf;
        //获取已经配置好的参数数据
        $data['progress_info']=DB::table('progress_construc_info')->where('engin_id',$id)->first();
        $data['progress_process'] =DB::table('progress_contenc_process')->where('engin_id',$id)->pluck('arch_duration_plan','param_id');
        $progress_duration =DB::table('progress_constrc_duration')->where('engin_id',$id)->get();
        if($progress_duration){
            foreach($progress_duration as $value){
                $data['progress_duration'][$value->sub_arch_id]=$value;
            }
        }else{
            $data['progress_duration']=[];
        }
        return view('progress.progressConstrucManageDetail',$data);
    }


    //施工组织统筹计划
    public function editProgressConstrucManage(Request $request,$id){
        $this->user();
        $engin=DB::table('engineering')->where('id',$id)->first();
        if(empty($engin)){
            return redirect('/progress/progressConduct?status=2&notice='.'工程不存在');
        }
        $project= DB::table('project')->where('id',$engin->project_id)->first();
        if(empty($engin)){
            return redirect('/progress/progressConduct?status=2&notice='.'项目不存在');
        }
        $data['project']=$project;
        $data['engineering']=$engin;
        $data['subnavid']   =3001;
        $data['navid']   =30;
        $data['engin_id'] =$id;
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
        $engin_arch =DB::table('enginnering_architectural')->where('engin_id',$id)
            ->orderby('system_code')->orderby('sub_system_code')
            ->get();
        $data['engin_arch']=$engin_arch;
        $enginids=[];
        foreach($engin_arch as $v){
            $enginids[]=$v->sub_arch_id;
        }
        $paramsConf=[];
        $params =DB::table('progress_params_conf')->wherein('sub_arch_id',$enginids)->where('status',1)->get();
        if($params){
            foreach($params as $p){
                $paramsConf[$p->sub_arch_id][] =[
                    'param_id'=>$p->id,
                    'sub_arch_id'=>$p->sub_arch_id,
                    'name'=>$p->name,
                    'is_synchro'=>$p->is_synchro,
                    'length'=>mb_strlen($p->name),
                ];
            }
        }
        $data['paramsConf']=$paramsConf;
        //获取已经配置好的参数数据
        $data['progress_info']=DB::table('progress_construc_info')->where('engin_id',$id)->first();
        $data['progress_process'] =DB::table('progress_contenc_process')->where('engin_id',$id)->pluck('arch_duration_plan','param_id');
        $progress_duration =DB::table('progress_constrc_duration')->where('engin_id',$id)->get();
        if($progress_duration){
            foreach($progress_duration as $value){
                $data['progress_duration'][$value->sub_arch_id]=$value;
            }
        }else{
            $data['progress_duration']=[];
        }
        return view('progress.editProgressConstrucManage',$data);
    }

    //提交施工统筹计划数据
    public function postProgressConstrucManage(Request $request,$id){
        //判断权限
        $engin=DB::table('engineering')->where('id',$id)->first();
        if(empty($engin)){
            return redirect('/progress/progressConduct?status=2&notice='.'工程不存在');
        }else if(($engin->progress_uid != $this->user()->id)  && !in_array(300102,$this->user()->manageauth)){
            return redirect('/progress/progressConduct/'.$engin->project_id.'?status=2&notice='.'您没有权限更改施工安装统筹计划');
        }else if($engin->status != 1){
            return redirect('/progress/progressConduct/'.$engin->project_id.'?status=2&notice='.'只有实施工程才能更改施工安装统筹计划');
        }
        $progress =DB::table('progress')->where('engin_id',$id)->first();
        if(empty($progress)){
            return redirect('/progress/progressConduct?status=2&notice='.'施工状态不正确');
        }
        $uid =$this->user()->id;
        $time =date('Y-m-d');
        $data['construction_accommodation']     =$request->input('construction_accommodation','');
        $data['construction_scaffolding']       =$request->input('construction_scaffolding','');
        $data['construction_crane']             =$request->input('construction_crane','');
        $data['construction_leader']            =$request->input('construction_leader','');
        $data['construction_phone']             =$request->input('construction_phone','');
        $data['construction_people_number']     =(int)$request->input('construction_people_number',0);
        $data['construction_first_people']      =(int)$request->input('construction_first_people',0);
        $data['construction_max_people']        =(int)$request->input('construction_max_people',0);
        $data['construction_min_people']        =(int)$request->input('construction_min_people',0);
        $data['security_people_number']         =(int)$request->input('security_people_number',0);
        $data['security_people_name']           =$request->input('security_people_name','');
        $data['inspector_number']               =(int)$request->input('inspector_number',0);
        $data['inspector']                      =$request->input('inspector','');
        $data['progress_type']                  =(int)$request->input('progress_type',2);
        $construc_info_id                       =(int)$request->input('construc_info_id',0);
        $data['uid']=$uid;
        $data['created_at']=$time;
        DB::beginTransaction();
        if($construc_info_id ==0){
            $data['project_id']=$engin->project_id;
            $data['engin_id'] =$id;
            $data['progress_id'] =$progress->id;
            DB::table('progress_construc_info')->insert($data);
        }else{
            DB::table('progress_construc_info')->where('engin_id',$id)->update($data);
        }
        //工程子工程关联
        $system_engin =DB::table('architectural_sub_system')->where('status',1)->pluck('architectural_id','id');

        //计划施工周期
        $sub_arch_id  =$request->input('sub_arch_id',[]);
        $progress_start_time  =$request->input('progress_start_time',[]);
        $progress_end_time  =$request->input('progress_end_time',[]);
        $progress_duration  =$request->input('progress_duration',[]);
        if($sub_arch_id){
            DB::table('progress_constrc_duration')->where('engin_id',$id)->delete();
            foreach($sub_arch_id as $item){
                $datalist[]=[
                    'project_id'=>$engin->project_id,
                    'engin_id'=>$id,
                    'progress_id'=>$progress->id,
                    'arch_id'=>isset($system_engin[$item])?$system_engin[$item]:0,
                    'sub_arch_id'=>$item,
                    'progress_start_time'=>$progress_start_time[$item],
                    'progress_end_time'=>$progress_end_time[$item],
                    'progress_duration'=>$progress_duration[$item],
                    'uid'=>$uid,
                    'created_at'=>$time,
                ];
            }
            DB::table('progress_constrc_duration')->insert($datalist);
        }

        $param_id  =$request->input('param_id',[]);
        $arch_duration_plan  =$request->input('arch_duration_plan',[]);
        $param_arch     =DB::table('progress_params_conf')->where('status',1)->pluck('arch_id','id');
        $param_sub_arch =DB::table('progress_params_conf')->where('status',1)->pluck('sub_arch_id','id');

        if($param_id){
            DB::table('progress_contenc_process')->where('engin_id',$id)->delete();
            foreach($param_id as $param){
                $datapro[]=[
                    'project_id'=>$engin->project_id,
                    'engin_id'=>$id,
                    'progress_id'=>$progress->id,
                    'param_id'=>$param,
                    'arch_id'=>isset($param_arch[$param])?$param_arch[$param]:0,
                    'sub_arch_id'=>isset($param_sub_arch[$param])?$param_sub_arch[$param]:0,
                    'arch_duration_plan'=>isset($arch_duration_plan[$param])?$arch_duration_plan[$param]:1,
                    'uid'=>$uid,
                    'created_at'=>$time,
                ];
            }
            DB::table('progress_contenc_process')->insert($datapro);
        }

        DB::table('progress')->where('engin_id',$id)->update(['arrange_status'=>1]);

        DB::commit();
        return redirect('/progress/progressConduct/'.$engin->project_id.'?status=1&notice='.'更改施工安装统筹计划成功');
    }


    //现场材料管理
    public function progressMaterialManage(Request $request,$id){


        return $this->success($request->all());
    }

    //施工进度管理
    public function progressProgressManage(Request $request,$id){

    }

    //施工参数配置列表
    public function porgressParamsList(Request $request){
        $this->user();
        $system_name        =$request->input('system_name','');
        $sub_system_name        =$request->input('sub_system_name','');

        $page =$request->input('page',1);
        $rows =$request->input('rows',40);
        $data['system_name']      =$system_name;
        $data['sub_system_name']      =$sub_system_name;

        $db=DB::table('architectural_system')
            ->join('architectural_sub_system','architectural_sub_system.architectural_id','=','architectural_system.id')
            ->where('architectural_system.status',1)
            ->where('architectural_sub_system.status',1);
        if(!empty($system_name)){
            $db->where('architectural_system.system_name','like','%'.$system_name.'%');
        }
        if(!empty($sub_system_name)){
            $db->where('architectural_sub_system.sub_system_name','like','%'.$sub_system_name.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db->orderby('system_code','asc')
            ->orderby('sub_system_code')
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->select(['system_name','system_code','sub_system_name','architectural_sub_system.id'])
            ->get();        //分页
        $url='/progress/porgressParamsList?system_name='.$system_name.'&sub_system_name='.$sub_system_name.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($data['count']/$rows),$url);
        //获取该用户的建筑系统关联子系统
        $paramsList=DB::table('progress_params_conf')
            ->where('status',1)
            ->orderby('sub_arch_id')
            ->orderby('sort')
            ->select(['sub_arch_id','name','is_synchro'])->get();
        $params=[];
        if($paramsList){
            foreach($paramsList as $item){
                $params[$item->sub_arch_id][]=$item;
            }
        }
        $data['params']=$params;

        //用户权限部分
        $data['navid']      =30; //当前导航页面
        $data['subnavid']   =3003;//当前子导航页
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('progress.porgressParamsList',$data);
    }


    //施工配置参数详情
    public function progressParamsDetail(Request $request,$id){
        $this->user();
        //用户权限部分
        $data['navid']      =30; //当前导航页面
        $data['subnavid']   =3003;//当前子导航页
        //获取该用户的建筑系统信息
        $data['architect']=DB::table('architectural_system')->where('id',$id)->first();
        //获取该用户的建筑系统关联子系统
        $data['paramsList']=DB::table('progress_params_conf')->where('arch_id',$id)->orderby('sort')->get();
        if(empty($data['architect'])){
            return redirect('/progress/porgressParamsList?status=2&notice='.'数据不存在，无法编辑');
        }
        return view('progress.progressParamsDetail',$data);
    }

    //编辑施工配置参数
    public function editProgressParams(Request $request,$id){
        $this->user();
        //用户权限部分
        $data['navid']      =30; //当前导航页面
        $data['subnavid']   =3003;//当前子导航页
        //获取该用户的建筑系统信息
        $architect=DB::table('architectural_sub_system')->where('id',$id)->first();
        $data['architect'] =$architect;
        //获取该用户的建筑系统关联子系统
        $data['paramsList']=DB::table('progress_params_conf')->where('sub_arch_id',$id)->orderby('sort')->get();
        if(empty($data['architect'])){
            return redirect('/progress/porgressParamsList?status=2&notice='.'数据不存在，无法编辑');
        }

        $data['subArchList'] =DB::table('progress_params_conf')
            ->join('architectural_sub_system','architectural_sub_system.id','=','progress_params_conf.sub_arch_id')
            ->where('arch_id',$architect->architectural_id)
            ->where('sub_arch_id','!=',$id)
            ->groupby('sub_arch_id')->groupby('sub_system_name')
            ->select([DB::raw('count(*) as arch_count'),'sub_arch_id','architectural_sub_system.sub_system_name'])->get();

        return view('progress.editPorgressParams',$data);
    }
   //保存施工配置参数
    public function postEditProgressParams(Request $request,$id){
        if( !in_array(300302,$this->user()->pageauth)  && !in_array(300302,$this->user()->manageauth)){
            return redirect('/progress/porgressParamsList?status=2&notice='.'您没有权限修改该配置');
        }
        $param_id   =$request->input('param_id',[]);
        $name       =$request->input('name',[]);
        $is_synchro =$request->input('is_synchro',[]);
        $sort       =$request->input('sort',[]);
        $status     =$request->input('status',[]);
        $subarchinfo=DB::table('architectural_sub_system')->where('id',$id)->first();
        if(empty($param_id) || empty($subarchinfo)){
            return redirect('/progress/porgressParamsList?status=2&notice='.'您没有上传数据');
        }
        foreach($param_id as $k=>$v){
            $data=[
                'arch_id'=>$subarchinfo->architectural_id,
                'sub_system_code'=>$subarchinfo->sub_system_code,
                'sub_arch_id'=>$id,
                'name'=>isset($name[$k])?$name[$k]:'',
                'is_synchro'=>isset($is_synchro[$k])?(int)$is_synchro[$k]:1,
                'sort'=>isset($sort[$k])?(int)$sort[$k]:1,
                'status'=>isset($status[$k])?(int)$status[$k]:1,
                'uid'=>$this->user()->id,
                'created_at'=>date('Y-m-d'),
            ];
            if($v == 0){
                DB::table('progress_params_conf')->insert($data);
            }else{
                DB::table('progress_params_conf')->where('id',$v)->update($data);
            }
        }
        return redirect('/progress/porgressParamsList?status=1&notice='.'编辑完成');
    }

    //获取指定系统工程的安装步骤
    public function getProgressArchList(Request $request,$id){
        $data =DB::table('progress_params_conf') ->where('sub_arch_id',$id)->where('status',1)
            ->select('name','is_synchro','sort')->get();
        return $this->success($data);
    }



}
