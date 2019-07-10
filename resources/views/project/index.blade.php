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
                        项目列表<a id="dynamicTable"></a>
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
                                项目名称:<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
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
                                <th>
                                    <input type="checkbox" name="" lay-skin="primary">
                                </th>
                                <th>项目编号</th>
                                <th>项目名称</th>
                                <th>地址</th>
                                <th>项目创建时间</th>
                                <th>项目类型</th>
                                <th>手机号</th>
                                <th>描述</th>
                                <th>执行阶段</th>
                                <th>第三方状态</th>
                                <th>修改时间</th>
                                <th>操作</th></tr>
                            </thead>
                            <tbody>

                            @foreach ($data as $val)
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" lay-skin="primary"></td>
                                    <td>{{ $val->uh_project_id }}</td>
                                    <td>{{ $val->project_name }}</td>
                                    <td>{{ $val->province }}{{ $val->city }}{{ $val->county }}</td>
                                    <td>{{ $val->negotiation_date }}</td>
                                    <td>{{ $val->project_sub_style }}</td>
                                    <td>{{ $val->tel }}</td>
                                    <td>{{ $val->remark }}</td>
                                    <td>{{ $val->second_status }}</td>
                                    <td>{{ $val->third_status }}</td>
                                    <td>{{ $val->changed_at }}</td>
                                    <td class="td-manage">
                                        <a title="查看" onclick="xadmin.open('编辑','order-view.html')" href="javascript:;">
                                            <i class="layui-icon">&#xe63c;</i></a>
                                        <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;">
                                            <i class="layui-icon">&#xe640;</i></a>
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
