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
                            材料图片
                        </div>
                    </div>
                    <div class="widget-body">
                        <table class="layui-table layui-form">
                            <tbody id="materialFileList">
                            <tr>
                                <td class="pro-title">序号</td>
                                <td class="pro-title">文件</td>
                                <td class="pro-title">备注</td>
                                <td class="pro-title">图片</td>
                            </tr>

                            @foreach($material_file as $k=>$file)
                                <tr>
                                    <td class="pro-title">{{++$k}}</td>
                                    <td>
                                       <div>
                                            {{$file->file_name}}(日期：{{$file->created_at}})
                                        </div>

                                    </td>
                                    <td>
                                      {{$file->remarks}}
                                    </td>
                                    <td onclick="chakanImage({{$k}})" id="material_img_{{$k}}" style="cursor:pointer;">
                                        <img src="/storage/{{$file->file_url}}" style="height: 50px;width: auto">
                                    </td>
                                </tr>

                            @endforeach
                            </tbody>
                        </table>
                        <div style="color: red">注：图片必须是png、jpg、gif 格式 点击图片放大显示</div>
                        <div class="clearfix"></div>


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

    <style>
        input{
            width: 90%;
        }
    </style>
    <!-- 你的HTML代码 -->

    <script type="text/javascript">
        function chakanImage(id){
            url =$('#material_img_'+id+' img').attr('src');
            html ='<img src="'+url+'" style="width: auto;height: auto">'
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.open({
                    type: 1,
                    title: false,
                    closeBtn: 0,
                    area: ['600px','600px'],
                    skin: 'layui-layer-nobg', //没有背景色
                    shadeClose: true,
                    content: html
                });
            });

        }

    </script>

@endsection
