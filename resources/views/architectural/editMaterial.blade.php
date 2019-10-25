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

                    <span class="title"style="float: right;margin-left: 15px;">
                        <a class="btn btn-success" onclick="add_xitong()" ><i class="layui-icon">创建新关联材料 +</i></a>
                    </span>
                    <span class="title"style="float: right;margin-left: 15px;">
                        <a class="btn btn-success" onclick="selectModel()" ><i class="layui-icon">选择关联模板</i></a>
                    </span>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th style="width: 14%">关联材料名称</th>
                                <th style="width: 6%">种类</th>
                                <th style="width: 6%">位置</th>
                                <th style="width: 6%">用途</th>
                                <th style="width: 6%">代码</th>
                                <th style="width: 19%">关联材料编码</th>
                                <th style="width: 5%">排序</th>
                                <th style="width: 19%;">规格特性要求</th>
                                <th style="width: 6%">损耗</th>
                                <th style="width: 6%">状态</th>
                                <th style="width: 6%;">操作</th>
                            </thead>
                            <tbody id="zixitong">
                            @foreach($material as $k=>$v)
                            <tr id="code_{{$k}}" class="sort sort_{{$v->material_sort }}">
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
                                    <input type="text" name="material_sort[]" class="material_sort span12" value="{{ $v->material_sort }}"  onclick="key(this)" onchange ="setsort(this)" lay-skin="primary">
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
            <div class="layui-form-item" style="float: right;clear: left">
                <label for="L_repass" class="layui-form-label"></label>
                <span class="btn btn-success" lay-filter="add" lay-submit="" onclick="autopaixu()">自动排序</span>
            </div>
            </form>
        </div>
    </div>
