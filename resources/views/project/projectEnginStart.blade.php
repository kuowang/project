@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
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
            <div class="metro-nav-block nav-block-blue" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                <a href="/project/projectEnginStart/{{$id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/1.png">洽谈工程
                    @if(isset($project))({{$project->start_count}}) @endif
                    </div>
                </a>
            </div>
            @endif
            @if(in_array(1503,$pageauth))
            <div class="metro-nav-block nav-block-green">
                <a href="/project/projectEnginConduct/{{$id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/2.png">实施工程
                        @if(isset($project))({{$project->conduct_count}})@endif
                    </div>
                </a>
            </div>
            @endif
            @if(in_array(1504,$pageauth))
            <div class="metro-nav-block nav-block-yellow">
                <a href="/project/projectEnginCompleted/{{$id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/3.png">竣工工程
                        @if(isset($project))({{$project->completed_count}})@endif
                    </div>
                </a>
            </div>
            @endif
            @if(in_array(1505,$pageauth))
            <div class="metro-nav-block nav-block-red">
                <a href="/project/projectEnginTermination/{{$id}}">
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
                        洽谈工程<a id="dynamicTable"></a>
                        @if(in_array(1501,$pageauth) || in_array(1501,$manageauth))
                        @if($id!=0)
                            <a class="btn btn-success" title="新增工程" onclick="selectModel()" >
                                <i class="layui-icon">新增工程</i>
                            </a>
                        @endif
                        @endif
                    </div>
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                    @if(isset($project))
                        {{$project->project_name}}
                    @else
                            <label>
                                <form class="form-search" action="/project/projectEnginStart" method="get">
                                    项目名称:<input type="text" name="project_name" value="{{ $project_name }}" class="input-medium search-query">
                                    项目地点:<input type="text" name="address" value="{{ $address }}" class="input-medium search-query">
                                    项目负责人:<input type="text" name="project_leader" value="{{ $project_leader }}" class="input-medium search-query">
                                    <button type="submit" class="btn">搜索</button>
                                </form>
                            </label>
                    @endif
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
                                <th>建筑面积(m²)</th>
                                <th>建筑层数</th>
                                <th>建筑数量(栋)</th>
                                <th>销售负责人</th>
                                <th>设计负责人</th>
                                <th>预算负责人</th>
                                <th>合约负责人</th>
                                <th>创建时间</th>
                                <th>执行操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($data as $k=>$val)
                                <tr>
                                    <td>{{ $k+1 }}</td>
                                    <td>{{$val->project_name}}</td>
                                    <td>{{ $val->engineering_name }}</td>
                                    <td>{{$val->engin_address}}</td>
                                    <td>{{ $val->build_area }}</td>
                                    <td>{{ $val->build_floor }}</td>
                                    <td>{{$val->build_number}}</td>
                                    <td>{{$val->sale_username}}</td>
                                    <td>{{$val->design_username}}</td>
                                    <td>{{$val->budget_username}}</td>
                                    <td>{{$val->technical_username}}</td>
                                    <td>{{ $val->created_at }}</td>
                                    <td class="td-manage">
                                        @if( (in_array(150201,$pageauth) && $val->created_uid == $uid ) || in_array(150201,$manageauth))
                                            <a title="查看详情" class="btn btn-info"  href="/project/projectEnginDetail/{{ $val->id }}">
                                                <i class="layui-icon">详情</i>
                                            </a>
                                        @endif
                                        @if((in_array(150202,$pageauth) && $val->created_uid == $uid ) || in_array(150202,$manageauth))
                                            <a title="编辑" class="btn btn-success"  href="/project/editProjectEngin/{{ $val->id }}">
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach

                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <div>
                            @php
                                echo $page;
                            @endphp

                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            注：工程列表以工程名称排序
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
    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form class="modal-content" action="/project/createdProjectEngin/{{$id}}" type="get">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        工程模板信息
                    </h4>
                </div>
                <div class="modal-body">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="widget-body">
                                <div class="control-group">
                                    <table class="layui-table layui-form">
                                        <tr>
                                            <td>选择</td>
                                            <td>工程名称</td>
                                            <td>工程状态</td>
                                        </tr>
                                        @if(isset($enginList) && !empty($enginList))
                                            @foreach($enginList as $item)
                                                <tr>
                                                    <td>
                                                        <label style="width: 100%;height: 100%">
                                                            <input type="radio" name="engin_id" class="engin_id" value="{{$item->id}}" style="display: block">
                                                        </label>
                                                    </td>
                                                    <td>{{$item->engineering_name}}</td>
                                                    <td>@if($item->status ==0) 洽谈
                                                        @elseif($item->status ==1) 实施
                                                        @elseif($item->status ==2) 竣工
                                                        @else  终止
                                                        @endif
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @endif
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer layui-form-item" >
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button class="btn btn-success" lay-filter="add" lay-submit="" >确认</button>
                </div>
            </form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->


    <script>
        //一般直接写在一个js文件中
        //显示模拟框
        function selectModel(){
            $('#myModal').modal();
        }

    </script>

@endsection
