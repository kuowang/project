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
                <div class="widget-header">
                    <div class="title">
                        编辑项目<a id="dynamicTable"></a>
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
                                        <option value="0" >洽谈项目</option>
                                        <option value="1" >实施项目</option>
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

                        <form method="post" action="/project/postEditProject/{{$id}}">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6"><span class="btn btn-info">项目概况</span></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td  class="pro-title">项目名称</td>
                                <td colspan="2">
                                    <input type="text"  name="project_name" class="span8  notempty"  value="{{$project->project_name}}" lay-skin="primary" >
                                </td>
                                <td  class="pro-title">项目所在国</td>
                                <td colspan="2">
                                    <input type="text"  name="country" class="span8 notempty"  value="{{$project->country}}" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td  class="pro-title">项目地点国内</td>
                                <td colspan="2">
                                    <div data-toggle="distpicker" id="distpicker1">
                                        <select name="province" data-province="{{$project->province}}"></select>
                                        <select name="city" data-city="{{$project->city}}"></select>
                                        <select name="county" data-district="{{$project->county}}"></select>
                                    </div>
                                 </td>
                                <td  class="pro-title">详情地址</td>
                                <td colspan="2">
                                    <input type="text"  name="address_detail" class="span12"  value="{{ $project->address_detail }}" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">项目地点国外</td>
                                <td colspan="5">
                                    <input type="text"  name="foreign_address" class="span8"  value="{{ $project->foreign_address }}" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">项目种类（用途）</td>
                                <td>
                                    <input type="text"  name="type" class="span8  notempty"  value="{{ $project->type }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">项目来源</td>
                                <td>
                                    <input type="text"  name="source" class="span8 notempty"  value="{{ $project->source }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">项目所属阶段</td>
                                <td>
                                    <input type="text"  name="stage" class="span8 notempty"  value="{{ $project->stage }}" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">计划建造日期</td>
                                <td>
                                    <div class="layui-inline">
                                        <div class="layui-input-inline">
                                            <input type="text" name="plan_creat_at" value="{{ $project->plan_creat_at }}" class="layui-input span8 notempty" id="test1" placeholder="yyyy-MM-dd">
                                        </div>
                                    </div>
                                </td>
                                <td class="pro-title">项目工期（天）</td>
                                <td>
                                    <input type="text"  name="project_limit_time" class="span8 notempty"  value="{{ $project->project_limit_time }}"  onclick="key(this)" lay-skin="primary" >
                                </td>
                                <td class="pro-title">洽谈指数</td>
                                <td>
                                    <select name="success_level" id="success_level" class="input-medium search-query notempty" style="min-width: 80px">
                                        @if($project->success_level ==1) <option value="1" selected="selected">★</option> @else <option value="1">★</option> @endif
                                        @if($project->success_level ==2) <option value="2" selected="selected">★★</option> @else <option value="2">★★</option> @endif
                                        @if($project->success_level ==3) <option value="3" selected="selected">★★★</option> @else <option value="3">★★★</option> @endif
                                        @if($project->success_level ==4) <option value="4" selected="selected">★★★★</option> @else <option value="4">★★★★</option> @endif
                                        @if($project->success_level ==5) <option value="5" selected="selected">★★★★★</option> @else <option value="5">★★★★★</option> @endif

                                    </select>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="6"><span class="btn btn-info">建设场地概况</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">场地自然条件</td>
                                <td>
                                    <input type="text"  name="environment" class="span8 notempty"  value="{{ $project->environment }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">场地交通条件</td>
                                <td>
                                    <input type="text"  name="traffic" class="span8 notempty"  value="{{ $project->traffic }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">材料存储条件</td>
                                <td>
                                    <input type="text"  name="material_storage" class="span8 notempty"  value="{{ $project->material_storage }}" lay-skin="primary" >
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="6"><span class="btn btn-info">客户信息</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">客户类型</td>
                                <td>
                                    <input type="text"  name="customer_type" class="span8 notempty"  value="{{ $project->customer_type }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">客户名称</td>
                                <td>
                                    <input type="text"  name="customer" class="span8 notempty"  value="{{ $project->customer }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">客户地址</td>
                                <td>
                                    <input type="text"  name="customer_address" class="span8 notempty"  value="{{ $project->customer_address }}" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">联系方式（手机）</td>
                                <td>
                                    <input type="text"  name="customer_telephone" class="span8 notempty"  value="{{ $project->customer_telephone }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">座机</td>
                                <td>
                                    <input type="text"  name="customer_phone" class="span8"  value="{{ $project->customer_phone }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">电子邮箱</td>
                                <td>
                                    <input type="text"  name="customer_email" class="span8"  value="{{ $project->customer_email }}" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">客户需求</td>
                                <td  colspan="5">
                                    <label class="checkbox">
                                        @if($project->is_design ==1)
                                        <input type="checkbox" name="is_design" checked="checked" value="1">
                                        @else
                                        <input type="checkbox" name="is_design" value="1">
                                        @endif
                                        设计/咨询
                                    </label>
                                    <label class="checkbox">
                                        @if($project->is_supply ==1)
                                        <input type="checkbox" name="is_supply" checked="checked" value="1">
                                        @else
                                            <input type="checkbox" name="is_supply" value="1">
                                        @endif
                                        材料供应
                                    </label>
                                    <label class="checkbox">
                                        @if($project->is_guidance ==1)
                                            <input type="checkbox" name="is_guidance" checked="checked" value="1">
                                        @else
                                            <input type="checkbox" name="is_guidance" value="1">
                                        @endif
                                        施工指导
                                    </label>
                                    <label class="checkbox">
                                        @if($project->is_installation ==1)
                                            <input type="checkbox" name="is_installation" checked="checked" value="1">
                                        @else
                                            <input type="checkbox" name="is_installation" value="1">
                                        @endif
                                        施工安装
                                    </label>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="5"><span class="btn btn-info">项目子工程信息</span></th>
                                <th colspan="6"><span class="title" style="float: right;">
                                <a class="btn btn-success" onclick="add_zigongcheng()"><i class="layui-icon">添加子工程 +</i></a>
                                    </span>
                                </th>
                            </tr>
                            </thead>
                            <tbody id="zigongcheng">
                            @foreach($engineering as $engin)
                            <tr >
                                <td class="pro-title">子工程名称
                                    <input type="hidden"  name="engineering_id[]" class="span8 notempty "  value="{{ $engin->id }}" lay-skin="primary" >
                                </td>
                                <td>
                                    <input type="text"  name="engineering_name[]" class="span8 notempty"  value="{{ $engin->engineering_name }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">建筑面积（平方米）</td>
                                <td>
                                    <input type="text"  name="build_area[]" class="span8  notempty"  value="{{ $engin->build_area }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">建筑层数</td>
                                <td>
                                    <input type="text"  name="build_floor[]" class="span8 notempty"  value="{{ $engin->build_floor }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">建筑高度（m）</td>
                                <td>
                                    <input type="text"  name="build_height[]" class="span8 notempty"  value="{{ $engin->build_height }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">室内净高（m）</td>
                                <td>
                                    <input type="text"  name="indoor_height[]" class="span8 notempty"  value="{{ $engin->indoor_height }}" lay-skin="primary" >
                                </td>

                                <td></td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="6"><span class="btn btn-info">项目负责人信息</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">负责人姓名（客户方）</td>
                                <td>
                                    <input type="text"  name="customer_leader" class="span8  notempty"  value="{{ $project->customer_leader }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">负责人职位（客户方）</td>
                                <td>
                                    <input type="text"  name="customer_job" class="span8 notempty"  value="{{ $project->customer_job }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">负责人电话（客户方）</td>
                                <td>
                                    <input type="text"  name="customer_contact" class="span8 notempty"  value="{{ $project->customer_contact }}" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">负责人姓名（我方）</td>
                                <td>
                                    <input type="text"  name="project_leader" class="span8 notempty"  value="{{ $project->project_leader }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">负责人职位（我方）</td>
                                <td>
                                    <input type="text"  name="project_job" class="span8 notempty"  value="{{ $project->project_job }}" lay-skin="primary" >
                                </td>
                                <td class="pro-title">负责人电话（我方）</td>
                                <td>
                                    <input type="text"  name="project_contact" class="span8 notempty"  value="{{ $project->project_contact }}" lay-skin="primary" >
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="6"><span class="btn btn-info">项目支持信息</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">设计负责人</td>
                                <td>
                                    <select name="design_uid" id="design_uid" class="input-medium search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                        @if($u->department_id == 6)
                                            @if($u->id == $project->design_uid)
                                            <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                            @else
                                            <option value="{{$u->id}}" >{{$u->name}}</option>
                                            @endif
                                        @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td class="pro-title">预算负责人</td>
                                <td>
                                    <select name="budget_uid" id="budget_uid" class="input-medium search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                        @if($u->department_id == 3)
                                            @if($u->id == $project->budget_uid)
                                                <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                            @else
                                                <option value="{{$u->id}}" >{{$u->name}}</option>
                                            @endif
                                        @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td class="pro-title">合约负责人</td>
                                <td>
                                    <select name="technical_uid" id="technical_uid" class="input-medium search-query  notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                        @if($u->department_id == 8)
                                            @if($u->id == $project->technical_uid)
                                                <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                            @else
                                                <option value="{{$u->id}}" >{{$u->name}}</option>
                                            @endif
                                        @endif
                                        @endforeach
                                    </select>
                                </td>
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
            str ='<tr > <td class="pro-title">子工程名称<input type="hidden"  name="engineering_id[]" value="0" class="span8 notempty " lay-skin="primary" ></td>'+
                '<td> <input type="text"  name="engineering_name[]" class="span8 notempty "  value="" lay-skin="primary" > </td>'+
                '<td class="pro-title">建筑面积（平方米）</td>'+
                '<td> <input type="text"  name="build_area[]" class="span8 notempty"  value="" lay-skin="primary" > </td>'+
                '<td class="pro-title">建筑层数</td> '+
                '<td> <input type="text"  name="build_floor[]" class="span8 notempty"  value="" lay-skin="primary" > </td>'+
                '<td class="pro-title">建筑高度（m）</td>'+
                '<td> <input type="text"  name="build_height[]" class="span8 notempty"  value="" lay-skin="primary" > </td>'+
                '<td class="pro-title">室内净高（m）</td>'+
                '<td><input type="text"  name="indoor_height[]" class="span8 notempty"  value="" lay-skin="primary" ></td>'+
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
        function submitStatus() {
            var stat =$('#project_status').val();
            if(stat == '0'){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.msg('当前项目已是洽谈状态，无需更改');
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
    </script>

@endsection
