@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

    <style type="text/css">
        .layui-table td, .layui-table th {
            border: solid 1px #ccc;
        }
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

                                </tbody>
                            </table>
                            <div class="clearfix"></div>
                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="3"><span class="btn btn-info">材料管理</span></th>
                                </tr>
                                </thead>
                                <tbody>

                                <tr class="yanshou">
                                    <td  class="pro-title" style="width:200px">订单验收状态</td>
                                    <td  class="pro-title" style="width: 30%">问题材料名称</td>
                                    <td   class="pro-title" style="min-width: 300px">问题描述</td>
                                </tr>
                                @if($material_abnormal_name && is_array($material_abnormal_name))
                                    @foreach($material_abnormal_name as $k=>$v)
                                        <tr id="yanshou_1" class="yanshou">
                                            <td >
                                                @if($k ==0)
                                                @if($order_check_status ==1 ) 未验收 @endif
                                                @if($order_check_status ==2 ) 已验收(正常)    @endif
                                                @if($order_check_status ==3 ) 已验收(有损坏)   @endif
                                                @if($order_check_status ==4 ) 已验收(数量有误)      @endif
                                                @endif
                                            </td>
                                            <td  >
                                                {{isset($material_abnormal_name[$k])?$material_abnormal_name[$k]:''}}
                                            </td>
                                            <td  >
                                                {{isset($material_abnormal_detail[$k])?$material_abnormal_detail[$k]:''}}
                                            </td>
                                        </tr>
                                    @endforeach

                                @endif

                                <tr class="shiyong">
                                    <td  class="pro-title">材料使用状态</td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td  class="pro-title">问题描述</td>
                                </tr>
                                @if($material_question_name)
                                    @foreach($material_question_name as $k=>$v)
                                        <tr id="shiyong_1" class="shiyong">
                                            <td  >
                                                @if($k ==0)
                                                    @if($order_use_status ==1 )  正常(满足使用)  @endif
                                                    @if($order_use_status ==2 )  非正常(不满足使用)  @endif
                                                @endif
                                            </td>
                                            <td  >{{isset($material_question_name[$k])?$material_question_name[$k]:''}} </td>
                                            <td >{{isset($material_question_name[$k])?$material_question_name[$k]:''}}</td>
                                        </tr>
                                    @endforeach

                                @endif

                                <tr class="gongcheng">
                                    <td  class="pro-title">材料工程量状态</td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td  class="pro-title">问题描述</td>
                                </tr>
                                @if($material_quantity_name)
                                    @foreach($material_quantity_name as $k=>$v)
                                        <tr id="gongcheng_1" class="gongcheng">
                                            <td  >
                                                @if($k==0)
                                                    @if($order_quantity_status ==1 ) 满足(无结余)  @endif
                                                    @if($order_quantity_status ==2 ) 满足(有结余)  @endif
                                                    @if($order_quantity_status ==3 ) 不满足(需要补充)@endif
                                                @endif
                                            </td>
                                            <td  >{{isset($material_quantity_name[$k])?$material_quantity_name[$k]:''}} </td>
                                            <td  >{{isset($material_quantity_detail[$k])?$material_quantity_detail[$k]:''}} </td>
                                        </tr>
                                    @endforeach

                                @endif

                                <tr class="buhuo">
                                    <td  class="pro-title">补货状态</td>
                                    <td  class="pro-title">问题材料名称</td>
                                    <td  class="pro-title">问题描述</td>
                                </tr>
                                @if($material_replenishment_name)
                                    @foreach($material_replenishment_name as $k=>$v)
                                        <tr id="buhuo_1" class="buhuo">
                                            <td  >
                                                @if($k ==0)
                                                @if($order_replenishment_status ==1 ) 无补货 @endif
                                                @if($order_replenishment_status ==2 ) 补货(已到达)  @endif
                                                @if($order_replenishment_status ==3 ) 补货(未到达)  @endif
                                                @endif
                                            </td>
                                            <td  >{{isset($material_replenishment_name[$k])?$material_replenishment_name[$k]:''}}</td>
                                            <td  >{{isset($material_replenishment_detail[$k])?$material_replenishment_detail[$k]:''}}</td>
                                        </tr>
                                    @endforeach

                                @endif
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
