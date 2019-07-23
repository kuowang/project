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
                            系统参数列表<a id="dynamicTable"></a>
                            @if(in_array(100302,$pageauth))
                                <a class="btn btn-success" title="新增系统参数"  onclick="addSystem()">
                                    <i class="layui-icon">新增系统参数</i>
                                </a>
                            @endif
                        </div>
                        @if(in_array(100301,$pageauth))
                            <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                                <label>
                                    <form class="form-search" action="/admin/role_list" method="get">
                                        角色名称:<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
                                        <button type="submit" class="btn">搜索</button>
                                    </form></label>
                            </div>
                        @endif

                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">
                            <table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">

                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>字段名</th>
                                    <th>描述</th>
                                    <th>系统名称</th>
                                    <th>创建时间</th>
                                    <th>修改时间</th>
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
                                            <td>{{ $val->field }}</td>
                                            <td>{{ $val->remark }}</td>
                                            <td>{{ $val->name }}</td>
                                            <td>{{ $val->created_at }}</td>
                                            <td>{{ $val->updated_at }}</td>

                                            <td class="td-manage">
                                                @if(in_array(100303,$pageauth))
                                                    <a title="编辑" class="btn btn-success" onclick="editsystem({{ $val->id }})" href="javascript:;">
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
                            <script>
                                //一般直接写在一个js文件中

                                function editsystem(id){
                                    layui.use(['layer', 'form'], function(){
                                        var layer = layui.layer
                                            ,form = layui.form;
                                        layer.open({
                                            title:'编辑系统参数',
                                            type: 2,
                                            area: ['350px', '300px'],
                                            content: '/admin/edit_system_list/'+id //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                                        });
                                    });
                                }
                                function addSystem(){
                                    layui.use(['layer', 'form'], function(){
                                        var layer = layui.layer
                                            ,form = layui.form;
                                        layer.open({
                                            title:'新增系统参数',
                                            type: 2,
                                            area: ['350px', '300px'],
                                            content: '/admin/add_system_list/' //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                                        });
                                    });
                                }

                            </script>
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



@endsection
