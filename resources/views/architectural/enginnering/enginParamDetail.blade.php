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


    </style>
<div class="left-sidebar">
    <div class="row-fluid">
        <div class="span12">

            <div class="widget">
                <div class="widget-header" style="text-align: center">
                    <div  style="font-size: 16px;" >
                        <b>建筑设计参数配置</b>
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
                                    <td  >{{$project->project_name}}</td>
                                    <td  class="pro-title">项目地点</td>
                                    <td >{{$project->province}}{{$project->city}}{{$project->county}}{{$project->address_detail}}{{$project->foreign_address}}
                                    </td>
                                    <td  class="pro-title">工程名称</td>
                                    <td  >{{$engineering->engineering_name}}</td>
                                </tr>

                                <tr>
                                    <td class="pro-title">建筑面积(m²)</td>
                                    <td >{{$engineering->build_area}}</td>
                                    <td class="pro-title">建筑楼层(层数)</td>
                                    <td >{{$engineering->build_floor}}</td>
                                    <td class="pro-title">建筑高度(m)</td>
                                    <td >{{$engineering->build_height}}</td>
                                </tr>
                                </tbody>
                            </table>
                        <div class="clearfix"></div>

                        @if(count($project_file) > 0)
                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="4"><span class="btn btn-info">项目文件</span>
                                        <a class="btn btn-success"  onclick="show_img()">
                                            <i class="layui-icon" id="show_img">显示图片</i> >>
                                        </a>
                                    </th>
                                    <th>
                                    <span class="title" style="float: right;">
                                        @if(count($project_file) > 3)
                                            <a class="btn btn-success" id="addProjectFileID" attr="1000" onclick="show_list()">
                                            <i class="layui-icon" id="show_ids">显示更多</i> >>
                                        </a>
                                        @endif
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
                                    @if($k >2)
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
                        @endif



                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="6"><span class="btn btn-info">建筑设计指标</span></th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td class="pro-title">建筑使用寿命(年)</td>
                                <td >{{isset($param->use_time)?$param->use_time:''}}</td>
                                <td class="pro-title">抗震设防烈度(度)</td>
                                <td >{{isset($param->seismic_grade)?$param->seismic_grade:''}}</td>
                                <td class="pro-title">屋面防水等级</td>
                                <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">建筑耐火等级</td>
                                <td >{{isset($param->refractory_grade)?$param->refractory_grade:''}}</td>
                                <td class="pro-title">建筑隔声等级</td>
                                <td >{{isset($param->insulation_sound_grade)?$param->insulation_sound_grade:''}}</td>
                                <td class="pro-title">建筑节能标准(%)</td>
                                <td >{{isset($param->energy_grade)?$param->energy_grade:''}}</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="4"><span class="btn btn-info">建筑荷载设计指标</span></th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td class="pro-title">设计基本风压(kN/m²)</td>
                                <td >{{isset($param->basic_wind_pressure)?$param->basic_wind_pressure:''}}</td>
                                <td class="pro-title">设计基本雪压(kN/m²)</td>
                                <td >{{isset($param->basic_snow_pressure)?$param->basic_snow_pressure:''}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">屋面活载荷(kN/m²)</td>
                                <td >{{isset($param->roof_load)?$param->roof_load:''}}</td>
                                <td class="pro-title">楼面活载荷(kN/m²)</td>
                                <td >{{isset($param->floor_load)?$param->floor_load:''}}</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="4"><span class="btn btn-info">建筑尺寸设计参数</span></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td  class="pro-title">建筑层数：{{$engineering->build_floor}}层</td>
                                <td class="pro-title">总建筑面积（m²）</td>
                                <td><span id="all_house_area">{{$engineering->build_area}}</span></td>
                                <td><span class="area_content" style="color: red"></span></td>
                            </tr>
                            <tr>
                                <td  class="pro-title">建筑占地尺寸 长（m）</td>
                                <td>{{isset($param->floor_height)?$param->floor_height:''}}</td>
                                <td class="pro-title"> 宽（m）</td>
                                <td>{{isset($param->floor_width)?$param->floor_width:''}}</td>
                            </tr>
                            <tr>
                                <td  class="pro-title">楼层信息</td>
                                <td class="pro-title">建筑层高（m）</td>
                                <td class="pro-title">室内净高（m）</td>
                                <td class="pro-title">建筑面积（m²）</td>
                            </tr>

                            @for($i =1;$i <= $engineering->build_floor;$i++ )
                            <tr >
                                <td class="pro-title">第{{$i}}层</td>
                                <td>{{ isset($storey_height[$i-1])?$storey_height[$i-1]:'' }}</td>
                                <td>{{ isset($house_height[$i-1])?$house_height[$i-1]:'' }}</td>
                                <td>{{ isset($house_area[$i-1])?$house_area[$i-1]:'' }}</td>
                            </tr>
                            @endfor

                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                                <tr>
                                    <th colspan="3">
                                        <span class="btn btn-info">建筑房间功能布局</span>
                                    </th>
                                </tr>
                            </thead>
                            <tbody >
                            <tr>
                                <td class="pro-title">位置</td>
                                <td class="pro-title">房间名称</td>
                                <td class="pro-title">室内净建筑面积要求(m²)</td>
                            </tr>
                            @if(isset($room_position) && is_array($room_position))
                                @foreach($room_position as $k=>$v)
                                    <tr>
                                        <td >{{$v}}</td>
                                        <td >{{isset($room_name[$k])?$room_name[$k]:''}}</td>
                                        <td >{{isset($room_area[$k])?$room_area[$k]:''}}</td>
                                    </tr>
                                @endforeach
                            @endif

                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <div class="layui-form-item" style="float: right;clear: left">
                            <a href="javascript:history.go(-1)">
                                <label for="L_repass" class="layui-form-label"></label>
                                <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                            </a>
                        </div>
                        <div class="clearfix"></div>
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
