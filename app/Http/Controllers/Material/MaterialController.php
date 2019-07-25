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

        $brand_name =$request->input('brand_name','');
        $manufactor =$request->input('manufactor','');
        $supplier =$request->input('supplier','');
        $address =$request->input('address','');

        $page =$request->input('page',1);
        $rows =$request->input('rows',20);
        $datalist =$this->getMaterialList($brand_name,$manufactor,$supplier,$address,$page,$rows);
        //分页
        $url='/supplier/supplierList?brand_name='.$brand_name.'&manufactor='.$manufactor.'&supplier='.$supplier.'&address='.$address.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];;
        $data['brand_name'] =$brand_name;
        $data['manufactor'] =$manufactor;
        $data['supplier'] =$supplier;
        $data['address'] =$address;
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

    //查询供应商信息
    private function  getMaterialList($brand_name='',$manufactor='',$supplier='',$address='',$page,$rows){

        $db=DB::table('material')
            ->join('architectural_system','architectural_system.id','=','material.architectural_id')
            ->join('architectural_sub_system','architectural_sub_system.id','=','material.architectural_sub_id')
            ->where('architectural_system.status',1)
            ->where('architectural_sub_system.status',1)
            ->where('material.status',1);

        if(!empty($brand_name)){
            $db->where('brand_name','like','%'.$brand_name.'%');
        }
        if(!empty($manufactor)){
            $db->where('manufactor','like','%'.$manufactor.'%');
        }
        if(!empty($supplier)){
            $db->where('supplier','like','%'.$supplier.'%');
        }
        if(!empty($address)){
            $db->where('address','like','%'.$address.'%');
        }


        $data['count'] =$db->count();
        $data['data']= $db->orderby('architectural_system.system_code')
            ->orderby('sub_system_code')
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();

        return $data;
    }

}
