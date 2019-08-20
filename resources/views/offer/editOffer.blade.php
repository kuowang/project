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
                        <b>{{$project->project_name}}</b>（工程预算清单）
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <form method="post" action="/offer/postEditOffer/{{ $engin_id }}">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6">项目概况</th>
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
                                <td ><input type="text" name="quotation_date" id="quotation_date" value="{{isset($offer->quotation_date)?$offer->quotation_date:''}}"  lay-skin="primary" class="notempty span8"></td>
                                <td class="pro-title">报价有效期限(天)</td>
                                <td ><input type="text" name="quotation_limit_day" id="quotation_limit_day" value="{{isset($offer->quotation_limit_day)?$offer->quotation_limit_day:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                <td class="pro-title">使用时长(年)</td>
                                <td ><input type="text" name="use_time" id="use_time" value="{{isset($offer->use_time)?$offer->use_time:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                            </tr>
                            <tr>
                                <td class="pro-title">抗震等级(级)</td>
                                <td ><input type="text" name="seismic_grade" id="seismic_grade" value="{{isset($offer->seismic_grade)?$offer->seismic_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                <td class="pro-title">抗风等级(级)</td>
                                <td ><input type="text" name="wind_grade" id="wind_grade" value="{{isset($offer->wind_grade)?$offer->wind_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                <td class="pro-title">保温构造形式</td>
                                <td ><input type="text" name="keep_warm" id="keep_warm" value="{{isset($offer->keep_warm)?$offer->keep_warm:''}}" lay-skin="primary" class="notempty span8"></td>
                            </tr>
                            <tr>
                                <td class="pro-title">屋面防水等级</td>
                                <td ><input type="text" name="waterproof_grade" id="waterproof_grade" value="{{isset($offer->waterproof_grade)?$offer->waterproof_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                <td class="pro-title">结构主体形式</td>
                                <td ><input type="text" name="structural_style" id="structural_style" value="{{isset($offer->structural_style)?$offer->structural_style:''}}" lay-skin="primary" class="notempty span8"></td>
                                <td class="pro-title">主体钢材材质</td>
                                <td ><input type="text" name="steel_material" id="steel_material" value="{{isset($offer->steel_material)?$offer->steel_material:''}}" lay-skin="primary" class="notempty span8"></td>
                            </tr>

                            </tbody>
                        </table>

                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th >楼层信息</th>
                                <td>建筑高度</td>
                                <td>室内净高</td>
                            </tr>
                            </thead>
                            <tbody>

                            @for($i =1;$i <= $engineering->build_floor;$i++ )
                            <tr >
                                <td class="pro-title">第{{$i}}层</td>
                                <td><input type="text" class="span4 notempty" value="{{isset($storey_height[$i-1])?$storey_height[$i-1]:''}}" name="storey_height[]" onclick="key(this)">米</td>
                                <td><input type="text" class="span4 notempty" value="{{isset($house_height[$i-1])?$house_height[$i-1]:''}}"  name="house_height[]"  onclick="key(this)">米</td>
                            </tr>
                            @endfor

                            </tbody>
                        </table>

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
                                    <td class="sub_arch_material_{{$mate->sub_arch_id}}">{{$k+1}}</td>
                                    <td>{{$mate->material_name}}<input type="hidden" name="material_id[]" value="{{ $mate->material_id }}"  ></td>
                                    <td>{{ $mate->characteristic }}</td>
                                    <td>{{ $mate->material_budget_unit }}</td>
                                    <td><input type="text" lay-skin="primary" class="notempty span12 drawing_quantity"     value="{{ $mate->drawing_quantity }}"  name="drawing_quantity[]" id="drawing_quantity" onchange="selectDrawing({{$xuhao}},this)" ></td>
                                    <td><input type="text" lay-skin="primary" class=" span12 loss_ratio"             value="{{ $mate->loss_ratio }}"  name="loss_ratio[]" id="loss_ratio" onchange="selectDrawing({{$xuhao}},this)" ></td>
                                    <td><input type="text" lay-skin="primary" class=" span12 engineering_quantity" disabled value="{{ $mate->engineering_quantity }}"  name="engineering_quantity[]" id="engineering_quantity" ></td>
                                    <td>{{$mate->brand_name}}<input type="hidden" name="brand_id[]" value="{{ $mate->brand_id }}"  ></td>
                                    <td><input type="text" lay-skin="primary" class=" span12 budget_price"          value="{{ $mate->budget_price }}"  name="budget_price[]" id="budget_price" onchange="selectDrawing({{$xuhao}},this)"  ></td>
                                    <td><input type="text" lay-skin="primary" class=" span12 total_material_price" disabled value="{{ $mate->total_material_price }}"  name="total_material_price[]" id="total_material_price" ></td>
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
                                <td class="pro-title" colspan="2">(元/平方米)</td>
                                <td colspan="3"></td>
                                <td ><input type="text" name="freight_price" value="{{isset($offer->freight_price)?$offer->freight_price:''}}" id="freight_price" lay-skin="primary" class="notempty span12" onchange="return selectPrice(this)"></td>
                                <td id="freight_price_sum">{{isset($offer->freight_charge)?$offer->freight_charge:''}}</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="3">包装费</td>
                                <td class="pro-title" colspan="2">(元/平方米)</td>
                                <td colspan="3"></td>
                                <td ><input type="text" name="package_price" value="{{isset($offer->package_price)?$offer->package_price:''}}" id="package_price" lay-skin="primary" class="notempty span12" onchange="return selectPrice(this)"></td>
                                <td id="package_price_sum">{{isset($offer->package_charge)?$offer->package_charge:''}}</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="3">装箱费</td>
                                <td class="pro-title" colspan="2">(元/平方米)</td>
                                <td colspan="3"></td>
                                <td ><input type="text" name="packing_price" value="{{isset($offer->packing_price)?$offer->packing_price:''}}" id="packing_price" lay-skin="primary" class="notempty span12" onchange="return selectPrice(this)"></td>
                                <td  id="packing_price_sum">{{isset($offer->packing_charge)?$offer->packing_charge:''}}</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="9" style="text-align: center;font-weight: bold;">材料费合计</td>

                                <td  id="total_material">{{isset($offer->material_total_price)?$offer->material_total_price:''}}</td>
                                <td></td>
                            </tr>

                            <tr>
                                <td class="pro-title" colspan="3">施工安装费</td>
                                <td class="pro-title" colspan="2">(元/平方米)</td>
                                <td colspan="3"></td>
                                <td ><input type="text" name="construction_price" value="{{isset($offer->construction_price)?$offer->construction_price:''}}" id="construction_price" lay-skin="primary" class="notempty span12" onchange="return selectPrice(this)"></td>
                                <td ><input type="text" name="construction_charge" value="{{isset($offer->construction_charge)?$offer->construction_charge:''}}" id="construction_charge" lay-skin="primary" class="span12" disabled></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td colspan="9" class="pro-title" style="text-align: center;font-weight: bold;">工程造价(直接)</td>
                                <td><input type="text" name="direct_project_cost" value="{{isset($offer->direct_project_cost)?$offer->direct_project_cost:''}}" readonly='readonly' id="direct_project_cost"  value="" style='width:100px;background: #f0f0f0;'/></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="3">利润</td>
                                <td class="pro-title" colspan="2">元</td>
                                <td colspan="2"></td>
                                <td >%</td>
                                <td ><input type="text" name="profit_ratio" value="{{isset($offer->profit_ratio)?$offer->profit_ratio:''}}" id="profit_ratio" lay-skin="primary" class="notempty span12"  onchange="return selectPrice(this)"></td>
                                <td ><input type="text" name="profit" value="{{isset($offer->profit)?$offer->profit:''}}" id="profit" lay-skin="primary" class="span12" disabled></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="3">税费</td>
                                <td class="pro-title" colspan="2">元</td>
                                <td colspan="2"></td>
                                <td >%</td>
                                <td ><input type="text" name="tax_ratio" value="{{isset($offer->tax_ratio)?$offer->tax_ratio:''}}" id="tax_ratio" lay-skin="primary" class="notempty span12"  onchange="return selectPrice(this)"></td>
                                <td ><input type="text" name="tax" value="{{isset($offer->tax)?$offer->tax:''}}" id="tax" lay-skin="primary" class="span12" disabled></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="9" style="text-align: center;font-weight: bold;">工程单价(元/平方米)</td>
                                <td id="unit_price">{{isset($offer->total_offer_price)?round($offer->total_offer_price/$engineering->build_area,2):''}}</td>
                                <td ></td>
                            </tr>
                            <tr>
                                <td class="pro-title" colspan="9" style="text-align: center;font-weight: bold;">工程总价(元)</td>
                                <td ><input type="text" name="total_budget_price" value="{{isset($offer->total_offer_price)?$offer->total_offer_price:''}}" id="total_budget_price" lay-skin="primary" class=" span12" disabled></td>
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
                        </form>
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
            budget_unit_price =$('.brand_id_'+brand_id).attr('budget_unit_price');
            $('#mater_'+intid+' .budget_price').val(budget_unit_price);
            console.log(budget_unit_price);
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
            budget_price    = $('#mater_'+intid+' .budget_price').val();
            if(drawing_quantity =='' ||loss_ratio =='' ||budget_price ==''){
                $('#mater_'+intid+' .engineering_quantity').val('');
                $('#mater_'+intid+' .total_material_price').val('');
                return false;
            }
            //实际工程量
            engineering_quantity = drawing_quantity *(100 * 1 + loss_ratio * 1)/100
            $('#mater_'+intid+' .engineering_quantity').val(engineering_quantity.toFixed(2));
            //实际预算金额
            total_material_price = engineering_quantity * budget_price;
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
            $('#total_budget_price').val(sum.toFixed(2));
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
    </script>

@endsection
