<?php

namespace App\Http\Controllers\Home;

use App\Models\Role;
use App\Models\SystemSetting;
use App\Models\User;
use App\Models\UserRole;
use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use Illuminate\Support\Facades\DB;

class HomeController extends WebController
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //该方法验证说明必须登录用户才能操作
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      //  session_start();
        //print_r($this->user());
      //  print_r($_SESSION);
        //foreach($this->user() as $k=>$v){
       //     echo $k.'--'.$v."<br>";
        //}
        //return view('home.home');
        if(empty($this->user())){ //账号不存在 跳转到登录页面
            return redirect('/login');
        }
        $auth=$this->getAuthLevel($this->user()->id);
        $data['data']=$auth['nav'];
        $data['project_name'] =config('app.name');
        $data['navList']=[];
        if(isset($data['data'][0])){
            foreach($data['data'][0] as $v){
                $data['navList'][]= $v->auth_id;
            }
        }
        $data['user_image'] =$this->user()->user_image;
        $data['allNavList']=$this->getNavLaval(0);
        return view('home.homeIndex',$data);

    }

    //获取父id对应的导航信息
    public  function getNavLaval($id=0){
        return  DB::table('authority')
            ->where('parent_id',$id)
            ->where('status',1)
            ->where('is_show',1)
            ->where('auth_id','!=','10')
            ->orderby('auth_id')
            ->get();
    }
    //用户编辑个人信息
    public function editHomeUserInfo(Request $request){
        //用户权限部分
        $this->user();
        $data['navid']      =0;
        $data['subnavid']   =0;
        $data['status']=$request->input('status',0); //1成功 2失败
        $data['notice']=$request->input('notice','成功'); //提示信息
        $id=$this->user()->id;
        //获取用户信息
        $data['user']=User::where('id',$id)->first();
        //获取用户角色
        $data['user_role']=UserRole::where('uid',$id)->where('status',1)->pluck('role_id')->toarray();
        //获取角色列表
        $data['role_list']=Role::where('status',1)->get();
        $data['departmentList']=DB::table('department')->where('status',1)->orderby('sort')->get();
        return view('home.edituserinfo',$data);

    }
    //保存用户信息
    public  function postHomeUserInfo(Request $request){

        $id =$this->user()->id;
        $pwd =$request->input('password','');
        $checkpwd =$request->input('repPassword','');
        $userimage =$request->input('userimage','');
        $telephone =$request->input('telephone','');
        if($pwd != $checkpwd){
            echo"<script>alert('两次密码不一致');history.go(-1);</script>";
            exit;
            //return $this->error('两次密码不一致');
        }
        DB::beginTransaction();
        $data =[
            'updated_at'=>date('Y-m-d H:i:s'),
        ];
        if(!empty($pwd)){
            $data['password'] =bcrypt($pwd);
        }
        if($userimage){
            $data['user_image']=$userimage;
        }
        if($telephone){
            $data['telephone']=$telephone;
        }
        DB::table('users')->where('id',$id)->update($data);

        DB::commit();

        return redirect('/home');
    }
    //上次图片
    public function uploadUserImage(Request $request)
    {
        if(empty($_FILES)){
            return $this->error( '请选择图片');
        }elseif($_FILES["file"]["error"]) {
            return $this->error( $_FILES["file"]["error"]);
        }else {
            //没有出错
            //加限制条件
            //判断上传文件类型为png或jpg且大小不超过1024000B
            if(($_FILES["file"]["type"]=="image/png"||$_FILES["file"]["type"]=="image/jpeg")&&$_FILES["file"]["size"]< 1024000) {
                //防止文件名重复
                $dir="./img/user_image/";
                $filename =md5(time().$_FILES["file"]["name"]);
                //转码，把utf-8转成gb2312,返回转换后的字符串， 或者在失败时返回 FALSE。
                $filename =iconv("UTF-8","gb2312",$filename).'.png';
                //检查文件或目录是否存在
                if(file_exists($dir.$filename)) {
                    unlink($dir.$filename);
                }
                //保存文件,   move_uploaded_file 将上传的文件移动到新位置
                move_uploaded_file($_FILES["file"]["tmp_name"],$dir.$filename);//将临时地址移动到指定地址
                $data['msg']='上传图片成功';
                $data['url']="/img/user_image/".$filename;
                return $this->success($data);

            }else{
                return $this->error('请上传png/jpg格式，尺寸小于1M的图片');
            }
        }
    }
}
