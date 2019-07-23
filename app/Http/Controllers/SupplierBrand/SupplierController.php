<?php

namespace App\Http\Controllers\SupplierBrand;


use App\Models\UserManageAuthority;
use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;
use App\Models\SystemSetting;

class SupplierController extends WebController
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
    public function supplierList(Request $request){

        $search =$request->input('search','');
        $page =$request->input('page',1);
        $rows =$request->input('rows',20);
        $datalist =$this->getSupplierList($search,$page,$rows);
        //分页
        $url='/supplier/supplierList?search='.$search.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['search'] =$search;

        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =45;
        $data['subnavid']   =4502;
        $data['pageauth']   =$this->user()->pageauth;
        $data['noticelist']     =$this->user()->notice;
        return view('SupplierBrand.supplier.index',$data);
    }

    //查询供应商信息
    private function  getSupplierList($search,$page,$rows){

        $db=DB::table('supplier_brand')->join('supplier','supplier_brand.supplier_id','=','supplier.id')
        ->join('brand','brand.id','=','supplier_brand.brand_id');
        if(!empty($search)){
            $db->where('supplier','like','%'.$search.'%')
            ->orwhere('manufactor','like','%'.$search.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db->orderby('brand.id','desc')
            ->skip(($page-1)*$rows)
            ->take($rows)->get();
        return $data;

    }

}
