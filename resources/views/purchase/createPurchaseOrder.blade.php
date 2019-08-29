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
                        <div  style="text-align: center;clear: both;font-size: 16px;" >
                            <b>{{$project->project_name}}</b>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                    <tr>
                                        <th colspan="6"><span class="btn btn-info">项目基本信息</span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">项目负责人</td>
                                    <td  >{{$project->purchase_username}}</td>
                                    <td  class="pro-title">项目地点（货物目的地）</td>
                                    <td >{{$project->province}}{{$project->city}}{{$project->county}}{{$project->address_detail}}{{$project->foreign_address}}
                                    </td>
                                    <td  class="pro-title">工程名称</td>
                                    <td  >{{$engineering->engineering_name}}</td>
                                </tr>

                                <tr>
                                    <td class="pro-title">采购批次</td>
                                    <td >{{$batchList->purchase_number}}</td>
                                    <td class="pro-title">发货性质</td>
                                    <td >{{$batchList->deliver_properties}}</td>
                                    <td class="pro-title">计划发货时间</td>
                                    <td >{{$batchList->deliver_time}}</td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="widget">
                    <div class="widget-header">
                        <div class="title">
                            采购单
                        </div>
                        <span class="title"style="float: right;font-weight: normal;font-size: 14px">
                        供应商：<select name="supplier" onchange="selectsuppler(this)">
                                <option value="0"></option>
                            @foreach($supplierList as $k=>$v)
                                <option value="{{$k}}">{{$v}}</option>
                            @endforeach
                            </select>

                        </span>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                    <th>批次</th>
                                    <th>采购单编号</th>
                                    <th>采购时间</th>
                                    <th>供应商名称</th>
                                    <th>订单状态</th>
                                    <th>发送状态</th>
                                    <th>采购总金额</th>
                                    <th>订单操作</th>
                                    <th>发送操作</th>
                                    <th>执行操作</th>

                                </thead>
                                <tbody id="batchmanage">
                                @foreach($batchList as $k=>$val)
                                    <tr  class="hiddenitem_{{$k}}">
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div class="clearfix"></div>

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

<script type="text/javascript">
    function selectsuppler(th){
        id =$(th).val();









        console.log(id);
    }
</script>

@endsection
