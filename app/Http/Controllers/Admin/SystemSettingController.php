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
        $data =$this->getSystemSetting($search,$page,$rows);
        return view('admin.systemsetting',['data'=>$data]);
    }

    protected function getSystemSetting($search='',$page=1,$rows=20)
    {
        if(empty($search)){
            return DB::table('system_setting')->skip(($page-1)*$rows)->take($rows)->get();
        }else{
            return DB::table('system_setting')->where('name','like','%'.$search.'%')

                ->skip(($page-1)*$rows)->take($rows)->get();
        }
    }
    //添加新的参数页码
    public function addSystemSetting(Request $request){
        return view('admin.addsystemsetting');
    }

    //编辑系统参数页码
    public function editSystemSetting(Request $request,$id){
        $id =(int)$id;
        $data=DB::table('system_setting')->where('id',$id)->first();

        return view('admin.editsystemsetting',['data'=>$data]);
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
