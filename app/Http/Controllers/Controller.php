<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\Auth;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    /**
     * @param $data
     * @param int $code
     * @param string $info
     * @return \Symfony\Component\HttpFoundation\Response
     */
    protected function success($data, $code = 1, $info = "Success"){

        $response = ['status' => $code,  'info' => $info, 'data' => $data];
        return response()->json($response,200);
    }

    /**
     * @param string $info
     * @param int $code
     * @return \Symfony\Component\HttpFoundation\Response
     */
    protected function error($info = "Error", $code = 0){
        $response = ['status' => $code, 'info' => $info];

        return response()->json($response);
    }


}
