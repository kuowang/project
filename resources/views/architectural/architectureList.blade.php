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
        <div class="span12">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        建筑系统<a id="dynamicTable"></a>
                    </div>
                    @if(in_array(350201,$pageauth) || in_array(3505,$manageauth))
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/architectural/architectureList" method="get">
                                <span style="padding-right: 50px;">系统名称:<input type="text" name="system_name" value="{{ $system_name }}" class="input-medium search-query"></span>
                                <span style="padding-right: 50px;">工程名称:<input type="text" name="sub_system_name" value="{{ $sub_system_name }}" class="input-medium search-query"></span>
                                <span style="padding-right: 50px;">工况代码:<input type="text" name="work_code" value="{{ $work_code }}" class="input-medium search-query"></span>
                                <button type="submit" class="btn">查询</button>
                            </form></label>
                    </div>
                    @endif

                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">

                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>子系统名称</th>
                                <th>系统名称</th>
                                <th>子系统编码</th>
                                <th>子系统状态</th>
                                <th>工况代码</th>
                                <th>创建人</th>
                                <th>创建日期</th>
                                <th>执行操作</th>
                            </thead>
                            <tbody>

                            @foreach ($data as $key=>$val)
                                <tr>
                                    <td>{{ $key+1 }}</td>
                                    <td>{{ $val->sub_system_name }}</td>
                                    <td>{{ $val->system_name }}</td>
                                    <td>{{ $val->sub_system_code }}</td>
                                    <td>@if ($val->status ==1)
                                        有效
                                        @else
                                            <span class="btn btn-warning">无效</span>
                                        @endif
                                    </td>
                                    <td>{{ $val->work_code }}</td>
                                    <td>{{ $val->username }}</td>
                                    <td>{{ $val->created_at }}</td>
                                    <td class="td-manage">
                                        @if(($val->uid == $uid && in_array(350201,$pageauth)) || in_array(3505,$manageauth))
                                                <a title="详情" class=""  href='{{ url("/architectural/material_detail/".$val->id) }}'>
                                                    <i class="layui-icon btn btn-info">详情</i>
                                                </a>
                                        @endif
                                        @if((in_array(350202,$pageauth) && $val->uid == $uid) || in_array(3506,$manageauth))
                                            <a title="编辑" class="btn btn-success"  href='{{ url("/architectural/edit_material/".$val->id) }}'>
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                        @endif
                                    </td>
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
    <div class="right-sidebar">
        <div class="wrapper">
            <ul class="stats">
                <li>
                    <h4>
                        公告
                    </h4>
                </li>
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

@endsection
