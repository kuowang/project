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
                                <th>设置采购次数</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php
                                $system_code ='';
                            $k=1;
                            @endphp
                            @foreach($engin_system as $v)
                                @if(isset($budget_item[$v->sub_arch_id]))
                                @if($system_code != $v->system_code)
                                    <tr class="pro-title gradeX warning odd">
                                        <td colspan="11">{{$v->system_name}}({{$v->engin_name}})</td>
                                    </tr>
                                    @php( $system_code = $v->system_code)
                                @endif
                                <tr class="sub_arch_{{$v->sub_arch_id}} gradeA success odd">
                                    <td  colspan="11"> &nbsp;&nbsp;&nbsp;<span class="btn btn-primary">{{$v->sub_system_name}}</span> <span style="color:#1d52f6">工况：{{$v->work_code}}</span> 编码：{{$v->sub_system_code}}</td>

                                </tr>
                                    @foreach($budget_item[$v->sub_arch_id] as $mate)
                                        @if(isset($batch_material[$mate->id]))
                                        <tr class="materialList sub_arch_{{$mate->sub_arch_id}}" id="mater_{{$mate->id}}">
                                            <td class="sub_arch_material_{{$mate->sub_arch_id}}">
                                              {{$k++}}
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
                                            @if(isset($batch_material[$mate->id]))
                                                @if($batch_material[$mate->id] <=10)
                                                    采购{{$batch_material[$mate->id]}}次
                                                @else
                                                    不限次数
                                                @endif
                                            @endif
                                            </td>
                                            <td></td>
                                        </tr>
                                        @endif
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

        //提交时的数据验证
        function form_submit(){
            //$('input[type=checkbox]').prop('checked', 'checked');
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
        function changecolor(th,id) {
            $(th).css("background-color","#fff");
            $('#material_id_'+id).prop('checked', 'checked');
        }

    </script>

@endsection
