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
                                    <td class="pro-title">建筑面积(平方米)</td>
                                    <td >{{$engineering->build_area}}</td>
                                    <td class="pro-title">建筑楼层(层数)</td>
                                    <td >{{$engineering->build_floor}}</td>
                                    <td class="pro-title">建筑高度(米)</td>
                                    <td >{{$engineering->build_height}}</td>
                                </tr>
                                </tbody>
                            </table>
                        <div class="clearfix"></div>
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
                                <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
                                <td class="pro-title">建筑隔声等级</td>
                                <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
                                <td class="pro-title">建筑节能标准(%)</td>
                                <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
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
                                <td class="pro-title">设计基本风压(千牛/平方米)</td>
                                <td >{{isset($param->use_time)?$param->use_time:''}}</td>
                                <td class="pro-title">设计基本雪压(千牛/平方米)</td>
                                <td >{{isset($param->seismic_grade)?$param->seismic_grade:''}}</td>
                            </tr>
                            <tr>
                                <td class="pro-title">屋面活载荷(千牛/平方米)</td>
                                <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
                                <td class="pro-title">楼面活载荷(千牛/平方米)</td>
                                <td >{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}</td>
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
                                <td class="pro-title">总建筑面积（平方米）</td>
                                <td><span id="all_house_area">{{$engineering->build_area}}</span></td>
                                <td><span class="area_content" style="color: red"></span></td>
                            </tr>
                            <tr>
                                <td  class="pro-title">占地尺寸 长（米）</td>
                                <td>{{isset($param->floor_height)?$param->floor_height:''}}</td>
                                <td class="pro-title">占地尺寸 宽（米）</td>
                                <td>{{isset($param->floor_width)?$param->floor_width:''}}</td>
                            </tr>
                            <tr>
                                <td  class="pro-title">楼层信息</td>
                                <td class="pro-title">建筑层高（米）</td>
                                <td class="pro-title">室内净高（米）</td>
                                <td class="pro-title">建筑面积（平方米）</td>
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
                                <td class="pro-title">面积</td>
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
@endsection
