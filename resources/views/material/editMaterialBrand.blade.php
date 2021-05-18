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
                        材料图片
                    </div>
                    <span class="title" style="float: right;">
                        <a class="btn btn-success" attr="1000" id="addMaterialFileID" onclick="add_material_file()"><i class="layui-icon">新增图片 +</i></a>
                    </span>
                </div>
                <div class="widget-body">
                    <table class="layui-table layui-form">
                        <tbody id="materialFileList">
                        <tr>
                            <td class="pro-title">序号</td>
                            <td class="pro-title">文件</td>
                            <td class="pro-title">备注</td>
                            <td class="pro-title">图片</td>
                            <td class="pro-title">操作</td>
                        </tr>

                        @foreach($material_file as $k=>$file)
                            <tr>
                                <td class="pro-title">{{++$k}}</td>

                                <td>
                                    <input type="hidden" id="material_file{{$k}}" class="notempty" name="project_file[]" value="{{$file->file_url}}" placeholder="logo" >
                                    <input class="span8" type="file" id="uploadfile{{$k}}" name="uploadfile[]"  value="" placeholder="logo" onchange="submitFile({{$k}})">
                                </td>
                                <td>
                                    <input type="text"  name="material_file_name[]" class="span12 notempty"  value="{{$file->file_name}}" lay-skin="primary" >
                                </td>
                                <td>
                                    <img src="" style="max-height:200px;">
                                </td>
                                <td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>
                            </tr>

                        @endforeach
                        </tbody>
                    </table>
                    <div style="color: red">注：图片必须是png、jpg、gif 格式</div>
                    <div class="clearfix"></div>


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
                                    <input type="hidden"  name="msb_id[]" id="msb_{{ $mate->id }}" value="{{ $mate->id }}">
                                    <select name="brand_id[]" id="brand_id_{{ $mate->id }}" class="span12" style="min-width: 80px;" onchange="selectSupplier({{ $mate->id }})">
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
                                    <select name="manufactor[]" id="manufactor_{{ $mate->id }}" class="span12" style="min-width: 100px" onchange="selectManufactor({{ $mate->id }})">
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
                                <td><input type="text"  name="supplier[]"          id="supplier_{{ $mate->id }}"         value="{{ $mate->supplier }}" lay-skin="primary"></td>
                                <td><input type="text"  name="budget_unit_price[]" id="budget_unit_price_{{ $mate->id }}" value="{{ $mate->budget_unit_price }}" lay-skin="primary" placeholder=""style="width:50px;" onchange="changebudgetprice({{ $mate->id }})"></td>
                                <td><input type="text"  name="budget_unit[]"  class="budget_unit"     id="budget_unit_{{ $mate->id }}"         value="{{ $mate->budget_unit }}" lay-skin="primary"  placeholder=""style="width:50px;"></td>
                                <td><input type="text"  name="purchase_unit_price[]"  id="purchase_unit_price_{{ $mate->id }}"    value="{{ $mate->purchase_unit_price }}" lay-skin="primary" style="width:50px;"></td>
                                <td><input type="text"  name="purchase_unit[]"   class="purchase_unit"    id="purchase_unit_{{ $mate->id }}" value="{{ $mate->purchase_unit }}" lay-skin="primary" style="width:50px;"></td>
                                <td><input type="text"  name="offer_unit_price[]"      id="offer_unit_price_{{ $mate->id }}" value="{{ $mate->offer_unit_price }}" lay-skin="primary" style="width:50px;"></td>
                                <td><input type="text"  name="offer_unit[]"    class="offer_unit"   id="offer_unit_{{ $mate->id }}" value="{{ $mate->offer_unit }}" lay-skin="primary" style="width:50px;"></td>
                                <td></td>
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

    <style>
        input{
            width: 90%;
        }
    </style>
    <!-- 你的HTML代码 -->

    <script type="text/javascript">
        var supplier_brand = {!! $supplier_brand_json !!}; //品牌对应供应商列表
        var supplier = {!! $supplier_list_json !!}; //供应商名称列表
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
            $('#manufactor_'+id+' .manufa').hide();
            $('#manufactor_'+id).val('');
            if(supplier_brand_list){
                for(var i=0;i<supplier_brand_list.length;i++){
                    j= supplier_brand_list[i];
                    $('#manufactor_'+id+' .manufa_'+j).show();
                }
            }else{
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.msg('该品牌没有供应商信息');
                });
            }

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
                   '<input type="hidden"  name="msb_id[]" id="msb_'+intid+'" value="0">'+
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
            $('select').css('background','#fff');
            var sum=0;
            $("input").each(function(){
                if($(this).val()){
                }else{
                    $(this).css('background','orange');
                    sum=1;
                }
            });
            $("select").each(function(){
                if($(this).val() && ($(this).val() != '')  && ($(this).val() !=0)){
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

            var r=confirm("所有建筑系统中的材料编码({{ $material->material_code }})一致的材料信息将同步保存")
            if (r==true) {
            } else {
                return false;
            }
            return true;
        }
        //将报价和预算单位默认到品牌信息里面
        function selectunit() {
            budget_unit =$('#budget_unit').val();
            purchase_unit =$('#purchase_unit').val();
            $(".budget_unit").val(budget_unit);
            $(".offer_unit").val(budget_unit);
            $(".purchase_unit").val(purchase_unit);
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


        //添加上传文件内容
        function add_material_file() {
            id=$('#addMaterialFileID').attr('attr') *1 +1;
            $('#addMaterialFileID').attr('attr',id);
            str =`<tr>
                <td class="pro-title">1</td>
                <td>
                    <input type="hidden" id="material_file` + id + `"   class="notempty" name="material_file[]" placeholder="logo" >
                    <input class="span8 notempty" type="file" id="uploadfile` + id + `" name="uploadfile[]" placeholder="logo" onchange="submitFile(` + id + `)">
                </td>
                <td>
                    <input type="text"  name="material_file_name[]" class="span12 notempty"  value="" lay-skin="primary" >
                </td>
                <td id="material_img_` + id + `">

                </td>

                <td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>
            </tr>`;
            $("#materialFileList").append(str);
            var len = $('#materialFileList tr').length;
            for(var i = 1;i<len;i++){
                $('#materialFileList tr:eq('+i+') td:first').text(i);
            }
            //点击文本框设置背景色
            $(".notempty").focus(function(){
                $(this).css("background-color","#fff");
            });
        }

        //提交文件信息
        function submitFile(id) {
            var formdata=new FormData();
            formdata.append('file',$('#uploadfile'+id)[0].files[0]);
            $.ajax({
                url:'/material/uploadMaterialFile/'+{{$id}},
                type:"POST",
                data:formdata,
                processData:false,
                contentType:false,
                success:function(data){
                    console.log(data);
                    if(data.status == 1){
                        layui.use('layer', function(){
                            var layer = layui.layer;
                            layer.msg(data.data.msg);
                            $('#material_file'+id).val(data.data.url)
                            html ='<img src="/storage/'+data.data.url+'" style="max-height: 100px">';
                            $('#material_img_'+id).append(html)
                        });
                        $('#uploadfiletitle'+id).remove();
                    }else{
                        layui.use('layer', function(){
                            var layer = layui.layer;
                            layer.msg(data.info);
                        });
                        $('#uploadfile'+id).val('');
                    }
                }
            })
        }



    </script>

@endsection
