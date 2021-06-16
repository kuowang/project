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
            @if(in_array(200101,$pageauth))
            <div class="metro-nav-block nav-block-blue" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                <a href="/budget/budgetStart/{{$id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/1.png">洽谈工程
                        @if(isset($project))({{$project->start_count}}) @endif
                    </div>
                </a>
            </div>
            @endif
            @if(in_array(200102,$pageauth))
            <div class="metro-nav-block nav-block-green">
                <a href="/budget/budgetConduct/{{$id}}">
                    <div class="fs1"  ><img src="/img/nav/2.png">实施工程
                        @if(isset($project))({{$project->conduct_count}})@endif
                    </div>
                </a>
            </div>
            @endif
            @if(in_array(200103,$pageauth))
            <div class="metro-nav-block nav-block-yellow">
                <a href="/budget/budgetCompleted/{{$id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/3.png">竣工工程
                        @if(isset($project))({{$project->completed_count}})@endif
                    </div>
                </a>
            </div>
            @endif
            @if(in_array(200104,$pageauth))
            <div class="metro-nav-block nav-block-red">
                <a href="/budget/budgetTermination/{{$id}}">
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
                    </div>
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            @if(isset($project))
                                {{$project->project_name}}
                            @else
                                <form class="form-search" action="/budget/budgetStart" method="get">
                                    项目名称:<input type="text" name="project_name" value="{{ $project_name }}" class="input-medium search-query">
                                    项目地点:<input type="text" name="address" value="{{ $address }}" class="input-medium search-query">
                                    预算总负责人:<input type="text" name="budget_username" value="{{ $budget_username }}" class="input-medium search-query">
                                    <button type="submit" class="btn">搜索</button>
                                </form>
                            @endif

                        </label>
                    </div>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">

                        <table class="layui-table layui-form" id="tableRelate">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th style="min-width: 130px">项目名称</th>
                                <th>工程名称</th>
                                <th>工程方案名称</th>
                                <th>建筑面积(m²)</th>
                                <th>建筑数量</th>
                                <th>预算金额(元)(单栋)</th>
                                <th>预算金额(元)(合计)</th>
                                <th>预算单编号</th>
                                <th>预算负责人</th>
                                <th>预算状态</th>
                                @if(in_array(200103,$manageauth))
                                    <th>提交至报价</th>
                                @endif
                                <th>执行操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($data as $k=>$val)
                                <tr>
                                    <td>{{ $k+1 }}</td>
                                    <td >{{ $val->project_name }}</td>
                                    <td>{{ $val->engineering_name }}</td>
                                    <td>@if(empty($val->programme_name))
                                            <span style="color:#FF5722!important">无方案</span>
                                        @else
                                            {{ $val->programme_name }}
                                        @endif
                                    </td>
                                    <td>{{ $val->build_area }}</td>
                                    <td>{{ $val->build_number }}</td>
                                    <td>{{ round($val->total_budget_price,2) }}</td>
                                    <td>{{ round($val->total_budget_price*$val->build_number,2) }}</td>

                                    <td>{{ $val->budget_order_number }}</td>
                                    <td>{{ $val->budget_username }}</td>
                                    @if(empty($val->budget_order_number))
                                        <td><span class="layui-btn-danger  layui-btn-sm layui-btn">未完成</span></td>
                                    @else
                                        <td><span class="layui-btn-normal  layui-btn-sm layui-btn">已完成</span></td>
                                    @endif

                                    @if(in_array(200103,$manageauth))
                                    <td>
                                        @if(!empty($val->budget_order_number))
                                            @if($val->offer_status == 0)
                                                <div class="btn btn-success" onclick="emainStatus({{$val->engin_id}},{{$val->programme_id}})">提交至报价</div>
                                            @else
                                                <span class=" layui-btn-normal  layui-btn-sm layui-btn">已提交</span>
                                            @endif
                                        @endif
                                    </td>
                                    @endif
                                    <td class="td-manage">

                                        @if( (in_array(20010102,$pageauth) && $val->budget_uid == $uid ) || in_array(200101,$manageauth))
                                            @if(!empty($val->budget_id))
                                            <a title="查看详情" class="btn btn-info"  href="/budget/budgetStartDetail/{{ $val->engin_id }}/{{$val->programme_id}}">
                                                <i class="layui-icon">详情</i>
                                            </a>
                                            <a title="导出"  target="_blank" class="btn btn-success"  target="_blank" href="/budget/budgetStartDetail/{{ $val->engin_id }}/{{$val->programme_id}}?download=1" onclick="return checkStatus({{$val->is_conf_architectural}})">
                                                <i class="layui-icon">导出</i>
                                            </a>
                                            @endif
                                        @endif

                                        @if((in_array(20010101,$pageauth) && $val->budget_uid == $uid ) || in_array(200102,$manageauth))
                                            @if($val->budget_status == 1 && $val->offer_status == 0)
                                                @if(empty($val->budget_id))
                                                    <a title="创建" class="btn btn-success"  href="/budget/editStartBudget/{{ $val->engin_id }}/{{$val->programme_id}}" onclick="return checkStatus({{$val->is_conf_architectural}},{{$val->is_conf_param}})">
                                                        <i class="layui-icon">创建</i>
                                                    </a>
                                                @else
                                                    <a title="编辑" class="btn btn-success"  href="/budget/editStartBudget/{{ $val->engin_id }}/{{$val->programme_id}}" >
                                                        <i class="layui-icon">编辑</i>
                                                    </a>
                                                @endif
                                            @endif
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

                        <span class="layui-col-md12" colspan="13" style="color: #cd0a0a"> 项目工程没有设计方案，则不显示该工程列表</span>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>


    <script>
        //一般直接写在一个js文件中

    function checkStatus(status ,paramstatus) {
        if(status ==0 || paramstatus ==0){
            showMsg('请先进行项目设计参数和工况配置后才能创建预算')
            return false;
        }
        return true;
    }
    //审核状态修改
    function emainStatus(id,proramme_id) {
        layui.use('layer', function(){
            var layer = layui.layer;
            layer.confirm('是否要将该方案提交到报价模块，提交之后，该方案不能编辑，请确认', {
                btn: [ '确认', '取消'] //可以无限个按钮
            }, function(index, layero){
                //按钮【按钮一】的回调
                submitBudgetData(id,proramme_id)
                layer.closeAll();
                return true
            }, function(index, layero){
                //按钮【按钮一】的回调
                layer.closeAll();
                return true
            });
        });

    }

    function submitBudgetData(id,proramme_id){
        $.ajax({
            url:'/budget/examineStartBudget/'+id +'/'+proramme_id,
            type:'post',
            // contentType: 'application/json',
            success:function(data){
                console.log(data);
                if(data.status ==1){
                    showMsg('审核更改成功');
                }else{
                    showMsg(data.info)
                }
                setTimeout(function(){ location.href=location.href; }, 1000);
            },
        });
    }


   function showMsg(str){
       layui.use('layer', function(){
           var layer = layui.layer;
           layer.msg(str);
       });
   }


        (function ($) {
            $.fn.extend({
                //表格合并单元格，colIdx要合并的列序号，从0开始
                "rowspan": function (colIdx) {
                    return this.each(function () {
                        var that;
                        $('tr', this).each(function (row) {
                            $('td:eq(' + colIdx + ')', this).filter(':visible').each(function (col) {
                                if (that != null && $(this).html() == $(that).html()) {
                                    rowspan = $(that).attr("rowSpan");
                                    if (rowspan == undefined) {
                                        $(that).attr("rowSpan", 1);
                                        rowspan = $(that).attr("rowSpan");
                                    }
                                    rowspan = Number(rowspan) + 1;
                                    $(that).attr("rowSpan", rowspan);
                                    $(this).hide();
                                } else {
                                    that = this;
                                }
                            });
                        });
                    });
                }
            });
        })(jQuery);
        $("#tableRelate").rowspan(1); //第二列合并
        $("#tableRelate").rowspan(2);//第三列合并



    </script>

@endsection
