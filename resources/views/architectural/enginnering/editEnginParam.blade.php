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
                    <div  style="font-size: 16px;" >
                        <b>建筑设计参数配置</b>
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <form method="post" action="/architectural/postEditEnginParam/{{ $engin_id }}">
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
                                    <td >
                                        @if(isset($engin_use_time))
                                            <select name="use_time" id="use_time" class="span10 notempty" style="min-width: 80px;">
                                                @foreach($engin_use_time as $v)
                                                    @if(isset($param->use_time) && $v == $param->use_time)
                                                        <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                    @else
                                                        <option value="{{$v}}" >{{$v}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        @endif
                                    </td>
                                    <td class="pro-title">抗震设防烈度(度)</td>
                                    <td >
                                        @if(isset($engin_seismic_grade))
                                            <select name="seismic_grade" id="seismic_grade" class="span10 notempty" style="min-width: 80px;">
                                                @foreach($engin_seismic_grade as $v)
                                                    @if(isset($param->seismic_grade) && $v == $param->seismic_grade)
                                                        <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                    @else
                                                        <option value="{{$v}}" >{{$v}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        @endif
                                    </td>
                                    <td class="pro-title">屋面防水等级</td>
                                    <td >
                                        @if(isset($engin_waterproof_grade))
                                            <select name="waterproof_grade" id="waterproof_grade" class="span10 notempty" style="min-width: 80px;">
                                                @foreach($engin_waterproof_grade as $v)
                                                    @if(isset($param->waterproof_grade) && $v == $param->waterproof_grade)
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
                                    <td class="pro-title">建筑耐火等级</td>
                                    <td >
                                        @if(isset($engin_refractory_grade))
                                            <select name="refractory_grade" id="refractory_grade" class="span10 notempty" style="min-width: 80px;">
                                                @foreach($engin_refractory_grade as $v)
                                                    @if(isset($param->refractory_grade) && $v == $param->refractory_grade)
                                                        <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                    @else
                                                        <option value="{{$v}}" >{{$v}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        @endif
                                    </td>
                                    <td class="pro-title">建筑隔声等级</td>
                                    <td >
                                        @if(isset($engin_insulation_sound_grade))
                                            <select name="insulation_sound_grade" id="insulation_sound_grade" class="span10 notempty" style="min-width: 80px;">
                                                @foreach($engin_insulation_sound_grade as $v)
                                                    @if(isset($param->insulation_sound_grade) && $v == $param->insulation_sound_grade)
                                                        <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                    @else
                                                        <option value="{{$v}}" >{{$v}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        @endif
                                    </td>
                                    <td class="pro-title">建筑节能标准(%)</td>
                                    <td >
                                        @if(isset($engin_energy_grade))
                                            <select name="energy_grade" id="energy_grade" class="span10 notempty" style="min-width: 80px;">
                                                @foreach($engin_energy_grade as $v)
                                                    @if(isset($param->energy_grade) && $v == $param->energy_grade)
                                                        <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                    @else
                                                        <option value="{{$v}}" >{{$v}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        @endif
                                    </td>
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
                                    <td ><input type="text" name="basic_wind_pressure" id="use_time" value="{{isset($param->basic_wind_pressure)?$param->basic_wind_pressure:''}}" lay-skin="primary" class="notempty span8" ></td>
                                    <td class="pro-title">设计基本雪压(kN/m²)</td>
                                    <td ><input type="text" name="basic_snow_pressure" id="seismic_grade" value="{{isset($param->basic_snow_pressure)?$param->basic_snow_pressure:''}}" lay-skin="primary" class="notempty span8" ></td>
                                </tr>
                                <tr>
                                    <td class="pro-title">屋面活载荷(kN/m²)</td>
                                    <td ><input type="text" name="roof_load" id="waterproof_grade" value="{{isset($param->roof_load)?$param->roof_load:''}}" lay-skin="primary" class="notempty span8" ></td>
                                    <td class="pro-title">楼面活载荷(kN/m²)</td>
                                    <td ><input type="text" name="floor_load" id="waterproof_grade" value="{{isset($param->floor_load)?$param->floor_load:''}}" lay-skin="primary" class="notempty span8" ></td>
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
                                <td><span id="all_house_area">{{$engineering->build_area}}</span>
                                    <input type="hidden" class="span8 total_area" value="{{$engineering->build_area}}" name="total_area" onclick="key(this)"></td>
                                <td><span class="area_content" style="color: red"></span></td>
                            </tr>
                            <tr>
                                <td  class="pro-title">建筑占地尺寸 长（m）</td>
                                <td>{{$engineering->build_length}}</td>
                                <td class="pro-title">建筑占地尺寸 宽（m）</td>
                                <td>{{$engineering->build_width}}</td>
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
                                <td><input type="text" class="span8 notempty" value="{{ isset($storey_height[$i-1])?$storey_height[$i-1]:'' }}" name="storey_height[]" onclick="key(this)"></td>
                                <td><input type="text" class="span8 notempty" value="{{ isset($house_height[$i-1])?$house_height[$i-1]:'' }}"  name="house_height[]"  onclick="key(this)"></td>
                                <td><input type="text" class="span8 notempty house_area" value="{{ isset($house_area[$i-1])?$house_area[$i-1]:'' }}"  name="house_area[]" onclick="key(this)"  onchange="add_total_area(this)"></td>
                            </tr>
                            @endfor

                            </tbody>
                        </table>
                            <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="4">
                                    <span class="btn btn-info">建筑房间功能布局</span>
                                    <span class="title"style="float: right;">
                                        <a class="btn btn-success" onclick="add_room()" ><i class="layui-icon">添加房间 +</i></a>
                                    </span>
                                </th>
                            </tr>
                            </thead>
                            <tbody id="addroom">
                            <tr>
                                <td class="pro-title">位置</td>
                                <td class="pro-title">房间名称</td>
                                <td  class="pro-title">室内净建筑面积要求(m²)</td>
                                <td class="pro-title">操作</td>
                            </tr>
                            @if(isset($room_position) && is_array($room_position))
                            @foreach($room_position as $k=>$v)
                            <tr>
                                <td>
                                    <select name="room_position[]" id="room_position" class="span10 notempty" style="min-width: 80px;">
                                        @for ($i = 1; $i <= $engineering->build_floor; $i++)
                                            @if(  $v == $i.'层')
                                                <option value="{{$i}}层" selected="selected" >{{$i}}层</option>
                                            @else
                                                <option value="{{$i}}层" >{{$i}}层</option>
                                            @endif
                                        @endfor
                                    </select>
                                </td>
                                <td >
                                    @if(isset($engin_room_name))
                                        <select name="room_name[]" id="room_name" class="span10 notempty" style="min-width: 80px;">
                                            @foreach($engin_room_name as $v)
                                                @if(isset($room_name[$k]) && $v == $room_name[$k])
                                                    <option value="{{$v}}" selected="selected" >{{$v}}</option>
                                                @else
                                                    <option value="{{$v}}" >{{$v}}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    @endif
                                </td>
                                <td ><input type="text" name="room_area[]" value="{{isset($room_area[$k])?$room_area[$k]:''}}" id="room_area"  lay-skin="primary" class="notempty span8" ></td>
                                <td><a  class="btn btn-danger delete_zixitong" onclick="deleteTrRow(this)">删除</a>
                                </td>
                            </tr>
                            @endforeach
                            @endif

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


    <script>

        var buildarea = {{$engineering->build_area}};
        function add_room() {
            //添加事件
            str =`<tr>
                    <td >
                        <select name="room_position[]" id="room_position" class="span10 notempty" style="min-width: 80px;">
                        @for ($i = 1; $i <= $engineering->build_floor; $i++)
                            <option value="{{$i}}层" >{{$i}}层</option>
                        @endfor
                        </select>
                    </td>
                    <td >
                    @if(isset($engin_room_name))
                    <select name="room_name[]" id="room_name" class="span10 notempty" style="min-width: 80px;">
                        @foreach($engin_room_name as $v)
                        <option value="{{$v}}" >{{$v}}</option>
                        @endforeach
                    </select>
                    @endif
                    </td>
                    <td ><input type="text" name="room_area[]" id="waterproof_grade"  lay-skin="primary" class="notempty span8"></td>
                    <td><a  class="btn btn-danger delete_zixitong" onclick="deleteTrRow(this)">删除</a>
                    </td>
                </tr>`;
            $("#addroom").append(str);

        }

        function add_total_area(th) {
            sum=0;
            $(".house_area").each(function(){
                sum =sum *1 + $(this).val() * 1;
            });
            console.log(sum);
            $('#all_house_area').html(sum)
            $('.total_area').val(sum);

            if(buildarea != sum){
                $('.area_content').html('<img src="/img/warning.png" style="width: 25px">建筑面积设计发生变化，请联系销售人员更改工程建筑面积')
            }else{
                $('.area_content').html('');
            }

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
        //删除材料
        function deleteTrRow(tr){
            $(tr).parent().parent().remove();
        }


        //显示提示信息
        function showMsg(str){
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(str);
            });
        }

        //提交时的数据验证
        function form_submit(){
            var sum=0;
            $(".notempty").each(function(){
                if($(this).val()){
                }else{
                    $(this).css('background','orange');
                    sum=1;
                }
            });
            if(sum == 1){
                showMsg('请将内容补充完全再提交')
                return false;
            }

            if(buildarea != $('.total_area').val()){
                if(confirm("建筑面积设计发生变化，请联系销售人员更改工程建筑面积？")){
                    return true;
                }
                return false;
            }

            return true;
        }

        //点击文本框设置背景色
        $("input").focus(function(){
            $(this).css("background-color","#fff");
        });


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
