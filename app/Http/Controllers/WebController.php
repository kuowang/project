<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;

class WebController extends Controller
{
    //如果用户登录返回用户信息 否则返回null
    public function user(){
        //添加用户的导航信息
        $user=Auth::user();
        if($user && !isset($user->nav)){
            $userauth=$this->getAuthLevel(Auth::user()->id); //导航列表
            Auth::user()->nav           =$userauth['nav']; //导航列表
            Auth::user()->pageauth      =$userauth['authlist']; //权限id
            Auth::user()->system        =$this->getSystem();    //系统参数
            Auth::user()->manageauth    =$userauth['manageauth']; //管理权限列表
            //系统公告
            Auth::user()->notice        =DB::table('notice')->where('status',1)->orderby('pubdate','desc')->limit(5)->get()->toarray();
        }

        if(isset($user->nav)){
            //每个页面均公用的参数
            View::share('nav',Auth::user()->nav);
            View::share('pageauth',Auth::user()->pageauth);
            View::share('system',Auth::user()->system);
            View::share('manageauth',Auth::user()->manageauth);
            View::share('noticelist',Auth::user()->notice);
            View::share('uid',Auth::user()->id);
            View::share('username',Auth::user()->name);
        }

        if($user ){
            if( $user->status ==0 ){
                throw new \Exception('待审核用户，不能访问 <a href="/logout" style="color:#0000FF">(点击退出)</a>');
            }elseif( $user->status == -1){
                throw new \Exception('用户申请被禁止，不能访问 <a href="/logout"  style="color:#0000FF">(点击退出)</a>');
            }elseif( $user->status == -2){
                throw new \Exception('用户被禁止，不能访问 <a href="/logout"  style="color:#0000FF">(点击退出)</a>');
            }
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
        //管理权限
        $manageauth =DB::table('user_role')
            ->join('role_manage_authority','role_manage_authority.role_id','=','user_role.role_id')
            ->where('user_role.status',1)
            ->where('role_manage_authority.status',1)
            ->where('user_role.uid',$uid)
            ->groupby('manage_auth_id')
            ->pluck('manage_auth_id')
            ->toArray();
        $auth['nav']=[];
        $auth['authlist']=[];
        $auth['manageauth']=[];
        foreach($datalist as $value){
            $auth['nav'][$value->parent_id][$value->sort]=$value;
            $auth['authlist'][]=$value->auth_id;
        }
        foreach($auth['nav'] as &$val){
            ksort($val);
        }
        if($manageauth){
            $auth['manageauth']=$manageauth;
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

    //修改每个项目的工程数量
    public function setProjectEnginNumber($id){
        $data =DB::table('engineering')->where('project_id',$id)
            ->select(DB::raw('count(*) as status_count, status'))
            ->groupby('status')
            ->get();
        if(empty($data)){
            return false;
        }
        $list=[];
        foreach($data as $v){
            $list[$v->status] =$v->status_count;
        }
        $datalist['start_count']    =isset($list[0])?$list[0]:0;
        $datalist['conduct_count']  =isset($list[1])?$list[1]:0;
        $datalist['completed_count']=isset($list[2])?$list[2]:0;
        $datalist['termination_count']=isset($list[4])?$list[4]:0;
        DB::table('project')->where('id',$id)->update($datalist);
        return true;
    }
}
