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
                <div class="widget-header" style="text-align: center">
                    <div  style="text-align: center;clear: both;font-size: 16px;" >
                        <b>{{$project->project_name}}</b>
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6">项目概况</th>
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
                            </tbody>
                        </table>

                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="8">项目子工程信息</th>
                            </tr>
                            </thead>
                            <tbody id="zigongcheng">
                            <tr >
                                <td class="pro-title">子工程名称</td>
                                <td>{{$engineering->engineering_name}}</td>
                                <td class="pro-title">建筑面积（平方米）</td>
                                <td>{{$engineering->build_area}}</td>
                                <td class="pro-title">建筑层数</td>
                                <td>{{$engineering->build_floor}}</td>
                                <td class="pro-title">室内净高（米）</td>
                                <td>{{$engineering->build_height}}</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="widget">
                <div class="widget-header" style="text-align: center">
                    <div  style="font-size: 16px;" >
                        <b>工程建筑设计配置</b>
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th></th>
                                <th >建筑子系统</th>
                                <th >建筑子系统编码</th>
                                <th >默认工况</th>
                                <th >工况</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php
                            $system_code ='';
                            @endphp
                            @foreach($engin_system as $v)
                                @if($system_code != $v->system_code)
                                    <tr class="pro-title">
                                        <td colspan="5">{{$v->system_name}}({{$v->engin_name}})</td>
                                        <td class="">显示</td>
                                    </tr>
                                    @php( $system_code = $v->system_code)
                                @endif
                            <tr>
                                <td><input type="checkbox" name="sub_arch_id[{{$v->sub_arch_id}}]" value="{{$v->sub_arch_id}}" onclick="checkboxarch(this)"></td>
                                <td  >{{$v->sub_system_name}}</td>
                                <td  >{{$v->sub_system_code}}</td>
                                <td  >{{$v->work_code}}</td>
                                <td  style="" id="engin_work_code_{{$v->sub_arch_id}}">
                                @if($v->engin_work_code)
                                        <input type="text" name="engin_work_code[{{$v->sub_arch_id}}]" value="" >
                                @endif
                                </td>
                                <td class="">显示</td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>

                        <div class="clearfix"></div>

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

    <script>
        function checkboxarch(th) {
            if ($(th).is(":checked")) {
                console.log($(th).val())
                id =$(th).val();
                str ='<input type="text" name="engin_work_code[' + id + ']" value="" >';
                $('#engin_work_code_'+id).html(str);
            }else{
                id =$(th).val();
                $('#engin_work_code_'+id).html('');
            }
        }

    </script>

@endsection
