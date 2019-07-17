<?php

namespace App\Http\Controllers\Base;

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

class BaseController extends WebController
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

    //公告列表
    public function noticeList(Request $request){

        $search =$request->input('search','');
        $page =$request->input('page',1);
        $rows =$request->input('rows',20);
        $datalist =$this->getNoticeList($search,$page,$rows);
        //分页
        $url='/base/notice_list?search='.$search.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['search'] =$search;


        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =60;
        $data['subnavid']   =6002;
        $data['pageauth']   =$this->user()->pageauth;

        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('base.notice.index',$data);
    }
    //查询公告信息
    private function  getNoticeList($search,$page,$rows){

        $db=DB::table('notice');
        if(!empty($search)){
            $db->where('content','like','%'.$search.'%')
            ->orwhere('title','like','%'.$search.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db->orderby('pubdate','desc')
            ->skip(($page-1)*$rows)
            ->take($rows)->get();
        return $data;

    }

    //添加公告页面
    public function addNotice(Request $request){
        return view('base.notice.addNotice');
    }

    //编辑公告页面
    public function editNotice(Request $request,$id){
        $id =(int)$id;
        $data=DB::table('notice')->where('id',$id)->first();
        return view('base.notice.editNotice',['data'=>$data]);
    }

    //提交新增公告
    public function postAddNotice(Request $request){
        $title =$request->input('title');
        $content=$request->input('content');
        $status =(int)$request->input('status',1);
        $pubdate =$request->input('pubdate');
        if(empty($title) || empty($content) || empty($pubdate)){
            return $this->error('内容不能为空');
        }
        $data=[
            'title'=>$title,
            'content'=>$content,
            'status'=>$status,
            'pubdate'=>$pubdate,
            'uid'=>$this->user()->id,
            'operator'=>$this->user()->name,
            'created_at'=>date('Y-m-d H:i:s'),
            'updated_at'=>date('Y-m-d H:i:s'),
        ];
        DB::table('notice')->insert($data);
        return $this->success('提交成功');
    }
    //提交编辑公告
    public function postEditNotice(Request $request,$id){
        $title =$request->input('title');
        $content=$request->input('content');
        $status =(int)$request->input('status',1);
        $pubdate =$request->input('pubdate');
        if(empty($title) || empty($content) || empty($pubdate)){
            return $this->error('内容不能为空');
        }
        $data=[
            'title'=>$title,
            'content'=>$content,
            'status'=>$status,
            'pubdate'=>$pubdate,
            'uid'=>$this->user()->id,
            'operator'=>$this->user()->name,
            'updated_at'=>date('Y-m-d H:i:s'),
        ];
        DB::table('notice')->where('id',$id)->update($data);
        return $this->success('修改成功');
    }


}
