<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Auth::routes();
Route::get('/', function () {
    return view('welcome');
});

//Route::get('/home', 'HomeController@index');
//测试
Route::group(['namespace' => 'Home','middleware' => 'auth'], function () {
    //Route::get('/home', 'HomeController@index');
});

//角色类的控制组 需要登录
Route::group(['namespace' => 'Admin','middleware' => 'auth'], function () {
    Route::get('/home',                 'RoleController@index'); //管理员首页
    Route::get('/system_list',          'SystemSettingController@index'); //系统参数配置列表页
    Route::get('/add_system_list',      'SystemSettingController@addSystemSetting');//添加系统参数
    Route::get('/edit_system_list/{id}', 'SystemSettingController@editSystemSetting');//编辑系统参数
    Route::post('/postSystemSetting',    'SystemSettingController@postSystemSetting');//提交系统参数修改

});

//角色类的控制组 不需要登录
Route::group(['namespace' => 'Role'], function () {

    //Route::get('/test', 'RoleController@test');
    //Route::post('/test', 'RoleController@test');

});
