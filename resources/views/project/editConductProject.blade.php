@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
    <script src="/js/distpicker.data.js"></script>
    <script src="/js/distpicker.js"></script>
    <script src="/js/main.js"></script>
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
        select{
            width: auto;
        }
        .radio, .checkbox {
            min-height: 20px;
            float: left;
            padding:0 20px;
        }
    </style>
<div class="left-sidebar">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-header" style="text-align: center">
                    <div  style="text-align: center;clear: both;font-size: 16px;" >
                        <b>{{$project->project_name}}</b>
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">

                        <form method="post" action="/project/updateProjectStatus/{{$engin_id}}">
                            <table class="layui-table layui-form">

                                <tbody>
                                <tr>
                                    <td  class="pro-title">项目(子工程)状态</td>
                                    <td>
                                        <select name="project_status" id="project_status" class="input-medium span8" style="min-width: 80px">
                                            <option value="1" >实施项目</option>
                                            <option value="2" >竣工项目</option>
                                            <option value="4" >终止项目</option>
                                        </select>
                                    </td>
                                    <td>
                                        <div class="layui-form-item" style="clear: left">
                                            <label for="L_repass" ></label>
                                            <button class="btn btn-success" lay-filter="add" type="submit" onclick='return submitStatus()'  lay-submit="">确认/保存</button>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </form>

                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6">项目概况</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td  class="pro-title">项目名称</td>
                                <td  colspan="2">{{$project->project_name}}</td>
                                <td  class="pro-title">项目地点</td>
                                <td colspan="2">{{$project->province}}{{$project->city}}{{$project->county}}{{$project->address_detail}}{{$project->foreign_address}}
                                </td>
                            </tr>

                            <tr>
                                <td class="pro-title">项目种类（用途）</td>
                                <td colspan="2">{{$project->type}}</td>
                                <td class="pro-title">场地自然条件</td>
                                <td colspan="2">{{$project->environment}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">场地交通条件</td>
                                <td colspan="2">{{$project->traffic}}</td>
                                <td class="pro-title">材料存储条件</td>
                                <td colspan="2">{{$project->material_storage}}</td>
                            </tr>
                            </tbody>
                        </table>


                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="8">项目子工程信息</th>
                            </tr>
                            </thead>
                            <tbody id="zigongcheng">
                            <tr >
                                <td class="pro-title">子工程名称</td>
                                <td>{{$engineering->engineering_name}}</td>
                                <td class="pro-title">建筑面积（平方米）</td>
                                <td>{{$engineering->build_area}}</td>
                                <td class="pro-title">建筑层数</td>
                                <td>{{$engineering->build_floor}}</td>
                                <td class="pro-title">室内净高（米）</td>
                                <td>{{$engineering->build_height}}</td>
                            </tr>
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
                        <div class="clearfix">
                        </div>

                    </div>
                </div>
            </div>
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

    <script>
        //一般直接写在一个js文件中
        //设置省市县默认空
        $("#distpicker1").distpicker({
            autoSelect: false
        });
        //删除子工程
        function deleteTrRow(tr){
            $(tr).parent().parent().remove();
        }
        //添加事件
        function add_zigongcheng() {
            intid =parseInt(Math.random() * (1000000 )+100);
            str ='<tr > <td class="pro-title">子工程名称</td>'+
                '<td> <input type="text"  name="engineering_name[]" class="span8 notempty "  value="" lay-skin="primary" > </td>'+
                '<td class="pro-title">建筑面积（平方米）</td>'+
                '<td> <input type="text"  name="build_area[]" class="span8 notempty"  value="" lay-skin="primary" > </td>'+
                '<td class="pro-title">建筑层数</td> '+
                '<td> <input type="text"  name="build_floor[]" class="span8 notempty"  value="" lay-skin="primary" > </td>'+
                '<td class="pro-title">室内净高（米）</td>'+
                '<td> <input type="text"  name="build_height[]" class="span8 notempty"  value="" lay-skin="primary" > </td>'+
                '<td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>'+
            '</tr>';
            $("#zigongcheng").append(str);
        }
        //提交数据时验证数据信息
        function form_submit(){
            $('input').css('background','#fff');
            $('.notempty').css('background','#fff');
            var sum=0;
            $("input.notempty").each(function(){
                if($(this).val()){
                }else if($(this).val() ==0){
                    $(this).css('background','orange');
                    sum=1;
                }else{
                    $(this).css('background','orange');
                    sum=1;
                }
            });

            $("select.notempty").each(function(){
                console.log($(this).val())
                val =$(this).val();
                if(val == '' || val =='0'){
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
        //点击文本框设置背景色
        $(".notempty").focus(function(){
            $(this).css("background-color","#fff");
        });
        //日期選擇
        layui.use('laydate', function() {
            var laydate = layui.laydate;

            //常规用法
            laydate.render({
                elem: '#test1'
            });
        });
    </script>

@endsection
