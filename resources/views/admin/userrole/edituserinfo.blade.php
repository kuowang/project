<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="stylesheet" href="/style/css/font.css">
        <link rel="stylesheet" href="/style/css/xadmin.css">
        <!-- <link rel="stylesheet" href="./css/theme5.css"> -->
        <script src="/style/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="/style/js/xadmin.js"></script>

        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
            <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
            <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]--></head>
    
    <body>
        <div class="layui-fluid">
            <div class="layui-row">
                <form class="layui-form" >
                    <div class="layui-form-item" style="display: none">
                        <label for="L_username" class="layui-form-label">
                            <span class="x-red">*</span>ID</label>
                        <div class="layui-input-inline">
                            <input type="hidden" id="id" name="id" value="{{ $user->id }}" required="" lay-verify="id" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="remark" class="layui-form-label">
                            <span class="x-red">*</span>用户名</label>
                        <div class="layui-input-inline">
                            <input type="text" id="username" name="username" value="{{ $user->name }}" required="" lay-verify="username" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="remark" class="layui-form-label">
                            <span class="x-red">*</span>邮箱</label>
                        <div class="layui-input-inline">
                            <input type="text" id="email" name="email" value="{{ $user->email }}" required="" lay-verify="email" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="remark" class="layui-form-label">
                            密码</label>
                        <div class="layui-input-inline">
                            <input type="text" id="pwd" name="pwd"  lay-verify="pwd" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="remark" class="layui-form-label">
                            确认密码</label>
                        <div class="layui-input-inline">
                            <input type="text" id="checkpwd" name="checkpwd"  lay-verify="checkpwd" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">

                        <label for="remark" class="layui-form-label">
                            角色</label>
                        <div class="layui-input-inline">
                        @foreach ($role_list as $val )
                        <div >
                            @if (in_array($val->id ,$user_role))
                                <input type="checkbox" id="checkpwd" name="checkpwd" checked="checked" lay-verify="checkpwd" autocomplete="off" class="layui-input">
                            {{ $val->name }}
                            @else
                                <input type="checkbox" id="checkpwd" name="checkpwd"  lay-verify="checkpwd" autocomplete="off" class="layui-input">
                                {{ $val->name }}
                            @endif
                        </div>
                        @endforeach
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label for="L_repass" class="layui-form-label"></label>
                        <input type="submit" class="layui-btn" lay-filter="add" lay-submit="" value="提交">
                    </div>
                </form>
            </div>
        </div>
        <script>layui.use(['form', 'layer'],
            function() {
                $ = layui.jquery;
                var form = layui.form,
                layer = layui.layer;

                //监听提交
                form.on('submit(add)', function(data) {
                    console.log(data);
                    $.ajax({
                        url:'{{ url("admin/post_role") }}',
                        type:'post',
                        dataType:'text',
                        contentType: 'application/json',
                        data:JSON.stringify(data.field),
                        success:function(data){
                            console.log(data);
                            datalist =JSON.parse(data);
                            if(datalist.status == 1){
                                //发异步，把数据提交给php
                                layer.alert("编辑成功", {
                                        icon: 6
                                    },
                                    function() {
                                        // 获得frame索引
                                        var index = parent.layer.getFrameIndex(window.name);
                                        //关闭当前frame
                                        parent.layer.close(index);
                                        xadmin.father_reload();
                                    });
                            }else{
                                layer.msg("提交失败")
                            }
                        },
                        error:function () {
                            layer.msg("提交失败")
                        }
                    });
                    return false;
                });

            });</script>
        <script>var _hmt = _hmt || []; (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();</script>
    </body>

</html>