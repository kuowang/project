@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
<div class="left-sidebar">
    <div class="row-fluid">
        <div class="span12">
            <form method="post" action="/material/postEditMaterial/{{ $id }}">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        材料信息
                    </div>
                    <span class="tools">
                      <a class="fs1" aria-hidden="true" data-icon="&#xe090;"></a>
                    </span>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th>材料名称</th>
                                <th>材料编码</th>
                                <th>系统归属</th>
                                <th>规格要求</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>{{ $material->material_name }}</th>
                                <th>{{ $material->material_code }}</th>
                                <th>{{ $architectual_system->system_name }}:{{ $architectural_sub_system->sub_system_name }}</th>
                                <th>{{ $material->characteristic }}</th>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
                <div class="widget">
                    <div class="widget-header">
                        <div class="title">
                            规格尺寸信息
                        </div>
                        <span class="tools">
                      <a class="fs1" aria-hidden="true" data-icon="&#xe090;"></a>
                    </span>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">
                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th>预算单位</th>
                                    <th>采购单位</th>
                                    <th>单位换算关系</th>
                                    <th>包装规格</th>
                                    <th>包装要求</th>
                                    <th>长(mm)</th>
                                    <th>宽(mm)</th>
                                    <th>高(mm)</th>
                                    <th>厚(mm)</th>
                                    <th>直径(mm)</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><input type="text"  name="material_budget_unit"      id="budget_unit"        value="{{ $material->material_budget_unit }}" lay-skin="primary" onchange="selectunit()" style="width:50px;"></td>
                                    <td><input type="text"  name="material_purchase_unit"    id="purchase_unit"      value="{{ $material->material_purchase_unit }}" lay-skin="primary" onchange="selectunit()" style="width:50px;"></td>
                                    <td><input type="text"  name="conversion"       id="conversion"         value="{{ $material->conversion }}" lay-skin="primary" style="width:70px;"></td>
                                    <td><input type="text"  name="pack_specification" id="pack_specification" value="{{ $material->pack_specification }}" lay-skin="primary"></td>
                                    <td><input type="text"  name="pack_claim"       id="pack_claim"         value="{{ $material->pack_claim }}" lay-skin="primary"></td>
                                    <td><input type="text"  name="material_length"  id="material_length"    value="{{ $material->material_length }}" lay-skin="primary" style="width:50px;"></td>
                                    <td><input type="text"  name="material_width"   id="material_width"     value="{{ $material->material_width }}" lay-skin="primary"  style="width:50px;"></td>
                                    <td><input type="text"  name="material_height"  id="material_height"    value="{{ $material->material_height }}" lay-skin="primary" style="width:50px;"></td>
                                    <td><input type="text"  name="material_thickness" id="material_thickness" value="{{ $material->material_thickness }}" lay-skin="primary"  style="width:50px;"></td>
                                    <td><input type="text"  name="material_diameter" id="material_diameter" value="{{ $material->material_diameter }}" lay-skin="primary" style="width:50px;"></td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="clearfix">
                            </div>
                        </div>
                    </div>
                </div>
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        品牌价格信息
                    </div>
                    <span class="title"style="float: right;">
                        <a class="btn btn-success" onclick="add_xitong()" ><i class="layui-icon">新增品牌 +</i></a>
                    </span>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th>品牌名称</th>
                                <th>厂家名称</th>
                                <th>供应商信息</th>
                                <th>预算单价</th>
                                <th>预算单位</th>
                                <th>采购单价</th>
                                <th>采购单位</th>
                                <th>报价单价</th>
                                <th>报价单位</th>

                                <th style="width: 60px;">操作</th>
                            </thead>
                            <tbody id="zixitong">

                            @foreach($material_brand as $mate)
                            <tr>
                                <td>
                                    <select name="brand_id[]" id="brand_id_1" class="span12" style="min-width: 80px;" onchange="selectSupplier(1)">
                                        <option value="0"  style="display: none"></option>
                                        @foreach($brand as $v)
                                            @if($v->id == $mate->brand_id)
                                            <option value="{{ $v->id }}" selected="selected">{{$v->brand_name}}</option>
                                            @else
                                            <option value="{{ $v->id }}" >{{$v->brand_name}}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td>
                                    <select name="manufactor[]" id="manufactor_1" class="span12" style="min-width: 100px" onchange="selectManufactor(1)">
                                        <option value="0"  style="display: none"></option>
                                        @foreach($supplier as $k=>$val)
                                            @if(isset($supplier_brand_list[$mate->brand_id]) && in_array($val->id,$supplier_brand_list[$mate->brand_id]))
                                                @if($val->id == $mate->supplier_id)
                                                    <option value="{{ $val->id }}" class="manufa manufa_{{ $val->id }}" selected="selected">{{$val->manufactor}}</option>
                                                @else
                                                    <option value="{{ $val->id }}" class="manufa manufa_{{ $val->id }}" >{{$val->manufactor}}</option>
                                                @endif
                                            @else
                                                <option value="{{ $val->id }}" class="manufa manufa_{{ $val->id }}" style="display: none">{{$val->manufactor}}</option>
                                            @endif

                                        @endforeach
                                    </select>
                                </td>
                                <td><input type="text"  name="supplier[]"          id="supplier_{{$k}}"         value="{{ $mate->supplier }}" lay-skin="primary"></td>
                                <td><input type="text"  name="budget_unit_price[]" id="budget_unit_price_{{$k}}" value="{{ $mate->budget_unit_price }}" lay-skin="primary" placeholder=""style="width:50px;" onchange="changebudgetprice({{$k}})"></td>
                                <td><input type="text"  name="budget_unit[]"  class="budget_unit"     id="budget_unit_{{$k}}"         value="{{ $mate->budget_unit }}" lay-skin="primary"  placeholder=""style="width:50px;"></td>
                                <td><input type="text"  name="purchase_unit_price[]"  id="purchase_unit_price_{{$k}}"    value="{{ $mate->purchase_unit_price }}" lay-skin="primary" style="width:50px;"></td>
                                <td><input type="text"  name="purchase_unit[]"   class="purchase_unit"    id="purchase_unit_{{$k}}" value="{{ $mate->purchase_unit }}" lay-skin="primary" style="width:50px;"></td>
                                <td><input type="text"  name="offer_unit_price[]"      id="offer_unit_price_{{$k}}" value="{{ $mate->offer_unit_price }}" lay-skin="primary" style="width:50px;"></td>
                                <td><input type="text"  name="offer_unit[]"    class="offer_unit"   id="offer_unit_{{$k}}" value="{{ $mate->offer_unit }}" lay-skin="primary" style="width:50px;"></td>

                                <td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>
                            </tr>
                            @endforeach

                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <hr>
                        <div style="margin: 10px">
                            <div>1、1预算单位=1采购单位 * 换算关系数值</div>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>
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

            </form>
        </div>
    </div>
