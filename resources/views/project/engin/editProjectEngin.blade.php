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
                <a href="/project/projectEnginStart/{{$project->id}}">
                    <div class="fs1" aria-hidden="true" data-icon="">洽谈工程 ({{$project->start_count}})</div>
                </a>
            </div>
            @endif
            @if(in_array(1503,$pageauth))
            <div class="metro-nav-block nav-block-green">
                <a href="/project/projectEnginConduct/{{$project->id}}">
                    <div class="fs1" aria-hidden="true" data-icon="">实施工程 ({{$project->conduct_count}})</div>
                </a>
            </div>
            @endif
            @if(in_array(1504,$pageauth))
            <div class="metro-nav-block nav-block-yellow">
                <a href="/project/projectEnginCompleted/{{$project->id}}">
                    <div class="fs1" aria-hidden="true" data-icon="">竣工工程 ({{$project->completed_count}})</div>
                </a>
            </div>
            @endif
            @if(in_array(1505,$pageauth))
            <div class="metro-nav-block nav-block-red">
                <a href="/project/projectEnginTermination/{{$project->id}}">
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
                        @if(in_array(1501,$pageauth) || in_array(1501,$manageauth))
                            <a class="btn btn-success" title="新增工程"  href="/project/createdProjectEngin/{{$project->id}}">
                                <i class="layui-icon">新增工程</i>
                            </a>
                        @endif
                    </div>
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        {{$project->project_name}}
                    </div>
                </div>
                <div class="widget-body">
                    <form method="post" action="/project/updateProjectStatus/{{$engin->id}}">
                        <table class="layui-table layui-form">

                            <tbody>
                            <tr>
                                <td  class="pro-title">项目(子工程)状态</td>
                                <td>
                                    <select name="project_status" id="project_status" class="input-medium span8" style="min-width: 80px">
                                        <option value="1" >实施工程</option>
                                        <option value="2" >竣工工程</option>
                                        <option value="4" >终止工程</option>
                                    </select>
                                </td>
                                <td>
                                    <div class="layui-form-item" style="clear: left">
                                        <label for="L_repass" ></label>
                                        <button class="btn btn-success" lay-filter="add" type="submit" onclick='return submitStatus()'  lay-submit="">确认/保存</button>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                    <div class="clearfix"></div>

                    <form class="form-horizontal no-margin" action="/project/postProjectEngin/{{$project->id}}" method="post">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr><th colspan="8"><span class="btn btn-info">工程信息</span></th></tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-title">工程名称<input type="hidden"  name="engin_id" value="{{$engin->id}}" placeholder=""></td>
                                <td> <input class="span12" type="text"  name="engineering_name" value="{{$engin->engineering_name}}" placeholder=""></td>
                                <td class="pro-title">工程地址</td>
                                <td><input class="span12" type="text" name="engin_address" value="{{$engin->engin_address}}" placeholder=""></td>
                                <td class="pro-title">建筑总面积（m²）</td>
                                <td><input class="span12" type="text" name="build_area" onclick="key(this)"  value="{{$engin->build_area}}" placeholder=""></td>
                            </tr>
                            <tr>
                                <td class="pro-title">建筑总层数</td>
                                <td><input class="span12" type="text" name="build_floor"  onclick="key(this)" value="{{$engin->build_floor}}" placeholder=""></td>
                                <td class="pro-title">建筑总高度（m）</td>
                                <td><input class="span12" type="text" name="build_height" onclick="key(this)"  value="{{$engin->build_height}}" placeholder=""></td>
                                <td class="pro-title">室内净高（最小）（m）</td>
                                <td><input class="span12" type="text" name="indoor_height" onclick="key(this)"  value="{{$engin->indoor_height}}" placeholder=""></td>
                            </tr>
                            <tr>
                                <td class="pro-title">建筑数量(栋)</td>
                                <td><input class="span12" type="text" name="build_number" onclick="key(this)"  value="{{$engin->build_number}}" placeholder=""></td>
                                <td class="pro-title">销售负责人</td>
                                <td>
                                    <select name="sale_uid" id="sale_uid" class="input-medium span12 search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 2)
                                                @if($u->id == $project->sale_uid)
                                                    <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                                @else
                                                    <option value="{{$u->id}}" >{{$u->name}}</option>
                                                @endif
                                            @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td class="pro-title">设计负责人</td>
                                <td> <select name="design_uid" id="design_uid" class="input-medium span12 search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 6)
                                                @if($u->id == $project->design_uid)
                                                    <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                                @else
                                                    <option value="{{$u->id}}" >{{$u->name}}</option>
                                                @endif
                                            @endif
                                        @endforeach
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="pro-title">预算负责人</td>
                                <td>
                                    <select name="budget_uid" id="budget_uid" class="input-medium span12 search-query notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 3)
                                                @if($u->id == $project->budget_uid)
                                                    <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                                @else
                                                    <option value="{{$u->id}}" >{{$u->name}}</option>
                                                @endif
                                            @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td class="pro-title">合约负责人</td>
                                <td><select name="technical_uid" id="technical_uid" class="input-medium span12 search-query  notempty" style="min-width: 80px">
                                        <option value="0" ></option>
                                        @foreach($userList as $u)
                                            @if($u->department_id == 8)
                                                @if($u->id == $project->technical_uid)
                                                    <option value="{{$u->id}}" selected="selected">{{$u->name}}</option>
                                                @else
                                                    <option value="{{$u->id}}" >{{$u->name}}</option>
                                                @endif
                                            @endif
                                        @endforeach
                                    </select>
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="clearfix"></div>
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

                            @foreach($dynamic as $item)
                                <tr>
                                    <td  class="pro-title">
                                        <input type="hidden"  name="dynamic_id[]" class="span8"  value="{{$item->id}}" lay-skin="primary" >
                                        <input type="text"  name="dynamic_date[]" placeholder="yyyy-MM-dd" class="span8 notempty dynamic_date"  value="{{$item->dynamic_date}}" lay-skin="primary" >
                                    </td>
                                    <td >
                                        <input type="text"  name="dynamic_content[]" class="span12 notempty"  value="{{$item->dynamic_content}}" lay-skin="primary" >
                                    </td>
                                    <td></td>
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

                    </form>
                    <div class="clearfix"></div>
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


        //日期選擇
        layui.use('laydate', function() {
            var laydate = layui.laydate;
            lay('.dynamic_date').each(function(){
                laydate.render({
                    elem: this
                    ,trigger: 'click'
                });
            });
        });
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
