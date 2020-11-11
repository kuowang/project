<?php
namespace App\Services;

use Illuminate\Support\Facades\Redis;
/**
 * redis管理服务
 *
 * Class TokenManageService
 * @package App\Services
 */
class WkRedisService
{
    /**
     * 定义token属性
     *
     * @var
     */
    public $redis;

    /**
     * 定义token属性
     *
     * @param $token
     * @return mixed
     */
    public function __construct()
    {
        $this->redis= new Redis();
    }

    //如果方法不存在，则调用redis 原生方法
    public function __call($name,$arr){
        $redi =$this->redis;
        return $redi::$name(...$arr);
    }

}