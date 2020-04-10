@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

<div class="left-sidebar">
    <div class="row-fluid">
        <div class="metro-nav">
            @if(in_array(1502,$pageauth))
            <div class="metro-nav-block nav-block-blue" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                <a href="/project/projectEnginStart/{{$project->id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/1.png">洽谈工程 ({{$project->start_count}})</div>
                </a>
            </div>
            @endif
            @if(in_array(1503,$pageauth))
            <div class="metro-nav-block nav-block-green">
                <a href="/project/projectEnginConduct/{{$project->id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/2.png">实施工程 ({{$project->conduct_count}})</div>
                </a>
            </div>
            @endif
            @if(in_array(1504,$pageauth))
            <div class="metro-nav-block nav-block-yellow">
                <a href="/project/projectEnginCompleted/{{$project->id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/3.png">竣工工程 ({{$project->completed_count}})</div>
                </a>
            </div>
            @endif
            @if(in_array(1505,$pageauth))
            <div class="metro-nav-block nav-block-red">
                <a href="/project/projectEnginTermination/{{$project->id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/4.png">终止工程 ({{$project->termination_count}})</div>
                </a>
            </div>
            @endif
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        洽谈工程<a id="dynamicTable"></a>
                    </div>
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        {{$project->project_name}}
                    </div>
                </div>
                <div class="widget-body">
                    <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="8"><span class="btn btn-info">工程信息</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">工程名称{{$engin->id}}</td>
                                <td> {{$engin->engineering_name}}</td>
                                <td class="pro-title">工程地址</td>
                                <td>{{$engin->engin_address}}</td>
                                <td class="pro-title">建筑总面积（m²）</td>
                                <td>{{$engin->build_area}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">房屋占地尺寸:长(m)</td>
                                <td>{{isset($engin->build_length)?$engin->build_length:''}}
                                <td class="pro-title">房屋占地尺寸:宽(m)</td>
                                <td>{{isset($engin->build_width)?$engin->build_width:''}}
                                <td class="pro-title">建筑总层数</td>
                                <td>{{$engin->build_floor}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">建筑总高度（m）</td>
                                <td>{{$engin->build_height}}</td>
                                <td class="pro-title">室内净高（最小）（m）</td>
                                <td>{{$engin->indoor_height}}</td>
                                <td class="pro-title">建筑数量(栋)</td>
                                <td>{{$engin->build_number}}</td>

                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>

                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="8"><span class="btn btn-info">负责人信息</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">销售负责人</td>
                                <td>{{$engin->sale_username}}</td>
                                <td class="pro-title">设计负责人</td>
                                <td> {{$engin->design_username}}
                                </td>

                                <td class="pro-title">预算负责人</td>
                                <td>
                                    {{$engin->budget_username}}
                                </td>
                                <td class="pro-title">合约负责人</td>
                                <td>{{$engin->technical_username}}</td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="2"><span class="btn btn-info">工程动态信息</span></th>
                            </tr>
                            </thead>
                            <tbody style="text-align: center" id="project_dongtai">
                            <tr>
                                <td style="width: 20%;">时间</td>
                                <td style="width: 70%;">动态</td>
                            </tr>

                            @foreach($dynamic as $item)
                                <tr>
                                    <td  class="pro-title">
                                        {{$item->dynamic_date}}
                                    </td>
                                    <td >
                                        "{{$item->dynamic_content}}
                                    </td>
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




@endsection
