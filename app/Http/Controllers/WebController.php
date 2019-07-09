<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;


class WebController extends Controller
{
    //如果用户登录返回用户信息 否则返回null
    public function user(){
        //添加用户的导航信息
        $user=Auth::user();
        if($user && !isset($user->nav)){
            //Auth::user()->system=$this->getSystem();
            Auth::user()->nav = $this->getAuthLevel(Auth::user()->id);
            Auth::user()->system=$this->getSystem();
        }
        if($user && $user->status ==0){
           throw new \Exception('用户被禁止，不能访问');
        }
        return  $user;
    }
    protected function getAuthLevel($uid){
        $data =DB::table('user_role')
            ->join('role_authority','role_authority.role_id','=','user_role.role_id')
            //->where('role_authority.parent_auth_id','<=',$parent_id)
            ->where('role_authority.status',1)
            ->where('user_role.status',1)
            ->where('user_role.uid',$uid)
            ->groupby('auth_id')->pluck('auth_id');

        $datalist = DB::table('authority')
            ->wherein('auth_id',$data)
            ->where('status',1)
            //->where('is_show',1)
            ->orderby('auth_id')
            ->get();
        $auth=[];
        foreach($datalist as $value){
            $auth[$value->parent_id][]=$value;
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

    /**分页函数
     * @param $page 当前第几页
     * @param $count 总页数
     * @param $url  地址
     * @return $return html内容
     */

    public function webfenye($page,$count,$url){
        /** 实例
        <div class="layui-card-body ">
            <div class="page">
                <div>
                    <a class="prev" href="">&lt;&lt;</a>
                    <a class="num" href="">1</a>
                    <span class="current">2</span>
                    <a class="num" href="">3</a>
                    <a class="num" href="">489</a>
                    <a class="next" href="">&gt;&gt;</a>
                </div>
            </div>
        </div>
         */
        if($count ==1){
            return '';
        }


        $str ='<div class="layui-card-body ">';
        $str .='<div class="page">';
        $str .='<div>';
        if($count <=10){ //小于10页全部显示
            for($i=1; $i <= $count; $i++){
                if($i ==$page){
                    $str .='<span class="current">'.$i.'</span>';
                }else{
                    $str .='<a class="num" href="'.$url.'&page='.$i.'">'.$i.'</a>';
                }
            }
        }else{ //大于10页分类显示
            if($page !=1){
                $str .='<a class="prev" href="'.$url.'&page='.($page-1).'">上一页</a>';
            }
            if($page < 5 ){
                for($j=1;$j<=5;$j++){
                    if($j ==$page){
                        $str .='<span class="current">'.$j.'</span>';
                    }else{
                        $str .='<a class="num" href="'.$url.'&page='.$j.'">'.$j.'</a>';
                    }
                }
            }else{
                $str .='<a class="num" href="'.$url.'&page=1">1</a>';
                $str .='<span class="layui-laypage-spr">…</span>';
            }

            if($page >= 5 && $page <= ($count-5)){
                for($h =($page-3);$h < $page;$h++){
                    $str .='<a class="num" href="'.$url.'&page='.$h.'">'.$h.'</a>';
                }

                $str .='<span class="current">'.$page.'</span>';

                for($h =($page+1);$h < ($page+4);$h++){
                    $str .='<a class="num" href="'.$url.'&page='.$h.'">'.$h.'</a>';
                }

            }

            if($page > ($count-5)){
                for($j=$count-5;$j<= $count;$j++){
                    if($j ==$page){
                        $str .='<span class="current">'.$j.'</span>';
                    }else{
                        $str .='<a class="num" href="'.$url.'&page='.$j.'">'.$j.'</a>';
                    }
                }
            }else{
                $str .='<span class="layui-laypage-spr">…</span>';
                $str .='<a class="num" href="'.$url.'&page='.$count.'">'.$count.'</a>';
            }

            if($page != $count){
                $str .='<a class="next" href="'.$url.'&page='.($page+1).'">下一页</a>';
            }
        }
        $str .='</div>';
        $str .='</div>';
        $str .=' </div>';
        return $str;
    }


    public  function getSystem(){
        return DB::table('system_setting')->pluck('name','field');
    }

}
