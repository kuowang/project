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
                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="6"><span class="btn btn-info">建筑设计指标</span></th>
                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td class="pro-title">建筑使用寿命(年)</td>
                                    <td ><input type="text" name="use_time" id="use_time" value="{{isset($param->use_time)?$param->use_time:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">抗震设防烈度(度)</td>
                                    <td ><input type="text" name="seismic_grade" id="seismic_grade" value="{{isset($param->seismic_grade)?$param->seismic_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">屋面防水等级</td>
                                    <td ><input type="text" name="waterproof_grade" id="waterproof_grade" value="{{isset($param->waterproof_grade)?$param->waterproof_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                </tr>
                                <tr>
                                    <td class="pro-title">建筑耐火等级</td>
                                    <td ><input type="text" name="refractory_grade" id="refractory_grade" value="{{isset($param->refractory_grade)?$param->refractory_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">建筑隔声等级</td>
                                    <td ><input type="text" name="insulation_sound_grade" id="insulation_sound_grade" value="{{isset($param->insulation_sound_grade)?$param->insulation_sound_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">建筑节能标准(%)</td>
                                    <td ><input type="text" name="energy_grade" id="energy_grade" value="{{isset($param->energy_grade)?$param->energy_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
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
                                    <td ><input type="text" name="basic_wind_pressure" id="use_time" value="{{isset($param->basic_wind_pressure)?$param->basic_wind_pressure:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">设计基本雪压(kN/m²)</td>
                                    <td ><input type="text" name="basic_snow_pressure" id="seismic_grade" value="{{isset($param->basic_snow_pressure)?$param->basic_snow_pressure:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                </tr>
                                <tr>
                                    <td class="pro-title">屋面活载荷(kN/m²)</td>
                                    <td ><input type="text" name="roof_load" id="waterproof_grade" value="{{isset($param->roof_load)?$param->roof_load:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">楼面活载荷(kN/m²)</td>
                                    <td ><input type="text" name="floor_load" id="waterproof_grade" value="{{isset($param->floor_load)?$param->floor_load:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
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
                                <td><input type="text" class="span8 notempty" value="{{isset($param->floor_height)?$param->floor_height:''}}" name="floor_height" onclick="key(this)"></td>
                                <td class="pro-title">宽（m）</td>
                                <td><input type="text" class="span8 notempty" value="{{isset($param->floor_width)?$param->floor_width:''}}" name="floor_width" onclick="key(this)"></td>
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
                                <td ><input type="text" name="room_position[]" value="{{$v}}" id="waterproof_grade"  lay-skin="primary" class="notempty span8" ></td>
                                <td ><input type="text" name="room_name[]" value="{{isset($room_name[$k])?$room_name[$k]:''}}" id="waterproof_grade"  lay-skin="primary" class="notempty span8" ></td>
                                <td ><input type="text" name="room_area[]" value="{{isset($room_area[$k])?$room_area[$k]:''}}" id="waterproof_grade"  lay-skin="primary" class="notempty span8" ></td>
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
                    <td ><input type="text" name="room_position[]" id="waterproof_grade"  lay-skin="primary" class="notempty span8" ></td>
                    <td ><input type="text" name="room_name[]" id="waterproof_grade"  lay-skin="primary" class="notempty span8" ></td>
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

    </script>

@endsection
