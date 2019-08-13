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
    Route::get('/ban_user/{id}',                 'UserRoleController@banUser');                        //禁用用户
    Route::get('/no_ban_user/{id}',                 'UserRoleController@noBanUser');                   //开启用户
    Route::get('/examine_user',                 'UserExamineController@index');                   //审核用户页面
    Route::get('/examine_status/{id}/{status}',                 'UserExamineController@examineStatus');                   //审核用户页面


});

//角色类的控制组 不需要登录
Route::group(['namespace' => 'Admin'], function () {

    //Route::get('/test', 'RoleController@test');
    //Route::post('/test', 'RoleController@test');
});

//项目类的控制组 需要登录
Route::group(['prefix' => 'project','namespace' => 'Project','middleware' => 'auth'], function () {
    Route::get('/projectStart',                     'ProjectController@projectStart');      //洽谈项目首页
    Route::get('/projectConduct',                   'ProjectController@projectConduct');    //实施项目列表
    Route::get('/projectCompleted',                 'ProjectController@projectCompleted');  //竣工项目首页
    Route::get('/projectTermination',               'ProjectController@projectTermination'); //终止项目首页

    Route::get('/createdProject',                    'ProjectController@createdProject');   //创建项目
    Route::post('/postAddProject',                   'ProjectController@postAddProject');   //提交创建项目信息
    Route::get('/projectDetail/{id}',                'ProjectController@projectDetail');    //项目详情信息
    Route::get('/editProject/{id}',                  'ProjectController@editProject');      //编辑项目
    Route::post('/postEditProject/{id}',             'ProjectController@postEditProject');  //提交编辑项目工程信息
    Route::post('/updateProjectStatus/{id}',         'ProjectController@updateProjectStatus');  //提交编辑项目状态

    Route::get('/editConductProject/{id}',           'ProjectController@editConductProject');      //编辑实施项目信息
    Route::post('/postConductProject/{id}',           'ProjectController@postConductProject');      //提交编辑实施项目信息
    Route::get('/projectConductDetail/{id}',           'ProjectController@projectConductDetail');      //查看实施项目信息
    Route::get('/projectCompletedDetail/{id}',        'ProjectController@projectCompletedDetail');    //查看竣工项目工程信息
    Route::get('/projectTerminationDetail/{id}',      'ProjectController@projectTerminationDetail');    //查看终止项目工程信息



});

//项目类的控制组 不需要登录
Route::group(['namespace' => 'Project'], function () {
    //Route::get('/test', 'RoleController@test');
    //Route::post('/test', 'RoleController@test');

});
//建筑设计管理类的控制组 需要登录
Route::group(['prefix' => 'architectural','namespace' => 'Architectural','middleware' => 'auth'], function () {
    //建筑设计管理系统
    Route::get('/index',                   'ArchitecturalController@index');      //建筑设计主页
    Route::get('/add_architect',           'ArchitecturalController@addArchitect'); //创建建筑工程
    Route::post('/post_add_architect',     'ArchitecturalController@postAddArchitect'); //提交建筑工程
    Route::get('/edit_architect/{id}',     'ArchitecturalController@editArchitect'); //编辑建筑工程
    Route::post('/post_edit_architect',    'ArchitecturalController@postEditArchitect'); //提交编辑建筑工程
    Route::get('/architect_detail/{id}',   'ArchitecturalController@architectDetail'); //查看详情建筑工程
    Route::get('/edit_architect_status/{id}/{status}',    'ArchitecturalController@EditArchitectStatus'); //编辑建筑工程状态

    //建筑设计管理子系统
    Route::get('/architectureList',        'ArchitecturalController@architectureList'); //查看建筑工程子系统列表
    Route::get('/edit_material/{id}',            'ArchitecturalController@editMaterial');        //编辑建筑工程子系统下材料信息
    Route::get('/material_detail/{id}',     'ArchitecturalController@materialDetail'); //查看建筑工程子系统材料信息
    Route::post('/post_edit_material/{id}',     'ArchitecturalController@postEditMaterial'); //提交建筑工程子系统材料信息

    //工程中建筑设计管理
    Route::get('/enginStart',                     'EnginneringController@enginStart');      //洽谈项目首页 工程中建筑设计
    Route::get('/enginConduct',                   'EnginneringController@enginConduct');    //实施项目列表 工程中建筑设计
    Route::get('/enginCompleted',                 'EnginneringController@enginCompleted');  //竣工项目首页 工程中建筑设计
    Route::get('/enginTermination',               'EnginneringController@enginTermination'); //终止项目首页 工程中建筑设计

    Route::get('/enginStartDetail/{id}',          'EnginneringController@enginStartDetail');    //工程设计详情
    Route::get('/editEngin/{id}',                  'EnginneringController@editEngin');      //编辑工程设计详情
    Route::post('/postEditEngin/{id}',             'EnginneringController@postEditEngin');  //提交编辑工程设计详情
    Route::get('/editConductEngin/{id}',           'EnginneringController@editConductEngin');      //编辑实施工程设计详情
    Route::post('/postConductEngin/{id}',          'EnginneringController@postConductEngin');      //提交编辑实施工程设计详情
    Route::get('/enginConductDetail/{id}',         'EnginneringController@enginConductDetail');      //查看实施工程设计详情
    Route::get('/enginCompletedDetail/{id}',       'EnginneringController@enginCompletedDetail');    //查看竣工工程设计信息
    Route::get('/enginTerminationDetail/{id}',     'EnginneringController@enginTerminationDetail');    //查看终止项目工程设计信息

});

