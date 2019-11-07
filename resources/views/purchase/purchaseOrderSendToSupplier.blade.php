
<style>
    @font-face {
        font-family: 'msyh';
        font-style: normal;
        font-weight: normal;
        src: url(http://127.0.0.1/fonts/msyh.ttf) format('truetype');
    }
    body {  margin: 0;  padding: 0;  width: 100%;
        font-family: 'msyh';
        font-weight: 100;
    }
    table{
        width:100%;
    }
    .pro-title{
        background: #e6e6e6;
        font-weight: 200;
    }

</style>

<div style="text-align: center;font-size: 20px;">{{$project->project_name}}<span>(采购单)</span></div>
    <table class="layui-table layui-form" border="1" cellspacing="0" cellpadding="0">
            <tr>
                <td colspan="8"><span class="">项目基本信息</span></td>
            </tr>
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

    </table>

    <table class="layui-table layui-form" border="1" cellspacing="0" cellpadding="0">
        <thead>
        <tr>
            <td colspan="8"><span class="">采购物流信息</span></td>
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

        <tr>
            <td colspan="8"><span class="">供应商信息</span></td>
        </tr>

        <tr>

            <td class="pro-title">供应商名称</td>
            <td id="supplier">{{$supplier->supplier}}</td>
            <td class="pro-title">厂家名称</td>
            <td id="manufactor">{{$supplier->manufactor}}</td>
            <td class="pro-title">供应商地址</td>
            <td id="address">{{$supplier->address}}</td>
            <td class="pro-title">联系人</td>
            <td id="contacts">{{$supplier->contacts}}</td>
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

<style>
    .page-break {
        page-break-after: always;
    }
</style>
<div class="page-break"></div>
    <table class="layui-table layui-form table111" border="1" cellspacing="0" cellpadding="0">
        <tr>
            <td colspan="13" class="pro-title">材料信息</td>
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
                <td  colspan="13"> &nbsp;&nbsp;&nbsp;<span class="">{{$v->sub_system_name}}</span> <span style="color:#1d52f6">工况：{{$v->work_code}}</span> 编码：{{$v->sub_system_code}}</td>
            </tr>

            @foreach($itemlist[$v->sub_arch_id] as $key=>$item)

                    <tr class="supplier sub_arch_'+item.sub_arch_id+'" id="budget_item_{{$item->id}}">
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

                    </tr>
            @endforeach
            @endif

        @endforeach

        </tbody>
    </table>
