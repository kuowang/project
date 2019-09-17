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
    .layui-table td, .layui-table th {
        border: solid 1px #ccc;
    }
</style>
<table  border="1" cellspacing="0" cellpadding="0">
    <thead>
    <tr>
        <td colspan="10"><span class="btn btn-info">项目概况</span></td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td  colspan="2" class="pro-title">项目名称</td>
        <td  colspan="3">{{$project->project_name}}</td>
        <td  colspan="2"  class="pro-title">项目地点</td>
        <td colspan="3">{{$project->province}}{{$project->city}}{{$project->county}}{{$project->address_detail}}{{$project->foreign_address}}
        </td>
    </tr>

    <tr>
        <td  colspan="2" class="pro-title">工程名称</td>
        <td  colspan="3" >{{$engineering->engineering_name}}</td>
        <td colspan="2" class="pro-title">建筑面积(m²)</td>
        <td colspan="3">{{$engineering->build_area}}</td>

    </tr>
    <tr>
        <td colspan="2" class="pro-title">建筑楼层(层数)</td>
        <td colspan="3">{{$engineering->build_floor}}</td>
        <td colspan="2" class="pro-title">建筑高度(m)</td>
        <td colspan="3">{{$engineering->build_height}}</td>
    </tr>
    <tr>
        <td colspan="2" class="pro-title">报价日期</td>
        <td colspan="3" style="width: 20%">{{isset($budget->quotation_date)?$budget->quotation_date:''}}</td>
        <td colspan="2" class="pro-title">报价有效期限(天)</td>
        <td colspan="3">{{isset($budget->quotation_limit_day)?$budget->quotation_limit_day:''}}</td>
    </tr>

    <tr>
        <td colspan="10"><span class="btn btn-info">建筑设计指标</span></td>
    </tr>

    <tr>
        <td colspan="2"class="pro-title">建筑使用寿命(年)</td>
        <td colspan="3">{{isset($param->use_time)?$param->use_time:''}}</td>
        <td colspan="2"class="pro-title">抗震设防烈度(度)</td>
        <td colspan="3">{{isset($param->seismic_grade)?$param->seismic_grade:''}}</td>

    </tr>
    <tr>
        <td colspan="2"class="pro-title">屋面防水等级</td>
        <td colspan="3">{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
        <td colspan="2"class="pro-title">建筑耐火等级</td>
        <td colspan="3">{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
    </tr>

    <tr>
        <td colspan="2"class="pro-title">建筑隔声等级</td>
        <td colspan="3">{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
        <td colspan="2"class="pro-title">建筑节能标准(%)</td>
        <td colspan="3">{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
    </tr>
    <tr>
        <td colspan="10"><span class="btn btn-info">建筑荷载设计指标</span></td>
    </tr>
    </thead>
    <tbody>

    <tr>
        <td colspan="2" class="pro-title">设计基本风压(kN/m²)</td>
        <td  colspan="3">{{isset($param->use_time)?$param->use_time:''}}</td>
        <td  colspan="2" class="pro-title">设计基本雪压(kN/m²)</td>
        <td  colspan="3">{{isset($param->seismic_grade)?$param->seismic_grade:''}}</td>
    </tr>
    <tr>
        <td  colspan="2" class="pro-title">屋面活载荷(kN/m²)</td>
        <td  colspan="3">{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
        <td  colspan="2" class="pro-title">楼面活载荷(kN/m²)</td>
        <td  colspan="3">{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
    </tr>
    </tbody>
</table>
    <table  border="1" cellspacing="0" cellpadding="0">
        <thead>
    <tr>
        <td colspan="10"><span class="btn btn-info">预算清单列表</span></td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td style="width:5%">序号</td>
        <td style="width:15%">材料名称</td>
        <td style="width:15%">规格特性要求</td>
        <td style="width:6%">预算单位</td>
        <td style="width:9%">工程量(图纸)</td>
        <td style="width:7%">损耗(%)</td>
        <td style="width:8%">工程量(实际)</td>
        <td style="width:14%">品牌</td>
        <td style="width:8%">单价</td>
        <td style="width:6%">合计</td>
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
        @if(isset($budget_item[$v->sub_arch_id]))
            @foreach($budget_item[$v->sub_arch_id] as $k=>$mate)
                @php
                    $xuhao++;
                @endphp
                <tr class="materialList sub_arch_{{$mate->sub_arch_id}}" id="mater_{{$xuhao}}">
                    <td class="sub_arch_material_{{$mate->sub_arch_id}}">{{$k+1}}</td>
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
        <td colspan="10" class="pro-title">其他费用</td>
    </tr>

    <tr>
        <td class="pro-title" colspan="3">运输费</td>
        <td class="pro-title" colspan="2">(元/m²)</td>
        <td colspan="3"></td>
        <td >{{isset($budget->freight_price)?$budget->freight_price:''}}</td>
        <td id="freight_price_sum">{{isset($budget->freight_charge)?$budget->freight_charge:''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="3">包装费</td>
        <td class="pro-title" colspan="2">(元/m²)</td>
        <td colspan="3"></td>
        <td >{{isset($budget->package_price)?$budget->package_price:''}}</td>
        <td id="package_price_sum">{{isset($budget->package_charge)?$budget->package_charge:''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="3">装箱费</td>
        <td class="pro-title" colspan="2">(元/m²)</td>
        <td colspan="3"></td>
        <td >{{isset($budget->packing_price)?$budget->packing_price:''}}</td>
        <td  id="packing_price_sum">{{isset($budget->packing_charge)?$budget->packing_charge:''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="9" >材料费合计</td>

        <td  id="total_material">{{isset($budget->material_total_price)?$budget->material_total_price:''}}</td>
    </tr>

    <tr>
        <td class="pro-title" colspan="3">施工安装费</td>
        <td class="pro-title" colspan="2">(元/m²)</td>
        <td colspan="3"></td>
        <td >{{isset($budget->construction_price)?$budget->construction_price:''}}</td>
        <td >{{isset($budget->construction_charge)?$budget->construction_charge:''}}</td>
    </tr>
    <tr>
        <td colspan="9" class="pro-title" >工程造价(直接)</td>
        <td>{{isset($budget->direct_project_cost)?$budget->direct_project_cost:''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="3">利润</td>
        <td class="pro-title" colspan="2">元</td>
        <td colspan="2"></td>
        <td >%</td>
        <td >{{isset($budget->profit_ratio)?$budget->profit_ratio:''}}</td>
        <td >{{isset($budget->profit)?$budget->profit:''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="3">税费</td>
        <td class="pro-title" colspan="2">元</td>
        <td colspan="2"></td>
        <td >%</td>
        <td >{{isset($budget->tax_ratio)?$budget->tax_ratio:''}}</td>
        <td >{{isset($budget->tax)?$budget->tax:''}}</td>
    </tr>
    <tr>
        <td class="pro-title" colspan="9" >工程单价(元/m²)</td>
        <td id="unit_price">{{isset($budget->total_budget_price)?round($budget->total_budget_price/$engineering->build_area,2):''}}</td>

    </tr>
    <tr>
        <td class="pro-title" colspan="9" >工程总价(元)</td>
        <td >{{isset($budget->total_budget_price)?$budget->total_budget_price:''}}</td>
    </tr>
    </tbody>
</table>
