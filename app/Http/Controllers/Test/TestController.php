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
        $data=[];
        $pdf = PDF::loadView('test.testPdf', $data);
        return $pdf->stream();
        //return $pdf->download('invoice.pdf');
    }

}
