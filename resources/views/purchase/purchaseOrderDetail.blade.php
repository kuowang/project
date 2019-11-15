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
                        <div  style="text-align: center;clear: both;font-size: 16px;" >
                            <b>{{$project->project_name}}(采购单)</b>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                    <tr>
                                        <th colspan="8"><span class="btn btn-info">项目基本信息</span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">采购负责人</td>
                                    <td  >{{$engineering->purchase_username}}</td>
                                    <td  class="pro-title">项目地点（货物目的地）</td>
                                    <td colspan="3">{{$project->province}}{{$project->city}}{{$project->county}}{{$project->address_detail}}{{$project->foreign_address}}
                                    </td>
                                    <td  class="pro-title">工程名称</td>
                                    <td  >{{$engineering->engineering_name}}</td>
                                </tr>

                                <tr>
                                    <td class="pro-title">采购批次</td>
                                    <td >{{$batchinfo->purchase_number}}</td>
                                    <td class="pro-title">发货性质</td>
                                    <td >{{$batchinfo->deliver_properties}}</td>
                                    <td  class="pro-title">下单日期</td>
                                    <td >{{ $orderinfo->order_created_date }}</td>
                                    <td class="pro-title">计划发货时间</td>
                                    <td >{{$batchinfo->deliver_time}}</td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="clearfix"></div>

                        </div>
                    </div>
                </div>
                <div class="widget">

                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="8"><span class="btn btn-info">采购物流信息</span></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">送货方式</td>
                                    <td >{{ $orderinfo->deliver_mode }}</td>
                                    <td  class="pro-title">到达方式</td>
                                    <td >{{ $orderinfo->arrival_mode }}</td>
                                    <td  class="pro-title">中转站</td>
                                    <td >{{ $orderinfo->transfer_address }}</td>
                                    <td  class="pro-title">直达地址</td>
                                    <td >{{ $orderinfo->direct_address }}</td>
                                </tr>

                                <tr>

                                    <td class="pro-title">运输方式</td>
                                    <td >{{ $orderinfo->transport_mode }}</td>
                                    <td class="pro-title">装载方式</td>
                                    <td >{{ $orderinfo->load_mode }}</td>
                                    <td class="pro-title">车辆规格</td>
                                    <td >{{ $orderinfo->vehicle_mode }}</td>
                                    <td  class="pro-title">车辆数量</td>
                                    <td >{{ $orderinfo->vehicle_number }}</td>
                                </tr>
                                <tr>

                                    <td class="pro-title">包装要求</td>
                                    <td >{{ $orderinfo->packing_mode }}</td>
                                    <td class="pro-title">订单采购地点</td>
                                    <td >{{ $orderinfo->purchase_address }}</td>
                                    <td  class="pro-title">买方联系人</td>
                                    <td >{{ $orderinfo->purchaser }}</td>
                                    <td  class="pro-title">买方联系电话</td>
                                    <td >{{ $orderinfo->purchaser_phone }}</td>
                                </tr>


                                <tr>
                                    <td  class="pro-title">备注</td>
                                    <td id="remark" colspan="7"> {{ $orderinfo->remark }}</td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="clearfix"></div>
                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="8"><span class="btn btn-info">供应商信息</span></th>
                                </tr>
                                </thead>
                                <tbody>

                                <tr>

                                    <td style="width:8%;"  class="pro-title">供应商名称</td>
                                    <td style="width:17%;" id="supplier">{{$supplier->supplier}}</td>
                                    <td style="width:8%;"  class="pro-title">厂家名称</td>
                                    <td style="width:17%;" id="manufactor">{{$supplier->manufactor}}</td>
                                    <td style="width:8%;"  class="pro-title">供应商地址</td>
                                    <td style="width:17%;" id="address">{{$supplier->address}}</td>
                                    <td style="width:8%;"  class="pro-title">联系人</td>
                                    <td style="width:17%;" id="contacts">{{$supplier->contacts}}</td>
                                </tr>
                                <tr>

                                    <td  class="pro-title">联系电话</td>
                                    <td id="telephone">{{$supplier->telephone}}</td>
                                    <td  class="pro-title">电子邮箱</td>
                                    <td id="email">{{$supplier->email}}</td>
                                    <td colspan="4"></td>
                                </tr>

                                </tbody>
                            </table>

                            <div class="clearfix"></div>
                            <table class="layui-table layui-form table111">
                                <tr class="pro-title">
                                    <td colspan="13"><span class="btn btn-info">材料列表</span></td>
                                </tr>
                                <tr>
                                    <td>序号</td>
                                    <td>材料名称</td>
                                    <td>规格特性要求</td>
                                    <td>采购单位</td>
                                    <td>预算工程量</td>
                                    <td>品牌</td>
                                    <td>单价</td>
                                    <td>采购总价</td>
                                    <td>已采购</td>
                                    <td>待采购</td>
                                    <td>本次采购</td>
                                    <td>本次采购合计</td>
                                    <td>状态</td>
                                </tr>
                                <tbody id="">
                                @php
                                    $system_code ='';
                                    $xuhao=1;
                                @endphp
                                @foreach($engin_system as $v)
                                    @if(isset($itemlist[$v->sub_arch_id]))
                                    @if($system_code != $v->system_code)
                                        <tr class="pro-title gradeX warning odd">
                                            <td colspan="13">{{$v->system_name}}({{$v->engin_name}})</td>
                                        </tr>
                                        @php( $system_code = $v->system_code)
                                    @endif
                                    <tr class="sub_arch_{{$v->sub_arch_id}} gradeA success odd">
                                        <td  colspan="13"> &nbsp;&nbsp;&nbsp;<span class="btn btn-info">{{$v->sub_system_name}}</span> <span style="color:#1d52f6">工况：{{$v->work_code}}</span> 编码：{{$v->sub_system_code}}</td>
                                    </tr>

                                    @foreach($itemlist[$v->sub_arch_id] as $key=>$item)

                                            <tr class="supplier sub_arch_{{$v->sub_arch_id}}" id="budget_item_{{$item->id}}">
                                            <td>{{$xuhao++}}<input type="hidden" name="order_item_id[]" value="{{$item->id}}"></td>
                                            <td>{{$item->material_name}}</td>
                                            <td>{{$item->characteristic}}</td>
                                            <td>{{$item->purchase_unit}}</td>
                                            <td>{{$item->engineering_quantity}}</td>
                                            <td>{{$item->brand_name}}</td>
                                            <td>{{$item->purchase_price}}<input type="hidden" id="purchase_price_{{$item->id}}" name="purchase_price[]" value="{{$item->purchase_price}}"></td>
                                            <td>{{$item->total_purchase_price}}</td>
                                            <td>{{$item->already_purchased_quantity}}</td>
                                            <td id="wait_purchased_quantity_{{$item->id}}">{{$item->wait_purchased_quantity}}</td>
                                            <td>{{$item->actual_purchase_quantity}}</td>
                                            <td id="actual_total_fee_{{$item->id}}">{{$item->actual_total_fee}}</td>
                                            @if($item->already_purchased_quantity == 0)
                                            <td><span class="btn btn-danger">未下单</span></td>
                                            @elseif($item->already_purchased_quantity == $item->engineering_quantity)
                                            <td><span class="btn btn-success">已完成</span></td>
                                            @else
                                            <td><span class="btn btn-info">剩余下单</span></td>
                                            @endif
                                            </tr>
                                    @endforeach
                                    @endif

                                @endforeach

                                </tbody>
                            </table>
                            <div class="clearfix"></div>


                            <div class="layui-form-item" style="float: right;clear: left">
                                <a href="javascript:history.go(-1)">
                                    <label for="L_repass" class="layui-form-label"></label>
                                    <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>


<script type="text/javascript">

</script>

@endsection
