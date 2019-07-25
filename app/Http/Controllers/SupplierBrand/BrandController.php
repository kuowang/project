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
        $data['uid'] =$this->user()->id;

        $data['supplier'] =DB::table('supplier')->where('status',1)->get();

        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =45;
        $data['subnavid']   =4501;
        $data['pageauth']   =$this->user()->pageauth;
        $data['manageauth']   =$this->user()->manageauth;
        $data['noticelist']     =$this->user()->notice;

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


    //提交新增公告
    public function postAddBrand(Request $request){

        $brand_name=$request->input('brand_name');
        $status =(int)$request->input('status',1);
        $supplier =$request->input('supplier',[]);
        if(empty($brand_name) ){
            return $this->error('内容不能为空');
        }
        $data=[
            'brand_name'=>$brand_name,
            'status'=>$status,
            'create_uid'=>$this->user()->id,
            'createor'=>$this->user()->name,
            'created_at'=>date('Y-m-d'),
        ];
        $id =DB::table('brand')->insertGetId($data);
        if(!empty($supplier)){
            $datalist=[];
            foreach($supplier as $value){
                $datalist[]=[
                    'brand_id'=>$id,
                    'supplier_id'=>$value,
                    'status'=>1,
                    'create_uid'=>$this->user()->id,
                    'createor'=>$this->user()->name,
                    'created_at'=>date('Y-m-d'),
                ];
            }
            DB::table('supplier_brand')->insert($datalist);
        }
        return $this->success('提交成功');
    }
    //提交编辑公告
    public function postEditBrand(Request $request,$id){
        $brand_name =$request->input('brand_name');
        $status =(int)$request->input('status',1);
        $supplier =$request->input('supplier',[]);
        if(empty($brand_name) ){
            return json_encode($request->all());
        }
        $data=[
            'brand_name'=>$brand_name,
            'status'=>$status,
            'edit_uid'=>$this->user()->id,
            'editor'=>$this->user()->name,
            'updated_at'=>date('Y-m-d'),
        ];
        DB::table('brand')->where('id',$id)->update($data);

        if(!empty($supplier)){
            DB::table('supplier_brand')->where('brand_id',$id)->delete();
                //->update(['status'=>0,'editor'=>$this->user()->name,'edit_uid'=>$this->user()->id,'updated_at'=>date('Y-m-d')]);
            $datalist=[];
            foreach($supplier as $value){
                $datalist[]=[
                    'brand_id'=>$id,
                    'supplier_id'=>$value,
                    'status'=>1,
                    'create_uid'=>$this->user()->id,
                    'createor'=>$this->user()->name,
                    'created_at'=>date('Y-m-d'),
                ];
            }
            DB::table('supplier_brand')->insert($datalist);

        }
        return $this->success('修改成功');
    }
    //品牌对应的供应商列表
    public function brandSupplierList(Request $request,$id){
        $data =DB::table('supplier_brand')->where('brand_id',$id)->where('status',1)->pluck('supplier_id');
        return $this->success($data);
    }

}
