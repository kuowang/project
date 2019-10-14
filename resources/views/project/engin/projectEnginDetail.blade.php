@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>

<div class="left-sidebar">
    <div class="row-fluid">
        <div class="metro-nav">
            @if(in_array(1502,$pageauth))
            <div class="metro-nav-block nav-block-blue" style=" outline: 2px rgba(0, 0, 0, 0.75) solid;">
                <a href="/project/projectEnginStart/{{$project->id}}">
                    <div class="fs1" aria-hidden="true" data-icon="">洽谈工程 ({{$project->start_count}})</div>
                </a>
            </div>
            @endif
            @if(in_array(1503,$pageauth))
            <div class="metro-nav-block nav-block-green">
                <a href="/project/projectEnginConduct/{{$project->id}}">
                    <div class="fs1" aria-hidden="true" data-icon="">实施工程 ({{$project->conduct_count}})</div>
                </a>
            </div>
            @endif
            @if(in_array(1504,$pageauth))
            <div class="metro-nav-block nav-block-yellow">
                <a href="/project/projectEnginCompleted/{{$project->id}}">
                    <div class="fs1" aria-hidden="true" data-icon="">竣工工程 ({{$project->completed_count}})</div>
                </a>
            </div>
            @endif
            @if(in_array(1505,$pageauth))
            <div class="metro-nav-block nav-block-red">
                <a href="/project/projectEnginTermination/{{$project->id}}">
                    <div class="fs1" aria-hidden="true" data-icon="">终止工程 ({{$project->termination_count}})</div>
                </a>
            </div>
            @endif
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-header">
                    <div class="title">
                        洽谈工程<a id="dynamicTable"></a>
                    </div>
                    <div class="dataTables_filter" id="data-table_filter" style="text-align: center;">
                        {{$project->project_name}}
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

    <script>
        //一般直接写在一个js文件中


        //添加事件
        function add_dongtai() {
            str ='<tr>' +
                '    <td  class="pro-title">' +
                '        <input type="hidden"  name="dynamic_id[]" class="span8 "  value="0" lay-skin="primary" >' +
                '        <input type="text"  name="dynamic_date[]"  placeholder="yyyy-MM-dd" class="span8 notempty dynamic_date"  value="" lay-skin="primary" >' +
                '    </td>' +
                '    <td >' +
                '        <input type="text"  name="dynamic_content[]" class="span12 notempty"  value="" lay-skin="primary" >' +
                '    </td>' +
                '    <td><a class="btn btn-danger" onclick="deleteTrRow(this)">删除</a></td>' +
                '</tr>';
            $("#project_dongtai").append(str);
            //添加日期点击事件
            layui.use('laydate', function() {
                var laydate = layui.laydate;
                lay('.dynamic_date').each(function(){
                    laydate.render({
                        elem: this
                        ,trigger: 'click'
                    });
                });
            });
            //点击文本框设置背景色
            $(".notempty").focus(function(){
                $(this).css("background-color","#fff");
            });
        }


        //日期選擇
        layui.use('laydate', function() {
            var laydate = layui.laydate;
            lay('.dynamic_date').each(function(){
                laydate.render({
                    elem: this
                    ,trigger: 'click'
                });
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

@endsection
