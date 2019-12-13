<?php

namespace App\Http\Controllers\Test;

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
use Mail;

class TestController  extends WebController
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
    }

    //公告列表
    public function testPdf(Request $request){
        //https://blog.csdn.net/weixin_34292287/article/details/93168682
        //实例 导出pdf
        $data=[];
        $pdf = PDF::loadView('test.testPdf', $data);
        return $pdf->stream();
        //return $pdf->download('invoice.pdf');
    }
    public function sendemail() {
        $name = '我发的第一份邮件';

        // Mail::send()的返回值为空，所以可以其他方法进行判断
        Mail::raw('你好，我是PHP程序！', function ($message) {
            $to = 'wangkuo@ontheroadstore.com';
            $message ->to($to)->subject('纯文本信息邮件测试');
        });
        // 返回的一个错误数组，利用此可以判断是否发送成功
        dd(Mail::failures());
    }

    public function sendemalifile(){
        $name = 'name';
        Mail::send('emails.test',['name'=>$name],function($message){
            $to = '282584778@qq.com';
            $message->to($to)->subject('邮件主题');
            $attachment = storage_path('app/files/test.txt');
            // 在邮件中上传附件
            $message->attach($attachment,['as'=>'中文文档.txt']);
        });

    }

    public function sendemailimage() {
        $image = 'http://www.baidu.com/sousuo/pic/sdaadar24545ssqq22.jpg';//网上图片
        Mail::send('emails.test',['image'=>$image],function($message){
            $to = '123456789@qq.com';
            $message->to($to)->subject('图片测试');
        });
        if(count(Mail::failures()) < 1){
            echo '发送邮件成功，请查收！';
        }else{
            echo '发送邮件失败，请重试！';
        }
    }

    function encode_file_contents() {
        //调用函数
        $filename = app_path().'/Http/Controllers/Budget/BudgetController.php';
        $T_k1 = $this->RandAbc(); //随机密匙1
        $T_k2 = $this->RandAbc(); //随机密匙2
        $vstr = file_get_contents($filename);
        $v1 = base64_encode($vstr);
        $c = strtr($v1, $T_k1, $T_k2); //根据密匙替换对应字符。
        $c = $T_k1.$T_k2.$c;
        $q1 = "O00O0O";
        $q2 = "O0O000";
        $q3 = "O0OO00";
        $q4 = "OO0O00";
        $q5 = "OO0000";
        $q6 = "O00OO0";
        $s = '$'.$q6.'=urldecode("%6E1%7A%62%2F%6D%615%5C%76%740%6928%2D%70%78%75%71%79%2A6%6C%72%6B%64%679%5F%65%68%63%73%77%6F4%2B%6637%6A");$'.$q1.'=$'.$q6.'{3}.$'.$q6.'{6}.$'.$q6.'{33}.$'.$q6.'{30};$'.$q3.'=$'.$q6.'{33}.$'.$q6.'{10}.$'.$q6.'{24}.$'.$q6.'{10}.$'.$q6.'{24};$'.$q4.'=$'.$q3.'{0}.$'.$q6.'{18}.$'.$q6.'{3}.$'.$q3.'{0}.$'.$q3.'{1}.$'.$q6.'{24};$'.$q5.'=$'.$q6.'{7}.$'.$q6.'{13};$'.$q1.'.=$'.$q6.'{22}.$'.$q6.'{36}.$'.$q6.'{29}.$'.$q6.'{26}.$'.$q6.'{30}.$'.$q6.'{32}.$'.$q6.'{35}.$'.$q6.'{26}.$'.$q6.'{30};eval($'.$q1.'("'.base64_encode('$'.$q2.'="'.$c.'";eval(\'?>\'.$'.$q1.'($'.$q3.'($'.$q4.'($'.$q2.',$'.$q5.'*2),$'.$q4.'($'.$q2.',$'.$q5.',$'.$q5.'),$'.$q4.'($'.$q2.',0,$'.$q5.'))));').'"));';

        $s = '<?php '."\n".$s."\n".' ?>';
        //echo $s;
        // 生成 加密后的PHP文件
        $fpp1 = fopen($filename, 'w');
        fwrite($fpp1, $s) or die('写文件错误');
    }
    function RandAbc($length = "") { // 返回随机字符串
        $str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        return str_shuffle($str);
    }


}