</div>


    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        建筑子工程模板信息
                    </h4>
                </div>
                <div class="modal-body">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="widget-body">
                                <div class="control-group">
                                    <table class="layui-table layui-form">
                                        <tr>
                                            <td>选择</td>
                                            <td>建筑子工程名称</td>
                                            <td>材料数量</td>
                                        </tr>
                                        @if(!empty($subarchitectList))
                                            @foreach($subarchitectList as $item)
                                            <tr>
                                                <td>
                                                    @if($item->material_num !=0)
                                                    <label style="width: 100%;height: 100%">
                                                        <input type="radio" name="subArchitectID" class="subArchitectID" value="{{$item->id}}" style="display: block">
                                                    </label>
                                                    @else
                                                        <input type="radio" name="subArchitectID" class="subArchitectID" value="{{$item->id}}" disabled="" style="display: block">
                                                    @endif
                                                </td>
                                                <td>{{$item->sub_system_name}}</td>
                                                <td>{{$item->material_num}}</td>
                                            </tr>
                                            @endforeach
                                        @endif
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer layui-form-item" >
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button class="btn btn-success" lay-filter="add" lay-submit="" onclick="querenModel()">确认</button>
                </div>

            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
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
           str =' <tr id="code_'+intid+'" class="sort sort_"> <td> <input type="hidden" name="material_id[]" value="0" lay-skin="primary">'+
                '<input type="text" name="material_name[]" class="notempty" lay-skin="primary"> </td>'+
                '<td> <input type="text" name="material_type[]" class="material_type"  onchange="setcode('+intid+')"   lay-skin="primary"> </td>'+
                '<td> <input type="text" name="position[]" class="position" onchange="setcode('+intid+')"    lay-skin="primary"> </td>'+
                '<td> <input type="text" name="purpose[]" class="purpose" onchange="setcode('+intid+')"   lay-skin="primary"> </td>'+
                '<td> <input type="text" name="material_number[]" class="material_number" onchange="setcode('+intid+')"    lay-skin="primary"> </td>'+
                '<td> <input type="text" name="material_code[]" class="material_code" lay-skin="primary"> </td>'+
                '<td> <input type="text" name="material_sort[]" class="material_sort span12" onclick="key(this)"  onchange ="setsort(this)"  lay-skin="primary"> </td> '+

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
                showMsg('有信息没有填写完全，请填写完成后，再提交。')
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
        //显示模拟框
        function selectModel(){
            $('#myModal').modal();
        }
        //使用模板数据
        function querenModel() {
            id =$('.subArchitectID').val();
            var val=$('input:radio[name="subArchitectID"]:checked').val();
            if(val==null){
                showMsg('什么都没有选？');
                return false;
            } else{
                buchongMaterial(val);
            }
            console.log(val);
        }
        function showMsg(str) {
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(str);
            });
        }
        //补充选择模板对应的材料信息
        function buchongMaterial(id) {
            $('#myModal').modal('hide');
            //获取材料信息和品牌信息
            $.ajax({
                url:'/architectural/getMaterialList/'+id,
                type:'get',
                // contentType: 'application/json',
                success:function(data){
                    console.log(data);
                    if(data.status == 1){
                        //填充材料
                        //fillMaterialBrand(id,data.data.material,data.data.brand);
                        $.each( data.data, function(index,content){
                            addMaterial(content);
                            //console.log(content);
                        });
                    }else{
                        showMsg('该工程没有材料信息');
                        return false;
                    }
                },
            });
        }
        //通过模型添加材料
        function addMaterial(content) {
            intid =content.id * 1+1000;
            str =' <tr id="code_'+intid+'" class="sort sort_'+content.material_sort+'"> <td> <input type="hidden" name="material_id[]" value="0" lay-skin="primary">'+
                '<input type="text" name="material_name[]" value="'+content.material_name+'" class="notempty" lay-skin="primary"> </td>'+
                '<td> <input type="text" name="material_type[]" value="'+content.material_type+'" class="material_type"  onchange="setcode('+intid+')"   lay-skin="primary"> </td>'+
                '<td> <input type="text" name="position[]" value="'+content.position+'" class="position" onchange="setcode('+intid+')"    lay-skin="primary"> </td>'+
                '<td> <input type="text" name="purpose[]" value="'+content.purpose+'" class="purpose" onchange="setcode('+intid+')"   lay-skin="primary"> </td>'+
                '<td> <input type="text" name="material_number[]" value="'+content.material_number+'" class="material_number" onchange="setcode('+intid+')"    lay-skin="primary"> </td>'+
                '<td> <input type="text" name="material_code[]" value="'+content.material_code+'" class="material_code" lay-skin="primary"> </td>'+
                '<td> <input type="text" name="material_sort[]" value="'+content.material_sort+'" class="material_sort span12" onclick="key(this)"  onchange ="setsort(this)"  lay-skin="primary"> </td> '+
                '<td> <input type="text" name="characteristic[]" value="'+content.characteristic+'" class="notempty"   lay-skin="primary"> </td>'+
                '<td> <input type="text" name="waste_rate[]" value="'+content.waste_rate+'"  class="waste_rate notempty"  onclick="key(this)" lay-skin="primary"> </td>'+

                '<td> <select name="status[]" id="stateAndCity" class="span12" style="min-width: 80px">'+
                '<option value="1" selected="selected">有效</option> <option value="0">无效</option> </select> </td>'+

                '<td><a  class="btn btn-danger" onclick="deleteTrRow(this)">删除</a>'+
                '</td> </tr>';

            $("#zixitong").append(str);
            setcode(intid)
        }
        //自动排序
        function autopaixu() {
            var numArr = new Array();
            $('.material_sort').each(function(){
                //将选中元素的某属性值添加到数组中
                var p_id = $(this).val()*1;
                //如果数组中不存在
                if($.inArray(p_id,numArr) == -1){
                    numArr.push(p_id);
                }
            });
            console.log(numArr.sort(function(a,b){return a-b;}));
            ids =numArr.sort(function(a,b){return a-b;});
            $.each(ids, function(p1, p2){
                console.log(p1+'--'+p2);
                movetr(p2);
            });
        }

        // 重新排序
        function movetr(id){
            //$("#1").insertAfter($("#3"));
            /*
            $('.sort_'+id).each(function () {
                codeid =$(this).attr('id');
                html =$(this).html();
                html ='<tr id="'+codeid+'" class="sort sort_'+id+'">'+html+'</tr>';
               // console.log(html);
                $("#zixitong").append(html);
                $(this).remove();
            })
            */
            html =$('.sort_'+id).clone();
            $('.sort_'+id).remove();
            $("#zixitong").append(html);
        }
        function setsort(th){
         sortid =$(th).val();
         $(th).val(sortid);
         $(th).parent().parent().removeClass().addClass('sort sort_'+sortid);
        }
    </script>

@endsection
