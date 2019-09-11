<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="/css/app.css" rel="stylesheet">

    <!-- Scripts -->

    <style>
        @font-face {
            font-family: 'msyh';
            font-style: normal;
            font-weight: normal;
            src: url(http://127.0.0.1/fonts/msyh.ttf) format('truetype');
        }
        body {  margin: 0;  padding: 0;  width: 100%;
            font-weight: 100;  font-family: 'msyh';  }

    </style>
</head>
<body>
<div id="app">

    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Dashboard</div>

                    <div class="panel-body">
                        You are logged in!中文汉字是否有问题
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Scripts -->
<script src="/js/app.js"></script>
</body>
</html>
