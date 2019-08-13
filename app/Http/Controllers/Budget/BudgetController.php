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
    protected function getBudgetList($status,$project_name='',$address='',$budget_username='',$page=1,$rows=20)
    {
        //DB::connection()->enableQueryLog();
        $db=DB::table('engineering')
            ->join('project','project.id','=','project_id')
            ->leftjoin('budget','engineering.id','=','budget.engin_id')
            ->where('engineering.status',$status);

        if(!empty($project_name)){
            $db->where('project_name','like','%'.$project_name.'%');
        }
        if(!empty($address)){
            $db->Where(function ($query)use($address) {
                $query->where('province', 'like','%'.$address.'%')
                    ->orwhere('city', 'like','%'.$address.'%')
                    ->orwhere('county', 'like','%'.$address.'%')
                    ->orwhere('address_detail', 'like','%'.$address.'%')
                    ->orwhere('foreign_address', 'like','%'.$address.'%')
                ;
            });
        }
        if(!empty($budget_username)){
            $db->where('budget_username','like','%'.$budget_username.'%');
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
        //$queries = DB::getQueryLog();
        //var_dump($queries);
        //exit;
        return $data;
    }

    //工程信息列表
    private function budget($request,$status=0)
    {
        $project_name       =$request->input('project_name','');
        $address            =$request->input('address','');
        $budget_username    =$request->input('budget_username','');
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['address']        =$address;
        $data['budget_username']=$budget_username;

        $datalist=$this->getBudgetList($status,$project_name,$address,$budget_username,$page,$rows);
        if($status == 0){
            $url='/budget/budgetStart?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }elseif($status == 1){
            $url='/budget/budgetConduct?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }elseif($status == 2){
            $url='/budget/budgetCompleted?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }elseif($status == 4){
            $url='/budget/budgetTermination?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }else{
            $url='/budget/budgetStart?project_name='.$project_name.'&address='.$address.'&budget_username='.$budget_username;
        }
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['navid']      =20;
        return $data;
    }

    /**
     * @param Request $request
     * @param $id 工程id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editBudget(Request $request,$id){
        $this->user();
        $data['navid']      =20;
        $data['subnavid']   =2001;
        //项目子工程
        $engineering =DB::table('engineering')->where('id',$id)->first();
        if(empty($engineering)){
            return redirect('/architectural/enginStart?status=2&notice='.'该工程不存在');
        }
        //项目信息
        $project =DB::table('project')->where('id',$engineering->project_id)->first();
        if( (in_array(20010101,$this->user()->pageauth) && $project->budget_uid == $this->user()->id ) || in_array(200102,$this->user()->manageauth)){
        }else{
            //设计人员可以操作更改工程设计详情
            return redirect('/architectural/enginStart?status=2&notice='.'您没有权限编辑该工程信息');
        }
        //建筑系统信息 以及项目对应的子系统信息

        $data['engin_system']=DB::table('enginnering_architectural')
            ->where('engin_id',$id)
            ->get();
        $data['engineering']=$engineering;
        $data['project']    =$project;
        $data['engin_id'] =$id;

        return view('budget.editBudget',$data);
    }


}
