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
                @if(in_array(1502,$pageauth))
                    <div class="metro-nav-block nav-block-blue">
                        <a href="/project/projectEnginStart/{{$id}}">
                            <div class="fs1" aria-hidden="true" data-icon="">洽谈工程 ({{$project->start_count}})</div>
                        </a>
                    </div>
                @endif
                @if(in_array(1503,$pageauth))
                    <div class="metro-nav-block nav-block-green" >
                        <a href="/project/projectEnginConduct/{{$id}}">
                            <div class="fs1"  data-icon="">实施工程 ({{$project->conduct_count}})</div>
                        </a>
                    </div>
                @endif
                @if(in_array(1504,$pageauth))
                    <div class="metro-nav-block nav-block-yellow"  style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                        <a href="/project/projectEnginCompleted/{{$id}}">
                            <div class="fs1" aria-hidden="true" data-icon="">竣工工程({{$project->completed_count}})</div>
                        </a>
                    </div>
                @endif
                @if(in_array(1505,$pageauth))
                    <div class="metro-nav-block nav-block-red">
                        <a href="/project/projectEnginTermination/{{$id}}">
                            <div class="fs1" aria-hidden="true" data-icon="">终止工程 ({{$project->termination_count}})</div>
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
                            竣工工程<a id="dynamicTable"></a>
                        </div>
                        <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                            {{$project->project_name}}
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">

                            <table class="layui-table layui-form">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>工程名称</th>
                                    <th>工程地址</th>
                                    <th>建筑面积</th>
                                    <th>建筑层数</th>
                                    <th>建筑数量</th>
                                    <th>合同编号</th>
                                    <th>销售负责人</th>
                                    <th>设计负责人</th>
                                    <th>预算负责人</th>
                                    <th>合约负责人</th>
                                    <th>创建时间</th>
                                    <th>执行操作</th>
                                </tr>
                                </thead>
                                <tbody>

                                @foreach ($data as $k=>$val)
                                    <tr>
                                        <td>{{ $k+1 }}</td>
                                        <td>{{ $val->engineering_name }}</td>
                                        <td>{{$val->engin_address}}</td>
                                        <td>{{ $val->build_area }}</td>
                                        <td>{{ $val->build_floor }}</td>
                                        <td>{{$val->build_number}}</td>
                                        <td>{{$val->contract_code}}</td>
                                        <td>{{$val->sale_username}}</td>
                                        <td>{{$val->design_username}}</td>
                                        <td>{{$val->budget_username}}</td>
                                        <td>{{$val->technical_username}}</td>
                                        <td>{{ $val->created_at }}</td>
                                        <td class="td-manage">
                                            @if( (in_array(150401,$pageauth) && $val->created_uid == $uid ) || in_array(150401,$manageauth))
                                                <a title="查看详情" class="btn btn-info"  href="/project/projectCompletedDetail/{{ $val->id }}">
                                                    <i class="layui-icon">详情</i>
                                                </a>
                                            @endif

                                        </td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                            <div>
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

@endsection
