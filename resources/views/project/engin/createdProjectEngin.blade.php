@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

<div class="left-sidebar">
    <div class="row-fluid">
        <div class="metro-nav">
            @if(in_array(1502,$pageauth))
            <div class="metro-nav-block nav-block-blue" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                <a href="/project/projectEnginStart/{{$id}}">
                    <div class="fs1" aria-hidden="true" data-icon="">洽谈工程 ({{$project->start_count}})</div>
                </a>
            </div>
            @endif
            @if(in_array(1503,$pageauth))
            <div class="metro-nav-block nav-block-green">
                <a href="/project/projectEnginConduct/{{$id}}">
                    <div class="fs1" aria-hidden="true" data-icon="">实施工程 ({{$project->conduct_count}})</div>
                </a>
            </div>
            @endif
            @if(in_array(1504,$pageauth))
            <div class="metro-nav-block nav-block-yellow">
                <a href="/project/projectEnginCompleted/{{$id}}">
                    <div class="fs1" aria-hidden="true" data-icon="">竣工工程 ({{$project->completed_count}})</div>
                </a>
            </div>
            @endif
            @if(in_array(1505,$pageauth))
            <div class="metro-nav-block nav-block-red">
                <a href="/project/projectEnginTermination/{{$id}}">
                    <div class="fs1" aria-hidden="true" data-icon="">终止工程 ({{$project->termination_count}})</div>
                </a>
            </div>
            @endif
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        洽谈工程<a id="dynamicTable"></a>
                    </div>
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        {{$project->project_name}}
                    </div>
                </div>
                <div class="widget-body">

                    <form class="form-horizontal no-margin" action="/project/postProjectEngin/{{$id}}" method="post">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="8"><span class="btn btn-info">工程信息</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">工程名称</td>
                                <td><input class="span12" type="text" name="engineering_name" value="{{isset($engin->engineering_name)?$engin->engineering_name:''}}" placeholder=""></td>
                                <td class="pro-title">工程地址</td>
                                <td><input class="span12" type="text" name="engin_address" value="{{isset($engin->engin_address)?$engin->engin_address:$project->province.' '.$project->city.' '.$project->county.$project->address_detail.$project->foreign_address}}" placeholder=""></td>
                                <td class="pro-title">建筑总面积（m²）</td>
                                <td><input class="span12" type="text" name="build_area" value="{{isset($engin->build_area)?$engin->build_area:''}}" onclick="key(this)" placeholder=""></td>
                            </tr>
                            <tr>
                                <td class="pro-title">建筑总层数</td>
                                <td><input class="span12" type="text" name="build_floor" value="{{isset($engin->build_floor)?$engin->build_floor:''}}"  onclick="key(this)"  placeholder=""></td>
                                <td class="pro-title">建筑总高度（m）</td>
                                <td><input class="span12" type="text" name="build_height" value="{{isset($engin->build_height)?$engin->build_height:''}}"  onclick="key(this)" placeholder=""></td>
                                <td class="pro-title">室内净高（最小）（m）</td>
                                <td><input class="span12" type="text" name="indoor_height" value="{{isset($engin->indoor_height)?$engin->indoor_height:''}}" onclick="key(this)"  placeholder=""></td>
                            </tr>
                            <tr>
                                <td class="pro-title">建筑数量(栋)</td>
                                <td><input class="span12" type="text" name="build_number" value="{{isset($engin->build_number)?$engin->build_number:''}}" onclick="key(this)"  placeholder=""></td>
                                <td colspan="4"></td>
                            </tr>

                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <table class="layui-table layui-form">
                            <thead>
                                <tr><th colspan="8"><span class="btn btn-info">负责人信息</span></th></tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="pro-title">销售负责人</td>
                                    <td>
                                        <select name="sale_uid" id="sale_uid" class="input-medium span12 search-query notempty" style="min-width: 80px">
                                            <option value="0" ></option>
                                            @foreach($userList as $u)
                                                @if($u->department_id == 2)
                                                    @if(isset($engin->sale_uid) && ($u->id == $engin->sale_uid))
                                                        <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                                    @else
                                                        <option value="{{$u->id}}" >{{$u->name}}</option>
                                                    @endif
                                                @endif
                                            @endforeach
                                        </select></td>
                                    <td class="pro-title">设计负责人</td>
                                    <td> <select name="design_uid" id="design_uid" class="input-medium span12 search-query notempty" style="min-width: 80px">
                                            <option value="0" ></option>
                                            @foreach($userList as $u)
                                                @if($u->department_id == 6)
                                                    @if(isset($engin->design_uid) && ($u->id == $engin->design_uid))
                                                        <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                                    @else
                                                        <option value="{{$u->id}}" >{{$u->name}}</option>
                                                    @endif
                                                @endif
                                            @endforeach
                                        </select>
                                    </td>

                                <td class="pro-title">预算负责人</td>
                                <td>
                                    <select name="budget_uid" id="budget_uid" class="input-medium span12 search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 3)
                                                @if(isset($engin->budget_uid) && ($u->id == $engin->budget_uid))
                                                    <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                                @else
                                                    <option value="{{$u->id}}" >{{$u->name}}</option>
                                                @endif
                                            @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td class="pro-title">合约负责人</td>
                                <td>
                                    <select name="technical_uid" id="technical_uid" class="input-medium span12 search-query  notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 8)
                                                @if(isset($engin->technical_uid) && ($u->id == $engin->technical_uid))
                                                    <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                                @else
                                                    <option value="{{$u->id}}" >{{$u->name}}</option>
                                                @endif
                                            @endif
                                        @endforeach
                                    </select></td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th colspan="2"><span class="btn btn-info">工程动态信息</span></th>
                                <th ><span class="title" style="float: right;">
                            <a class="btn btn-success" onclick="add_dongtai()"><i class="layui-icon">添加</i></a>
                        </span>
                                </th>
                            </tr>
                            </thead>
                            <tbody style="text-align: center" id="project_dongtai">
                            <tr>
                                <td style="width: 20%;">时间</td>
                                <td style="width: 70%;">动态</td>
                                <td style="width: 10%;">操作</td>
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
                    </form>

                    <div class="clearfix">
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>



    <script>
        //一般直接写在一个js文件中

        //添加事件
        function add_dongtai() {
            str ='<tr>' +
                '    <td  class="pro-title">' +
                '        <input type="hidden"  name="dynamic_id[]" class="span8 "  value="0" lay-skin="primary" >' +
                '        <input type="text"  name="dynamic_date[]"  placeholder="yyyy-MM-dd" class="span8 notempty dynamic_date"  value="" lay-skin="primary" >' +
                '    </td>' +
                '    <td >' +
                '        <input type="text"  name="dynamic_content[]" class="span12 notempty"  value="" lay-skin="primary" >' +
                '    </td>' +
                '    <td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>' +
                '</tr>';
            $("#project_dongtai").append(str);
            //添加日期点击事件
            layui.use('laydate', function() {
                var laydate = layui.laydate;
                lay('.dynamic_date').each(function(){
                    laydate.render({
                        elem: this
                        ,trigger: 'click'
                    });
                });
            });
            //点击文本框设置背景色
            $(".notempty").focus(function(){
                $(this).css("background-color","#fff");
            });
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

        //删除动态
        function deleteTrRow(tr){
            $(tr).parent().parent().remove();
        }

    </script>

@endsection
