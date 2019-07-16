<?php

namespace App\Http\Controllers\Admin;

use App\Models\Authority;
use App\Models\ManageAuthority;
use App\Models\Role;
use App\Models\RoleAuthority;
use App\Models\RoleManageAuthority;
use App\Models\UserManageAuthority;
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
    public function index(Request $request)
    {
        $search =$request->input('search','');
        $page =$request->input('page',1);
        $rows =$request->input('rows',20);
        $datalist =$this->getRoleList($search,$page,$rows);
        //分页
        $url='/admin/role_list?search='.$search.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['search'] =$search;
        $rolelist=[];
        foreach($data['data'] as $val){
            $rolelist[]=$val->id;
        }
        //获取角色对应的用户
        $data['userlist']= $this->role_user($rolelist);
        //var_dump($data['userlist']);
        //exit;

        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =10;
        $data['subnavid']   =1001;
        $data['pageauth']   =$this->user()->pageauth;

        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('admin.role.index',$data);
    }
    //获取角色列表
    protected function getRoleList($search='',$page=1,$rows=20)
    {
        $db=DB::table('role');
        if(!empty($search)){
            $db->where('name','like','%'.$search.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db  ->orderby('id','desc')
            ->skip(($page-1)*$rows)
            ->take($rows)->get();
        return $data;
    }
    //添加角色页面
    public function addRole(Request $request){
        return view('admin.role.addrole');
    }

    //编辑角色页面
    public function editRole(Request $request,$id){
        $id =(int)$id;
        $data=DB::table('role')->where('id',$id)->first();
        return view('admin.role.editrole',['data'=>$data]);
    }
    //提交角色信息
    public function postRole(Request $request){
        $id = (int)$request->input('id',0);
        $data['name']      =$request->input('name','');
        if(empty($data['name'])){
            return $this->error('内容不能为空');
        }
        $data['updated_at'] =date('Y-m-d H:i:s');
        if($id == 0){
            $data['created_at'] =date('Y-m-d H:i:s');
            DB::table('role')->insert($data);
        }else{
            DB::table('role')->where('id',$id)->update($data);
        }
        return $this->success('提交成功');
    }

    //编辑角色权限
    public function editRoleAuthority(Request $request,$id){
        $data['id']=(int)$id;
        //角色权限
        $data['data']=Authority::where('status',1)->orderby('auth_id')->get();
        $data['auth']=RoleAuthority::where('role_id',$id)->pluck('auth_id')->toarray();
        //管理权限
        $data['managelist']=ManageAuthority::orderby('manage_id')->get();
        $data['rolemanagelist']=RoleManageAuthority::where('role_id',$id)->pluck('manage_auth_id')->toarray();

        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =10;
        $data['subnavid']   =1001;
        $data['pageauth']   =$this->user()->pageauth;

        return view('admin.role.editroleauthority',$data);
    }


    //提交角色的权限
    public function poseRoleAuthority(Request $request,$id){
        $uid=$this->user()->id;
        $authdata =$request->input('auth_id',[]);
        $managedata =$request->input('manage_id',[]);
        if(empty($authdata)){
            return redirect('/admin/role_list?status=2&notice='.'没有给该角色添加任何权限');
        }
        //获取权限信息
        $auth =$this->getAuthinfo($authdata);
        $time =date('Y-m-d H:i:s');
        $data=[];
        DB::beginTransaction();
        //删除数据
        DB::table('role_authority')->where('role_id',$id)->delete();
        //添加数据
        foreach($auth as $val){
            $data[]=[
                'role_id'=>$id,
                'auth_id'=>$val->auth_id,
                'parent_auth_id'=>$val->parent_id,
                'level'=>$val->level,
                'status'=>1,
                'operator'=>$uid,
                'created_at'=>$time,
                'updated_at'=>$time,
            ];
        }
        $res = DB::table('role_authority')->insert($data);
        if(empty($res)){
            DB::rollback();
            return redirect('/admin/role_list?status=2&notice='.'分配权限失败');
        }
        //获取管理权限信息
        DB::table('role_manage_authority')->where('role_id',$id)->delete();
        if($managedata){
            $managelist=$this->getManageAuthority($managedata);
            unset($managedata);
            foreach ($managelist as $value){
                $datalist[]=[
                    'role_id'=>$id,
                    'manage_auth_id'=>$value->id,
                    'name' =>$value->name,
                    'created_at'=>$time,
                    'updated_at'=>$time,
                ];
            }
            $res = DB::table('role_manage_authority')->insert($datalist);
            if(empty($res)){
                DB::rollback();
                return redirect('/admin/role_list?status=2&notice='.'分配管理权限失败');
            }
        }
        DB::commit();
        return redirect('/admin/role_list?status=1&notice='.'角色分配权限成功');
    }

    //获取权限列表
    public function getAuthinfo($arr){
        return DB::table('authority')
            ->where('status',1)
            ->wherein('auth_id',$arr)
            ->orderby('auth_id')
            ->get();
    }
    //获取管理者权限列表
    public function getManageAuthority($managedata){
        return ManageAuthority::wherein('id',$managedata)->get();
    }



    //获取角色对应的用户信息
    public function role_user($rolelist){
        $list =DB::table('user_role')
            ->join('users','users.id','=','user_role.uid')
            ->wherein('role_id',$rolelist)
            ->where('user_role.status',1)
            ->select(['uid','role_id','name as username'])
            ->get();
        if(empty($list)){
            return [];
        }
        $data=[];
        foreach($list as $item){
            $data[$item->role_id][]=$item;
        }
        return $data;
    }

}
