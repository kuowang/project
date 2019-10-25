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
                                    {{ isset($finance->contract_amount)?$finance->contract_amount:'' }}
                                </td>
                                <td>
                                    {{ isset($finance->changed_contract_amount)?$finance->changed_contract_amount:'' }}
                                </td>
                                <td>
                                    {{ isset($finance->profit_rate)?$finance->profit_rate:'' }}
                                </td>
                                <td>
                                    {{ isset($finance->profit_amount)?$finance->profit_amount:'' }}
                                </td>
                                <td>
                                    @if(isset($finance->status) && ($finance->status ==0))
                                        非正常付款
                                    @else
                                        正常付款
                                    @endif
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
                            </thead>
                            <tbody id="zixitong">
                            @foreach($finance_item as $v)
                            <tr>
                                <td>
                                    {{ $v->batch_num }}
                                </td>
                                <td>
                                    {{ $v->batch_name }}
                                </td>
                                <td>
                                    {{ $v->receivables_proportion }}
                                </td>
                                <td>
                                    {{ $v->receivables_price }}
                                </td>
                                <td>
                                    @if($v->status ==1)
                                            完成
                                    @else
                                       未完成
                                    @endif
                                </td>

                                <td>
                                    {{ $v->payment_proportion }}
                                </td>
                                <td>
                                    {{ $v->payment_price }}
                                </td>
                                <td>
                                    {{ $v->remark }}
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
    </script>

@endsection
