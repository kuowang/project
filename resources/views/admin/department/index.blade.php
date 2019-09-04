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
                        部门列表<a id="dynamicTable"></a>
                        @if(in_array(100601,$pageauth))
                        <a class="btn btn-success" title="新增部门"  onclick="addDepartment()">
                            <i class="layui-icon">新增部门</i>
                        </a>
                        @endif
                    </div>

                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/admin/departmentList" method="get">
                                部门名称:<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
                                <button type="submit" class="btn">搜索</button>
                            </form></label>
                    </div>

                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">

                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>部门名称</th>
                                <th>创建时间</th>
                                <th>状态</th>
                                <th>是否禁止删除</th>
                                <th >排序</th>
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
                                        <td class="name_{{ $val->id }}">{{ $val->department }}</td>
                                        <td>{{ $val->created_at }}</td>
                                        <td>
                                        @if($val->status ==1)
                                            显示
                                        @else
                                            删除
                                        @endif
                                        </td>
                                        <td>
                                            @if($val->banedit ==1)
                                                允许
                                            @else
                                                禁止
                                            @endif
                                        </td>
                                        <td class="sort_{{ $val->id }}">{{$val->sort}}</td>
                                        <td class="td-manage">
                                            @if(in_array(100602,$pageauth))
                                            <a title="编辑部门" class="btn btn-success" onclick="editDepartment({{ $val->id }})" href="javascript:;">
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                            @endif
                                            @if(in_array(100603,$pageauth) && $val->banedit ==1)
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <a title="删除" class="btn btn-danger"  onclick="return deleteDepartment({{ $val->id }})" href="javascript:;">
                                               <i class="layui-icon">删除</i>
                                            </a>
                                            @endif
                                        </td>
                                </tr>

                            @endforeach
                                <tr>
                                    <td colspan="7" style="color: red">
                                        注：预算部、采购部、设计部、合约部这几个部门名称修改的时候只能更改相对应的部门名称，否则在项目管理和采购管理中无法匹配到具体的人员，请谨慎操作。
                                    </td>

                                </tr>
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
                        部门
                    </h4>
                </div>
                <form class="form-horizontal no-margin" id="noticeform" action="/admin/postDepartment" method="post">

                    <div class="modal-body">

                        <div class="row-fluid">
                            <div class="span12">
                                <div class="widget-body">

                                    <div class="control-group">
                                        <label class="control-label" for="name">
                                            部门名称:
                                        </label>
                                        <div class="controls controls-row">
                                            <input type="hidden" id="department_id" name="department_id" placeholder="序号">
                                            <input class="span12 layui-input" type="text" id="name" name="name" placeholder="部门名称">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="name">
                                            排序:
                                        </label>
                                        <div class="controls controls-row">
                                            <input class="span12 layui-input" type="text" id="sort" name="sort" placeholder="1-100之间">
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
        function addDepartment(){
            $("#myModalLabel").text('新增部门');
            $('#name').val('');
            $('#department_id').val('0');
            $('#sort').val('');
            $('#noticeform').prop('action','/admin/postDepartment');
            $('#myModal').modal();
        }

        function editDepartment(id){
            $("#myModalLabel").text('编辑部门');
            $('#department_id').val(id);
            $('#noticeform').prop('action','/admin/postDepartment');
            //补充表格数据
            $('#name').val($.trim($('.name_'+id).html()));
            $('#sort').val($.trim($('.sort_'+id).html()));

            $('#myModal').modal();

        }

        function submitform(){
            var datalist={
                id:$('#department_id').val(),
                name: $('#name').val(),
                sort:$("#sort").val(),
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
                            showmsg(data.info);
                        }
                    },
                    error:function () {
                        showmsg('提交失败，请刷新页面再试');
                    }
                });
            }
            return false;
        }

        function deleteDepartment(id) {
            var r = confirm("确认删除");
            if (r == true) {
                $.ajax({
                    url:'/admin/deleteDepartment/'+id,
                    type:'post',
                    // contentType: 'application/json',
                    success:function(data){
                        console.log(data);
                        if(data.status == 1){
                            location.href=location.href;
                        }else{
                            showmsg(data.info)
                        }
                    },
                    error:function () {
                       showmsg('提交失败，请刷新页面再试');
                    }
                });

            } else {
                return false;
            }
        }
        function showmsg(str) {
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(str);
            });
        }
    </script>

@endsection
