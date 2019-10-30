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

                            <div class="title">
                                <span class="btn btn-info">施工组织统筹管理</span>
                            </div>

                            @if(((in_array(30010101,$pageauth) && $engineering->progress_uid == $uid ) || in_array(30010101,$manageauth)))

                                <div class="title" style="float: right;">
                                    <a href="/progress/editProgressConstrucManage/{{$engin_id}}">
                                    <label for="L_repass" class="layui-form-label"></label>
                                    <button class="btn btn-success" lay-filter="add" type="submit" lay-submit="" >修改/编辑</button>
                                    </a>
                                </div>
                            @endif
                            <div  style="font-size: 16px;     text-align: center;" >
                                <b>{{$project->project_name}}</b>
                            </div>
                        </div>
                    </div>

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
                                    <td >{{isset($progress_info->construction_accommodation)?$progress_info->construction_accommodation:''}}</td>
                                    <td class="pro-title">场地操作平台搭建条件(脚手架/安装平台)</td>
                                    <td>{{isset($progress_info->construction_scaffolding)?$progress_info->construction_scaffolding:''}}</td>
                                    <td class="pro-title">场地大型施工机械使用条件(起重机/挖掘机)</td>
                                    <td colspan="3">{{isset($progress_info->construction_crane)?$progress_info->construction_crane:''}}</td>
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
                                    <td>{{isset($progress_info->construction_leader)?$progress_info->construction_leader:''}}</td>
                                    <td>{{isset($progress_info->construction_phone)?$progress_info->construction_phone:''}}</td>
                                    <td>{{isset($progress_info->construction_people_number)?$progress_info->construction_people_number:''}}</td>
                                    <td>{{isset($progress_info->construction_first_people)?$progress_info->construction_first_people:''}}</td>
                                    <td>{{isset($progress_info->construction_max_people)?$progress_info->construction_max_people:''}}</td>
                                    <td>{{isset($progress_info->construction_min_people)?$progress_info->construction_min_people:''}}</td>
                                </tr>
                                <tr>
                                    <td>项目安全员人数</td>
                                    <td colspan="2">安全员姓名</td>
                                    <td>项目质检员人数</td>
                                    <td colspan="2">质检员姓名</td>
                                </tr>
                                <tr>
                                    <td>{{isset($progress_info->security_people_number)?$progress_info->security_people_number:''}}</td>
                                    <td colspan="2">{{isset($progress_info->security_people_name)?$progress_info->security_people_name:''}}</td>
                                    <td>{{isset($progress_info->inspector_number)?$progress_info->inspector_number:''}}</td>
                                    <td colspan="2">{{isset($progress_info->inspector)?$progress_info->inspector:''}}</td>
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
                                    <td>系统工程名称</td>
                                    <td>施工开始时间(计划)</td>
                                    <td>施工完成时间(计划)</td>
                                    <td>施工周期(天)</td>
                                </tr>

                                @if(!empty($engin_arch))
                                    @foreach($engin_arch as $v)
                                    <tr>
                                        <td>{{$v->system_name}}:{{$v->sub_system_name}}
                                        <input type="hidden" name="sub_arch_id[{{ $v->sub_arch_id }}]" value="{{$v->sub_arch_id}}">
                                        </td>
                                        <td>
                                            {{isset($progress_duration[$v->sub_arch_id]->progress_start_time)?$progress_duration[$v->sub_arch_id]->progress_start_time:''}}
                                        </td>
                                        <td>
                                            {{isset($progress_duration[$v->sub_arch_id]->progress_end_time)?$progress_duration[$v->sub_arch_id]->progress_end_time:''}}
                                        </td>
                                        <td>
                                            {{isset($progress_duration[$v->sub_arch_id]->progress_duration)?$progress_duration[$v->sub_arch_id]->progress_duration:''}}
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
                                    <td colspan="2">
                                        <label style="display: inline;margin: 5px;">
                                            <input type="radio" name="progress_type" value="1" style="margin: auto;">毛坯房不含基础
                                        </label>

                                        <label style="display: inline;margin: 5px">
                                            <input type="radio" name="progress_type"  checked="checked" value="2" style="margin: auto;">毛坯房含基础
                                        </label>

                                    </td>
                                </tr>

                                @if(!empty($engin_arch))
                                    @foreach($engin_arch as $v)
                                        <tr >
                                            <td style="min-width: 320px">
                                                <div class="btn btn-info"> {{$v->system_name}}</div>
                                                 <br/>
                                               <div class="btn btn-info" style="margin-left: 20px"> &nbsp;{{$v->sub_system_name}}</div>
                                                <br/>
                                                <div class="btn btn-default" style="margin-left: 40px">施工时间:<span id="shijian_{{$v->sub_arch_id}}">
                                                        {{isset($progress_duration[$v->sub_arch_id]->progress_start_time)?$progress_duration[$v->sub_arch_id]->progress_start_time:''}}
                                                       至 {{isset($progress_duration[$v->sub_arch_id]->progress_end_time)?$progress_duration[$v->sub_arch_id]->progress_end_time:''}}
                                                    </span></div>
                                                <br/>
                                                <div class="btn btn-default" style="margin-left: 40px">施工周期(天):<span id="zhouqi_{{$v->sub_arch_id}}">
                                                     {{isset($progress_duration[$v->sub_arch_id]->progress_duration)?$progress_duration[$v->sub_arch_id]->progress_duration:''}}
                                                    </span></div>


                                                <input type="hidden" name="sub_arch_id[{{ $v->sub_arch_id }}]" value="{{$v->sub_arch_id}}">
                                            </td>
                                            <td >
                                                @if(isset($paramsConf[$v->sub_arch_id]))
                                                    @foreach($paramsConf[$v->sub_arch_id] as $k=>$arch)
                                                        @if(isset($progress_process[$arch['param_id']]))
                                                        <div style="float: left">
                                                            @if($k !=0)
                                                            <img src="/img/a.png" style="float: left;height: 30px;margin-top: 32px;margin-bottom: 32px;">
                                                            @endif
                                                            <div class="progresszhouqi1" style="width:{{$arch['length']*16 +20}}px;min-width: 140px">
                                                                <div class="" style="">
                                                                    <label class="progresszhouqi3  btn btn-info" style="">
                                                                            {{$arch['name']}}
                                                                    </label>
                                                                </div>
                                                                <div  class="progresszhouqi5" style="">

                                                                    @if($arch['is_synchro'] ==1)
                                                                        <div class="progresszhouqi6" style="">周期(天)</div>
                                                                        <div class="progresszhouqi7" style="">
                                                                            <input type="text" class="progresszhouqi8" disabled="disabled" value="{{$progress_process[$arch['param_id']]}}" name="arch_duration_plan[{{$arch['param_id']}}]" style="padding:4px 0;" onclick="key(this)">
                                                                    @else
                                                                        <div class="progresszhouqi6" style="color:red">周期(天)</div>
                                                                        <div class="progresszhouqi7" style="">
                                                                            <input type="text" class="progresszhouqi8" disabled="disabled" value="{{$progress_process[$arch['param_id']]}}" name="arch_duration_plan[{{$arch['param_id']}}]" style="padding:4px 0;" onclick="key(this)">
                                                                        </div>
                                                                    @endif

                                                                </div>
                                                            </div>
                                                            </div>
                                                        </div>
                                                        @endif
                                                    @endforeach
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif

                                </tbody>
                            </table>


                            <div class="layui-form-item" style="float: right;clear: left">
                                @if($engineering->status ==1)
                                    <a href="/progress/progressConduct/{{$engineering->project_id}}">
                                        <label for="L_repass" class="layui-form-label"></label>
                                        <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                                    </a>
                                @else
                                    <a href="/progress/progressCompleted/{{$engineering->project_id}}">
                                        <label for="L_repass" class="layui-form-label"></label>
                                        <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                                    </a>
                                @endif
                            </div>

                            <div class="clearfix"></div>

                        </div>
                    </div>
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

    </script>

@endsection
