<div class="bottom-bar" class="js-bottom-bar-user">
    <a class="item home" href="{{ route('get.home') }}">
        <i class="fa fa-home" aria-hidden="true"></i> Trang chủ
    </a>

    <a rel="nofollow" class="item add-post" href="/user/room/create">
        <div class="btn-add-post">
            <div class="inner"><i class="fa fa-plus-circle" aria-hidden="true"></i>Đăng tin</div>
        </div>
    </a>

    <a rel="nofollow" class="item login" href="/dang-nhap.html"><i class="fa fa-sign-in" aria-hidden="true"></i> Đăng nhập</a>
    <a rel="nofollow" class="item register" href="/dang-ky.html"><i class="fa fa-user-plus" aria-hidden="true"></i> Đăng ký</a>


</div>




    @if (isset(Auth::user()->ten))
    <div class="bottom-bar" class="js-bottom-bar-user">
        <a class="item home" href="{{ route('get.home') }}">
            <i class="fa fa-home" aria-hidden="true"></i> Trang chủ
        </a>

        <a rel="nofollow" class="item add-post" href="/user/room/create">
            <div class="btn-add-post">
                <div class="inner"><i class="fa fa-plus-circle" aria-hidden="true"></i>Đăng tin</div>
            </div>
        </a>

        <a rel="nofollow" class="item login" href="/user/cap-nhat.html"><i class="fa-solid fa-user"></i></i></i>Thông tin</a>
        <a rel="nofollow" class="item register" href="{{ route('get.logout') }}"><i class="fa-solid fa-right-from-bracket" aria-hidden="true"></i></i> Đăng xuất</a>
    </div>
    @else
                        <div class="bottom-bar" class="js-bottom-bar-user">
                            <a class="item home" href="{{ route('get.home') }}">
                                <i class="fa fa-home" aria-hidden="true"></i> Trang chủ
                            </a>

                            <a rel="nofollow" class="item add-post" href="/user/room/create">
                                <div class="btn-add-post">
                                    <div class="inner"><i class="fa fa-plus-circle" aria-hidden="true"></i>Đăng tin</div>
                                </div>
                            </a>

                            <a rel="nofollow" class="item login" href="/dang-nhap.html"><i class="fa fa-sign-in" aria-hidden="true"></i>Đăng nhập</a>
                            <a rel="nofollow" class="item register" href="/dang-ky.html"><i class="fa fa-user-plus" aria-hidden="true"></i> Đăng ký</a>
                        </div>
                    @endif                   
