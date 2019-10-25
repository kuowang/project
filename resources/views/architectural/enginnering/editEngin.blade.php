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
                                <td class="pro-title">建筑总面积（m²）</td>
                                <td>{{$engineering->build_area}}</td>
                                <td class="pro-title">建筑总层数</td>
                                <td>{{$engineering->build_floor}}</td>
                                <td class="pro-title">建筑总高度（m）</td>
                                <td>{{$engineering->build_height}}</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        @if($engineering->budget_id > 0)
                        <div class="layui-form-item" style="color:orange">
                            当前工程已经设置过预算信息 ，工况信息只能增加，不能取消
                        </div>
                        <div class="clearfix"></div>
                        @endif
                    </div>
                </div>
            </div>
            <div class="widget">
                <div class="widget-header" style="text-align: center">
                    <div  style="font-size: 16px;" >
                        <b>建筑工况配置</b>
                        @if(empty($engin_system))
                        <span class="title"style="float: right;margin-left: 15px;">
                        <a class="btn btn-success" onclick="selectModel()" ><i class="layui-icon">选择关联模板</i></a>
                        </span>
                        @endif
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <form method="post" action="/architectural/postEditEngin/{{ $engin_id }}">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th style="width: 25px;"></th>
                                <th >建筑子系统</th>
                                <th >建筑子系统编码</th>
                                <th >默认工况</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php
                            $arch_id ='';
                            @endphp
                            @foreach($arch_system as $v)
                                @if($arch_id != $v->arch_id)
                                    <tr class="pro-title">
                                        <td colspan="4">{{$v->system_name}}({{$v->engin_name}})</td>
                                        <td > <span class="btn btn-success showcontent" onclick="showcontent('{{$v->arch_id}}')" id="show_{{$v->arch_id}}" >显示</span>
                                        </td>
                                    </tr>
                                    @php( $arch_id = $v->arch_id)
                                @endif
                            <tr style="display: none" class="sub_arch_id arch_id_{{$v->arch_id}}">
                                <td>
                                    @if($engineering->budget_id > 0 && isset($engin_system[$v->sub_arch_id]))
                                        <input type="hidden" class="inputsubarchid" id="sub_arch_id_{{$v->sub_arch_id}}" name="sub_arch_id[{{$v->sub_arch_id}}]" value="{{$v->sub_arch_id}}" checked="checked" >
                                    @elseif(isset($engin_system[$v->sub_arch_id]))
                                        <input type="checkbox" class="inputsubarchid"  id="sub_arch_id_{{$v->sub_arch_id}}" name="sub_arch_id[{{$v->sub_arch_id}}]" value="{{$v->sub_arch_id}}" checked="checked" onclick="checkboxarch(this)" >
                                    @else
                                        <input type="checkbox" class="inputsubarchid"  id="sub_arch_id_{{$v->sub_arch_id}}" name="sub_arch_id[{{$v->sub_arch_id}}]" value="{{$v->sub_arch_id}}" onclick="checkboxarch(this)">
                                    @endif
                                    </td>
                                <td  >{{$v->sub_system_name}}</td>
                                <td  >{{$v->sub_system_code}}</td>
                                <td  >{{$v->work_code}}</td>
                                <td class=""></td>
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

                        <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>
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
                        工程工况模板信息
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
                                            <td>工程名称</td>
                                            <td>项目状态</td>
                                        </tr>
                                        @if(isset($otherEngin) && !empty($otherEngin))
                                            @foreach($otherEngin as $item)
                                                <tr>
                                                    <td>
                                                        @if($item->is_conf_architectural !=0)
                                                            <label style="width: 100%;height: 100%">
                                                                <input type="radio" name="subArchitectID" class="subArchitectID" value="{{$item->id}}" style="display: block">
                                                            </label>
                                                        @else
                                                            <input type="radio" name="subArchitectID" class="subArchitectID" value="{{$item->id}}" disabled="" style="display: block">
                                                        @endif
                                                    </td>
                                                    <td>{{$item->engineering_name}}</td>
                                                    <td>@if($item->status ==0) 洽谈
                                                        @elseif($item->status ==1) 实施
                                                        @elseif($item->status ==2) 竣工
                                                        @elseif($item->status ==4) 终止
                                                        @endif
                                                    </td>
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

    <script>
        function checkboxarch(th) {
            /**
            if ($(th).is(":checked")) {
                console.log($(th).val())
                id =$(th).val();
                str ='<input type="text" name="engin_work_code[' + id + ']" value="" >';
                $('#engin_work_code_'+id).html(str);
            }else{
                id =$(th).val();
                $('#engin_work_code_'+id).html('');
            }
            $("input").focus(function(){
                $(this).css("background-color","#fff");
            });
             */
        }
        //子工程的显示隐藏
        function showcontent(id) {
            str =$('#show_'+id).html();
            if(str =='显示'){
                $('#show_'+id).html('隐藏');
            }else{
                $('#show_'+id).html('显示');
            }
            $(".arch_id_"+id).toggle();
        }

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
                    layer.msg('请将对应的工况填写完，再提交。');
                });
                return false;
            }

            return true;
        }

        //点击文本框设置背景色
        $("input").focus(function(){
            $(this).css("background-color","#fff");
        });

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
                buchongEngin(val);
            }
            console.log(val);
        }
        function showMsg(str) {
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(str);
            });
        }
        function  buchongEngin(id) {
            $('#myModal').modal('hide'); //隐藏弹框
            //获取项目工程对应的工况信息
            //这部分明天写
            $.ajax({
                url:'/architectural/getEnginArchList/'+id,
                type:'get',
                // contentType: 'application/json',
                success:function(data){
                    console.log(data);
                    if(data.status == 1){
                        //文字全部改为显示 选中全部取消 子工程全部隐藏
                        $('.showcontent').html('显示');
                        $(".inputsubarchid").prop("checked",false);
                        $('.sub_arch_id').hide();
                        //填充材料
                        $.each( data.data, function(index,content){
                            //addMaterial(content);
                            $('#show_'+content.arch_id).html('隐藏');
                            $('.arch_id_'+content.arch_id).show();
                            $('#sub_arch_id_'+content.sub_arch_id).prop('checked',true);
                        });
                    }else{
                        showMsg('没有查询到工况信息');
                        return false;
                    }
                },
            });
        }


    </script>

@endsection
