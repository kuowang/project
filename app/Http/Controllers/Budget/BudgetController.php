<?php

namespace App\Http\Controllers\Budget;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;


class BudgetController extends WebController
{
    /**
     * 建筑设计人员选择对应项目的建筑设计系统信息
     *
     * @return void
     */
    public function __construct(Request $request)
    {
        //该方法验证说明必须登录用户才能操作
        $this->middleware('auth');
    }

    /**
     *洽谈项目列表
     * @return \Illuminate\Http\Response
     */
    public function budgetStart(Request $request)
    {
        $this->user();
        $data=$this->budget($request,0);
        $data['subnavid']   =2001;
        if( !(in_array(200101,$this->user()->pageauth)) && !in_array(200101,$this->user()->manageauth)){
            return redirect('/home');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('budget.budgetStart',$data);
    }
    /**
     *实施项目列表
     * @return \Illuminate\Http\Response
     */
    public function budgetConduct(Request $request)
    {
        $this->user();
        $data=$this->budget($request,1);
        $data['subnavid']   =2002;
        if( !(in_array(200102,$this->user()->pageauth)) && !in_array(200104,$this->user()->manageauth)){
            return redirect('/budget/budgetStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('budget.budgetConduct',$data);
    }
    /**
     *竣工项目列表
     * @return \Illuminate\Http\Response
     */
    public function budgetCompleted(Request $request)
    {
        $this->user();
        $data=$this->budget($request,2);
        $data['subnavid']   =2003;
        if( !(in_array(200103,$this->user()->pageauth)) && !in_array(200107,$this->user()->manageauth)){
            return redirect('/budget/budgetStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('budget.budgetCompleted',$data);
    }
    /**
     *终止项目列表
     * @return \Illuminate\Http\Response
     */
    public function budgetTermination(Request $request)
    {
        $this->user();
        $data=$this->budget($request,4);
        $data['subnavid']   =2004;
        if( !(in_array(200104,$this->user()->pageauth)) && !in_array(200108,$this->user()->manageauth)){
            return redirect('/budget/budgetStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('budget.budgetTermination',$data);
    }

    //查询项目信息
    protected function getBudgetList($status,$project_name='',$address='',$customer_leader='',$page=1,$rows=20)
    {
        $db=DB::table('engineering')
            ->join('project','project.id','=','project_id')
            ->leftjoin('budget','engineering.id','=','budget.engin_id')
            ->where('engineering.status',$status);

        if(!empty($project_name)){
            $db->where('project_name','like','%'.$project_name.'%');
        }
        if(!empty($address)){
            $db->where('address','like','%'.$address.'%');
        }
        if(!empty($customer_leader)){
            $db->where('customer_leader','like','%'.$customer_leader.'%');
        }

        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->orderby('engineering.id','asc')
            ->select(['project.project_name','engineering.project_id','engineering.id as engin_id',
                'engineering.engineering_name','build_area','budget.total_budget_price','budget.budget_order_number',
                'project.budget_uid','project.budget_username','budget.budget_status'])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        return $data;
    }

    //工程信息列表
    private function budget($request,$status=0)
    {
        $project_name       =$request->input('project_name','');
        $address            =$request->input('address','');
        $customer_leader    =$request->input('customer_leader','');
        $success_level      =$request->input('success_level',0);
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['address']        =$address;
        $data['customer_leader']=$customer_leader;

        $datalist=$this->getBudgetList($status,$project_name,$address,$customer_leader,$page,$rows);
        if($status == 0){
            $url='/budget/budgetStart?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }elseif($status == 1){
            $url='/budget/budgetConduct?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }elseif($status == 2){
            $url='/budget/budgetCompleted?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }elseif($status == 4){
            $url='/budget/budgetTermination?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }else{
            $url='/budget/budgetStart?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }$data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['navid']      =20;
        return $data;
    }

}
