<?php

namespace App\Http\Controllers\Home;

use App\Models\SystemSetting;
use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;

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
        $auth=$this->getAuthLevel($this->user()->id);
        $data['data']=$auth['nav'];
        $data['project_name'] =config('app.name');
        $data['navList']=[];
        if(isset($data['data'][0])){
            foreach($data['data'][0] as $v){
                $data['navList'][]= $v->auth_id;
            }
        }
        $data['allNavList']=$this->getNavLaval(0);
        return view('home.test',$data);

    }

    //获取父id对应的导航信息
    public  function getNavLaval($id=0){
        return  DB::table('authority')
            ->where('parent_id',$id)
            ->where('status',1)
            ->where('is_show',1)
            ->where('auth_id','!=','10')
            ->orderby('auth_id')
            ->get();
    }
}
