<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;
use App\Models\Authority;

class UserRoleController extends WebController
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
        $search =$request->input('search','');
        $page =$request->input('page',1);
        $rows =$request->input('rows',20);
        $datalist =$this->getUserList($search,$page,$rows);
        //分页
        $url='/admin/user_role_list?search='.$search.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $userList =[];
        foreach ($datalist['data'] as $v){
            $userList[]=$v->id;
        }
        //获取用户对应的角色名称
        $data['userRoleList'] =$this->getUserRoleList($userList);
        $data['search']=$search;

        return view('admin.userrole.index',$data);
    }
    //获取用户列表
    protected function getUserList($search,$page,$rows)
    {
        $db=DB::table('users');
        if(!empty($search)){
            $db->where('name','like','%'.$search.'%')
            ->orwhere('email','like','%'.$search.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db ->orderby('id','desc')
            ->skip(($page-1)*$rows)
            ->take($rows)->get();
        return $data;
    }

    //获取用户的角色名称
    protected function getUserRoleList($userList){
        $data =DB::table('user_role')->wherein('uid',$userList)
            ->where('status',1)
            ->select(['uid','role_id','role_name'])
            ->get();
        $datalist=[];
        foreach($data as $datum){
            $datalist[$datum->uid][]=$datum;
        }
        return $datalist;
    }
    //添加新用户
    public function addUserInfo(Request $request){
        return view('admin.userrole.adduserinfo');
    }
    //编辑用户
    public function editUserInfo(Request $request,$id){
        $data=[];
        return view('admin.userrole.edituserinfo',$data);
    }



}
