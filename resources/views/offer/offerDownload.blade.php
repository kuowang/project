
<table border="1" cellspacing="0" cellpadding="0">
    <thead>
    <tr>
        <th colspan="10"><span class="btn btn-info">项目概况</span></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td  class="pro-title">项目名称</td>
        <td  colspan="2">{{$project->project_name}}</td>
        <td  class="pro-title">项目地点</td>
        <td colspan="3">{{$project->province}}{{$project->city}}{{$project->county}}{{$project->address_detail}}{{$project->foreign_address}}
        </td>
        <td  class="pro-title">工程名称</td>
        <td  colspan="2">{{$engineering->engineering_name}}</td>
    </tr>

    <tr>
        <td class="pro-title">建筑面积(m²)</td>
        <td colspan="2">{{$engineering->build_area}}</td>
        <td class="pro-title">建筑楼层(层数)</td>
        <td colspan="3">{{$engineering->build_floor}}</td>
        <td class="pro-title">建筑高度(m)</td>
        <td colspan="2">{{$engineering->build_height}}</td>
    </tr>
    <tr>
        <td class="pro-title">报价日期</td>
        <td colspan="2">{{isset($offer->quotation_date)?$offer->quotation_date:''}}</td>
        <td class="pro-title">报价有效期限(天)</td>
        <td colspan="3">{{isset($offer->quotation_limit_day)?$offer->quotation_limit_day:''}}</td>
        <td colspan="3"></td>
    </tr>
    </tbody>
</table>

