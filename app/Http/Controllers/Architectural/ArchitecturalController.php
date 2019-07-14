<?php

namespace App\Http\Controllers\Architectural;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;
use App\Models\SystemSetting;

class ArchitecturalController extends WebController
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(Request $request)
    {
        //该方法验证说明必须登录用户才能操作
        $this->middleware('auth');
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
        $rows =$request->input('rows',10);
        $data['search']        =$search;
        $datalist =$this->getArchitecturalList($search,$page,$rows);
        //分页
        $url='/architectural/index?search='.$search.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];

        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav; //导航页面
        $data['navid']      =35; //当前导航页面
        $data['pageauth']   =$this->user()->pageauth; //按钮权限
        $data['subnavid']   =3501;//当前子导航页
        $data['manageauth'] =(array)$this->user()->manageauth; //能够查询详情权限
        $data['uid']        =$this->user()->id;

        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('architectural.index',$data);
    }
    //获取建筑系统表数据
    protected function getArchitecturalList($search='',$page=1,$rows=20)
    {
        $db=DB::table('architectural_system');
        if(!empty($search)){
            $db->where('system_name','like','%'.$search.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db->orderby('status','desc') ->orderby('system_code','asc')
            ->skip(($page-1)*$rows)
            ->take($rows)->get();
        return $data;
    }
    //创建建筑工程信息
    public function addArchitect(){
        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =35;
        $data['pageauth']   =$this->user()->pageauth;
        $data['subnavid']   =3501;
        return view('architectural.addArchitect',$data);
    }

    //提交创建建筑工程信息
    public function postAddArchitect(Request $request){
        //var_dump($request->all());
        //系统工程
        $system_name =$request->input('system_name','');
        $engineering_name =$request->input('engineering_name','');
        $system_code =$request->input('system_code','');
        $status =$request->input('status',1);
        //子系统工程
        $sub_system_name =$request->input('sub_system_name',[]);
        $sub_system_code =$request->input('sub_system_code',[]);
        $work_code =$request->input('work_code',[]);
        $sub_status =$request->input('sub_status',[]);
        $sort =$request->input('sort',[]);
        if(empty($system_name) || empty($engineering_name)|| empty($system_code)){
            return redirect('/architectural/index?status=2&notice='.'建筑系统内容不能为空');
        }
        if(count($sub_system_name) != count($sub_system_code)){
            return redirect('/architectural/index?status=2&notice='.'子建筑系统内容不能为空');
        }elseif(count($sub_system_name) != count($work_code)){
            return redirect('/architectural/index?status=2&notice='.'子建筑系统内容不能为空');
        }elseif(count($sub_system_name) != count($sub_status)){
            return redirect('/architectural/index?status=2&notice='.'子建筑系统内容不能为空');
        }elseif(count($sub_system_name) != count($sort)){
            return redirect('/architectural/index?status=2&notice='.'子建筑系统内容不能为空');
        }
        $uid =$this->user()->id;
        $username =$this->user()->name;
        DB::beginTransaction();
        //保存数据
        $data=[
            'system_name'=>$system_name,
            'engineering_name'=>$engineering_name,
            'system_code'=>$system_code,
            'status'=>$status,
            'uid'=>$uid,
            'created_at'=>date('Y-m-d'),
            'updated_at'=>date('Y-m-d'),
            'username'=>$username,
        ];

        $id = DB::table('architectural_system')->insertGetId($data);
        if(empty($id)){
            DB::rollback();
            return redirect('/admin/role_list?status=2&notice='.'创建建筑系统失败，请重试');
        }
        if($sub_system_name){
            foreach($sub_system_name as $k=>$v){
                $datalist[]=[
                    'architectural_id'=>$id,
                    'sub_system_name'=>$v,
                    'sub_system_code'=>$sub_system_code[$k],
                    'work_code'=>$work_code[$k],
                    'status'=>$sub_status[$k],
                    'sort'=>$sort[$k],
                    'uid'=>$uid,
                    'created_at'=>date('Y-m-d'),
                    'updated_at'=>date('Y-m-d'),
                    'username'=>$username,
                ];
            }
            $res =DB::table('architectural_sub_system')->insert($datalist);
            if(empty($res)){
                DB::rollback();
                return redirect('/architectural/index?status=2&notice='.'创建建筑子系统失败，请重试');
            }
        }
        DB::commit();
        return redirect('/architectural/index?status=1&notice='.'创建建筑系统成功');
    }

    //编辑建筑工程
    public function editArchitect(Request $request,$id){
        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav; //导航页面
        $data['navid']      =35; //当前导航页面
        $data['pageauth']   =$this->user()->pageauth; //按钮权限
        $data['subnavid']   =3501;//当前子导航页
        $data['manageauth'] =(array)$this->user()->manageauth; //能够查询详情权限
        $data['uid']        =$this->user()->id;
        //获取该用户的建筑系统信息
        $data['architect']=DB::table('architectural_system')->where('id',$id)->first();
        //获取该用户的建筑系统关联子系统
        $data['sub_architect']=DB::table('architectural_sub_system')->where('architectural_id',$id)->get();
        if(empty($data['architect'])){
            return redirect('/architectural/index?status=2&notice='.'数据不存在，无法编辑');
        }
        if($data['uid'] != $data['architect']->uid){
            return redirect('/architectural/index?status=2&notice='.'仅有创建用户才能编辑');
        }
        return view('architectural.editArchitect',$data);

    }

    //提交创建建筑工程信息
    public function postEditArchitect(Request $request){
        //系统工程
        $id =$request->input('id',0);
        $system_name =$request->input('system_name','');
        $engineering_name =$request->input('engineering_name','');
        $system_code =$request->input('system_code','');
        $status =$request->input('status',1);
        //子系统工程
        $sub_system_name =$request->input('sub_system_name',[]);
        $sub_system_code =$request->input('sub_system_code',[]);
        $work_code =$request->input('work_code',[]);
        $sub_status =$request->input('sub_status',[]);
        $sort =$request->input('sort',[]);
        $subid=$request->input('sub_id',[]);
        if(empty($system_name) || empty($engineering_name)|| empty($system_code) || empty($id)){
            return redirect('/architectural/index?status=2&notice='.'建筑系统内容不能为空');
        }
        if(count($sub_system_name) != count($sub_system_code)){
            return redirect('/architectural/index?status=2&notice='.'子建筑系统内容不能为空');
        }elseif(count($sub_system_name) != count($work_code)){
            return redirect('/architectural/index?status=2&notice='.'子建筑系统内容不能为空');
        }elseif(count($sub_system_name) != count($sub_status)){
            return redirect('/architectural/index?status=2&notice='.'子建筑系统内容不能为空');
        }elseif(count($sub_system_name) != count($sort)){
            return redirect('/architectural/index?status=2&notice='.'子建筑系统内容不能为空');
        }

        $uid =$this->user()->id;
        $username =$this->user()->name;
        DB::beginTransaction();
        //保存数据
        $data=[
            'system_name'=>$system_name,
            'engineering_name'=>$engineering_name,
            'system_code'=>$system_code,
            'status'=>$status,
            'uid'=>$uid,
            'updated_at'=>date('Y-m-d'),
            'username'=>$username,
        ];
        DB::table('architectural_system')->where('id',$id)->update($data);

        if($subid){
            foreach($subid as $k=>$v){
                $datalist=[
                    'architectural_id'=>$id,
                    'sub_system_name'=>$sub_system_name[$k],
                    'sub_system_code'=>$sub_system_code[$k],
                    'work_code'=>$work_code[$k],
                    'status'=>$sub_status[$k],
                    'sort'=>$sort[$k],
                    'uid'=>$uid,
                    'updated_at'=>date('Y-m-d'),
                    'username'=>$username,
                ];
                if($v == 0){
                    DB::table('architectural_sub_system')->insert($datalist);
                }else{
                    DB::table('architectural_sub_system')->where('id',$v)->update($datalist);
                }
            }
        }
        DB::commit();
        return redirect('/architectural/index?status=1&notice='.'创建建筑系统成功');
    }

    //查看详情建筑工程
    public function architectDetail(Request $request,$id){
        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav; //导航页面
        $data['navid']      =35; //当前导航页面
        $data['pageauth']   =$this->user()->pageauth; //按钮权限
        $data['subnavid']   =3501;//当前子导航页
        $data['manageauth'] =(array)$this->user()->manageauth; //能够查询详情权限
        $data['uid']        =$this->user()->id;
        //var_dump($data['manageauth']);exit;
        //获取该用户的建筑系统信息
        $data['architect']=DB::table('architectural_system')->where('id',$id)->first();
        //获取该用户的建筑系统关联子系统
        $data['sub_architect']=DB::table('architectural_sub_system')->where('architectural_id',$id)->get();
        if(empty($data['architect'])){
            return redirect('/architectural/index?status=2&notice='.'数据不存在，无法查看');
        }
        if($data['uid'] != $data['architect']->uid && !in_array(6,$data['manageauth'])){
            return redirect('/architectural/index?status=2&notice='.'仅有创建用户和管理员才能查看');
        }
        return view('architectural.architectDetail',$data);

    }





}
