@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
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
                        项目信息详情<a id="dynamicTable"></a>
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">

                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6"><span class="btn btn-info">项目概况</span></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td  class="pro-title">项目名称</td>
                                <td colspan="2">{{$project->project_name}}</td>
                                <td  class="pro-title">项目所在国</td>
                                <td colspan="2">{{$project->country}}</td>
                            </tr>
                            <tr>
                                <td  class="pro-title">项目地点(国内)</td>
                                <td colspan="2">{{$project->province}}{{$project->city}}{{$project->county}}
                                    {{$project->foreign_address}}
                                 </td>
                                <td  class="pro-title">详情地址</td>
                                <td colspan="2">{{$project->address_detail}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">项目地点(国外)</td>
                                <td colspan="5">{{$project->foreign_address}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">项目种类（用途）</td>
                                <td>{{$project->type}}</td>
                                <td class="pro-title">项目来源</td>
                                <td>{{$project->source}}</td>
                                <td class="pro-title">项目所属阶段</td>
                                <td>{{$project->stage}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">计划建造日期</td>
                                <td>{{$project->plan_creat_at}}</td>
                                <td class="pro-title">工期要求</td>
                                <td>{{$project->project_limit_time}}</td>
                                <td class="pro-title">洽谈指数</td>
                                <td>{{$project->success_level}}</td>
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
                                <td>{{$project->environment}}</td>
                                <td class="pro-title">场地交通条件</td>
                                <td>{{$project->traffic}}</td>
                                <td class="pro-title">材料存储条件</td>
                                <td>{{$project->material_storage}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">夏季平均气温（摄氏度）</td>
                                <td>
                                    {{$project->summer_avg_temperature}}
                                </td>
                                <td class="pro-title">夏季最高气温（摄氏度）</td>
                                <td>
                                    {{$project->summer_max_temperature}}
                                </td>
                                <td class="pro-title">冬季平均气温（摄氏度）</td>
                                <td>
                                    {{$project->winter_avg_temperature}}
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">冬季最低气温（摄氏度）</td>
                                <td>
                                    {{$project->winter_min_temperature}}
                                </td>
                                <td colspan="4"></td>
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
                                <td>{{$project->customer_type}}</td>
                                <td class="pro-title">客户名称</td>
                                <td>{{$project->customer}}</td>
                                <td class="pro-title">客户地址</td>
                                <td>{{$project->customer_address}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">联系方式（手机）</td>
                                <td>{{$project->customer_telephone}}</td>
                                <td class="pro-title">座机</td>
                                <td>{{$project->customer_phone}}</td>
                                <td class="pro-title">电子邮箱</td>
                                <td>{{$project->customer_email}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">客户需求</td>
                                <td  colspan="5">
                                    @if($project->is_design ==1)
                                        设计/咨询
                                    @endif
                                    @if($project->is_supply ==1)
                                            材料供应
                                    @endif
                                    @if($project->is_guidance ==1)
                                            施工指导
                                    @endif
                                    @if($project->is_installation ==1)
                                            施工安装
                                    @endif
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="6"><span class="btn btn-info">项目子工程信息</span></th>
                            </tr>
                            </thead>
                            <tbody id="zigongcheng">
                            <tr >
                                <td class="pro-title">子工程名称</td>
                                <td>{{$engineering->engineering_name}}</td>
                                <td class="pro-title">建筑总面积（m²）</td>
                                <td>{{$engineering->build_area}}</td>
                                <td class="pro-title">建筑总层数</td>
                                <td>{{$engineering->build_floor}}</td>

                            </tr>
                            <tr>
                                <td class="pro-title">建筑总高度（m）</td>
                                <td>{{$engineering->build_height}}</td>
                                <td class="pro-title">室内净高（最小）（m）</td>
                                <td>{{$engineering->indoor_height}}</td>
                                <td class="pro-title">建筑数量（栋）</td>
                                <td>{{$engineering->build_number}}</td>
                            </tr>
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
                                <td>{{$project->customer_leader}}</td>
                                <td class="pro-title">负责人职位（客户方）</td>
                                <td>{{$project->customer_job}}</td>
                                <td class="pro-title">负责人电话（客户方）</td>
                                <td>{{$project->customer_contact}}</td>
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
                                <td>{{$project->project_leader}}</td>
                                <td class="pro-title">销售总负责人</td>
                                <td>{{$project->sale_username}}</td>
                                <td class="pro-title">设计总负责人</td>
                                <td>{{$project->design_username}}</td>
                                <td class="pro-title">预算报价总负责人</td>
                                <td>{{$project->budget_username}}</td>
                                <td class="pro-title">合约总负责人</td>
                                <td>{{$project->technical_username}}</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="8"><span class="btn btn-info">工程支持人员信息</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">销售负责人</td>
                                <td>{{$engineering->sale_username}}</td>
                                <td class="pro-title">设计负责人</td>
                                <td>{{$engineering->design_username}}</td>
                                <td class="pro-title">预算负责人</td>
                                <td>{{$engineering->budget_username}}</td>
                                <td class="pro-title">合约负责人</td>
                                <td>{{$engineering->technical_username}}</td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6"><span class="btn btn-info">合同签署信息</span></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td  class="pro-title">合同编号</td>
                                <td  colspan="2">
                                    {{ $engineering->contract_code }}</td>
                                <td  class="pro-title">合同签署时间</td>
                                <td colspan="2">
                                    {{ $engineering->contract_at }} </td>
                            </tr>

                            <tr>
                                <td class="pro-title">合同类型</td>
                                <td colspan="2">
                                    {{ $engineering->contract_type }} </td>
                                <td class="pro-title">合同份数</td>
                                <td colspan="2">{{ $engineering->contract_num }} </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>

                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="3"><span class="btn btn-info">项目动态信息</span></th>

                            </tr>
                            </thead>
                            <tbody style="text-align: center" id="project_dongtai">
                            <tr>
                                <td style="width: 10%;">序号</td>
                                <td style="width: 20%;">时间</td>
                                <td style="width: 70%;">动态</td>
                            </tr>
                            @foreach($dynamic as $k=>$item)
                                <tr>
                                    <td class="pro-title">{{$k+1}}</td>
                                    <td >{{$item->dynamic_date}}</td>
                                    <td style="text-align:left">{{$item->dynamic_content}} </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <div class="clearfix"></div>

                        <div class="layui-form-item" style="float: right;clear: left">
                            <a href="javascript:history.go(-1)">
                                <label for="L_repass" class="layui-form-label"></label>
                                <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                            </a>
                        </div>
                        <div class="clearfix"></div>

                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

@endsection
