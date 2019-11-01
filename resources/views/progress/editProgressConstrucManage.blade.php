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

    </style>
    <style type="text/css">
        .progresszhouqi1{float:left;margin: 10px 10px 10px 10px;padding-right: 2px;}
        .progresszhouqi2{height: 40px;line-height: 40px;margin-left: 10px;}
        .progresszhouqi3{line-height: 40px;height: 27px;padding: 2px;line-height: 27px;width:98%;border:0px}
        .progresszhouqi4{margin: 0 10px}
        .progresszhouqi5{height: 20px}
        .progresszhouqi6{width: 40%;float:left;background: #000;color:#fff;height: 30px;line-height:30px;text-align: center}
        .progresszhouqi7{width: 59%;float:left;text-align: center;}
        .progresszhouqi8{width: 100%;height: 20px;text-align: center;}
        input[type="radio"], input[type="checkbox"] {
             margin: 0;
            line-height: normal;
        }
    </style>
    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-header" style="text-align: center">
                        <div  style="font-size: 16px;" >
                            <b>{{$project->project_name}}</b>
                        </div>
                    </div>
                    <form method="post" action="/progress/postProgressConstrucManage/{{ $engin_id }}">
                        <input type="hidden" name="construc_info_id" value="{{isset($progress_info->id)?$progress_info->id:0}}">
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="8"><span class="btn btn-info">项目概况</span></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td  class="pro-title">项目名称</td>
                                    <td  >{{$project->project_name}}</td>
                                    <td  class="pro-title">工程名称</td>
                                    <td >{{$engineering->engineering_name}}</td>
                                    <td  class="pro-title">建筑面积(m²)</td>
                                    <td  >{{$engineering->build_area}}</td>
                                    <td class="pro-title">建筑楼层(层数)</td>
                                    <td >{{$engineering->build_floor}}</td>
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
                                <tr><th colspan="8"><span class="btn btn-info">建设场地概况</span></th></tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td  class="pro-title">工程地址</td>
                                    <td >{{$engineering->engin_address}}</td>
                                    <td class="pro-title">场地自然条件</td>
                                    <td>{{$project->environment}}</td>
                                    <td class="pro-title">场地交通条件</td>
                                    <td>{{$project->traffic}}</td>
                                    <td class="pro-title">材料存储条件</td>
                                    <td>{{$project->material_storage}}</td>
                                </tr>
                                <tr>
                                    <td  class="pro-title">现场人员住宿条件</td>
                                    <td >
                                        @if(isset($progress_construction_accommodation))
                                            <select name="construction_accommodation" id="construction_accommodation" class="span10 notempty" style="min-width: 80px;">
                                                @foreach($progress_construction_accommodation as $v)
                                                    @if(isset($progress_info->construction_accommodation) && $v == $progress_info->construction_accommodation)
                                                        <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                    @else
                                                        <option value="{{$v}}" >{{$v}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        @endif
                                    </td>
                                    <td class="pro-title">场地操作平台搭建条件(脚手架/安装平台)</td>
                                    <td>
                                        @if(isset($progress_construction_scaffolding))
                                            <select name="construction_scaffolding" id="construction_scaffolding" class="span10 notempty" style="min-width: 80px;">
                                                @foreach($progress_construction_scaffolding as $v)
                                                    @if(isset($progress_info->construction_scaffolding) && $v == $progress_info->construction_scaffolding)
                                                        <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                    @else
                                                        <option value="{{$v}}" >{{$v}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        @endif
                                    </td>
                                    <td class="pro-title">场地大型施工机械使用条件(起重机/挖掘机)</td>
                                    <td colspan="3">
                                        @if(isset($progress_construction_crane))
                                            <select name="construction_crane" id="construction_crane" class="span10 notempty" style="min-width: 80px;">
                                                @foreach($progress_construction_crane as $v)
                                                    @if(isset($progress_info->construction_crane) && $v == $progress_info->construction_crane)
                                                        <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                    @else
                                                        <option value="{{$v}}" >{{$v}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        @endif
                                    </td>
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
                                    <td class="pro-title">冬季最低气温（摄氏度）</td>
                                    <td>
                                        {{$project->winter_min_temperature}}
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                            <div class="clearfix"></div>
                            <table class="layui-table layui-form">
                                <thead>
                                <tr><th colspan="6"><span class="btn btn-info">现场人员安排</span></th></tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>施工负责人姓名</td>
                                    <td>现场负责人联系方式</td>
                                    <td>施工队伍总人数</td>
                                    <td>首批进场人员数量</td>
                                    <td>最高进场人员数量</td>
                                    <td>最低进场人员数量</td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="span12" name="construction_leader"  value="{{isset($progress_info->construction_leader)?$progress_info->construction_leader:''}}"></td>
                                    <td><input type="text" class="span12" name="construction_phone"  value="{{isset($progress_info->construction_phone)?$progress_info->construction_phone:''}}"></td>
                                    <td><input type="text" class="span12" name="construction_people_number"  value="{{isset($progress_info->construction_people_number)?$progress_info->construction_people_number:''}}"></td>
                                    <td><input type="text" class="span12" name="construction_first_people"  value="{{isset($progress_info->construction_first_people)?$progress_info->construction_first_people:''}}"></td>
                                    <td><input type="text" class="span12" name="construction_max_people"  value="{{isset($progress_info->construction_max_people)?$progress_info->construction_max_people:''}}"></td>
                                    <td><input type="text" class="span12" name="construction_min_people"  value="{{isset($progress_info->construction_min_people)?$progress_info->construction_min_people:''}}"></td>
                                </tr>
                                <tr>
                                    <td>项目安全员人数</td>
                                    <td colspan="2">安全员姓名</td>
                                    <td>项目质检员人数</td>
                                    <td colspan="2">质检员姓名</td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="span12" name="security_people_number"  value="{{isset($progress_info->security_people_number)?$progress_info->security_people_number:''}}"></td>
                                    <td colspan="2"><input type="text" class="span12" name="security_people_name"  value="{{isset($progress_info->security_people_name)?$progress_info->security_people_name:''}}"></td>
                                    <td><input type="text" class="span12" name="inspector_number"  value="{{isset($progress_info->inspector_number)?$progress_info->inspector_number:''}}"></td>
                                    <td colspan="2"><input type="text" class="span12" name="inspector"  value="{{isset($progress_info->inspector)?$progress_info->inspector:''}}"></td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="clearfix"></div>
                            <table class="layui-table layui-form">
                                <thead>
                                <tr><th colspan="4"><span class="btn btn-info">工期进度计划</span></th></tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td></td>
                                    <td>施工开始时间(计划)</td>
                                    <td>施工完成时间(计划)</td>
                                    <td>施工周期(天)</td>
                                </tr>
                                <tr>
                                    <td><span class="btn btn-info">施工总工期</span>
                                    </td>
                                    <td>
                                        <input type="text" class="span10 progressdate notempty"  id="progress_start_time_0"  name="progress_all_start_time" value="{{isset($progress_info->progress_all_start_time)?$progress_info->progress_all_start_time:''}}">
                                    </td>
                                    <td>
                                        <input type="text" class="span10 progressdate notempty" id="progress_end_time_0"    name="progress_all_end_time" value="{{isset($progress_info->progress_all_end_time)?$progress_info->progress_all_end_time:''}}">
                                    </td>
                                    <td>
                                        <input type="text" class="span10 notempty" id="progress_duration_0" name="progress_all_duration" value="{{isset($progress_info->progress_all_duration)?$progress_info->progress_all_duration:''}}">
                                    </td>
                                </tr>
                                <tr>
                                    <td>各系统工程施工周期</td>
                                    <td>施工开始时间(计划)</td>
                                    <td>施工完成时间(计划)</td>
                                    <td>施工周期(天)</td>
                                </tr>
                                @if(!empty($engin_arch))
                                    @foreach($engin_arch as $v)
                                    <tr>
                                        <td><span class="btn btn-success" style="margin-left: 20px">{{$v->sub_system_name}}</span>
                                        <input type="hidden" name="sub_arch_id[{{ $v->sub_arch_id }}]" value="{{$v->sub_arch_id}}">
                                        </td>
                                        <td>
                                            <input type="text" class="span10 progressdate notempty"  id="progress_start_time_{{ $v->sub_arch_id }}"  name="progress_start_time[{{ $v->sub_arch_id }}]" value="{{isset($progress_duration[$v->sub_arch_id]->progress_start_time)?$progress_duration[$v->sub_arch_id]->progress_start_time:''}}">
                                        </td>
                                        <td>
                                            <input type="text" class="span10 progressdate notempty" id="progress_end_time_{{ $v->sub_arch_id }}"    name="progress_end_time[{{ $v->sub_arch_id }}]" value="{{isset($progress_duration[$v->sub_arch_id]->progress_end_time)?$progress_duration[$v->sub_arch_id]->progress_end_time:''}}">
                                        </td>
                                        <td>
                                            <input type="text" class="span10 notempty" id="progress_duration_{{ $v->sub_arch_id }}" name="progress_duration[{{ $v->sub_arch_id }}]" value="{{isset($progress_duration[$v->sub_arch_id]->progress_duration)?$progress_duration[$v->sub_arch_id]->progress_duration:''}}">
                                        </td>
                                    </tr>
                                    @endforeach
                                @endif
                                </tbody>
                            </table>


                            <div class="clearfix"></div>
                            <table class="layui-table layui-form">
                                <thead>
                                <tr><th colspan="2"><span class="btn btn-info">施工安装流程、范围及施工周期（计划）</span></th></tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>毛坯房类型</td>
                                    <td >
                                        @if(isset($progress_info->progress_type) && $progress_info->progress_type == 2 )
                                            <label style="display: inline;margin: 5px;">
                                                <input type="radio" name="progress_type" value="1" style="margin: auto;">毛坯房不含基础
                                            </label>
                                            <label style="display: inline;margin: 5px">
                                                <input type="radio" name="progress_type"  checked="checked" value="2" style="margin: auto;">毛坯房含基础
                                            </label>
                                        @else
                                            <label style="display: inline;margin: 5px;">
                                                <input type="radio" name="progress_type"  checked="checked" value="1" style="margin: auto;">毛坯房不含基础
                                            </label>
                                            <label style="display: inline;margin: 5px">
                                                <input type="radio" name="progress_type"  value="2" style="margin: auto;">毛坯房含基础
                                            </label>
                                        @endif
                                    </td>
                                </tr>

                                @if(!empty($engin_arch))
                                    @foreach($engin_arch as $v)
                                        <tr>
                                            <td valign="top" style="min-width: 320px">
                                                <div  class="btn btn-info"> {{$v->system_name}}</div>
                                                <br>
                                                <div  class="btn btn-info" style="margin-left: 20px"> &nbsp;&nbsp;{{$v->sub_system_name}}</div>
                                                <br> <div class="btn btn-default" style="margin-left: 40px">施工时间:<span id="shijian_{{$v->sub_arch_id}}">
                                                        {{isset($progress_duration[$v->sub_arch_id]->progress_start_time)?$progress_duration[$v->sub_arch_id]->progress_start_time:''}}
                                                       至 {{isset($progress_duration[$v->sub_arch_id]->progress_end_time)?$progress_duration[$v->sub_arch_id]->progress_end_time:''}}
                                                    </span></div>
                                                <br><div  class="btn btn-default" style="margin-left: 40px">施工周期(天):<span id="zhouqi_{{$v->sub_arch_id}}">
                                                     {{isset($progress_duration[$v->sub_arch_id]->progress_duration)?$progress_duration[$v->sub_arch_id]->progress_duration:''}}
                                                    </span></div>


                                                <input type="hidden" name="sub_arch_id[{{ $v->sub_arch_id }}]" value="{{$v->sub_arch_id}}">
                                            </td>
                                            <td style="width: 80%">
                                                @if(isset($paramsConf[$v->sub_arch_id]))
                                                    @foreach($paramsConf[$v->sub_arch_id] as $k=>$arch)
                                                        <div style="float: left">
                                                            @if($k !=0)
                                                            <img src="/img/a.png" style="float: left;height: 30px;margin-top: 32px;margin-bottom: 32px;">
                                                            @endif
                                                            <div class="progresszhouqi1"  style="width:{{$arch['length']*16 +20}}px;min-width: 140px">

                                                                <div class="" style="">
                                                                    <label class="progresszhouqi3  btn btn-info" style="">
                                                                        @if(isset($progress_process[$arch['param_id']]))
                                                                            <input type="checkbox" id="xuhao_{{$v->sub_arch_id}}_{{$k}}"  class="progresszhouqi4" checked name="param_id[{{$arch['param_id']}}]" value="{{$arch['param_id']}}" style="">{{$arch['name']}}
                                                                        @else
                                                                            <input type="checkbox" id="xuhao_{{$v->sub_arch_id}}_{{$k}}"  class="progresszhouqi4" name="param_id[{{$arch['param_id']}}]" value="{{$arch['param_id']}}" style="">{{$arch['name']}}
                                                                        @endif
                                                                    </label>
                                                                </div>
                                                                <div  class="progresszhouqi5" style="">

                                                                    @if($arch['is_synchro'] ==1)
                                                                        <div class="progresszhouqi6" style="">周期(天)</div>
                                                                        <div class="progresszhouqi7" style="">
                                                                            @if(isset($progress_process[$arch['param_id']]))
                                                                                <input type="text" is_synchro="1" id="param_id_{{$arch['param_id']}}" class="progresszhouqi8" value="{{$progress_process[$arch['param_id']]}}" name="arch_duration_plan[{{$arch['param_id']}}]" style="padding:4px 0;" onclick="key(this)" onchange='selectzhouqi("{{$v->sub_arch_id}}","{{$k}}",this)'>
                                                                            @else
                                                                                <input type="text" is_synchro="1" id="param_id_{{$arch['param_id']}}"  class="progresszhouqi8" name="arch_duration_plan[{{$arch['param_id']}}]" style="padding:4px 0;" onclick="key(this)" onchange='selectzhouqi("{{$v->sub_arch_id}}","{{$k}}",this)'>
                                                                            @endif
                                                                        </div>
                                                                    @else
                                                                        <div class="progresszhouqi6" style="color:red">周期(天)</div>
                                                                        <div class="progresszhouqi7" style="">
                                                                            @if(isset($progress_process[$arch['param_id']]))
                                                                                <input type="text" is_synchro="2" id="param_id_{{$arch['param_id']}}"  class="progresszhouqi8" value="{{$progress_process[$arch['param_id']]}}"  name="arch_duration_plan[{{$arch['param_id']}}]" style="padding:4px 0;color:red" onclick="key(this)" onchange='selectzhouqi("{{$v->sub_arch_id}}","{{$k}}",this)'>
                                                                            @else
                                                                                <input type="text" is_synchro="2" id="param_id_{{$arch['param_id']}}"  class="progresszhouqi8"  name="arch_duration_plan[{{$arch['param_id']}}]" style="padding:4px 0;color:red"  onclick="key(this)" onchange='selectzhouqi("{{$v->sub_arch_id}}","{{$k}}",this)'>
                                                                            @endif
                                                                        </div>
                                                                    @endif

                                                                </div>
                                                            </div>
                                                        </div>
                                                    @endforeach
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif

                                </tbody>
                            </table>

                            <div class="clearfix"></div>
                            <table class="layui-table layui-form">
                                <tbody>
                                <tr>
                                    <td class="pro-title">施工总周期(天)</td>
                                    <td><input type="text" class="progress_all_period span12 notempty" value="{{isset($progress_info->progress_all_period )?$progress_info->progress_all_period :''}}"  name="progress_all_period"  ></td>
                                    <td class="pro-title">流程周期(天)</td>
                                    <td><input type="text" class="progress_period span12 notempty" value="{{isset($progress_info->progress_period )?$progress_info->progress_period :''}}"  name="progress_period"  ></td>
                                    <td class="pro-title">同步周期(天)</td>
                                    <td><input type="text" class="progress_synchronization_period span12 notempty" value="{{isset($progress_info->progress_synchronization_period )?$progress_info->progress_synchronization_period :''}}"  name="progress_synchronization_period"  ></td>
                                    <td class="pro-title">施工总工时(天)</td>
                                    <td><input type="text" class="progress_work_hours span12 notempty" value="{{isset($progress_info->progress_work_hours )?$progress_info->progress_work_hours :''}}"  name="progress_work_hours"  ></td>
                                </tr>
                                </tbody>
                            </table>


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
                            <div style="color: red">
                                注：保存后施工进度管理中的数据将被清除，请谨慎操作
                            </div>

                        </div>
                    </div>

                    </form>

                </div>
            </div>

        </div>
    </div>


    <script>
        function submitStatus() {
            sta =$('#project_status').val();
            if(sta == 0){
                showMsg('当前状态未更改，不能提交')
                return false;
            }
            return true;
        }
        function showMsg(str){
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(str);
            });
        }
        //日期选择器
        layui.use('laydate', function() {
            var laydate = layui.laydate;
            //常规用法
            @foreach($engin_arch as $val)
            laydate.render({
                elem: '#progress_start_time_{{$val->sub_arch_id}}',
                done: function(value, date, endDate){
                    changeProgress({{$val->sub_arch_id}});
                }
            });
            laydate.render({
                elem: '#progress_end_time_{{$val->sub_arch_id}}',
                done: function(value, date, endDate){
                    changeProgress({{$val->sub_arch_id}});}
            });
            @endforeach
            laydate.render({
                elem: '#progress_start_time_0',
                done: function(value, date, endDate){
                    changeProgress(0);
                }
            });
            laydate.render({
                elem: '#progress_end_time_0',
                done: function(value, date, endDate){
                    changeProgress(0);}
            });
        });
        //更改周期信息
        function changeProgress(id) {
            //console.log(id)
            starttime =$('#progress_start_time_'+id).val();
            endtime =$('#progress_end_time_'+id).val();
            console.log(starttime);
            console.log(endtime);
            if (starttime == "" || endtime == "") {
                $("#progress_duration_"+id).val(0);
            } else {
                var startNum = parseInt(starttime.replace(/-/g, ''), 10);
                var endNum = parseInt(endtime.replace(/-/g, ''), 10);
                if (startNum > endNum) {
                    showMsg("完成时间不能在开始时间之前！");
                    $("#progress_duration_"+id).val(0);
                } else {
                    diff =DateDiff(starttime, endtime);
                    $('#shijian_'+id).html(starttime +'至'+endtime);
                    $('#zhouqi_'+id).html(diff);
                    $("#progress_duration_"+id).val(diff);  //调用/计算两个日期天数差的函数，通用
                }
            }
        }
        //相差的天数
        function DateDiff(sDate1, sDate2) {  //sDate1和sDate2是yyyy-MM-dd格式

            var aDate, oDate1, oDate2, iDays;
            aDate = sDate1.split("-");
            oDate1 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0]);  //转换为yyyy-MM-dd格式
            aDate = sDate2.split("-");
            oDate2 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0]);
            iDays = parseInt(Math.abs(oDate1 - oDate2) / 1000 / 60 / 60 / 24)+1; //把相差的毫秒数转换为天数
            return iDays;  //返回相差天数
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
        function selectzhouqi(archid,xuhaoid,th) {
           $("#xuhao_"+archid+'_'+xuhaoid).prop('checked','checked');
            progress_all_period=0;
            progress_period=0;
            progress_synchronization_period=0;
            progress_work_hours=0;
            $('.progresszhouqi4:checked').each(function(){
                thid =$(this).val();
                paramid =$('#param_id_'+thid).val();
                is_synchro =$('#param_id_'+thid).attr('is_synchro');
                if(is_synchro ==1){
                    progress_all_period = progress_all_period *1 + paramid *1;
                }else{
                    progress_synchronization_period=progress_synchronization_period*1 +paramid *1;
                }
                progress_work_hours = progress_work_hours*1 + paramid *1;
                console.log(thid);
            });
            progress_period =progress_all_period;
            $('.progress_all_period').val(progress_all_period);
            $('.progress_period').val(progress_period);
            $('.progress_synchronization_period').val(progress_synchronization_period);
            $('.progress_work_hours').val(progress_work_hours);

            key(th)
        }

        function form_submit() {
            var sum=0;
            $(".notempty").each(function(){
                if($(this).val()){
                }else{
                    $(this).css('background','orange');
                    sum=1;
                }
            });

            $('.progresszhouqi4:checked').each(function(){
                thid =$(this).val();
                paramid =$('#param_id_'+thid).val();
                if(paramid =='' || paramid ==0){
                    $('#param_id_'+thid).css('background','orange');
                    sum=1;
                }
                console.log(thid);
            });
            if(sum == 1){
                showMsg('请将内容补充完全再提交')
                return false;
            }
            return true;
        }

        //点击文本框设置背景色
        $("input").focus(function(){
            $(this).css("background-color","#fff");
        });




    </script>

@endsection
