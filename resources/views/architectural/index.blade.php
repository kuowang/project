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
        <div class="span12">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        建筑系统<a id="dynamicTable"></a>
                        @if(in_array(350102,$pageauth))
                        <a class="btn btn-success" title="创建建筑系统"  href="/architectural/add_architect" >
                            <i class="layui-icon">创建建筑系统</i>
                        </a>
                        @endif
                    </div>
                    @if(in_array(350101,$pageauth))
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/architectural/index" method="get">
                                系统名称:<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
                                <button type="submit" class="btn">搜索</button>
                            </form></label>
                    </div>
                    @endif
                    <span class="tools">
                      <a class="fs1" aria-hidden="true" data-icon="&#xe090;"></a>
                    </span>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">

                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>系统名称</th>
                                <th>工程名称</th>
                                <th>系统编码</th>
                                <th>系统状态</th>
                                <th>创建人</th>
                                <th>创建日期</th>
                                <th>执行操作</th>
                            </thead>
                            <tbody>

                            @foreach ($data as $val)
                                <tr>
                                    <td>{{ $val->id }}</td>
                                    <td>{{ $val->system_name }}</td>
                                    <td>{{ $val->engineering_name }}</td>
                                    <td>{{ $val->system_code }}</td>
                                    <td>{{ $val->status }}</td>
                                    <td>{{ $val->username }}</td>
                                    <td>{{ $val->created_at }}</td>
                                    <td class="td-manage">
                                        @if(in_array(100103,$pageauth))
                                            <a title="详情" class="btn btn-success" onclick="editUser({{ $val->id }})" href="javascript:;">
                                                <i class="layui-icon">详情</i>
                                            </a>
                                        @endif
                                        @if(in_array(100105,$pageauth))
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <a title="编辑" class="btn btn-success"  href='{{ url("admin/edit_role_authority/".$val->id) }}'>
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                        @endif
                                            @if(in_array(100105,$pageauth))
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <a title="删除" class="btn btn-success"  href='{{ url("admin/edit_role_authority/".$val->id) }}'>
                                                    <i class="layui-icon">删除</i>
                                                </a>
                                            @endif
                                    </td>
                                </tr>
                            @endforeach

                            </tbody>
                        </table>
                        @php
                            echo $page;
                        @endphp
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

            function editUser(id){
                layui.use(['layer', 'form'], function(){
                    var layer = layui.layer
                        ,form = layui.form;
                    layer.open({
                        title:'编辑角色',
                        type: 2,
                        area: ['400px', '200px'],
                        content: '/admin/edit_role/'+id //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                    });
                });
            }
            function addUser(){
                layui.use(['layer', 'form'], function(){
                    var layer = layui.layer
                        ,form = layui.form;
                    layer.open({
                        title:'新增角色',
                        type: 2,
                        area: ['400px', '200px'],
                        content: '/admin/add_role/' //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                    });
                });

            }


    </script>

@endsection
