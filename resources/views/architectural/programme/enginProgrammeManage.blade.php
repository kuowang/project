@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

    <style type="text/css">
        .layui-form input[type=checkbox], .layui-form input[type=radio], .layui-form select {
            display: inline;
        }

        .pro-title {
            background: #e6e6e6;
        }

        .layui-table td, .layui-table th {
            border: solid 1px #ccc;
        }

        select {
            width: auto;
        }

    </style>
    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-header" style="text-align: center">
                        <div style="text-align: center;clear: both;font-size: 16px;">
                            <b>{{$project->project_name}}</b>
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
                                    <td class="pro-title">项目名称</td>
                                    <td colspan="2">{{$project->project_name}}</td>
                                    <td class="pro-title">项目地点</td>
                                    <td colspan="2">{{$project->province}}{{$project->city}}{{$project->county}}{{$project->address_detail}}{{$project->foreign_address}}
                                    </td>
                                </tr>

                                <tr>
                                    <td class="pro-title">项目种类（用途）</td>
                                    <td colspan="2">{{$project->type}}</td>
                                    <td class="pro-title">场地自然条件</td>
                                    <td colspan="2">{{$project->environment}}</td>
                                </tr>
                                <tr>
                                    <td class="pro-title">场地交通条件</td>
                                    <td colspan="2">{{$project->traffic}}</td>
                                    <td class="pro-title">材料存储条件</td>
                                    <td colspan="2">{{$project->material_storage}}</td>
                                </tr>
                                </tbody>
                            </table>

                            @if(count($project_file) > 0)
                                <table class="layui-table layui-form">
                                    <thead>
                                    <tr>
                                        <th colspan="4"><span class="btn btn-info">项目文件</span>
                                            <a class="btn btn-success" onclick="show_img()">
                                                <i class="layui-icon" id="show_img">显示图片</i> >>
                                            </a>
                                        </th>
                                        <th>
                                    <span class="title" style="float: right;">
                                        @if(count($project_file) > 3)
                                            <a class="btn btn-success" id="addProjectFileID" attr="1000"
                                               onclick="show_list()">
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
                                                        <a href="/project/projectFileDownload/{{$file->file_key}}"
                                                           style="color: red">
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


                            <div class="clearfix"></div>
                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th colspan="8"><span class="btn btn-info">项目子工程信息</span></th>
                                </tr>
                                </thead>
                                <tbody id="zigongcheng">
                                <tr>
                                    <td class="pro-title">子工程名称</td>
                                    <td>{{$engineering->engineering_name}}</td>
                                    <td class="pro-title">建筑总面积（m²）</td>
                                    <td>{{$engineering->build_area}}</td>
                                    <td class="pro-title">建筑总层数</td>
                                    <td>{{$engineering->build_floor}}</td>
                                    <td class="pro-title">建筑总高度（m）</td>
                                    <td>{{$engineering->build_height}}</td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="clearfix"></div>
                            @if($engineering->budget_id > 0)
                                <div class="layui-form-item" style="color:orange">
                                    当前工程已经设置过预算信息 ，工况信息只能增加，不能取消
                                </div>
                                <div class="clearfix"></div>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="widget">
                    <div class="widget-header" style="text-align: center">
                        <div style="font-size: 16px;">
                            <b>建筑工况配置</b>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">
                            <table class="layui-table layui-form"  style="text-align: center">
                                <thead>
                                <tr>
                                    <th colspan="6">
                                        <span class="btn btn-info">项目子工程方案列表</span>
                                        @if(in_array($engineering->status,[0,1]) )
                                        <span class="title" style="float: right;">
                                            <a class="btn btn-success"
                                               href="/architectural/editEngin/{{ $engin_id }}/0"><i class="layui-icon">新增工程方案 +</i></a>
                                        </span>
                                        @endif
                                    </th>
                                </tr>
                                <tr>
                                    <td>序号</td>
                                    <td>方案名称</td>
                                    <td>操作</td>
                                    <td>预算状态</td>
                                    <td>报价状态</td>
                                    <td>实施状态</td>

                                </tr>
                                </thead>
                                <tbody >

                                @foreach ($programme_list as $k=>$programme)
                                    <tr>
                                        <td>方案{{++$k}}</td>
                                        <td>{{$programme->programme_name}}</td>
                                        <td>
                                            <a class="btn btn-success" href="/architectural/enginStartDetail/{{ $engin_id }}/{{$programme->id}}">
                                                <i class="layui-icon">详情</i>
                                            </a>
                                            @if($programme->budget_status == 0 && in_array($engineering->status,[0,1]) )
                                            <a class="btn btn-success" href="/architectural/editEngin/{{ $engin_id }}/{{$programme->id}}">
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                            <span class="btn btn-success" onclick="submitBudget({{ $engin_id }},{{$programme->id}})">
                                                <i class="layui-icon">提交到预算</i>
                                            </span>

                                            @endif
                                        </td>
                                        <td>
                                            @if($programme->budget_status) <a class="layui-btn-normal  layui-btn-sm layui-btn">已提交</a>
                                            @else <span class=" layui-btn-danger  layui-btn-sm layui-btn">未提交</span>
                                            @endif
                                        </td>
                                        <td>
                                            @if($programme->offer_status) <span class=" layui-btn-normal  layui-btn-sm layui-btn">已提交</span>
                                            @else  <span class=" layui-btn-danger  layui-btn-sm layui-btn">未提交</span>
                                            @endif
                                        </td>
                                        <td>
                                            @if($programme->status)  <span class="  layui-btn-normal  layui-btn-sm layui-btn">已确认</span>
                                            @else  <span class=" layui-btn-danger  layui-btn-sm layui-btn">未确认</span>
                                            @endif
                                        </td>

                                    </tr>

                                @endforeach

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
    <script>
        //将工程方案提交到预算管理页面
        function submitBudget(enginid,programmeid){
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.confirm('是否要将该方案提交到预算模块，提交之后，该方案不能编辑，请确认', {
                    btn: [ '确认', '取消'] //可以无限个按钮
                }, function(index, layero){
                    //按钮【按钮一】的回调
                    submitBudgetData(enginid,programmeid)
                    layer.closeAll();
                    return true
                }, function(index, layero){
                    //按钮【按钮一】的回调
                    layer.closeAll();
                    return true
                });
            });
        }

        function submitBudgetData(enginid,programmeid){

            $.ajax({
                url:'/architectural/updateEnginProgrammeBudgetStatus/'+enginid+'/'+programmeid,
                type:'post',
                // contentType: 'application/json',
                success:function(data){
                    console.log(data);
                    if(data.status == 1){
                        console.log(data);
                        window.location.reload();
                    }else{
                        showMsg('更改失败，请联系管理员');
                        return false;
                    }
                },
            });

        }

        function showMsg(str) {
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg(str);
            });
        }
    </script>

@endsection
