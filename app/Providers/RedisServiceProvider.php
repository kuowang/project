<?php
namespace App\Providers;

use App\Providers\HsRedisStore;
use App\Services\WkRedisService;
use Illuminate\Support\ServiceProvider;


class RedisServiceProvider extends ServiceProvider
{
    /**
     * Indicates if loading of the provider is deferred.
     *
     * @var bool
     */
    protected $defer = true;

    /**
     * Register the service provider.
     *
     * @return void
     */
    public function register()
    {
        $this->app->singleton('wk.redis', function ($app) {
            return new WkRedisService();
        });

    }

    /**
     * Get the services provided by the provider.
     *
     * @return array
     */
    public function provides()
    {
        return ['redis'];
    }
}
