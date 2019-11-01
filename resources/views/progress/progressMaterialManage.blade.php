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

    </style>
    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-header" style="text-align: center">
                        <div class="title">
                            <span class="btn btn-info">现场材料管理</span>
                        </div>

                        <div  style="font-size: 16px;     text-align: center;" >
                            <b>{{$project->project_name}}</b>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                    <tr>
                                        <th colspan="6">项目基本信息
                                            <div class="layui-form-item" style="float: right;margin-bottom:0">
                                                <a href="javascript:history.go(-1)">
                                                    <label for="L_repass" class="layui-form-label"></label>
                                                    <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                                                </a>
                                            </div>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">采购负责人</td>
                                    <td  >{{$engineering->purchase_username}}</td>
                                    <td  class="pro-title">项目地点（货物目的地）</td>
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
                                    <td class="pro-title">场地自然条件</td>
                                    <td >{{$project->environment}}</td>
                                    <td class="pro-title">交通条件</td>
                                    <td >{{$project->traffic}}</td>
                                    <td class="pro-title">材料储放条件</td>
                                    <td >{{$project->material_storage}}</td>
                                </tr>

                                </tbody>
                            </table>

                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="widget">
                    @foreach($batchList as $k=>$val)
                    <div class="widget-header">
                        <div class="title">
                            <span class="btn btn-info">采购批次{{$val->purchase_number}} </span>
                            @if($val->deliver_properties ==1)
                                <span class="btn btn-info">预算内</span>
                            @else
                                <span class="btn btn-danger">预算外</span>
                            @endif
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                    <th>批次</th>
                                    <th>采购单编号</th>
                                    <th>现场负责人</th>
                                    <th>验货负责人</th>
                                    <th>订单到达状态</th>
                                    <th>材料使用状态</th>
                                    <th>材料工程量状态</th>
                                    <th>补货状态</th>
                                    <th>执行操作</th>

                                </thead>
                                <tbody id="batchmanage">
                                    @if(isset($batchOrderList[$val->id]))
                                    @foreach($batchOrderList[$val->id] as $list)
                                        <tr  class="hiddenitem_{{$k}}">
                                            <td>{{$val->purchase_number}}</td>
                                            <td>{{$list->purchase_order_number}}</td>
                                            <td>{{$list->progress_username}}</td>
                                            <td>{{$list->inspection_username}}</td>
                                            <td>
                                                @if($list->order_arrive_status ==1)
                                                    <span class="btn btn-success"> 已到达</span>
                                                @elseif($list->order_arrive_status ==2)
                                                    <span class="btn btn-danger"> 未到达</span>
                                                @endif
                                            </td>
                                            <td>
                                                @if($list->order_use_status ==1)
                                                    <span class="btn btn-success"> 正常(满足使用) </span>
                                                @elseif($list->order_use_status ==2)
                                                    <span class="btn btn-danger"> 非正常(不满足使用)</span>
                                                @endif
                                            </td>
                                            <td>
                                                @if($list->order_quantity_status ==1)
                                                    <span class="btn btn-success"> 满足(无结余) </span>
                                                @elseif($list->order_quantity_status ==2)
                                                    <span class="btn btn-success"> 满足(有结余) </span>
                                                @elseif($list->order_quantity_status ==3)
                                                    <span class="btn btn-danger"> 不满足(需要补充)</span>
                                                @endif
                                            </td>
                                            <td>
                                                @if($list->order_replenishment_status ==1)
                                                    <span class="btn btn-success"> 无补货</span>
                                                @elseif($list->order_replenishment_status ==2)
                                                    <span class="btn btn-success"> 补货(已到达)</span>
                                                @elseif($list->order_replenishment_status ==3)
                                                    <span class="btn btn-danger"> 补货(未到达)</span>
                                                @endif



                                            </td>
                                            <td>
                                                @if($list->order_status == 0)
                                                    @if( (in_array(30010201,$pageauth) && $engineering->progress_uid == $uid ) || in_array(30010201,$manageauth))
                                                        <a href ='/progress/progressMaterialDetail/{{$list->id}}'>
                                                            <span class="btn btn-success">查看</span>
                                                        </a>
                                                    @endif
                                                    @if( (in_array(30010202,$pageauth) && $engineering->progress_uid == $uid ) || in_array(30010202,$manageauth))
                                                        <a href ='/progress/editProgressMaterial/{{$list->id}}'>
                                                            <span  class="btn btn-success">编辑</span>
                                                        </a>
                                                    @endif
                                                @else
                                                    采购单未审核
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                    @endif
                                </tbody>
                            </table>

                            <div class="clearfix"></div>



                        </div>
                    </div>
                    @endforeach

                        <div class="clearfix"></div>
                </div>
            </div>

        </div>
    </div>


<script type="text/javascript">
    //审核状态修改
    function emainStatus(id,status) {

        $.ajax({
            url:'/purchase/examinePurchaseOrder/'+id+'/'+status,
            type:'post',
            // contentType: 'application/json',
            success:function(data){
                console.log(data);
                if(data.status ==1){
                    showMsg('审核更改成功');
                }else{
                    showMsg(data.info)
                }
                setTimeout(function(){ location.href=location.href; }, 1000);
            },
        });
    }

    //删除采购单
    function deletePurchaseOrder(id){
        var r = confirm("确认删除该采购单");
        if (r == true) {
            $.ajax({
                url:'/purchase/deletePurchaseOrder/'+id,
                type:'post',
                // contentType: 'application/json',
                success:function(data){
                    console.log(data);
                    if(data.status == 1){
                        location.href=location.href;
                    }else{
                        showMsg(data.info)
                    }
                },
                error:function () {
                    showMsg('提交失败，请刷新页面再试');
                }
            });

        } else {
            return false;
        }

    }

    function showMsg(str){
        layui.use('layer', function(){
            var layer = layui.layer;
            layer.msg(str);
        });
    }


</script>

@endsection
