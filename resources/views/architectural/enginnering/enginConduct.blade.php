@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
    <style type="text/css">
        .project_name{
            display: -webkit-box;
            overflow: hidden;
            text-overflow: ellipsis;
            word-wrap: break-word;
            white-space: normal !important;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }
    </style>
    @if($status == 2)
        <div class="alert alert-block alert-error fade in">
            <button data-dismiss="alert" class="close" type="button">
                ×
            </button>
            <h4 class="alert-heading">
                失败
            </h4>
            <p>
                {{$notice}}
            </p>
        </div>
    @elseif($status ==1)
        <div class="alert alert-block alert-success fade in">
            <button data-dismiss="alert" class="close" type="button">
                ×
            </button>
            <h4 class="alert-heading">
                成功!
            </h4>
            <p>
                {{$notice}}
            </p>
        </div>
    @endif

    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="metro-nav">
                @if(in_array(350001,$pageauth))
                    <div class="metro-nav-block nav-block-blue" >
                        <a href="/architectural/enginStart/{{$id}}">
                            <div class="fs1" aria-hidden="true" ><img src="/img/nav/1.png">洽谈工程
                                @if(isset($project))({{$project->start_count}}) @endif
                            </div>
                        </a>
                    </div>
                @endif
                @if(in_array(350002,$pageauth))
                    <div class="metro-nav-block nav-block-green" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                        <a href="/architectural/enginConduct/{{$id}}">
                            <div class="fs1"  ><img src="/img/nav/2.png">实施工程
                                @if(isset($project))({{$project->conduct_count}})@endif
                            </div>
                        </a>
                    </div>
                @endif
                @if(in_array(350003,$pageauth))
                    <div class="metro-nav-block nav-block-yellow">
                        <a href="/architectural/enginCompleted/{{$id}}">
                            <div class="fs1" aria-hidden="true" ><img src="/img/nav/3.png">竣工工程
                                @if(isset($project))({{$project->completed_count}})@endif
                            </div>
                        </a>
                    </div>
                @endif
                @if(in_array(350004,$pageauth))
                    <div class="metro-nav-block nav-block-red">
                        <a href="/architectural/enginTermination/{{$id}}">
                            <div class="fs1" aria-hidden="true" ><img src="/img/nav/4.png">终止工程
                                @if(isset($project))({{$project->termination_count}})@endif
                            </div>
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
                            实施工程<a id="dynamicTable"></a>
                        </div>
                        <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                            <label>
                                @if(isset($project))
                                    {{$project->project_name}}
                                @else
                                    <form class="form-search" action="/architectural/enginConduct" method="get">
                                        项目名称:<input type="text" name="project_name" value="{{ $project_name }}" class="input-medium search-query">
                                        项目地点:<input type="text" name="address" value="{{ $address }}" class="input-medium search-query">
                                        项目负责人:<input type="text" name="project_leader" value="{{ $project_leader }}" class="input-medium search-query">
                                        <button type="submit" class="btn">搜索</button>
                                    </form>
                                @endif
                            </label>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>项目名称</th>
                                    <th>工程名称</th>
                                    <th>工程地址</th>
                                    <th style="width: 70px">建筑面积(m²)</th>
                                    <th style="width: 70px">建筑层数</th>
                                    <th style="width: 70px">建筑数量(栋)</th>
                                    <th>设计负责人</th>
                                    <th>建筑设计负责人</th>
                                    <th>结构设计负责人</th>
                                    <th>给排水设计负责人</th>
                                    <th>电气设计负责人</th>
                                    <th style="width: 80px">创建时间</th>
                                    <th style="width: 140px;">设计参数状态</th>
                                    <th style="width: 140px;">设计工况状态</th>
                                    <th style="width: 60px;">设计参数管理</th>
                                    <th style="width: 60px;">设计工况管理</th>
                                    <th style="width: 60px;">执行操作</th>
                                </tr>
                                </thead>
                                <tbody>

                                @foreach ($data as $k=>$val)
                                    <tr>
                                        <td>{{ $k+1 }}</td>
                                        <td >{{ $val->project_name }}</td>
                                        <td>{{ $val->engineering_name }}</td>
                                        <td>
                                            @if (strlen($val->engin_address) > 10)
                                                {{mb_substr($val->engin_address,0,10)}} ...
                                            @else
                                                {{$val->engin_address}}
                                            @endif
                                        </td>
                                        <td>{{$val->build_area}}@if(!empty($val->engin_build_area))({{$val->engin_build_area}})@endif</td>
                                        <td>{{ $val->build_floor }}</td>
                                        <td>{{$val->build_number}}</td>
                                        <td>{{$val->design_username}}</td>
                                        <td>{{$val->build_design_username}}</td>
                                        <td>{{$val->structure_username}}</td>
                                        <td>{{$val->drainage_username}}</td>
                                        <td>{{$val->electrical_username}}</td>
                                        <td>{{ $val->created_at }}</td>
                                        <td>
                                            @if($val->is_conf_param ==1)
                                                <i class="layui-icon btn btn-info">已创建</i>
                                                @if( (in_array(35000201,$pageauth) && $val->design_uid == $uid ) || in_array(350703,$manageauth))
                                                    <a title="查看详情" class="btn btn-info"  href="/architectural/enginParamDetail/{{ $val->engineering_id }}">
                                                        <i class="layui-icon">详情</i>
                                                    </a>
                                                @endif
                                            @else
                                                <i class="layui-icon btn btn-danger">未创建</i>
                                            @endif
                                        </td>
                                        <td>
                                            @if($val->is_conf_architectural ==1)
                                                <i class="layui-icon btn btn-info">已创建</i>
                                                @if( (in_array(35000201,$pageauth) && $val->design_uid == $uid ) || in_array(350703,$manageauth))
                                                    <a title="查看详情" class="btn btn-info"  href="/architectural/enginConductDetail/{{ $val->engineering_id }}">
                                                        <i class="layui-icon">详情</i>
                                                    </a>
                                                @endif
                                            @else
                                                <i class="layui-icon btn btn-danger">未创建</i>
                                            @endif
                                        </td>
                                        <td class="td-manage">
                                            @if((in_array(35000202,$pageauth) && $val->design_uid == $uid ) || in_array(350704,$manageauth))
                                                <a title="编辑" class="btn btn-success"  href="/architectural/editEnginParam/{{ $val->engineering_id }}">
                                                    @if($val->is_conf_param ==1)
                                                        <i class="layui-icon">编辑</i>
                                                    @else
                                                        <i class="layui-icon">创建</i>
                                                    @endif
                                                </a>
                                            @endif
                                        </td>
                                        <td class="td-manage">

                                            @if((in_array(35000202,$pageauth) && $val->design_uid == $uid ) || in_array(350704,$manageauth))
                                                <a title="编辑" class="btn btn-success"  href="/architectural/editConductEngin/{{ $val->engineering_id }}">
                                                    @if($val->is_conf_architectural ==1)
                                                        <i class="layui-icon">编辑</i>
                                                    @else
                                                        <i class="layui-icon">创建</i>
                                                    @endif
                                                </a>
                                            @endif
                                        </td>
                                        <td><span class="btn btn-info" onclick="selectModel('{{$val->id}}','{{$val->build_design_uid}}','{{$val->structure_uid}}','{{$val->drainage_uid}}','{{$val->electrical_uid}}')">编辑</span></td>

                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                            <div>
                                @php
                                    echo $page;
                                @endphp

                            </div>
                            <div class="clearfix"></div>
                            <div>建筑面积中括号部分为设计面积，如果不一致请联系销售人员更改工程建筑面积</div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        负责人配置
                    </h4>
                </div>
                <form class="form-horizontal no-margin" id="noticeform" action="/architectural/postEnginUserInfo" method="post">
                    <div class="modal-body">
                        <div class="row-fluid">
                            <div class="span12">
                                <div class="widget-body">
                                    <div class="control-group">
                                        <label class="control-label" for="build_design_uid">
                                            建筑设计负责人:
                                        </label>
                                        <div class="controls controls-row">
                                            <select name="build_design_uid" id="build_design_uid" class="" style="min-width: 80px">
                                                <option value="0" ></option>
                                                @foreach($userList as $u)
                                                    @if($u->department_id == 6)
                                                        <option value="{{$u->id}}" >{{$u->name}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="structure_uid">
                                            结构设计负责人:
                                        </label>
                                        <div class="controls controls-row">
                                            <select name="structure_uid" id="structure_uid" class="" style="min-width: 80px">
                                                <option value="0" ></option>
                                                @foreach($userList as $u)
                                                    @if($u->department_id == 6)
                                                        <option value="{{$u->id}}" >{{$u->name}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="drainage_uid">
                                            给排水设计负责人:
                                        </label>
                                        <div class="controls controls-row">
                                            <select name="drainage_uid" id="drainage_uid" class="" style="min-width: 80px">
                                                <option value="0" ></option>
                                                @foreach($userList as $u)
                                                    @if($u->department_id == 6)
                                                        <option value="{{$u->id}}" >{{$u->name}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="electrical_uid">
                                            电气设计负责人:
                                        </label>
                                        <div class="controls controls-row">
                                            <select name="electrical_uid" id="electrical_uid" class="" style="min-width: 80px">
                                                <option value="0" ></option>
                                                @foreach($userList as $u)
                                                    @if($u->department_id == 6)
                                                        <option value="{{$u->id}}" >{{$u->name}}</option>
                                                    @endif
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </form>
                <div class="modal-footer layui-form-item" >
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                    <button class="btn btn-success" lay-filter="add" lay-submit="" onclick="submitform()">提 交</button>
                </div>

            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>

    <script>
        //一般直接写在一个js文件中

        //显示模拟框
        function selectModel(id,build_design_uid,structure_uid,drainage_uid,electrical_uid){
            $('#myModal').modal();
            $('#build_design_uid').val(build_design_uid);
            $('#structure_uid').val(structure_uid);
            $('#drainage_uid').val(drainage_uid);
            $('#electrical_uid').val(electrical_uid);
            $('#noticeform').prop('action','/architectural/postEnginUserInfo/'+id);
        }
        function submitform(){
            var datalist={
                build_design_uid:$('#build_design_uid').val(),
                structure_uid: $('#structure_uid').val(),
                drainage_uid:$("#drainage_uid").val(),
                electrical_uid:$("#electrical_uid").val(),
            };

            url=$('#noticeform').prop('action');
            $.ajax({
                url:url,
                type:'post',
                // contentType: 'application/json',
                data:datalist,
                success:function(data){
                    console.log(data);
                    if(data.status == 1){
                        $('#myModal').modal('hide');
                        location.href=location.href
                    }else{
                        showmsg(data.info);
                    }
                },
                error:function () {
                    showmsg('提交失败，请刷新页面再试');
                }
            });

            return false;
        }
        function showmsg(str) {
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(str);
            });
        }
    </script>


@endsection
