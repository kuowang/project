<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="stylesheet" href="/style/css/font.css">
        <link rel="stylesheet" href="/style/css/xadmin.css">
        <!-- <link rel="stylesheet" href="./css/theme5.css"> -->
        <script src="/style/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="/style/js/xadmin.js"></script>
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a>
              <cite>角色-菜单列表</cite></a>
          </span>
          <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body layui-table-body layui-table-main">
                            <form class="layui-form"  action="{{ url('/admin/post_role_authority/'.$id) }}" method="post">

                            <table class="layui-table layui-form">
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
                                    <tr class="type_show_{{ $val->auth_id }}">
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
                                        <td onclick="show({{ $val->auth_id }})" ><div class="yincang_{{ $val->auth_id }}">隐藏</div></td>
                                    </tr>

                                @endforeach


                                </tbody>
                            </table>
                                <div class="layui-form-item">
                                    <input type="submit" class="layui-btn" lay-filter="add" lay-submit="" value="提交" style="width: 100px">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </body>
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
</html>