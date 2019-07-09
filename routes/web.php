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
//Route::get('/', function () {
    //return view('welcome');
//});
Route::get('/',                     'Home\HomeController@index'); //首页地址

//Route::get('/home', 'HomeController@index');
//测试
Route::group(['namespace' => 'Home','middleware' => 'auth'], function () {
    Route::get('/home', 'HomeController@index');
});

//角色类的控制组 需要登录
Route::group(['prefix' => 'admin','namespace' => 'Admin','middleware' => 'auth'], function () {

    Route::get('/home',                 'RoleController@index'); //管理员首页
    //系统配置
    Route::get('/system_list',          'SystemSettingController@index'); //系统参数配置列表页
    Route::get('/add_system_list',      'SystemSettingController@addSystemSetting');//添加系统参数
    Route::get('/edit_system_list/{id}', 'SystemSettingController@editSystemSetting');//编辑系统参数
    Route::post('/postSystemSetting',    'SystemSettingController@postSystemSetting');//提交系统参数修改
    //菜单
    Route::get('/menu_nav_list',        'MenuNavController@index');                     //菜单导航列表
    //角色权限
    Route::get('/role_list',             'RoleController@index');                       //角色列表
    Route::get('/add_role',              'RoleController@addRole');                     //添加角色页面
    Route::get('/edit_role/{id}',         'RoleController@editRole');                   //编辑角色页面
    Route::post('/post_role',             'RoleController@postRole');                   //提交角色信息
    //角色菜单权限
    Route::get('/edit_role_authority/{id}', 'RoleController@editRoleAuthority');                   //编辑角色权限页面
    Route::post('/post_role_authority/{id}', 'RoleController@poseRoleAuthority');                   //提交角色权限信息
    //用户角色
    Route::get('/user_role_list',            'UserRoleController@index');                          //用户角色列表
    Route::get('/add_user_info',             'UserRoleController@addUserInfo');                    //添加新用户
    Route::get('/edit_user_info/{id}',            'UserRoleController@editUserInfo');                   //编辑用户
    Route::post('/post_add_user',             'UserRoleController@postAddUser');                   //提交新用户
    Route::post('/post_edit_user',             'UserRoleController@postEditUser');                   //提交编辑用户

});

//角色类的控制组 不需要登录
Route::group(['namespace' => 'Admin'], function () {

    //Route::get('/test', 'RoleController@test');
    //Route::post('/test', 'RoleController@test');

});

//项目类的控制组 需要登录
Route::group(['namespace' => 'Project','middleware' => 'auth'], function () {
    Route::get('project/index',                 'ProjectController@index'); //项目首页
});

//项目类的控制组 不需要登录
Route::group(['namespace' => 'Project'], function () {

    //Route::get('/test', 'RoleController@test');
    //Route::post('/test', 'RoleController@test');

});
