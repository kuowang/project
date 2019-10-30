@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

    <style type="text/css">

        .pro-title{
            background: #e6e6e6;
            width:100px;
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
                                    <td  style="width: 100px">{{$engin->engineering_name}}</td>
                                    <td  class="pro-title">采购批次</td>
                                    <td >{{$purchase_order->batch_id}}</td>
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

                                <tr>
                                    <td  class="pro-title">订单验收状态</td>
                                    <td  >
                                        <select name="order_check_status"  class="order_check_status span12" style="min-width: 80px">
                                            @if($purchase_order->order_check_status ==1 ) <option value="1" selected="selected">未验收</option> @else <option value="1">未验收</option> @endif
                                            @if($purchase_order->order_check_status ==2 ) <option value="2" selected="selected">已验收(正常)</option>   @else <option value="2">已验收(正常)</option> @endif
                                            @if($purchase_order->order_check_status ==3 ) <option value="3" selected="selected">已验收(有损坏)</option>  @else <option value="3">已验收(有损坏)</option> @endif
                                            @if($purchase_order->order_check_status ==4 ) <option value="4" selected="selected">已验收(数量有误)</option>     @else <option value="4">已验收(数量有误)</option> @endif
                                        </select>
                                    </td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td  >
                                        <textarea  name="material_abnormal_name" class="input-block-level span12" >{{$purchase_order->material_abnormal_name}} </textarea>
                                    </td>
                                    <td  class="pro-title">问题描述</td>
                                    <td  >
                                        <textarea  name="material_abnormal_detail" class="input-block-level span12" > {{$purchase_order->material_abnormal_detail}}</textarea></td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">材料使用状态</td>
                                    <td  >
                                        <select name="order_use_status"  class="order_use_status span12" style="min-width: 80px">
                                           @if($purchase_order->order_use_status ==1 )  <option value="1" selected="selected">正常(满足使用)</option> @else <option value="1" >正常(满足使用)</option> @endif
                                           @if($purchase_order->order_use_status ==2 )  <option value="2" selected="selected">非正常(不满足使用)</option> @else  <option value="2">非正常(不满足使用)</option> @endif
                                        </select>
                                    </td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td  ><textarea  name="material_question_name" class="input-block-level span12" >{{$purchase_order->material_question_name}} </textarea></td>
                                    <td  class="pro-title">问题描述</td>
                                    <td  ><textarea  name="material_question_detail" class="input-block-level span12" >{{$purchase_order->material_question_detail}} </textarea></td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">材料工程量状态</td>
                                    <td  >
                                        <select name="order_quantity_status"  class="order_use_status span12" style="min-width: 80px">
                                            @if($purchase_order->order_quantity_status ==1 ) <option value="1" selected="selected">满足(无结余)</option> @else<option value="1">满足(无结余)</option> @endif
                                            @if($purchase_order->order_quantity_status ==2 ) <option value="2" selected="selected">满足(有结余)</option> @else <option value="2">满足(有结余)</option> @endif
                                            @if($purchase_order->order_quantity_status ==3 ) <option value="3" selected="selected">不满足(需要补充)</option> @else <option value="3">不满足(需要补充)</option> @endif
                                        </select>
                                    </td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td  ><textarea  name="material_quantity_name" class="input-block-level span12" >{{$purchase_order->material_quantity_name}} </textarea></td>
                                    <td  class="pro-title">问题描述</td>
                                    <td  ><textarea  name="material_quantity_detail" class="input-block-level span12" >{{$purchase_order->material_quantity_detail}} </textarea></td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">补货状态</td>
                                    <td  >
                                        <select name="order_replenishment_status"  class="order_use_status span12" style="min-width: 80px">
                                            @if($purchase_order->order_replenishment_status ==1 ) <option value="1" selected="selected">无补货</option> @else <option value="1">无补货</option> @endif
                                            @if($purchase_order->order_replenishment_status ==2 ) <option value="2" selected="selected">补货(已到达)</option> @else <option value="2">补货(已到达)</option> @endif
                                            @if($purchase_order->order_replenishment_status ==3 ) <option value="3" selected="selected">补货(未到达)</option> @else <option value="3">补货(未到达)</option> @endif
                                        </select>

                                    </td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td  ><textarea  name="material_replenishment_name" class="input-block-level span12" > {{$purchase_order->material_replenishment_name}}</textarea></td>
                                    <td  class="pro-title">问题描述</td>
                                    <td  ><textarea  name="material_replenishment_detail" class="input-block-level span12" > {{$purchase_order->material_replenishment_detail}}</textarea></td>
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

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
