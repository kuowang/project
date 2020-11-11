<?php

namespace App\Facades;

use Illuminate\Support\Facades\Facade;

/**
 * Class Redis
 * @author donieli
 */
class WkRedis extends Facade
{

    protected static function getFacadeAccessor()
    {
        return 'wk.redis';
    }
    
}
