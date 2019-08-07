<?php

namespace App\Http\Controllers\Architectural;

use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;


class EnginneringController extends WebController
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
    public function enginStart(Request $request)
    {
        $this->user();
        $data=$this->enginnering($request,0);
        $data['subnavid']   =3503;
        if( !(in_array(3502,$this->user()->pageauth)) && !in_array(3502,$this->user()->manageauth)){
            return redirect('/home');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('architectural.enginnering.enginStart',$data);
    }
    /**
     *实施项目列表
     * @return \Illuminate\Http\Response
     */
    public function enginConduct(Request $request)
    {
        $this->user();
        $data=$this->enginnering($request,1);
        $data['subnavid']   =3503;
        if( !(in_array(3503,$this->user()->pageauth)) && !in_array(3503,$this->user()->manageauth)){
            return redirect('/architectural/enginStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('architectural.enginnering.enginConduct',$data);
    }
    /**
     *竣工项目列表
     * @return \Illuminate\Http\Response
     */
    public function enginCompleted(Request $request)
    {
        $this->user();
        $data=$this->enginnering($request,2);
        $data['subnavid']   =3503;
        if( !(in_array(3504,$this->user()->pageauth)) && !in_array(3504,$this->user()->manageauth)){
            return redirect('/architectural/enginStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('architectural.enginnering.enginCompleted',$data);
    }
    /**
     *终止项目列表
     * @return \Illuminate\Http\Response
     */
    public function enginTermination(Request $request)
    {
        $this->user();
        $data=$this->enginnering($request,4);
        $data['subnavid']   =3503;
        if( !(in_array(3505,$this->user()->pageauth)) && !in_array(3505,$this->user()->manageauth)){
            return redirect('/architectural/enginStart?status=2&notice='.'您没有操作该功能权限');
        }
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        return view('architectural.enginnering.enginTermination',$data);
    }

    //查询项目信息
    protected function getEngineList($status,$project_name='',$address='',$customer_leader='',$success_level=1,$page=1,$rows=20)
    {
        $db=DB::table('project')
            ->leftjoin('engineering','project.id','=','project_id')
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
        if(!empty($success_level)){
            $db->where('success_level','like','%'.$success_level.'%');
        }
        $data['count'] =$db->count();
        $data['data']= $db->orderby('project.id','desc')
            ->orderby('engineering.id','asc')
            ->select(['project.*','engineering.id as engineering_id','engineering_name','build_area','build_floor','build_height'])
            ->skip(($page-1)*$rows)
            ->take($rows)
            ->get();
        return $data;
    }
    //工程信息列表
    private function enginnering($request,$status=0)
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
        $data['success_level']  =$success_level;
        $datalist=$this->getEngineList($status,$project_name,$address,$customer_leader,$success_level,$page,$rows);
        if($status == 0){
            $url='/architectural/enginStart?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }elseif($status == 1){
            $url='/architectural/enginConduct?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }elseif($status == 2){
            $url='/architectural/enginCompleted?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }elseif($status == 4){
            $url='/architectural/enginTermination?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }else{
            $url='/architectural/enginStart?project_name='.$project_name.'&address='.$address.'&customer_leader='.$customer_leader.'&success_level='.$success_level;
        }$data['page']   =$this->webfenye($page,ceil($datalist['count']/$rows),$url);
        $data['data']   =$datalist['data'];
        $data['navid']      =35;
        return $data;
    }
    //查看工程设计详情
    public function enginDetail(Request $request)
    {

    }
    //编辑工程设计详情
    public function editEngin(Request $request)
    {

    }

    //提交编辑工程设计详情
    public function postEditEngin(Request $request)
    {

    }
    //编辑实施工程设计详情
    public function editConductEngin(Request $request)
    {

    }
    //提交编辑实施工程设计详情
    public function postConductEngin(Request $request)
    {

    }
    //查看实施工程设计详情
    public function enginConductDetail(Request $request)
    {

    }
    //查看竣工工程设计信息
    public function enginCompletedDetail(Request $request)
    {

    }
    //查看终止项目工程设计信息
    public function enginTerminationDetail(Request $request)
    {

    }





}
