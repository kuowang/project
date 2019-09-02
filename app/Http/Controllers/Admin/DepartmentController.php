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

class DepartmentController extends WebController
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
        $this->user();
        $search =$request->input('search','');
        $page =$request->input('page',1);
        $rows =$request->input('rows',40);
        $datalist =$this->getDepartmentList($search,$page,$rows);
        //分页
        $url='/admin/departmentList?search='.$search.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['search'] =$search;


        //用户权限部分
        $data['navid']      =10;
        $data['subnavid']   =1006;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('admin.department.index',$data);
    }
    //获取部门列表
    protected function getDepartmentList($search='',$page=1,$rows=40)
    {
        $db=DB::table('department');
        if(!empty($search)){
            $db->where('department','like','%'.$search.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db  ->orderby('sort')
            ->skip(($page-1)*$rows)
            ->take($rows)->get();
        return $data;
    }

    //提交部门信息
    public function postDepartment(Request $request){
        $id = (int)$request->input('id',0);
        $data['department']      =$request->input('name','');
        $data['sort']       =$request->input('sort',0);
        if(empty($data['department'])){
            return $this->error('部门名称不能为空');
        }
        $data['created_at'] =date('Y-m-d H:i:s');
        $data['uid']=$this->user()->id;
        $data['username']=$this->user()->name;
        if($id == 0){
            DB::table('department')->insert($data);
        }else{
            DB::table('department')->where('id',$id)->update($data);
        }
        return $this->success('提交成功');
    }

    //获取角色对应的用户信息
    public function deleteDepartment(Request $request,$id){
        $list =DB::table('department')
            ->where('id',$id)
            ->update(['status'=>0]);
        return $this->success('删除成功');
    }

}
