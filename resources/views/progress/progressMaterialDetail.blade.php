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
                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="6"><span class="btn btn-info">项目概况</span></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">工程名称</td>
                                    <td  style="min-width: 100px">{{$engin->engineering_name}}</td>
                                    <td  class="pro-title">采购批次</td>
                                    <td >{{$purchase_order->batch_id}}</td>
                                    <td  class="pro-title">采购单号</td>
                                    <td  >{{$purchase_order->purchase_order_number}}</td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">现场负责人</td>
                                    <td  >{{$purchase_order->progress_username}}</td>
                                    <td  class="pro-title">验货负责人</td>
                                    <td  >{{$purchase_order->inspection_username}}</td>
                                    <td  class="pro-title">订单到达状态</td>
                                    <td  >
                                        @if($purchase_order->order_arrive_status ==1)
                                            <span class="btn btn-success"> 已到达</span>
                                        @elseif($purchase_order->order_arrive_status ==2)
                                            <span class="btn btn-danger"> 未到达</span>
                                        @endif
                                    </td>
                                </tr>

                                <tr>
                                    <td  class="pro-title">订单验收状态</td>
                                    <td  >

                                        @if($purchase_order->order_check_status ==1)
                                            <span class="btn btn-success"> 未验收 </span>
                                        @elseif($purchase_order->order_check_status ==2)
                                            <span class="btn btn-danger"> 已验收(正常)</span>
                                        @elseif($purchase_order->order_check_status ==3)
                                            <span class="btn btn-danger"> 已验收(有损坏)</span>
                                        @elseif($purchase_order->order_check_status ==4)
                                            <span class="btn btn-danger"> 已验收(数量有误)</span>
                                        @endif
                                    </td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td  >
                                        {{$purchase_order->material_abnormal_name}}
                                    </td>
                                    <td  class="pro-title">问题描述</td>
                                    <td  >
                                        {{$purchase_order->material_abnormal_detail}}</td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">材料使用状态</td>
                                    <td  >
                                        @if($purchase_order->order_use_status ==1)
                                            <span class="btn btn-success"> 正常(满足使用) </span>
                                        @elseif($purchase_order->order_use_status ==2)
                                            <span class="btn btn-danger"> 非正常(不满足使用)</span>
                                        @endif
                                    </td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td  >{{$purchase_order->material_question_name}} </td>
                                    <td  class="pro-title">问题描述</td>
                                    <td  >{{$purchase_order->material_question_detail}} </td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">材料工程量状态</td>
                                    <td  >
                                        @if($purchase_order->order_quantity_status ==1)
                                            <span class="btn btn-success"> 满足(无结余) </span>
                                        @elseif($purchase_order->order_quantity_status ==2)
                                            <span class="btn btn-success"> 满足(有结余) </span>
                                        @elseif($purchase_order->order_quantity_status ==3)
                                            <span class="btn btn-danger"> 不满足(需要补充)</span>
                                        @endif
                                    </td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td  >{{$purchase_order->material_quantity_name}} </td>
                                    <td  class="pro-title">问题描述</td>
                                    <td  >{{$purchase_order->material_quantity_detail}} </td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">补货状态</td>
                                    <td  >
                                        @if($purchase_order->order_replenishment_status ==1)
                                            <span class="btn btn-success"> 无补货</span>
                                        @elseif($purchase_order->order_replenishment_status ==2)
                                            <span class="btn btn-success"> 补货(已到达)</span>
                                        @elseif($purchase_order->order_replenishment_status ==3)
                                            <span class="btn btn-danger"> 补货(未到达)</span>
                                        @endif

                                    </td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td  >{{$purchase_order->material_replenishment_name}}</td>
                                    <td  class="pro-title">问题描述</td>
                                    <td  >{{$purchase_order->material_replenishment_detail}}</td>
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
