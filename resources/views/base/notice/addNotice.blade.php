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
        <![endif]-->
    </head>
    <body>
        <div class="layui-fluid">
            <div class="layui-row">
                <form class="layui-form" >


                    <div class="layui-form-item">
                        <label for="remark" class="layui-form-label">
                            <span class="x-red">*</span>标题名称</label>
                        <div class="layui-input-inline">
                            <input type="text" id="name" name="title" required="" lay-verify="name" autocomplete="off" class="layui-input"></div>
                    </div>


                    <div class="layui-input-inline">
                            <div class="layui-form-item layui-form-text">
                                <label class="layui-form-label">内容</label>
                                <div class="layui-input-block">
                                    <textarea name="content" placeholder="请输入内容" class="layui-textarea" style="width: 255px;"></textarea>
                                </div>
                            </div>
                    </div>
                    <div class="layui-form-item">
                        <label for="remark" class="layui-form-label">
                            <span class="x-red">*</span>状态</label>
                        <div class="layui-input-inline">
                            <select name="status" id="status" class="span12" style="min-width: 80px">
                                    <option value="1" selected="selected">有效</option>
                                    <option value="0">无效</option>
                            </select>

                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label for="remark" class="layui-form-label">
                            <span class="x-red">*</span>发布日期</label>
                        <div class="layui-input-inline">
                            <input type="text"  name="pubdate"  lay-verify="name" placeholder="yyyy-MM-dd H:i:s" class="layui-input"id="pubdate"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_repass" class="layui-form-label"></label>
                        <button class="btn btn-success" lay-filter="add" lay-submit="">提 交</button></div>
                </form>
            </div>
        </div>

        <script>
            layui.use('laydate', function(){
                var laydate = layui.laydate;
                //执行一个laydate实例
                laydate.render({
                    elem: '#pubdate' //指定元素
                    ,type: 'datetime'
                    ,zIndex:999999
                });
            });

            layui.use(['form', 'layer','jquery'],
            function() {
                $ = layui.jquery;
                var form = layui.form,
                layer = layui.layer;
                //监听提交
                form.on('submit(add)', function(data) {
                    $("input").each(function(){
                        if($(this).val()){
                        }else{
                            layer.msg('有信息没有填写完全，请填写完成后，再提交。');
                            return false;
                        }
                    });

                    $.ajax({
                        url:'{{ url("base/post_add_notice") }}',
                        type:'post',
                        dataType:'text',
                        contentType: 'application/json',
                        data:JSON.stringify(data.field),
                        success:function(data){
                            console.log(data);
                            datalist =JSON.parse(data);
                            if(datalist.status == 1){
                                //发异步，把数据提交给php
                                //关闭当前frame
                                var index = parent.layer.getFrameIndex(window.name);
                                parent.layer.close(index);
                                // 可以对父窗口进行刷新
                                parent.location.reload();
                            }else{
                                layer.msg("提交失败")
                            }
                        },
                        error:function () {
                            layer.msg("提交失败")
                        }
                    });
                    //发异步，把数据提交给php
                    return false;
                });

            });</script>

    </body>

</html>