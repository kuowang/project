<?php

namespace App\Http\Controllers\Customer;

use App\Models\UserManageAuthority;
use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;

class CustomerController extends WebController
{
    /**
     * 客户的操作表
     *
     * @return void
     */
    public function __construct()
    {
        //该方法验证说明必须登录用户才能操作
        $this->middleware('auth');
    }

    //客户列表
    public function customerList(Request $request){
        $this->user();
        $customer =$request->input('customer','');
        $type =$request->input('type','');
        $address =$request->input('address','');

        $page =$request->input('page',1);
        $rows =$request->input('rows',40);
        $datalist =$this->getCustomerList($customer,$type,$address,$page,$rows);
        //分页
        $url='/customer/customerList?customer='.$customer.'&type='.$type.'&address='.$address.'&rows='.$rows;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['customer'] =$customer;
        $data['type'] =$type;
        $data['address'] =$address;
        $data['supplier'] =DB::table('supplier')->where('status',1)->get();
        //用户权限部分
        $data['navid']      =55;
        $data['subnavid']   =5501;
        return view('Customer.index',$data);
    }
    //查询公告信息
    private function  getCustomerList($customer,$type,$address,$page,$rows){

        $db=DB::table('customer')->where('status',1);
        if(!empty($customer)){
            $db->where('customer','like','%'.$customer.'%');
        }
        if(!empty($type)){
            $db->where('type','like','%'.$type.'%');
        }
        if(!empty($address)){
            $db->where('address','like','%'.$address.'%');
        }

        $data['count'] =$db->count();
        $data['data']= $db->orderby('id','desc')
            ->skip(($page-1)*$rows)
            ->take($rows)->get();
        return $data;

    }


    //提交新增客户
    public function postAddCustomer(Request $request){

        $customer   =$request->input('customer');
        $type       =$request->input('type');
        $address    =$request->input('address');
        $contacts   =$request->input('contacts');
        $telephone  =$request->input('telephone');
        $phone      =$request->input('phone');
        $email      =$request->input('email');

        if(empty($type) || empty($customer) ){
            return $this->error('内容不能为空');
        }
        $data=[
            'customer'  =>$customer,
            'type'      =>$type,
            'address'   =>$address,
            'contacts'  =>$contacts,
            'telephone' =>$telephone,
            'phone'     =>$phone,
            'email'     =>$email,
            'uid'=>$this->user()->id,
            'status'=>1,
            'username'  =>$this->user()->name,
            'created_at'=>date('Y-m-d'),
        ];
        DB::table('customer')->insert($data);
        return $this->success('提交成功');
    }
    //提交编辑公告
    public function postEditCustomer(Request $request,$id){
        $customer=$request->input('customer');
        $type=$request->input('type');
        $address=$request->input('address');
        $contacts=$request->input('contacts');
        $telephone=$request->input('telephone');
        $phone=$request->input('phone');
        $email=$request->input('email');

        if(empty($type) || empty($customer) ){
            return $this->error('内容不能为空');
        }
        $data=[
            'customer'=>$customer,
            'type'=>$type,
            'address'=>$address,
            'contacts'=>$contacts,
            'telephone'=>$telephone,
            'phone'=>$phone,
            'email'=>$email,
            'status'=>1,
            'edit_uid'=>$this->user()->id,
            'updated_at'=>date('Y-m-d'),
        ];
        DB::table('customer')->where('id',$id)->update($data);
        return $this->success('修改成功');
    }
    //删除客户信息
    public function postDeleteCustomer(Request $request,$id){

        $data=[
            'status'=>0,
            'edit_uid'=>$this->user()->id,
            'updated_at'=>date('Y-m-d'),
        ];
        DB::table('customer')->where('id',$id)->update($data);
        return $this->success('删除成功');
    }



}
