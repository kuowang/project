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

}
