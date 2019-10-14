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
                <form method="post" action="/purchase/postAddPurchaseOrder/{{ $batch_id }}">
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
                                        <th colspan="8"><span class="btn btn-info">项目基本信息</span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">采购负责人</td>
                                    <td  >{{$engineering->purchase_username}}</td>
                                    <td  class="pro-title">项目地点（货物目的地）</td>
                                    <td colspan="3">{{$project->province}}{{$project->city}}{{$project->county}}{{$project->address_detail}}{{$project->foreign_address}}
                                    </td>
                                    <td  class="pro-title">工程名称</td>
                                    <td  >{{$engineering->engineering_name}}</td>
                                </tr>

                                <tr>
                                    <td class="pro-title">采购批次</td>
                                    <td >{{$batchinfo->purchase_number}}</td>
                                    <td class="pro-title">发货性质</td>
                                    <td >{{$batchinfo->deliver_properties}}</td>
                                    <td  class="pro-title">下单日期</td>
                                    <td ><input type="text" name="order_created_date"   id="order_created_date" class="span12 notempty" ></td>
                                    <td class="pro-title">计划到达时间</td>
                                    <td >{{$batchinfo->arrive_time}}</td>
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

                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="8"><span class="btn btn-info">采购物流信息</span></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">送货方式</td>
                                    <td ><input type="text" name="deliver_mode"         id="deliver_mode" class="span12 notempty" ></td>
                                    <td  class="pro-title">到达方式</td>
                                    <td ><input type="text" name="arrival_mode"         id="arrival_mode" class="span12 notempty" ></td>
                                    <td  class="pro-title">中转站</td>
                                    <td ><input type="text" name="transfer_address"     id="transfer_address" class="span12" ></td>
                                    <td  class="pro-title">直达地址</td>
                                    <td ><input type="text" name="direct_address"       id="direct_address" class="span12 notempty" ></td>
                                </tr>

                                <tr>
                                    <td class="pro-title">运输方式</td>
                                    <td ><input type="text" name="transport_mode"       id="transport_mode" class="span12 notempty" ></td>
                                    <td class="pro-title">装载方式</td>
                                    <td ><input type="text" name="load_mode"            id="load_mode" class="span12 notempty" ></td>
                                    <td class="pro-title">车辆规格</td>
                                    <td ><input type="text" name="vehicle_mode"         id="vehicle_mode" class="span12 notempty" ></td>
                                    <td  class="pro-title">车辆数量</td>
                                    <td ><input type="text" name="vehicle_number"       id="vehicle_number" class="span12 notempty" onclick="key(this)" ></td>
                                </tr>
                                <tr>
                                    <td class="pro-title">包装要求</td>
                                    <td ><input type="text" name="packing_mode"         id="packing_mode" class="span12 notempty" ></td>
                                    <td class="pro-title">订单采购地点</td>
                                    <td ><input type="text" name="purchase_address"     id="purchase_address" class="span12 notempty" ></td>
                                    <td  class="pro-title">买方联系人</td>
                                    <td ><input type="text" name="purchaser" class="span12 notempty" ></td>
                                    <td  class="pro-title">买方联系电话</td>
                                    <td ><input type="text" name="purchaser_phone" class="span12 notempty" ></td>
                                </tr>

                                <tr>
                                    <td  class="pro-title">备注</td>
                                    <td id="remark" colspan="7"> <input type="text" name="remark"         id="remark" class="span12" ></td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="clearfix"></div>
                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="8"><span class="btn btn-info">供应商信息</span></th>
                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                   <td class="pro-title">供应商</td>
                                    <td colspan="7" style="background: #0c9abb">
                                        <select name="supplier" onchange="selectsuppler(this)" class="span12">
                                            <option value="0"></option>
                                            @foreach($supplierList as $k=>$v)
                                                <option value="{{$k}}">{{$v}}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                </tr>

                                <tr>
                                    <td  class="pro-title" style="width:8% ">供应商名称</td>
                                    <td id="supplier" style="width:17% "></td>
                                    <td  class="pro-title" style="width:8% ">厂家名称</td>
                                    <td id="manufactor" style="width:17% "></td>
                                    <td  class="pro-title" style="width:8% ">供应商地址</td>
                                    <td id="address" style="width:17% "></td>
                                    <td  class="pro-title" style="width:8% ">联系人</td>
                                    <td id="contacts" style="width:17% "></td>
                                </tr>
                                <tr>

                                    <td  class="pro-title">联系电话</td>
                                    <td id="telephone"></td>
                                    <td  class="pro-title">电子邮箱</td>
                                    <td id="email"></td>
                                    <td colspan="4"></td>
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
                            <div style="color: red">注：选择供应商才能显示该供应商对应的材料</div>
                            <div class="clearfix"></div>

                        </div>
                    </div>

                </div>
                </form>
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
    //选择供应商
    function selectsuppler(th){
        id =$(th).val();
        //获取供应商对应的信息以及所属的材料信息
        $.ajax({
            url:'/purchase/getSupplierOrMaterial/'+batch_id+'/'+id,
            type:'get',
            success:function(data){
                console.log(data);
                if(data.status == 1){
                    //补充供应商信息
                    add_supplier(data.data.supplier);
                    addMaterial(data.data.budgetitem)
                }else{
                    showMsg(data.info);
                    return false;
                }
            },
        });


        console.log(id);
    }

    function add_supplier(supplier) {
        $('#supplier').html(supplier.supplier);
        $('#manufactor').html(supplier.manufactor);
        $('#address').html(supplier.address);
        $('#contacts').html(supplier.contacts);
        $('#telephone').html(supplier.telephone);
        $('#email').html(supplier.email);
    }

    function addMaterial(budgetitem) {
        $('.supplier').remove();
        $.each(budgetitem,function(index,item){
            var xuhao =index *1 +1;
            var str ='<tr class="supplier sub_arch_'+item.sub_arch_id+'" id="budget_item_'+item.id+'">';
            str +='<td>'+ xuhao +'<input type="hidden" name="budget_item_id[]" value="'+item.id+'"></td>'
            str +='<td>'+item.material_name+'</td>'
            str +='<td>'+item.characteristic+'</td>'
            str +='<td>'+item.purchase_unit+'</td>'
            str +='<td>'+item.engineering_quantity+'</td>'
            str +='<td>'+item.brand_name+'</td>'
            str +='<td>'+item.purchase_unit_price+'<input type="hidden" id="purchase_price_'+item.id+'" name="purchase_unit_price[]" value="'+item.purchase_unit_price+'"></td>'
            str +='<td>'+(item.total_purchase_price)+'</td>'
            str +='<td>'+(item.already_purchased_quantity)+'</td>'
            str +='<td id="wait_purchased_quantity_'+item.id+'">'+(item.wait_purchased_quantity)+'</td>'
            str +='<td><input type="text" class="span12 notempty actual_purchase_quantity" name="actual_purchase_quantity['+item.id+']" onclick="key(this)" onchange="totalPrice('+item.id+',this)"></td>'
            str +='<td id="actual_total_fee_'+item.id+'"></td>'
            if(item.already_purchased_quantity == 0){
                str +='<td><span class="btn btn-danger">未下单</span></td>'
            }else if(item.already_purchased_quantity == item.engineering_quantity){
                str +='<td><span class="btn btn-success">已完成</span></td>'
            }else{
                str +='<td><span class="btn btn-info">剩余下单</span></td>'
            }
            str +='</tr>'

        $('.sub_arch_'+item.sub_arch_id+":last").after(str);
            console.log(item);
        });
        //点击文本框设置背景色
        $("input").focus(function(){
            $(this).css("background-color","#fff");
        });

    }
    //计算采购价格
    function totalPrice(id,th) {
        var wait_purchased_quantity =$('#wait_purchased_quantity_'+id).html();
        var actual_quantity =$(th).val();
        var purchase_price = $('#purchase_price_'+id).val();
        if(actual_quantity*1 > wait_purchased_quantity*1){
            showMsg('采购数量超出待采购数量，请核实');
        }
        $("#actual_total_fee_"+id).html((actual_quantity * purchase_price).toFixed(2) );
        console.log(wait_purchased_quantity);
    }

    //显示提示信息
    function showMsg(str){
        layui.use('layer', function(){
            var layer = layui.layer;
            layer.msg(str);
        });
    }
    //点击只能输入数字
    function key(th){
        $(th).keyup(function(){
            $(this).val($(this).val().replace(/[^0-9.]/g,''));
        }).bind("paste",function(){  //CTR+V事件处理
            $(this).val($(this).val().replace(/[^0-9.]/g,''));
        }).css("ime-mode", "disabled"); //CSS设置输入法不可用
        va =$(th).val();
        if(va > 1000000000 || va < 0) {
            $(th).val(0);
        }
    }

    //提交时的数据验证
    function form_submit(){
        var sum=0;
        $(".notempty").each(function(){
            if($(this).val()){
            }else{
                a =$(this).parent().html();
                console.log(a);
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
