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
    Route::get('/home', 'HomeController@index');
});

//角色类的控制组 需要登录
Route::group(['namespace' => 'Role','middleware' => 'auth'], function () {
    Route::get('/test', 'RoleController@index');
    Route::post('/test', 'RoleController@test');
});

//角色类的控制组 不需要登录
Route::group(['namespace' => 'Role'], function () {

    //Route::get('/test', 'RoleController@test');
    //Route::post('/test', 'RoleController@test');

});
