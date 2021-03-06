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
                            <input type="hidden" id="id" name="id" value="{{ $data->id }}" required="" lay-verify="nikename" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_username" class="layui-form-label">
                            <span class="x-red">*</span>字段名</label>
                        <div class="layui-input-inline">

                            <select name="field"  class="span12" style="min-width: 80px">
                                @foreach($params as $key=>$item)
                                    @if($key == $data->field)
                                        <option selected="selected" value="{{$key}}" >{{$item}}</option>
                                    @else
                                        <option value="{{$key}}" >{{$item}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label for="L_username" class="layui-form-label">
                            <span class="x-red">*</span>系统名称</label>
                        <div class="layui-input-inline">
                            <input type="text" id="name" name="name" value="{{ $data->name }}" required="" lay-verify="nikename" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_username" class="layui-form-label">
                            <span class="x-red">*</span>排序</label>
                        <div class="layui-input-inline">
                            <input type="text" id="sort" name="sort" value="{{ $data->sort }}" onclick="key(this)" required="" lay-verify="nikename" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label for="L_repass" class="layui-form-label"></label>
                        <input type="submit" class="btn btn-success" lay-filter="add" lay-submit="" value="提交"></div>
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
                        url:'{{ url("admin/postSystemSetting") }}',
                        type:'post',
                        dataType:'text',
                        contentType: 'application/json',
                        data:JSON.stringify(data.field),
                        success:function(data){
                            console.log(data);
                            if(data == 'success'){
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

            });
            //点击只能输入数字
            function key(th){
                $(th).keyup(function(){
                    $(this).val($(this).val().replace(/[^0-9.]/g,''));
                }).bind("paste",function(){  //CTR+V事件处理
                    $(this).val($(this).val().replace(/[^0-9.]/g,''));
                }).css("ime-mode", "disabled"); //CSS设置输入法不可用
                va =$(th).val();
                if(va > 1000000000 || va < 0) {
                    $(th).val(0);
                }
            }


        </script>

    </body>

</html>