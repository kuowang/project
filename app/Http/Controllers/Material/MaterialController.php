<?php

namespace App\Http\Controllers\Material;


use App\Models\UserManageAuthority;
use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;

class MaterialController extends WebController
{
    /**
     * 材料 品牌供应商关联管理
     *
     * @return void
     */
    public function __construct()
    {
        //该方法验证说明必须登录用户才能操作
        $this->middleware('auth');
    }

    //供应商列表
    public function materialList(Request $request){
        $system_name =$request->input('system_name','');
        $sub_system_name =$request->input('sub_system_name','');
        $material_name =$request->input('material_name','');

        $page =$request->input('page',1);
        $rows =$request->input('rows',20);
        $datalist =$this->getMaterialList($system_name,$sub_system_name,$material_name,$page,$rows);
        //分页
        $url='/material/materialList?system_name='.$system_name.'&sub_system_name='.$sub_system_name.'&material_name='.$material_name.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];;
        $data['system_name'] =$system_name;
        $data['sub_system_name'] =$sub_system_name;
        $data['material_name'] =$material_name;
        $data['uid'] =$this->user()->id;

        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =40;
        $data['subnavid']   =4001;
        $data['pageauth']   =$this->user()->pageauth;
        $data['noticelist']     =$this->user()->notice;
        $data['manageauth']   =$this->user()->manageauth;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('material.index',$data);
    }

    //查询材料信息
    private function  getMaterialList($system_name='',$sub_system_name='',$material_name='',$page,$rows){

        $db=DB::table('material')
            ->join('architectural_system','architectural_system.id','=','material.architectural_id')
            ->join('architectural_sub_system','architectural_sub_system.id','=','material.architectural_sub_id')
            ->where('architectural_system.status',1)
            ->where('architectural_sub_system.status',1)
            ->where('material.status',1);

        if(!empty($system_name)){
            $db->where('system_name','like','%'.$system_name.'%');
        }
        if(!empty($sub_system_name)){
            $db->where('sub_system_name','like','%'.$sub_system_name.'%');
        }
        if(!empty($material_name)){
            $db->where('material_name','like','%'.$material_name.'%');
        }

        $data['count'] =$db->count();
        $data['data']= $db->orderby('architectural_system.system_code')
            ->orderby('sub_system_code')
            ->orderby('material.material_code')
            ->select(['material.id','architectural_system.system_code','system_name','engineering_name',
                'sub_system_name','sub_system_code','material_name',
                'material_code','material_type','position',
                'purpose','material_number','characteristic',
                'waste_rate','material_created_uid',
                'material_created_at','material_edit_uid','material_updated_at',
                'budget_unit','purchase_unit','pack_specification','pack_claim'])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        return $data;
    }

}
