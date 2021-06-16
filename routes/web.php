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




//项目类的控制组 需要登录
Route::group(['prefix' => 'project','namespace' => 'Project','middleware' => ['auth','active_status']], function () {
    Route::get('/projectEnginStart/{id?}',                     'ProjectController@projectEnginStart');      //洽谈项目工程首页
    Route::get('/projectEnginConduct/{id?}',                   'ProjectController@projectEnginConduct');    //实施项目工程列表
    Route::get('/projectEnginCompleted/{id?}',                 'ProjectController@projectEnginCompleted');  //竣工项目工程首页
    Route::get('/projectEnginTermination/{id?}',               'ProjectController@projectEnginTermination'); //终止项目工程首页

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
    Route::get('/projectImgList/{id}',               'ProjectController@projectImgList');    //项目图片信息

    Route::get('/editConductProject/{id}',           'ProjectController@editConductProject');      //编辑实施项目信息
    Route::post('/postConductProject/{id}',           'ProjectController@postConductProject');      //提交编辑实施项目信息
    Route::get('/projectConductDetail/{id}',           'ProjectController@projectConductDetail');      //查看实施项目信息
    Route::get('/projectCompletedDetail/{id}',        'ProjectController@projectCompletedDetail');    //查看竣工项目工程信息
    Route::get('/projectTerminationDetail/{id}',      'ProjectController@projectTerminationDetail');    //查看终止项目工程信息

    Route::get('/createdProjectEngin/{id}',           'ProjectController@createdProjectEngin');    //添加项目下的子工程
    Route::post('/postProjectEngin/{id}',             'ProjectController@postProjectEngin');    //保存添加项目下的子工程
    Route::get('/editProjectEngin/{id}',              'ProjectController@editProjectEngin');    //添加项目下的子工程
    Route::get('/projectEnginDetail/{id}',            'ProjectController@projectEnginDetail');    //项目下的子工程详情

    Route::post('/editEnginStatus',                   'ProjectController@editEnginStatus');    //变更工程状态

    Route::post('/uploadProjectFile/{id}',            'ProjectController@uploadProjectFile');    //上传项目文件
    Route::get('/projectFileDownload/{id}',           'ProjectController@projectFileDownload');   //下载项目文件

});


//建筑设计管理类的控制组 需要登录
Route::group(['prefix' => 'architectural','namespace' => 'Architectural','middleware' => ['auth','active_status']], function () {
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
    Route::get('/material_detail/{id}',     'ArchitecturalController@materialDetail');          //查看建筑工程子系统材料信息
    Route::post('/post_edit_material/{id}',     'ArchitecturalController@postEditMaterial'); //提交建筑工程子系统材料信息
    Route::get('/getMaterialList/{id}',     'ArchitecturalController@getMaterialList'); //查询建筑工程子系统材料信息


    //工程中建筑设计管理
    Route::get('/enginStart/{id?}',                     'EnginneringController@enginStart');      //洽谈项目首页 工程中建筑设计
    Route::get('/enginConduct/{id?}',                   'EnginneringController@enginConduct');    //实施项目列表 工程中建筑设计
    Route::get('/enginCompleted/{id?}',                 'EnginneringController@enginCompleted');  //竣工项目首页 工程中建筑设计
    Route::get('/enginTermination/{id?}',               'EnginneringController@enginTermination'); //终止项目首页 工程中建筑设计

    Route::get('/enginStartDetail/{id}/{programme_id}', 'EnginneringController@enginStartDetail');    //工程设计方案详情
    Route::get('/enginConductDetail/{id}/{programme_id}','EnginneringController@enginConductDetail');      //查看实施工程方案设计详情
    Route::get('/enginCompletedDetail/{id}/{programme_id}', 'EnginneringController@enginCompletedDetail');    //查看竣工工程方案设计信息
    Route::get('/enginTerminationDetail/{id}/{programme_id}', 'EnginneringController@enginTerminationDetail');    //查看终止工程方案设计信息

    Route::get('/editEnginParam/{id}',             'EnginneringController@editEnginParam');    //配置工程设计参数
    Route::post('/postEditEnginParam/{id}',        'EnginneringController@postEditEnginParam');    //提交配置工程设计参数
    Route::get('/enginParamDetail/{id}',           'EnginneringController@enginParamDetail');     //查看工程设计参数详情

    Route::get('/enginProjectList',                'EnginneringController@enginProjectList');     //工程设计中项目列表
    Route::post('/postEnginUserInfo/{id}',        'EnginneringController@postEnginUserInfo');    //提交配置工程设计人员信息

    Route::get('/getEnginArchList/{id}',                'EnginneringController@getEnginArchList');     //获取指定工程配置的工况信息

    //工程方案管理
    Route::get('/enginProgrammeManage/{id}',                'ProgrammeController@enginProgrammeManage');     //工程方案管理界面
    Route::get('/editEngin/{id}/{programme_id?}',           'ProgrammeController@editEngin');      //编辑工程设计详情
    Route::post('/postEditEngin/{id}',                      'ProgrammeController@postEditEngin');  //提交编辑工程设计详情
    Route::post('/updateEnginProgrammeBudgetStatus/{id}/{programmeid}',   'ProgrammeController@updateEnginProgrammeBudgetStatus');  //提交编辑工程设计详情

    Route::get('/editConductEngin/{id}',                'EnginneringController@editConductEngin');      //编辑实施工程设计详情
    Route::post('/postConductEngin/{id}',               'EnginneringController@postConductEngin');      //提交编辑实施工程设计详情

    Route::get('/getProgrammeList/{id}',               'ProgrammeController@getProgrammeList');      //可提交实施的方案列表

});

