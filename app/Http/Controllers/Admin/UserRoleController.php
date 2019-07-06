<?php

namespace App\Http\Controllers\Admin;

use App\Models\Role;
use App\Models\User;
use App\Models\UserRole;
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
        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =10;
        $data['subnavid']   =1002;
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
        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =10;
        $data['subnavid']   =1002;
        //获取角色列表
        $data['role_list']=Role::where('status',1)->get();
        return view('admin.userrole.adduserinfo',$data);
    }
    //编辑用户
    public function editUserInfo(Request $request,$id){
        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =10;
        $data['subnavid']   =1002;
        //获取用户信息
        $data['user']=User::where('id',$id)->first();
        //获取用户角色
        $data['user_role']=UserRole::where('uid',$id)->where('status',1)->pluck('role_id')->toarray();
        //获取角色列表
        $data['role_list']=Role::where('status',1)->get();
        return view('admin.userrole.edituserinfo',$data);
    }
    //保存新用户信息
    public  function postAddUser(Request $request){

        $username =$request->input('username','');
        $email =$request->input('email','');
        $pwd =$request->input('pwd','');
        $checkpwd =$request->input('checkpwd','');
        $roleid =$request->input('roleid',[]);
        if((empty($pwd) || empty($checkpwd))){
            $this->notice='密码不能为空';
            return redirect('admin/add_user_info');
        }elseif($pwd != $checkpwd){
            return $this->error('两次密码不一致');
        }
        if(empty($username)){
            return $this->error('用户名不能为空');
        }
        $count =DB::table('users')->where('email',$email)->count();
        if($count >=1){
            return $this->error('邮箱已经被使用，请更改邮箱');
        }

        DB::beginTransaction();
        $data =[
            'name' => $username,
            'email' => $email,
            'password' => bcrypt($pwd),
        ];
        $id =DB::table('users')->insertGetId($data);
        if(empty($id)){
            DB::rollback();
            return $this->error('创建用户失败，请重试');
        }
        if(!empty($roleid)){
           $datalist=[];
           $role =DB::table('role')->wherein('id',$roleid)->get();
            foreach($role as $item){
                $datalist[]=[
                  'uid'=>$id,
                  'role_id'=>$item->id,
                    'role_name'=>$item->name,
                    'status'=>1,
                    'created_at'=>date('Y-m-d H:i:s'),
                    'updated_at'=>date('Y-m-d H:i:s'),
                ];
            }
           $res= DB::table('user_role')->insert($datalist);
            if(empty($res)){
                return $this->error('创建用户权限失败，请重试');
            }
        }
        DB::commit();

        return $this->success('创建用户成功');
    }

    //保存用户信息
    public  function postEditUser(Request $request){
        $data=$request->all();
        $id =$request->input('id',0);
        $username =$request->input('username','');
        $email =$request->input('email','');
        $pwd =$request->input('pwd','');
        $checkpwd =$request->input('checkpwd','');
        $roleid =$request->input('roleid',[]);

        if(empty($id) && (empty($pwd) || empty($checkpwd))){
            return $this->error('密码不能为空');
        }elseif($pwd != $checkpwd){
            return $this->error('两次密码不一致');
        }

        if(empty($id)){
            $count =DB::table('user')->where('email',$email)->count();
            if($count >=1){
                return $this->error('邮箱已经被使用，请更改邮箱');
            }
        }
        DB::beginTransaction();
        if(empty($id)){ //创建用户


        }else{  //编辑用户

        }

        DB::commit();



        return $this->success($data);
    }



}
