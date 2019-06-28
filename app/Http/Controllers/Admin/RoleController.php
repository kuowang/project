<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;
use App\Models\SystemSetting;

class RoleController extends WebController
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
    public function index()
    {
        //
        $uid =$this->user()->id;
        $data =$this->getAuthLevel($uid,2);
        //print_R($data);
        $project =SystemSetting::where('field','project_name')->value('name');
        return view('admin.index',['data'=>$data,'project_name'=>$project]);
    }


    public  function test(){
        echo  'test';
    }
}
