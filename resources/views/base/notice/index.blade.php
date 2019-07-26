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
                        公告列表<a id="dynamicTable"></a>
                        @if(in_array(600202,$pageauth))
                        <a class="btn btn-success" title="新增公告" id="addnotice"  onclick="addNotice('新增公告')">
                            <i class="layui-icon">新增公告</i>
                        </a>
                        @endif
                    </div>
                    @if(in_array(600201,$pageauth))
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/base/notice_list" method="get">
                                公告名称: &nbsp;<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
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
                                <th>标题</th>
                                <th style="width: 40%">内容</th>
                                <th>操作人</th>
                                <th>状态</th>
                                <th>发布时间</th>
                                <th>创建时间</th>
                                <th style="width: 120px">操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($data as $k =>$val)
                                @if($k%2 ==1)
                                    <tr class="gradeC">
                                @else
                                    <tr class="gradeA success">
                                @endif
                                        <td class="notice_id_{{ $val->id }}">
                                            {{ $val->id }}
                                        </td>
                                        <td class="notice_title_{{ $val->id }}">{{ $val->title }}</td>
                                        <td class="notice_content_{{ $val->id }}">{{ $val->content }}</td>
                                        <td class="notice_operator_{{ $val->id }}">{{ $val->operator }}</td>
                                        <td class="notice_status_{{ $val->id }}">
                                            @if($val->status ==1 )
                                                显示
                                            @else
                                                隐藏
                                            @endif
                                        </td>
                                        <td class="notice_pubdate_{{ $val->id }}">{{ $val->pubdate }}</td>
                                        <td >{{ $val->created_at }}</td>
                                        <td class="td-manage ">
                                            @if(in_array(600203,$pageauth))
                                            <a title="编辑公告" class="btn btn-success" onclick="editNotice({{ $val->id }})" href="javascript:;">
                                                <i class="layui-icon">编辑公告</i>
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
                        公告
                    </h4>
                </div>
                <form class="form-horizontal no-margin" id="noticeform" action="/base/post_add_notice" method="post">

                <div class="modal-body">

                    <div class="row-fluid">
                        <div class="span12">
                            <div class="widget-body">

                                    <div class="control-group">
                                        <label class="control-label" for="name">
                                            标题名称:
                                        </label>
                                        <div class="controls controls-row">
                                            <input class="span12 layui-input" type="text" id="title" name="title" placeholder="标题名称">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="email">
                                            内容:
                                        </label>
                                        <div class="controls">
                                            <textarea name="content" id="content"  placeholder="请输入内容" class="layui-textarea span12" ></textarea>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="password">
                                            状态:
                                        </label>
                                        <div class="controls">
                                            <select name="status" id="status" class="span12" style="min-width: 80px">
                                                <option value="1" selected="selected">有效</option>
                                                <option value="0">无效</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="repPassword">
                                            发布日期:
                                        </label>
                                        <div class="controls">
                                            <input type="text"  name="pubdate" id="pubdate"  lay-verify="name" placeholder="yyyy-MM-dd H:i:s" class="layui-input span12"id="pubdate">
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
        //日期选择框
        layui.use('laydate', function(){
            var laydate = layui.laydate;
            //执行一个laydate实例
            laydate.render({
                elem: '#pubdate' //指定元素
                ,type: 'datetime'
                ,zIndex:999999
            });
        });
        //新增消息按钮的事件
        function addNotice(str){
            $("#myModalLabel").text(str);
            $('#title').val('');
            $('#status').val('');
            $('#pubdate').val('');
            $('#content').val('');
            $('#noticeform').prop('action','/base/post_add_notice');
            $('#myModal').modal();
        }

        function editNotice(id){
            $("#myModalLabel").text('编辑公告');
            $('#noticeform').prop('action','/base/post_edit_notice/'+id);
            //补充表格数据

            $('#title').val($.trim($('.notice_title_'+id).html()));
            $('#status').val($.trim($('.notice_status_'+id).html()));
            $('#pubdate').val($.trim($('.notice_pubdate_'+id).html()));
            $('#content').val($.trim($('.notice_content_'+id).html()));
            $('#myModal').modal();

        }

        function submitform(){
            var datalist={
                title: $('#title').val(),
                status:  $('#status').val(),
                pubdate: $('#pubdate').val(),
                content: $('#content').val()
            };

            // datalist['title']=$('#title').val();
            // datalist['status']=$('#status').val();
            // datalist['pubdate']=$('#pubdate').val();
            // datalist['content']=$('#content').val();
            // console.log(datalist);
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
