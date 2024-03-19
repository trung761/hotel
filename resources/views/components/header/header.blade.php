<div class="mb-icon-nav js-mobile-panel bars-display">
    <i class="fa fa-bars" aria-hidden="true"></i>
</div>
<nav class="navbar-menu">

    <div class="navbar-menu-container">
        <a class="top-logo" href="{{ route('get.home') }}" title="">
            <!-- logo test -->
            <img src="{{ url('../images/logo-phongtro.png') }}" alt="">
            <!-- logo testt -->
        </a>
        <ul id="menu-main-menu" class="container-menu level-1">
            <li class="navbar_item {{ \Request::route()->getName() == 'get.home' ? 'active' : '' }}"><a
                    href="{{ route('get.home') }}">Trang chủ</a></li>
            @foreach($categoriesGlobal ?? [] as $item)
            <li class="navbar_item {{ \Request::path() == 'chuyen-muc-'. $item->slug.'-'. $item->id ? 'active' : '' }}">
                <a href="{{ route('get.category.item',['slug' => $item->slug,'id' => $item->id]) }}"
                    title="{{ $item->ten }}">{{ $item->ten }} </a>
            </li>
            @endforeach
            <!-- <li class="navbar_item {{ \Request::route()->getName() == 'get.blog.index' ? 'active' : '' }}">
                <a href="{{ route('get.blog.index') }}" title="Bài viết">Bài viết</a>
            </li> -->
            <li class="navbar_item {{ \Request::route()->getName() == 'get_user.recharge.index' ? 'active' : '' }}">
                <a href="{{ route('get_user.recharge.index') }}" title="Nạp tiền">Nạp tiền</a>
            </li>
            <li class="navbar_item {{ \Request::route()->getName() == 'get.service.price' ? 'active' : '' }}"><a
                    href="{{ route('get.service.price') }}">Bảng giá</a></li>
        </ul>
        <div class="header-default {{ $container ? $container : '' }} container-header">
            <div class="header-area">
                <div class="user-welcome js-reload-html-header">
                    @if (isset(Auth::user()->ten))
                    <div class="welcome-text">
                        @if (Auth::user()->anhdaidien)
                        <img src="{{ pare_url_file(Auth::user()->anhdaidien) }}"
                            style="width: 40px;height: 40px;border-radius: 50%" alt="">
                        @else
                        <img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"
                            style="width: 40px;height: 40px;border-radius: 50%" alt="">
                        @endif
                        <div class="user-history">
                            <div class="user-history-name">

                                <span class="text-bold ">
                                    Id: {{ Auth::user()->id ?? "..." }}
                                </span>-
                                <span class="text-bold  ">{{ Auth::user()->ten ?? "..." }}</span>
                                <span class="text-bold text-danger ">
                                    {{ number_format(get_data_user('web','sodukhadung'),0,',','.') }} đ
                                </span>

                            </div>
                            <a href="{{ route('get_user.profile.index') }}" class="text-bold  text-navigation">
                                <!-- text-success -->
                                Cập nhật tài khoản
                            </a>
                            <a href="{{ route('get_user.recharge.history') }}" class="text-bold  text-navigation">
                                Lịch sử nạp tiền
                                <!-- text-success -->
                            </a>
                            <a href="{{ route('get_user.payment.history') }}" class="text-bold  text-navigation">
                                Lịch sử thanh toán
                                <!-- text-danger -->
                            </a>

                            <a href="{{ route('get_user.room.index') }}" class="text-bold text-navigation">Tin đăng</a>
                            <a href="{{ route('get.logout') }}" class="text-bold text-navigation">Đăng xuất</a>
                        </div>
                    </div>
                    <a rel="nofollow" class="btn btn-pink btn-add-post" href="{{ route('get_user.room.create') }}">
                        Đăng tin mới
                        <i class="la la-plus-circle" aria-hidden="true"></i>
                    </a>
                    @else
                    <a rel="nofollow" class="btn btn-blue" href="{{ route('get.login') }}">Đăng nhập</a>
                    <a rel="nofollow" class="btn btn-blue" href="{{ route('get.register') }}"> Đăng ký</a>
                    @endif
                </div>

            </div>
        </div>
    </div>
</nav>