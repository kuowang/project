@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-header" style="text-align: center">
                        <div class="title">
                            <span class="btn btn-info">采购物流管理</span>
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
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">
                            <table class="layui-table layui-form">
                                <thead>
                                    <th>采购单编号</th>
                                    <th>采购地点</th>
                                    <th>订单到货地点（中转）</th>
                                    <th>批次到货地点</th>
                                    <th>车牌号</th>
                                    <th>采购单发送状态</th>
                                    <th>物流状态</th>
                                    <th>物流状态操作</th>
                                    <th>执行操作</th>

                                </thead>
                                <tbody id="batchmanage">
                                    @if(isset($batchOrderList[$val->id]))
                                    @foreach($batchOrderList[$val->id] as $list)
                                        <tr  class="hiddenitem_{{$k}}">
                                            <td>{{$list->purchase_order_number}}</td>
                                            <td>{{$list->transfer_address}}</td>
                                            <td>{{$list->direct_address}}</td>
                                            <td>{{$list->supplier}}</td>
                                            <td>{{$list->chepaihao}}</td>

                                            <td>
                                                @if($list->send_number == 0)
                                                    <span class="btn btn-danger">未发送</span>
                                                @else
                                                    <span class="btn btn-success">已发送</span>
                                                @endif
                                            </td>
                                            <td>
                                                @if($list->logistics_status == 1)
                                                    <div class="btn btn-success" >已到达</div>
                                                @elseif($list->logistics_status ==0)
                                                    <div class="btn btn-warning" >未到达</div>
                                                @endif

                                            </td>
                                            <td>
                                            @if( (in_array(25010403,$pageauth) && $val->created_uid == $uid ) || in_array(25010403,$manageauth))

                                                @if($list->logistics_status == 0)
                                                    <div class="btn btn-success" onclick="emainStatus({{$list->id}},1)">已到达</div>
                                                @elseif($list->logistics_status ==1)
                                                    <div class="btn btn-warning" onclick="emainStatus({{$list->id}},0)">未到达</div>
                                               @endif
                                            @endif
                                            </td>
                                            <td>
                                                @if( (in_array(25010401,$pageauth) && $val->created_uid == $uid ) || in_array(25010401,$manageauth))
                                                    <a href ='/purchase/purchaseLogisDetail/{{$list->id}}'>
                                                    <span class="btn btn-success">查看</span>
                                                    </a>
                                                @endif

                                                @if($list->logistics_status ==0)
                                                    @if( (in_array(25010402,$pageauth) && $val->created_uid == $uid ) || in_array(25010402,$manageauth))
                                                        <a href ='/purchase/editPurchaseLogis/{{$list->id}}'>
                                                            <span  class="btn btn-success">编辑</span>
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

                        </div>
                    </div>
                    @endforeach
                </div>
            </div>

        </div>
    </div>


<script type="text/javascript">
    //审核状态修改
    function emainStatus(id,status) {
        $.ajax({
            url:'/purchase/examinePurchaseLogis/'+id+'/'+status,
            type:'post',
            // contentType: 'application/json',
            success:function(data){
                console.log(data);
                if(data.status ==1){
                    showMsg('物流状态更改成功');
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
