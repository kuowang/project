@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
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
            @if(in_array(1502,$pageauth))
            <div class="metro-nav-block nav-block-blue" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                <a href="/project/projectEnginStart/{{$id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/1.png">洽谈工程
                    @if(isset($project))({{$project->start_count}}) @endif
                    </div>
                </a>
            </div>
            @endif
            @if(in_array(1503,$pageauth))
            <div class="metro-nav-block nav-block-green">
                <a href="/project/projectEnginConduct/{{$id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/2.png">实施工程
                        @if(isset($project))({{$project->conduct_count}})@endif
                    </div>
                </a>
            </div>
            @endif
            @if(in_array(1504,$pageauth))
            <div class="metro-nav-block nav-block-yellow">
                <a href="/project/projectEnginCompleted/{{$id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/3.png">竣工工程
                        @if(isset($project))({{$project->completed_count}})@endif
                    </div>
                </a>
            </div>
            @endif
            @if(in_array(1505,$pageauth))
            <div class="metro-nav-block nav-block-red">
                <a href="/project/projectEnginTermination/{{$id}}">
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
                        洽谈工程<a id="dynamicTable"></a>
                        @if(in_array(1501,$pageauth) || in_array(1501,$manageauth))
                        @if($id!=0)
                            <a class="btn btn-success" title="新增工程" onclick="selectModel()" >
                                <i class="layui-icon">新增工程</i>
                            </a>
                        @endif
                        @endif
                    </div>
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                    @if(isset($project))
                        {{$project->project_name}}
                    @else
                            <label>
                                <form class="form-search" action="/project/projectEnginStart" method="get">
                                    项目名称:<input type="text" name="project_name" value="{{ $project_name }}" class="input-medium search-query">
                                    项目地点:<input type="text" name="address" value="{{ $address }}" class="input-medium search-query">
                                    项目负责人:<input type="text" name="project_leader" value="{{ $project_leader }}" class="input-medium search-query">
                                    <button type="submit" class="btn">搜索</button>
                                </form>
                            </label>
                    @endif
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
                                <th>建筑面积(m²)</th>
                                <th>建筑层数</th>
                                <th>建筑数量(栋)</th>
                                <th>销售负责人</th>
                                <th>设计负责人</th>
                                <th>预算负责人</th>
                                <th>合约负责人</th>
                                <th>创建时间</th>
                                <th>执行操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($data as $k=>$val)
                                <tr>
                                    <td>{{ $k+1 }}</td>
                                    <td id="project_name_{{$val->id}}">{{$val->project_name}}</td>
                                    <td id="engin_name_{{$val->id}}">{{ $val->engineering_name }}</td>
                                    <td>
                                        @if (strlen($val->engin_address) > 10)
                                            {{mb_substr($val->engin_address,0,10)}} ...
                                        @else
                                            {{$val->engin_address}}
                                        @endif
                                    </td>
                                    <td>{{ $val->build_area }}</td>
                                    <td>{{ $val->build_floor }}</td>
                                    <td>{{$val->build_number}}</td>
                                    <td>{{$val->sale_username}}</td>
                                    <td>{{$val->design_username}}</td>
                                    <td>{{$val->budget_username}}</td>
                                    <td>{{$val->technical_username}}</td>
                                    <td>{{ $val->created_at }}</td>
                                    <td class="td-manage">
                                        @if( (in_array(150201,$pageauth) && $val->created_uid == $uid ) || in_array(150201,$manageauth))
                                            <a title="查看详情" class="btn btn-info"  href="/project/projectEnginDetail/{{ $val->id }}">
                                                <i class="layui-icon">详情</i>
                                            </a>
                                        @endif
                                        @if((in_array(150202,$pageauth) && $val->created_uid == $uid ) || in_array(150202,$manageauth))
                                            <a title="编辑" class="btn btn-success"  href="/project/editProjectEngin/{{ $val->id }}">
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                        @endif
                                        @if((in_array(150203,$pageauth) && $val->created_uid == $uid ) || in_array(150203,$manageauth))
                                            <a onclick="enginModel({{$val->project_id}},{{$val->id}},0)" class="btn btn-success">
                                                <i class="layui-icon">工程状态变更</i>
                                            </a>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach

                            </tbody>
                        </table>
                        <div class="clearfix"></div>
                        <div>
                            @php
                                echo $page;
                            @endphp

                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            注：工程列表以工程名称排序
        </div>
    </div>
