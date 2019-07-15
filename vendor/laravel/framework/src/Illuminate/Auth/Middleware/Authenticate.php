<?php

namespace Illuminate\Auth\Middleware;

use Closure;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Contracts\Auth\Factory as Auth;
use Log;
use Illuminate\Support\Facades\DB;

class Authenticate
{
    /**
     * The authentication factory instance.
     *
     * @var \Illuminate\Contracts\Auth\Factory
     */
    protected $auth;

    /**
     * Create a new middleware instance.
     *
     * @param  \Illuminate\Contracts\Auth\Factory  $auth
     * @return void
     */
    public function __construct(Auth $auth)
    {
        $this->auth = $auth;
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string[]  ...$guards
     * @return mixed
     *
     * @throws \Illuminate\Auth\AuthenticationException
     */
    public function handle($request, Closure $next, ...$guards)
    {
        if (isset($_SERVER['HTTP_CLIENT_IP'])) {
            $ip     =   $_SERVER['HTTP_CLIENT_IP'];
        }elseif (isset($_SERVER['REMOTE_ADDR'])) {
            $ip     =   $_SERVER['REMOTE_ADDR'];
        }else {
            $ip = '0.0.0.0';
        }
        if(isset($this->auth->user()->id)){
            $uid =      $this->auth->user()->id;
        }else{
            $uid='';
        }
        //记录操作日志
       // Log::info('Request ', ['operator'=>$uid,'url' => $request->decodedPath(),'User-Agent' => $request->header('User-Agent'),'ip' => $ip,'param' => $request->all()]);
        DB::table('system_operation_log')->insert([
            'uid'=>$uid,
            'url'=>$request->decodedPath(),
            'user_agent'=>$request->header('User-Agent'),
            'ip'=>$ip,
            'param'=>json_encode($request->all()),
            'created_at'=>date('Y-m-d H:i:s')
        ]);
        $this->authenticate($guards);

        return $next($request);
    }

    /**
     * Determine if the user is logged in to any of the given guards.
     *
     * @param  array  $guards
     * @return void
     *
     * @throws \Illuminate\Auth\AuthenticationException
     */
    protected function authenticate(array $guards)
    {

        if (empty($guards)) {
            return $this->auth->authenticate();
        }

        foreach ($guards as $guard) {
            if ($this->auth->guard($guard)->check()) {
                return $this->auth->shouldUse($guard);
            }
        }

        throw new AuthenticationException('Unauthenticated.', $guards);
    }
}
