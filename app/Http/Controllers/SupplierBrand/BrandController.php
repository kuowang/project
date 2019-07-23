<?php

namespace App\Http\Controllers\SupplierBrand;

use App\Models\UserManageAuthority;
use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;

class BrandController extends WebController
{
    /**
     * 品牌的操作表
     *
     * @return void
     */
    public function __construct()
    {
        //该方法验证说明必须登录用户才能操作
        $this->middleware('auth');
    }

    //品牌列表
    public function brandList(Request $request){

        $search =$request->input('search','');
        $page =$request->input('page',1);
        $rows =$request->input('rows',20);
        $datalist =$this->getBrandList($search,$page,$rows);
        //分页
        $url='/supplier/brandList?search='.$search.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['search'] =$search;

        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =45;
        $data['subnavid']   =4501;
        $data['pageauth']   =$this->user()->pageauth;

        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('SupplierBrand.brand.index',$data);
    }
    //查询公告信息
    private function  getBrandList($search,$page,$rows){

        $db=DB::table('brand');
        if(!empty($search)){
            $db->where('brand_name','like','%'.$search.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db->orderby('id','desc')
            ->skip(($page-1)*$rows)
            ->take($rows)->get();
        return $data;

    }



}
