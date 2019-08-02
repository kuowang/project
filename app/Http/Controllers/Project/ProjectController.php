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
    public function projectStart(Request $request)
    {
        $this->user();
        $search =$request->input('search','');
        $page =$request->input('page',1);
        $rows =$request->input('rows',40);
        $data['search']        =$search;
        $data['data'] =$this->getProjectList($search,$page,$rows);

        $data['navid']      =15;
        $data['subnavid']   =1502;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息

        return view('project.index',$data);
    }

    protected function getProjectList($search='',$page=1,$rows=20)
    {
        if(empty($search)){
            return DB::table('project')
                ->leftjoin('engineering','project.id','=','project_id')
                ->orderby('project.id','desc')
                ->skip(($page-1)*$rows)
                ->take($rows)
                ->get();
        }else{
            return DB::table('project')
                ->leftjoin('engineering','project.id','=','project_id')
                ->where('project_name','like','%'.$search.'%')
                ->orderby('project.id','desc')
                ->skip(($page-1)*$rows)
                ->take($rows)
                ->get();
        }
    }


}
