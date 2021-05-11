<?php
/**
 * Created by PhpStorm.
 * User: bsu0921360
 * Date: 2016/12/7
 * Time: 14:55
 */

namespace App\Http\Middleware;

use Closure;
use DB;
use Illuminate\Contracts\Auth\Factory as Auth;
use Log;

class HsActiveStatus
{
    public function __construct(Auth $auth)
    {
        $this->auth = $auth;
    }
    public function handle($request, Closure $next) {

        if(isset($this->auth) && isset($this->auth->user()->id)){
            $phpsession =$request->session()->getId();
            $sessionid =$this->auth->user()->sessionid;
            if($phpsession != $sessionid){
                Log::info('用户在其他位置登录',[$this->auth->user(),$request->header()]);
                return redirect('/logout?message=您在其他位置已经登录，请重新登录');
            }
        }
        return $next($request);
    }
}
