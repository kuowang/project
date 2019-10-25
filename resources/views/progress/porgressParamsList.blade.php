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
                        <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                            <label>
                                <form class="form-search" action="/architectural/index" method="get">
                                    系统名称:<input type="text" name="system_name" value="{{ $system_name }}" class="input-medium search-query">
                                    <button type="submit" class="btn">搜索</button>
                                </form></label>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>系统名称(系统编码)</th>
                                    <th>工程名称</th>
                                    <th>施工周期信息</th>
                                    <th style="width: 170px">执行操作</th>
                                </thead>
                                <tbody>

                                @foreach ($data as $k=>$val)
                                    <tr style="color: #000">
                                        <td>{{ $k+1 }}</td>
                                        <td>{{ $val->system_name }}({{ $val->system_code }})</td>
                                        <td>{{ $val->engineering_name }}</td>
                                        <td style="color: #000">
                                        @if(isset($params[$val->id]))
                                        @foreach($params[$val->id] as $l=>$item)
                                            @if($item->is_synchro == 1)
                                                <span style="background: #0c9abb;padding: 3px">{{$item->name}}</span>
                                            @else
                                                <span style="background: #df8505;padding: 3px">{{$item->name}}</span>
                                            @endif
                                        @endforeach
                                        @endif

                                        </td>
                                        <td class="td-manage">
                                            @if( in_array(300301,$pageauth) || in_array(300301,$manageauth))
                                                <a title="详情" class=""  href='{{ url("/progress/progressParamsDetail/".$val->id) }}'>
                                                    <i class="layui-icon btn btn-info" >详情</i>
                                                </a>
                                            @endif
                                            @if(in_array(300302,$pageauth)  || in_array(300302,$manageauth))
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <a title="编辑" class="btn btn-success"  href='{{ url("/progress/editProgressParams/".$val->id) }}'>
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



@endsection
