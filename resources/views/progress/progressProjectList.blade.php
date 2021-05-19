@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

<div class="left-sidebar">
    <div class="row-fluid">
        <div class="metro-nav">
                @if(in_array(200102,$pageauth))
                    <div class="metro-nav-block nav-block-green" @if($projectstatus=='conduct') style=" outline: 2px rgba(0, 0, 0, 0.75) solid;" @endif>
                        <a href="/progress/progressConduct">
                            <div class="fs1" ><img src="/img/nav/2.png">实施工程</div>
                        </a>
                    </div>
                @endif
                @if(in_array(200103,$pageauth))
                    <div class="metro-nav-block nav-block-yellow" @if($projectstatus!='conduct') style=" outline: 2px rgba(0, 0, 0, 0.75) solid;" @endif>
                        <a href="/progress/progressCompleted">
                            <div class="fs1" ><img src="/img/nav/3.png">竣工工程</div>
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
                            <form class="form-search" action="{{$formurl}}" method="get">
                                项目名称:<input type="text" name="project_name" value="{{ $project_name }}" class="input-medium search-query">
                                项目地点:<input type="text" name="address" value="{{ $address }}" class="input-medium search-query">
                                项目负责人:<input type="text" name="project_leader" value="{{ $project_leader }}" class="input-medium search-query">
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
                                <th>项目名称</th>
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

                                        @if($projectstatus =='conduct')
                                            <a title="施工安装管理" class="btn btn-success"  href="/progress/progressConduct/{{ $val->id }}">
                                                <i class="layui-icon">施工安装管理</i>
                                            </a>
                                        @else
                                            <a title="施工安装管理" class="btn btn-success"  href="/progress/progressCompleted/{{ $val->id }}">
                                                <i class="layui-icon">施工安装管理</i>
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
