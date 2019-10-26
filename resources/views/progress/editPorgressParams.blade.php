@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
<div class="left-sidebar">
    <div class="row-fluid">
        <div class="span12">
            <form method="post" action="/progress/postEditProgressParams/{{ $architect->id }}">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        建筑系统
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
                                <th>子工程名称</th>
                                <th>子工程编码</th>
                                <th>工况代码</th>
                                <th>系统状态</th>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    {{ $architect->sub_system_name }}
                                </td>
                                <td>
                                    {{ $architect->sub_system_code }}
                                </td>
                                <td>
                                    {{ $architect->work_code }}
                                </td>
                                <td>
                                    有效
                                </td>
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
                        配置施工流程
                    </div>
                    <span class="title"style="float: right;    margin-left: 15px;">
                        <a class="btn btn-success" onclick="add_xitong()" ><i class="layui-icon">创建新流程 +</i></a>
                    </span>
                    <span class="title"style="float: right;margin-left: 15px;">
                        <a class="btn btn-success" onclick="selectModel()" ><i class="layui-icon">选择模板</i></a>
                    </span>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th style="width: 40%">施工流程名称</th>
                                <th style="width: 20%">是否同步施工</th>
                                <th style="width: 20%">排序</th>
                                <th style="width: 10%">状态</th>
                                <th style="width: 10%">操作</th>
                            </thead>
                            <tbody id="zixitong">
                            @foreach($paramsList as $v)
                            <tr>
                                <td>
                                    <input type="hidden" name="param_id[]" class="span8" value="{{ $v->id }}" lay-skin="primary">
                                    <input type="text" name="name[]" class="span8" value="{{ $v->name }}" lay-skin="primary">
                                </td>
                                <td>
                                    <select name="is_synchro[]" id="is_synchro" class="span8 is_synchro" style="min-width: 80px" onchange="setstatus(this)">
                                        @if($v->is_synchro ==1)
                                            <option value="1" selected="selected">不同步</option>
                                            <option value="2">同步</option>
                                        @else
                                            <option value="1" >不同步</option>
                                            <option value="2" selected="selected">同步</option>
                                        @endif
                                    </select>
                                </td>
                                <td>
                                    <input type="text" name="sort[]" class="span8"  value="{{ $v->sort }}" lay-skin="primary">
                                </td>
                                <td>
                                    <select name="status[]" id="status" class="span8" style="min-width: 80px" onchange="setstatus(this)">
                                        @if($v->status ==1)
                                            <option value="1" selected="selected">有效</option>
                                            <option value="0">无效</option>
                                        @else
                                            <option value="1" >有效</option>
                                            <option value="0" selected="selected">无效</option>
                                        @endif
                                    </select>
                                </td>
                               <td>

                                </td>

                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <div style="color: orangered">状态无效后将导致此项施工流程在施工组织页面不显示</div>
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

    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        施工流程模板信息
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
                                            <td>子系统名称</td>
                                            <td>施工流程数量</td>
                                        </tr>
                                        @if(!empty($subArchList))
                                            @foreach($subArchList as $item)
                                                <tr>
                                                    <td>
                                                        @if($item->arch_count !=0)
                                                            <label style="width: 100%;height: 100%">
                                                                <input type="radio" name="subArchitectID" class="subArchitectID" value="{{$item->sub_arch_id}}" style="display: block">
                                                            </label>
                                                        @else
                                                            <input type="radio" name="subArchitectID" class="subArchitectID" value="{{$item->sub_arch_id}}" disabled="" style="display: block">
                                                        @endif
                                                    </td>
                                                    <td>{{$item->sub_system_name}}</td>
                                                    <td>{{$item->arch_count}}</td>
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
            width: 60%;
        }
    </style>

    <script type="text/javascript">
        //删除事件
        function deleteTrRow(tr){
            $(tr).parent().parent().remove();
        }
        //添加事件
        function add_xitong() {
           str ='<tr><td><input type="hidden" name="param_id[]" value="0" lay-skin="primary">' +
               '<input type="text" name="name[]" class="span8" lay-skin="primary"></td>'+
               '<td><select name="is_synchro[]" id="is_synchro" class="span8 is_synchro" style="min-width: 80px" onchange="setstatus(this)"> <option value="1" selected="selected">不同步</option> <option value="2">同步</option> </select>\n</td>'+
            '<td><input type="text" name="sort[]" class="span8" lay-skin="primary"></td>'+
            '<td><select name="status[]" id="stateAndCity" class="span8" style="min-width: 80px" onchange="setstatus(this)">'+
            '<option value="1" selected="selected">有效</option><option value="0">无效</option></select></td>'+
            '<td><a  class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td></tr>';

            $("#zixitong").append(str);
        }
        //提交验证信息
        function form_submit(){
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


        function setstatus(sta) {
           statu= $(sta).val();
            console.log(statu);
            if(statu =='0'){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.open({
                        title: '提示信息'
                        ,content: '状态无效后将导致此项施工流程在施工组织页面不显示'
                    });
                });
            }
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
                buchongProgress(val);
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
        function buchongProgress(id) {
            $('#myModal').modal('hide');
            //获取材料信息和品牌信息
            $.ajax({
                url:'/progress/getProgressArchList/'+id,
                type:'get',
                // contentType: 'application/json',
                success:function(data){
                    console.log(data);
                    if(data.status == 1){
                        //填充材料
                        //fillMaterialBrand(id,data.data.material,data.data.brand);
                        $.each( data.data, function(index,content){
                            addSubArch(content);
                            console.log(content);
                        });
                    }else{
                        showMsg('该工程没有安装步骤');
                        return false;
                    }
                },
            });
        }
        function addSubArch(content) {
            if(content.is_synchro ==1){
                option ='<option value="1" selected="selected">不同步</option> ' +
                    '<option value="2">同步</option>';
            }else{
                option ='<option value="1" >不同步</option> ' +
                    '<option value="2" selected="selected">同步</option> ';
            }
            str ='<tr><td><input type="hidden" name="param_id[]" value="0" lay-skin="primary">' +
                '<input type="text" name="name[]" value="'+content.name+'"  class="span8" lay-skin="primary"></td>'+
                '<td><select name="is_synchro[]" id="is_synchro" class="span8 is_synchro" style="min-width: 80px" onchange="setstatus(this)"> ' +
                 option +' </select></td>'+
                '<td><input type="text" name="sort[]" value="'+content.sort+'" class="span8" lay-skin="primary"></td>'+
                '<td><select name="status[]" id="stateAndCity" class="span8" style="min-width: 80px" onchange="setstatus(this)">'+
                '<option value="1" selected="selected">有效</option><option value="0">无效</option></select></td>'+
                '<td><a  class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td></tr>';

            $("#zixitong").append(str);
        }

    </script>

@endsection
