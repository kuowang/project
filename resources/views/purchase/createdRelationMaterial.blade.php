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
                        <form method="post" action="/purchase/saveRelationMaterial/{{ $batchid }}">
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
                            </tr>
                            </thead>
                            <tbody>
                            @php
                                $system_code ='';
                            @endphp
                            @foreach($engin_system as $v)
                                @if(isset($budget_item[$v->sub_arch_id]))
                                @if($system_code != $v->system_code)
                                    <tr class="pro-title gradeX warning odd">
                                        <td colspan="10">{{$v->system_name}}({{$v->engin_name}})</td>
                                    </tr>
                                    @php( $system_code = $v->system_code)
                                @endif
                                <tr class="sub_arch_{{$v->sub_arch_id}} gradeA success odd">
                                    <td  colspan="10"> &nbsp;&nbsp;&nbsp;<span class="btn btn-primary">{{$v->sub_system_name}}</span> <span style="color:#1d52f6">工况：{{$v->work_code}}</span> 编码：{{$v->sub_system_code}}</td>

                                </tr>
                                    @foreach($budget_item[$v->sub_arch_id] as $mate)
                                        <tr class="materialList sub_arch_{{$mate->sub_arch_id}}" id="mater_{{$mate->id}}">
                                            <td class="sub_arch_material_{{$mate->sub_arch_id}}">
                                                @if(isset($batch_material[$mate->id]))
                                                <input type="checkbox" name="budget_item_id[{{$mate->id}}]"  id="material_id_{{$mate->id}}" checked="checked" class="budget_item_id notempty" value="{{$mate->id}}">
                                                @else
                                                    <input type="checkbox" name="budget_item_id[{{$mate->id}}]"  id="material_id_{{$mate->id}}" class="budget_item_id  notempty" value="{{$mate->id}}">
                                                @endif
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
                                            @if(isset($select_items[$mate->id]))
                                                @if($select_items[$mate->id] <=10)
                                                    采购{{$select_items[$mate->id]}}次<input type="hidden" name="purchase_cishu[{{$mate->id}}]" value="{{$select_items[$mate->id]}}">
                                                @else
                                                    不限次数<input type="hidden" name="purchase_cishu[{{$mate->id}}]" value="{{$select_items[$mate->id]}}">
                                                @endif
                                            @else
                                                <select name="purchase_cishu[{{$mate->id}}]" id="purchase_cishu_{{$mate->id}}" class="purchase_cishu notempty span12" onchange="changecolor(this,{{$mate->id}})" style="min-width: 80px">
                                                    <option value="0"></option>
                                                    <option value="1" @if(isset($batch_material[$mate->id]) && $batch_material[$mate->id]==1 )  selected="selected" @endif >采购1次</option>
                                                    <option value="2" @if(isset($batch_material[$mate->id]) && $batch_material[$mate->id]==2 )  selected="selected" @endif >采购2次</option>
                                                    <option value="3" @if(isset($batch_material[$mate->id]) && $batch_material[$mate->id]==3 )  selected="selected" @endif >采购3次</option>
                                                    <option value="4" @if(isset($batch_material[$mate->id]) && $batch_material[$mate->id]==4 )  selected="selected" @endif >采购4次</option>
                                                    <option value="5" @if(isset($batch_material[$mate->id]) && $batch_material[$mate->id]==5 )  selected="selected" @endif >采购5次</option>
                                                    <option value="6" @if(isset($batch_material[$mate->id]) && $batch_material[$mate->id]==6 )  selected="selected" @endif >采购6次</option>
                                                    <option value="7" @if(isset($batch_material[$mate->id]) && $batch_material[$mate->id]==7 )  selected="selected" @endif >采购7次</option>
                                                    <option value="8" @if(isset($batch_material[$mate->id]) && $batch_material[$mate->id]==8 )  selected="selected" @endif >采购8次</option>
                                                    <option value="9" @if(isset($batch_material[$mate->id]) && $batch_material[$mate->id]==9 )  selected="selected" @endif >采购9次</option>
                                                    <option value="10" @if(isset($batch_material[$mate->id]) && $batch_material[$mate->id]==10 )  selected="selected" @endif >采购10次</option>
                                                    <option value="10000" @if(isset($batch_material[$mate->id]) && $batch_material[$mate->id]==10000 )  selected="selected" @endif >不限次数</option>
                                                </select>
                                            @endif
                                            </td>
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

        //提交时的数据验证
        function form_submit(){
            //$('input[type=checkbox]').prop('checked', 'checked');
            var sum=0;
            obj = $('.budget_item_id');
            for(k in obj){
                if(obj[k].checked){
                    itemid =obj[k].value;
                    cishu = $('#purchase_cishu_'+itemid).val();
                    if(cishu == 0 || cishu == ''){
                        $('#purchase_cishu_'+itemid).css('background','orange');
                        sum=1;
                    }
                    console.log(cishu);
                }
            }

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
