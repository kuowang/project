@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
    <style type="text/css">
        .project_name{
            display: -webkit-box;
            overflow: hidden;
            text-overflow: ellipsis;
            word-wrap: break-word;
            white-space: normal !important;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }
    </style>
    @if($status == 2)
        <div class="alert alert-block alert-error fade in">
            <button data-dismiss="alert" class="close" type="button">
                ×
            </button>
            <h4 class="alert-heading">
                失败
            </h4>
            <p>
                {{$notice}}
            </p>
        </div>
    @elseif($status ==1)
        <div class="alert alert-block alert-success fade in">
            <button data-dismiss="alert" class="close" type="button">
                ×
            </button>
            <h4 class="alert-heading">
                成功!
            </h4>
            <p>
                {{$notice}}
            </p>
        </div>
    @endif

    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="metro-nav">
                @if(in_array(1502,$pageauth))
                    <div class="metro-nav-block nav-block-blue">
                        <a href="/project/projectEnginStart">
                            <div class="fs1" aria-hidden="true" ><img src="/img/nav/1.png">洽谈工程
                                @if(isset($engincount[0]))
                                    ({{$engincount[0]}})
                                @else
                                    (0)
                                @endif
                            </div>
                        </a>
                    </div>
                @endif
                @if(in_array(1503,$pageauth))
                    <div class="metro-nav-block nav-block-green">
                        <a href="/project/projectEnginConduct">
                            <div class="fs1" aria-hidden="true" ><img src="/img/nav/2.png">实施工程
                                @if(isset($engincount[1]))
                                    ({{$engincount[1]}})
                                @else
                                    (0)
                                @endif
                            </div>
                        </a>
                    </div>
                @endif
                @if(in_array(1504,$pageauth))
                    <div class="metro-nav-block nav-block-yellow" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                        <a href="/project/projectEnginCompleted">
                            <div class="fs1" aria-hidden="true" ><img src="/img/nav/3.png">竣工工程
                                @if(isset($engincount[2]))
                                    ({{$engincount[2]}})
                                @else
                                    (0)
                                @endif
                            </div>
                        </a>
                    </div>
                @endif
                @if(in_array(1505,$pageauth))
                    <div class="metro-nav-block nav-block-red">
                        <a href="/project/projectEnginTermination">
                            <div class="fs1" aria-hidden="true"><img src="/img/nav/4.png">终止工程
                                @if(isset($engincount[4]))
                                    ({{$engincount[4]}})
                                @else
                                    (0)
                                @endif
                            </div>
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
                            竣工工程<a id="dynamicTable"></a>
                        </div>
                        <div class="dataTables_filter" id="data-table_filter" style="text-align: center;font-size: 16px;">
                            <label>
                                <form class="form-search" action="/project/projectCompleted" method="get">
                                    项目名称:<input type="text" name="project_name" value="{{ $project_name }}" class="input-medium search-query">
                                    项目地点:<input type="text" name="address" value="{{ $address }}" class="input-medium search-query">
                                    项目负责人:<input type="text" name="project_leader" value="{{ $project_leader }}" class="input-medium search-query">

                                    <button type="submit" class="btn">搜索</button>
                                </form></label>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>项目名称</th>
                                    <th>项目种类</th>
                                    <th>工程数量</th>
                                    <th>项目总面积</th>
                                    <th>项目地址</th>
                                    <th>项目总负责人</th>
                                    <th>销售总负责人</th>
                                    <th>设计总负责人</th>
                                    <th>预算报价总负责人</th>
                                    <th>合约总负责人</th>
                                    <th>创建时间</th>
                                    <th>执行操作</th>
                                </tr>
                                </thead>
                                <tbody>

                                @foreach ($data as $k=>$val)
                                    <tr>

                                        <td>{{ $k+1 }}</td>
                                        <td >{{ $val->project_name }}</td>
                                        <td>{{$val->type}}</td>
                                        <td>{{$val->completed_count}}</td>
                                        <td>{{$val->project_area}}</td>
                                        <td>{{ $val->address_detail }}</td>
                                        <td>{{ $val->project_leader }}</td>
                                        <td>{{ $val->sale_username }}</td>
                                        <td>{{ $val->design_username }}</td>
                                        <td>{{ $val->budget_username }}</td>
                                        <td>{{ $val->technical_username }}</td>

                                        <td>{{ $val->created_at }}</td>
                                        <td class="td-manage">
                                            @if( (in_array(150401,$pageauth) && $val->created_uid == $uid ) || in_array(150401,$manageauth))
                                                <a title="查看详情" class="btn btn-info"  href="/project/projectDetail/{{ $val->id }}?type=completed">
                                                    <i class="layui-icon">详情</i>
                                                </a>
                                            @endif
                                            @if( (in_array(150402,$pageauth) && $val->created_uid == $uid ) || in_array(150402,$manageauth))
                                                <a title="项目信息管理" class="btn btn-info"  href="/project/projectEnginCompleted/{{ $val->id }}">
                                                    <i class="layui-icon">项目信息管理</i>
                                                </a>
                                            @endif

                                        </td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                            <div>
                                @php
                                    echo $page;
                                @endphp

                            </div>
                            <div class="clearfix">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


@endsection
