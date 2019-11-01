<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;
use App\Models\SystemSetting;

class SystemSettingController extends WebController
{
    public $params=[];
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //该方法验证说明必须登录用户才能操作
        //$this->middleware('auth');
        $this->params=[
            'project_type'=>'项目:项目种类(用途)',
            'project_source'=>'项目:项目来源',
            'project_stage'=>'项目:项目所属阶段',
            'project_environment'=>'项目:场地自然条件',
            'project_traffic'=>'项目:交通条件',
            'project_material_storage'=>'项目:材料储放条件',
            'customer_type'=>'项目:客户类型',
            'engin_use_time'=>'工程:建筑使用寿命（年）',
            'engin_seismic_grade'=>'工程:抗震设防烈度(度)',
            'engin_waterproof_grade'=>'工程:屋面防水等级',
            'engin_refractory_grade'=>'工程:建筑耐火等级',
            'engin_insulation_sound_grade'=>'工程:建筑隔声等级',
            'engin_energy_grade'=>'工程:建筑节能等级',
            'progress_construction_accommodation'=>'施工:现场人员住宿条件',
            'progress_construction_scaffolding'=>'施工:场地操作平台搭建条件',
            'progress_construction_crane'=>'施工:场地大型施工机械使用条件',
        ];
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
        $rows =$request->input('rows',40);
        $datalist =$this->getSystemSetting($search,$page,$rows);
        //分页
        $url='/admin/system_list?search='.$search.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['search'] =$search;

        //用户权限部分
        $this->user();
        $data['navid']      =10;
        $data['subnavid']   =1003;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        $data['params'] =$this->params;
        return view('admin.system.index',$data);
    }

    protected function getSystemSetting($search='',$page=1,$rows=40)
    {
        $db=DB::table('system_setting');
        if(!empty($search)){
            $db->where('field',$search);
        }
        $data['count'] =$db->count();
        $db->orderby('field')->orderby('sort');
        $data['data']= $db->skip(($page-1)*$rows)->take($rows)->get();
        return $data;
    }

    //添加新的参数页面
    public function addSystemSetting(Request $request){
        $data['params'] =$this->params;
        return view('admin.system.addsystemsetting',$data);
    }

    //编辑系统参数页面
    public function editSystemSetting(Request $request,$id){
        $id =(int)$id;
        $data['data']=DB::table('system_setting')->where('id',$id)->first();
        $data['params'] = $this->params;
        return view('admin.system.editsystemsetting',$data);
    }
    //提交系统参数修改
    public function postSystemSetting(Request $request){
        $systemParams= $this->params;
        $id= (int)$request->input('id',0);
        $data['field']      =$request->input('field',0);
        $data['remark']     =isset($systemParams[$data['field']])?$systemParams[$data['field']]:'';
        $data['name']       =$request->input('name',0);
        $data['sort']       =(int)$request->input('sort',0);

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
