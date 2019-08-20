
<table  border="1" cellspacing="0" cellpadding="0">
    <thead>
    <tr>
        <th colspan="10">项目概况</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td  colspan="2">项目名称</td>
        <td  >{{$project->project_name}}</td>
        <td  colspan="2">项目地点</td>
        <td  colspan="2">{{$project->province}}{{$project->city}}{{$project->county}}{{$project->address_detail}}{{$project->foreign_address}}</td>
        <td  colspan="2">工程名称</td>
        <td  >{{$engineering->engineering_name}}</td>
    </tr>

    <tr>
        <td colspan="2">建筑面积(平方米)</td>
        <td >{{$engineering->build_area}}</td>
        <td colspan="2">建筑楼层(层数)</td>
        <td colspan="2">{{$engineering->build_floor}}</td>
        <td colspan="2">建筑高度(米)</td>
        <td >{{$engineering->build_height}}</td>
    </tr>

    <tr>
        <td colspan="2">报价日期</td>
        <td >{{isset($offer->quotation_date)?$offer->quotation_date:''}}</td>
        <td colspan="2">报价有效期限(天)</td>
        <td colspan="2">{{isset($offer->quotation_limit_day)?$offer->quotation_limit_day:''}}</td>
        <td colspan="2">使用时长(年)</td>
        <td >{{isset($offer->use_time)?$offer->use_time:''}}</td>
    </tr>
    <tr>
        <td colspan="2">抗震等级(级)</td>
        <td >{{isset($offer->seismic_grade)?$offer->seismic_grade:''}}</td>
        <td colspan="2">抗风等级(级)</td>
        <td colspan="2">{{isset($offer->wind_grade)?$offer->wind_grade:''}}</td>
        <td colspan="2">保温构造形式</td>
        <td >{{isset($offer->keep_warm)?$offer->keep_warm:''}}</td>
    </tr>
    <tr>
        <td colspan="2">屋面防水等级</td>
        <td >{{isset($offer->waterproof_grade)?$offer->waterproof_grade:''}}</td>
        <td colspan="2">结构主体形式</td>
        <td colspan="2">{{isset($offer->structural_style)?$offer->structural_style:''}}</td>
        <td colspan="2">主体钢材材质</td>
        <td >{{isset($offer->steel_material)?$offer->steel_material:''}}</td>
    </tr>

    </tbody>
</table>

<table  border="1" cellspacing="0" cellpadding="0">
    <thead>
    <tr>
        <th colspan="4">楼层信息</th>
        <td colspan="3">建筑高度</td>
        <td colspan="3">室内净高</td>
    </tr>
    </thead>
    <tbody>

    @for($i =1;$i <= $engineering->build_floor;$i++ )
        <tr >
            <td colspan="4">第{{$i}}层</td>
            <td colspan="3">{{isset($storey_height[$i-1])?$storey_height[$i-1]:''}}米</td>
            <td colspan="3">{{isset($house_height[$i-1])?$house_height[$i-1]:''}}米</td>
        </tr>
    @endfor

    </tbody>
</table>

