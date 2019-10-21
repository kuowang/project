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
                                        <th colspan="8"><span class="btn btn-info">车辆信息实际</span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">采购批次</td>
                                    <td  >{{$batchinfo->purchase_number}}</td>
                                    <td  class="pro-title">采购单编号</td>
                                    <td >{{ $orderinfo->deliver_mode}}</td>
                                    <td  class="pro-title">订单到货地点（中转）</td>
                                    <td  >{{$orderinfo->transfer_address}}</td>
                                    <td class="pro-title">批次到货地点</td>
                                    <td >{{$orderinfo->direct_address}}</td>
                                </tr>

                                <tr>
                                    <td class="pro-title">车辆规格</td>
                                    <td >{{$orderinfo->vehicle_type}}</td>
                                    <td class="pro-title">司机名称</td>
                                    <td >{{$orderinfo->driver_name}}</td>
                                    <td class="pro-title">身份证号</td>
                                    <td >{{$orderinfo->shenfenzheng}}</td>
                                    <td class="pro-title">车牌号码</td>
                                    <td >{{$orderinfo->chepaihao}}</td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="clearfix"></div>

                        </div>
                    </div>
                </div>
                <div class="widget">
                    <div class="widget-header">
                        <div class="title" style="text-align: center">
                            材料采购订单
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">


                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="8"><span class="btn btn-info">采购物流信息</span></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">采购单编号</td>
                                    <td >{{ $orderinfo->deliver_mode }}</td>
                                    <td  class="pro-title">采购批次</td>
                                    <td >{{ $batchinfo->purchase_number }}</td>
                                    <td  class="pro-title">下单日期</td>
                                    <td >{{ $orderinfo->order_created_date }}</td>
                                    <td  class="pro-title">要求到货日期</td>
                                    <td >{{ $batchinfo->arrive_time }}</td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">项目名称</td>
                                    <td colspan="3">{{ $project->project_name }}</td>
                                    <td  class="pro-title">工程名称</td>
                                    <td colspan="3">{{ $engineering->engineering_name }}</td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">送货方式</td>
                                    <td >{{ $orderinfo->deliver_mode }}</td>
                                    <td  class="pro-title">到达方式</td>
                                    <td >{{ $orderinfo->arrival_mode }}</td>
                                    <td  class="pro-title">中转站</td>
                                    <td >{{ $orderinfo->transfer_address }}</td>
                                    <td  class="pro-title">终点地址</td>
                                    <td >{{ $orderinfo->direct_address }}</td>
                                </tr>

                                <tr>
                                    <td class="pro-title">运输方式</td>
                                    <td >{{ $orderinfo->transport_mode }}</td>
                                    <td class="pro-title">装载方式</td>
                                    <td >{{ $orderinfo->load_mode }}</td>
                                    <td class="pro-title">车辆规格</td>
                                    <td >{{ $orderinfo->vehicle_mode }}</td>
                                    <td  class="pro-title">车辆数量</td>
                                    <td >{{ $orderinfo->vehicle_number }}</td>
                                </tr>
                                <tr>
                                    <td class="pro-title">订单采购地点</td>
                                    <td >{{ $orderinfo->purchase_address }}</td>
                                    <td class="pro-title">包装要求</td>
                                    <td >{{ $orderinfo->packing_mode }}</td>
                                    <td  class="pro-title">买方联系人</td>
                                    <td >{{ $orderinfo->purchaser }}</td>
                                    <td  class="pro-title">买方联系电话</td>
                                    <td >{{ $orderinfo->purchaser_phone }}</td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">供应商名称</td>
                                    <td id="supplier">{{$supplier->supplier}}</td>
                                    <td  class="pro-title">联系人</td>
                                    <td id="contacts">{{$supplier->contacts}}
                                    <td  class="pro-title">联系电话</td>
                                    <td id="telephone">{{$supplier->telephone}}</td>
                                    <td  class="pro-title">电子邮箱</td>
                                    <td id="email">{{$supplier->email}}</td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">备注</td>
                                    <td id="remark" colspan="7"> {{ $orderinfo->remark }}</td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="clearfix"></div>
                            <table class="layui-table layui-form table111">
                                <thead>
                                    <th>序号</th>
                                    <th>材料名称</th>
                                    <th>规格特性要求</th>
                                    <th>采购单位</th>
                                    <th>采购总量</th>
                                    <th>品牌</th>
                                    <th>包装要求</th>
                                </thead>
                                <tbody id="">
                                @php
                                    $system_code ='';
                                    $xuhao=1;
                                @endphp
                                @foreach($engin_system as $v)
                                    @if(isset($itemlist[$v->sub_arch_id]))
                                    @foreach($itemlist[$v->sub_arch_id] as $key=>$item)
                                            <tr id="budget_item_{{$item->id}}">
                                            <td>{{$xuhao++}}</td>
                                            <td>{{$item->material_name}}</td>
                                            <td>{{$item->characteristic}}</td>
                                            <td>{{$item->purchase_unit}}</td>
                                            <td>{{$item->actual_purchase_quantity}}</td>
                                            <td>{{$item->brand_name}}</td>
                                            <td>{{ $item->pack_claim }}</td>
                                            </tr>
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



</script>

@endsection
