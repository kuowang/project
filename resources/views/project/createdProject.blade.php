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
                        创建项目<a id="dynamicTable"></a>
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">

                        <form method="post" action="/project/postAddProject">
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
                                    <input type="text"  name="project_name" class="span8  notempty"  value="" lay-skin="primary" >
                                </td>
                                <td  class="pro-title">项目所在国</td>
                                <td colspan="2">
                                    <input type="text"  name="country" class="span8 notempty"  value="" lay-skin="primary" placeholder="国内/国外">
                                </td>
                            </tr>
                            <tr>
                                <td  class="pro-title">项目地点国内</td>
                                <td colspan="2">
                                    <div data-toggle="distpicker" id="distpicker1">
                                        <select name="province"></select>
                                        <select name="city"></select>
                                        <select name="county"></select>
                                    </div>
                                 </td>
                                <td  class="pro-title">详情地址</td>
                                <td colspan="2">
                                    <input type="text"  name="address_detail" class="span12"  value="" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">项目地点国外</td>
                                <td colspan="5">
                                    <input type="text"  name="foreign_address" class="span8"  value="" lay-skin="primary"  >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">项目种类（用途）</td>
                                <td>
                                    <input type="text"  name="type" class="span8  notempty"  value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">项目来源</td>
                                <td>
                                    <input type="text"  name="source" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">项目所属阶段</td>
                                <td>
                                    <input type="text"  name="stage" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">计划建造日期</td>
                                <td>
                                    <div class="layui-inline">
                                        <div class="layui-input-inline">
                                            <input type="text" name="plan_creat_at" class="layui-input span8 notempty" id="test1" placeholder="yyyy-MM-dd">
                                        </div>
                                    </div>
                                </td>
                                <td class="pro-title">项目工期（天）</td>
                                <td>
                                    <input type="text"  name="project_limit_time" class="span8 notempty"  onclick="key(this)" value="" lay-skin="primary" onclick="key(this)" >
                                </td>
                                <td class="pro-title">洽谈指数</td>
                                <td>
                                    <select name="success_level" id="success_level" class="input-medium search-query notempty" style="min-width: 80px;color:red">
                                        <option value="1" >★</option>
                                        <option value="2" >★★</option>
                                        <option value="3" >★★★</option>
                                        <option value="4" >★★★★</option>
                                        <option value="5" selected="selected">★★★★★</option>
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
                                    <input type="text"  name="environment" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">场地交通条件</td>
                                <td>
                                    <input type="text"  name="traffic" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">材料存储条件</td>
                                <td>
                                    <input type="text"  name="material_storage" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">夏季平均气温（摄氏度）</td>
                                <td>
                                    <input type="text"  name="summer_avg_temperature" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">夏季最高气温（摄氏度）</td>
                                <td>
                                    <input type="text"  name="summer_max_temperature" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">冬季平均气温（摄氏度）</td>
                                <td>
                                    <input type="text"  name="winter_avg_temperature" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">冬季最低气温（摄氏度）</td>
                                <td>
                                    <input type="text"  name="winter_min_temperature" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                                <td colspan="4"></td>

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
                                    <input type="text"  name="customer_type" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">客户名称</td>
                                <td>
                                    <input type="text"  name="customer" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">客户地址</td>
                                <td>
                                    <input type="text"  name="customer_address" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">联系方式（手机）</td>
                                <td>
                                    <input type="text"  name="customer_telephone" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">座机</td>
                                <td>
                                    <input type="text"  name="customer_phone" class="span8"  value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">电子邮箱</td>
                                <td>
                                    <input type="text"  name="customer_email" class="span8"  value="" lay-skin="primary" >
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">客户需求</td>
                                <td  colspan="5">
                                    <label class="checkbox">
                                        <input type="checkbox" name="is_design" value="1">
                                        设计/咨询
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" name="is_supply" value="1">
                                        材料供应
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" name="is_guidance" value="1">
                                        施工指导
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" name="is_installation" value="1">
                                        施工安装
                                    </label>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="4"><span class="btn btn-info">项目子工程信息</span></th>
                            <th colspan="3"><span class="title" style="float: right;">
                                <a class="btn btn-success" onclick="add_zigongcheng()"><i class="layui-icon">添加子工程 +</i></a>
                            </span>
                            </th>
                            </tr>
                            </thead>
                            <tbody id="zigongcheng">
                            <tr>
                                <td class="pro-title">子工程名称</td>
                                <td  class="pro-title">建筑总面积（m²）</td>
                                <td class="pro-title">建筑总层数</td>
                                <td class="pro-title">建筑总高度（m）</td>
                                <td class="pro-title">室内净高（最小）（m）</td>
                                <td class="pro-title">建筑物数量（栋）</td>
                                <td class="pro-title">操作</td>
                            </tr>
                            <tr >
                                <td>
                                    <input type="text"  name="engineering_name[]" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                                <td>
                                    <input type="text"  name="build_area[]" class="span8  notempty"  onclick="key(this)" value="" lay-skin="primary" >
                                </td>
                                <td>
                                    <input type="text"  name="build_floor[]" class="span8 notempty"  onclick="key(this)" value="" lay-skin="primary" >
                                </td>
                                <td>
                                    <input type="text"  name="build_height[]" class="span8 notempty"  onclick="key(this)" value="" lay-skin="primary" >
                                </td>
                                <td><input type="text"  name="indoor_height[]" class="span8 notempty"  onclick="key(this)" value="" lay-skin="primary" ></td>
                                <td>
                                    <input type="text"  name="build_number[]" class="span8 notempty"  onclick="key(this)" value="" lay-skin="primary" >
                                </td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="6"><span class="btn btn-info">客户方负责人信息</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">负责人姓名（客户方）</td>
                                <td>
                                    <input type="text"  name="customer_leader" class="span8  notempty"  value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">负责人职位（客户方）</td>
                                <td>
                                    <input type="text"  name="customer_job" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                                <td class="pro-title">负责人电话（客户方）</td>
                                <td>
                                    <input type="text"  name="customer_contact" class="span8 notempty"  value="" lay-skin="primary" >
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="10"><span class="btn btn-info">项目负责人信息（我方）</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">项目总负责人</td>
                                <td>
                                    <select name="project_uid" id="project_uid" class="input-medium search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 2)
                                                <option value="{{$u->id}}" >{{$u->name}}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td class="pro-title">销售总负责人</td>
                                <td>
                                    <select name="sale_uid" id="sale_uid" class="input-medium search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 2)
                                                <option value="{{$u->id}}" >{{$u->name}}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td class="pro-title">设计总负责人</td>
                                <td>
                                    <select name="design_uid" id="design_uid" class="input-medium search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 6)
                                        <option value="{{$u->id}}" >{{$u->name}}</option>
                                            @endif
                                       @endforeach
                                    </select>
                                </td>
                                <td class="pro-title">预算报价总负责人</td>
                                <td>
                                    <select name="budget_uid" id="budget_uid" class="input-medium search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 3)
                                            <option value="{{$u->id}}" >{{$u->name}}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td class="pro-title">合约总负责人</td>
                                <td>
                                    <select name="technical_uid" id="technical_uid" class="input-medium search-query  notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 8)
                                                <option value="{{$u->id}}" >{{$u->name}}</option>
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
            str ='<tr >' +
                '<td> <input type="text"  name="engineering_name[]" class="span8 notempty "  value="" lay-skin="primary" > </td>'+
                '<td> <input type="text"  name="build_area[]" class="span8 notempty" onclick="key(this)"  value="" lay-skin="primary" > </td>'+
                '<td> <input type="text"  name="build_floor[]" class="span8 notempty"  onclick="key(this)"  value="" lay-skin="primary" > </td>'+
                '<td> <input type="text"  name="build_height[]" class="span8 notempty"  onclick="key(this)" value="" lay-skin="primary" > </td>'+
                '<td><input type="text"  name="indoor_height[]" class="span8 notempty"  onclick="key(this)" value="" lay-skin="primary" ></td>'+
                '<td><input type="text"  name="build_number[]" class="span8 notempty"  onclick="key(this)" value="" lay-skin="primary" ></td>'+

                '<td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>'+
            '</tr>';
            $("#zigongcheng").append(str);
            //点击文本框设置背景色
            $(".notempty").focus(function(){
                $(this).css("background-color","#fff");
            });
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
