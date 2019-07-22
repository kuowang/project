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
                    <span class="tools">
                      <a class="fs1" aria-hidden="true" data-icon="&#xe090;"></a>
                    </span>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">

                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>标题</th>
                                <th style="width: 40%">内容</th>
                                <th>操作人</th>
                                <th>状态</th>
                                <th>发布时间</th>
                                <th>创建时间</th>

                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($data as $k =>$val)
                                @if($k%2 ==1)
                                    <tr class="gradeC">
                                @else
                                    <tr class="gradeA success">
                                @endif
                                        <td class="notice_id_{{ $val->id }}">
                                            {{ $val->id }}
                                        </td>
                                        <td class="notice_title_{{ $val->id }}">{{ $val->title }}</td>
                                        <td class="notice_content_{{ $val->id }}">{{ $val->content }}</td>
                                        <td class="notice_operator_{{ $val->id }}">{{ $val->operator }}</td>
                                        <td class="notice_status_{{ $val->id }}">
                                            @if($val->status ==1 )
                                                显示
                                            @else
                                                隐藏
                                            @endif
                                        </td>
                                        <td class="notice_pubdate_{{ $val->id }}">{{ $val->pubdate }}</td>
                                        <td >{{ $val->created_at }}</td>
                                </tr>

                            @endforeach

                            </tbody>
                        </table>
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
