<!doctype html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>ADMIN</title>

    <link href="https://getbootstrap.com/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="https://getbootstrap.com/docs/5.2/assets/img/favicons/apple-touch-icon.png"
        sizes="180x180">
    <link rel="icon" href="https://getbootstrap.com/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32"
        type="image/png">

    <link rel="manifest" href="https://getbootstrap.com/docs/5.2/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="https://getbootstrap.com/docs/5.2/assets/img/favicons/safari-pinned-tab.svg"
        color="#712cf9">
    <link rel="icon" href="https://getbootstrap.com/docs/5.2/assets/img/favicons/favicon.ico">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <meta name="theme-color" content="#712cf9">
    <style>
    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
    }

    @media (min-width: 768px) {
        .bd-placeholder-img-lg {
            font-size: 3.5rem;
        }
    }

    .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
    }

    .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
    }

    .bi {
        vertical-align: -.125em;
        fill: currentColor;
    }

    .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
    }

    .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
    }

    .nav-header-bg {
        background-color: #102136;
    }

    tr:hover {
        background-color: #eaecff;
    }
    </style>


    <!-- Custom styles for this template -->
    <link rel="stylesheet"
        href="https://getbootstrap.com/docs/5.2/examples/sticky-footer-navbar/sticky-footer-navbar.css">
</head>

<body class="d-flex flex-column h-100">

    <header>
        <!-- Fixed navbar -->
        <nav class="navbar navbar-expand-md navbar-dark fixed-top nav-header-bg">
            <div class="container">
                <a class="navbar-brand" href="#">ADMIN</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                    aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav me-auto mb-2 mb-md-0">
                        <li class="nav-item">
                            <a class="nav-link text-white" aria-current="page"
                                href="{{ route('get_admin.home.index') }}">Trang
                                chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="{{ route('get_admin.location.index') }}">Địa chỉ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="{{ route('get_admin.category.index') }}"
                                title="Category">Danh
                                mục</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="{{ route('get_admin.user.index') }}"
                                title="Category">Khách
                                hàng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="{{ route('get_admin.room.index') }}"
                                title="Category">Phòng</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link text-white" href="{{ route('get_admin.recharge.index') }}"
                                title="Category">Nạp
                                tiền</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link text-white" href="{{ route('get_admin.recharge_pay.index') }}"
                                title="Category">Thanh toán</a>
                        </li>

                        <!-- <li class="nav-item">
                            <a class="nav-link text-white" href="{{ route('get_admin.article.index') }}" title="Article">Bài
                                viết</a>
                        </li> -->
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown js-drop-menu">
                            <a class="nav-link dropdown-toggle" href="#" id="menuAccount" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img src="https://static3.tgstat.ru/channels/_0/15/15e0f5c67b87b751e377b4dbb3c1dc74.jpg"
                                    width="40" height="40" class="rounded-circle">
                            </a>
                            <div class="dropdown-menu" aria-labelledby="menuAccount">
                                <a class="dropdown-item" href="{{ route('get_admin.logout') }}" title="Logout">Đăng
                                    xuất</a>
                            </div>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
    </header>

    <!-- Begin page content -->
    <main class="flex-shrink-0">
        <div class="container">
            @yield('content')
        </div>
    </main>

    <footer class="footer mt-auto py-3 bg-light">
        <div class="container">
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" crossorigin="anonymous"
        referrerpolicy="no-referrer"></script>
    <script src="https://getbootstrap.com/docs/5.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script>
    $(function() {
        $(".js-drop-menu").click(function(event) {
            console.log('------------ click');
            let $this = $(this);
            if ($this.hasClass('show')) {
                $this.removeClass('show')
                $this.find(".dropdown-menu").removeClass('show');
            } else {
                $this.addClass('show')
                $this.find(".dropdown-menu").addClass('show');
            }
        })
    })
    </script>
</body>

</html>