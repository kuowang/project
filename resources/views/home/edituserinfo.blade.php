@extends('layouts.web')

@section('content')
    <!-- 你的HTML代码 -->
    <link rel="stylesheet" href="/layui/css/layui.css">
    <script src="/layui/layui.js"></script>
    @if($status == 2)
        <div class="alert alert-block alert-error fade in">
            <button data-dismiss="alert" class="close" type="button">
                ×
            </button>
            <h4 class="alert-heading">
                失败
            </h4>
            <p>
                {{$notice}}
            </p>
        </div>
    @elseif($status ==1)
        <div class="alert alert-block alert-success fade in">
            <button data-dismiss="alert" class="close" type="button">
                ×
            </button>
            <h4 class="alert-heading">
                成功!
            </h4>
            <p>
                {{$notice}}
            </p>
        </div>
    @endif


    <div class="left-sidebar">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget">
                    <div class="widget-header">
                        <div class="title">
                            编辑个人信息
                            <span class="mini-title">
                       &nbsp;
                      </span>
                        </div>
                        <span class="tools">
                      <a class="fs1" aria-hidden="true" data-icon="" data-original-title=""></a>
                    </span>
                    </div>
                    <div class="widget-body">

                        <form class="form-horizontal no-margin" action="/postHomeUserInfo" method="post">
                            <div class="control-group">
                                <label class="control-label" for="email">
                                    邮箱:
                                </label>
                                <div class="control-label"  style="text-align: left;padding-left: 20px;">
                                    {{ $user->email }}
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="name">
                                    姓名:
                                </label>
                                <div class=" control-label"style="text-align: left;padding-left: 20px;">
                                    {{ $user->name }}
                                </div>
                            </div>


                            <div class="control-group">
                                <label class="control-label" for="password">
                                    修改密码:
                                </label>
                                <div class="controls">
                                    <input type="password" name="password" id="password" class="span6" placeholder="6位以上的字符或数字">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="repPassword">
                                    确认密码:
                                </label>
                                <div class="controls">
                                    <input type="password" name="repPassword" id="repPassword" class="span6" placeholder="再输一次">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="user_image">
                                    用户头像:
                                </label>
                                <div class="controls">
                                    <input class="span12 " type="file" id="user_image" name="user_image" placeholder="logo" placeholder="用户头像" onchange="submitLogo()">
                                    <input type="hidden" id="userimage" name="userimage" value="{{$user->user_image}}">

                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="user_image">
                                </label>
                                <div class="control-label" style="text-align: left;padding-left: 20px;">
                                    @if(empty($user->user_image))
                                        <img src="\img\nav\user_image.png" id="navuserimage"  style="width:90%;margin: auto 5%;border-radius: 60%;max-width: 100px">
                                    @else
                                        <img src="{{$user->user_image}}"   id="navuserimage"  style="width:90%;margin: auto 5%;border-radius: 60%;max-width: 100px">
                                    @endif
                                </div>
                            </div>


                            <div class="control-group">
                                <label class="control-label" for="role">
                                    部门:
                                </label>
                                <div class="control-label"  style="text-align: left;padding-left: 20px;">
                                        @foreach ($departmentList as $val )
                                            @if ($val->id == $user->department_id)
                                                 {{$val->department}} &nbsp; &nbsp; &nbsp;
                                            @endif
                                        @endforeach
                                </div>
                            </div>



                            <div class="control-group">
                                <label class="control-label" for="role">
                                    角色:
                                </label>
                                <div class="control-label" style="text-align: left;padding-left: 20px;">
                                    @foreach ($role_list as $val )
                                        @if (in_array($val->id ,$user_role))
                                            {{ $val->name }}
                                        @endif
                                    @endforeach

                                </div>
                            </div>
                            <div class="form-actions no-margin">
                                <button type="submit" class="btn btn-success pull-right">
                                    提交
                                </button>
                                <div class="clearfix">
                                </div>
                            </div>

                        </form>

                    </div>
                </div>
            </div>

        </div>


    </div>
    <style>
        .dashboard-wrapper .left-sidebar {
            margin:auto;
        }
    </style>
    <script type="text/javascript">
        function submitLogo() {
            var formdata=new FormData();
            formdata.append('file',$('#user_image')[0].files[0]);
            $.ajax({
                url:'/uploadUserImage',
                type:"POST",
                data:formdata,
                processData:false,
                contentType:false,
                success:function(data){
                    console.log(data);
                    if(data.status ==1){
                        layui.use('layer', function(){
                            var layer = layui.layer;
                            layer.msg(data.data.msg);
                            $('#navuserimage').prop('src',data.data.url);
                            $('#userimage').val(data.data.url);
                        });
                    }else{
                        layui.use('layer', function(){
                            var layer = layui.layer;
                            layer.msg(data.info);
                        });
                    }
                }
            })
        }


    </script>
@endsection
