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
                        @if(in_array(350102,$pageauth) || in_array(3502,$manageauth))
                        <a class="btn btn-success" title="创建建筑系统"  href="/architectural/add_architect" >
                            <i class="layui-icon">创建建筑系统</i>
                        </a>
                        @endif
                    </div>
                    @if(in_array(350101,$pageauth))
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/architectural/index" method="get">
                                系统名称:<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
                                <button type="submit" class="btn">搜索</button>
                            </form></label>
                    </div>
                    @endif
                    <span class="tools">
                      <a class="fs1" aria-hidden="true" data-icon="&#xe090;"></a>
                    </span>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">

                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>系统名称</th>
                                <th>工程名称</th>
                                <th>系统编码</th>
                                <th>系统状态</th>
                                <th>创建人</th>
                                <th>创建日期</th>
                                <th>执行操作</th>
                            </thead>
                            <tbody>

                            @foreach ($data as $val)
                                <tr>
                                    <td>{{ $val->id }}</td>
                                    <td>{{ $val->system_name }}</td>
                                    <td>{{ $val->engineering_name }}</td>
                                    <td>{{ $val->system_code }}</td>
                                    <td>@if ($val->status ==1)
                                        有效
                                        @else
                                        无效
                                        @endif
                                    </td>
                                    <td>{{ $val->username }}</td>
                                    <td>{{ $val->created_at }}</td>
                                    <td class="td-manage">
                                        @if(($val->uid == $uid && in_array(350101,$pageauth) )|| in_array(3501,$manageauth))
                                                <a title="详情" class="btn btn-success"  href='{{ url("/architectural/architect_detail/".$val->id) }}'>
                                                    <i class="layui-icon">详情</i>
                                                </a>
                                        @endif

                                        @if((in_array(350103,$pageauth) && $val->uid == $uid) || in_array(3503,$manageauth))
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <a title="编辑" class="btn btn-success"  href='{{ url("/architectural/edit_architect/".$val->id) }}'>
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                        @endif
                                        @if((in_array(350104,$pageauth) && $val->uid == $uid) || in_array(3504,$manageauth))
                                            @if ($val->status ==1)
                                                &nbsp;&nbsp;&nbsp;
                                                <a title="无效" class="btn btn-warning"  href='{{ url("/architectural/edit_architect_status/".$val->id.'/0') }}'>
                                                    <i class="layui-icon">无效</i>
                                                </a>
                                            @else
                                                &nbsp;&nbsp;&nbsp;
                                                <a title="有效" class="btn btn-success"  href='{{ url("/architectural/edit_architect_status/".$val->id.'/1') }}'>
                                                    <i class="layui-icon">有效</i>
                                                </a>
                                            @endif
                                            &nbsp;
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
    <style>

    </style>



@endsection
