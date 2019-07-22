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

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->

    <link href="/icomoon/style.css" rel="stylesheet">
    <!--[if lte IE 7]>
    <script src="/css/icomoon-font/lte-ie7.js">
    </script>
    <![endif]-->
    <link href="/css/wysiwyg/bootstrap-wysihtml5.css" rel="stylesheet">
    <link href="/css/wysiwyg/wysiwyg-color.css" rel="stylesheet">
    <link href="/css/main.css" rel="stylesheet"> <!-- Important. For Theming change primary-color variable in main.css  -->
    <link href="/css/charts-graphs.css" rel="stylesheet">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name') }}</title>

    <!-- Styles -->

    <!-- Scripts -->
    <script>
        window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
        ]); ?>
    </script>

    <script src="/js/wysiwyg/wysihtml5-0.3.0.js">
    </script>
    <script src="/js/jquery.min.js">
    </script>
    <script src="/js/bootstrap.js">
    </script>
    <script src="/js/wysiwyg/bootstrap-wysihtml5.js">
    </script>
    <script src="/js/jquery.scrollUp.js">
    </script>


    <!-- Google Visualization JS -->


    <!-- Easy Pie Chart JS -->
    <script src="/js/jquery.easy-pie-chart.js">
    </script>

    <!-- Sparkline JS -->
    <script src="/js/jquery.sparkline.js">
    </script>

    <!-- Tiny Scrollbar JS -->
    <script src="/js/tiny-scrollbar.js">
    </script>

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
<style>
    .imggundong{
        top:80px;
        position: absolute;
        z-index: 999999;
        width: 300px;
        right: 20px;
    }
</style>
<div class="container-fluid">
    <div class="dashboard-container">
        <img src="/img/20190716103518.png" class="imggundong" style="">
        <div class="top-nav">
            <ul>
                <li>
                    <a href="/home" >
                        <div class="fs2" aria-hidden="false" data-icon="&#xe0a0;"></div>
                        首页
                    </a>
                </li>
                @if(isset($nav[0]))
                @foreach($nav[0] as $item)
                    <li>
                        @if($item->auth_id == $navid)
                        <a href="{{ $item->url }}" class="selected">
                        @else
                        <a href="{{ $item->url }}" >
                        @endif
                        <div class="fs1" aria-hidden="true"  data-icon="{{ $item->icon }}"></div>
                        {{ $item->name }}
                        </a>
                    </li>
                @endforeach
                @endif
            </ul>
            <div class="clearfix">
            </div>

        </div>
        <div class="sub-nav">
            <ul>
                @foreach($nav[$navid] as $item)
                    <li>
                        @if($item->auth_id == $subnavid && $item->is_show ==1)
                            <a href="{{ $item->url }}" class="heading">{{ $item->name }}</a>
                        @elseif($item->is_show ==1)
                            <a href="{{ $item->url }}" >{{ $item->name }}</a>
                        @endif
                    </li>
                @endforeach
            </ul>

        </div>
        <div class="dashboard-wrapper">

            @yield('content')

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
