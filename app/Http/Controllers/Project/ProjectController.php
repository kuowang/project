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
        $search =$request->input('search','');
        $page =$request->input('page',1);
        $rows =$request->input('rows',20);
        $data =$this->getSystemSetting($search,$page,$rows);
        return view('project.project',['data'=>$data]);
    }

    protected function getSystemSetting($search='',$page=1,$rows=20)
    {
        if(empty($search)){
            return DB::table('system_setting')->skip(($page-1)*$rows)->take($rows)->get();
        }else{
            return DB::table('system_setting')->where('name','like','%'.$search.'%')
                ->skip(($page-1)*$rows)->take($rows)->get();
        }
    }



}
