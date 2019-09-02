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

                        <form method="post" action="/budget/updateProjectStatus/{{$engin_id}}">
                            <table class="layui-table layui-form">

                                <tbody>
                                <tr>
                                    <td  class="pro-title">项目(子工程)状态</td>
                                    <td>
                                        <select name="project_status" id="project_status" class="input-medium span8" style="min-width: 80px">
                                            @if($engineering->status ==0)
                                                <option value="0" >洽谈项目</option>
                                                <option value="1" >实施项目</option>
                                                <option value="2" >竣工项目</option>
                                                <option value="4" >终止项目</option>
                                            @elseif($engineering->status == 1)
                                                <option value="1" >实施项目</option>
                                                <option value="2" >竣工项目</option>
                                                <option value="4" >终止项目</option>
                                            @endif
                                        </select>
                                    </td>
                                    <td>
                                        <div  style=" float: left;margin-right:10% ">
                                            <label for="L_repass" ></label>
                                            <button class="btn btn-success" lay-filter="add" type="submit" onclick='return submitStatus()'  lay-submit="">确认/保存</button>
                                        </div>
                                        <div  style="float: left;clear: right">
                                            <a href="javascript:history.go(-1)">
                                                <label for="L_repass" ></label>
                                                <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </form>



                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="widget">
                <div class="widget-header" style="text-align: center">
                    <div  style="font-size: 16px;" >
                        <b>工程预算清单</b>
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
                                    <td ><input type="text" name="use_time" id="use_time" value="{{isset($budget->use_time)?$budget->use_time:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">抗震设防烈度(级)</td>
                                    <td ><input type="text" name="seismic_grade" id="seismic_grade" value="{{isset($budget->seismic_grade)?$budget->seismic_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">屋面防水等级</td>
                                    <td ><input type="text" name="waterproof_grade" id="waterproof_grade" value="{{isset($budget->waterproof_grade)?$budget->waterproof_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                </tr>
                                <tr>
                                    <td class="pro-title">建筑耐火等级</td>
                                    <td ><input type="text" name="refractory_grade" id="waterproof_grade" value="{{isset($budget->waterproof_grade)?$budget->waterproof_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">建筑隔声等级</td>
                                    <td ><input type="text" name="insulation_sound_grade" id="waterproof_grade" value="{{isset($budget->waterproof_grade)?$budget->waterproof_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">建筑节能等级</td>
                                    <td ><input type="text" name="energy_grade" id="waterproof_grade" value="{{isset($budget->waterproof_grade)?$budget->waterproof_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
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
                                    <td ><input type="text" name="basic_wind_pressure" id="use_time" value="{{isset($budget->use_time)?$budget->use_time:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">设计基本雪压(千牛/平方米)</td>
                                    <td ><input type="text" name="basic_snow_pressure" id="seismic_grade" value="{{isset($budget->seismic_grade)?$budget->seismic_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                </tr>
                                <tr>
                                    <td class="pro-title">屋面活载荷(千牛/平方米)</td>
                                    <td ><input type="text" name="roof_load" id="waterproof_grade" value="{{isset($budget->waterproof_grade)?$budget->waterproof_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
                                    <td class="pro-title">楼面活载荷(千牛/平方米)</td>
                                    <td ><input type="text" name="floor_load" id="waterproof_grade" value="{{isset($budget->waterproof_grade)?$budget->waterproof_grade:''}}" lay-skin="primary" class="notempty span8" onclick="return key(this)"></td>
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
                                <td  class="pro-title">建筑层数</td>
                                <td><input type="text" class="span4 notempty" value="{{isset($storey_height)?$storey_height:''}}" name="floors" onclick="key(this)"></td>
                                <td class="pro-title">总建筑面积（平方米）</td>
                                <td><input type="text" class="span4 notempty" value="{{isset($storey_height)?$storey_height:''}}" name="total_area" onclick="key(this)"></td>
                            </tr>
                            <tr>
                                <td  class="pro-title">长（米）</td>
                                <td><input type="text" class="span4 notempty" value="{{isset($storey_height)?$storey_height:''}}" name="floor_height" onclick="key(this)"></td>
                                <td class="pro-title">宽（米）</td>
                                <td><input type="text" class="span4 notempty" value="{{isset($storey_height)?$storey_height:''}}" name="floor_width" onclick="key(this)"></td>
                            </tr>
                            <tr>
                                <td  class="pro-title">楼层信息</td>
                                <td class="pro-title">建筑高度（米）</td>
                                <td class="pro-title">室内净高（米）</td>
                                <td class="pro-title">建筑面积（平方米）</td>
                            </tr>

                            @for($i =1;$i <= $engineering->build_floor;$i++ )
                            <tr >
                                <td class="pro-title">第{{$i}}层</td>
                                <td><input type="text" class="span4 notempty" value="{{isset($storey_height[$i-1])?$storey_height[$i-1]:''}}" name="storey_height[]" onclick="key(this)"></td>
                                <td><input type="text" class="span4 notempty" value="{{isset($house_height[$i-1])?$house_height[$i-1]:''}}"  name="house_height[]"  onclick="key(this)"></td>
                                <td><input type="text" class="span4 notempty" value="{{isset($house_area[$i-1])?$house_area[$i-1]:''}}"  name="house_area[]"  onclick="key(this)"></td>
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
                                <td  class="pro-title">面积</td>
                                <td class="pro-title">操作</td>
                            </tr>
                            <tr>
                                <td ><input type="text" name="room_position[]" id="waterproof_grade"  lay-skin="primary" class="notempty span8" ></td>
                                <td ><input type="text" name="room_name[]" id="waterproof_grade"  lay-skin="primary" class="notempty span8" ></td>
                                <td ><input type="text" name="room_area[]" id="waterproof_grade"  lay-skin="primary" class="notempty span8" ></td>
                                <td><a  class="btn btn-danger delete_zixitong" onclick="deleteTrRow(this)">删除</a>
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

                        <div class="clearfix"></div>

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
            return true;
        }

        //点击文本框设置背景色
        $("input").focus(function(){
            $(this).css("background-color","#fff");
        });

    </script>

@endsection
