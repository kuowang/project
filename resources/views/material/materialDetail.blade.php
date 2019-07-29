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
                                    <td>{{ $material->material_budget_unit }}</td>
                                    <td>{{ $material->material_purchase_unit }}</td>
                                    <td>{{ $material->conversion }}</td>
                                    <td>{{ $material->pack_specification }}</td>
                                    <td>{{ $material->pack_claim }}</td>
                                    <td>{{ $material->material_length }}</td>
                                    <td>{{ $material->material_width }}</td>
                                    <td>{{ $material->material_height }}</td>
                                    <td>{{ $material->material_thickness }}</td>
                                    <td>{{ $material->material_diameter }}</td>
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

                            </thead>
                            <tbody id="zixitong">

                            @foreach($material_brand as $mate)
                            <tr>
                                <td>{{ $mate->brand_name}}</td>
                                <td>{{ $mate->manufactor}}</td>
                                <td>{{ $mate->supplier }}</td>
                                <td>{{ $mate->budget_unit_price }}</td>
                                <td>{{ $mate->budget_unit }}</td>
                                <td>{{ $mate->purchase_unit_price }}</td>
                                <td>{{ $mate->purchase_unit }}</td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <div class="clearfix">
                        </div>
                    </div>

                </div>
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
            '<td><input type="text"  name="budget_unit_price[]" id="budget_unit_price_'+intid+'" value="" lay-skin="primary" placeholder=""style="width:50px;"></td>'+
            '<td><input type="text"  name="budget_unit[]"       id="budget_unit_'+intid+'"         value="" lay-skin="primary"  placeholder=""style="width:50px;"></td>'+
            '<td><input type="text"  name="purchase_unit_price[]"  id="purchase_unit_price_'+intid+'"    value="" lay-skin="primary" style="width:50px;"></td>'+
            '<td><input type="text"  name="purchase_unit[]"      id="purchase_unit_'+intid+'" value="" lay-skin="primary" style="width:50px;"></td>'+
            '<td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>'+
            '</tr>';

            $("#zixitong").append(str);
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


    </script>

@endsection
