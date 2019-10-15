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
                        <b>{{$project->project_name}}</b>
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <form method="post" action="/budget/postEditBudget/{{ $engin_id }}">
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
                                    <td >{{isset($budget->quotation_date)?$budget->quotation_date:''}}</td>
                                    <td class="pro-title">报价有效期限(天)</td>
                                    <td >{{isset($budget->quotation_limit_day)?$budget->quotation_limit_day:''}}</td>
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
                                <th colspan="11"><span class="btn btn-info">预算清单列表</span></th>
                            </tr>
                            </thead>
                            <thead>
                            <tr>
                                <th style="width:5%">序号</th>
                                <th style="width:15%">材料名称</th>
                                <th style="width:15%">规格特性要求</th>
                                <th style="width:6%">预算单位</th>
                                <th style="width:8%">工程量(实际)</th>
                                <th style="width:14%">品牌</th>
                                <th >供应商</th>
                                <th style="width:8%">单价</th>
                                <th style="width:6%">合计</th>
                                <th>限制采购次数</th>
                                <th>操作</th>
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
                                    <td  colspan="11"> &nbsp;&nbsp;&nbsp;<span class="btn btn-primary">{{$v->sub_system_name}}</span> <span style="color:#1d52f6">工况：{{$v->work_code}}</span> 编码：{{$v->sub_system_code}}</td>

                                </tr>
                                @if(isset($budget_item[$v->sub_arch_id]))
                                    @foreach($budget_item[$v->sub_arch_id] as $k=>$mate)
                                        @php
                                            $xuhao++;
                                        @endphp
                                        <tr class="materialList sub_arch_{{$mate->sub_arch_id}}" id="mater_{{$xuhao}}">
                                            <td class="sub_arch_material_{{$mate->sub_arch_id}}">
                                                <input type="checkbox" name="material_id[]"  id="material_id_{{$k}}" value="{{$mate->id}}">
                                            </td>
                                            <td>{{ $mate->material_name}}</td>
                                            <td>{{ $mate->characteristic }}</td>
                                            <td>{{ $mate->material_budget_unit }}</td>

                                            <td>{{ number_format($mate->engineering_quantity, 2, '.', '') }}</td>
                                            <td>{{ $mate->brand_name}}</td>
                                            <td>{{$mate->supplier}}</td>
                                            <td>{{ number_format($mate->budget_price, 2, '.', '') }}</td>
                                            <td>{{ number_format($mate->total_material_price, 2, '.', '') }}</td>
                                            <td>
                                                <select name="deliver_properties[]"  class="deliver_properties span12" style="min-width: 80px">
                                                    <option value="0"></option>
                                                    <option value="1">采购1次</option>
                                                    <option value="2">采购2次</option>
                                                    <option value="3">采购3次</option>
                                                    <option value="4">采购4次</option>
                                                    <option value="5">采购5次</option>
                                                    <option value="6">采购6次</option>
                                                    <option value="7">采购7次</option>
                                                    <option value="8">采购8次</option>
                                                    <option value="9">采购9次</option>
                                                    <option value="10">采购10次</option>
                                                    <option value="10000">不限次数</option>
                                                </select>
                                            </td>
                                            <td><span class="btn btn-danger" onclick="deleteTrRow(this)">删除</span></td>
                                        </tr>
                                    @endforeach
                                @endif
                            @endforeach

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

        //删除材料
        function deleteTrRow(tr){
            $(tr).parent().parent().remove();
            total_price();
        }
        //显示提示信息
        function showMsg(str){
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(str);
            });
        }

        //选择金额
        function selectPrice(th) {
            key(th);
            total_price();
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
            $("select.notempty").each(function(){
                console.log($(this).val());
                if($(this).val() > 0){
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
