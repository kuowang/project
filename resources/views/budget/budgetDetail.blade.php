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
        select{
            width: auto;
        }
        .radio, .checkbox {
            min-height: 20px;
            float: left;
            padding:0 20px;
        }
    </style>
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
                        @if(in_array($engineering->status,[0,1]))
                        <form method="post" action="/budget/updateProjectStatus/{{$engin_id}}">
                            <table class="layui-table layui-form">

                                <tbody>
                                <tr>
                                    <td  class="pro-title">项目(子工程)状态</td>
                                    <td>
                                        <select name="project_status" id="project_status" class="input-medium span8" style="min-width: 80px">
                                            @if($engineering->status ==0)
                                                <option value="0" >洽谈项目</option>
                                                <option value="1" >实施项目</option>
                                                <option value="2" >竣工项目</option>
                                                <option value="4" >终止项目</option>
                                            @elseif($engineering->status == 1)
                                                <option value="1" >实施项目</option>
                                                <option value="2" >竣工项目</option>
                                                <option value="4" >终止项目</option>
                                            @endif
                                        </select>
                                    </td>
                                    <td>
                                        <div  style="float: left;margin-right:10% ">
                                            <label for="L_repass" ></label>
                                            <button class="btn btn-success" lay-filter="add" type="submit" onclick='return submitStatus()'  lay-submit="">确认/保存</button>
                                        </div>
                                        <div  style="float: left;">
                                            <a href="javascript:history.go(-1)">
                                                <label for="L_repass" ></label>
                                                <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </form>
                        @endif
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="widget">
                <div class="widget-header" style="text-align: center">
                    <div  style="font-size: 16px;" >
                        <b>工程预算清单</b>
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">

                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6"><span class="btn btn-info">项目概况</span></th>
                            </tr>
                            </thead>
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
                                <td class="pro-title">建筑面积(平方米)</td>
                                <td >{{$engineering->build_area}}</td>
                                <td class="pro-title">建筑楼层(层数)</td>
                                <td >{{$engineering->build_floor}}</td>
                                <td class="pro-title">建筑高度(米)</td>
                                <td >{{$engineering->build_height}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">报价日期</td>
                                <td ><input type="text" name="quotation_date" id="quotation_date" value="{{isset($budget->quotation_date)?$budget->quotation_date:''}}"  lay-skin="primary" class="notempty span8"></td>
                                <td class="pro-title">报价有效期限(天)</td>
                                <td ><input type="text" name="quotation_limit_day" id="quotation_limit_day" value="{{isset($budget->quotation_limit_day)?$budget->quotation_limit_day:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                <td colspan="2"></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6"><span class="btn btn-info">建筑设计指标</span></th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td class="pro-title">建筑使用寿命(年)</td>
                                <td >{{isset($param->use_time)?$param->use_time:''}}</td>
                                <td class="pro-title">抗震设防烈度(级)</td>
                                <td >{{isset($param->seismic_grade)?$param->seismic_grade:''}}</td>
                                <td class="pro-title">屋面防水等级</td>
                                <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">建筑耐火等级</td>
                                <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
                                <td class="pro-title">建筑隔声等级</td>
                                <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
                                <td class="pro-title">建筑节能等级</td>
                                <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="4"><span class="btn btn-info">建筑荷载设计指标</span></th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td class="pro-title">设计基本风压(千牛/平方米)</td>
                                <td >{{isset($param->use_time)?$param->use_time:''}}</td>
                                <td class="pro-title">设计基本雪压(千牛/平方米)</td>
                                <td >{{isset($param->seismic_grade)?$param->seismic_grade:''}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">屋面活载荷(千牛/平方米)</td>
                                <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
                                <td class="pro-title">楼面活载荷(千牛/平方米)</td>
                                <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="4"><span class="btn btn-info">建筑尺寸设计参数</span></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td  class="pro-title">建筑层数：{{$engineering->build_floor}}层</td>
                                <td class="pro-title">总建筑面积（平方米）</td>
                                <td><span id="all_house_area">{{$engineering->build_area}}</span></td>
                                <td><span class="area_content" style="color: red"></span></td>
                            </tr>
                            <tr>
                                <td  class="pro-title">占地尺寸 长（米）</td>
                                <td>{{isset($param->floor_height)?$param->floor_height:''}}</td>
                                <td class="pro-title">占地尺寸 宽（米）</td>
                                <td>{{isset($param->floor_width)?$param->floor_width:''}}</td>
                            </tr>
                            <tr>
                                <td  class="pro-title">楼层信息</td>
                                <td class="pro-title">建筑层高（米）</td>
                                <td class="pro-title">室内净高（米）</td>
                                <td class="pro-title">建筑面积（平方米）</td>
                            </tr>

                            @for($i =1;$i <= $engineering->build_floor;$i++ )
                                <tr >
                                    <td class="pro-title">第{{$i}}层</td>
                                    <td>{{ isset($storey_height[$i-1])?$storey_height[$i-1]:'' }}</td>
                                    <td>{{ isset($house_height[$i-1])?$house_height[$i-1]:'' }}</td>
                                    <td>{{ isset($house_area[$i-1])?$house_area[$i-1]:'' }}</td>
                                </tr>
                            @endfor

                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="3">
                                    <span class="btn btn-info">建筑房间功能布局</span>
                                </th>
                            </tr>
                            </thead>
                            <tbody id="addroom">
                            <tr>
                                <td class="pro-title">位置</td>
                                <td class="pro-title">房间名称</td>
                                <td  class="pro-title">面积</td>
                            </tr>
                            @if(isset($room_position) && is_array($room_position))
                                @foreach($room_position as $k=>$v)
                                    <tr>
                                        <td >{{$v}}</td>
                                        <td >{{isset($room_name[$k])?$room_name[$k]:''}}</td>
                                        <td >{{isset($room_area[$k])?$room_area[$k]:''}}</td>
                                    </tr>
                                @endforeach
                            @endif

                            </tbody>
                        </table>
                        <div class="clearfix"></div>


                        <table class="layui-table layui-form table111">
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
                                <td class="pro-title" colspan="2">(元/平方米)</td>
                                <td colspan="3"></td>
                                <td >{{isset($budget->freight_price)?$budget->freight_price:''}}</td>
                                <td id="freight_price_sum">{{isset($budget->freight_charge)?$budget->freight_charge:''}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="3">包装费</td>
                                <td class="pro-title" colspan="2">(元/平方米)</td>
                                <td colspan="3"></td>
                                <td >{{isset($budget->package_price)?$budget->package_price:''}}</td>
                                <td id="package_price_sum">{{isset($budget->package_charge)?$budget->package_charge:''}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="3">装箱费</td>
                                <td class="pro-title" colspan="2">(元/平方米)</td>
                                <td colspan="3"></td>
                                <td >{{isset($budget->packing_price)?$budget->packing_price:''}}</td>
                                <td  id="packing_price_sum">{{isset($budget->packing_charge)?$budget->packing_charge:''}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="9" style="text-align: center;font-weight: bold;">材料费合计</td>

                                <td  id="total_material">{{isset($budget->material_total_price)?$budget->material_total_price:''}}</td>
                            </tr>

                            <tr>
                                <td class="pro-title" colspan="3">施工安装费</td>
                                <td class="pro-title" colspan="2">(元/平方米)</td>
                                <td colspan="3"></td>
                                <td >{{isset($budget->construction_price)?$budget->construction_price:''}}</td>
                                <td >{{isset($budget->construction_charge)?$budget->construction_charge:''}}</td>
                            </tr>
                            <tr>
                                <td colspan="9" class="pro-title" style="text-align: center;font-weight: bold;">工程造价(直接)</td>
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
                                <td class="pro-title" colspan="9" style="text-align: center;font-weight: bold;">工程单价(元/平方米)</td>
                                <td id="unit_price">{{isset($budget->total_budget_price)?round($budget->total_budget_price/$engineering->build_area,2):''}}</td>

                            </tr>
                            <tr>
                                <td class="pro-title" colspan="9" style="text-align: center;font-weight: bold;">工程总价(元)</td>
                                <td >{{isset($budget->total_budget_price)?$budget->total_budget_price:''}}</td>
                            </tr>
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
                            <hr>
                        <div style="margin: 10px">
                            <div>预算说明：</div>
                            <div>1、工程量=图质量*(100+损耗)/100</div>
                            <div>2、品牌来源于材料基础信息材料详细</div>
                            <div>3、单价有材料基本信息详情中填写</div>
                            <div>4、合价=工程量*单价</div>
                            <div>5、材料费合计=运输费+包装费+装箱费+材料费用</div>
                            <div>6、施工安装费=施工单价*建筑面积</div>
                            <div>7、工程造价(直接)=材料费合计+施工安装费</div>
                            <div> 8、利润=工程造价(直接)* 利润费比率</div>
                            <div>9、税费=(工程造价(直接)+利润)* 税费比率</div>
                            <div>10、工程造价总计=工程造价(直接)+利润+税费</div>
                            <div>11、工程单价=工程造价总计/建筑面积</div>
                        </div>
                            <div class="clearfix"></div>

                    </div>
                </div>
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

    <script>
        function submitStatus() {
            sta =$('#project_status').val();
            if(sta == 1){
                showMsg('当前状态未更改，不能提交')
                return false;
            }
            return true;
        }
        function showMsg(str){
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(str);
            });
        }

    </script>

@endsection
