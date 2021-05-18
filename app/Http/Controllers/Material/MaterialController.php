<?php

namespace App\Http\Controllers\Material;


use App\Models\UserManageAuthority;
use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

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

    //部件列表 材料列表
    public function materialList(Request $request)
    {
        $this->user();
        $system_name =$request->input('system_name','');
        $sub_system_name =$request->input('sub_system_name','');
        $material_name =$request->input('material_name','');

        $page =$request->input('page',1);
        $rows =$request->input('rows',100);
        $datalist =$this->getMaterialList($system_name,$sub_system_name,$material_name,$page,$rows);
        //分页
        $url='/material/materialList?system_name='.$system_name.'&sub_system_name='.$sub_system_name.'&material_name='.$material_name.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];;
        $data['system_name'] =$system_name;
        $data['sub_system_name'] =$sub_system_name;
        $data['material_name'] =$material_name;

        //用户权限部分

        $data['navid']      =40;
        $data['subnavid']   =4001;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('material.index',$data);
    }

    //查询材料信息
    private function  getMaterialList($system_name='',$sub_system_name='',$material_name='',$page,$rows)
    {

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
            ->orderby('material.material_sort')
            ->select(['material.id','architectural_sub_system.work_code','architectural_system.system_code','system_name','engineering_name',
                'sub_system_name','sub_system_code','material_name',
                'material_code','material_type','position',
                'purpose','material_number','characteristic',
                'waste_rate','material_created_uid',
                'material_created_at','material_edit_uid','material_updated_at',
                'material_budget_unit','material_purchase_unit','pack_specification','pack_claim'])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        return $data;
    }

    /**
     * @param Request $request
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|\Illuminate\View\View
     * @throws \Exception
     */
    public function editMaterial(Request $request, $id)
    {
        // 在 Session 中存储一条数据...
        session(['redirect_url' => url()->previous()]);

        //用户权限部分
        $this->user();
        $data['navid']      =40;
        $data['subnavid']   =4001;
        $data['id']=$id;
        //材料信息
        $material=DB::table('material')->where('material.status',1)
            ->where('material.id',$id)
            ->first();
        if(empty($material)){
            return redirect('/material/materialList?status=2&notice='.'当前材料不存');
        }
        if((!empty($material->material_created_uid ) && $material->material_created_uid != $this->user()->id)  && !in_array(4003,$this->user()->manageauth)){
            return redirect('/material/materialList?status=2&notice='.'仅有创建用户和管理员才能查看');
        }
        $data['material']=$material;
        //建筑系统信息
        $data['architectual_system'] =DB::table('architectural_system')
            ->where('status',1)
            ->where('id',$material->architectural_id)
            ->first();
        //建筑子系统信息
        $data['architectural_sub_system'] =DB::table('architectural_sub_system')
            ->where('status',1)
            ->where('id',$material->architectural_sub_id)
            ->first();
        //材料品牌信息
        $data['material_brand']=DB::table('material_brand_supplier')
            ->where('material_id',$id)
            ->get();
        //品牌列表
        $data['brand'] =DB::table('brand')
            ->where('status',1)
            ->orderby('id','desc')
            ->select(['id','brand_name','brand_logo'])
            ->get();
        //供应商品牌列表
        $supplier_brand=DB::table('supplier_brand')->where('status',1)
            ->select(['brand_id','supplier_id'])
            ->get();
        $data['supplier_brand_list']=[];
        $data['supplier_brand_json']='{}';
        if(!empty($supplier_brand)){
            foreach ($supplier_brand as $item){
                $supplier_brand_list[$item->brand_id][]=$item->supplier_id;
            }
            if(isset($supplier_brand_list)){
                $data['supplier_brand_list']=$supplier_brand_list;
                $data['supplier_brand_json']=json_encode($supplier_brand_list);
            }
        }
        //供应商信息
        $supplier =DB::table('supplier')->where('status',1)
            ->select(['id','supplier','manufactor'])
            ->get();

        $data['supplier']=[];
        $data['supplier_list_json']='{}';

        if(!empty($supplier)){
            foreach($supplier as $item){
                $data['supplier'][$item->id]=$item;
                $supplier_list[$item->id] =$item->supplier;
            }
            if(isset($supplier_list)){
                $data['supplier_list_json']=json_encode($supplier_list);
            }
        }
        $data['material_file']=[];
        return view('material.editMaterialBrand',$data);
    }

    //材料品牌数据提交操作
    public function postEditMaterial(Request $request, $id)
    {
        $data['material_budget_unit'] =$request->input('material_budget_unit');
        $data['material_purchase_unit'] =$request->input('material_purchase_unit');
        $data['pack_specification'] =$request->input('pack_specification');
        $data['pack_claim']         =$request->input('pack_claim');
        $data['conversion']         =(float)$request->input('conversion');
        $data['material_length']    =(int)$request->input('material_length');
        $data['material_width']     =(int)$request->input('material_width');
        $data['material_height']    =(int)$request->input('material_height');
        $data['material_thickness'] =(int)$request->input('material_thickness');
        $data['material_diameter']  =(int)$request->input('material_diameter');
        $msb_id             =$request->input('msb_id',[]);
        $brand_id           =$request->input('brand_id',[]);
        $manufactor         =$request->input('manufactor',[]);
        $supplier           =$request->input('supplier',[]);
        $budget_unit_price  =$request->input('budget_unit_price',[]);
        $budget_unit        =$request->input('budget_unit',[]);
        $purchase_unit      =$request->input('purchase_unit',[]);
        $purchase_unit_price=$request->input('purchase_unit_price',[]);
        $offer_unit      =$request->input('offer_unit',[]);
        $offer_unit_price      =$request->input('offer_unit_price',[]);

        if(empty($data['pack_specification']) || empty($data['pack_claim']) || empty($data['conversion']) || empty($data['material_length']) ){
            //return redirect('/material/materialList?status=2&notice='.'编辑失败，材料信息不能为空');
            echo"<script>alert('编辑失败，材料信息不能为空');history.go(-1);</script>";
        }

        if(count($brand_id) != count($manufactor) || count($budget_unit_price) !=count($supplier) ||
            count($budget_unit) !=count($purchase_unit) || count($purchase_unit_price) !=count($purchase_unit)  ){
            //return redirect('/material/materialList?status=2&notice='.'编辑失败，品牌供应商信息不能为空');
            echo"<script>alert('编辑失败，品牌供应商信息不能为空');history.go(-1);</script>";
        }

        //保存材料信息
        DB::beginTransaction();
        $material =DB::table('material')->where('id',$id)->first();

        //更改编码相同的材料记录
        $data['material_edit_uid']=$this->user()->id;
        $data['material_updated_at']=date('Y-m-d');
        DB::table('material')->where('material_code',$material->material_code)
            ->whereNotNull('material_created_uid')->update($data);
        unset($data['material_edit_uid']);unset($data['material_updated_at']);
        //补充编码相同的材料记录
        $data['material_created_uid']=$this->user()->id;
        $data['material_created_at']=date('Y-m-d');
        DB::table('material')->where('material_code',$material->material_code)
            ->whereNull('material_created_uid')->update($data);
        $mateCodeList =DB::table('material')->where('material_code',$material->material_code)
                ->pluck('id');

        //保存品牌供应商信息
        if(count($msb_id) >0){
            foreach($msb_id as $k=>$v){
                $datalist['brand_id']=$brand_id[$k];
                $datalist['brand_name']=DB::table('brand')->where('id',$brand_id[$k])->value('brand_name');
                $datalist['supplier_id']=$manufactor[$k];
                $datalist['manufactor']=DB::table('supplier')->where('id',$manufactor[$k])->value('manufactor');;
                $datalist['supplier']=$supplier[$k];
                $datalist['budget_unit_price']=(float)$budget_unit_price[$k];
                $datalist['budget_unit']=$budget_unit[$k];
                $datalist['purchase_unit_price']=(float)$purchase_unit_price[$k];
                $datalist['purchase_unit']=$purchase_unit[$k];
                $datalist['offer_unit']=$offer_unit[$k];
                $datalist['offer_unit_price']= (float)$offer_unit_price[$k];
                $datalist['uid']=$this->user()->id;
                $datalist['username']=$this->user()->name;
                $datalist['created_at']=date('Y-m-d');

                $brandId=$brand_id[$k];
                $supplierId=$manufactor[$k];

                if(empty($v)){ //新增的关联信息
                    foreach($mateCodeList as $item){
                        $datalist['material_id']=$item;
                        //查看其它材料是否已经存在关联信息
                        $mbsid = DB::table('material_brand_supplier')
                            ->where('material_id',$item)->where('brand_id',$brandId)->where('supplier_id',$supplierId)
                            ->value('id');
                        if(empty($mbsid)){
                            DB::table('material_brand_supplier')->insert($datalist);
                        }else{
                            DB::table('material_brand_supplier')->where('id',$mbsid)->update($datalist);
                        }
                    }
                }else{
                    $msbDetail =DB::table('material_brand_supplier')->where('id',$v)->first();
                    foreach($mateCodeList as $item) {
                        $datalist['material_id']=$item;
                        //查询其他材料是否有关联信息
                        $mbsid = DB::table('material_brand_supplier')
                            ->where('material_id',$item)->where('brand_id',$msbDetail->brand_id)->where('supplier_id',$msbDetail->supplier_id)
                            ->value('id');
                        if(empty($mbsid)){
                            DB::table('material_brand_supplier')->insert($datalist);
                        }else{
                            DB::table('material_brand_supplier')
                                ->where('material_id', $item)
                                ->where('brand_id', $msbDetail->brand_id)
                                ->where('supplier_id', $msbDetail->supplier_id)
                                ->update($datalist);
                        }
                    }
                }
            }
        }
        DB::commit();
        //echo"<script>history.go(-2);</script>";

        //session(['redirect_url' => url()->previous()]);
        // 指定一个默认值...
        $url = session('redirect_url', '/material/materialList?');
        if(str_is('*请到详情中查看*', $url)){
            return redirect($url);
        }elseif(str_is('*?*', $url)){
            $url .='&status=1&notice=编辑成功。请到详情中查看！';
        }else{
            $url .='?status=1&notice=编辑成功。请到详情中查看！';
        }
        return redirect($url);

        //return redirect('/material/materialList?status=1&notice='.'编辑成功。请到详情中查看！');
        //return $this->success($request->all());
    }

    /**
     * 部品部件详情
     * @param Request $request
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|\Illuminate\View\View
     * @throws \Exception
     */
    public function materialDetail(Request $request, $id)
    {
        $this->user();
        //用户权限部分
        $data['navid']      =40;
        $data['subnavid']   =4001;
        $data['id']=$id;
        //材料信息
        $material=DB::table('material')->where('material.status',1)
            ->where('material.id',$id)
            ->first();
        if(empty($material)){
            return redirect('/material/materialList?status=2&notice='.'当前材料不存');
        }
        if((!empty($material->material_created_uid ) && $material->material_created_uid != $this->user()->id)  && !in_array(4002,$this->user()->manageauth)){
            return redirect('/material/materialList?status=2&notice='.'仅有创建用户和管理员才能查看');
        }
        $data['material']=$material;
        //建筑系统信息
        $data['architectual_system'] =DB::table('architectural_system')
            ->where('status',1)
            ->where('id',$material->architectural_id)
            ->first();
        //建筑子系统信息
        $data['architectural_sub_system'] =DB::table('architectural_sub_system')
            ->where('status',1)
            ->where('id',$material->architectural_sub_id)
            ->first();
        //材料品牌信息
        $data['material_brand']=DB::table('material_brand_supplier')
            ->where('material_id',$id)
            ->get();
        //品牌列表
        $data['brand'] =DB::table('brand')
            ->where('status',1)
            ->orderby('id','desc')
            ->select(['id','brand_name','brand_logo'])
            ->get();
        //供应商品牌列表
        $supplier_brand=DB::table('supplier_brand')->where('status',1)
            ->select(['brand_id','supplier_id'])
            ->get();
        $data['supplier_brand_list']=[];
        $data['supplier_brand_json'] =null;
        if(!empty($supplier_brand)){
            foreach ($supplier_brand as $item){
                $supplier_brand_list[$item->brand_id][]=$item->supplier_id;
            }
            if(isset($supplier_brand_list)){
                $data['supplier_brand_list']=$supplier_brand_list;
                $data['supplier_brand_json']=json_encode($supplier_brand_list);
            }
        }

        //供应商信息
        $supplier =DB::table('supplier')->where('status',1)
            ->select(['id','supplier','manufactor'])
            ->get();

        $data['supplier']=[];
        $data['supplier_list_json']=null;

        if(!empty($supplier)){
            foreach($supplier as $item){
                $data['supplier'][$item->id]=$item;
                $supplier_list[$item->id] =$item->supplier;
            }
            if(isset($supplier_list)){
                 $data['supplier_list_json']=json_encode($supplier_list);
            }
        }
        return view('material.materialDetail',$data);
    }


    //上传材料文件
    public function uploadMaterialFile(Request $request,$id)
    {
        $file = $request->file('file');
        // 此时 $this->upload如果成功就返回文件名不成功返回false
        // 1.是否上传成功
        if (!$file->isValid()) {
            return $this->error('上传异常');
        }
        // 2.是否符合文件类型 getClientOriginalExtension 获得文件后缀名
        $fileExtension = $file->getClientOriginalExtension();
        if (!in_array($fileExtension, ['png', 'jpg', 'gif', 'jpeg'])) {
            return $this->error('文件格式必须是png, jpg, gif, jpeg');
        }
        // 3.判断大小是否符合 2M
        $tmpFile = $file->getRealPath();
        if (filesize($tmpFile) >= 20480000) {
            return $this->error('文件不能超过20M');
        }
        // 4.是否是通过http请求表单提交的文件
        if (!is_uploaded_file($tmpFile)) {
            return $this->error('请求表单异常');
        }

        $path = Storage::putFile('material_file/' . $id, $request->file('file'));
        $data['msg'] = '上传文件成功';
        $data['file_name'] = $file->getClientOriginalName();
        $data['url'] = $path;
        return $this->success($data);
    }

}
