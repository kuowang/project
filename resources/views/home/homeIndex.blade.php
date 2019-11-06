<!DOCTYPE html>
<!--[if lt IE 7]>

<html class="lt-ie9 lt-ie8 lt-ie7" lang="en">

<![endif]-->
<!--[if IE 7]>

<html class="lt-ie9 lt-ie8" lang="en">

<![endif]-->
<!--[if IE 8]>

<html class="lt-ie9" lang="en">

<![endif]-->
<!--[if gt IE 8]>
<!-->

<html lang="en">

<!--
<![endif]-->
<head>
    <meta charset="utf-8">
    <title>
        {{ $project_name }}
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->

    <link href="icomoon/style.css" rel="stylesheet">
    <!--[if lte IE 7]>
    <script src="css/icomoon-font/lte-ie7.js">
    </script>
    <![endif]-->
    <link href="css/wysiwyg/bootstrap-wysihtml5.css" rel="stylesheet">
    <link href="css/wysiwyg/wysiwyg-color.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet"> <!-- Important. For Theming change primary-color variable in main.css  -->
    <link href="css/charts-graphs.css" rel="stylesheet">
    <link rel="stylesheet" href="/layui/css/layui.css">

</head>
<body>
<style type="text/css">
    #navleft{
        width: 15%;float:left;min-height: 520px;background: #069;
    }
    #navright{
        margin-left: 15%;height: 100%;background:#09c;width: 85%;
    }
    .navmodel{
        min-height: 200px;width: 18%;margin:2.5% 1% 2.5% 1%;float:left;background:#069;border-radius:15px;text-align: center;
    }
    .navtitle{
        margin:2.5% 0 0 1%;color:#069;    font-size: 16px;
    }
    .homeleft div{margin-top: 10px}
</style>
<header>
    <a href="#" class="logo">
        <img src="{{ config('app.project_logo') }}" alt="logo" />
    </a>
    <div class="btn-group">
        <button class="btn btn-primary">
            {{ $username }}  &nbsp;&nbsp;&nbsp;(<a href="/logout" style="color: #fff">退出</a>)
        </button>
    </div>
</header>
<div class="container-fluid">
    <div class="dashboard-container">
        <div class="dashboard-wrapper">
            <div class="left-sidebar" style="margin: auto">
                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget" style="height: 100%">
                            <div class="widget-header">
                                <div class="title">
                                    首页
                                    <span class="mini-title">/导航
                                </span>
                                </div>
                                <span class="tools">
                                  <a class="fs1" aria-hidden="true" data-icon="&#xe090;"></a>
                                </span>
                            </div>
                            <div class="widget-body" style="height: 100%;min-height: 520px;background: #069;padding: 0">

                                <div id="navleft" class="homeleft" style="text-align: center;color: #fff">
                                    <div id="userimg" style="margin-top:50px ">
                                        @if(empty($user_image))
                                            <img src="\img\nav\user_image.png" style="width:90%;margin: auto 5%;border-radius: 60%;max-width: 150px">
                                        @else
                                            <img src="{{$user_image}}" style="width:90%;margin: auto 5%;border-radius: 60%;max-width: 150px">
                                        @endif
                                    </div>
                                    <div>{{$username}} &nbsp;&nbsp;
                                        (<a href="\editHomeUserInfo" style="color:#a136f6">编辑</a>)</div>
                                    <div>欢迎登录{{config('app.name')}}！</div>
                                    <hr style="margin:30px 0 20px">
                                    <div><img src="\img\nav\homebackground.png" style="width:90%;margin: auto 5%;"></div>
                                    <div style="margin-top: 20px">尊敬的用户您好，</div>
                                    <div>蓝色为有权限部分</div>
                                    <div>红色为无权限部分</div>

                                </div>
                                <div class="row-fluid" id="navright" style="">
                                    <div class="navtitle"><b>欢迎使用{{ config('app.name') }}-{{config('app.engin_name')}}</b></div>
                                    <div >
                                        @foreach($allNavList as $nav)
                                            @if(in_array($nav->auth_id,$navList))
                                                <a href=" {{ $nav->url }}" >
                                                    <div class="navmodel" style="">
                                                        <div style="color: #fff;font-size: 18px;margin: 20px auto 5px;">{{ $nav->name }}</div>
                                                        <div><img src="\img\nav\starlan.png" style="width: 55%;"></div>
                                                        <div><img src="{{ $nav->icon }}" style="width: 40%"></div>
                                                    </div>
                                                </a>
                                            @else
                                                    <div class="navmodel" style="background: #cf2d27">
                                                        <div style="color: #fff;font-size: 18px;margin: 20px auto 5px;">{{ $nav->name }}</div>
                                                        <div><img src="\img\nav\starbai.png" style="width: 55%;"></div>
                                                        <div><img src="{{ $nav->icon }}" style="width: 40%"></div>
                                                    </div>
                                            @endif
                                        @endforeach
                                    </div>

                                </div>
                                <div class="clearfix"></div>

                            </div>
                        </div>
                    </div>
                </div>





            </div>
        </div>
    </div>
    <!--/.fluid-container-->
</div>
<footer>
    <p>
        &copy; {{ config('app.name') }}
    </p>
</footer>



</body>
</html>