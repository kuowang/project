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
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('SupplierBrand.supplier.index',$data);
    }

    //查询供应商信息
    private function  getSupplierList($search,$page,$rows){

        $db=DB::table('supplier_brand')
            ->join('supplier','supplier_brand.supplier_id','=','supplier.id')
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

    //添加供应商
    public function addSupplier(Request $request){
        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =45;
        $data['subnavid']   =4502;
        $data['pageauth']   =$this->user()->pageauth;
        $data['noticelist']     =$this->user()->notice;
        $data['brand']  =DB::table('brand')->where('status',1)->get();
        return view('SupplierBrand.supplier.addSupplierInfo',$data);
    }
    //编辑供应商
    public function editSupplier(Request $request,$id){
        //用户权限部分
        //用户权限部分
        $data['username']   =$this->user()->name;
        $data['nav']        =$this->user()->nav;
        $data['navid']      =45;
        $data['subnavid']   =4502;
        $data['pageauth']   =$this->user()->pageauth;
        $data['noticelist']     =$this->user()->notice;
        //获取用户信息
        return view('SupplierBrand.supplier.editSupplierInfo',$data);
    }

    public function postAddSupplier(Request $request){
        var_dump($request->all());
        $manufactor     =$request->input('manufactor');
        $supplier       =$request->input('supplier');
        $address        =$request->input('address');
        $contacts       =$request->input('contacts');
        $telephone      =$request->input('telephone');
        $email          =$request->input('email');
        $status         =(int)$request->input('status',1);
        $brand          =$request->input('brand',[]);

        if(empty($manufactor) || empty($supplier) || empty($address) || empty($contacts) || empty($telephone) || empty($email) ){
            return redirect('/supplier/supplierList?status=2&notice='.'内容不能为空，请重新填写');
        }

        $data=[
              'manufactor'=>$manufactor,
              'supplier'=>$supplier,
              'address'=>$address,
              'contacts'=>$contacts,
              'telephone'=>$telephone,
              'email'=>$email,
              'status'=>$status,
              'creator'=>$this->user()->id,
              'creat_user_name'=>$this->user()->name,
              'created_at'=>date('Y-m-d'),
        ];
        DB::beginTransaction();
        $id =DB::table('supplier')->insertGetId($data);
        if(empty($id)){
            DB::rollback();
            return redirect('/supplier/supplierList?status=2&notice='.'创建供应商失败，请重新填写');
        }
        if(!empty($brand) && $id){
            $datalist=[];
            foreach($brand as $value){
                $datalist[]=[
                    'brand_id'=>$value,
                    'supplier_id'=>$id,
                    'status'=>$status,
                    'create_uid'=>$this->user()->id,
                    'createor'=>$this->user()->name,
                    'created_at'=>date('Y-m-d'),
                ];
            }
            DB::table('supplier_brand')->insert($datalist);
        }
        DB::commit();
        return redirect('/supplier/supplierList?status=1&notice='.'创建供应商成功');
    }





}
