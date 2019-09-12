@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-header" style="text-align: center">
                        <div  style="text-align: center;clear: both;font-size: 16px;" >
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
                                    <td  class="pro-title">项目负责人</td>
                                    <td  >{{$project->purchase_username}}</td>
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
                            采购批次{{$val->purchase_number}} ({{$val->deliver_properties}})
                                 <span style="font-weight: normal;font-size: 14px">发货时间：{{$val->purchase_at}}
                            到达时间：{{$val->arrive_time}}</span>
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
                                                <a href ='/purchase/purchaseLogisDetail/{{$list->id}}'>
                                                <span class="btn btn-success">查看</span>
                                                </a>
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
            <div class="layui-form-item" style="float: right;clear: left">
                <a href="javascript:history.go(-1)">
                    <label for="L_repass" class="layui-form-label"></label>
                    <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                </a>
            </div>

            <div class="clearfix"></div>
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
