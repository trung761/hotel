<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>@yield('title','Phòng trọ phongtrocantho.vn')</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/css/toastr.css" rel="stylesheet" />
    <style>
        .star.star-3 {
            width: 42px;
            height: 17px;
        }

        .star {
            background: url(../images/mobile/star2.png) left center repeat-x;
            background-size: 14px 14px;
            display: inline-block;
            margin-right: 3px;
            float: left;
        }

        .pagination {
            display: flex;
            justify-content: center;
        }

        .pagination li {
            width: 40px;
            height: 40px;
            background: white;
            border: 1px solid #3861fb;
            text-align: center;
            line-height: 40px;
            font-size: 20px;
            border-radius: 50%;
            margin: 0 10px;
            color: #212121;
        }

        .pagination li.active {
            background-color: #3861fb;
            color: white;
        }
    </style>
    @stack('css')
</head>

<body>
    @include('components.header.header', [
    'container' => 'container'
    ])
    @yield('not_container')
    <div>
        @yield('hero')
    </div>
    <div class="container">
        @yield('content')
    </div>
    @yield('not_container_bottom')
    @include('components.footer.footer', [
    'container' => 'container'
    ])
    @include('components.footer.mb_footer')
    @include('components.footer.mb_sidebar')
    @stack('script')

    <script>
        toastr.options.positionClass = 'toastr-bottom-right';
    </script>
</body>

</html>