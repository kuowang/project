@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
<div class="left-sidebar">
    <div class="row-fluid">
        <div class="span12">
            <form method="post" action="/finance/postEditFinanceInfo/{{$engin_id}}">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        项目财务基本信息
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
                                <th>项目名称</th>
                                <th>工程名称</th>
                                <th>原始合同总额（万元）</th>
                                <th>变更合同总额（万元）</th>
                                <th>毛利率（%）</th>
                                <th>毛利润（万元）</th>
                                <th>付款进度情况</th>
                            </thead>
                            <tbody>
                            <tr>
                                <td>{{ $project->project_name }}</td>
                                <td>{{ $engin->engineering_name }}</td>
                                <td>
                                    <input type="text" name="contract_amount" value="{{ isset($finance->contract_amount)?$finance->contract_amount:'' }}" onclick="key(this)" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="changed_contract_amount" value="{{ isset($finance->changed_contract_amount)?$finance->changed_contract_amount:'' }}"  onclick="key(this)" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="profit_rate" value="{{ isset($finance->profit_rate)?$finance->profit_rate:'' }}" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="profit_amount" value="{{ isset($finance->profit_amount)?$finance->profit_amount:'' }}" onclick="key(this)"  lay-skin="primary">
                                </td>
                                <td>
                                    <select name="status" id="status" class="span12" onchange="setstatus(this)"  onclick="key(this)"  style="min-width: 80px">
                                        @if(isset($finance->status) && ($finance->status ==0))
                                            <option value="1" >正常付款</option>
                                            <option value="0" selected="selected">非正常付款</option>
                                        @else
                                            <option value="1" selected="selected">正常付款</option>
                                            <option value="0">非正常付款</option>

                                        @endif
                                    </select>
                                </td>
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
                        合同执行付款情况
                    </div>
                    <span class="title"style="float: right;">
                        <a class="btn btn-success" onclick="add_xitong()" ><i class="layui-icon">增加合同执行情况 +</i></a>
                    </span>

                </div>
                <div class="widget-body">
                    <div id="dt_example" class="example_alt_pagination">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th>付款批次</th>
                                <th>付款批次名称</th>
                                <th>应收款占比（%）</th>
                                <th>应收款金额（万元）</th>
                                <th>合同执行情况</th>
                                <th>实际支付金额（万元）</th>
                                <th>实付款占比（%）</th>
                                <th>备注</th>
                                <th style="width: 60px">操作</th>
                            </thead>
                            <tbody id="zixitong">
                            @foreach($finance_item as $v)
                            <tr>
                                <td>
                                    <input type="hidden" name="item_id[]" value="{{ $v->id }}" lay-skin="primary">
                                    <input type="text" name="batch_num[]" value="{{ $v->batch_num }}" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="batch_name[]" value="{{ $v->batch_name }}" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="receivables_proportion[]"   onclick="key(this)"  value="{{ $v->receivables_proportion }}" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="receivables_price[]"  onclick="key(this)"   value="{{ $v->receivables_price }}" lay-skin="primary">
                                </td>
                                <td>
                                    <select name="sub_status[]" id="stateAndCity" class="span12" style="min-width: 80px">
                                        @if($v->status ==1)
                                            <option value="1" selected="selected">完成</option>
                                            <option value="0">未完成</option>
                                        @else
                                            <option value="1" >完成</option>
                                            <option value="0" selected="selected">未完成</option>
                                        @endif
                                    </select>
                                </td>

                                <td>
                                    <input type="text" name="payment_proportion[]"  onclick="key(this)"   value="{{ $v->payment_proportion }}" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="payment_price[]"   value="{{ $v->payment_price }}" lay-skin="primary">
                                </td>
                                <td>
                                    <input type="text" name="remark[]"   value="{{ $v->remark }}" lay-skin="primary">
                                </td>
                                <td><a  class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>

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
                <label for="L_repass" class="layui-form-label"></label>
                <button class="btn btn-success" lay-filter="add" type="submit" lay-submit="" onclick='return form_submit()'>确认/保存</button>
            </div>
            <div class="layui-form-item" style="float: right;clear: left">
                <a href="javascript:history.go(-1)">
                <label for="L_repass" class="layui-form-label"></label>
                    <span class="btn btn-success" lay-filter="add" lay-submit="">返回/取消</span>
                </a>
            </div>

            </form>
        </div>
    </div>
</div>

    <style>
        input{
            width: 80%;
        }
    </style>

    <script type="text/javascript">
        //删除事件
        function deleteTrRow(tr){
            $(tr).parent().parent().remove();
        }
        //添加事件
        function add_xitong() {
           str =`<tr><td>
                   <input type="hidden" name="item_id[]" value="0" lay-skin="primary">
                    <input type="text" name="batch_num[]" value="" lay-skin="primary">
                </td>
                <td><input type="text" name="batch_name[]" value="" lay-skin="primary"></td>
                <td><input type="text" name="receivables_proportion[]"   value="" lay-skin="primary"></td>
                <td><input type="text" name="receivables_price[]"   value="" lay-skin="primary"></td>
                <td><select name="sub_status[]" id="sub_status" class="span12" style="min-width: 80px">
                        <option value="1" selected="selected">完成</option>
                        <option value="0">未完成</option>
                    </select></td>

                <td><input type="text" name="payment_proportion[]"   value="" lay-skin="primary"></td>
                <td><input type="text" name="payment_price[]"   value="" lay-skin="primary"></td>
                <td><input type="text" name="remark[]"   value="" lay-skin="primary"></td>
                <td><a  class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>
            </tr>`;

            $("#zixitong").append(str);


            //点击文本框设置背景色
            $("input").focus(function(){
                $(this).css("background-color","#fff");
            });
        }
        //提交验证信息
        function form_submit(){
            var sum=0;
            $("input").each(function(){
                if($(this).val()){
                }else{
                    $(this).css('background','orange');
                    sum=1;
                }
            });
            if(sum == 1){
                layui.use('layer', function(){
                    var layer = layui.layer;
                    layer.msg('有信息没有填写完全，请填写完成后，再提交。');
                });
                return false;
            }
            return true;
        }
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
            //点击文本框设置背景色
            $("input").focus(function(){
                $(this).css("background-color","#fff");
            });
        }

    </script>

@endsection
