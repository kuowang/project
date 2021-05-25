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
                        项目信息详情<a id="dynamicTable"></a>
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">

                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6"><span class="btn btn-info">项目概况</span></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td  class="pro-title">项目名称</td>
                                <td colspan="2">{{$project->project_name}}</td>
                                <td  class="pro-title">项目所在国</td>
                                <td colspan="2">{{$project->country}}</td>
                            </tr>
                            <tr>
                                <td  class="pro-title">项目地点(国内)</td>
                                <td colspan="2">{{$project->province}}{{$project->city}}{{$project->county}}
                                    {{$project->foreign_address}}
                                 </td>
                                <td  class="pro-title">详情地址(街道/乡镇/村)</td>
                                <td colspan="2">{{$project->address_detail}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">项目地点(国外)</td>
                                <td colspan="5">{{$project->foreign_address}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">项目种类（用途）</td>
                                <td>{{$project->type}}</td>
                                <td class="pro-title">项目来源</td>
                                <td>{{$project->source}}</td>
                                <td class="pro-title">项目所属阶段</td>
                                <td>{{$project->stage}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">计划建造日期</td>
                                <td>{{$project->plan_creat_at}}</td>
                                <td class="pro-title">工期要求</td>
                                <td>{{$project->project_limit_time}}</td>
                                <td class="pro-title">洽谈指数</td>
                                <td>{{$project->success_level}}</td>
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
                                <td>{{$project->environment}}</td>
                                <td class="pro-title">场地交通条件</td>
                                <td>{{$project->traffic}}</td>
                                <td class="pro-title">材料存储条件</td>
                                <td>{{$project->material_storage}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">夏季平均气温（摄氏度）</td>
                                <td>
                                    {{$project->summer_avg_temperature}}
                                </td>
                                <td class="pro-title">夏季最高气温（摄氏度）</td>
                                <td>
                                    {{$project->summer_max_temperature}}
                                </td>
                                <td class="pro-title">冬季平均气温（摄氏度）</td>
                                <td>
                                    {{$project->winter_avg_temperature}}
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">冬季最低气温（摄氏度）</td>
                                <td>
                                    {{$project->winter_min_temperature}}
                                </td>
                                <td class="pro-title">场地尺寸：长（m）</td>
                                <td>
                                    {{$project->project_area_length}}
                                </td>
                                <td class="pro-title">场地尺寸：宽（m）</td>
                                <td>
                                    {{$project->project_area_width}}
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
                                <td>{{$project->customer_type}}</td>
                                <td class="pro-title">客户名称</td>
                                <td>{{$project->customer}}</td>
                                <td class="pro-title">客户地址</td>
                                <td>{{$project->customer_address}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">联系方式（手机）</td>
                                <td>{{$project->customer_telephone}}</td>
                                <td class="pro-title">座机</td>
                                <td>{{$project->customer_phone}}</td>
                                <td class="pro-title">电子邮箱</td>
                                <td>{{$project->customer_email}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">客户需求</td>
                                <td  colspan="5">
                                    @if($project->is_design ==1)
                                        设计/咨询
                                    @endif
                                    @if($project->is_supply ==1)
                                            材料供应
                                    @endif
                                    @if($project->is_guidance ==1)
                                            施工指导
                                    @endif
                                    @if($project->is_installation ==1)
                                            施工安装
                                    @endif
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="8"><span class="btn btn-info">项目子工程信息</span></th>
                            </tr>
                            </thead>
                            <tbody id="zigongcheng">
                            <tr>
                                <td class="pro-title">子工程名称</td>
                                <td  class="pro-title">建筑总面积（m²）</td>
                                <td class="pro-title">房屋占地尺寸:长(m)</td>
                                <td class="pro-title">房屋占地尺寸:宽(m)</td>
                                <td class="pro-title">建筑总层数</td>
                                <td class="pro-title">建筑总高度（m）</td>
                                <td class="pro-title">室内净高（最小）（m）</td>
                                <td class="pro-title">建筑物数量（栋）</td>
                            </tr>
                            @foreach($engineering as $item)
                            <tr >
                                <td>{{$item->engineering_name}}</td>
                                <td>{{$item->build_area}}</td>
                                <td>{{$item->build_length}}</td>
                                <td>{{$item->build_width}}</td>
                                <td>{{$item->build_floor}}</td>
                                <td>{{$item->build_height}}</td>
                                <td>{{$item->indoor_height}}</td>
                                <td>{{$item->build_number}}</td>
                            </tr>
                            @endforeach
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
                                <td>{{$project->customer_leader}}</td>
                                <td class="pro-title">负责人职位（客户方）</td>
                                <td>{{$project->customer_job}}</td>
                                <td class="pro-title">负责人电话（客户方）</td>
                                <td>{{$project->customer_contact}}</td>
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
                                <td>{{$project->project_leader}}</td>
                                <td class="pro-title">销售总负责人</td>
                                <td>{{$project->sale_username}}</td>
                                <td class="pro-title">设计总负责人</td>
                                <td>{{$project->design_username}}</td>
                                <td class="pro-title">预算报价总负责人</td>
                                <td>{{$project->budget_username}}</td>
                                <td class="pro-title">合约总负责人</td>
                                <td>{{$project->technical_username}}</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="4"><span class="btn btn-info">项目文件</span>
                                    <a class="btn btn-success"  onclick="show_img()">
                                        <i class="layui-icon" id="show_img">显示图片</i> >>
                                    </a></th>
                                <th>
                                    <span class="title" style="float: right;">
                                        <a class="btn btn-success" id="addProjectFileID" attr="1000" onclick="show_list()">
                                            <i class="layui-icon" id="show_ids">显示更多</i> >>
                                        </a>
                                    </span>
                                </th>
                            </tr>
                            </thead>
                            <tbody id="projectFileList">
                            <tr>
                                <td class="pro-title">文件类型</td>
                                <td class="pro-title">序号</td>
                                <td class="pro-title">文件名</td>
                                <td class="pro-title">创建时间</td>
                                <td class="pro-title">文件描述</td>
                            </tr>

                            @foreach($project_file as $k=>$file)
                                @if($k > 4)
                                    <tr style="display: none" class="show_tr_list">
                                @else
                                    <tr>
                                @endif

                                    <td>{{$file->file_type}}</td>
                                    <td class="pro-title">{{++$k}}</td>
                                    <td>
                                        <div id="uploadfiletitle{{$k}}">{{$file->uploadfile}}
                                            <a href="/project/projectFileDownload/{{$file->file_key}}"  style="color: red">
                                                (下载)
                                            </a>
                                        </div>
                                    </td>
                                    <td>{{$file->created_at}}</td>
                                    <td>
                                        {{$file->file_name}}
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <div class="clearfix"></div>

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

    <script type="text/javascript">
        jQuery.fn.rowspan = function(colIdx) { //封装的一个JQuery小插件
            return this.each(function(){
                var that;
                $('tr', this).each(function(row) {
                    $('td:eq('+colIdx+')', this).filter(':visible').each(function(col) {
                        if (that!=null && $(this).html() == $(that).html()) {
                            rowspan = $(that).attr("rowSpan");
                            if (rowspan == undefined) {
                                $(that).attr("rowSpan",1);
                                rowspan = $(that).attr("rowSpan"); }
                            rowspan = Number(rowspan)+1;
                            $(that).attr("rowSpan",rowspan);
                            $(this).hide();
                        } else {
                            that = this;
                        }
                    });
                });
            });
        }

        $(function() {
            $("#projectFileList").rowspan(0);//传入的参数是对应的列数从0开始，哪一列有相同的内容就输入对应的列数值
            //$("#table1").rowspan(2);

        });
        function show_list() {
            $('.show_tr_list').toggle();
            $("#projectFileList").rowspan(0);
            htm =$('#show_ids').html();
            if(htm =='显示更多'){
                $('#show_ids').html('折叠');
            }else{
                $('#show_ids').html('显示更多');
            }
        }
        function show_img(){
            layui.use(['layer', 'form'], function(){
                var layer = layui.layer
                    ,form = layui.form;
                layer.open({
                    title:'查看全部图片',
                    type: 2,
                    area: ['70%','80%'],
                    content: '/project/projectImgList/{{$project->id}}' //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                });
            });
        }
    </script>

@endsection
