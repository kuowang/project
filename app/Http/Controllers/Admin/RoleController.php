<?php

namespace App\Http\Controllers\Admin;

use App\Models\Authority;
use App\Models\Role;
use App\Models\RoleAuthority;
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

        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =10;
        $data['subnavid']   =1001;
        $pageauth=[];
        foreach($data['nav'][$data['subnavid']] as $v){
            $pageauth[]=$v->auth_id;
        }
        $data['pageauth']   =$pageauth;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('admin.role.index',$data);
    }
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
        $data['data']=Authority::where('status',1)->orderby('auth_id')->get();
        $data['auth']=RoleAuthority::where('role_id',$id)->pluck('auth_id')->toarray();
        return view('admin.role.editroleauthority',$data);
    }


    //提交角色的权限
    public function poseRoleAuthority(Request $request,$id){
        $uid=$this->user()->id;
        $authdata =$request->input('auth_id');
        if(empty($authdata)){
            $this->notice='没有给该角色添加任何权限';
            return $this->index($request);
        }else{
            $this->notice=null;
        }
        //获取权限信息
        $auth =$this->getAuthinfo($authdata);
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
                'created_at'=>date('Y-m-d H:i:s'),
                'updated_at'=>date('Y-m-d H:i:s'),
            ];
        }
        $res = DB::table('role_authority')->insert($data);
        if(empty($res)){
            DB::rollback();
            $this->notice='分配权限失败';
            return $this->index($request);
        }
        DB::commit();
        $this->notice='角色分配权限成功';
        return $this->index($request);
    }

    public function getAuthinfo($arr){
        return DB::table('authority')
            ->where('status',1)
            ->wherein('auth_id',$arr)
            ->orderby('auth_id')
            ->get();
    }


}
