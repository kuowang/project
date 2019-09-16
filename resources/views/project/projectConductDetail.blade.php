@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

    <style type="text/css">
        .pro-title{
            background: #e6e6e6;
        }
        .layui-table td, .layui-table th {
            border: solid 1px #ccc;
        }
    </style>
<div class="left-sidebar">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-header" style="text-align: center">
                    <div  style="text-align: center;clear: both;font-size: 16px;" >
                        <b>{{$project->project_name}}</b>
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="layui-table layui-form">

                            <tbody>
                            <tr>
                                <td  class="pro-title">项目(子工程)状态</td>
                                <td>实施项目</td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6"><span class="btn btn-info">项目概况</span></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td  class="pro-title">项目名称</td>
                                <td  colspan="2">{{$project->project_name}}</td>
                                <td  class="pro-title">项目地点</td>
                                <td colspan="2">{{$project->province}}{{$project->city}}{{$project->county}}{{$project->address_detail}}{{$project->foreign_address}}
                                </td>
                            </tr>

                            <tr>
                                <td class="pro-title">项目种类（用途）</td>
                                <td colspan="2">{{$project->type}}</td>
                                <td class="pro-title">场地自然条件</td>
                                <td colspan="2">{{$project->environment}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">场地交通条件</td>
                                <td colspan="2">{{$project->traffic}}</td>
                                <td class="pro-title">材料存储条件</td>
                                <td colspan="2">{{$project->material_storage}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">夏季最高气温（摄氏度）</td>
                                <td colspan="2">
                                    {{$project->summer_max_temperature}}
                                </td>
                                <td class="pro-title">冬季最低气温（摄氏度）</td>
                                <td colspan="2">
                                    {{$project->winter_min_temperature}}
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
                            <tr >
                                <td class="pro-title">子工程名称</td>
                                <td>{{$engineering->engineering_name}}</td>
                                <td class="pro-title">建筑总面积（m²）</td>
                                <td>{{$engineering->build_area}}</td>
                                <td class="pro-title">建筑总层数</td>
                                <td>{{$engineering->build_floor}}</td>
                                <td class="pro-title">建筑总高度（m）</td>
                                <td>{{$engineering->build_height}}</td>
                                <td class="pro-title">建筑净高（最小）（m）</td>
                                <td>{{$engineering->indoor_height}}</td>

                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>

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
                                <td >{{$item->dynamic_content}} </td>
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
