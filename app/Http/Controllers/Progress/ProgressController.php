<?php

namespace App\Http\Controllers\Progress;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;


class ProgressController extends WebController
{
    /**
     * 采购信息管理
     *
     * @return void
     */
    public function __construct(Request $request)
    {
        //该方法验证说明必须登录用户才能操作
        $this->middleware('auth');
    }
    //实施项目施工列表
    public function progressConduct(Request $request){
        $this->user();
        $project_name       =$request->input('project_name','');
        $engineering_name   =$request->input('engineering_name','');
        $purchase_username    =$request->input('purchase_username','');
        $page               =$request->input('page',1);
        $rows               =$request->input('rows',40);
        $data['project_name']   =$project_name;
        $data['engineering_name']        =$engineering_name;
        $data['purchase_username']=$purchase_username;

        $db=DB::table('engineering')
            ->join('project','project.id','=','project_id')
            ->leftjoin('purchase','engineering.id','=','purchase.engin_id')
            ->where('engineering.status',1); //实施项目工程

        if(!empty($project_name)){
            $db->where('project_name','like','%'.$project_name.'%');
        }
        if(!empty($engineering_name)){
            $db->where('engineering_name','like','%'.$engineering_name.'%');
        }
        if(!empty($purchase_username)){
            $db->where('purchase_username','like','%'.$purchase_username.'%');
        }

        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->orderby('engineering.id','asc')
            ->select(['project.project_name','project.budget_uid','project.budget_username','engineering.purchase_uid','engineering.purchase_username','is_conf_architectural',
                'engineering.project_id','engineering.id as engin_id', 'engineering.engineering_name','engineering.budget_id',
                'build_area', 'engineering.status as engin_status', 'contract_code',
                'purchase_status','logistics_status','batch_status','purchase.remark'
            ])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        //$queries = DB::getQueryLog();
        //var_dump($queries);

        $url='/purchase/purchaseConduct?project_name='.$project_name.'&engineering_name='.$engineering_name.'&purchase_username='.$purchase_username;
        $data['page']   =$this->webfenye($page,ceil($data['count']/$rows),$url);

        $data['navid']      =30;
        $data['subnavid']   =3001;
        if( !(in_array(3001,$this->user()->pageauth)) && !in_array(3001,$this->user()->manageauth)){
            return redirect('/home');
        }

        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('progress.progressConduct',$data);
    }

    //编辑项目状态
    public function updateProjectStatus(Request $request,$id)
    {
        $engin=DB::table('engineering')->where('id',$id)->first();
        $status =$request->input('project_status',2);
        if(empty($engin)){
            return redirect('/purchase/purchaseConduct?status=2&notice='.'项目不存在');
        }

        if($engin->status ==1  && !in_array($status,[2,4])){
            echo"<script>alert('状态更改失败，项目状态不可逆，请更改其他状态');history.go(-1);</script>";
        }elseif($engin->status ==2 && $status != 4){
            echo"<script>alert('状态更改失败，项目状态不可逆，请更改其他状态');history.go(-1);</script>";
        }
        $data=['status'=>$status,
            'edit_uid'=>$this->user()->id,
            'updated_at'=>date('Y-m-d')];
        if($status == 2){
            $data['completed_at'] =date('Y-m-d'); //竣工时间
        }elseif($status ==4){
            $data['termination_at'] =date('Y-m-d');//终止时间
        }
        DB::table('engineering')->where('id',$id)->update($data);
        //设置项目工程数量和建筑总面积
        $this->setProjectEnginNumber($engin->project_id);
       if($status == 2){
            return redirect('/purchase/purchaseConduct?status=1&notice='.'项目状态更改成功！');
        }elseif($status == 4){
            return redirect('/purchase/purchaseCompleted?status=1&notice='.'项目状态更改成功！');
        }else{
            return redirect('/purchase/purchaseConduct?status=1&notice='.'项目状态更改成功！');
        }
    }

}
