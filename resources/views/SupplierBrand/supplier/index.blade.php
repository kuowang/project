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
                        供应商列表<a id="dynamicTable"></a>
                        @if(in_array(450101,$pageauth))
                        <a class="btn btn-success" title="新增供应商" id="addnotice"  onclick="addBrand('新增供应商')">
                            <i class="layui-icon">新增供应商</i>
                        </a>
                        @endif
                    </div>
                    @if(in_array(450102,$pageauth))
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/base/notice_list" method="get">
                                供应商名称: &nbsp;<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
                                <button type="submit" class="btn">搜索</button>
                            </form></label>
                    </div>
                    @endif

                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="table table-condensed table-striped table-hover layui-table layui-form" id="data-table">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>品牌名称</th>
                                <th>厂家名称</th>
                                <th>供应商名称</th>
                                <th>供应商地址</th>
                                <th>联系人</th>
                                <th>联系人电话</th>
                                <th>联系人电子邮箱</th>
                                <th style="width: 150px">操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($data as $k =>$val)
                                @if($k%2 ==1)
                                    <tr class="gradeC">
                                @else
                                    <tr class="gradeA success">
                                @endif
                                        <td class="brand_id_{{ $val->id }}">
                                            {{ $k+1 }}
                                        </td>
                                        <td class="brand_name_{{ $val->id }}">{{ $val->brand_name }}</td>
                                        <td class="notice_content_{{ $val->id }}">
                                            <input type="hidden" name="brand_status" class="brand_status_{{$val->id}}" value="{{ $val->status }}">
                                            @if($val->status ==1 )
                                                显示
                                            @else
                                                隐藏
                                            @endif</td>
                                        <td class="notice_operator_{{ $val->id }}">{{ $val->createor }}</td>
                                        <td class="notice_status_{{ $val->id }}">
                                            {{ $val->created_at }}
                                        </td>
                                        <td >{{ $val->editor }}</td>
                                        <td >{{ $val->updated_at }}</td>
                                        <td class="td-manage ">
                                            @if(in_array(450103,$pageauth))
                                            <a title="编辑供应商" class="btn btn-success" onclick="editBrand({{ $val->id }})" href="javascript:;">
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                            @endif
                                                @if(in_array(450103,$pageauth))
                                                    <a title="删除" class="btn btn-success" onclick="editBrand({{ $val->id }})" href="javascript:;">
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

    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        供应商
                    </h4>
                </div>
                <form class="form-horizontal no-margin" id="noticeform" action="/supplier/post_add_brand" method="post">

                <div class="modal-body">

                    <div class="row-fluid">
                        <div class="span12">
                            <div class="widget-body">

                                    <div class="control-group">
                                        <label class="control-label" for="name">
                                            供应商名称:
                                        </label>
                                        <div class="controls controls-row">
                                            <input class="span12 layui-input" type="text" id="brand_name" name="brand_name" placeholder="标题名称">
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


    <script>
        //新增消息按钮的事件
        function addBrand(str){
            $("#myModalLabel").text(str);
            $('#brand_name').val('');
            $('#status').val('');
            $('#noticeform').prop('action','/supplier/post_add_brand');
            $('#myModal').modal();
        }

        function editBrand(id){
            $("#myModalLabel").text('编辑供应商');
            $('#noticeform').prop('action','/supplier/post_edit_brand/'+id);
            //补充表格数据
            $('#brand_name').val($.trim($('.brand_name_'+id).html()));
            $('#status').val($('.brand_status_'+id).val());
            $('#myModal').modal();

        }

        function submitform(){
            var datalist={
                brand_name: $('#brand_name').val(),
                status:  $('#status').val(),
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
