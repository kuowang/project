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
                @if(in_array(200101,$pageauth))
                    <div class="metro-nav-block nav-block-blue" >
                        <a href="/budget/budgetStart">
                            <div class="fs1" aria-hidden="true" data-icon="">洽谈项目</div>
                        </a>
                    </div>
                @endif
                @if(in_array(200102,$pageauth))
                    <div class="metro-nav-block nav-block-green" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                        <a href="/budget/budgetConduct">
                            <div class="fs1"  data-icon="">实施项目</div>
                        </a>
                    </div>
                @endif
                @if(in_array(200103,$pageauth))
                    <div class="metro-nav-block nav-block-yellow">
                        <a href="/budget/budgetCompleted">
                            <div class="fs1" aria-hidden="true" data-icon="">竣工项目</div>
                        </a>
                    </div>
                @endif
                @if(in_array(200104,$pageauth))
                    <div class="metro-nav-block nav-block-red">
                        <a href="/budget/budgetTermination">
                            <div class="fs1" aria-hidden="true" data-icon="">终止项目</div>
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
                            实施项目<a id="dynamicTable"></a>
                        </div>
                        <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                            <label>
                                <form class="form-search" action="/budget/budgetConduct" method="get">
                                    项目名称:<input type="text" name="project_name" value="{{ $project_name }}" class="input-medium search-query">
                                    项目地点:<input type="text" name="address" value="{{ $address }}" class="input-medium search-query">
                                    预算负责人:<input type="text" name="budget_username" value="{{ $budget_username }}" class="input-medium search-query">
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
                                    <th>建筑面积(平方米)</th>
                                    <th>预算金额(元)</th>
                                    <th>预算单编号</th>
                                    <th>预算负责人</th>
                                    <th>预算状态</th>
                                    <th>审核状态</th>
                                    @if(in_array(200106,$manageauth))
                                        <th>审核操作</th>
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
                                        <td>{{ $val->build_area }}</td>

                                        <td>{{ $val->total_budget_price }}</td>
                                        <td>{{ $val->budget_order_number }}</td>
                                        <td>{{ $val->budget_username }}</td>
                                        @if(empty($val->budget_order_number))
                                            <td>未完成</td>
                                        @else
                                            <td>已完成</td>
                                        @endif
                                        @if($val->budget_status ==1)
                                            <td>已审核</td>
                                        @else
                                            <td>待审核</td>
                                        @endif
                                        @if(in_array(200106,$manageauth))
                                            <td>
                                                @if(!empty($val->budget_order_number))
                                                    @if($val->budget_status ==1)
                                                        <div class="btn btn-warning" onclick="emainStatus({{$val->budget_id}},0)">取消审核</div>
                                                    @else
                                                        <div class="btn btn-success" onclick="emainStatus({{$val->budget_id}},1)">审核通过</div>
                                                    @endif
                                                @endif
                                            </td>
                                        @endif
                                        <td class="td-manage">
                                            @if( (in_array(20010202,$pageauth) && $val->budget_uid == $uid ) || in_array(200104,$manageauth))
                                                <a title="查看详情" class="btn btn-info"  href="/budget/budgetConductDetail/{{ $val->engin_id }}">
                                                    <i class="layui-icon">详情</i>
                                                </a>
                                                <a title="导出" class="btn btn-success"  href="/budget/budgetConductDetail/{{ $val->engin_id }}?download=1" onclick="return checkStatus({{$val->is_conf_architectural}})">
                                                    <i class="layui-icon">导出</i>
                                                </a>
                                            @endif
                                            @if((in_array(20010201,$pageauth) && $val->budget_uid == $uid ) || in_array(200105,$manageauth))
                                                <a title="编辑" class="btn btn-success"  href="/budget/editConductBudget/{{ $val->engin_id }}" onclick="return checkStatus({{$val->is_conf_architectural}})">
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
        function checkStatus(status) {
            if(status ==0){
                showMsg('请到建筑设计模块中配置材料信息，再配置预算')
                return false;
            }
            return true;
        }
        //审核状态修改
        function emainStatus(id,status) {

            $.ajax({
                url:'/budget/examineStartBudget/'+id+'/'+status,
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



    </script>

@endsection
