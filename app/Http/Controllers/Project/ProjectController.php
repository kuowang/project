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
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.index',$data);
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
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.index',$data);
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
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.index',$data);
    }
    /**
     *终止项目列表
     * @return \Illuminate\Http\Response
     */
    public function projectTermination(Request $request)
    {
        $this->user();
        $data=$this->project($request,3);
        $data['subnavid']   =1505;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('project.index',$data);
    }

    //查询项目信息
    protected function getProjectList($status,$project_name='',$address='',$customer_leader='',$success_level=1,$page=1,$rows=20)
    {
        $db=DB::table('project')
            ->leftjoin('engineering','project.id','=','project_id')
            ->where('project.status',$status);

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



}
