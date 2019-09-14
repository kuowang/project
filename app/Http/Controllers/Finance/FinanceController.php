<?php

namespace App\Http\Controllers\Finance;

use App\Models\Authority;
use App\Models\ManageAuthority;
use App\Models\Role;
use App\Models\RoleAuthority;
use App\Models\RoleManageAuthority;
use App\Models\UserManageAuthority;
use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;
use App\Models\SystemSetting;
use PDF;

class FinanceController  extends WebController
{
    /**
     * Create a new controller instance
     * @return void
     */
    public function __construct()
    {

    }

    public function financeStart(Request $request){
        $this->user();
        $data['navid']      =50;
        $data['subnavid']   =5001;
        if( !(in_array(5001,$this->user()->pageauth)) && !in_array(5001,$this->user()->manageauth)){
            return redirect('/home');
        }
        $project_name       =$request->input('project_name','');
        $engin_name            =$request->input('engin_name','');
        $project_leader    =$request->input('project_leader','');
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['engin_name']        =$engin_name;
        $data['project_leader']=$project_leader;
        $datalist=$this->getFinanceList(0,$project_name,$engin_name,$project_leader,$page,$rows);
        $url='/finance/financeStart?project_name='.$project_name.'&engin_name='.$engin_name.'&project_leader='.$project_leader;

        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];

        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('finance.financeStart',$data);

    }
    //查询项目信息（洽谈项目）
    protected function getFinanceList($status,$project_name='',$engin_name='',$project_leader='',$page=1,$rows=20)
    {
        //DB::connection()->enableQueryLog();
        $db=DB::table('engineering')
            ->join('project','project.id','=','project_id')
            ->leftjoin('budget','engineering.id','=','budget.engin_id')
            ->leftjoin('finance','finance.engin_id','=','engineering.id')
            ->where('engineering.status',$status);

        if(!empty($project_name)){
            $db->where('project_name','like','%'.$project_name.'%');
        }
        if(!empty($engin_name)){
            $db->where('engineering_name','like','%'.$engin_name.'%');
        }
        if(!empty($project_leader)){
            $db->where('project_leader','like','%'.$project_leader.'%');
        }

        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->orderby('engineering.id','asc')
            ->select(['project.project_name','engineering.project_id','engineering.id as engin_id',
                'engineering.engineering_name','finance.id as finance_id',
                'budget.total_budget_price', 'project.project_leader',
                'budget.id as budget_id','budget.profit_ratio',
                'budget.profit as budget_profit','budget.tax_ratio as budget_tax_ratio','budget.tax as budget_tax','budget.budget_status','assessment','budget.direct_project_cost'])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        //$queries = DB::getQueryLog();
        //var_dump($queries);
        //exit;
        return $data;
    }

    //保存工程的财务风险信息
    public function postEditFinanceStart(Request $request,$id){
        $engin= DB::table('engineering')->where('id',$id)->first();
        if(empty($engin)){
            return $this->error('工程信息不存在');
        }
        $assessment =$request->input('assessment','');
        if(empty($assessment)){
            return $this->error('风险信息不能为空');
        }
        $finance =DB::table('finance')->where('engin_id',$id)->first();
        $data=[
            'engin_id'=>$id,
            'project_id'=>$engin->project_id,
            'assessment'=>$assessment,
        ];

        if(empty($finance)){
            $data['created_uid']=$this->user()->id;
            $data['created_at']=date('Y-m-d');
            DB::table('finance')->insert($data);
        }else{
            $data['edit_uid']=$this->user()->id;
            $data['updated_at']=date('Y-m-d');
            DB::table('finance')->where('engin_id',$id)->update($data);
        }
        return $this->success('保存成功');
    }

    //实施项目财务列表
    public function financeConduct(Request $request){
        $this->user();
        $data['navid']      =50;
        $data['subnavid']   =5002;
        if( !(in_array(5002,$this->user()->pageauth)) && !in_array(5002,$this->user()->manageauth)){
            return redirect('/home');
        }
        $project_name       =$request->input('project_name','');
        $engin_name            =$request->input('engin_name','');
        $project_leader    =$request->input('project_leader','');
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['engin_name']        =$engin_name;
        $data['project_leader']=$project_leader;
        $datalist=$this->getFinance(1,$project_name,$engin_name,$project_leader,$page,$rows);
        $url='/finance/financeConduct?project_name='.$project_name.'&engin_name='.$engin_name.'&project_leader='.$project_leader;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('finance.financeConduct',$data);
    }

    //竣工项目财务列表
    public function financeCompleted(Request $request){
        $this->user();
        $data['navid']      =50;
        $data['subnavid']   =5003;
        if( !(in_array(5003,$this->user()->pageauth)) && !in_array(5003,$this->user()->manageauth)){
            return redirect('/home');
        }
        $project_name       =$request->input('project_name','');
        $engin_name            =$request->input('engin_name','');
        $project_leader    =$request->input('project_leader','');
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['engin_name']        =$engin_name;
        $data['project_leader']=$project_leader;
        $datalist=$this->getFinance(2,$project_name,$engin_name,$project_leader,$page,$rows);
        $url='/finance/financeCompleted?project_name='.$project_name.'&engin_name='.$engin_name.'&project_leader='.$project_leader;
        $data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('finance.financeCompleted',$data);

    }
    //查询项目信息 （实施和竣工信息）
    protected function getFinance($status,$project_name='',$engin_name='',$project_leader='',$page=1,$rows=20)
    {
        //DB::connection()->enableQueryLog();
        $db=DB::table('engineering')
            ->join('project','project.id','=','project_id')
            ->leftjoin('finance','finance.engin_id','=','engineering.id')
            ->where('engineering.status',$status);

        if(!empty($project_name)){
            $db->where('project_name','like','%'.$project_name.'%');
        }
        if(!empty($engin_name)){
            $db->where('engineering_name','like','%'.$engin_name.'%');
        }
        if(!empty($project_leader)){
            $db->where('project_leader','like','%'.$project_leader.'%');
        }

        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->orderby('engineering.id','asc')
            ->select(['project.project_name','engineering.project_id','engineering.id as engin_id',
                'engineering.engineering_name','finance.id as finance_id', 'project.project_leader',
              'engineering.contract_code','contract_at',
              'assessment','contract_amount','changed_contract_amount','finance.status'])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        //$queries = DB::getQueryLog();
        //var_dump($queries);
        //exit;
        return $data;
    }

    //编辑财务表数据
    public function editFinanceInfo($id){

        $this->user();
        $data['navid']      =50;

        //项目子工程
        $engin =DB::table('engineering')->where('id',$id)->first();
        if(empty($engin)){
            echo"<script>alert('工程不存在');history.go(-1);</script>";
            exit;
        }

        $data['subnavid']   =($engin->status ==1)?5002:5003;
        //项目信息
        $project =DB::table('project')->where('id',$engin->project_id)->first();
        if( !in_array(500301,$this->user()->pageauth) && !in_array(500301,$this->user()->manageauth)){
            echo"<script>alert('您没有权限编辑该财务信息');history.go(-1);</script>";
            exit;
        }
        $data['project']=$project;
        $data['engin']=$engin;
        $data['finance'] =DB::table('finance')->where('engin_id',$id)->first();
        $data['finance_item'] =DB::table('finance_item')->where('engin_id',$id)->get();
        $data['engin_id']=$id;
        return view('finance.editFinanceInfo',$data);
    }

    //提交保存记录
    public function postEditFinanceInfo(Request $request,$id){
        //项目子工程
        $engin =DB::table('engineering')->where('id',$id)->first();
        if(empty($engin)){
            echo"<script>alert('工程不存在');history.go(-2);</script>";
            exit;
        }

        $contract_amount =$request->input('contract_amount','');
        $changed_contract_amount =$request->input('changed_contract_amount','');
        $profit_rate =$request->input('profit_rate','');
        $profit_amount =$request->input('profit_amount','');
        $status =$request->input('status','');
        
        $item_id =$request->input('item_id','');
        $batch_num =$request->input('batch_num','');
        $batch_name =$request->input('batch_name','');
        $receivables_proportion =$request->input('receivables_proportion','');
        $receivables_price =$request->input('receivables_price','');
        $sub_status =$request->input('sub_status','');
        $payment_proportion =$request->input('payment_proportion','');
        $payment_price =$request->input('payment_price','');
        $remark =$request->input('remark','');

        $finance =DB::table('finance')->where('engin_id',$id)->first();
        $data['contract_amount'] =$contract_amount;  //   '原始合同金额',
        $data['changed_contract_amount'] =$changed_contract_amount;  //   '变更合同金额',
        $data['profit_rate'] =$profit_rate;  //   '毛利率',
        $data['profit_amount'] =$profit_amount;  //   '毛利额',
        $data['status'] =$status;  //   '状态：1正常付款 0非正常付款',
        DB::beginTransaction();
        if(empty($finance)){
            $data['project_id'] =$engin->project_id;  //   '项目id',
            $data['engin_id'] =$id;  //   '工程id',
            $data['created_uid'] =$this->user()->id;  //   '创建人',
            $data['created_at'] =date('Y-m-d');  // '创建时间',
            $finance_id =DB::table('finance')->insertGetId($data);
        }else{
            $data['edit_uid'] =$this->user()->id;  //   '创建人',
            $data['updated_at'] =date('Y-m-d');  // '创建时间',
            DB::table('finance')->where('engin_id',$id)->update($data);
            $finance_id =$finance->id;
        }
        if(!empty($item_id)){
            //删除财务付款信息
            DB::table('finance_item')->where('engin_id',$id)->wherenotin('id',$item_id)->delete();
            foreach($item_id as $k=>$v){
                $datalist=[
                    'project_id'=>$engin->project_id,  //项目id
                    'engin_id'=>$id,  //工程id
                    'finance_id'=>$finance_id,  //财务表id
                    'batch_num'=>$batch_num[$k],    //付款批次
                    'batch_name'=>$batch_name[$k],  //批次名称
                    'receivables_proportion'=>$receivables_proportion[$k],  //应收款占比
                    'receivables_price'=>$receivables_price[$k],    //）
                    'status'=>$sub_status[$k],  //0未完成
                    'payment_proportion'=>$payment_proportion[$k],  //应收款占比
                    'payment_price'=>$payment_price[$k],    //应收款金额（万元）
                    'remark'=>$remark[$k],  //备注
                ];
                if(empty($v)){
                    $datalist['created_uid']=$this->user()->id;
                    $datalist['created_at']=date('Y-m-d');
                    DB::table('finance_item')->insert($datalist);
                }else{
                    $datalist['edit_uid']=$this->user()->id;
                    $datalist['updated_at']=date('Y-m-d');
                    DB::table('finance_item')->where('engin_id',$id)->where('id',$v)->update($datalist);
                }
            }
        }

        DB::commit();
        if($engin->status ==1){
            return redirect('/finance/financeConduct?status=1&notice='.'编辑财务信息成功');
        }else{
            return redirect('/finance/financeCompleted?status=1&notice='.'编辑财务信息成功');
        }

    }

    //实施项目财务列表
    public function getFinanceInfo(Request $request,$id){
        $this->user();
        $data['navid']      =50;
        //项目子工程
        $engin =DB::table('engineering')->where('id',$id)->first();
        if(empty($engin)){
            echo"<script>alert('工程不存在');history.go(-1);</script>";
            exit;
        }
        $data['subnavid']   =($engin->status ==1)?5002:5003;
        //项目信息
        $project =DB::table('project')->where('id',$engin->project_id)->first();
        if( !in_array(500301,$this->user()->pageauth) && !in_array(500301,$this->user()->manageauth)){
            echo"<script>alert('您没有权限编辑该财务信息');history.go(-1);</script>";
            exit;
        }
        $data['project']=$project;
        $data['engin']=$engin;
        $data['finance'] =DB::table('finance')->where('engin_id',$id)->first();
        $data['finance_item'] =DB::table('finance_item')->where('engin_id',$id)->get();
        $data['engin_id']=$id;
        return view('finance.getFinanceInfo',$data);
    }



}
