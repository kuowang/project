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


<div style="text-align: center;font-size: 20px;"> {{$project->project_name}}（工程报价清单）</div>

<table class="layui-table layui-form"  border="1" cellspacing="0" cellpadding="0">
    <tbody>
    <tr>
        <td  class="pro-title">项目名称</td>
        <td  >{{$project->project_name}}</td>
        <td  class="pro-title">项目地点</td>
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
        <td class="pro-title">报价日期</td>
        <td >{{isset($offer->quotation_date)?$offer->quotation_date:''}}</td>
        <td class="pro-title">报价有效期限(天)</td>
        <td >{{isset($offer->quotation_limit_day)?$offer->quotation_limit_day:''}}</td>
        <td class="pro-title">建筑数量(栋)</td>
        <td>{{$engineering->build_number}}</td>                            </tr>

    <tr>
        <td colspan="6"><span class="btn btn-info">建筑设计指标</span></td>
    </tr>

    <tr>
        <td class="pro-title">建筑使用寿命(年)</td>
        <td >{{isset($param->use_time)?$param->use_time:''}}</td>
        <td class="pro-title">抗震设防烈度(度)</td>
        <td >{{isset($param->seismic_grade)?$param->seismic_grade:''}}</td>
        <td class="pro-title">屋面防水等级</td>
        <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
    </tr>
    <tr>
        <td class="pro-title">建筑耐火等级</td>
        <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
        <td class="pro-title">建筑隔声等级</td>
        <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
        <td class="pro-title">建筑节能标准(%)</td>
        <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
    </tr>
    </tbody>
</table>

<table class="layui-table layui-form"  border="1" cellspacing="0" cellpadding="0">
    <thead>
    <tr>
        <td colspan="4"><span class="btn btn-info">建筑荷载设计指标</span></td>
    </tr>
    </thead>
    <tbody>

    <tr>
        <td class="pro-title">设计基本风压(kN/m²)</td>
        <td >{{isset($param->basic_wind_pressure)?$param->basic_wind_pressure:''}}</td>
        <td class="pro-title">设计基本雪压(kN/m²)</td>
        <td >{{isset($param->basic_snow_pressure)?$param->basic_snow_pressure:''}}</td>
    </tr>
    <tr>
        <td class="pro-title">屋面活载荷(kN/m²)</td>
        <td >{{isset($param->roof_load)?$param->roof_load:''}}</td>
        <td class="pro-title">楼面活载荷(kN/m²)</td>
        <td >{{isset($param->floor_load)?$param->floor_load:''}}</td>
    </tr>
    </tbody>
</table>
<style>
    .page-break {
        page-break-after: always;
    }
</style>
<div class="page-break"></div>
<div style="text-align: center;font-size: 20px;">报价清单列表</div>

<table class="layui-table layui-form table111"  border="1" cellspacing="0" cellpadding="0" >
    <thead>
    <tr>
        <td >序号</td>
        <td >材料名称</td>
        <td >规格特性要求</td>
        <td >报价单位</td>
        <td >工程量(图纸)</td>
        <td >损耗(%)</td>
        <td >工程量(实际)</td>
        <td >品牌</td>
        <td >单价</td>
        <td >合计</td>
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
                    <td>{{ number_format($mate->drawing_quantity, 2, '.', '') }}</td>
                    <td>{{ number_format($mate->loss_ratio, 2, '.', '') }}</td>
                    <td>{{ number_format($mate->engineering_quantity, 2, '.', '') }}</td>
                    <td>{{ $mate->brand_name}}</td>
                    <td>{{ number_format($mate->offer_price, 2, '.', '') }}</td>
                    <td>{{ number_format($mate->total_material_price, 2, '.', '') }}</td>
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
        <td >{{isset($offer->freight_price)?number_format($offer->freight_price, 2, '.', ''):''}}</td>
        <td id="freight_price_sum">{{isset($offer->freight_charge)?number_format($offer->freight_charge, 2, '.', ''):''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="3">包装费</td>
        <td class="pro-title" colspan="2">(元/m²)</td>
        <td colspan="3"></td>
        <td >{{isset($offer->package_price)?number_format($offer->package_price, 2, '.', ''):''}}</td>
        <td id="package_price_sum">{{isset($offer->package_charge)?number_format($offer->package_charge, 2, '.', ''):''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="3">装箱费</td>
        <td class="pro-title" colspan="2">(元/m²)</td>
        <td colspan="3"></td>
        <td >{{isset($offer->packing_price)?number_format($offer->packing_price, 2, '.', ''):''}}</td>
        <td  id="packing_price_sum">{{isset($offer->packing_charge)?number_format($offer->packing_charge, 2, '.', ''):''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="9" style="text-align: center;">材料费合计</td>

        <td  id="total_material">{{isset($offer->material_total_price)?number_format($offer->material_total_price, 2, '.', ''):''}}</td>
    </tr>

    <tr>
        <td class="pro-title" colspan="3">施工安装费</td>
        <td class="pro-title" colspan="2">(元/m²)</td>
        <td colspan="3"></td>
        <td >{{isset($offer->construction_price)?number_format($offer->construction_price, 2, '.', ''):''}}</td>
        <td >{{isset($offer->construction_charge)?number_format($offer->construction_charge, 2, '.', ''):''}}</td>
    </tr>
    <tr>
        <td colspan="9" class="pro-title" style="text-align: center;">工程造价(直接)</td>
        <td>{{isset($offer->direct_project_cost)?number_format($offer->direct_project_cost, 2, '.', ''):''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="3">利润</td>
        <td class="pro-title" colspan="2">元</td>
        <td colspan="2"></td>
        <td >%</td>
        <td >{{isset($offer->profit_ratio)?number_format($offer->profit_ratio, 2, '.', ''):''}}</td>
        <td >{{isset($offer->profit)?number_format($offer->profit, 2, '.', ''):''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="3">税费</td>
        <td class="pro-title" colspan="2">元</td>
        <td colspan="2"></td>
        <td >%</td>
        <td >{{isset($offer->tax_ratio)?number_format($offer->tax_ratio, 2, '.', ''):''}}</td>
        <td >{{isset($offer->tax)?number_format($offer->tax, 2, '.', ''):''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="9" style="text-align: center;">工程单价(元/m²)</td>
        <td id="unit_price">{{isset($offer->total_offer_price)?number_format($offer->total_offer_price/$engineering->build_area, 2, '.', ''):''}}</td>

    </tr>
    <tr>
        <td class="pro-title" colspan="9" style="text-align: center;">工程总价(元)</td>
        <td >{{isset($offer->total_offer_price)?number_format($offer->total_offer_price, 2, '.', ''):''}}</td>
    </tr>
    </tbody>
</table>
