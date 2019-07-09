@extends('layouts.web')

@section('content')

<div class="left-sidebar">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        角色权限<a id="dynamicTable"></a>
                    </div>

                    <span class="tools">
                      <a class="fs1" aria-hidden="true" data-icon="&#xe090;"></a>
                    </span>
                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">

                        <form class="layui-form"  action="{{ url('/admin/post_role_authority/'.$id) }}" method="post">

                            <table class="layui-table layui-form table table-condensed table-striped table-hover table-bordered pull-left">
                                <thead>
                                <tr>
                                    <th>名称</th>
                                    <th>ID</th>
                                    <th>父ID</th>
                                    <th>是否左侧导航显示</th>
                                    <th>创建时间</th>
                                    <th>操作</th></tr>
                                </thead>
                                <tbody>

                                @foreach ($data as $val)
                                    @if($val->level ==1)
                                    <tr class="type_show_{{ $val->auth_id }}">
                                    @else
                                    <tr class="type_show_{{ $val->auth_id }}" style="display: none">
                                    @endif
                                        <td>
                                            @php
                                                echo  str_repeat('&nbsp;', 6*($val->level -1));
                                            @endphp
                                            @if (in_array($val->auth_id,$auth))
                                                <input type="checkbox" name="auth_id[]" class="auth_{{ $val->auth_id }}" value="{{ $val->auth_id }}" checked="checked" lay-filter="checkall" lay-skin="primary">
                                            @else
                                                <input type="checkbox" name="auth_id[]" class="auth_{{ $val->auth_id }}" value="{{ $val->auth_id }}" lay-filter="checkall" lay-skin="primary">
                                            @endif

                                            <div class="layui-unselect layui-form-checkbox" lay-skin="primary">
                                                <i class="layui-icon layui-icon-ok"></i>
                                            </div>
                                        {{ $val->name }}
                                        <td>
                                            {{ $val->auth_id }}
                                        </td>

                                        <td>{{ $val->parent_id }}</td>

                                        <td>
                                            @if ($val->is_show == 1)
                                                是
                                            @else
                                                否
                                            @endif
                                        </td>
                                        <td>{{ $val->created_at }}</td>
                                        <td onclick="show({{ $val->auth_id }})" >
                                            @if($val->is_leaf == 0 && $val->level ==1)
                                            <div class="yincang_{{ $val->auth_id }}">显示</div>
                                            @elseif($val->is_leaf == 0)
                                            <div class="yincang_{{ $val->auth_id }}">隐藏</div>
                                            @endif
                                        </td>
                                    </tr>

                                @endforeach


                                </tbody>
                            </table>
                            <div class="layui-form-item">
                                <input type="submit" class="layui-btn" lay-filter="add" lay-submit="" value="提交" style="width: 100px">
                            </div>
                        </form>
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
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
    <script>
        layui.use(['laydate','form'], function(){
            var laydate = layui.laydate;
            var  form = layui.form;
            // 监听全选
            form.on('checkbox(checkall)', function(data){
                //alert($(this).val());
                id =$(this).val();
                //选择子集默认选中父级
                len =id.length;
                if(len > 2){
                    str=id.substring(0,2);
                    $("input[class='auth_"+str+"']").prop('checked',true);
                }
                if(len > 4){
                    str=id.substring(0,4);
                    $("input[class='auth_"+str+"']").prop('checked',true);
                }
                if(len > 6){
                    str=id.substring(0,6);
                    $("input[class='auth_"+str+"']").prop('checked',true);
                }
                if(len > 8){
                    str=id.substring(0,8);
                    $("input[class='auth_"+str+"']").prop('checked',true);
                }

                if(data.elem.checked){
                    //$('tbody input').prop('checked',true);
                    $("input[class^='auth_"+id+"']").prop('checked',true);
                }else{
                    //$('tbody input').prop('checked',false);
                    $("input[class^='auth_"+id+"']").prop('checked',false);
                }
                form.render('checkbox');
            });
        });
        function  show(id){
            htm =$('.yincang_'+id).html();
            if(htm == '隐藏'){
                $("tr[class^='type_show_"+id+"']").hide();
                $('.yincang_'+id).html('显示');
                $("tr[class='type_show_"+id+"']").show();
            }else{
                $("tr[class^='type_show_"+id+"']").show();
                $('.yincang_'+id).html('隐藏');
            }
        }

    </script>

@endsection
