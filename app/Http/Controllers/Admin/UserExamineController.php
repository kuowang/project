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
use App\Http\Controllers\Admin\UserRoleController;

class UserExamineController extends WebController
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
        $type =$request->input('type',0);
        $page =$request->input('page',1);
        $rows =$request->input('rows',40);
        $datalist =$this->getExamineList($search,$type,$page,$rows);
        //分页
        $url='/admin/examine_user?search='.$search.'&type='.$type.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['search'] =$search;
        $data['type'] =$type;

        $userList =[];
        foreach ($datalist['data'] as $v){
            $userList[]=$v->uid;
        }
        //获取用户对应的角色名称
        $data['userRoleList'] =(new UserRoleController())->getUserRoleList($userList);

        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =10;
        $data['subnavid']   =1005;
        $data['pageauth']   =$this->user()->pageauth;

        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('admin.userexamine.index',$data);
    }

    private function getExamineList($search,$type,$page,$rows){
        $db=DB::table('examine_user')
            ->join('users','users.id','=','examine_user.uid')
            ->where('examine_user.status',$type);
        if(!empty($search)){
            $db->where('name','like','%'.$search.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db ->orderby('examine_user.status','desc')->orderby('examine_user.id','desc')
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->select(['examine_user.id','uid','creator','examine_user.created_at','examine_name','examine_user.updated_at','examine_user.status','users.status as user_status','users.name'])
            ->get();
        return $data;
    }

    //审核用户状态
    public function examineStatus(Request $request,$id,$status){
        $examuser=DB::table('examine_user')->where('id',$id)->first();
        if(empty($examuser)){
            return redirect('admin/examine_user?status=2&notice='.'用户不存在');
        }
        $data=[
          'status'=>$status==1?1:-1,
          'examine_name'=>$this->user()->name,
          'examine_uid'=>$this->user()->id,
          'updated_at'=>date('Y-m-d H:i:s'),
        ];
        DB::table('examine_user')->where('id',$id)->update($data);
        if($status ==1){
            DB::table('users')->where('id',$examuser->uid)->update(['status'=>1,'updated_at'=>date('Y-m-d H:i:s')]);
            return redirect('admin/examine_user?status=1&notice='.'审核通过');
        }else{
            DB::table('users')->where('id',$examuser->uid)->update(['status'=>-1,'updated_at'=>date('Y-m-d H:i:s')]);
            return redirect('admin/examine_user?status=1&notice='.'用户审核不通过');
        }
    }


}
