<?php

/*
|--------------------------------------------------------------------------
| Web manage  Routes
|--------------------------------------------------------------------------
|
| 这个模块主要负责的内容 (和项目本身没有关系，)
| 个人中心 角色控制， 系统配置 菜单 用户管理
|
*/
Auth::routes();

//个人中心
Route::group(['namespace' => 'Home','middleware' => ['auth']], function () {
    Route::get('/home',                         'HomeController@index'); //个人首页

    Route::get('/editHomeUserInfo',             'HomeController@editHomeUserInfo');           //编辑用户个人信息
    Route::post('/postHomeUserInfo',             'HomeController@postHomeUserInfo');           //保存到用户个人信息
    Route::post('/uploadUserImage',             'HomeController@uploadUserImage');           //保存用户头像

});

//角色类的控制组 需要登录
Route::group(['prefix' => 'admin','namespace' => 'Admin','middleware' => ['auth','active_status']], function () {

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
    Route::get('/ban_user/{id}',                 'UserRoleController@banUser');                        //禁用用户
    Route::get('/no_ban_user/{id}',                 'UserRoleController@noBanUser');                   //开启用户
    Route::get('/examine_user',                 'UserExamineController@index');                   //审核用户页面
    Route::get('/examine_status/{id}/{status}',                 'UserExamineController@examineStatus');                   //审核用户页面

    Route::get('/departmentList',             'DepartmentController@index');                       //部门列表
    Route::post('/postDepartment',              'DepartmentController@postDepartment');                   //提交部门信息
    Route::post('/deleteDepartment/{id}',              'DepartmentController@deleteDepartment');                   //删除部门信息

});

//角色类的控制组 不需要登录
Route::group(['namespace' => 'Admin'], function () {

    //Route::get('/test', 'RoleController@test');
    //Route::post('/test', 'RoleController@test');
});

