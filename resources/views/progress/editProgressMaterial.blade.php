@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

    <style type="text/css">
        .pro-title{
            background: #e6e6e6;
        }
        .layui-table td, .layui-table th {
            border: solid 1px #ccc;
        }
        select{
            width: auto;
        }
        td{
            max-width: 45%;
            min-width: 80px;
        }
    </style>

    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-header" style="text-align: center">
                        <div  style="font-size: 16px;" >

                            <div class="title">
                                <span class="btn btn-info">现场材料管理</span>
                            </div>

                            <div  style="font-size: 16px;     text-align: center;" >
                                <b>{{$project->project_name}}</b>
                            </div>
                        </div>
                    </div>

                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <form method="post" action="/progress/postProgressMaterial/{{ $purchase_order_id }}">


                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="6"><span class="btn btn-info">项目概况</span></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">工程名称</td>
                                    <td  style="width: 10%">{{$engin->engineering_name}}</td>
                                    <td  class="pro-title">采购批次</td>
                                    <td  style="width: 20%">{{$purchase_order->batch_id}}</td>
                                    <td  class="pro-title">采购单号</td>
                                    <td  >{{$purchase_order->purchase_order_number}}</td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">现场负责人</td>
                                    <td  ><input type="text" name="progress_username" class="progress_username span12" value="{{$purchase_order->progress_username}}"></td>
                                    <td  class="pro-title">验货负责人</td>
                                    <td  ><input type="text" name="inspection_username" class="inspection_username span12" value="{{$purchase_order->inspection_username}}"></td>
                                    <td  class="pro-title">订单到达状态</td>
                                    <td  >
                                        <select name="order_arrive_status"  class="order_arrive_status span12" style="min-width: 80px">
                                            @if($purchase_order->order_arrive_status ==1 ) <option value="1" selected="selected">已到达</option> @else <option value="1" >已到达</option> @endif
                                            @if($purchase_order->order_arrive_status ==2 ) <option value="2" selected="selected">未到达</option> @else <option value="2">未到达</option> @endif
                                        </select>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="3"><span class="btn btn-info">材料管理</span></th>
                                    <th width="80px">操作</th>
                                </tr>
                                </thead>
                                <tbody>

                                <tr class="yanshou">
                                    <td  class="pro-title" style="width:200px">订单验收状态</td>
                                    <td  class="pro-title" style="width: 30%">问题材料名称</td>
                                    <td  colspan="2" class="pro-title" style="min-width: 300px">问题描述
                                        <span class="title"style="float: right;">
                                            <a class="btn btn-success" onclick="add_yanshou()" >
                                                <i class="layui-icon">增加问题描述 +</i></a>
                                        </span>
                                    </td>

                                </tr>
                                @if($material_abnormal_name && is_array($material_abnormal_name))
                                    @foreach($material_abnormal_name as $k=>$v)
                                <tr id="yanshou_1" class="yanshou">
                                    <td >
                                        @if($k ==0)
                                        <select name="order_check_status"  class="order_check_status span12" style="min-width: 80px">
                                            @if($order_check_status ==1 ) <option value="1" selected="selected">未验收</option> @else <option value="1">未验收</option> @endif
                                            @if($order_check_status ==2 ) <option value="2" selected="selected">已验收(正常)</option>   @else <option value="2">已验收(正常)</option> @endif
                                            @if($order_check_status ==3 ) <option value="3" selected="selected">已验收(有损坏)</option>  @else <option value="3">已验收(有损坏)</option> @endif
                                            @if($order_check_status ==4 ) <option value="4" selected="selected">已验收(数量有误)</option>     @else <option value="4">已验收(数量有误)</option> @endif
                                        </select>
                                        @endif
                                    </td>
                                    <td  >
                                        <input  type="text" name="material_abnormal_name[]" class="input-block-level span12" value="{{isset($material_abnormal_name[$k])?$material_abnormal_name[$k]:''}}">
                                    </td>
                                    <td  >
                                        <input  type="text" name="material_abnormal_detail[]" class="input-block-level span12" value="{{isset($material_abnormal_detail[$k])?$material_abnormal_detail[$k]:''}}" >
                                    </td>
                                    <td></td>
                                </tr>
                                    @endforeach
                                @else
                                    <tr id="yanshou_1" class="yanshou">
                                        <td >
                                            <select name="order_check_status"  class="order_check_status span12" style="min-width: 80px">
                                                <option value="1" >未验收</option>
                                                <option value="2" >已验收(正常)</option>
                                                <option value="3" >已验收(有损坏)</option>
                                                <option value="4" >已验收(数量有误)</option>
                                            </select>
                                        </td>
                                        <td  >
                                            <input  type="text" name="material_abnormal_name[]" class="input-block-level span12" value="">
                                        </td>
                                        <td  >
                                            <input  type="text" name="material_abnormal_detail[]" class="input-block-level span12" value="" >
                                        </td>
                                        <td></td>
                                    </tr>
                                @endif

                                <tr class="shiyong">
                                    <td  class="pro-title">材料使用状态</td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td colspan="2" class="pro-title">问题描述
                                        <span class="title"style="float: right;">
                                            <a class="btn btn-success" onclick="add_shiyong()" >
                                                <i class="layui-icon">增加问题描述 +</i></a>
                                        </span>
                                    </td>
                                </tr>
                                @if($material_question_name)
                                    @foreach($material_question_name as $k=>$v)
                                <tr id="shiyong_1" class="shiyong">
                                    <td  >
                                        @if($k ==0)
                                        <select name="order_use_status"  class="order_use_status span12" style="min-width: 80px">
                                           @if($order_use_status ==1 )  <option value="1" selected="selected">正常(满足使用)</option> @else <option value="1" >正常(满足使用)</option> @endif
                                           @if($order_use_status ==2 )  <option value="2" selected="selected">非正常(不满足使用)</option> @else  <option value="2">非正常(不满足使用)</option> @endif
                                        </select>
                                        @endif
                                    </td>
                                    <td  ><input  type="text" name="material_question_name[]" class="input-block-level span12" value="{{isset($material_question_name[$k])?$material_question_name[$k]:''}}" > </td>
                                    <td ><input  type="text" name="material_question_detail[]" class="input-block-level span12" value="{{isset($material_question_name[$k])?$material_question_name[$k]:''}}"> </td>
                                    <td></td>
                                </tr>
                                    @endforeach
                                @else
                                    <tr id="shiyong_1" class="shiyong">
                                        <td  >
                                            <select name="order_use_status[]"  class="order_use_status span12" style="min-width: 80px">
                                                <option value="1" >正常(满足使用)</option>
                                                <option value="2" >非正常(不满足使用)</option>
                                            </select>
                                        </td>
                                        <td  ><input  type="text" name="material_question_name[]" class="input-block-level span12" value="" > </td>
                                        <td ><input  type="text" name="material_question_detail[]" class="input-block-level span12" value=""> </td>
                                        <td></td>
                                    </tr>
                                @endif

                                <tr class="gongcheng">
                                    <td  class="pro-title">材料工程量状态</td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td colspan="2" class="pro-title">问题描述
                                        <span class="title"style="float: right;">
                                            <a class="btn btn-success" onclick="add_gongcheng()" >
                                                <i class="layui-icon">增加问题描述 +</i></a>
                                        </span>
                                    </td>
                                </tr>
                                @if($material_quantity_name)
                                    @foreach($material_quantity_name as $k=>$v)
                                <tr id="gongcheng_1" class="gongcheng">
                                    <td  >
                                        @if($k==0)
                                        <select name="order_quantity_status"  class="order_use_status span12" style="min-width: 80px">
                                            @if($order_quantity_status ==1 ) <option value="1" selected="selected">满足(无结余)</option> @else<option value="1">满足(无结余)</option> @endif
                                            @if($order_quantity_status ==2 ) <option value="2" selected="selected">满足(有结余)</option> @else <option value="2">满足(有结余)</option> @endif
                                            @if($order_quantity_status ==3 ) <option value="3" selected="selected">不满足(需要补充)</option> @else <option value="3">不满足(需要补充)</option> @endif
                                        </select>
                                        @endif
                                    </td>
                                    <td  ><input  type="text" name="material_quantity_name[]" class="input-block-level span12"value="{{isset($material_quantity_name[$k])?$material_quantity_name[$k]:''}}" > </td>
                                    <td  ><input  type="text" name="material_quantity_detail[]" class="input-block-level span12" value="{{isset($material_quantity_detail[$k])?$material_quantity_detail[$k]:''}}" > </td>
                                    <td></td>
                                </tr>
                                    @endforeach
                                @else
                                    <tr id="gongcheng_1" class="gongcheng">
                                        <td  >
                                            <select name="order_quantity_status"  class="order_use_status span12" style="min-width: 80px">
                                                <option value="1" >满足(无结余)</option>
                                                <option value="2" >满足(有结余)</option>
                                                <option value="3" >不满足(需要补充)</option>
                                            </select>
                                        </td>
                                        <td  ><input  type="text" name="material_quantity_name[]" class="input-block-level span12"value="" > </td>
                                        <td  ><input  type="text" name="material_quantity_detail[]" class="input-block-level span12" value="" > </td>
                                        <td></td>
                                    </tr>
                                @endif

                                <tr class="buhuo">
                                    <td  class="pro-title">补货状态</td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td colspan="2" class="pro-title">问题描述
                                        <span class="title"style="float: right;">
                                            <a class="btn btn-success" onclick="add_buhuo()" >
                                                <i class="layui-icon">增加问题描述 +</i></a>
                                        </span>
                                    </td>
                                </tr>
                                @if($material_replenishment_name)
                                    @foreach($material_replenishment_name as $k=>$v)
                                <tr id="buhuo_1" class="buhuo">
                                    <td  >
                                        @if($k ==0)
                                        <select name="order_replenishment_status"  class="order_use_status span12" style="min-width: 80px">
                                            @if($order_replenishment_status ==1 ) <option value="1" selected="selected">无补货</option> @else <option value="1">无补货</option> @endif
                                            @if($order_replenishment_status ==2 ) <option value="2" selected="selected">补货(已到达)</option> @else <option value="2">补货(已到达)</option> @endif
                                            @if($order_replenishment_status ==3 ) <option value="3" selected="selected">补货(未到达)</option> @else <option value="3">补货(未到达)</option> @endif
                                        </select>
                                        @endif
                                    </td>
                                    <td  ><input  type="text" name="material_replenishment_name[]" class="input-block-level span12" value="{{isset($material_replenishment_name[$k])?$material_replenishment_name[$k]:''}}" > </td>
                                    <td  ><input  type="text" name="material_replenishment_detail[]" class="input-block-level span12" value="{{isset($material_replenishment_detail[$k])?$material_replenishment_detail[$k]:''}}"> </td>
                                    <td></td>
                                </tr>
                                    @endforeach
                                @else
                                    <tr id="buhuo_1" class="buhuo">
                                        <td  >
                                            <select name="order_replenishment_status"  class="order_use_status span12" style="min-width: 80px">
                                                <option value="1" >无补货</option>
                                                <option value="2" >补货(已到达)</option>
                                                <option value="3" >补货(未到达)</option>
                                            </select>
                                        </td>
                                        <td  ><input  type="text" name="material_replenishment_name[]" class="input-block-level span12" value="" > </td>
                                        <td  ><input  type="text" name="material_replenishment_detail[]" class="input-block-level span12" value=""> </td>
                                        <td></td>
                                    </tr>
                                @endif
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

    <script type="text/javascript">
        function add_yanshou() {
            yanshou =`<tr  class="yanshou">
                    <td  ></td>
                    <td  >
                        <input  type="text" name="material_abnormal_name[]" class="input-block-level span12" >
                    </td>
                    <td  >
                        <input  type="text" name="material_abnormal_detail[]" class="input-block-level span12"  >
                    </td>
                    <td><span class="btn btn-danger" onclick="deleteTrRow(this)">删除</span></td>
                </tr>`;

            $('.yanshou:last').after(yanshou);

        }
        function add_shiyong() {
            shiyong =`<tr id="shiyong_1" class="shiyong">
            <td  >
            </td>
            <td  ><input  type="text" name="material_question_name[]" class="input-block-level span12"  > </td>
            <td  ><input  type="text" name="material_question_detail[]" class="input-block-level span12" > </td>
            <td><span class="btn btn-danger" onclick="deleteTrRow(this)">删除</span></td>
            </tr>`;
            $('.shiyong:last').after(shiyong);
        }
        function add_gongcheng() {
            gongcheng=`<tr id="gongcheng_1" class="gongcheng">
            <td  >

            </td>
            <td  ><input  type="text" name="material_quantity_name[]" class="input-block-level span12" > </td>
            <td  ><input  type="text" name="material_quantity_detail[]" class="input-block-level span12"  > </td>
            <td><span class="btn btn-danger" onclick="deleteTrRow(this)">删除</span></td>
        </tr>`;
            $('.gongcheng:last').after(gongcheng);
        }
        function add_buhuo() {
            buhuo=`<tr id="buhuo_1" class="buhuo">
            <td  ></td>
                <td  ><input  type="text" name="material_replenishment_name[]" class="input-block-level span12"  > </td>
                <td  ><input  type="text" name="material_replenishment_detail[]" class="input-block-level span12" > </td>
                <td><span class="btn btn-danger" onclick="deleteTrRow(this)">删除</span></td>
            </tr>`;
            $('.buhuo:last').after(buhuo);
        }
        //删除材料
        function deleteTrRow(tr){
            $(tr).parent().parent().remove();
        }
        //提交时的数据验证
        function form_submit(){
            var sum=0;

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
        //显示提示信息
        function showMsg(str){
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(str);
            });
        }

    </script>

@endsection
