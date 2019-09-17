@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
<div class="left-sidebar">
    <div class="row-fluid">
        <div class="span12">
            <form method="post" action="/architectural/post_edit_material/{{ $id }}">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        建筑子系统
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
                                <th>建筑子系统名称</th>
                                <th>建筑系统归属</th>
                                <th>子系统编码</th>
                                <th>系统状态</th>
                                <th>工况代码</th>
                                <th>创建人</th>
                                <th>创建日期</th>

                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    {{ $sub_architect->sub_system_name }}
                                <td>
                                   {{ $guishu_name}}
                                <td>
                                    {{ $sub_architect->sub_system_code }}
                                </td>
                                <td>
                                    @if($sub_architect->status ==1)
                                    有效
                                    @else
                                        <span class="btn btn-warning">无效</span>
                                    @endif
                                </td>
                                <td>{{ $sub_architect->work_code }}</td>
                                <td>{{ $sub_architect->username }}</td>
                                <td>{{ $sub_architect->created_at }}</td>
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
                        子系统关联材料
                    </div>
                    <span class="title"style="float: right;">
                        <a class="btn btn-success" onclick="add_xitong()" ><i class="layui-icon">创建新关联材料 +</i></a>
                    </span>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th>关联材料名称</th>
                                <th>种类</th>
                                <th>位置</th>
                                <th>用途</th>
                                <th>代码</th>
                                <th>关联材料编码</th>
                                <th>规格特性要求</th>
                                <th>损耗</th>
                                <th>状态</th>
                                <th style="width: 60px;">操作</th>
                            </thead>
                            <tbody id="zixitong">
                            @foreach($material as $k=>$v)
                            <tr id="code_{{$k}}">
                                <td>
                                    <input type="hidden" name="material_id[]" value="{{ $v->id }}" lay-skin="primary">
                                    <input type="text" name="material_name[]"  class="notempty" value="{{ $v->material_name }}" lay-skin="primary">
                                </td>

                                <td>
                                    <input type="text" name="material_type[]" class="material_type" onchange="setcode({{$k}})" value="{{ $v->material_type }}" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="position[]" class="position"  onchange="setcode({{$k}})"   value="{{ $v->position }}" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="purpose[]" class="purpose"   onchange="setcode({{$k}})"  value="{{ $v->purpose }}" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="material_number[]" class="material_number"  onchange="setcode({{$k}})"   value="{{ $v->material_number }}" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="material_code[]" class="material_code" value="{{ $v->material_code }}" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="characteristic[]" class="notempty"  value="{{ $v->characteristic }}" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="waste_rate[]" class="notempty"  value="{{ $v->waste_rate }}"  onclick="key(this)" lay-skin="primary"  class="waste_rate">
                                </td>

                                <td>
                                    <select name="status[]" id="stateAndCity" class="span12" style="min-width: 80px">
                                        @if($v->status ==1)
                                            <option value="1" selected="selected">有效</option>
                                            <option value="0">无效</option>
                                        @else
                                            <option value="1" >有效</option>
                                            <option value="0" selected="selected">无效</option>
                                        @endif
                                    </select>
                                </td>
                                <td></td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <div class="clearfix">
                        </div>
                        <div style="color: orangered">状态无效后，将导致预算报价列表，材料信息列表，以及创建新项目信息同步不显示？请谨慎操作</div>
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
        //删除事件
        function deleteTrRow(tr){
            $(tr).parent().parent().remove();
        }
        //添加事件
        function add_xitong() {
            intid =parseInt(Math.random() * (100000000 )+10000);
           str =' <tr id="code_'+intid+'"> <td> <input type="hidden" name="material_id[]" value="0" lay-skin="primary">'+
                '<input type="text" name="material_name[]" class="notempty" lay-skin="primary"> </td>'+
                '<td> <input type="text" name="material_type[]" class="material_type"  onchange="setcode('+intid+')"   lay-skin="primary"> </td>'+
                '<td> <input type="text" name="position[]" class="position" onchange="setcode('+intid+')"    lay-skin="primary"> </td>'+
                '<td> <input type="text" name="purpose[]" class="purpose" onchange="setcode('+intid+')"   lay-skin="primary"> </td>'+
                '<td> <input type="text" name="material_number[]" class="material_number" onchange="setcode('+intid+')"    lay-skin="primary"> </td>'+
                '<td> <input type="text" name="material_code[]" class="material_code" lay-skin="primary"> </td>'+
                '<td> <input type="text" name="characteristic[]" class="notempty"   lay-skin="primary"> </td>'+
                '<td> <input type="text" name="waste_rate[]"  class="waste_rate notempty"  onclick="key(this)" lay-skin="primary"> </td>'+
                '<td> <select name="status[]" id="stateAndCity" class="span12" style="min-width: 80px">'+
                '<option value="1" selected="selected">有效</option> <option value="0">无效</option> </select> </td>'+
                '<td><a  class="btn btn-danger" onclick="deleteTrRow(this)">删除</a>'+
                '</td> </tr>';

            $("#zixitong").append(str);
            setcode(intid)
        }
        //提交验证信息
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
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.msg('有信息没有填写完全，请填写完成后，再提交。');
                });
                return false;
            }
            return true;
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

        function setcode(id) {
            material_type   =$('#code_'+id+' .material_type').val();
            position        =$('#code_'+id+' .position').val();
            purpose         =$('#code_'+id+' .purpose').val();
            material_number =$('#code_'+id+' .material_number').val();
            console.log(material_type);
            var str='';
            if(material_type !='0' && material_type !='' ){
                str =str +material_type+'-';
            }
            if(position !='0' && position !=''){
                str =str +position+'-';
            }
            if(purpose !='0' && purpose !=''){
                str =str +purpose+'-';
            }
            if(material_number !='0' && material_number !=''){
                str =str +material_number+'-';
            }
            str = str.substring(0, str.lastIndexOf('-'));

            $('#code_'+id+' .material_code').val(str);
        }
    </script>

@endsection
