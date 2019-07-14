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
        <div class="span12">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        角色列表<a id="dynamicTable"></a>
                        @if(in_array(100102,$pageauth))
                        <a class="btn btn-success" title="新增角色"  onclick="addUser()">
                            <i class="layui-icon">新增角色</i>
                        </a>
                        @endif
                    </div>
                    @if(in_array(100101,$pageauth))
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/admin/role_list" method="get">
                                角色名称:<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
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
                        <table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">

                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>角色名称</th>
                                <th>创建时间</th>
                                <th>修改时间</th>
                                <th style="min-width: 200px">所属用户</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($data as $k =>$val)
                                @if($k%2 ==1)
                                    <tr class="gradeC">
                                @else
                                    <tr class="gradeA success">
                                @endif

                                        <td>
                                            {{ $val->id }}
                                        </td>
                                        <td>{{ $val->name }}</td>
                                        <td>{{ $val->created_at }}</td>
                                        <td>{{ $val->updated_at }}</td>
                                        <td>
                                            @if(isset($userlist[$val->id]))
                                                @foreach($userlist[$val->id] as $item)
                                                    {{ $item->username }} &nbsp;
                                                @endforeach
                                            @endif
                                        </td>
                                        <td class="td-manage">
                                            @if(in_array(100103,$pageauth))
                                            <a title="编辑角色" class="btn btn-success" onclick="editUser({{ $val->id }})" href="javascript:;">
                                                <i class="layui-icon">编辑角色</i>
                                            </a>
                                            @endif
                                            @if(in_array(100105,$pageauth))
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <a title="编辑权限" class="btn btn-success"  href='{{ url("admin/edit_role_authority/".$val->id) }}'>
                                               <i class="layui-icon">编辑权限</i>
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
