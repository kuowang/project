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
                        品牌列表<a id="dynamicTable"></a>
                        @if(in_array(450101,$pageauth) || in_array(4502,$manageauth))
                        <a class="btn btn-success" title="新增品牌" id="addnotice"  onclick="addBrand('新增品牌')">
                            <i class="layui-icon">新增品牌</i>
                        </a>
                        @endif
                    </div>
                    @if(in_array(450102,$pageauth) || in_array(4501,$manageauth))
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/supplier/brandList" method="get">
                                品牌名称: &nbsp;<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
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
                                <th>ID</th>
                                <th>品牌名称</th>
                                <th>状态</th>
                                <th>创建人</th>
                                <th>创建时间</th>
                                <th>操作人</th>
                                <th>编辑时间</th>
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
                                            {{ $val->id }}
                                        </td>
                                        <td class="brand_name_{{ $val->id }}">{{ $val->brand_name }}</td>
                                        <td class="notice_content_{{ $val->id }}">
                                            <input type="hidden" name="brand_status" class="brand_status_{{$val->id}}" value="{{ $val->status }}">
                                            @if($val->status ==1 )
                                                有效
                                            @else
                                                无效
                                            @endif</td>
                                        <td class="notice_operator_{{ $val->id }}">{{ $val->createor }}</td>
                                        <td class="notice_status_{{ $val->id }}">
                                            {{ $val->created_at }}
                                        </td>
                                        <td >{{ $val->editor }}</td>
                                        <td >{{ $val->updated_at }}</td>
                                        <td class="td-manage ">
                                            @if((in_array(450103,$pageauth) && $val->create_uid == $uid) || in_array(4503,$manageauth))
                                            <a title="编辑品牌" class="btn btn-success" onclick="editBrand({{ $val->id }})" href="javascript:;">
                                                <i class="layui-icon">编辑品牌</i>
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
                        品牌
                    </h4>
                </div>
                <form class="form-horizontal no-margin" id="noticeform" action="/supplier/post_add_brand" method="post">

                <div class="modal-body">

                    <div class="row-fluid">
                        <div class="span12">
                            <div class="widget-body">

                                    <div class="control-group">
                                        <label class="control-label" for="name">
                                            品牌名称:
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

                                <div class="control-group">
                                    <label class="control-label" for="role">
                                        供应商:
                                    </label>
                                    <div class="controls">
                                        @foreach ($supplier as $val )
                                            <label class="checkbox">
                                                <input type="checkbox" id="supplier_{{ $val->id }}" class="supplier" name="supplier[]" value="{{ $val->id }}">
                                                {{ $val->supplier }}({{ $val->manufactor }})
                                            </label>
                                        @endforeach
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
            $("#myModalLabel").text('编辑品牌');
            $('#noticeform').prop('action','/supplier/post_edit_brand/'+id);
            //补充表格数据
            $('#brand_name').val($.trim($('.brand_name_'+id).html()));
            $('#status').val($('.brand_status_'+id).val());
            //获取品牌对应的供应商信息
            $.ajax({
                url:'/supplier/brandSupplierList/'+id,
                type:'get',
                // contentType: 'application/json',
                success:function(data){
                    console.log(data);
                    if(data.status == 1){
                        arr =data.data;
                        for(var i=0;i<arr.length;i++){
                            console.log(arr[i]);
                            $('#supplier_'+arr[i]).prop('checked',true);
                        }
                    }
                },
            });
            $('#myModal').modal();
        }

        function submitform(){
            var supplier=new Array();
            $('input[name="supplier[]"]:checked').each(function(){
                supplier.push($(this).val());//向数组中添加元素
            });
            var datalist={
                brand_name: $('#brand_name').val(),
                status:  $('#status').val(),
                supplier:supplier,
            };
            console.log(datalist);
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
                            //location.href=location.href
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
