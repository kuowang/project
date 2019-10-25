@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

<div class="left-sidebar">
    <div class="row-fluid">
        <div class="metro-nav">
            @if(in_array(5001,$pageauth))
            <div class="metro-nav-block nav-block-blue" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                <a href="/finance/financeStart">
                    <div class="fs1" aria-hidden="true" data-icon="">洽谈工程</div>
                </a>
            </div>
            @endif
            @if(in_array(5002,$pageauth))
            <div class="metro-nav-block nav-block-green">
                <a href="/finance/financeConduct">
                    <div class="fs1"  data-icon="">实施工程</div>
                </a>
            </div>
            @endif
            @if(in_array(5003,$pageauth))
            <div class="metro-nav-block nav-block-yellow">
                <a href="/finance/financeCompleted">
                    <div class="fs1" aria-hidden="true" data-icon="">竣工工程</div>
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
                        <label>
                            <form class="form-search" action="/finance/financeStart" method="get">
                                项目名称:<input type="text" name="project_name" value="{{ $project_name }}" class="input-medium search-query">
                                项目地点:<input type="text" name="engin_name" value="{{ $engin_name }}" class="input-medium search-query">
                                预算负责人:<input type="text" name="project_leader" value="{{ $project_leader }}" class="input-medium search-query">
                                <button type="submit" class="btn">搜索</button>
                            </form>
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
                                <th>预估项目总金额(万元)</th>
                                <th>预估成本（万元）</th>
                                <th>预估毛利率(%)</th>
                                <th>项目负责人</th>
                                <th>财务风险评估信息</th>
                                <th>执行操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($data as $k=>$val)
                                <tr>
                                    <td>{{ $k+1 }}</td>
                                    <td >{{ $val->project_name }}</td>
                                    <td>{{ $val->engineering_name }}</td>
                                    <td>@if(!empty($val->total_budget_price))
                                            {{ $val->total_budget_price/10000 }}
                                        @endif
                                        </td>

                                    <td>@if(!empty($val->direct_project_cost))
                                            {{ $val->direct_project_cost/10000 }}
                                    @endif
                                    </td>
                                    <td>{{ $val->profit_ratio }}</td>
                                    <td>{{ $val->project_leader }}</td>
                                    <td id="assessment_{{$val->engin_id}}">{{$val->assessment}}</td>
                                    <td class="td-manage">
                                        @if((in_array(500101,$pageauth)) || in_array(500101,$manageauth))
                                            <a title="编辑" class="btn btn-success"  onclick="editFinance({{ $val->engin_id }})" href="javascript:;" >
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach

                            </tbody>
                        </table>
                            <div>
                                @php
                                echo $page;
                                @endphp

                            </div>
                        <div class="clearfix">
                        </div>
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
                        财务风险评估信息
                    </h4>
                </div>
                <form class="form-horizontal no-margin" id="financeform" action="/finance/postEditFinanceStart" method="post">

                    <div class="modal-body">

                        <div class="row-fluid">
                            <div class="span12">
                                <div class="widget-body">

                                    <div class="control-group">
                                        <label class="control-label" for="name">
                                            风险评估:
                                        </label>
                                        <div class="controls controls-row">
                                            <input class="span12 layui-input" type="text" id="assessment" name="assessment" placeholder="财务状态良好，无不良信息">
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

        function editFinance(id){
            $("#myModalLabel").text('财务风险评估信息');
            $('#financeform').prop('action','/finance/postEditFinanceStart/'+id);
            //补充表格数据
            $('#assessment').val($.trim($('#assessment_'+id).html()));
            $('#myModal').modal();

        }
        //提交数据
        function submitform() {
            if($('#assessment').val() ==''){
                showMsg('请填写该工程的风险信息');
                return false;
            }
            var datalist={assessment:$('#assessment').val()};
            url=$('#financeform').prop('action')
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
                        showMsg(data.info);
                    }
                },
                error:function () {
                    showMsg('提交失败，请刷新页面再试');
                }
            });
        }


       function showMsg(str){
           layui.use('layer', function(){
               var layer = layui.layer;
               layer.msg(str);
           });
       }
    </script>

@endsection
