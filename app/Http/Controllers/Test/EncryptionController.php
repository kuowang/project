<?php

namespace App\Http\Controllers\Test;


use App\Models\UserManageAuthority;
use Illuminate\Http\Request;
use App\Http\Controllers\WebController;
use PDF;
use Mail;

class EncryptionController  extends WebController
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
    }

    public function encryptFile(){
        $arr =[
            app_path().'/Http/Controllers/Admin/DepartmentController.php',
            app_path().'/Http/Controllers/Admin/MenuNavController.php',
            app_path().'/Http/Controllers/Admin/RoleController.php',
            app_path().'/Http/Controllers/Admin/SystemSettingController.php',
            app_path().'/Http/Controllers/Admin/UserExamineController.php',
            app_path().'/Http/Controllers/Admin/UserRoleController.php',

            app_path().'/Http/Controllers/Architectural/ArchitecturalController.php',
            app_path().'/Http/Controllers/Architectural/EnginneringController.php',
            app_path().'/Http/Controllers/Base/BaseController.php',
            app_path().'/Http/Controllers/Customer/CustomerController.php',
            app_path().'/Http/Controllers/Budget/BudgetController.php',

            app_path().'/Http/Controllers/Finance/FinanceController.php',
            app_path().'/Http/Controllers/Home/HomeController.php',
            app_path().'/Http/Controllers/Material/MaterialController.php',
            app_path().'/Http/Controllers/Offer/OfferController.php',
            app_path().'/Http/Controllers/Progress/ProgressController.php',
            app_path().'/Http/Controllers/Project/ProjectController.php',
            app_path().'/Http/Controllers/Purchase/PurchaseController.php',
            app_path().'/Http/Controllers/SupplierBrand/SupplierController.php',
            app_path().'/Http/Controllers/SupplierBrand/BrandController.php'
        ];
        foreach($arr as $filename){
            $str =$this->encode_file_contents($filename);
            echo $str.':'.$filename;
            echo "<br>";
        }
    }

    function encode_file_contents($filename) {
        //调用函数
       // $filename = app_path().'/Http/Controllers/Budget/BudgetController.php';
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
        return '加密成功';
    }
    function RandAbc($length = "") { // 返回随机字符串
        $str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        return str_shuffle($str);
    }


}
