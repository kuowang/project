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
        $brand_logo=$request->input('brand_logo','');
        if(empty($brand_name) || empty($brand_logo) ){
            return $this->error('内容不能为空');
        }
        $data=[
            'brand_name'=>$brand_name,
            'brand_logo'=>$brand_logo,
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
        $brand_logo=$request->input('brand_logo','');
        if(empty($brand_name) || empty($brand_logo)){
            return json_encode($request->all());
        }
        $data=[
            'brand_name'=>$brand_name,
            'brand_logo'=>$brand_logo,
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

    public function brandToSupplier(Request $request,$id){
        $data =DB::table('supplier_brand')
            ->join('supplier','supplier_id','=','supplier.id')
            ->where('supplier.status',1)
            ->where('brand_id',$id)
            ->where('supplier_brand.status',1)
            ->select(['supplier.id','manufactor','supplier'])
            ->get();
        return $this->success($data);
    }

    //上次图片
    public function uploadImage(Request $request){

        if(empty($_FILES)){
            return $this->error( '请选择图片');
        }elseif($_FILES["file"]["error"]) {
            return $this->error( $_FILES["file"]["error"]);
        }else {
            //没有出错
            //加限制条件
            //判断上传文件类型为png或jpg且大小不超过1024000B
            if(($_FILES["file"]["type"]=="image/png"||$_FILES["file"]["type"]=="image/jpeg")&&$_FILES["file"]["size"]< 1024000)
            {
                //防止文件名重复
                $dir="./img/brand_logo/";
                $filename =md5(time().$_FILES["file"]["name"]);
                //转码，把utf-8转成gb2312,返回转换后的字符串， 或者在失败时返回 FALSE。
                $filename =iconv("UTF-8","gb2312",$filename);
                //检查文件或目录是否存在
                if(file_exists($dir.$filename))
                {
                    return $this->error('该文件已存在');
                }else {
                    //保存文件,   move_uploaded_file 将上传的文件移动到新位置
                    move_uploaded_file($_FILES["file"]["tmp_name"],$dir.$filename);//将临时地址移动到指定地址
                    $data['msg']='上传图片成功';
                    $data['url']="/img/brand_logo/".$filename;
                    return $this->success($data);
                }
            }else{
                return $this->error('文件类型不对');
            }
        }
    }
}
