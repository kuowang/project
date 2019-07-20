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
                        审核用户列表<a id="dynamicTable"></a>
                    </div>

                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search">
                                用户名:<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
                                &nbsp;&nbsp;&nbsp;
                                类型：
                                <select name="type" id="type" class="span2" style="min-width: 80px">
                                    @if($type == 1)
                                        <option value="1" selected="selected">审核通过</option>
                                        <option value="0">待审核</option>
                                        <option value="-1">审核不通过</option>
                                    @elseif($type ==0)
                                        <option value="1" >审核通过</option>
                                        <option value="0" selected="selected">待审核</option>
                                        <option value="-1">审核不通过</option>
                                    @else
                                        <option value="1" >审核通过</option>
                                        <option value="0">待审核</option>
                                        <option value="-1" selected="selected">审核不通过</option>
                                    @endif
                                </select>


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
                                <th>用户ID</th>
                                <th>用户名称</th>
                                <th>用户权限</th>
                                <th>创建人</th>
                                <th>创建时间</th>
                                <th>审核人</th>
                                <th>审核时间</th>
                                <th>审核状态</th>
                                <th>用户状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($data as $k =>$val)
                                @if($k%2 ==1)
                                    <tr class="gradeC">
                                @else
                                    <tr class="gradeA success">
                                @endif

                                    <td>
                                        {{ $val->uid }}
                                    </td>
                                    <td>{{ $val->name }}</td>
                                    <td>
                                        @if (isset($userRoleList[$val->uid]))
                                            @foreach ($userRoleList[$val->uid] as $v)
                                                {{ $v->role_name }} &nbsp;&nbsp;
                                            @endforeach
                                        @endif
                                    </td>
                                    <td>{{ $val->creator }}</td>
                                    <td>{{ $val->created_at }}</td>
                                    <td>{{ $val->examine_name }}</td>
                                    <td>{{ $val->updated_at }}</td>
                                    <td>
                                        @if($val->status ==0)
                                            待审核
                                        @elseif($val->status ==1)
                                            审核通过
                                        @elseif($val->status ==-1)
                                            审核未通过
                                        @elseif($val->status ==-2)
                                            禁用
                                        @endif
                                    </td>

                                    <td>
                                        @if($val->user_status ==0)
                                            待审核
                                        @elseif($val->user_status ==1)
                                            活跃
                                        @elseif($val->user_status ==-1)
                                            审核未通过
                                        @elseif($val->user_status ==-2)
                                            禁用
                                        @endif
                                    </td>

                                    <td class="td-manage">
                                        @if($val->status ==0 )
                                        <a class="btn btn-success" title=""  href="/admin/examine_status/{{ $val->id }}/1">
                                            <i class="layui-icon">通过</i>
                                        </a>
                                        <a class="btn btn-warning" title="不通过"  href="/admin/examine_status/{{ $val->id }}/0">
                                            <i class="layui-icon">不通过</i>
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
    <style>
        .dashboard-wrapper .left-sidebar {
            margin:auto;
        }
    </style>



@endsection
