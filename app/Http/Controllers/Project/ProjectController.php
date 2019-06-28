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
        return view('project.project',$data);
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
