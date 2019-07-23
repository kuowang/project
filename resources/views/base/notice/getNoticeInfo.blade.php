@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

<div class="left-sidebar">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        公告列表<a id="dynamicTable"></a>
                    </div>
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/base/getNoticeInfo" method="get">
                                公告名称: &nbsp;<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
                                <button type="submit" class="btn">搜索</button>
                            </form></label>
                    </div>

                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        @foreach ($data as $k =>$val)
                        <div class="layui-col-md12">
                            <div class="layui-card">
                                <div class="layui-card-header layui-elem-quote">{{ $val->title }}</div>
                                <div class="layui-card-body">
                                    {{ $val->content }}
                                    <span style="float: right;">发布时间：{{ substr($val->pubdate,0,10) }}</span>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        @php
                            echo $page;
                        @endphp
                        <div class="clearfix">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

    <style>
        .dashboard-wrapper .left-sidebar {
            margin:auto;
        }
    </style>
@endsection
