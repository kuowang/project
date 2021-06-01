@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

<div class="left-sidebar">
    <div class="row-fluid">
        <div class="metro-nav">
            @if(in_array(1502,$pageauth))
            <div class="metro-nav-block nav-block-blue" >
                <a href="/budget/budgetStart">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/1.png">洽谈工程</div>
                </a>
            </div>
            @endif
            @if(in_array(1503,$pageauth))
            <div class="metro-nav-block nav-block-green">
                <a href="/budget/budgetConduct">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/2.png">实施工程</div>
                </a>
            </div>
            @endif
            @if(in_array(1504,$pageauth))
            <div class="metro-nav-block nav-block-yellow">
                <a href="/budget/budgetCompleted">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/3.png">竣工工程</div>
                </a>
            </div>
            @endif
            @if(in_array(1505,$pageauth))
            <div class="metro-nav-block nav-block-red">
                <a href="/budget/budgetTermination">
                    <div class="fs1" aria-hidden="true" ><img src="/img/nav/4.png">终止工程</div>
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
                        项目列表<a id="dynamicTable"></a>
                    </div>
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/budget/budgetProjectList" method="get">
                                项目名称:<input type="text" name="project_name" value="{{ $project_name }}" class="input-medium search-query">
                                项目地点:<input type="text" name="address" value="{{ $address }}" class="input-medium search-query">
                                项目负责人:<input type="text" name="project_leader" value="{{ $project_leader }}" class="input-medium search-query">
                                项目状态:<select name="project_status" id="stateAndCity" class="input-medium search-query" style="min-width: 80px;border-radius: 15px;">
                                    @if($project_status ==0) <option value="0" selected="selected">洽谈项目</option> @else <option value="0">洽谈项目</option> @endif
                                    @if($project_status ==1) <option value="1" selected="selected">实施项目</option> @else <option value="1">实施项目</option> @endif
                                    @if($project_status ==2) <option value="2" selected="selected">竣工项目</option> @else <option value="2">竣工项目</option> @endif
                                    @if($project_status ==4) <option value="4" selected="selected">终止项目</option> @else <option value="4">终止项目</option> @endif
                                </select>
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
                                <th style="max-width: 130px">项目名称</th>
                                <th>项目种类</th>
                                <th>工程数量</th>
                                <th>项目总面积</th>
                                <th>项目地址</th>
                                <th>项目总负责人</th>
                                <th>销售总负责人</th>
                                <th>设计总负责人</th>
                                <th>预算报价总负责人</th>
                                <th>合约总负责人</th>
                                <th>创建时间</th>
                                <th>执行操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($data as $k=>$val)
                                <tr>
                                    <td>{{ $k+1 }}</td>
                                    <td >{{ $val->project_name }}</td>
                                    <td>{{$val->type}}</td>
                                    <td>{{$val->start_count}}</td>
                                    <td>{{$val->project_area}}</td>
                                    <td>{{ $val->province }}{{ $val->city }}{{ $val->county }}{{$val->address_detail}}{{$val->foreign_address}}</td>
                                    <td>{{ $val->project_leader }}</td>
                                    <td>{{ $val->sale_username }}</td>
                                    <td>{{ $val->design_username }}</td>
                                    <td>{{ $val->budget_username }}</td>
                                    <td>{{ $val->technical_username }}</td>
                                    <td>{{ $val->created_at }}</td>
                                    <td class="td-manage">
                                        @if($project_status ==0)
                                        <a title="项目设计管理" class="btn btn-success"  href="/budget/budgetStart/{{ $val->id }}">
                                            <i class="layui-icon">项目预算管理</i>
                                        </a>
                                        @elseif($project_status ==1)
                                            <a title="项目预算管理" class="btn btn-success"  href="/budget/budgetConduct/{{ $val->id }}">
                                                <i class="layui-icon">项目预算管理</i>
                                            </a>
                                        @elseif($project_status ==2)
                                            <a title="项目预算管理" class="btn btn-success"  href="/budget/budgetCompleted/{{ $val->id }}">
                                                <i class="layui-icon">项目预算管理</i>
                                            </a>
                                        @elseif($project_status ==4)
                                            <a title="项目预算管理" class="btn btn-success"  href="/budget/budgetTermination/{{ $val->id }}">
                                                <i class="layui-icon">项目预算管理</i>
                                            </a>
                                        @else
                                            <a title="项目预算管理" class="btn btn-success"  href="/budget/budgetStart/{{ $val->id }}">
                                                <i class="layui-icon">项目预算管理</i>
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


    <script>
        //一般直接写在一个js文件中




    </script>

@endsection
