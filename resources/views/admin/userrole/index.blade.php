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
              <cite>项目配置</cite></a>
          </span>
          <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5">

                                <div class="layui-inline layui-show-xs-block">
                                    <input type="text" name="search" value="{{ $search }}" placeholder="请输入用户名或邮箱" autocomplete="off" class="layui-input">
                                </div>

                                <div class="layui-inline layui-show-xs-block">
                                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                                </div>
                            </form>
                        </div>
                        <div class="layui-card-header">
                            <button class="layui-btn" onclick="xadmin.open('添加新用户','{{ url("/admin/add_user_info") }}',600,400)"><i class="layui-icon"></i>添加新用户</button>
                        </div>
                        <div class="layui-card-body layui-table-body layui-table-main">
                            <table class="layui-table layui-form">
                                <thead>
                                  <tr>
                                    <th>用户ID</th>
                                    <th>用户名称</th>
                                    <th>邮箱名</th>
                                    <th>角色</th>
                                    <th>创建时间</th>
                                    <th>修改时间</th>
                                    <th>操作</th>
                                  </tr>
                                </thead>
                                <tbody>

                                @foreach ($data as $val)
                                    <tr>
                                        <td>
                                            {{ $val->id }}
                                        </td>
                                        <td>{{ $val->name }}</td>
                                        <td>{{ $val->email }}</td>
                                        <td>
                                            @if (isset($userRoleList[$val->id]))
                                            @foreach ($userRoleList[$val->id] as $v)
                                                    {{ $v->role_name }} &nbsp;&nbsp;
                                            @endforeach
                                            @endif
                                        </td>
                                        <td>{{ $val->created_at }}</td>
                                        <td>{{ $val->updated_at }}</td>

                                        <td class="td-manage">
                                            <a title="编辑用户"  onclick="xadmin.open('编辑用户','{{ url("/admin/edit_user_info/".$val->id) }}',600,400)" href="javascript:;">
                                                <i class="layui-icon">&#xe642;编辑用户</i>
                                            </a>
                                        </td>
                                    </tr>

                                @endforeach


                                </tbody>
                            </table>
                        </div>
                       @php
                        echo $page;
                       @endphp

                    </div>
                </div>
            </div>
        </div> 
    </body>
    <script>
      layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var  form = layui.form;



        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });


      });

       /*用户-停用*/
      function member_stop(obj,id){
          layer.confirm('确认要停用吗？',function(index){

              if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }
              
          });
      }

      /*用户-删除*/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              //发异步删除数据
              $(obj).parents("tr").remove();
              layer.msg('已删除!',{icon:1,time:1000});
          });
      }



      function delAll (argument) {
        var ids = [];

        // 获取选中的id 
        $('tbody input').each(function(index, el) {
            if($(this).prop('checked')){
               ids.push($(this).val())
            }
        });
  
        layer.confirm('确认要删除吗？'+ids.toString(),function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>
</html>