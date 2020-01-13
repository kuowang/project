@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-header">
                        <div class="title">
                            创建供应商
                            <span class="mini-title">
                       &nbsp;
                      </span>
                        </div>
                        <span class="tools">
                      <a class="fs1" aria-hidden="true" data-icon="" data-original-title=""></a>
                    </span>
                    </div>
                    <div class="widget-body">

                        <form class="form-horizontal no-margin" id="supplier_form" action="/supplier/postAddSupplier" method="post">
                            <div class="control-group">
                                <label class="control-label" for="manufactor">
                                    厂家名称:
                                </label>
                                <div class="controls controls-row">
                                    <input class="span6 layui-input" type="text" id="manufactor" name="manufactor" placeholder="公司名称">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="supplier">
                                    供应商名称:
                                </label>
                                <div class="controls">
                                    <input type="text" name="supplier" id="supplier" class="span6 layui-input" placeholder="供应商">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="address">
                                    供应商地址:
                                </label>
                                <div class="controls">
                                    <input type="text" name="address" id="address" class="span6 layui-input" placeholder="地址">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="contacts">
                                    联系人:
                                </label>
                                <div class="controls">
                                    <input type="text" name="contacts" id="contacts" class="span6 layui-input" placeholder="">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="telephone">
                                 联系人电话:
                                </label>
                                <div class="controls">
                                    <input type="text" name="telephone" id="telephone" class="span6 layui-input" placeholder="135********">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="email">
                                电子邮箱:
                                </label>
                                <div class="controls">
                                    <input type="text" name="email" id="email" class="span6 layui-input" placeholder="电子邮箱">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="status">
                                    状态:
                                </label>
                                <div class="controls">
                                    <select name="status" id="stateAndCity" class="span6" style="min-width: 80px">
                                            <option value="1" selected="selected">有效</option>
                                            <option value="0">无效</option>
                                    </select>
                                </div>
                            </div>


                            <div class="control-group">
                                <label class="control-label" for="role">
                                    品牌:
                                </label>
                                <div class="controls">
                                    @foreach ($brand as $val )
                                        <label class="checkbox">
                                            <input type="checkbox"  name="brand[]" value="{{ $val->id }}">
                                            {{ $val->brand_name }}
                                        </label>
                                    @endforeach
                                </div>
                            </div>
                            <div class="layui-form-item" style="float: right;clear: left">
                                <label for="L_repass" class="layui-form-label"></label>
                                <button class="btn btn-success" lay-filter="add" type="submit" lay-submit="" onclick='return form_submit()'>确认/保存</button>
                            </div>
                            <div class="layui-form-item" style="float: right;clear: left">
                                <a href="javascript:history.go(-1)">
                                    <label for="L_repass" class="layui-form-label"></label>
                                    <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </form>

                    </div>
                </div>
            </div>

        </div>
    </div>


   <script type="text/javascript">

        $("#supplier_form").submit(function() { //绑定提交表单触发
                 //this指向 from元素
            str ='';
            if($('#manufactor').val() == ''){
                str ='厂家不能为空';
            }else if($('#supplier').val() == ''){
                str ='供应商不能为空';
            }else if($('#address').val() == ''){
                str ='地址不能为空';
            }else if($('#contacts').val() == ''){
                str ='联系人不能为空';
            }else if($('#telephone').val() == ''){
                str ='手机号不能为空';
            }else if($('#email').val() == ''){
                str ='邮箱不能为空';
            }
            if(str != ''){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.msg(str);
                });
                return false;
            }
            return true;
        });






   </script>
@endsection
