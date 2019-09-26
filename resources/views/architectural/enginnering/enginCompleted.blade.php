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
                @if(in_array(350001,$pageauth))
                    <div class="metro-nav-block nav-block-blue" >
                        <a href="/architectural/enginStart/{{$id}}">
                            <div class="fs1" aria-hidden="true" ><img src="/img/nav/1.png">洽谈工程
                                @if(isset($project))({{$project->start_count}}) @endif
                            </div>
                        </a>
                    </div>
                @endif
                @if(in_array(350002,$pageauth))
                    <div class="metro-nav-block nav-block-green">
                        <a href="/architectural/enginConduct/{{$id}}">
                            <div class="fs1"  ><img src="/img/nav/2.png">实施工程
                                @if(isset($project))({{$project->conduct_count}})@endif
                            </div>
                        </a>
                    </div>
                @endif
                @if(in_array(350003,$pageauth))
                    <div class="metro-nav-block nav-block-yellow" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                        <a href="/architectural/enginCompleted/{{$id}}">
                            <div class="fs1" aria-hidden="true"  ><img src="/img/nav/3.png">竣工工程
                                @if(isset($project))({{$project->completed_count}})@endif
                            </div>
                        </a>
                    </div>
                @endif
                @if(in_array(350004,$pageauth))
                    <div class="metro-nav-block nav-block-red">
                        <a href="/architectural/enginTermination/{{$id}}">
                            <div class="fs1" aria-hidden="true" ><img src="/img/nav/4.png">终止工程
                                @if(isset($project))({{$project->termination_count}})@endif
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
                        <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                            <label>
                                @if(isset($project))
                                    {{$project->project_name}}
                                @else
                                    <form class="form-search" action="/architectural/enginCompleted" method="get">
                                        项目名称:<input type="text" name="project_name" value="{{ $project_name }}" class="input-medium search-query">
                                        项目地点:<input type="text" name="address" value="{{ $address }}" class="input-medium search-query">
                                        项目负责人:<input type="text" name="project_leader" value="{{ $project_leader }}" class="input-medium search-query">
                                        <button type="submit" class="btn">搜索</button>
                                    </form>
                                @endif
                            </label>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>项目名称</th>
                                    <th>工程名称</th>
                                    <th>工程地址</th>
                                    <th style="width: 70px">建筑面积(m²)</th>
                                    <th style="width: 70px">建筑层数</th>
                                    <th style="width: 70px">建筑数量(栋)</th>
                                    <th>设计负责人</th>
                                    <th>建筑设计负责人</th>
                                    <th>结构设计负责人</th>
                                    <th>给排水设计负责人</th>
                                    <th>电气设计负责人</th>
                                    <th style="width: 80px">创建时间</th>
                                    <th style="width: 140px;">设计参数状态</th>
                                    <th style="width: 140px;">设计工况状态</th>
                                </tr>
                                </thead>
                                <tbody>

                                @foreach ($data as $k=>$val)
                                    <tr>
                                        <td>{{ $k+1 }}</td>
                                        <td >{{ $val->project_name }}</td>
                                        <td>{{ $val->engineering_name }}</td>
                                        <td>{{ $val->engin_address }}</td>
                                        <td>{{$val->build_area}}@if(!empty($val->engin_build_area))({{$val->engin_build_area}})@endif</td>
                                        <td>{{ $val->build_floor }}</td>
                                        <td>{{$val->build_number}}</td>
                                        <td>{{$val->design_username}}</td>
                                        <td>{{$val->build_design_username}}</td>
                                        <td>{{$val->structure_username}}</td>
                                        <td>{{$val->drainage_username}}</td>
                                        <td>{{$val->electrical_username}}</td>
                                        <td>{{ $val->created_at }}</td>
                                        <td>
                                            @if($val->is_conf_param ==1)
                                                <i class="layui-icon btn btn-info">已创建</i>
                                                @if( (in_array(35000301,$pageauth) && $val->design_uid == $uid ) || in_array(350705,$manageauth))
                                                        <a title="查看详情" class="btn btn-info"  href="/architectural/enginParamDetail/{{ $val->engineering_id }}">
                                                            <i class="layui-icon">详情</i>
                                                        </a>
                                                @endif
                                            @else
                                                <i class="layui-icon btn btn-danger">未创建</i>
                                            @endif
                                        </td>
                                        <td>
                                            @if($val->is_conf_architectural ==1)
                                                <i class="layui-icon btn btn-info">已创建</i>
                                                @if( (in_array(35000301,$pageauth) && $val->design_uid == $uid ) || in_array(350705,$manageauth))
                                                        <a title="查看详情" class="btn btn-info"  href="/architectural/enginCompletedDetail/{{ $val->engineering_id }}">
                                                            <i class="layui-icon">详情</i>
                                                        </a>
                                                @endif
                                            @else
                                                <i class="layui-icon btn btn-danger">未创建</i>
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
