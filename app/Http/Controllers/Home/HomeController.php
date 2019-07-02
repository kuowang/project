<?php

namespace App\Http\Controllers\Home;

use App\Models\SystemSetting;
use Illuminate\Http\Request;
use App\Http\Controllers\WebController;

class HomeController extends WebController
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
      //  session_start();
        //print_r($this->user());
      //  print_r($_SESSION);
        //foreach($this->user() as $k=>$v){
       //     echo $k.'--'.$v."<br>";
        //}
        //return view('home.home');
        if(empty($this->user())){ //账号不存在 跳转到登录页面
            return redirect('/login');
        }

        $uid =$this->user()->id;
        $data =$this->getAuthLevel($uid,2);
        //print_R($data);
        $project =SystemSetting::where('field','project_name')->value('name');
        return view('home.index',['data'=>$data,'project_name'=>$project]);

    }
    public  function test(){
        echo  'test';
    }
}
