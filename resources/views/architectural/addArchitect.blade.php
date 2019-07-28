@extends('layouts.web')

@section('content')
<!-- 你的HTML代码 -->
<link rel="stylesheet" href="/layui/css/layui.css">
<script src="/layui/layui.js"></script>
<div class="left-sidebar">
    <div class="row-fluid">
        <div class="span12">
            <form method="post" action="/architectural/post_add_architect">
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
                                    <input type="text" name="system_name" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="engineering_name" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="system_code" lay-skin="primary">
                                </td>
                                <td>
                                    <select name="status" id="stateAndCity" class="span12" style="min-width: 80px">
                                        <option value="1" selected="selected">
                                            有效
                                        </option>
                                        <option value="0">
                                            无效
                                        </option>
                                    </select>
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
                        关联子系统
                    </div>
                    <span class="title"style="float: right;">
                        <a class="btn btn-success" onclick="add_xitong()" ><i class="layui-icon">关联新子系统 +</i></a>
                    </span>

                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th>子系统名称</th>
                                <th>子系统编码</th>
                                <th>工况代码</th>
                                <th>系统状态</th>
                                <th>操作</th>
                            </thead>
                            <tbody id="zixitong">
                            <tr>
                                <td>
                                    <input type="text" name="sub_system_name[]" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="sub_system_code[]" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="work_code[]" lay-skin="primary">
                                </td>
                                <td>
                                    <select name="sub_status[]" id="stateAndCity" class="span12" style="min-width: 80px">
                                        <option value="1" selected="selected">
                                            有效
                                        </option>
                                        <option value="0">
                                            无效
                                        </option>
                                    </select>
                                </td>
                                <td>
                                    <a  class="btn btn-danger delete_zixitong" onclick="deleteTrRow(this)">
                                        删除
                                    </a>
                                </td>
                            </tr>
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
           str ='<tr><td><input type="text" name="sub_system_name[]" lay-skin="primary"></td>'+
               '<td><input type="text" name="sub_system_code[]" lay-skin="primary"></td>'+
            '<td><input type="text" name="work_code[]" lay-skin="primary"></td>'+
            '<td><select name="sub_status[]" id="stateAndCity" class="span12" style="min-width: 80px">'+
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


    </script>

@endsection
