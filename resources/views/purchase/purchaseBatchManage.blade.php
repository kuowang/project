@extends('layouts.web')

@section('content')
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

    <style type="text/css">
        .pro-title{
            background: #e6e6e6;
        }
        /* */
         .hiddenitem input[type="text"]{
            border: 1px solid #fff;
        }


        .layui-table td, .layui-table th {
            border: solid 1px #ccc;
        }
        input[type="text"]{
            width: auto;
        }
    </style>
    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-header" style="text-align: center">
                        <div class="title">
                            <span class="btn btn-info">采购批次管理</span>
                        </div>
                        <div  style="font-size: 16px;     text-align: center;" >
                            <b>{{$project->project_name}}</b>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">
                                    <table class="layui-table layui-form">
                                        <thead>
                                            <tr>
                                                <th colspan="6"><span class="btn btn-info">项目基本信息</span></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td  class="pro-title">项目名称</td>
                                            <td  >{{$project->project_name}}</td>
                                            <td  class="pro-title">项目地点（货物目的地）</td>
                                            <td >{{$project->province}}{{$project->city}}{{$project->county}}{{$project->address_detail}}{{$project->foreign_address}}
                                            </td>
                                            <td  class="pro-title">工程名称</td>
                                            <td  >{{$engineering->engineering_name}}</td>
                                        </tr>

                                        <tr>
                                            <td class="pro-title">建筑面积(m²)</td>
                                            <td >{{$engineering->build_area}}</td>
                                            <td class="pro-title">建筑楼层(层数)</td>
                                            <td >{{$engineering->build_floor}}</td>
                                            <td class="pro-title">建筑数量(栋)</td>
                                            <td >{{$engineering->build_number}}</td>
                                        </tr>
                                        <tr>
                                            <td class="pro-title">场地自然条件</td>
                                            <td >{{$project->environment}}</td>
                                            <td class="pro-title">交通条件</td>
                                            <td >{{$project->traffic}}</td>
                                            <td class="pro-title">材料储放条件</td>
                                            <td >{{$project->material_storage}}</td>
                                        </tr>

                                        </tbody>
                                    </table>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="widget">
                    <div class="widget-header">
                        <div class="title">
                            采购批次管理
                        </div>
                        @if($engineering->status ==1 )
                        <span class="title"style="float: right;">
                        <a class="btn btn-success" onclick="add_pici()" ><i class="layui-icon">创建新批次 +</i></a>
                        </span>
                        @endif
                    </div>
                    <div class="widget-body">
                        <div id="dt_example" class="example_alt_pagination">
                            <form method="post" action="/purchase/postEditPurchaseBatch/{{$engin_id}}">
                            <table class="layui-table layui-form">
                                <thead>
                                    <th>采购批次</th>
                                    <th>发货性质</th>
                                    <th>采购时间</th>
                                    <th>发货时间</th>
                                    <th>到达时间</th>
                                    <th>运输方式</th>
                                    <th>装载长度</th>
                                    <th>装载方式</th>
                                    <th>集装箱尺寸</th>
                                    <th>集装箱数量</th>
                                    <th>货车规格</th>
                                    <th>货车数量</th>
                                    <th>发货地址</th>
                                    <th style="width: 80px">采购单状态 </th>
                                    <th style="width: 200px">操作</th>

                                </thead>
                                <tbody id="batchmanage">
                                @foreach($batchList as $k=>$val)
                                    <tr  class="hiddenitem hiddenitem_{{$k}}">
                                        <td><input type="hidden" name="batch_id[]" value="{{$val->id}}" class="span12 brach_id" >
                                            <input type="text" name="purchase_number[]" value="{{$val->purchase_number}}" class="span12 purchase_number" onclick="key(this)"></td>
                                        <td>
                                            <select name="deliver_properties[]"  class="deliver_properties span12" style="min-width: 80px">
                                               @if($val->deliver_properties ==1)
                                                <option value="1" selected="selected">预算内</option>
                                                <option value="2">预算外</option>
                                               @else
                                                    <option value="1">预算内</option>
                                                    <option value="2" selected="selected">预算外</option>
                                                @endif
                                            </select>
                                        </td>
                                        <td><input type="text" name="purchase_at[]" value="{{$val->purchase_at}}" class="span12 purchase_at purchase_at_{{$k}}"  ></td>
                                        <td><input type="text" name="deliver_time[]" value="{{$val->deliver_time}}" class="span12 deliver_time deliver_time_{{$k}}" ></td>
                                        <td><input type="text" name="arrive_time[]" value="{{$val->arrive_time}}" class="span12 arrive_time arrive_time_{{$k}}" ></td>
                                        <td><input type="text" name="transport_type[]" value="{{$val->transport_type}}" class="span12 transport_type"  ></td>
                                        <td><input type="text" name="load_height[]" value="{{$val->load_height}}" class="span12 load_height"  onclick="key(this)"></td>
                                        <td><input type="text" name="load_mode[]" value="{{$val->load_mode}}" class="span12 load_mode" ></td>
                                        <td><input type="text" name="container_size[]" value="{{$val->container_size}}" class="span12 container_size" ></td>
                                        <td><input type="text" name="container_number[]" value="{{$val->container_number}}" class="span12 container_number" onclick="key(this)"></td>
                                        <td><input type="text" name="van_specs[]" value="{{$val->van_specs}}" class="span12 van_specs" ></td>
                                        <td><input type="text" name="van_number[]" value="{{$val->van_number}}" class="span12 van_number" onclick="key(this)"></td>
                                        <td><input type="text" name="deliver_address[]" value="{{$val->deliver_address}}" class="span12 deliver_address" ></td>
                                        <td> @if($val->purchase_order_status == 1)已创建@else 未创建 @endif </td>
                                        <td>

                                            @if($val->purchase_order_status == 0 && $engineering->status ==1 )
                                                @if($val->pbrm_count >0)
                                                    <a title="编辑关联材料" class="btn btn-success"  href="/purchase/createdRelationMaterial/{{$val->id}}">
                                                        <i class="layui-icon">编辑关联材料</i>
                                                    </a>
                                                @else
                                                    <a title="创建关联材料" class="btn btn-success"  href="/purchase/createdRelationMaterial/{{$val->id}}">
                                                        <i class="layui-icon">创建关联材料</i>
                                                    </a>
                                                    <a title="删除" class="btn btn-danger" onclick="deleteTrRow('{{$k}}',this)" href="javascript:;">
                                                        <i class="layui-icon">删除</i>
                                                    </a>
                                                @endif
                                            @else
                                                <a title="查看关联材料" class="btn btn-info"  href="/purchase/purchaseRelationMaterialDetail/{{$val->id}}">
                                                    <i class="layui-icon">查看关联材料</i>
                                                </a>
                                            @endif
                                        </td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>

                            <div class="clearfix"></div>

                            <div class="layui-form-item" style="float: right;clear: left">
                                <label for="L_repass" class="layui-form-label"></label>
                                <button class="btn btn-success" lay-filter="add" type="submit" lay-submit="" onclick='return form_submit()'>确认/保存</button>
                            </div>
                            <div class="layui-form-item" style="float: right;clear: left">
                                <a href="/purchase/purchaseConduct/{{$project->id}}">
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

    function add_pici() {
        //当前时间的毫秒数
        var timestamp = (new Date()).valueOf();
        str =`<tr  class="hiddenitem_`+timestamp+`">
                <td><input type="hidden" name="batch_id[]" value="0" class="span12 brach_id" >
                    <input type="text" name="purchase_number[]" class="span12 purchase_number" onclick="key(this)"></td>
                <td>
                <select name="deliver_properties[]" id="deliver_properties" class="span12 deliver_properties" style="min-width: 80px">
                    <option value="1" selected="selected">预算内</option>
                    <option value="2">预算外</option>
                </select>
                </td>
                <td><input type="text" name="purchase_at[]" class="span12 purchase_at purchase_at_`+timestamp+`" ></td>
                <td><input type="text" name="deliver_time[]" class="span12 deliver_time deliver_time_`+timestamp+`" ></td>
                <td><input type="text" name="arrive_time[]" class="span12 arrive_time arrive_time_`+timestamp+`" ></td>
                <td><input type="text" name="transport_type[]" class="span12 transport_type" ></td>
                <td><input type="text" name="load_height[]" class="span12 load_height"  onclick="key(this)"></td>
                <td><input type="text" name="load_mode[]" class="span12 load_mode" ></td>
                <td><input type="text" name="container_size[]" class="span12 container_size" ></td>
                <td><input type="text" name="container_number[]" class="span12 container_number"  onclick="key(this)"></td>
                <td><input type="text" name="van_specs[]" class="span12 van_specs" ></td>
                <td><input type="text" name="van_number[]" class="span12 van_number"  onclick="key(this)"></td>
                <td><input type="text" name="deliver_address[]" class="span12 deliver_address" ></td>
                <td></td>
                <td> <a title="删除" class="btn btn-danger" onclick="deleteTrRow('`+timestamp+`',this)" href="javascript:;">
                        <i class="layui-icon">删除</i>
                    </a></td>
            </tr>`;

        $("#batchmanage").append(str);
        //点击文本框设置背景色
        $("input").focus(function(){
            $(this).css("background-color","#fff");
        });
        //日期选择器
        layui.use('laydate', function() {
            var laydate = layui.laydate;
            //常规用法
            laydate.render({
                elem: '.purchase_at_'+timestamp
            });
            laydate.render({
                elem: '.deliver_time_'+timestamp
            });
            laydate.render({
                elem: '.arrive_time_'+timestamp
            });
        });
    }
    //删除事件
    function deleteTrRow(id,tr){
        $(tr).parent().parent().remove();
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
        if(sum == 1 ){
            layui.use('layer', function(){
                var layer = layui.layer;
                layer.msg('有信息没有填写完全，请填写完成后，再提交。');
            });
            return false;
        }
        return true;
    }
    //点击文本框设置背景色
    $("input").focus(function(){
        $(this).css("background-color","#fff");
    });

    //日期选择器
    layui.use('laydate', function() {
        var laydate = layui.laydate;
        //常规用法
        @foreach($batchList as $k=>$val)
        laydate.render({
            elem: '.purchase_at_{{$k}}'
        });
        laydate.render({
            elem: '.deliver_time_{{$k}}'
        });
        laydate.render({
            elem: '.arrive_time_{{$k}}'
        });
        @endforeach
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

@endsection