<table border="1" cellspacing="0" cellpadding="0">
    <thead>
    <tr>
        <th colspan="10"><span class="btn btn-info">建筑设计指标</span></th>
    </tr>
    </thead>
    <tbody>

    <tr>
        <td class="pro-title">建筑使用寿命(年)</td>
        <td colspan="2">{{isset($param->use_time)?$param->use_time:''}}</td>
        <td class="pro-title">抗震设防烈度(度)</td>
        <td colspan="3">{{isset($param->seismic_grade)?$param->seismic_grade:''}}</td>
        <td class="pro-title">屋面防水等级</td>
        <td colspan="2">{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
    </tr>
    <tr>
        <td class="pro-title">建筑耐火等级</td>
        <td colspan="2">{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
        <td class="pro-title">建筑隔声等级</td>
        <td colspan="3">{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
        <td class="pro-title">建筑节能标准(%)</td>
        <td colspan="2">{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
    </tr>
    </tbody>
</table>
<table border="1" cellspacing="0" cellpadding="0">
    <thead>
    <tr>
        <th colspan="10"><span class="btn btn-info">建筑荷载设计指标</span></th>
    </tr>
    </thead>
    <tbody>

    <tr>
        <td colspan="2" class="pro-title">设计基本风压(kN/m²)</td>
        <td colspan="3">{{isset($param->use_time)?$param->use_time:''}}</td>
        <td colspan="2"colspan="2"class="pro-title">设计基本雪压(kN/m²)</td>
        <td colspan="3">{{isset($param->seismic_grade)?$param->seismic_grade:''}}</td>
    </tr>
    <tr>
        <td colspan="2" class="pro-title">屋面活载荷(kN/m²)</td>
        <td colspan="3">{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
        <td colspan="2" class="pro-title">楼面活载荷(kN/m²)</td>
        <td colspan="3">{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
    </tr>
    </tbody>
</table>

<table border="1" cellspacing="0" cellpadding="0">
    <thead>
    <tr>
        <th colspan="10"><span class="btn btn-info">建筑尺寸设计参数</span></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td colspan="2" class="pro-title">建筑层数：{{$engineering->build_floor}}层</td>
        <td colspan="3"class="pro-title">总建筑面积（m²）</td>
        <td colspan="2"><span id="all_house_area">{{$engineering->build_area}}</span></td>
        <td colspan="3"><span class="area_content" style="color: red"></span></td>
    </tr>
    <tr>
        <td colspan="2" class="pro-title">占地尺寸 长（m）</td>
        <td colspan="3">{{isset($param->floor_height)?$param->floor_height:''}}</td>
        <td colspan="2" class="pro-title">占地尺寸 宽（m）</td>
        <td colspan="3" >{{isset($param->floor_width)?$param->floor_width:''}}</td>
    </tr>
    <tr>
        <td colspan="2" class="pro-title">楼层信息</td>
        <td colspan="3" class="pro-title">建筑层高（m）</td>
        <td colspan="2" class="pro-title">室内净高（m）</td>
        <td colspan="3" class="pro-title">建筑面积（m²）</td>
    </tr>

    @for($i =1;$i <= $engineering->build_floor;$i++ )
        <tr >
            <td colspan="2" class="pro-title">第{{$i}}层</td>
            <td colspan="3">{{ isset($storey_height[$i-1])?$storey_height[$i-1]:'' }}</td>
            <td colspan="2">{{ isset($house_height[$i-1])?$house_height[$i-1]:'' }}</td>
            <td colspan="3">{{ isset($house_area[$i-1])?$house_area[$i-1]:'' }}</td>
        </tr>
    @endfor

    </tbody>
</table>

<table border="1" cellspacing="0" cellpadding="0">
    <thead>
    <tr>
        <th colspan="10">
            <span class="btn btn-info">建筑房间功能布局</span>
        </th>
    </tr>
    </thead>
    <tbody id="addroom">
    <tr>
        <td colspan="3" class="pro-title">位置</td>
        <td colspan="3"class="pro-title">房间名称</td>
        <td colspan="4" class="pro-title">面积</td>
    </tr>
    @if(isset($room_position) && is_array($room_position))
        @foreach($room_position as $k=>$v)
            <tr>
                <td colspan="3">{{$v}}</td>
                <td colspan="3">{{isset($room_name[$k])?$room_name[$k]:''}}</td>
                <td colspan="4">{{isset($room_area[$k])?$room_area[$k]:''}}</td>
            </tr>
        @endforeach
    @endif

    </tbody>
</table>

<table border="1" cellspacing="0" cellpadding="0">
    <thead>
    <tr>
        <th style="width:5%">序号</th>
        <th style="width:15%">材料名称</th>
        <th style="width:15%">规格特性要求</th>
        <th style="width:6%">报价单位</th>
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
            <tr class="pro-title gradeX warning odd">
                <td colspan="10">{{$v->system_name}}({{$v->engin_name}})</td>
            </tr>
            @php( $system_code = $v->system_code)
        @endif
        <tr class="sub_arch_{{$v->sub_arch_id}} gradeA success odd">
            <td  colspan="10"> &nbsp;&nbsp;&nbsp;{{$v->sub_system_name}} <span style="color:#1d52f6">工况：{{$v->work_code}}</span> 编码：{{$v->sub_system_code}}</td>

        </tr>
        @if(isset($offer_item[$v->sub_arch_id]))
            @foreach($offer_item[$v->sub_arch_id] as $k=>$mate)
                @php
                    $xuhao++;
                @endphp
                <tr class="materialList sub_arch_{{$mate->sub_arch_id}}" id="mater_{{$xuhao}}">
                    <td class="sub_arch_material_{{$mate->sub_arch_id}}">{{$k+1}}</td>
                    <td>{{ $mate->material_name}}</td>
                    <td>{{ $mate->characteristic }}</td>
                    <td>{{ $mate->offer_unit }}</td>
                    <td>{{ $mate->drawing_quantity }}</td>
                    <td>{{ $mate->loss_ratio }}</td>
                    <td>{{ $mate->engineering_quantity }}</td>
                    <td>{{ $mate->brand_name}}</td>
                    <td>{{ $mate->offer_price }}</td>
                    <td>{{ $mate->total_material_price }}</td>
                </tr>
            @endforeach
        @endif
    @endforeach
    <tr>
        <td colspan="10" class="pro-title">其他费用</td>
    </tr>

    <tr>
        <td class="pro-title" colspan="3">运输费</td>
        <td class="pro-title" colspan="2">(元/m²)</td>
        <td colspan="3"></td>
        <td >{{isset($offer->freight_price)?$offer->freight_price:''}}</td>
        <td id="freight_price_sum">{{isset($offer->freight_charge)?$offer->freight_charge:''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="3">包装费</td>
        <td class="pro-title" colspan="2">(元/m²)</td>
        <td colspan="3"></td>
        <td >{{isset($offer->package_price)?$offer->package_price:''}}</td>
        <td id="package_price_sum">{{isset($offer->package_charge)?$offer->package_charge:''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="3">装箱费</td>
        <td class="pro-title" colspan="2">(元/m²)</td>
        <td colspan="3"></td>
        <td >{{isset($offer->packing_price)?$offer->packing_price:''}}</td>
        <td  id="packing_price_sum">{{isset($offer->packing_charge)?$offer->packing_charge:''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="9" style="text-align: center;font-weight: bold;">材料费合计</td>

        <td  id="total_material">{{isset($offer->material_total_price)?$offer->material_total_price:''}}</td>
    </tr>

    <tr>
        <td class="pro-title" colspan="3">施工安装费</td>
        <td class="pro-title" colspan="2">(元/m²)</td>
        <td colspan="3"></td>
        <td >{{isset($offer->construction_price)?$offer->construction_price:''}}</td>
        <td >{{isset($offer->construction_charge)?$offer->construction_charge:''}}</td>
    </tr>
    <tr>
        <td colspan="9" class="pro-title" style="text-align: center;font-weight: bold;">工程造价(直接)</td>
        <td>{{isset($offer->direct_project_cost)?$offer->direct_project_cost:''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="3">利润</td>
        <td class="pro-title" colspan="2">元</td>
        <td colspan="2"></td>
        <td >%</td>
        <td >{{isset($offer->profit_ratio)?$offer->profit_ratio:''}}</td>
        <td >{{isset($offer->profit)?$offer->profit:''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="3">税费</td>
        <td class="pro-title" colspan="2">元</td>
        <td colspan="2"></td>
        <td >%</td>
        <td >{{isset($offer->tax_ratio)?$offer->tax_ratio:''}}</td>
        <td >{{isset($offer->tax)?$offer->tax:''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="9" style="text-align: center;font-weight: bold;">工程单价(元/m²)</td>
        <td id="unit_price">{{isset($offer->total_offer_price)?round($offer->total_offer_price/$engineering->build_area,2):''}}</td>

    </tr>
    <tr>
        <td class="pro-title" colspan="9" style="text-align: center;font-weight: bold;">工程总价(元)</td>
        <td >{{isset($offer->total_offer_price)?$offer->total_offer_price:''}}</td>
    </tr>
    </tbody>
</table>
