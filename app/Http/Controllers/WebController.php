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
            $userauth=$this->getAuthLevel(Auth::user()->id); //导航列表
            Auth::user()->nav =$userauth['nav']; //导航列表
            Auth::user()->pageauth =$userauth['authlist']; //权限id
            Auth::user()->system=$this->getSystem();    //系统参数
            //系统公告
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
        $auth['nav']=[];
        $auth['authlist']=[];
        foreach($datalist as $value){
            $auth['nav'][$value->parent_id][]=$value;
            $auth['authlist'][]=$value->auth_id;
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

    public function webfenyetest($page,$count,$url){
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
    public function webfenye($page,$count,$url){
        /** 实例
        <div class="dataTables_paginate paging_full_numbers" id="data-table_paginate">
        <a tabindex="0" class="first paginate_button paginate_button_disabled" id="data-table_first">First</a>
        <span><a tabindex="0" class="paginate_active">1</a>
        <a tabindex="0" class="paginate_button">2</a>
        <a tabindex="0" class="paginate_button">3</a>
        <a tabindex="0" class="paginate_button">4</a>
        </span>
        <a tabindex="0" class="last paginate_button" id="data-table_last">Last</a>
        </div>
         */
        if($count ==1){
            return '';
        }

        $str ='<div class="dataTables_paginate paging_full_numbers" id="data-table_paginate" style="margin-right:20px ">';

        if($count <=10){ //小于10页全部显示
            for($i=1; $i <= $count; $i++){
                if($i ==$page){
                    $str .='<a tabindex="0" class="paginate_active">'.$i.'</a>';
                }else{
                    $str .='<a tabindex="0" class="paginate_button" href="'.$url.'&page='.$i.'">'.$i.'</a>';
                }
            }
        }else{ //大于10页分类显示
            if($page !=1){
                $str .='<a tabindex="0" class="paginate_button" href="'.$url.'&page='.($page-1).'">上一页</a>';
            }
            if($page < 5 ){
                for($j=1;$j<=5;$j++){
                    if($j ==$page){
                        $str .='<a tabindex="0" class="paginate_active">'.$j.'</a>';
                    }else{
                        $str .='<a tabindex="0" class="paginate_button" href="'.$url.'&page='.$j.'">'.$j.'</a>';
                    }
                }
            }else{
                $str .='<a tabindex="0" class="paginate_button" href="'.$url.'&page=1">1</a>';
                $str .='<a tabindex="0" class="paginate_button">…</a>';
            }

            if($page >= 5 && $page <= ($count-5)){
                for($h =($page-3);$h < $page;$h++){
                    $str .='<a tabindex="0" class="paginate_button" href="'.$url.'&page='.$h.'">'.$h.'</a>';
                }

                $str .='<a tabindex="0" class="paginate_active">'.$page.'</a>';

                for($h =($page+1);$h < ($page+4);$h++){
                    $str .='<a tabindex="0" class="paginate_button" href="'.$url.'&page='.$h.'">'.$h.'</a>';
                }

            }

            if($page > ($count-5)){
                for($j=$count-5;$j<= $count;$j++){
                    if($j ==$page){
                        $str .='<a tabindex="0" class="paginate_button">'.$j.'</a>';
                    }else{
                        $str .='<a tabindex="0" class="paginate_button" href="'.$url.'&page='.$j.'">'.$j.'</a>';
                    }
                }
            }else{
                $str .='<a tabindex="0" class="paginate_button">…</a>';
                $str .='<a tabindex="0" class="paginate_button" href="'.$url.'&page='.$count.'">'.$count.'</a>';
            }

            if($page != $count){
                $str .='<a tabindex="0" class="paginate_button" href="'.$url.'&page='.($page+1).'">下一页</a>';
            }
        }

        $str .=' </div>';
        return $str;
    }
















    public  function getSystem(){
        return DB::table('system_setting')->pluck('name','field');
    }

}
