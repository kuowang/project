@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-header">
                        <div class="title">
                            菜单列表页面<a id="dynamicTable"></a>

                        </div>

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
                                    <th>父ID</th>
                                    <th>名称</th>
                                    <th>是否左侧导航显示</th>
                                    <th>路由</th>
                                    <th>是否禁用</th>
                                    <th>创建时间</th>
                                </tr>
                                </thead>
                                <tbody>

                                @foreach ($data as $k =>$val)
                                    @if($k%2 ==1)
                                        <tr class="gradeC">
                                    @else
                                        <tr class="gradeA success">
                                            @endif

                                            <td>{{ $val->auth_id }}</td>
                                            <td>{{ $val->parent_id }}</td>
                                            <td> @php
                                                    echo  str_repeat('&nbsp;', 6*($val->level -1));
                                                @endphp
                                                {{ $val->name }}</td>
                                            <td>
                                                @if ($val->is_show == 1)
                                                    是
                                                @else
                                                    否
                                                @endif
                                            </td>
                                            <td>{{ $val->url }}</td>
                                            <td>
                                                @if ($val->status == 1)
                                                    是
                                                @else
                                                    否
                                                @endif

                                            </td>
                                            <td>{{ $val->created_at }}</td>
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
