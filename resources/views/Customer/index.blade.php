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
                        客户列表<a id="dynamicTable"></a>
                        @if(in_array(5502,$pageauth) || in_array(5502,$manageauth))
                        <a class="btn btn-success" title="新增客户" id="addnotice"  onclick="addCustomer('新增客户')">
                            <i class="layui-icon">新增客户</i>
                        </a>
                        @endif
                    </div>
                    @if(in_array(5501,$pageauth) || in_array(5501,$manageauth))
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/customer/customerList" method="get">
                                客户名称: &nbsp;<input type="text" name="customer" value="{{ $customer }}" class="input-medium search-query">
                                客户性质: &nbsp;<input type="text" name="type" value="{{ $type }}" class="input-medium search-query">
                                地址: &nbsp;<input type="text" name="address" value="{{ $address }}" class="input-medium search-query">

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
                                <th>客户名称</th>
                                <th>客户性质</th>
                                <th>客户地址</th>
                                <th>联系人</th>
                                <th>联系人电话</th>
                                <th>联系人电话2</th>
                                <th>联系人邮箱</th>
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
                                        <td class="customer_id_{{ $val->id }}">{{ $k+1 }}</td>
                                        <td class="customer_{{ $val->id }}">{{ $val->customer }}</td>
                                        <td class="type_{{ $val->id }}">{{ $val->type }}</td>
                                        <td class="address_{{ $val->id }}">{{ $val->address }}</td>
                                        <td class="contacts_{{ $val->id }}">{{ $val->contacts }}</td>
                                        <td class="telephone_{{ $val->id }}">{{ $val->telephone }}</td>
                                        <td class="phone_{{ $val->id }}">{{ $val->phone }}</td>
                                        <td class="email_{{ $val->id }}">{{ $val->email }}</td>
                                        <td class="td-manage ">
                                            @if((in_array(5503,$pageauth) && $val->uid == $uid) || in_array(5503,$manageauth))
                                            <a title="编辑客户" class="btn btn-success" onclick="editBrand({{ $val->id }})" href="javascript:;">
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                            @endif
                                            @if((in_array(5504,$pageauth) && $val->uid == $uid) || in_array(5504,$manageauth))
                                                <a title="删除客户" class="btn btn-danger" onclick="deleteBrand({{ $val->id }})" href="javascript:;">
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
    <div class="modal fade" style="display: none" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        客户信息
                    </h4>
                </div>
                <form class="form-horizontal no-margin" id="noticeform" action="/supplier/post_add_brand" method="post">

                <div class="modal-body">

                    <div class="row-fluid">
                        <div class="span10">
                            <div class="widget-body">

                                <div class="control-group">
                                    <label class="control-label" for="customer">
                                        客户名称:
                                    </label>
                                    <div class="controls controls-row">
                                        <input class="span10 layui-input" type="text" id="customer" name="customer" placeholder="客户名称">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="type">
                                        客户性质:
                                    </label>
                                    <div class="controls controls-row">
                                        <input class="span10 layui-input" type="text" id="type" name="type" placeholder="客户性质">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="address">
                                        客户地址:
                                    </label>
                                    <div class="controls controls-row">
                                        <input class="span10 layui-input" type="text" id="address" name="address" placeholder="地址">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="contacts">
                                        联系人:
                                    </label>
                                    <div class="controls controls-row">
                                        <input class="span10 layui-input" type="text" id="contacts" name="contacts" placeholder="王**">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="telephone">
                                        联系电话:
                                    </label>
                                    <div class="controls controls-row">
                                        <input class="span10 layui-input" type="text" id="telephone" name="telephone" placeholder="135********">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="phone">
                                        联系电话2:
                                    </label>
                                    <div class="controls controls-row">
                                        <input class="span10 layui-input" type="text" id="phone" name="phone" placeholder="152********">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="email">
                                        电子邮箱:
                                    </label>
                                    <div class="controls controls-row">
                                        <input class="span10 layui-input" type="text" id="email" name="email" placeholder="****@163.com">
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
        function addCustomer(str){
            $("#myModalLabel").text(str);
            $('#customer').val('');
            $('#type').val('');
            $('#address').val('');
            $('#contacts').val('');
            $('#telephone').val('');
            $('#phone').val('');
            $('#email').val('');
            $('#noticeform').prop('action','/customer/postAddCustomer');
            $('#myModal').modal();
        }

        function editBrand(id){
            $("#myModalLabel").text('编辑客户');
            //补充表格数据
            $('#customer').val($.trim($('.customer_'+id).html()));
            $('#type').val($.trim($('.type_'+id).html()));
            $('#address').val($.trim($('.address_'+id).html()));
            $('#contacts').val($.trim($('.contacts_'+id).html()));
            $('#telephone').val($.trim($('.telephone_'+id).html()));
            $('#phone').val($.trim($('.phone_'+id).html()));
            $('#email').val($.trim($('.email_'+id).html()));
            $('#noticeform').prop('action','/customer/postEditCustomer/'+id);
            $('#myModal').modal();
        }

        function submitform(){
            //提交的数据信息
            var datalist={
                brand_name: $('#brand_name').val(),
                customer:  $('#customer').val(),
                type:  $('#type').val(),
                address:  $('#address').val(),
                contacts:  $('#contacts').val(),
                telephone:  $('#telephone').val(),
                phone:  $('#phone').val(),
                email:  $('#email').val(),
                myModal:  $('#myModal').val(),
            };
            console.log(datalist);
            var status=0;
            //验证数据的有效性
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

        function deleteBrand(id) {
            if(confirm("是否需要删除该客户，删除后将无法恢复")){
                $.ajax({
                    url:'/customer/postDeleteCustomer/'+id,
                    type:'post',
                    success:function(data){
                        console.log(data);
                        if(data.status == 1){
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
