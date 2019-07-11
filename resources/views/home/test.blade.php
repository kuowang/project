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
</head>
<body>
<header>
    <a href="#" class="logo">
        <img src="{{ config('app.project_logo') }}" alt="logo" />
    </a>
    <div class="btn-group">
        <button class="btn btn-primary">
            {{ $username }}
        </button>
        <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle">
          <span class="caret">
          </span>
        </button>
        <ul class="dropdown-menu pull-right">
            <li>
                <a href="/logout">
                    退出
                </a>
            </li>
        </ul>
    </div>


</header>
<div class="container-fluid">
    <div class="dashboard-container">

        <div class="dashboard-wrapper">

            <div class="left-sidebar" style="margin: auto">

                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget">
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
                            <div class="widget-body">
                                <div class="row-fluid">
                                    <div class="metro-nav">
                                        @foreach($allNavList as $nav)
                                            @if(in_array($nav->auth_id,$navList))
                                        <div class="metro-nav-block nav-block-blue double">
                                            <a href=" {{ $nav->url }}" style="font-size: 26px;" >
                                                <div class="fs1" aria-hidden="true" data-icon=" {{ $nav->icon }}">
                                                       {{ $nav->name }}
                                                </div>
                                            </a>
                                        </div>
                                            @else
                                        <div class="metro-nav-block nav-block-red double">
                                            <a style="font-size: 26px;">
                                                <div class="fs1" aria-hidden="true" data-icon="{{ $nav->icon }}">
                                                    {{ $nav->name }}
                                                </div>
                                            </a>
                                        </div>
                                            @endif
                                        @endforeach
                                    </div>

                                </div>
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

<script src="js/wysiwyg/wysihtml5-0.3.0.js">
</script>
<script src="js/jquery.min.js">
</script>
<script src="js/bootstrap.js">
</script>
<script src="js/wysiwyg/bootstrap-wysihtml5.js">
</script>
<script src="js/jquery.scrollUp.js">
</script>


<!-- Google Visualization JS -->


<!-- Easy Pie Chart JS -->
<script src="js/jquery.easy-pie-chart.js">
</script>

<!-- Sparkline JS -->
<script src="js/jquery.sparkline.js">
</script>

<!-- Tiny Scrollbar JS -->
<script src="js/tiny-scrollbar.js">
</script>



</body>
</html>