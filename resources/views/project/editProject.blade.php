@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
    <script src="/js/distpicker.data.js"></script>
    <script src="/js/distpicker.js"></script>
    <script src="/js/main.js"></script>
    <style type="text/css">
        .layui-form input[type=checkbox], .layui-form input[type=radio], .layui-form select {
            display: inline;
        }
        .pro-title{
            background: #e6e6e6;
        }
        .layui-table td, .layui-table th {
            border: solid 1px #ccc;
        }
        select{
            width: auto;
        }
        .radio, .checkbox {
            min-height: 20px;
            float: left;
            padding:0 20px;
        }
    </style>
<div class="left-sidebar">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        编辑项目<a id="dynamicTable"></a>
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">

                        <form method="post" action="/project/postEditProject/{{$id}}">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6"><span class="btn btn-info">项目概况</span>
                                <input type="hidden" name="statustype" value="{{$statustype}}">
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td  class="pro-title">项目名称</td>
                                <td colspan="2">
                                    <input type="text"  name="project_name" class="span8  notempty"  value="{{$project->project_name}}" lay-skin="primary" >
                                </td>
                                <td  class="pro-title">项目所在国</td>
                                <td colspan="2">
                                    @if(isset($project_country))
                                        <select name="country" id="type" class="span10 notempty" style="min-width: 80px;">
                                            @foreach($project_country as $v)
                                                @if($v == $project->country)
                                                    <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                @else
                                                    <option value="{{$v}}" >{{$v}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <td  class="pro-title">项目地点(国内)</td>
                                <td colspan="2">
                                    <div data-toggle="distpicker" id="distpicker1">
                                        <select name="province" data-province="{{$project->province}}"></select>
                                        <select name="city" data-city="{{$project->city}}"></select>
                                        <select name="county" data-district="{{$project->county}}"></select>
                                    </div>
                                 </td>
                                <td  class="pro-title">详情地址(街道/乡镇/村)</td>
                                <td colspan="2">
                                    <input type="text"  name="address_detail" class="span12"  value="{{ $project->address_detail }}" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">项目地点(国外)</td>
                                <td colspan="5">
                                    <input type="text"  name="foreign_address" class="span8"  value="{{ $project->foreign_address }}" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">项目种类（用途）</td>
                                <td>
                                    @if(isset($project_type))
                                        <select name="type" id="type" class="span10 notempty" style="min-width: 80px;">
                                            @foreach($project_type as $v)
                                                @if($v == $project->type)
                                                    <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                @else
                                                    <option value="{{$v}}" >{{$v}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    @endif
                                </td>
                                <td class="pro-title">项目来源</td>
                                <td>
                                    @if(isset($project_source))
                                        <select name="source" id="source" class="span10 notempty" style="min-width: 80px;">
                                            @foreach($project_source as $v)
                                                @if($v == $project->source)
                                                    <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                @else
                                                    <option value="{{$v}}" >{{$v}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    @endif
                                </td>
                                <td class="pro-title">项目所属阶段</td>
                                <td>
                                    @if(isset($project_stage))
                                        <select name="stage" id="stage" class="span10 notempty" style="min-width: 80px;">
                                            @foreach($project_stage as $v)
                                                @if($v == $project->stage)
                                                    <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                @else
                                                    <option value="{{$v}}" >{{$v}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">计划建造日期</td>
                                <td>
                                    <div class="layui-inline">
                                        <div class="layui-input-inline">
                                            <input type="text" name="plan_creat_at" value="{{ $project->plan_creat_at }}" class="layui-input span8 notempty" id="test1" placeholder="yyyy-MM-dd">
                                        </div>
                                    </div>
                                </td>
                                <td class="pro-title">项目工期（天）</td>
                                <td>
                                    <input type="text"  name="project_limit_time" class="span8 notempty"  onclick="key(this)"  value="{{ $project->project_limit_time }}"  onclick="key(this)" lay-skin="primary" >
                                </td>
                                <td class="pro-title">洽谈指数</td>
                                <td>
                                    <select name="success_level" id="success_level" class="input-medium search-query notempty" style="min-width: 80px;color:red">
                                        @if($project->success_level ==1) <option value="1" selected="selected">★</option> @else <option value="1">★</option> @endif
                                        @if($project->success_level ==2) <option value="2" selected="selected">★★</option> @else <option value="2">★★</option> @endif
                                        @if($project->success_level ==3) <option value="3" selected="selected">★★★</option> @else <option value="3">★★★</option> @endif
                                        @if($project->success_level ==4) <option value="4" selected="selected">★★★★</option> @else <option value="4">★★★★</option> @endif
                                        @if($project->success_level ==5) <option value="5" selected="selected">★★★★★</option> @else <option value="5">★★★★★</option> @endif
                                    </select>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="6"><span class="btn btn-info">建设场地概况</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">场地自然条件</td>
                                <td>
                                    @if(isset($project_environment))
                                        <select name="environment" id="environment" class="span10 notempty" style="min-width: 80px;">
                                            @foreach($project_environment as $v)
                                                @if($v == $project->environment)
                                                    <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                @else
                                                    <option value="{{$v}}" >{{$v}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    @endif
                                </td>
                                <td class="pro-title">场地交通条件</td>
                                <td>
                                    @if(isset($project_traffic))
                                        <select name="traffic" id="traffic" class="span10 notempty" style="min-width: 80px;">
                                            @foreach($project_traffic as $v)
                                                @if($v == $project->traffic)
                                                    <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                @else
                                                    <option value="{{$v}}" >{{$v}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    @endif
                                </td>
                                <td class="pro-title">材料存储条件</td>
                                <td>
                                    @if(isset($project_material_storage))
                                        <select name="material_storage" id="material_storage" class="span10 notempty" style="min-width: 80px;">
                                            @foreach($project_material_storage as $v)
                                                @if($v == $project->material_storage)
                                                    <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                @else
                                                    <option value="{{$v}}" >{{$v}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    @endif
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">夏季平均气温（摄氏度）</td>
                                <td>
                                    <input type="text"  name="summer_avg_temperature" class="span8 notempty"  value="{{$project->summer_avg_temperature}}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">夏季最高气温（摄氏度）</td>
                                <td>
                                    <input type="text"  name="summer_max_temperature" class="span8 notempty"  value="{{$project->summer_max_temperature}}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">冬季平均气温（摄氏度）</td>
                                <td>
                                    <input type="text"  name="winter_avg_temperature" class="span8 notempty"  value="{{$project->winter_avg_temperature}}" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">冬季最低气温（摄氏度）</td>
                                <td>
                                    <input type="text"  name="winter_min_temperature" class="span8 notempty"  value="{{$project->winter_min_temperature}}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">场地尺寸：长（m）</td>
                                <td>
                                    <input type="text"  name="project_area_length" class="span8 notempty" value="{{$project->project_area_length}}" value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">场地尺寸：宽（m）</td>
                                <td>
                                    <input type="text"  name="project_area_width" class="span8 notempty" value="{{$project->project_area_width}}" value="" lay-skin="primary" >
                                </td>

                            </tr>

                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="6"><span class="btn btn-info">客户信息</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">客户类型</td>
                                <td>
                                    @if(isset($customer_type))
                                        <select name="customer_type" id="customer_type" class="span10 notempty" style="min-width: 80px;">
                                            @foreach($customer_type as $v)
                                                @if($v == $project->customer_type)
                                                    <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                @else
                                                    <option value="{{$v}}" >{{$v}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    @endif
                                </td>
                                <td class="pro-title">客户名称</td>
                                <td>
                                    <input type="text"  name="customer" class="span8 notempty"  value="{{ $project->customer }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">客户地址</td>
                                <td>
                                    <input type="text"  name="customer_address" class="span8 notempty"  value="{{ $project->customer_address }}" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">联系方式（手机）</td>
                                <td>
                                    <input type="text"  name="customer_telephone" class="span8 notempty"  value="{{ $project->customer_telephone }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">座机</td>
                                <td>
                                    <input type="text"  name="customer_phone" class="span8"  value="{{ $project->customer_phone }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">电子邮箱</td>
                                <td>
                                    <input type="text"  name="customer_email" class="span8"  value="{{ $project->customer_email }}" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">客户需求</td>
                                <td  colspan="5">
                                    <label class="checkbox">
                                        @if($project->is_design ==1)
                                        <input type="checkbox" name="is_design" checked="checked" value="1">
                                        @else
                                        <input type="checkbox" name="is_design" value="1">
                                        @endif
                                        设计/咨询
                                    </label>
                                    <label class="checkbox">
                                        @if($project->is_supply ==1)
                                        <input type="checkbox" name="is_supply" checked="checked" value="1">
                                        @else
                                            <input type="checkbox" name="is_supply" value="1">
                                        @endif
                                        材料供应
                                    </label>
                                    <label class="checkbox">
                                        @if($project->is_guidance ==1)
                                            <input type="checkbox" name="is_guidance" checked="checked" value="1">
                                        @else
                                            <input type="checkbox" name="is_guidance" value="1">
                                        @endif
                                        施工指导
                                    </label>
                                    <label class="checkbox">
                                        @if($project->is_installation ==1)
                                            <input type="checkbox" name="is_installation" checked="checked" value="1">
                                        @else
                                            <input type="checkbox" name="is_installation" value="1">
                                        @endif
                                        施工安装
                                    </label>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6"><span class="btn btn-info">项目子工程信息</span></th>
                                <th colspan="3"><span class="title" style="float: right;">
                                <a class="btn btn-success" onclick="add_zigongcheng()"><i class="layui-icon">添加子工程 +</i></a>
                                    </span>
                                </th>
                            </tr>
                            </thead>
                            <tbody id="zigongcheng">
                            <tr>
                                <td class="pro-title">子工程名称</td>
                                <td  class="pro-title">建筑总面积（m²）</td>
                                <td class="pro-title">房屋占地尺寸:长(m)</td>
                                <td class="pro-title">房屋占地尺寸:宽(m)</td>
                                <td class="pro-title">建筑总层数</td>
                                <td class="pro-title">建筑总高度（m）</td>
                                <td class="pro-title">室内净高（最小）（m）</td>
                                <td class="pro-title">建筑物数量（栋）</td>
                                <td>操作</td>

                            </tr>
                            @foreach($engineering as $engin)
                            <tr >
                                <td>
                                    <input type="hidden"  name="engineering_id[]" class="span12 notempty "  value="{{ $engin->id }}" lay-skin="primary" >
                                    <input type="text"  name="engineering_name[]" class="span12 notempty"  value="{{ $engin->engineering_name }}" lay-skin="primary" >
                                </td>
                                <td>
                                    <input type="text"  name="build_area[]" class="span12  notempty"  onclick="key(this)" value="{{ $engin->build_area }}" lay-skin="primary" >
                                </td>
                                <td>
                                    <input type="text"  name="build_length[]" class="span12  notempty"  onclick="key(this)" value="{{ $engin->build_length }}" lay-skin="primary" >
                                </td>
                                <td>
                                    <input type="text"  name="build_width[]" class="span12  notempty"  onclick="key(this)" value="{{ $engin->build_width }}" lay-skin="primary" >
                                </td>

                                <td>
                                    <input type="text"  name="build_floor[]" class="span12 notempty"  onclick="key(this)" value="{{ $engin->build_floor }}" lay-skin="primary" >
                                </td>
                                <td>
                                    <input type="text"  name="build_height[]" class="span12 notempty"   onclick="key(this)" value="{{ $engin->build_height }}" lay-skin="primary" >
                                </td>
                                <td>
                                    <input type="text"  name="indoor_height[]" class="span12 notempty"  onclick="key(this)" value="{{ $engin->indoor_height }}" lay-skin="primary" >
                                </td>
                                <td>
                                    <input type="text"  name="build_number[]" class="span12 notempty"  onclick="key(this)" value="{{ $engin->build_number }}" lay-skin="primary" >
                                </td>
                                <td></td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="6"><span class="btn btn-info">客户方负责人信息</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">负责人姓名（客户方）</td>
                                <td>
                                    <input type="text"  name="customer_leader" class="span8  notempty"  value="{{ $project->customer_leader }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">负责人职位（客户方）</td>
                                <td>
                                    <input type="text"  name="customer_job" class="span8 notempty"  value="{{ $project->customer_job }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">负责人电话（客户方）</td>
                                <td>
                                    <input type="text"  name="customer_contact" class="span8 notempty"  value="{{ $project->customer_contact }}" lay-skin="primary" >
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="10"><span class="btn btn-info">项目负责人信息（我方）</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">项目总负责人</td>
                                <td>
                                    <select name="project_uid" id="project_uid" class="input-medium search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 2)
                                                @if($u->id == $project->project_uid)
                                                    <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                                @else
                                                    <option value="{{$u->id}}" >{{$u->name}}</option>
                                                @endif
                                            @endif
                                        @endforeach
                                    </select>
                                </td>

                                <td class="pro-title">销售总负责人</td>
                                <td>
                                    <select name="sale_uid" id="sale_uid" class="input-medium search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 2)
                                                @if($u->id == $project->sale_uid)
                                                    <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                                @else
                                                    <option value="{{$u->id}}" >{{$u->name}}</option>
                                                @endif
                                            @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td class="pro-title">设计总负责人</td>
                                <td>
                                    <select name="design_uid" id="design_uid" class="input-medium search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                        @if($u->department_id == 6)
                                            @if($u->id == $project->design_uid)
                                            <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                            @else
                                            <option value="{{$u->id}}" >{{$u->name}}</option>
                                            @endif
                                        @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td class="pro-title">预算报价总负责人</td>
                                <td>
                                    <select name="budget_uid" id="budget_uid" class="input-medium search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                        @if($u->department_id == 3)
                                            @if($u->id == $project->budget_uid)
                                                <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                            @else
                                                <option value="{{$u->id}}" >{{$u->name}}</option>
                                            @endif
                                        @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td class="pro-title">合约总负责人</td>
                                <td>
                                    <select name="technical_uid" id="technical_uid" class="input-medium search-query  notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                        @if($u->department_id == 8)
                                            @if($u->id == $project->technical_uid)
                                                <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                            @else
                                                <option value="{{$u->id}}" >{{$u->name}}</option>
                                            @endif
                                        @endif
                                        @endforeach
                                    </select>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="3"><span class="btn btn-info">项目文件</span>
                                        <a class="btn btn-success"  onclick="show_img()">
                                            <i class="layui-icon" id="show_img">预览图片信息</i> >>
                                        </a>

                                    </th>
                                    <th colspan="2">
                                        <span class="title" style="float: right;">
                                            <a class="btn btn-success" id="addProjectFileID" attr="1000" onclick="add_project_file()"><i class="layui-icon">添加文件 +</i></a>
                                        </span>
                                    </th>
                                </tr>
                                </thead>
                                <tbody id="projectFileList">
                                <tr>
                                    <td class="pro-title">序号</td>
                                    <td class="pro-title">文件类型</td>
                                    <td class="pro-title">文件</td>
                                    <td class="pro-title">文件描述</td>
                                    <td class="pro-title">操作</td>
                                </tr>

                                @foreach($project_file as $k=>$file)
                                <tr>
                                    <td class="pro-title">{{++$k}}</td>
                                    <td>
                                        <input type="hidden" id="project_file_id"  name="project_file_id[]" value="{{$file->id}}"  >
                                        @if(isset($project_file_type))
                                            <select name="file_type[]" id="file_type" class="span10 notempty" style="min-width: 80px;">
                                                @foreach($project_file_type as $v)
                                                    @if($v == $file->file_type)
                                                        <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                    @else
                                                        <option value="{{$v}}" >{{$v}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        @endif
                                    </td>
                                    <td>
                                        <input type="hidden" id="project_file{{$k}}" class="notempty" name="project_file[]" value="{{$file->file_url}}" placeholder="logo" >
                                        <input class="span8" type="file" id="uploadfile{{$k}}" name="uploadfile[]"  value="" placeholder="logo" onchange="submitFile({{$k}})">
                                        <div id="uploadfiletitle{{$k}}">
                                            <a href="/project/projectFileDownload/{{$file->file_key}}">
                                                {{$file->uploadfile}}(日期：{{$file->created_at}})
                                            </a>
                                        </div>
                                    </td>
                                    <td>
                                        <input type="text"  name="project_file_name[]" class="span12 notempty"  value="{{$file->file_name}}" lay-skin="primary" >
                                    </td>
                                    <td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>
                                </tr>

                                @endforeach
                                </tbody>
                            </table>
                            <div style="color: red">注：文件必须是png、jpg、gif、pdf、doc、dwg、rar、zip 格式</div>
                            <div class="clearfix"></div>
                        <div class="layui-form-item" style="float: right;clear: left">
                            <label for="L_repass" class="layui-form-label"></label>
                            <button class="btn btn-success" lay-filter="add" type="submit" lay-submit="" onclick='return form_submit()'>确认/保存</button>
                        </div>
                        <div class="layui-form-item" style="float: right;clear: left">
                            <a href="javascript:history.go(-1)">
                                <label for="L_repass" class="layui-form-label"></label>
                                <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                            </a>
                        </div>
                        <div class="clearfix">
                        </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>

    </div>
</div>


    <script>
        //一般直接写在一个js文件中
        //设置省市县默认空
        $("#distpicker1").distpicker({
            autoSelect: false
        });
        //删除子工程
        function deleteTrRow(tr){
            $(tr).parent().parent().remove();
        }
        //添加事件
        function add_zigongcheng() {
            intid =parseInt(Math.random() * (1000000 )+100);
            str ='<tr > <td class="pro-title"><input type="hidden"  name="engineering_id[]" value="0" class="span8 notempty " lay-skin="primary" >'+
                ' <input type="text"  name="engineering_name[]" class="span12 notempty "  value="" lay-skin="primary" > </td>'+
                '<td> <input type="text"  name="build_area[]" class="span12 notempty"  onclick="key(this)" value="" lay-skin="primary" > </td>'+
                '<td> <input type="text"  name="build_length[]" class="span12 notempty" onclick="key(this)"  value="" lay-skin="primary" > </td>'+
                '<td> <input type="text"  name="build_width[]" class="span12 notempty" onclick="key(this)"  value="" lay-skin="primary" > </td>'+
                '<td> <input type="text"  name="build_floor[]" class="span12 notempty"  onclick="key(this)" value="" lay-skin="primary" > </td>'+
                '<td> <input type="text"  name="build_height[]" class="span12 notempty"  onclick="key(this)" value="" lay-skin="primary" > </td>'+
                '<td><input type="text"  name="indoor_height[]" class="span12 notempty"  onclick="key(this)" value="" lay-skin="primary" ></td>'+
                '<td><input type="text"  name="build_number[]" class="span12 notempty"  onclick="key(this)" value="" lay-skin="primary" ></td>'+
                '<td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>'+
            '</tr>';
            $("#zigongcheng").append(str);
            //点击文本框设置背景色
            $(".notempty").focus(function(){
                $(this).css("background-color","#fff");
            });
        }
        //提交数据时验证数据信息
        function form_submit(){
            $('input').css('background','#fff');
            $('.notempty').css('background','#fff');
            var sum=0;
            $("input.notempty").each(function(){
                if($(this).val()){
                }else if($(this).val() ==0){
                    $(this).css('background','orange');
                    sum=1;
                }else{
                    $(this).css('background','orange');
                    sum=1;
                }
            });

            $("select.notempty").each(function(){
                console.log($(this).val())
                val =$(this).val();
                if(val == '' || val =='0'){
                    $(this).css('background','orange');
                    sum=1;
                }
            });

            if(sum == 1){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.msg('有信息没有填写完全，请填写完成后，再提交。');
                });
                return false;
            }
            return true;
        }
        //点击文本框设置背景色
        $(".notempty").focus(function(){
            $(this).css("background-color","#fff");
        });
        //日期選擇
        layui.use('laydate', function() {
            var laydate = layui.laydate;

            //常规用法
            laydate.render({
                elem: '#test1'
            });
        });
        function submitStatus() {
            var stat =$('#project_status').val();
            if(stat == '0'){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.msg('当前项目已是洽谈状态，无需更改');
                });
                return false;
            }
            return true;
        }
        //点击只能输入数字
        function key(th){
            $(th).keyup(function(){
                $(this).val($(this).val().replace(/[^0-9.]/g,''));
            }).bind("paste",function(){  //CTR+V事件处理
                $(this).val($(this).val().replace(/[^0-9.]/g,''));
            }).css("ime-mode", "disabled"); //CSS设置输入法不可用
            va =$(th).val();
            if(va > 1000000000 || va < 0) {
                $(th).val(0);
            }
        }
        //添加上传文件内容
        function add_project_file() {
            id=$('#addProjectFileID').attr('attr') *1 +1;
            $('#addProjectFileID').attr('attr',id);
            str =`<tr>
                <td class="pro-title">1</td>
                <td>
                    <input type="hidden" id="project_file_id"  name="project_file_id[]" value="0" >
                    @if(isset($project_file_type))
                    <select name="file_type[]" id="file_type" class="span10 notempty" style="min-width: 80px;">
                        @foreach($project_file_type as $v)
                        <option value="{{$v}}" >{{$v}}</option>
                        @endforeach
                    </select>
                    @endif
                </td>
                <td>
                    <input type="hidden" id="project_file` + id + `"   class="notempty" name="project_file[]" placeholder="logo" >
                    <input class="span8 notempty" type="file" id="uploadfile` + id + `" name="uploadfile[]" placeholder="logo" onchange="submitFile(` + id + `)">
                </td>
                <td>
                    <input type="text"  name="project_file_name[]" class="span12 notempty"  value="" lay-skin="primary" >
                </td>
                <td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>
            </tr>`;
            $("#projectFileList").append(str);
            var len = $('#projectFileList tr').length;
            for(var i = 1;i<len;i++){
                $('#projectFileList tr:eq('+i+') td:first').text(i);
            }
            //点击文本框设置背景色
            $(".notempty").focus(function(){
                $(this).css("background-color","#fff");
            });
        }
        //提交文件信息
        function submitFile(id) {
            var formdata=new FormData();
            formdata.append('file',$('#uploadfile'+id)[0].files[0]);
            $.ajax({
                url:'/project/uploadProjectFile/'+{{$id}},
                type:"POST",
                data:formdata,
                processData:false,
                contentType:false,
                success:function(data){
                    console.log(data);
                    if(data.status ==1){
                        layui.use('layer', function(){
                            var layer = layui.layer;
                            layer.msg(data.data.msg);
                            $('#project_file'+id).val(data.data.url)
                        });
                        $('#uploadfiletitle'+id).remove();
                    }else{
                        layui.use('layer', function(){
                            var layer = layui.layer;
                            layer.msg(data.info);
                        });
                        $('#uploadfile'+id).val('');
                    }
                }
            })
        }


        function show_img(){
            layui.use(['layer'], function(){
                var layer = layui.layer;
                layer.open({
                    title:'查看全部图片',
                    type: 2,
                    area: ['70%','80%'],
                    content: '/project/projectImgList/{{$project->id}}' //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                });
            });
        }

    </script>

@endsection
