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
        height: 190px;width: 18%;margin:2.5% 1% 2.5% 1%;float:left;background:#069;border-radius:15px;text-align: center;
    }
    .navtitle{
        margin:2.5% 0 0 1%;color:#069;    font-size: 16px;
    }
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

                                <div id="navleft" style="">

                                </div>
                                <div class="row-fluid" id="navright" style="">
                                    <div class="navtitle"><b>欢迎使用公路商店后台管理系统</b></div>
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
                                                <a href=" {{ $nav->url }}" >
                                                    <div class="navmodel" style="">
                                                        <div style="color: #fff;font-size: 18px;margin: 20px auto 5px;">{{ $nav->name }}</div>
                                                        <div><img src="\img\nav\starbai.png" style="width: 55%;"></div>
                                                        <div><img src="{{ $nav->icon }}" style="width: 40%"></div>
                                                    </div>
                                                </a>
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