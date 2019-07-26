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
                        部件集成列表<a id="dynamicTable"></a>

                    </div>
                    @if(in_array(450201,$pageauth) || in_array(4510,$manageauth))
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        <label>
                            <form class="form-search" action="/material/materialList" method="get">
                                系统工程: &nbsp;<input type="text" name="system_name" value="{{ $system_name }}" class="input-medium search-query">
                                子系统工程: &nbsp;<input type="text" name="sub_system_name" value="{{ $sub_system_name }}" class="input-medium search-query">
                                材料名称: &nbsp;<input type="text" name="material_name" value="{{ $material_name }}" class="input-medium search-query">
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
                                <th>材料名称</th>
                                <th>材料编码</th>
                                <th>规格特性</th>
                                <th>预算单位</th>
                                <th>采购单位</th>
                                <th>包装规格</th>
                                <th>包装要求</th>
                                <th style="width: 120px">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php
                            $syatem_code =0;
                            $syatem_sub_code =0;
                            @endphp
                            @foreach ($data as $k =>$val)
                                <!--补充系统工程-->
                                @if($val->system_code != $syatem_code  )
                                <tr class="gradeX warning odd">
                                    <td colspan="10">{{$val->system_name}}</td>
                                </tr>
                                @php
                                $syatem_code = $val->system_code;
                                @endphp
                                @endif
                                <!--补充子系统工程-->
                                @if($val->sub_system_code != $syatem_sub_code  )
                                    <tr class="gradeA success odd">
                                        <td></td>
                                        <td colspan="9">{{$val->sub_system_code}}</td>
                                    </tr>
                                    @php
                                        $syatem_sub_code = $val->sub_system_code;
                                    $i=1;
                                    @endphp
                                @else
                                    @php
                                    $i=1+$i;
                                    @endphp
                                @endif

                                <tr class="gradeC">
                                        <td class="brand_id_{{ $val->id }}">
                                            {{ $i }}
                                        </td>
                                        <td class="brand_name_{{ $val->id }}">{{$val->material_name}}</td>
                                        <td >{{$val->material_code}}</td>
                                        <td >{{$val->characteristic}}</td>
                                        <td >{{$val->budget_unit}}</td>
                                        <td >{{$val->purchase_unit}}</td>
                                        <td >{{$val->pack_specification}}</td>
                                        <td >{{$val->pack_claim}}</td>

                                        <td class="td-manage ">
                                        @if((in_array(450202,$pageauth) && $val->material_created_uid == $uid ) || in_array(4512,$manageauth))
                                            <a title="查看详情" class="btn btn-info"  href="/supplier/editSupplier/{{ $val->id }}">
                                                <i class="layui-icon">详情</i>
                                            </a>
                                        @endif
                                        @if((in_array(450202,$pageauth) && $val->material_created_uid == $uid ) || in_array(4512,$manageauth))
                                            <a title="编辑" class="btn btn-success"  href="/supplier/editSupplier/{{ $val->id }}">
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
<script type="text/javascript">
    function deleteSupplierBrand(id){
        $.ajax({
            url:'/supplier/deleteSupplierBrand/'+id,
            type:'get',
            // contentType: 'application/json',
            success:function(data){
                console.log(data);
                if(data.status == 1){
                    layui.use('layer', function(){
                        var layer = layui.layer;
                        layer.msg('删除成功');
                        setTimeout(function(){ location.href=location.href; }, 1000);
                    });
                }
            },
        });
    }
</script>
@endsection
