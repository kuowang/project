@extends('layouts.web')

@section('content')
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
                <a href="/project/projectStart">
                    <div class="fs1" aria-hidden="true" data-icon="">洽谈项目</div>
                </a>
            </div>
            @endif
            @if(in_array(1503,$pageauth))
            <div class="metro-nav-block nav-block-green">
                <a href="/project/projectConduct">
                    <div class="fs1"  data-icon="">实施项目</div>
                </a>
            </div>
            @endif
            @if(in_array(1504,$pageauth))
            <div class="metro-nav-block nav-block-yellow">
                <a href="/project/projectCompleted">
                    <div class="fs1" aria-hidden="true" data-icon="">竣工项目</div>
                </a>
            </div>
            @endif
            @if(in_array(1505,$pageauth))
            <div class="metro-nav-block nav-block-red">
                <a href="/project/projectTermination">
                    <div class="fs1" aria-hidden="true" data-icon="">终止项目</div>
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
                        项目列表<a id="dynamicTable"></a>
                        @if(in_array(100102,$pageauth))
                        <a class="btn btn-success" title="新增项目"  onclick="addUser()">
                            <i class="layui-icon">新增项目</i>
                        </a>
                        @endif
                    </div>
                    @if(in_array(100101,$pageauth))
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/project/projectStart" method="get">
                                项目名称:<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
                                <button type="submit" class="btn">搜索</button>
                            </form></label>
                    </div>
                    @endif

                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">

                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>项目名称</th>
                                <th>工程名称</th>
                                <th>建筑面积</th>
                                <th>建筑层数</th>
                                <th>项目地址</th>
                                <th>项目负责人</th>
                                <th>设计支持</th>
                                <th>预算支持</th>
                                <th>合约支持</th>
                                <th>项目状态</th>
                                <th>洽谈指数</th>
                                <th>执行操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($data as $k=>$val)
                                <tr>

                                    <td>{{ $k+1 }}</td>
                                    <td>{{ $val->project_name }}</td>
                                    <td>{{ $val->engineering_name }}</td>
                                    <td>{{ $val->build_area }}</td>
                                    <td>{{ $val->build_floor }}</td>
                                    <td>{{ $val->address_detail }}</td>
                                    <td>{{ $val->project_leader }}</td>
                                    <td>{{ $val->design_username }}</td>
                                    <td>{{ $val->budget_username }}</td>
                                    <td>{{ $val->technical_username }}</td>
                                    <td>{{ $val->status }}</td>
                                    <td>{{ $val->success_level }}</td>

                                    <td class="td-manage">
                                        @if( (in_array(1501,$pageauth) && $val->created_uid == $uid ) || in_array(1501,$manageauth))
                                            <a title="查看详情" class="btn btn-info"  href="/material/materialDetail/{{ $val->id }}">
                                                <i class="layui-icon">详情</i>
                                            </a>
                                        @endif
                                        @if((in_array(1502,$pageauth) && $val->created_uid == $uid ) || in_array(1502,$manageauth))
                                            <a title="编辑" class="btn btn-success"  href="/material/editMaterial/{{ $val->id }}">
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach

                            </tbody>
                        </table>

                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
    <style>
        .dashboard-wrapper .left-sidebar {
            margin:auto;
        }
    </style>
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
    <script>
        //一般直接写在一个js文件中




    </script>

@endsection
