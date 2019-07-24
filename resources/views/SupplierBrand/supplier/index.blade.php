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
                        供应商列表<a id="dynamicTable"></a>
                        @if(in_array(450101,$pageauth) || in_array(4511,$manageauth))
                        <a class="btn btn-success" title="新增供应商" id="addnotice"  href="/supplier/addSupplier">
                            <i class="layui-icon">新增供应商</i>
                        </a>
                        @endif
                    </div>
                    @if(in_array(450102,$pageauth) || in_array(4510,$manageauth))
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/supplier/supplierList" method="get">
                                供应商名称: &nbsp;<input type="text" name="search" value="{{ $search }}" class="input-medium search-query">
                                <button type="submit" class="btn">搜索</button>
                            </form></label>
                    </div>
                    @endif

                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="table table-condensed table-striped table-hover layui-table layui-form" id="data-table">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>品牌名称</th>
                                <th>厂家名称</th>
                                <th>供应商名称</th>
                                <th>供应商地址</th>
                                <th>联系人</th>
                                <th>联系人电话</th>
                                <th>联系人电子邮箱</th>
                                <th>供应商状态</th>
                                <th style="width: 150px">操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($data as $k =>$val)
                                @if($k%2 ==1)
                                    <tr class="gradeC">
                                @else
                                    <tr class="gradeA success">
                                @endif
                                        <td class="brand_id_{{ $val->id }}">
                                            {{ $k+1 }}
                                        </td>
                                        <td class="brand_name_{{ $val->id }}">{{ $val->brand_name }}</td>
                                        <td >{{ $val->manufactor }}</td>
                                        <td >{{ $val->supplier }}</td>
                                        <td >{{ $val->address }}</td>
                                        <td >{{ $val->contacts }}</td>
                                        <td >{{ $val->telephone }}</td>
                                        <td >{{ $val->email }}</td>


                                        <td class="notice_content_{{ $val->id }}">
                                            <input type="hidden" name="brand_status" class="brand_status_{{$val->id}}" value="{{ $val->status }}">
                                            @if($val->status ==1 )
                                                显示
                                            @else
                                                隐藏
                                            @endif</td>

                                        <td class="td-manage ">
                                            @if((in_array(450103,$pageauth) && $val->creator == $uid ) || in_array(4512,$manageauth))
                                            <a title="编辑供应商" class="btn btn-success"  href="/supplier/editSupplier/{{ $val->supplier_id }}">
                                                <i class="layui-icon">编辑</i>
                                            </a>
                                            @endif
                                                @if((in_array(450103,$pageauth)&& $val->creator == $uid ) || in_array(4513,$manageauth))
                                                    <a title="删除" class="btn btn-success" onclick="editBrand({{ $val->id }})" href="javascript:;">
                                                        <i class="layui-icon">删除</i>
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
