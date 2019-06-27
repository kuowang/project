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

    protected function getAuthLevel($uid,$level=1){
        $data =DB::table('user_role')
        ->join('role_authority','role_authority.role_id','=','user_role.role_id')
        ->where('role_authority.level','<=',$level)
        ->where('role_authority.status',1)
        ->where('user_role.status',1)
        ->where('user_role.uid',$uid)
        ->groupby('auth_id')->pluck('auth_id');

        $datalist = DB::table('authority')
            ->wherein('auth_id',$data)
            ->where('status',1)
            ->where('is_show',1)
            ->orderby('auth_id')
            ->get();
        $auth=[];
        foreach($datalist as $value){
            if($value->parent_id ==0){
                $auth[$value->auth_id]=$value;
            }else{
                $auth[$value->parent_id]->children[]=$value;
            }
        }
        return $auth;
    }

    public  function test(){
        echo  'test';
    }
}
