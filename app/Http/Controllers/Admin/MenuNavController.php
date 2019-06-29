<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;
use App\Models\Authority;

class MenuNavController extends WebController
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //该方法验证说明必须登录用户才能操作
        $this->middleware('auth');
    }

    /**
     * 菜单导航列表页面
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data['data']=Authority::orderby('auth_id')->get();
        return view('admin.menunav.index',$data);
    }





}
