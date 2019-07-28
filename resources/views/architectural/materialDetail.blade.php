@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">

                    <div class="widget">
                        <div class="widget-header">
                            <div class="title">
                                建筑子系统
                            </div>
                            <span class="tools">
                      <a class="fs1" aria-hidden="true" data-icon="&#xe090;"></a>
                    </span>
                        </div>
                        <div class="widget-body">
                            <div id="dt_example" class="example_alt_pagination">
                                <table class="layui-table layui-form">
                                    <thead>
                                    <tr>
                                        <th>建筑子系统名称</th>
                                        <th>建筑系统归属</th>
                                        <th>子系统编码</th>
                                        <th>系统状态</th>
                                        <th>工况代码</th>
                                        <th>创建人</th>
                                        <th>创建日期</th>

                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                        {{ $sub_architect->sub_system_name }}
                                        <td>
                                        {{ $guishu_name}}
                                        <td>
                                            {{ $sub_architect->sub_system_code }}
                                        </td>
                                        <td>
                                            @if($sub_architect->status ==1)
                                                有效
                                            @else
                                                <span class="btn btn-warning">无效</span>
                                            @endif
                                        </td>
                                        <td>{{ $sub_architect->work_code }}</td>
                                        <td>{{ $sub_architect->username }}</td>
                                        <td>{{ $sub_architect->created_at }}</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="widget">
                        <div class="widget-header">
                            <div class="title">
                                子系统关联材料
                            </div>
                            <span class="title"style="float: right;">

                    </span>
                        </div>
                        <div class="widget-body">
                            <div id="dt_example" class="example_alt_pagination">
                                <table class="layui-table layui-form">
                                    <thead>
                                    <tr>
                                        <th>关联材料名称</th>
                                        <th>关联材料编码</th>
                                        <th>种类</th>
                                        <th>位置</th>
                                        <th>用途</th>
                                        <th>代码</th>
                                        <th>规格特性要求</th>
                                        <th>损耗</th>
                                        <th>状态</th>
                                    </thead>
                                    <tbody id="zixitong">
                                    @foreach($material as $v)
                                        <tr>
                                            <td>
                                               {{ $v->material_name }}
                                            </td>
                                            <td>
                                             {{ $v->material_code }}
                                            </td>
                                            <td>
                                               {{ $v->material_type }}
                                            </td>
                                            <td>
                                          {{ $v->position }}
                                            </td>
                                            <td>
                                               {{ $v->purpose }}
                                            </td>
                                            <td>
                                               {{ $v->material_number }}
                                            </td>
                                            <td>
                                               {{ $v->characteristic }}
                                            </td>
                                            <td>
                                            {{ $v->waste_rate }}
                                            </td>

                                            <td>
                                                 @if($v->status ==1)
                                                      有效
                                                    @else
                                                    <span class="btn btn-warning">无效</span>
                                                    @endif

                                            </td>

                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                                <div class="clearfix">
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="layui-form-item" style="float: right;clear: left">
                        <a href="javascript:history.go(-1)">
                            <label for="L_repass" class="layui-form-label"></label>
                            <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                        </a>
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

        input{
            width: 90%;
        }
    </style>

@endsection
