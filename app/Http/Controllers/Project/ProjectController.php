<?php

namespace App\Http\Controllers\Project;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;
use App\Models\SystemSetting;

class ProjectController extends WebController
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //该方法验证说明必须登录用户才能操作
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $uid =$this->user()->id;
        $search =$request->input('search','');
        $page =$request->input('page',1);
        $rows =$request->input('rows',20);
        $data['data'] =$this->getProjectList($search,$page,$rows);
        $data['nav'] =$this->getAuthTopNav($uid,20);
        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =15;
        $data['subnavid']   =1502;
        $pageauth=[];
        if(isset($data['nav'][$data['subnavid']])){
            foreach($data['nav'][$data['subnavid']] as $v){
                $pageauth[]=$v->auth_id;
            }
        }
        $data['pageauth']   =$pageauth;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息

        return view('project.index',$data);
    }

    protected function getProjectList($search='',$page=1,$rows=20)
    {
        if(empty($search)){
            return DB::table('project')
                ->orderby('uh_project_id','desc')
                ->skip(($page-1)*$rows)
                ->take($rows)
                ->get();
        }else{
            return DB::table('project')
                ->where('project_name','like','%'.$search.'%')
                ->orderby('uh_project_id','desc')
                ->skip(($page-1)*$rows)
                ->take($rows)
                ->get();
        }
    }


}