//基础信息管理类的控制组 需要登录
Route::group(['prefix' => 'base','namespace' => 'Base','middleware' => 'auth'], function () {
    //公告管理
    Route::get('/notice_list',                   'BaseController@noticeList');      //公告列表
    Route::get('/add_notice',                   'BaseController@addNotice');      //添加公告
    Route::get('/edit_notice/{id}',             'BaseController@editNotice');      //编辑公告
    Route::post('/post_add_notice',          'BaseController@postAddNotice');      //提交新增公告
    Route::post('/post_edit_notice/{id}',         'BaseController@postEditNotice');      //提交编辑公告
    Route::get('/getNoticeInfo',                 'BaseController@getNoticeInfo');      //公告列表所有人能看的页面

});

//供应商品牌管理类的控制组 需要登录
Route::group(['prefix' => 'supplier','namespace' => 'SupplierBrand','middleware' => 'auth'], function () {
    //品牌管理
    Route::get('/brandList',                   'BrandController@brandList');      //品牌列表
    Route::post('/post_add_brand',              'BrandController@postAddBrand');      //提交新增品牌
    Route::post('/post_edit_brand/{id}',         'BrandController@postEditBrand');      //提交编辑品牌
    Route::get('/brandSupplierList/{id}',       'BrandController@brandSupplierList');   //品牌对应供应商列表（仅供应商ID）
    Route::post('/uploadImage',                 'BrandController@uploadImage');          //上传图片
    Route::get('/brandToSupplier/{id}',       'BrandController@brandToSupplier');   //品牌对应供应商列表（包括供应商名称和厂址）

    //供应商管理
    Route::get('/supplierList',                   'SupplierController@supplierList');      //供应商列表
    Route::get('/addSupplier',                    'SupplierController@addSupplier');      //供应商新增
    Route::get('/editSupplier/{id}',              'SupplierController@editSupplier');      //供应商编辑页面
    Route::post('/postAddSupplier',               'SupplierController@postAddSupplier');      //提交新增供应商
    Route::post('/postEditSupplier/{id}',         'SupplierController@postEditSupplier');      //提交编辑供应商
    Route::get('/deleteSupplierBrand/{id}',         'SupplierController@deleteSupplierBrand');      //提交编辑供应商
});

//部品部件管理类的控制组 需要登录
Route::group(['prefix' => 'material','namespace' => 'Material','middleware' => 'auth'], function () {
    //材料管理
    Route::get('/materialList',                   'MaterialController@materialList');      //部品部件列表
    Route::get('/editMaterial/{id}',              'MaterialController@editMaterial');      //编辑部品部件
    Route::post('/postEditMaterial/{id}',          'MaterialController@postEditMaterial');      //提交编辑部品部件
    Route::get('/materialDetail/{id}',              'MaterialController@materialDetail');      //部品部件详情

});

//客户类的控制组 需要登录
Route::group(['prefix' => 'customer','namespace' => 'Customer','middleware' => 'auth'], function () {
    //材料管理
    Route::get('/customerList',                   'CustomerController@customerList');             //客户列表
    Route::post('/postAddCustomer',               'CustomerController@postAddCustomer');        //提交新增客户信息
    Route::post('/postEditCustomer/{id}',         'CustomerController@postEditCustomer');      //提交编辑客户信息
    Route::post('/postDeleteCustomer/{id}',         'CustomerController@postDeleteCustomer');  //删除客户信息

});

//预算管理类的控制组 需要登录
Route::group(['prefix' => 'budget','namespace' => 'Budget','middleware' => 'auth'], function () {
    //工程中建筑设计管理
    Route::get('/budgetStart',                     'BudgetController@budgetStart');      //洽谈工程列表
    Route::get('/budgetConduct',                   'BudgetController@budgetConduct');    //实施工程列表
    Route::get('/budgetCompleted',                 'BudgetController@budgetCompleted');  //竣工工程列表
    Route::get('/budgetTermination',               'BudgetController@budgetTermination'); //终止工程列表

    Route::get('/editBudget/{id}',                  'BudgetController@editBudget');             //编辑工程预算详情
    Route::get('/budgetStartDetail/{id}',           'BudgetController@budgetStartDetail');      //洽谈工程预算详情
    Route::post('/postEditBudget/{id}',             'BudgetController@postEditBudget');         //提交编辑工程预算详情
    Route::post('/examineStartBudget/{id}/{status}',     'BudgetController@examineBudget');         //审核洽谈工程预算

    Route::get('/editConductBudget/{id}',           'BudgetController@editConductBudget');      //编辑实施工程预算详情
    Route::post('/postConductBudget/{id}',          'BudgetController@postConductBudget');      //提交编辑实施工程预算详情
    Route::get('/budgetConductDetail/{id}',         'BudgetController@budgetConductDetail');      //查看实施工程预算详情
    Route::post('/examineConductBudget/{id}/{status}','BudgetController@examineBudget');         //审核实施工程预算

    Route::get('/budgetCompletedDetail/{id}',       'BudgetController@budgetCompletedDetail');    //查看竣工工程预算信息
    Route::get('/budgetTerminationDetail/{id}',     'BudgetController@budgetTerminationDetail');    //查看终止项目工程预算信息




});
