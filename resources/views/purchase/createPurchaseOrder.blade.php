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
                                    <td >{{$batchinfo->purchase_number}}</td>
                                    <td class="pro-title">发货性质</td>
                                    <td >{{$batchinfo->deliver_properties}}</td>
                                    <td class="pro-title">计划发货时间</td>
                                    <td >{{$batchinfo->deliver_time}}</td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="clearfix"></div>
                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="6"><span class="btn btn-info">采购物流信息</span></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">送货方式</td>
                                    <td ><input type="text" name="deliver_mode"         id="deliver_mode" class="span8 notempty" ></td>
                                    <td  class="pro-title">到达方式</td>
                                    <td ><input type="text" name="arrival_mode"         id="arrival_mode" class="span8 notempty" ></td>
                                    <td  class="pro-title">中转站</td>
                                    <td ><input type="text" name="transfer_address"     id="transfer_address" class="span8 notempty" ></td>
                                    <td  class="pro-title">直达地址</td>
                                    <td ><input type="text" name="direct_address"       id="direct_address" class="span8 notempty" ></td>
                                </tr>

                                <tr>
                                    <td  class="pro-title">下单日期</td>
                                    <td ><input type="text" name="order_created_date"   id="order_created_date" class="span8 notempty" ></td>
                                    <td class="pro-title">运输方式</td>
                                    <td ><input type="text" name="transport_mode"       id="transport_mode" class="span8 notempty" ></td>
                                    <td class="pro-title">装载方式</td>
                                    <td ><input type="text" name="load_mode"            id="load_mode" class="span8 notempty" ></td>
                                    <td class="pro-title">车辆规格</td>
                                    <td ><input type="text" name="vehicle_mode"         id="vehicle_mode" class="span8 notempty" ></td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">车辆数量</td>
                                    <td ><input type="text" name="vehicle_number"       id="vehicle_number" class="span8 notempty" ></td>
                                    <td class="pro-title">包装要求</td>
                                    <td ><input type="text" name="packing_mode"         id="packing_mode" class="span8 notempty" ></td>
                                    <td class="pro-title">订单采购地点</td>
                                    <td ><input type="text" name="purchase_address"     id="purchase_address" class="span8 notempty" ></td>
                                    <td class="pro-title">供应商</td>
                                    <td >
                                        <select name="supplier" onchange="selectsuppler(this)">
                                            <option value="0"></option>
                                            @foreach($supplierList as $k=>$v)
                                                <option value="{{$k}}">{{$v}}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                </tr>

                                <tr>
                                    <td  class="pro-title">买方联系人</td>
                                    <td ><input type="text" name="" class="span8 notempty" ></td>
                                    <td  class="pro-title">买方联系电话</td>
                                    <td ><input type="text" name="" class="span8 notempty" ></td>
                                    <td  class="pro-title">供应商名称</td>
                                    <td id="supplier"></td>
                                    <td  class="pro-title">厂家名称</td>
                                    <td id="manufactor"></td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">供应商地址</td>
                                    <td id="address"></td>
                                    <td  class="pro-title">联系人</td>
                                    <td id="contacts"></td>
                                    <td  class="pro-title">联系电话</td>
                                    <td id="telephone"></td>
                                    <td  class="pro-title">电子邮箱</td>
                                    <td id="email"></td>
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
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form table111">
                                <thead>
                                    <th>序号</th>
                                    <th>材料名称</th>
                                    <th>规格特性要求</th>
                                    <th>采购单位</th>
                                    <th>预算工程量</th>
                                    <th>品牌</th>
                                    <th>单价</th>
                                    <th>采购总价</th>
                                    <th>已采购</th>
                                    <th>待采购</th>
                                    <th>本次采购</th>
                                    <th>本次采购合计</th>
                                    <th>状态</th>
                                </thead>
                                <tbody id="">
                                @php
                                    $system_code ='';
                                    $xuhao=0;
                                @endphp
                                @foreach($engin_system as $v)
                                    @if($system_code != $v->system_code)
                                        <tr class="pro-title gradeX warning odd">
                                            <td colspan="13">{{$v->system_name}}({{$v->engin_name}})</td>
                                        </tr>
                                        @php( $system_code = $v->system_code)
                                    @endif
                                    <tr class="sub_arch_{{$v->sub_arch_id}} gradeA success odd">
                                        <td  colspan="13"> &nbsp;&nbsp;&nbsp;{{$v->sub_system_name}} <span style="color:#1d52f6">工况：{{$v->work_code}}</span> 编码：{{$v->sub_system_code}}</td>
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
    var batch_id ={{$batch_id}};
    //日期选择器
    layui.use('laydate', function() {
        var laydate = layui.laydate;
        laydate.render({
            elem: '#order_created_date'
        });
    });

    function selectsuppler(th){
        id =$(th).val();









        console.log(id);
    }
</script>

@endsection
