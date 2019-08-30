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
                                <td  class="pro-title">项目地点</td>
                                <td colspan="2">{{$project->province}}{{$project->city}}{{$project->county}}
                                    {{$project->foreign_address}}
                                 </td>
                                <td  class="pro-title">详情地址</td>
                                <td colspan="2">{{$project->address_detail}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">项目地点国外</td>
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
                            <tr><th colspan="8"><span class="btn btn-info">项目子工程信息</span></th>
                            </tr>
                            </thead>
                            <tbody id="zigongcheng">
                            @foreach($engineering as $item)
                            <tr >
                                <td class="pro-title">子工程名称</td>
                                <td>{{$item->engineering_name}}</td>
                                <td class="pro-title">建筑面积（平方米）</td>
                                <td>{{$item->build_area}}</td>
                                <td class="pro-title">建筑层数</td>
                                <td>{{$item->build_floor}}</td>
                                <td class="pro-title">建筑高度（米）</td>
                                <td>{{$item->build_height}}</td>

                            </tr>
                            @endforeach

                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="6"><span class="btn btn-info">项目负责人信息</span></th></tr>
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
                            <tr>
                                <td class="pro-title">负责人姓名（我方）</td>
                                <td>{{$project->project_leader}}</td>
                                <td class="pro-title">负责人职位（我方）</td>
                                <td>{{$project->project_job}}</td>
                                <td class="pro-title">负责人电话（我方）</td>
                                <td>{{$project->project_contact}}</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="6"><span class="btn btn-info">项目支持人员信息</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">设计负责人</td>
                                <td>{{$project->design_username}}</td>
                                <td class="pro-title">预算负责人</td>
                                <td>{{$project->budget_username}}</td>
                                <td class="pro-title">合约负责人</td>
                                <td>{{$project->technical_username}}</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <div class="layui-form-item" style="float: right;clear: left">
                            <a href="javascript:history.go(-1)">
                                <label for="L_repass" class="layui-form-label"></label>
                                <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                            </a>
                        </div>
                        <div class="clearfix">
                        </div>


                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<div class="right-sidebar">
    <div class="wrapper">
        <ul class="stats">
            <li><h4>公告</h4></li>
            @if(isset($noticelist) && !empty($noticelist))
                @foreach($noticelist as $item)
                    <li>
                        <h6>{{$item->title}}</h6>
                        <p >{{$item->content}}</p>
                    </li>
                @endforeach
            @endif
        </ul>
    </div>
    <span style="float: right;margin-bottom: 10px"><a href="/base/getNoticeInfo" style="color: #0000FF"> 查看更多 >></a></span>
    <hr class="hr-stylish-1">
</div>

@endsection