<table  border="1" cellspacing="0" cellpadding="0">
    <thead>
    <tr>
        <th style="width:5%">序号</th>
        <th style="width:15%">材料名称</th>
        <th style="width:15%">规格特性要求</th>
        <th style="width:6%">预算单位</th>
        <th style="width:9%">工程量(图纸)</th>
        <th style="width:7%">损耗(%)</th>
        <th style="width:8%">工程量(实际)</th>
        <th style="width:14%">品牌</th>
        <th style="width:8%">单价</th>
        <th style="width:6%">合计</th>
    </tr>
    </thead>
    <tbody>
    @php
        $system_code ='';
        $xuhao=0;
    @endphp
    @foreach($engin_system as $v)
        @if($system_code != $v->system_code)
            <tr >
                <td colspan="10">{{$v->system_name}}({{$v->engin_name}})</td>
            </tr>
            @php( $system_code = $v->system_code)
        @endif
        <tr >
            <td  colspan="10"> &nbsp;&nbsp;&nbsp;{{$v->sub_system_name}} <span style="color:#1d52f6">工况：{{$v->work_code}}</span> 编码：{{$v->sub_system_code}}</td>

        </tr>
        @if(isset($offer_item[$v->sub_arch_id]))
            @foreach($offer_item[$v->sub_arch_id] as $k=>$mate)
                @php
                    $xuhao++;
                @endphp
                <tr >
                    <td >{{$k+1}}</td>
                    <td>{{ $mate->material_name}}</td>
                    <td>{{ $mate->characteristic }}</td>
                    <td>{{ $mate->material_budget_unit }}</td>
                    <td>{{ $mate->drawing_quantity }}</td>
                    <td>{{ $mate->loss_ratio }}</td>
                    <td>{{ $mate->engineering_quantity }}</td>
                    <td>{{ $mate->brand_name}}</td>
                    <td>{{ $mate->budget_price }}</td>
                    <td>{{ $mate->total_material_price }}</td>
                </tr>
            @endforeach
        @endif
    @endforeach
    <tr>
        <td colspan="10" >其他费用</td>
    </tr>

    <tr>
        <td  colspan="3">运输费</td>
        <td  colspan="2">(元/平方米)</td>
        <td colspan="3"></td>
        <td >{{isset($offer->freight_price)?$offer->freight_price:''}}</td>
        <td >{{isset($offer->freight_charge)?$offer->freight_charge:''}}</td>
    </tr>
    <tr>
        <td  colspan="3">包装费</td>
        <td  colspan="2">(元/平方米)</td>
        <td colspan="3"></td>
        <td >{{isset($offer->package_price)?$offer->package_price:''}}</td>
        <td >{{isset($offer->package_charge)?$offer->package_charge:''}}</td>
    </tr>
    <tr>
        <td  colspan="3">装箱费</td>
        <td  colspan="2">(元/平方米)</td>
        <td colspan="3"></td>
        <td >{{isset($offer->packing_price)?$offer->packing_price:''}}</td>
        <td  >{{isset($offer->packing_charge)?$offer->packing_charge:''}}</td>
    </tr>
    <tr>
        <td  colspan="9" style="text-align: center;font-weight: bold;">材料费合计</td>

        <td  >{{isset($offer->material_total_price)?$offer->material_total_price:''}}</td>
    </tr>

    <tr>
        <td  colspan="3">施工安装费</td>
        <td  colspan="2">(元/平方米)</td>
        <td colspan="3"></td>
        <td >{{isset($offer->construction_price)?$offer->construction_price:''}}</td>
        <td >{{isset($offer->construction_charge)?$offer->construction_charge:''}}</td>
    </tr>
    <tr>
        <td colspan="9"  style="text-align: center;font-weight: bold;">工程造价(直接)</td>
        <td>{{isset($offer->direct_project_cost)?$offer->direct_project_cost:''}}</td>
    </tr>
    <tr>
        <td  colspan="3">利润</td>
        <td  colspan="2">元</td>
        <td colspan="2"></td>
        <td >%</td>
        <td >{{isset($offer->profit_ratio)?$offer->profit_ratio:''}}</td>
        <td >{{isset($offer->profit)?$offer->profit:''}}</td>
    </tr>
    <tr>
        <td  colspan="3">税费</td>
        <td  colspan="2">元</td>
        <td colspan="2"></td>
        <td >%</td>
        <td >{{isset($offer->tax_ratio)?$offer->tax_ratio:''}}</td>
        <td >{{isset($offer->tax)?$offer->tax:''}}</td>
    </tr>
    <tr>
        <td  colspan="9" style="text-align: center;font-weight: bold;">工程单价(元/平方米)</td>
        <td >{{isset($offer->total_offer_price)?round($offer->total_offer_price/$engineering->build_area,2):''}}</td>

    </tr>
    <tr>
        <td  colspan="9" style="text-align: center;font-weight: bold;">工程总价(元)</td>
        <td >{{isset($offer->total_offer_price)?$offer->total_offer_price:''}}</td>
    </tr>
    </tbody>
</table>
