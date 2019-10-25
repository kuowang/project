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
                                <th>系统名称</th>
                                <th>工程名称</th>
                                <th>系统编码</th>
                                <th>系统状态</th>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    {{ $architect->system_name }}
                                </td>
                                <td>
                                    {{ $architect->engineering_name }}
                                </td>
                                <td>
                                    {{ $architect->system_code }}
                                </td>
                                <td>
                                    有效
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix">
                        </div>
                        <div style="color: orangered">状态无效后，将导致实施安装同步不显示？请谨慎操作</div>
                    </div>
                </div>
            </div>
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        施工安装周期
                    </div>
                    <span class="title"style="float: right;">
                        <a class="btn btn-success" onclick="add_xitong()" ><i class="layui-icon">添加 +</i></a>
                    </span>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th style="width: 40%">名称</th>
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
                        <div class="clearfix">
                        </div>
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
                        ,content: '状态无效后，将导致施工安装同步不显示？请谨慎操作'
                    });
                });
            }
        }
    </script>

@endsection
