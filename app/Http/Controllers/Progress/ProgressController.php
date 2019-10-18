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
            $datalist=$this->getPurchaseProjectList(1,$project_name,$address,$project_leader,$page,$rows);
            $url='/progress/progressConductProjectList?project_name='.$project_name.'&address='.$address.'&project_leader='.$project_leader;
            $data['subnavid']   =3001;
            $data['formurl']='/progress/progressConductProjectList';
        }else{
            $datalist=$this->getPurchaseProjectList(2,$project_name,$address,$project_leader,$page,$rows);
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
    //施工安装工程实施列表
    public function progressConduct(Request $request,$id=0){

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
        if($id != 0){
            $db->where('engineering.project_id','=',$id);
        }
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

        $url='/progress/progressConduct?project_name='.$project_name.'&engineering_name='.$engineering_name.'&purchase_username='.$purchase_username;
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
        return view('progress.progressConduct',$data);
    }
    //施工安装工程竣工列表
    public function progressCompleted(Request $request,$id=0){
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
        if($id != 0){
            $db->where('engineering.project_id','=',$id);
        }
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
        $url='/progress/progressConduct?project_name='.$project_name.'&engineering_name='.$engineering_name.'&purchase_username='.$purchase_username;
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
        return view('progress.progressCompleted',$data);
    }





}
