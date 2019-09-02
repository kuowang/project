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
        <div class="metro-nav">
            @if(in_array(350001,$pageauth))
            <div class="metro-nav-block nav-block-blue" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                <a href="/architectural/enginStart">
                    <div class="fs1" aria-hidden="true" data-icon="">洽谈项目</div>
                </a>
            </div>
            @endif
            @if(in_array(350002,$pageauth))
            <div class="metro-nav-block nav-block-green">
                <a href="/architectural/enginConduct">
                    <div class="fs1"  data-icon="">实施项目</div>
                </a>
            </div>
            @endif
            @if(in_array(350003,$pageauth))
            <div class="metro-nav-block nav-block-yellow">
                <a href="/architectural/enginCompleted">
                    <div class="fs1" aria-hidden="true" data-icon="">竣工项目</div>
                </a>
            </div>
            @endif
            @if(in_array(350004,$pageauth))
            <div class="metro-nav-block nav-block-red">
                <a href="/architectural/enginTermination">
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
                        洽谈项目<a id="dynamicTable"></a>
                    </div>
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/architectural/enginStart" method="get">
                                项目名称:<input type="text" name="project_name" value="{{ $project_name }}" class="input-medium search-query">
                                项目地点:<input type="text" name="address" value="{{ $address }}" class="input-medium search-query">
                                项目负责人:<input type="text" name="customer_leader" value="{{ $customer_leader }}" class="input-medium search-query">
                                洽谈指数:<select name="success_level" id="stateAndCity" class="input-medium search-query" style="min-width: 80px;border-radius: 15px;color:red;">
                                    <option value="0" ></option>
                                    @if($success_level ==1) <option value="1" selected="selected">★</option> @else <option value="1">★</option> @endif
                                    @if($success_level ==2) <option value="2" selected="selected">★★</option> @else <option value="2">★★</option> @endif
                                    @if($success_level ==3) <option value="3" selected="selected">★★★</option> @else <option value="3">★★★</option> @endif
                                    @if($success_level ==4) <option value="4" selected="selected">★★★★</option> @else <option value="4">★★★★</option> @endif
                                    @if($success_level ==5) <option value="5" selected="selected">★★★★★</option> @else <option value="5">★★★★★</option> @endif
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
                                <th>工程名称</th>
                                <th>建筑面积</th>
                                <th>建筑层数</th>
                                <th>项目地址</th>
                                <th>设计负责人</th>
                                <th>项目状态</th>
                                <th>创建时间</th>
                                <th>设计参数管理</th>
                                <th>设计工况管理</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($data as $k=>$val)
                                <tr>

                                    <td>{{ $k+1 }}</td>
                                    <td >{{ $val->project_name }}</td>
                                    <td>{{ $val->engineering_name }}</td>
                                    <td>{{ $val->build_area }}</td>
                                    <td>{{ $val->build_floor }}</td>
                                    <td>{{ $val->address_detail }}</td>
                                    <td>{{ $val->design_username }}</td>
                                    <td>洽谈</td>
                                    <td>{{ $val->created_at }}</td>
                                    <td class="td-manage">
                                        @if( (in_array(35000101,$pageauth) && $val->design_uid == $uid ) || in_array(350701,$manageauth))
                                            <a title="查看详情" class="btn btn-info"  href="/architectural/enginStartDetail/{{ $val->engineering_id }}">
                                                <i class="layui-icon">详情</i>
                                            </a>
                                        @endif
                                        @if((in_array(35000102,$pageauth) && $val->design_uid == $uid ) || in_array(350702,$manageauth))
                                            <a title="编辑" class="btn btn-success"  href="/architectural/editEngin/{{ $val->engineering_id }}">
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                        @endif
                                    </td>
                                    <td class="td-manage">
                                        @if( (in_array(35000101,$pageauth) && $val->design_uid == $uid ) || in_array(350701,$manageauth))
                                            <a title="查看详情" class="btn btn-info"  href="/architectural/enginStartDetail/{{ $val->engineering_id }}">
                                                <i class="layui-icon">详情</i>
                                            </a>
                                        @endif
                                        @if((in_array(35000102,$pageauth) && $val->design_uid == $uid ) || in_array(350702,$manageauth))
                                            <a title="编辑" class="btn btn-success"  href="/architectural/editEngin/{{ $val->engineering_id }}">
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




    </script>

@endsection
