<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class WebController extends Controller
{
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
            ->where('is_left_show',1)
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

    //获取指定分支下的用户权限 二级导航权限 上部导航条
    protected function getAuthTopNav($uid,$auth_id){
        $data =DB::table('user_role')
            ->join('role_authority','role_authority.role_id','=','user_role.role_id')
            ->where('role_authority.parent_auth_id','=',$auth_id)
            ->where('role_authority.status',1)
            ->where('user_role.status',1)
            ->where('user_role.uid',$uid)
            ->groupby('auth_id')->pluck('auth_id');
        $datalist = DB::table('authority')
            ->wherein('auth_id',$data)
            ->where('status',1)
            ->orderby('auth_id')
            ->get();
        return $datalist;
    }


}
