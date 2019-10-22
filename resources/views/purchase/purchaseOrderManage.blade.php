@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

    <style type="text/css">
        .layui-form input[type=checkbox], .layui-form input[type=radio], .layui-form select {
            display: inline;
        }
        .pro-title{
            background: #e6e6e6;
        }
        .layui-table td, .layui-table th {
            border: solid 1px #ccc;
        }

    </style>
    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-header" style="text-align: center">
                        <div class="title">
                            <span class="btn btn-info">采购订单管理</span>
                        </div>
                        <div  style="font-size: 16px;     text-align: center;" >
                            <b>{{$project->project_name}}</b>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                    <tr>
                                        <th colspan="6">项目基本信息</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">采购负责人</td>
                                    <td  >{{$engineering->purchase_username}}</td>
                                    <td  class="pro-title">项目地点（货物目的地）</td>
                                    <td >{{$project->province}}{{$project->city}}{{$project->county}}{{$project->address_detail}}{{$project->foreign_address}}
                                    </td>
                                    <td  class="pro-title">工程名称</td>
                                    <td  >{{$engineering->engineering_name}}</td>
                                </tr>

                                <tr>
                                    <td class="pro-title">建筑面积(m²)</td>
                                    <td >{{$engineering->build_area}}</td>
                                    <td class="pro-title">建筑楼层(层数)</td>
                                    <td >{{$engineering->build_floor}}</td>
                                    <td class="pro-title">建筑高度(m)</td>
                                    <td >{{$engineering->build_height}}</td>
                                </tr>
                                <tr>
                                    <td class="pro-title">场地自然条件</td>
                                    <td >{{$project->environment}}</td>
                                    <td class="pro-title">交通条件</td>
                                    <td >{{$project->traffic}}</td>
                                    <td class="pro-title">材料储放条件</td>
                                    <td >{{$project->material_storage}}</td>
                                </tr>

                                </tbody>
                            </table>

                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="widget">
                    @foreach($batchList as $k=>$val)
                    <div class="widget-header">
                        <div class="title">
                            <span class="btn btn-info">采购批次{{$val->purchase_number}} </span>
                            @if($val->deliver_properties ==1)
                                <span class="btn btn-info">预算内</span>
                            @else
                                <span class="btn btn-danger">预算外</span>
                            @endif
                        </div>
                        @if( (in_array(25010304,$pageauth) && $val->created_uid == $uid ) || in_array(25010304,$manageauth))
                        @if($val->pbrm_count >0)
                        <span class="title"style="float: right;">
                        <a class="btn btn-success" href="/purchase/createPurchaseOrder/{{$val->id}}">
                            <i class="layui-icon">创建采购单 +</i>
                        </a>
                        </span>
                        @endif
                        @endif
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                    <th>批次</th>
                                    <th>采购单编号</th>
                                    <th>计划发货时间</th>
                                    <th>计划到达时间</th>
                                    <th>供应商名称</th>
                                    <th>采购人员</th>
                                    <th>采购单审核状态</th>
                                    <th>采购单发送状态</th>
                                    <th>审核操作</th>
                                    <th>执行操作</th>

                                </thead>
                                <tbody id="batchmanage">
                                    @if(isset($batchOrderList[$val->id]))
                                    @foreach($batchOrderList[$val->id] as $list)
                                        <tr  class="hiddenitem_{{$k}}">
                                            <td>{{$val->purchase_number}}</td>
                                            <td>{{$list->purchase_order_number}}</td>
                                            <td>{{$val->deliver_time}}</td>
                                            <td>{{$val->arrive_time}}</td>
                                            <td>{{$list->supplier}}</td>
                                            <td>{{$list->created_user_name}}</td>
                                            <td>
                                                @if($list->order_status ==0)
                                                    <span class="btn btn-danger">未审核</span>
                                                @else
                                                    <span class="btn btn-success">已审核</span>
                                                @endif
                                            </td>
                                            <td>
                                                @if($list->send_number == 0)
                                                    <span class="btn btn-danger">未发送</span>
                                                @else
                                                    <span class="btn btn-success">已发送</span>
                                                @endif
                                            </td>

                                            @if( in_array(25010305,$manageauth))
                                            <td>
                                                @if($list->order_status == 0)
                                                    <div class="btn btn-success" onclick="emainStatus({{$list->id}},1)">通过</div>
                                                @elseif($list->order_status ==1)
                                                    <div class="btn btn-warning" onclick="emainStatus({{$list->id}},0)">取消</div>
                                               @endif

                                            </td>

                                            @endif

                                            <td>
                                                @if( (in_array(25010301,$pageauth) && $val->created_uid == $uid ) || in_array(25010301,$manageauth))
                                                    <a href ='/purchase/purchaseOrderDetail/{{$list->id}}'>
                                                    <span class="btn btn-success">查看</span>
                                                    </a>
                                                @endif
                                                @if($list->order_status ==0)
                                                    @if( (in_array(25010302,$pageauth) && $val->created_uid == $uid ) || in_array(25010302,$manageauth))
                                                        <a href ='/purchase/editPurchaseOrder/{{$list->id}}'>
                                                            <span  class="btn btn-success">编辑</span>
                                                        </a>
                                                    @endif
                                                    @if((in_array(25010303,$pageauth) && $val->created_uid == $uid ) || in_array(25010303,$manageauth))
                                                        <span  class="btn btn-danger" onclick="deletePurchaseOrder({{$list->id}})">删除</span>
                                                    @endif
                                                @else
                                                    @if((in_array(25010306,$pageauth) && $val->created_uid == $uid ) || in_array(25010306,$manageauth))
                                                        <a href="/purchase/purchaseOrderSendSupplier/{{$list->id}}">
                                                            <span  class="btn btn-danger" >发送供应商</span>
                                                        </a>
                                                    @endif
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                    @endif
                                </tbody>
                            </table>

                            <div class="clearfix"></div>
                            <div>
                                注：批次中关联预算材料后才能创建采购单
                            </div>
                            <div class="clearfix"></div>

                        </div>
                    </div>
                    @endforeach
                </div>
            </div>

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

<script type="text/javascript">
    //审核状态修改
    function emainStatus(id,status) {

        $.ajax({
            url:'/purchase/examinePurchaseOrder/'+id+'/'+status,
            type:'post',
            // contentType: 'application/json',
            success:function(data){
                console.log(data);
                if(data.status ==1){
                    showMsg('审核更改成功');
                }else{
                    showMsg(data.info)
                }
                setTimeout(function(){ location.href=location.href; }, 1000);
            },
        });
    }

    //删除采购单
    function deletePurchaseOrder(id){
        var r = confirm("确认删除该采购单");
        if (r == true) {
            $.ajax({
                url:'/purchase/deletePurchaseOrder/'+id,
                type:'post',
                // contentType: 'application/json',
                success:function(data){
                    console.log(data);
                    if(data.status == 1){
                        location.href=location.href;
                    }else{
                        showMsg(data.info)
                    }
                },
                error:function () {
                    showMsg('提交失败，请刷新页面再试');
                }
            });

        } else {
            return false;
        }

    }

    function showMsg(str){
        layui.use('layer', function(){
            var layer = layui.layer;
            layer.msg(str);
        });
    }


</script>

@endsection
