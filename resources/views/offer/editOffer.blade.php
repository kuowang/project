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
                    <div  style="font-size: 16px;" >
                        <b>{{$project->project_name}}</b>（工程报价清单）
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <form method="post" action="/offer/postEditOffer/{{ $engin_id }}">

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
                                    <td class="pro-title">建筑面积(m²)</td>
                                    <td >{{$engineering->build_area}}</td>
                                    <td class="pro-title">建筑楼层(层数)</td>
                                    <td >{{$engineering->build_floor}}</td>
                                    <td class="pro-title">建筑高度(m)</td>
                                    <td >{{$engineering->build_height}}</td>
                                </tr>
                                <tr>
                                    <td class="pro-title">报价日期</td>
                                    <td ><input type="text" name="quotation_date" id="quotation_date" value="{{isset($offer->quotation_date)?$offer->quotation_date:''}}"  lay-skin="primary" class="notempty span8"></td>
                                    <td class="pro-title">报价有效期限(天)</td>
                                    <td ><input type="text" name="quotation_limit_day" id="quotation_limit_day" value="{{isset($offer->quotation_limit_day)?$offer->quotation_limit_day:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">建筑数量(栋)</td>
                                    <td>{{$engineering->build_number}}</td>
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
                            <div class="clearfix"></div>
                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="4"><span class="btn btn-info">建筑荷载设计指标</span></th>
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
                            <div class="clearfix"></div>


                            <table class="layui-table layui-form table111">
                                <thead>
                                <tr>
                                    <th colspan="11"><span class="btn btn-info">报价清单列表</span></th>
                                </tr>
                                </thead>
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
                                <th style="width:8%">操作</th>
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
                                        <td colspan="11">{{$v->system_name}}({{$v->engin_name}})</td>
                                    </tr>
                                    @php( $system_code = $v->system_code)
                                @endif
                            <tr class="sub_arch_{{$v->sub_arch_id}} gradeA success odd">
                                <td  colspan="10"> &nbsp;&nbsp;&nbsp;{{$v->sub_system_name}} <span style="color:#1d52f6">工况：{{$v->work_code}}</span> 编码：{{$v->sub_system_code}}</td>
                                <td > </td>
                            </tr>
                            @if(isset($offer_item[$v->sub_arch_id]))
                                @foreach($offer_item[$v->sub_arch_id] as $k=>$mate)
                                    @php
                                    $xuhao++;
                                    @endphp
                                <tr class="materialList sub_arch_{{$mate->sub_arch_id}}" id="mater_{{$xuhao}}">
                                    <td class="sub_arch_material_{{$mate->sub_arch_id}}">{{$k+1}}
                                        <input type="hidden" name="budget_item_id[]" value ="{{$mate->budget_item_id}}">
                                        <input type="hidden" name="offer_unit[]" value ="{{$mate->offer_unit}}">

                                    </td>
                                    <td>{{$mate->material_name}}<input type="hidden" name="material_id[]" value="{{ $mate->material_id }}"  ></td>
                                    <td>{{ $mate->characteristic }}</td>
                                    <td>{{ $mate->offer_unit }}</td>
                                    <td><input type="text" lay-skin="primary" class="notempty span12 drawing_quantity"     value="{{ number_format($mate->drawing_quantity, 2, '.', '') }}"  name="drawing_quantity[]" id="drawing_quantity" onchange="selectDrawing({{$xuhao}},this)" ></td>
                                    <td><input type="text" lay-skin="primary" class=" span12 loss_ratio"             value="{{ number_format($mate->loss_ratio, 2, '.', '') }}"  name="loss_ratio[]" id="loss_ratio" onchange="selectDrawing({{$xuhao}},this)" ></td>
                                    <td><input type="text" lay-skin="primary" class=" span12 engineering_quantity" disabled value="{{ number_format($mate->engineering_quantity, 2, '.', '') }}"  name="engineering_quantity[]" id="engineering_quantity" ></td>
                                    <td>{{$mate->brand_name}}<input type="hidden" name="brand_id[]" value="{{ $mate->brand_id }}"  ></td>
                                    <td><input type="text" lay-skin="primary" class=" span12 offer_price"          value="{{ number_format($mate->offer_price, 2, '.', '') }}"  name="offer_price[]" id="offer_price" onchange="selectDrawing({{$xuhao}},this)"  ></td>
                                    <td><input type="text" lay-skin="primary" class=" span12 total_material_price" disabled value="{{ number_format($mate->engineering_quantity * $mate->offer_price, 2, '.', '')}}"  name="total_material_price[]" id="total_material_price" ></td>
                                    <td ></td>
                                </tr>

                                @endforeach
                            @endif
                            @endforeach
                            <tr>
                                <td colspan="11" class="pro-title">其他费用</td>
                            </tr>

                            <tr>
                                <td class="pro-title" colspan="3">运输费</td>
                                <td class="pro-title" colspan="2">(元/m²)</td>
                                <td colspan="3"></td>
                                <td ><input type="text" name="freight_price" value="{{isset($offer->freight_price)?number_format($offer->freight_price, 2, '.', ''):''}}" id="freight_price" lay-skin="primary" class="notempty span12" onchange="return selectPrice(this)"></td>
                                <td id="freight_price_sum">{{isset($offer->freight_charge)?number_format($offer->freight_charge, 2, '.', ''):''}}</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="3">包装费</td>
                                <td class="pro-title" colspan="2">(元/m²)</td>
                                <td colspan="3"></td>
                                <td ><input type="text" name="package_price" value="{{isset($offer->package_price)?number_format($offer->package_price, 2, '.', ''):''}}" id="package_price" lay-skin="primary" class="notempty span12" onchange="return selectPrice(this)"></td>
                                <td id="package_price_sum">{{isset($offer->package_charge)?number_format($offer->package_charge, 2, '.', ''):''}}</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="3">装箱费</td>
                                <td class="pro-title" colspan="2">(元/m²)</td>
                                <td colspan="3"></td>
                                <td ><input type="text" name="packing_price" value="{{isset($offer->packing_price)?number_format($offer->packing_price, 2, '.', ''):''}}" id="packing_price" lay-skin="primary" class="notempty span12" onchange="return selectPrice(this)"></td>
                                <td  id="packing_price_sum">{{isset($offer->packing_charge)?number_format($offer->packing_charge, 2, '.', ''):''}}</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="9" style="text-align: center;font-weight: bold;">材料费合计</td>

                                <td  id="total_material"></td>
                                <td></td>
                            </tr>

                            <tr>
                                <td class="pro-title" colspan="3">施工安装费</td>
                                <td class="pro-title" colspan="2">(元/m²)</td>
                                <td colspan="3"></td>
                                <td ><input type="text" name="construction_price" value="{{isset($offer->construction_price)?number_format($offer->construction_price, 2, '.', ''):''}}" id="construction_price" lay-skin="primary" class="notempty span12" onchange="return selectPrice(this)"></td>
                                <td ><input type="text" name="construction_charge" value="{{isset($offer->construction_charge)?number_format($offer->construction_charge, 2, '.', ''):''}}" id="construction_charge" lay-skin="primary" class="span12" disabled></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td colspan="9" class="pro-title" style="text-align: center;font-weight: bold;">工程造价(直接)</td>
                                <td><input type="text" name="direct_project_cost" value="{{isset($offer->direct_project_cost)?number_format($offer->direct_project_cost, 2, '.', ''):''}}" readonly='readonly' id="direct_project_cost"  value="" style='width:100px;background: #f0f0f0;'/></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="3">利润</td>
                                <td class="pro-title" colspan="2">元</td>
                                <td colspan="2"></td>
                                <td >%</td>
                                <td ><input type="text" name="profit_ratio" value="{{isset($offer->profit_ratio)?number_format($offer->profit_ratio, 2, '.', ''):''}}" id="profit_ratio" lay-skin="primary" class="notempty span12"  onchange="return selectPrice(this)"></td>
                                <td ><input type="text" name="profit" value="{{isset($offer->profit)?number_format($offer->profit, 2, '.', ''):''}}" id="profit" lay-skin="primary" class="span12" disabled></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="3">税费</td>
                                <td class="pro-title" colspan="2">元</td>
                                <td colspan="2"></td>
                                <td >%</td>
                                <td ><input type="text" name="tax_ratio" value="{{isset($offer->tax_ratio)?number_format($offer->tax_ratio, 2, '.', ''):''}}" id="tax_ratio" lay-skin="primary" class="notempty span12"  onchange="return selectPrice(this)"></td>
                                <td ><input type="text" name="tax" value="{{isset($offer->tax)?number_format($offer->tax, 2, '.', ''):''}}" id="tax" lay-skin="primary" class="span12" disabled></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="9" style="text-align: center;font-weight: bold;">工程单价(元/m²)</td>
                                <td id="unit_price"></td>
                                <td ></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="9" style="text-align: center;font-weight: bold;">工程总价(元)</td>
                                <td ><input type="text" name="total_offer_price" value="" id="total_offer_price" lay-skin="primary" class=" span12" disabled></td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>

                        <div class="layui-form-item" style="float: right;clear: left">
                            <label for="L_repass" class="layui-form-label"></label>
                            <button class="btn btn-success" lay-filter="add" type="submit" lay-submit="" onclick='return form_submit()'>确认/保存</button>
                        </div>
                        <div class="layui-form-item" style="float: right;clear: left">
                            <a href="javascript:history.go(-1)">
                                <label for="L_repass" class="layui-form-label"></label>
                                <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                            </a>
                        </div>

                        <div class="clearfix"></div>
                            <hr>
                        <div style="margin: 10px">
                            <div>报价说明：</div>
                            <div>1、工程量=图质量*(100+损耗)/100</div>
                            <div>2、品牌价格信息来自部件集成管理板块</div>
                            <div>3、合价=工程量*单价</div>
                            <div>4、材料费合计=运输费+包装费+装箱费+材料费用</div>
                            <div>5、施工安装费=施工单价*建筑面积</div>
                            <div>6、工程造价(直接)=材料费合计+施工安装费</div>
                            <div>7、利润=工程造价(直接)* 利润费比率</div>
                            <div>8、税费=(工程造价(直接)+利润)* 税费比率</div>
                            <div>9、工程造价总计=工程造价(直接)+利润+税费</div>
                            <div>10、工程单价=工程造价总计/建筑面积</div>
                        </div>
                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>


    <script>
        var floor_area = {{$engineering->build_area}} ; //建筑面积
        var material_list=[];


        //日期选择器
        layui.use('laydate', function() {
            var laydate = layui.laydate;
            //常规用法
            laydate.render({
                elem: '#quotation_date'
            });
        });
        //点击只能输入数字
        function key(th){
            $(th).keyup(function(){
                $(this).val($(this).val().replace(/[^0-9.]/g,''));
            }).bind("paste",function(){  //CTR+V事件处理
                $(this).val($(this).val().replace(/[^0-9.]/g,''));
            }).css("ime-mode", "disabled"); //CSS设置输入法不可用
            va =$(th).val();
            if(va > 1000000000 || va < 0) {
                $(th).val(0);
            }
        }


        //显示提示信息
        function showMsg(str){
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(str);
            });
        }
        //选择品牌
        function selectbrand(intid,th){
            brand_id =$(th).val();
            offer_price =$('.brand_id_'+brand_id).attr('offer_price');
            $('#mater_'+intid+' .offer_price').val(offer_price.toFixed(2));
            console.log(offer_price);
            jisuanprice(intid);
            total_price();
        }
        //填写工程量
        function selectDrawing(intid,th) {
            key(th); //只能输入数字和小数点
            $(th).blur(function(){
              //计算实际工程量
                jisuanprice(intid);
            })
            total_price();
        }

        //计算当前材料的金额
        function jisuanprice(intid){
            drawing_quantity = $('#mater_'+intid+' .drawing_quantity').val();
            loss_ratio      = $('#mater_'+intid+' .loss_ratio').val();
            offer_price    = $('#mater_'+intid+' .offer_price').val();
            if(drawing_quantity =='' ||loss_ratio =='' ||offer_price ==''){
                $('#mater_'+intid+' .engineering_quantity').val('');
                $('#mater_'+intid+' .total_material_price').val('');
                return false;
            }
            //实际工程量
            engineering_quantity = drawing_quantity *(100 * 1 + loss_ratio * 1)/100
            $('#mater_'+intid+' .engineering_quantity').val(engineering_quantity.toFixed(2));
            //实际报价基恩
            total_material_price = engineering_quantity * offer_price;
            $('#mater_'+intid+' .total_material_price').val(total_material_price.toFixed(2));
            total_price();
        }
        //选择金额
        function selectPrice(th) {
            key(th);
            total_price();
        }
        //计算金额
        function total_price(){
            console.log('aaa');
            freight_price= $("#freight_price").val();
            package_price= $("#package_price").val();
            packing_price= $("#packing_price").val();
            //施工安装费
            construction_price=$("#construction_price").val();
            $("#freight_price_sum").html((freight_price*floor_area).toFixed(2));
            $("#package_price_sum").html((package_price*floor_area).toFixed(2));
            $("#packing_price_sum").html((packing_price*floor_area).toFixed(2));
            $("#construction_charge").val((construction_price*floor_area).toFixed(2));
            var sum='';
            $(".total_material_price").each(function(){
                sum =sum *1 + $(this).val() * 1;
            });
            //材料总计费用
            sum =sum*1+freight_price*floor_area+package_price*floor_area+packing_price*floor_area;
            $('#total_material').html(sum.toFixed(2)) ;

            //工程造价(直接)
            sum =  sum *1+ construction_price*floor_area;
            $('#direct_project_cost').val(sum.toFixed(2));

            //利润额
            profit_ratio=$("#profit_ratio").val();
            profit=sum * profit_ratio/100;
            $("#profit").val(profit.toFixed(2));
            $('#profit_ratio').css('background','#fff');

            //税费=(工程造价(直接)+利润额)*税率
            tax_ratio=$("#tax_ratio").val();
            tax=(sum +profit)* tax_ratio/100;
            $("#tax").val(tax.toFixed(2));
            $('#tax_ratio').css('background','#fff');

            //工程造价总计(元)
            sum =sum+tax+profit;
            $('#total_offer_price').val(sum.toFixed(2));
            //工程单价
            unit_price=sum/floor_area;
            $('#unit_price').html(unit_price.toFixed(2));

        }
        //提交时的数据验证
        function form_submit(){
            var sum=0;
            $(".notempty").each(function(){
                if($(this).val()){
                }else{
                    $(this).css('background','orange');
                    sum=1;
                }
            });
            if(sum == 1){
                showMsg('请将内容补充完全再提交')
                return false;
            }
            return true;
        }

        //点击文本框设置背景色
        $("input").focus(function(){
            $(this).css("background-color","#fff");
        });


        function submitStatus() {
            sta =$('#project_status').val();
            if(sta == 0){
                showMsg('当前状态未更改，不能提交')
                return false;
            }
            return true;
        }
        $().ready(function(){
            total_price();
        })
    </script>

@endsection
