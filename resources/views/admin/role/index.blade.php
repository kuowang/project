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
                        <a class="btn btn-success" title="新增角色"  onclick="addRole()">
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
                                        <td class="role_name_{{ $val->id }}">{{ $val->name }}</td>
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
                                            <a title="编辑角色" class="btn btn-success" onclick="editRole({{ $val->id }})" href="javascript:;">
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
    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        角色
                    </h4>
                </div>
                <form class="form-horizontal no-margin" id="noticeform" action="/base/post_add_notice" method="post">

                    <div class="modal-body">

                        <div class="row-fluid">
                            <div class="span12">
                                <div class="widget-body">

                                    <div class="control-group">
                                        <label class="control-label" for="name">
                                            角色名称:
                                        </label>
                                        <div class="controls controls-row">
                                            <input type="hidden" id="roleid" name="roleid" placeholder="序号">
                                            <input class="span12 layui-input" type="text" id="name" name="name" placeholder="角色名称">
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </form>
                <div class="modal-footer layui-form-item" >
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                    <button class="btn btn-success" lay-filter="add" lay-submit="" onclick="submitform()">提 交</button>
                </div>

            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>

</div>
    <style>
        .dashboard-wrapper .left-sidebar {
            margin:auto;
        }
    </style>

    <script>

        //新增消息按钮的事件
        function addRole(){
            $("#myModalLabel").text('新增角色');
            $('#name').val('');
            $('#roleid').val('0');
            $('#noticeform').prop('action','/admin/post_role');
            $('#myModal').modal();
        }

        function editRole(id){
            $("#myModalLabel").text('编辑角色');
            $('#roleid').val(id);
            $('#noticeform').prop('action','/admin/post_role');
            //补充表格数据
            $('#name').val($.trim($('.role_name_'+id).html()));
            $('#myModal').modal();

        }

        function submitform(){
            var datalist={
                id:$('#roleid').val(),
                name: $('#name').val(),
            };


            var status=0;
            $("input.layui-input").each(function(){
                if($(this).val()){
                }else{
                    layui.use('layer', function(){
                        var layer = layui.layer;
                        layer.msg('有信息没有填写完全，请填写完成后，再提交。');
                    });
                    status =1;
                    return false;
                }
            });

            if(status == 0){
                url=$('#noticeform').prop('action');
                $.ajax({
                    url:url,
                    type:'post',
                    // contentType: 'application/json',
                    data:datalist,
                    success:function(data){
                        console.log(data);
                        if(data.status == 1){
                            $('#myModal').modal('hide');
                            location.href=location.href
                        }else{
                            layui.use('layer', function(){
                                var layer = layui.layer;
                                layer.msg(data.info);
                            });
                        }
                    },
                    error:function () {
                        layui.use('layer', function(){
                            var layer = layui.layer;
                            layer.msg('提交失败，请刷新页面再试');
                        });
                    }
                });
            }
            return false;
        }

    </script>

@endsection