</div>


    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form class="modal-content" action="/project/createdProjectEngin/{{$id}}" type="get">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        工程模板信息
                    </h4>
                </div>
                <div class="modal-body">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="widget-body">
                                <div class="control-group">
                                    <table class="layui-table layui-form">
                                        <tr>
                                            <td>选择</td>
                                            <td>工程名称</td>
                                            <td>工程状态</td>
                                        </tr>
                                        @if(isset($enginList) && !empty($enginList))
                                            @foreach($enginList as $item)
                                                <tr>
                                                    <td>
                                                        <label style="width: 100%;height: 100%">
                                                            <input type="radio" name="engin_id" class="engin_id" value="{{$item->id}}" style="display: block">
                                                        </label>
                                                    </td>
                                                    <td>{{$item->engineering_name}}</td>
                                                    <td>@if($item->status ==0) 洽谈
                                                        @elseif($item->status ==1) 实施
                                                        @elseif($item->status ==2) 竣工
                                                        @else  终止
                                                        @endif
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @endif
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer layui-form-item" >
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button class="btn btn-success" lay-filter="add" lay-submit="" >确认</button>
                </div>
            </form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->


    <script>
        //一般直接写在一个js文件中
        //显示模拟框
        function selectModel(){
            $('#myModal').modal();
        }

    </script>

    <!-- 模态框（Modal）工程状态框 -->
    <div class="modal fade" id="enginModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        工程状态变更
                    </h4>
                </div>
                <div class="modal-body">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="widget-body">
                                <div class="control-group">
                                    <table class="layui-table layui-form" id="project_engin_status">
                                        <tr>
                                            <td>项目名称</td>
                                            <td id="project_name"></td>
                                        </tr>
                                        <tr>
                                            <td>工程名称</td>
                                            <td id="engin_name"></td>
                                        </tr>
                                        <tr>
                                            <td>工程状态</td>
                                            <td >
                                                <input type="hidden" name="project_id" id="project_id" value="0">
                                                <input type="hidden" name="engin_id"  id="engin_id" value="0">

                                                <select name="engin_status" id="engin_status" class="input-medium span8" onchange="checkEnginStatus()" >
                                                    <option value="0" >洽谈工程</option>
                                                    <option value="1" >实施工程</option>
                                                    <option value="2" >竣工工程</option>
                                                    <option value="4" >终止工程</option>
                                                </select>

                                            </td>
                                        </tr>

                                    </table>

                                    <div style="color:red" id="message">工程状态发生变化后不能回撤，请谨慎操作</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer layui-form-item" >
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button class="btn btn-success" lay-filter="add"  data-dismiss="modal" lay-submit="" onclick="submitform()" >确认</button>
                </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->


    <script>
        //一般直接写在一个js文件中
        //显示模拟框
        function enginModel(project_id,id,status){
            $('#engin_name').html($('#engin_name_'+id).html());
            $('#project_name').html($('#project_name_'+id).html());
            $('#engin_status').val(status);
            $('#project_id').val(project_id);
            $('#engin_id').val(id);
            $('#enginModel').modal();
            $('.project_engin_status').remove()
        }
        function submitform() {
            eng_status =$('#engin_status').val()
            if(eng_status == 1){
                code = $('#contract_code').val();
                programme_id =$('#programme_id').val()
                if(code.length == 0 || programme_id.length == 0){
                    //配置一个透明的询问框
                    layui.use('layer', function(){
                        var layer = layui.layer;
                        layer.msg('实施工程需要补充合同编号和方案,保存失败,请重新输入', {
                            time: 10000, //20s后自动关闭
                            btn: ['知道了'],
                            btnAlign: 'c'
                        });
                    });
                    return false;
                }
            }else{
                code=''
                programme_id =''
            }

            var datalist={
                project_id:$('#project_id').val(),
                engin_id:$('#engin_id').val(),
                engin_status:eng_status,
                contract_code:code,
                programme_id :programme_id
            };
            $.ajax({
                url:'/project/editEnginStatus',
                type:'post',
                // contentType: 'application/json',
                data:datalist,
                success:function(data){
                    console.log(data);
                    if(data.status == 1){
                        $('#myModal').modal('hide');
                        showMsg('变更工程状态成功');
                        location.href=location.href
                    }else{
                        $('#myModal').modal('hide');
                        showMsg(data.info);
                    }
                },
                error:function () {
                    showMsg('提交失败，请刷新页面再试');
                }
            });
        }
        //显示提示信息
        function showMsg(str){

            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(str);
            });
        }

        function checkEnginStatus() {
            status =$("#engin_status").val();
            console.log(status);
            html ='<tr class="project_engin_status">';
            html +=   '<td>合同编号</td>' ;
            html +=   '<td ><input type="text"  name="contract_code" id="contract_code" class="span8 notempty"  value="" lay-skin="primary" > </td>';
            html +=  '</tr>';
            if(status == 1){
                $('.project_engin_status').remove();
                $('#project_engin_status').append(html);
            }else{
                $('.project_engin_status').remove()
            }

            if(status ==1){ //获取可供选择的实施工程的方案列表
                engin_id =$('#engin_id').val()
                $.ajax({
                    url:'/architectural/getProgrammeList/'+engin_id,
                    type:'get',
                    success:function(data){
                        console.log(data);
                        if(data.status == 1){
                            html ='<tr class="project_engin_status">';
                            html +=   '<td>方案名称</td>' ;
                            html +=   '<td >' ;
                            html +=  '<select name="programme_id" id="programme_id" class="input-medium span8"  >';
                            $.each(data.data, function(index, value) {
                                console.log(value);
                                html +=  '<option value="'+value.id+'" >'+value.programme_name+'</option>';
                            });
                            html += '</select>';
                            html +=     '</td>';
                            html +=  '</tr>';
                            $('#project_engin_status').append(html);
                        }else{
                            $('.project_engin_status').remove();
                            $('#engin_status').val(0);
                            $('#message').text(data.info)
                        }
                    },
                    error:function () {
                        $('.project_engin_status').remove();
                        $('#engin_status').val(0);
                        $('#message').text('请求异常，请联系管理员')

                    }
                });
            }

        }


    </script>

@endsection
