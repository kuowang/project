@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

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
                                <th colspan="6"><span class="btn btn-info">项目概况</span></th>
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
                            <tr><th colspan="10"><span class="btn btn-info">项目子工程信息</span></th>
                            </tr>
                            </thead>
                            <tbody id="zigongcheng">
                            <tr >
                                <td class="pro-title">子工程名称</td>
                                <td>{{$engineering->engineering_name}}</td>
                                <td class="pro-title">建筑面积（m²）</td>
                                <td>{{$engineering->build_area}}</td>
                                <td class="pro-title">建筑层数</td>
                                <td>{{$engineering->build_floor}}</td>
                                <td class="pro-title">建筑高度（m）</td>
                                <td>{{$engineering->build_height}}</td>
                                <td class="pro-title">建筑净高（m）</td>
                                <td>{{$engineering->indoor_height}}</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <form method="post" action="/project/postConductProject/{{$engin_id}}">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6"><span class="btn btn-info">合同签署信息</span></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td  class="pro-title">合同编号</td>
                                <td  colspan="2">
                                    <input type="text"  name="contract_code" class="span8 notempty"  value="{{ $engineering->contract_code }}" lay-skin="primary" >
                                </td>
                                <td  class="pro-title">合同签署时间</td>
                                <td colspan="2">
                                    <input type="text"  name="contract_at" id="test1" placeholder="yyyy-MM-dd" class="span8 notempty dynamic_date"  value="{{ $engineering->contract_at }}" lay-skin="primary" >
                                </td>
                            </tr>

                            <tr>
                                <td class="pro-title">合同类型</td>
                                <td colspan="2">
                                    <input type="text"  name="contract_type" class="span8 notempty"  value="{{ $engineering->contract_type }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">合同份数</td>
                                <td colspan="2">
                                    <input type="text"  name="contract_num" class="span8 notempty"  value="{{ $engineering->contract_num }}" lay-skin="primary" >
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>

                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="2"><span class="btn btn-info">项目动态信息</span></th>
                                <th ><span class="title" style="float: right;">
                                <a class="btn btn-success" onclick="add_dongtai()"><i class="layui-icon">添加</i></a>
                            </span>
                                </th>
                            </tr>
                            </thead>
                            <tbody style="text-align: center" id="project_dongtai">
                            <tr>
                                <td style="width: 20%;">时间</td>
                                <td style="width: 70%;">动态</td>
                                <td style="width: 10%;">操作</td>
                            </tr>
                            @foreach($dynamic as $item)
                            <tr>
                                <td  class="pro-title">
                                    <input type="hidden"  name="dynamic_id[]" class="span8"  value="{{$item->id}}" lay-skin="primary" >
                                    <input type="text"  name="dynamic_date[]" placeholder="yyyy-MM-dd" class="span8 notempty dynamic_date"  value="{{$item->dynamic_date}}" lay-skin="primary" >
                                </td>
                                <td >
                                    <input type="text"  name="dynamic_content[]" class="span12 notempty"  value="{{$item->dynamic_content}}" lay-skin="primary" >
                                </td>
                                <td></td>
                            </tr>
                            @endforeach
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
                        </form>
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

        //日期選擇
        layui.use('laydate', function() {
            var laydate = layui.laydate;
            lay('.dynamic_date').each(function(){
                laydate.render({
                    elem: this
                    ,trigger: 'click'
                });
            });
        });


        //添加事件
        function add_dongtai() {
            str ='<tr>' +
                '    <td  class="pro-title">' +
                '        <input type="hidden"  name="dynamic_id[]" class="span8 "  value="0" lay-skin="primary" >' +
                '        <input type="text"  name="dynamic_date[]"  placeholder="yyyy-MM-dd" class="span8 notempty dynamic_date"  value="" lay-skin="primary" >' +
                '    </td>' +
                '    <td >' +
                '        <input type="text"  name="dynamic_content[]" class="span12 notempty"  value="" lay-skin="primary" >' +
                '    </td>' +
                '    <td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>' +
                '</tr>';
            $("#project_dongtai").append(str);
            //添加日期点击事件
            layui.use('laydate', function() {
                var laydate = layui.laydate;
                lay('.dynamic_date').each(function(){
                    laydate.render({
                        elem: this
                        ,trigger: 'click'
                    });
                });
            });
            //点击文本框设置背景色
            $(".notempty").focus(function(){
                $(this).css("background-color","#fff");
            });
        }
        //删除动态
        function deleteTrRow(tr){
            $(tr).parent().parent().remove();
        }
        function submitStatus() {
            var stat =$('#project_status').val();
            if(stat == '1'){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.msg('当前项目已是实施状态，无需更改');
                });
                return false;
            }
            return true;
        }
        //提交数据时验证数据信息
        function form_submit(){
            $('input.notempty').css('background','#fff');
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



    </script>

@endsection
