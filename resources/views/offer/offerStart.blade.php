@extends('layouts.web')

@section('content')
    <style type="text/css">
        .btn{
            margin-bottom: 2px;
        }
    </style>
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
            @if(in_array(200201,$pageauth))
            <div class="metro-nav-block nav-block-blue" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                <a href="/offer/offerStart/{{$id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/1.png">洽谈工程
                        @if(isset($project))({{$project->start_count}}) @endif
                    </div>
                </a>
            </div>
            @endif
            @if(in_array(200202,$pageauth))
            <div class="metro-nav-block nav-block-green">
                <a href="/offer/offerConduct/{{$id}}">
                    <div class="fs1"  ><img src="/img/nav/2.png">实施工程
                        @if(isset($project))({{$project->conduct_count}})@endif
                    </div>
                </a>
            </div>
            @endif
            @if(in_array(200203,$pageauth))
            <div class="metro-nav-block nav-block-yellow">
                <a href="/offer/offerCompleted/{{$id}}">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/3.png">竣工工程
                        @if(isset($project))({{$project->completed_count}})@endif
                    </div>
                </a>
            </div>
            @endif
            @if(in_array(200204,$pageauth))
            <div class="metro-nav-block nav-block-red">
                <a href="/offer/offerTermination/{{$id}}">
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
                                <form class="form-search" action="/offer/offerStart" method="get">
                                    项目名称:<input type="text" name="project_name" value="{{ $project_name }}" class="input-medium search-query">
                                    项目地点:<input type="text" name="address" value="{{ $address }}" class="input-medium search-query">
                                    预算负责人:<input type="text" name="budget_username" value="{{ $budget_username }}" class="input-medium search-query">
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
                                <th>建筑数量(栋)</th>
                                <th>预算金额(万元)(单栋)</th>
                                <th>报价金额(万元)(单栋)</th>
                                <th>毛利润(万元)(单栋)</th>
                                <th>毛利率(%)</th>
                                <th>报价金额合计(万元)</th>
                                <th>毛利润合计(万元)</th>
                                <th>预算负责人</th>
                                <th>报价状态</th>
                                @if(in_array(200203,$manageauth))
                                    <th>提交至实施</th>
                                @endif

                                <th style="width: 80px">执行操作</th>

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
                                    <td>{{ empty($val->total_budget_price)?'':round($val->total_budget_price/10000,2) }}</td>
                                    <td>{{ empty($val->total_offer_price)?'':round($val->total_offer_price/10000,2) }}</td>
                                    <td>{{ empty($val->total_offer_price)?'':round($val->total_offer_price/10000 - $val->total_budget_price/10000,2)}}</td>
                                    <td >{{empty($val->total_offer_price)?'':round(($val->total_offer_price -$val->total_budget_price)/$val->total_offer_price *100 ,2)}}</td>
                                    <td>{{ empty($val->total_offer_price)?'':round($val->total_offer_price/10000*$val->build_number,2) }}</td>
                                    <td>{{ empty($val->total_offer_price)?'':round($val->total_offer_price/10000 - $val->total_budget_price/10000,2)*$val->build_number}}</td>

                                    <td>{{ $val->budget_username }}</td>
                                    @if(empty($val->offer_order_number))
                                        <td><span class="layui-btn-danger  layui-btn-sm layui-btn">未完成</span></td>
                                    @else
                                        <td><span class="layui-btn-normal  layui-btn-sm layui-btn">已完成</span></td>
                                    @endif

                                    @if(in_array(200203,$manageauth))
                                    <td>
                                    @if(!empty($val->offer_order_number))
                                        @if($val->progress_status == 0)
                                            <div class="btn btn-success" onclick="emainStatus({{$val->engin_id}},{{$val->programme_id}})">提交至实施</div>
                                        @else
                                            <span class=" layui-btn-normal  layui-btn-sm layui-btn">已确认</span>
                                        @endif
                                    @else
                                        @if($val->progress_status == 0)
                                            <span class="layui-btn-danger  layui-btn-sm layui-btn">未确认</span>
                                        @else
                                            <span class=" layui-btn-normal  layui-btn-sm layui-btn">已确认</span>
                                        @endif
                                        
                                    @endif
                                    </td>
                                    @endif
                                    <td class="td-manage">
                                        @if( (in_array(20020102,$pageauth) && $val->budget_uid == $uid ) || in_array(200201,$manageauth))
                                            @if(!empty($val->offer_order_number))
                                            <a title="查看详情" class="btn btn-info"  href="/offer/offerStartDetail/{{ $val->engin_id }}/{{ $val->programme_id }}" >
                                                <i class="layui-icon">详情</i>
                                            </a>
                                            <a title="导出"  target="_blank"  class="btn btn-success"  href="/offer/offerStartDetail/{{ $val->engin_id }}/{{ $val->programme_id }}?download=1" onclick="return checkStatus({{$val->is_conf_architectural}})">
                                                <i class="layui-icon">导出</i>
                                            </a>
                                            @endif
                                        @endif
                                        @if((in_array(20020101,$pageauth) && $val->budget_uid == $uid ) || in_array(200202,$manageauth))
                                            @if($val->offer_exam_status != 1)
                                            <a title="编辑" class="btn btn-success"  href="/offer/editStartOffer/{{ $val->engin_id }}/{{ $val->programme_id }}" onclick="return checkStatus({{$val->is_conf_architectural}})">
                                                @if($val->offer_id ==0)
                                                <i class="layui-icon">创建</i>
                                                @else
                                                <i class="layui-icon">编辑</i>
                                                @endif
                                            </a>
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
                        <div class="clearfix"></div>
                        <hr>
                        <div style="margin: 10px">
                            <div>1、毛利润=报价金额 - 预算金额</div>
                            <div>2、毛利率=(报价金额 - 预算金额)\报价金额 * 100</div>
                            <div>3、预算金额、报价金额、毛利额均是单栋建筑的金额</div>
                            <span class="layui-col-md12" colspan="13" style="color: #cd0a0a"> 项目工程没有设计方案，则不显示该工程列表</span>

                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>


    <script>
        //一般直接写在一个js文件中

    function checkStatus(status) {
        if(status ==0){
            showMsg('请先进行项目设计参数和工况配置后才能创建报价')
            return false;
        }
        return true;
    }
    //审核状态修改
    function emainStatus(id,programme_id) {

        $.ajax({
            url:'/offer/examineStartOffer/'+id+'/'+programme_id,
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
