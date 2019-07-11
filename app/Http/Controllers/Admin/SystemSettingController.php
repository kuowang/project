<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;
use App\Models\SystemSetting;

class SystemSettingController extends WebController
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
        $datalist =$this->getSystemSetting($search,$page,$rows);
        //分页
        $url='/admin/system_list?search='.$search.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['search'] =$search;
        return view('admin.system.systemsetting',$data);
    }

    protected function getSystemSetting($search='',$page=1,$rows=20)
    {
        $db=DB::table('system_setting');
        if(!empty($search)){
            $db->where('name','like','%'.$search.'%')
               ->orwhere('remark','like','%'.$search.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db  ->skip(($page-1)*$rows)->take($rows)->get();
        return $data;
    }

    //添加新的参数页面
    public function addSystemSetting(Request $request){
        return view('admin.system.addsystemsetting');
    }

    //编辑系统参数页面
    public function editSystemSetting(Request $request,$id){
        $id =(int)$id;
        $data=DB::table('system_setting')->where('id',$id)->first();

        return view('admin.system.editsystemsetting',['data'=>$data]);
    }
    //提交系统参数修改
    public function postSystemSetting(Request $request){
        $id= (int)$request->input('id',0);
        $data['field']      =$request->input('field',0);
        $data['remark']     =$request->input('remark',0);
        $data['name']       =$request->input('name',0);
        $data['updated_at'] =date('Y-m-d H:i:s');

        if($id ==0){
            $data['created_at'] =date('Y-m-d H:i:s');
            DB::table('system_setting')->insert($data);
        }else{
            DB::table('system_setting')->where('id',$id)->update($data);
        }
        return 'success';
    }


}