</div>
    <div class="right-sidebar">
        <div class="wrapper">
            <ul class="stats">
                <li>
                    <h4>
                        公告
                    </h4>
                </li>
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
    <style>
        input{
            width: 90%;
        }
    </style>
    <!-- 你的HTML代码 -->

    <script type="text/javascript">
        var supplier_brand={!! $supplier_brand_json !!}; //品牌对应供应商列表
        var supplier={!! $supplier_list_json !!}; //供应商名称列表
        //删除事件
        function deleteTrRow(tr){
            $(tr).parent().parent().remove();
        }

        function selectSupplier(id){
            // id =parseInt(Math.random() * (1000000 )+100);
            brand_id =$('#brand_id_'+id).val();
            console.log(supplier_brand[brand_id]);
            console.log(brand_id);
            supplier_brand_list =supplier_brand[brand_id];
            $('.manufa').hide();
            for(var i=0;i<supplier_brand_list.length;i++){
                j= supplier_brand_list[i];
                $('.manufa_'+j).show();
            }

            //$("#manufactor_"+id).empty();
            //$("#manufactor_"+id).append("<option value='0' ></option>");
            //获取品牌对于的供应商信息
            /*
            $.ajax({
                url:'/supplier/brandToSupplier/'+brand_id,
                type:'get',
                // contentType: 'application/json',
                success:function(data){
                    console.log(data);
                    if(data.status == 1){
                        arr =data.data;
                        for(var i=0;i<arr.length;i++){
                            console.log(arr[i]);
                            obj =arr[i];
                            supplier[obj.id]=obj.supplier;
                            $("#manufactor_"+id).append("<option value='"+obj.id+"' supplier='"+obj.supplier+"'>"+obj.manufactor+"</option>");
                        }
                    }
                },
            });
            */
        }

        function selectManufactor(id){
            sid =$('#manufactor_'+id).val();
            $('#supplier_'+id).val(supplier[sid]);
            console.log(supplier[sid]);
        }



        //添加事件
        function add_xitong() {
            intid =parseInt(Math.random() * (1000000 )+100);
           str =' <tr> <td>'+
               '<select name="brand_id[]" id="brand_id_'+intid+'" class="span12" style="min-width: 80px;" onchange="selectSupplier('+intid+')">'+
            '<option value="0"  style="display: none"></option>'+
                    @foreach($brand as $v)
                        '<option value="{{ $v->id }}" >{{$v->brand_name}}</option>'+
                    @endforeach
                '</select>'+
            '</td> <td>'+
            '<select name="manufactor[]" id="manufactor_'+intid+'" class="span12" style="min-width: 100px" onchange="selectManufactor('+intid+')">'+
            '<option value="0"  style="display: none"></option>'+
                    @foreach($supplier as $val)
                        '<option value="{{ $val->id }}" class="manufa manufa_{{ $val->id }}" style="display: none">{{$val->manufactor}}</option>'+
                    @endforeach
                        '</select>'+
            '</td>'+
            '<td><input type="text"  name="supplier[]"          id="supplier_'+intid+'"         value="" lay-skin="primary"></td>'+
            '<td><input type="text"  name="budget_unit_price[]" id="budget_unit_price_'+intid+'"  onchange="changebudgetprice('+intid+')" value="" lay-skin="primary" placeholder=""style="width:50px;"></td>'+
            '<td><input type="text"  name="budget_unit[]"  class="budget_unit"      id="budget_unit_'+intid+'"         value="" lay-skin="primary"  placeholder=""style="width:50px;"></td>'+
            '<td><input type="text"  name="purchase_unit_price[]"  id="purchase_unit_price_'+intid+'"    value="" lay-skin="primary" style="width:50px;"></td>'+
            '<td><input type="text"  name="purchase_unit[]"  class="purchase_unit"     id="purchase_unit_'+intid+'" value="" lay-skin="primary" style="width:50px;"></td>'+
            '<td><input type="text"  name="offer_unit_price[]"      id="offer_unit_price_'+intid+'"  lay-skin="primary" style="width:50px;"></td>'+
            '<td><input type="text"  name="offer_unit[]"  class="offer_unit"     id="offer_unit_'+intid+'"  lay-skin="primary" style="width:50px;"></td>'+
            '<td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>'+
            '</tr>';

            $("#zixitong").append(str);
            selectunit()
        }
        //提交验证信息
        function form_submit(){
            $('input').css('background','#fff');
            var sum=0;
            $("input").each(function(){
                if($(this).val()){
                }else{
                    $(this).css('background','orange');
                    sum=1;
                }
            });
            if(sum == 1){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.msg('有信息没有填写完全，请填写完成后，再提交。');
                });
                return false;
            }
            return true;
        }
        //将报价和预算单位默认到品牌信息里面
        function selectunit() {
            budget_unit =$('#budget_unit').val();
            purchase_unit =$('#purchase_unit').val();
            if(budget_unit !=''){
                $(".budget_unit").each(function(){
                    if($(this).val()){
                    }else{
                        $(this).val(budget_unit);
                    }
                });
                $(".offer_unit").each(function(){
                    if($(this).val()){
                    }else{
                        $(this).val(budget_unit);
                    }
                });
            }
            if(purchase_unit !=''){
                $(".purchase_unit").each(function(){
                    if($(this).val()){
                    }else{
                        $(this).val(purchase_unit);
                    }
                });
            }
        }
        //填写预算是 更改采购价格
        function changebudgetprice(key) {
            budget_price =$('#budget_unit_price_'+key).val();
            purchase_unit_price =$('#purchase_unit_price_'+key).val();
            console.log(budget_price);
            //console.log(purchase_unit_price);
            if(purchase_unit_price == ''){
                $('#purchase_unit_price_'+key).val(budget_price)
            }
        }

    </script>

@endsection