//基础信息管理类的控制组 需要登录
Route::group(['prefix' => 'base','namespace' => 'Base','middleware' => ['auth','active_status']], function () {
    //公告管理
    Route::get('/notice_list',                   'BaseController@noticeList');      //公告列表
    Route::get('/add_notice',                   'BaseController@addNotice');      //添加公告
    Route::get('/edit_notice/{id}',             'BaseController@editNotice');      //编辑公告
    Route::post('/post_add_notice',          'BaseController@postAddNotice');      //提交新增公告
    Route::post('/post_edit_notice/{id}',         'BaseController@postEditNotice');      //提交编辑公告
    Route::get('/getNoticeInfo',                 'BaseController@getNoticeInfo');      //公告列表所有人能看的页面
    Route::post('/delete_notice/{id}',             'BaseController@deleteNotice');      //删除公告

});

//供应商品牌管理类的控制组 需要登录
Route::group(['prefix' => 'supplier','namespace' => 'SupplierBrand','middleware' => ['auth','active_status']], function () {
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
Route::group(['prefix' => 'material','namespace' => 'Material','middleware' => ['auth','active_status']], function () {
    //部品部件管理
    Route::get('/materialList',                   'MaterialController@materialList');      //部品部件列表
    Route::get('/editMaterial/{id}',              'MaterialController@editMaterial');      //编辑部品部件
    Route::post('/postEditMaterial/{id}',          'MaterialController@postEditMaterial');      //提交编辑部品部件
    Route::get('/materialDetail/{id}',              'MaterialController@materialDetail');      //部品部件详情
    Route::post('/uploadMaterialFile/{id}',       'MaterialController@uploadMaterialFile');      //保存部品部件图片


});

//客户类的控制组 需要登录
Route::group(['prefix' => 'customer','namespace' => 'Customer','middleware' => ['auth','active_status']], function () {
    //客户管理
    Route::get('/customerList',                   'CustomerController@customerList');             //客户列表
    Route::post('/postAddCustomer',               'CustomerController@postAddCustomer');        //提交新增客户信息
    Route::post('/postEditCustomer/{id}',         'CustomerController@postEditCustomer');      //提交编辑客户信息
    Route::post('/postDeleteCustomer/{id}',         'CustomerController@postDeleteCustomer');  //删除客户信息

});

//预算管理类的控制组 需要登录
Route::group(['prefix' => 'budget','namespace' => 'Budget','middleware' => ['auth','active_status']], function () {
    Route::get('/budgetStart/{id?}',                     'BudgetController@budgetStart');      //洽谈工程列表
    Route::get('/budgetConduct/{id?}',                   'BudgetController@budgetConduct');    //实施工程列表
    Route::get('/budgetCompleted/{id?}',                 'BudgetController@budgetCompleted');  //竣工工程列表
    Route::get('/budgetTermination/{id?}',               'BudgetController@budgetTermination'); //终止工程列表

    Route::get('/editStartBudget/{id}/{programme_id}',             'BudgetController@editStartBudget');             //编辑工程预算详情
    Route::get('/budgetStartDetail/{id}/{programme_id}',           'BudgetController@budgetStartDetail');      //洽谈工程预算详情
    Route::post('/postEditBudget/{id}/{programme_id}',             'BudgetController@postEditBudget');         //提交编辑工程预算详情
    Route::post('/examineStartBudget/{id}/{programme_id}', 'BudgetController@examineStartBudget');         //审核洽谈工程预算
    Route::post('/updateProjectStatus/{id}',         'BudgetController@updateProjectStatus');  //提交编辑项目状态

    Route::get('/editConductBudget/{id}/{programme_id}',           'BudgetController@editConductBudget');      //编辑实施工程预算详情
    Route::get('/budgetConductDetail/{id}/{programme_id}',         'BudgetController@budgetConductDetail');      //查看实施工程预算详情
    Route::post('/examineConductBudget/{id}/{status}','BudgetController@examineConductBudget');         //审核实施工程预算

    Route::get('/budgetCompletedDetail/{id}/{programme_id}',       'BudgetController@budgetCompletedDetail');    //查看竣工工程预算信息
    Route::get('/budgetTerminationDetail/{id}/{programme_id}',     'BudgetController@budgetTerminationDetail');    //查看终止项目工程预算信息
    Route::get('/budgetDownload/{id}/{programme_id}',             'BudgetController@budgetDownload');         //导出预算单 （能够查询的预算单都能导出）

    Route::get('budgetProjectList',                 'BudgetController@budgetProjectList');         //预算项目列表


});
//预算管理类的控制组 不需要登录
Route::group(['prefix' => 'budget','namespace' => 'Budget'], function () {
    Route::get('/getEnginMaterialList/{id}',        'BudgetController@getEnginMaterialList');   //获取工程下面的材料信息列表
    Route::get('/getMaterialBrandList/{id}',        'BudgetController@getMaterialBrandList');   //获取工程下面的材料信息和品牌列表

});

//报价管理类的控制组 需要登录
Route::group(['prefix' => 'offer','namespace' => 'Offer','middleware' => ['auth','active_status']], function () {
    Route::get('/offerStart/{id?}',                     'OfferController@offerStart');      //洽谈工程列表
    Route::get('/offerConduct/{id?}',                   'OfferController@offerConduct');    //实施工程列表
    Route::get('/offerCompleted/{id?}',                 'OfferController@offerCompleted');  //竣工工程列表
    Route::get('/offerTermination/{id?}',               'OfferController@offerTermination'); //终止工程列表

    Route::get('/editStartOffer/{id}/{programme_id}',             'OfferController@editStartOffer');             //编辑工程报价详情
    Route::get('/offerStartDetail/{id}/{programme_id}',           'OfferController@offerStartDetail');      //洽谈工程报价详情
    Route::post('/postEditOffer/{id}/{programme_id}',             'OfferController@postEditOffer');         //提交编辑工程报价详情
    Route::post('/examineStartOffer/{id}/{programme_id}','OfferController@examineStartOffer');         //审核洽谈工程报价
    Route::post('/updateProjectStatus/{id}/{programme_id}',        'OfferController@updateProjectStatus');  //提交编辑项目状态

    Route::get('/editConductOffer/{id}/{programme_id}',           'OfferController@editConductOffer');      //编辑实施工程报价详情
    Route::get('/offerConductDetail/{id}/{programme_id}',         'OfferController@offerConductDetail');      //查看实施工程报价详情
    Route::post('/examineConductOffer/{id}/{programme_id}','OfferController@examineConductOffer');         //审核实施工程报价

    Route::get('/offerCompletedDetail/{id}/{programme_id}',       'OfferController@offerCompletedDetail');    //查看竣工工程报价信息
    Route::get('/offerTerminationDetail/{id}/{programme_id}',     'OfferController@offerTerminationDetail');    //查看终止项目工程报价信息

    Route::get('/offerDownload/{id}/{programme_id}',             'OfferController@offerDownload');         //导出报价
    Route::get('/offerProjectList',               'OfferController@offerProjectList');         //报价项目列表

});

//采购管理类的控制组 不需要登录
Route::group(['prefix' => 'purchase','namespace' => 'Purchase','middleware' => ['auth','active_status']], function () {
    Route::get('/purchaseConduct/{id?}',              'PurchaseController@purchaseConduct');    //实施项目采购列表

    Route::get('/editPurchase/{id}',            'PurchaseController@editPurchase');    //实施项目采购列表
    Route::post('/updateProjectStatus/{id}',    'PurchaseController@updateProjectStatus');    //更改项目状态
    Route::post('/postEditPurchase/{id}',       'PurchaseController@postEditPurchase');    //提交采购状态信息

    Route::get('/purchaseBatchManage/{id}',     'PurchaseController@purchaseBatchManage'); //实施项目批次管理
    Route::post('/postEditPurchaseBatch/{id}',  'PurchaseController@postEditPurchaseBatch');  //提交采购批次信息

    Route::get('/purchaseOrderManage/{id}',     'PurchaseController@purchaseOrderManage');  //实施项目订单管理
    Route::get('/createPurchaseOrder/{id}',     'PurchaseController@createPurchaseOrder');  //实施项目创建采购单
    Route::post('/postAddPurchaseOrder/{id}',     'PurchaseController@postAddPurchaseOrder');  //保存采购单信息
    Route::post('/examinePurchaseOrder/{id}/{status}','PurchaseController@examinePurchaseOrder');  //更改采购单审核状态
    Route::post('/deletePurchaseOrder/{id}',     'PurchaseController@deletePurchaseOrder');  //删除采购单
    Route::get('/editPurchaseOrder/{id}',        'PurchaseController@editPurchaseOrder');    //编辑采购单
    Route::post('/postEditPurchaseOrder/{id}',    'PurchaseController@postEditPurchaseOrder');    //保存编辑的采购单
    Route::get('/purchaseOrderDetail/{id}',        'PurchaseController@purchaseOrderDetail');    //采购单详情
    Route::get('/getSupplierOrMaterial/{batch_id}/{id}', 'PurchaseController@getSupplierOrMaterial'); //单个批次下的供应商信息和材料采购信息

    Route::get('/purchaseLogisticsManage/{id}',     'PurchaseController@purchaseLogisticsManage'); //实施项目物流管理
    Route::post('/examinePurchaseLogis/{id}/{status}','PurchaseController@examinePurchaseLogis');  //更改采购单审核状态
    Route::get('/editPurchaseLogis/{id}',           'PurchaseController@editPurchaseLogis');        //编辑物流管理
    Route::post('/postEditPurchaselogis/{id}/',     'PurchaseController@postEditPurchaselogis');    //提交物流管理信息
    Route::get('/purchaseLogisDetail/{id}',           'PurchaseController@purchaseLogisDetail');    //查询物流信息

    Route::get('/purchaseCompleted/{id?}',                     'PurchaseController@purchaseCompleted');   //竣工项目采购列表
    Route::get('/purchaseCompletedBatchManage/{id}',     'PurchaseController@purchaseCompletedBatchManage'); //竣工项目批次管理
    Route::get('/purchaseCompletedOrderManage/{id}',     'PurchaseController@purchaseCompletedOrderManage'); //竣工项目批次管理
    Route::get('/purchaseCompletedLogisticsManage/{id}', 'PurchaseController@purchaseCompletedLogisticsManage'); //竣工项目物流管理

    Route::get('/purchaseConductProjectList',             'PurchaseController@purchaseConductProjectList');   // 实施项目采购列表
    Route::get('/purchaseCompletedProjectList',           'PurchaseController@purchaseCompletedProjectList');   //竣工项目采购列表

    Route::get('/createdRelationMaterial/{batchid}',         'PurchaseController@createdRelationMaterial');   //创建关联材料
    Route::post('/saveRelationMaterial/{batchid}',           'PurchaseController@saveRelationMaterial');         //保存关联材料
    Route::get('/purchaseRelationMaterialDetail/{batchid}',  'PurchaseController@purchaseRelationMaterialDetail');   //创建关联材料

    Route::get('/purchaseOrderSendSupplier/{id}',        'PurchaseController@purchaseOrderSendSupplier');    //采购单发送供应商页面
    Route::post('/purchaseOrderSendToSupplier/{id}',        'PurchaseController@purchaseOrderSendToSupplier');    //采购单发送供应商


});
//测试下载文档接口
Route::group(['prefix' => 'test','namespace' => 'Test'], function () {

    Route::get('/testPdf',     'TestController@testPdf'); //测试pdf文件
    Route::get('/sendemail',     'TestController@sendemalifile'); //测试pdf文件
    Route::get('/encode_file_contents',     'TestController@encode_file_contents'); //测试文件加密
    Route::get('/encryptFile',     'EncryptionController@encryptFile'); //批量文件加密

});

//财务管理类的控制组
Route::group(['prefix' => 'finance','namespace' => 'Finance','middleware' => ['auth','active_status']], function () {
    Route::get('/financeStart',                 'FinanceController@financeStart');    //洽谈项目财务列表
    Route::post('/postEditFinanceStart/{id}',   'FinanceController@postEditFinanceStart');    //洽谈项目财务列表
    Route::get('/financeConduct',               'FinanceController@financeConduct');    //实施项目财务列表
    Route::get('/financeCompleted',             'FinanceController@financeCompleted');    //竣工项目财务列表
    Route::get('/editFinanceInfo/{id}',         'FinanceController@editFinanceInfo');    //编辑财务表数据
    Route::post('/postEditFinanceInfo/{id}',    'FinanceController@postEditFinanceInfo');    //提交编辑数据
    Route::get('/getFinanceInfo/{id}',         'FinanceController@getFinanceInfo');    //查看财务表数据


});
//项目施工的控制组
Route::group(['prefix' => 'progress','namespace' => 'Progress','middleware' => ['auth','active_status']], function () {
    Route::get('/progressConductProjectList',           'ProgressController@progressConductProjectList');    //实施项目施工列表
    Route::get('/progressCompletedProjectList',         'ProgressController@progressCompletedProjectList');    //实施项目竣工列表

    Route::get('/progressConduct/{id?}',                'ProgressController@progressConduct');    //实施项目施工工程列表
    Route::get('/progressCompleted/{id?}',              'ProgressController@progressCompleted');    //实施项目竣工工程列表

    Route::get('/editProgress/{id}',                    'ProgressController@editProgress');    //指定施工安装负责人
    Route::post('/postEditProgress/{id}',               'ProgressController@postEditProgress');    //指定施工安装负责人
    Route::post('/updateProjectStatus/{id}',            'ProgressController@updateProjectStatus');    //更改项目状态

    Route::get('/editProgressConstrucManage/{id}',      'ProgressController@editProgressConstrucManage');    //编辑施工组织统筹计划
    Route::get('/progressConstrucManageDetail/{id}',    'ProgressController@progressConstrucManageDetail'); //查看施工组织统筹计划
    Route::get('/progressMaterialManage/{id}',          'ProgressController@progressMaterialManage');    //现场材料管理
    Route::get('/progressActualManageDetail/{id}',      'ProgressController@progressActualManageDetail');    //施工进度管理详情
    Route::get('/editProgressActualManage/{id}',        'ProgressController@editProgressActualManage');    //编辑施工进度管理详情

    Route::get('/porgressParamsList',                    'ProgressController@porgressParamsList');    //施工参数配置
    Route::get('/editProgressParams/{id}',               'ProgressController@editProgressParams');    //编辑施工参数配置
    Route::get('/progressParamsDetail/{id}',             'ProgressController@progressParamsDetail');    //施工参数配置详情
    Route::post('/postEditProgressParams/{id}',          'ProgressController@postEditProgressParams');  //保存施工参数配置

    Route::get('/getProgressArchList/{id}',             'ProgressController@getProgressArchList');       //获取指定子系统工程安装步骤

    Route::post('/postProgressConstrucManage/{id}',     'ProgressController@postProgressConstrucManage');  //保存施工统筹计划数据

    Route::get('/progressMaterialDetail/{id}',            'ProgressController@progressMaterialDetail');       //查看现场材料管理信息
    Route::get('/editProgressMaterial/{id}',              'ProgressController@editProgressMaterial');        //编辑现场材料管理
    Route::post('/postProgressMaterial/{id}',             'ProgressController@postProgressMaterial');       //提交现场材料管理信息
    Route::post('/postProgressAcutalManage/{id}',         'ProgressController@postProgressAcutalManage');   //提交施工进度管理

});
