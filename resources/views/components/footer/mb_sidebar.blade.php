<div class="mobile-panel">
    <div class="inner">
        <div class="user-control">
            <div class="user-info">
                
                @if (isset(Auth::user()->id))
                    <p>Chào mừng {{Auth::user()->ten}} đến với <strong>hostelcantho.com</strong></p>
                @else 
                    <p>Chào mừng bạn đến với <strong>hostelcantho.com</strong></p>
                    <a rel="nofollow" class="btn btn-login" href="{{ route('get.login') }}">Đăng nhập</a>
                    <a rel="nofollow" class="btn btn-register" href="{{ route('get.register') }}">Đăng ký</a>
                @endif
            </div>
        </div>
        <nav class="nav-menu">
            <ul>
                <li><a class="mn_link" href="{{ route('get.home') }}">Trang chủ</a></li>
                @if (isset(Auth::user()->id))
                    <li><a class="mn_link" href="{{ route('get_user.recharge.index') }}">Nạp tiền</a></li>
                    <li><a class="mn_link" href="{{ route('get_user.recharge.history') }}">Lịch sử nạp tiền</a></li>
                    <li><a class="mn_link" href="{{ route('get_user.payment.history') }}">Lịch sử thanh toán</a></li>
                    @foreach($categoriesGlobal ?? [] as $item)
                        <li class="navbar_item {{ \Request::path() == 'chuyen-muc-'. $item->slug.'-'. $item->id ? 'active' : '' }}">
                            <a href="{{ route('get.category.item',['slug' => $item->slug,'id' => $item->id]) }}"
                                title="{{ $item->ten }}">{{ $item->ten }} </a>
                        </li>
                    @endforeach
                    <li><a class="mn_link" href="{{ route('get.blog.index') }}">Bài viết</a></li>
                    <li><a class="mn_link" href="{{ route('get.service.price') }}">Bảng giá</a></li>
                @else 
                    @foreach($categoriesGlobal ?? [] as $item)
                        <li class="navbar_item {{ \Request::path() == 'chuyen-muc-'. $item->slug.'-'. $item->id ? 'active' : '' }}">
                            <a href="{{ route('get.category.item',['slug' => $item->slug,'id' => $item->id]) }}"
                                title="{{ $item->ten }}">{{ $item->ten }} </a>
                        </li>
                    @endforeach
                    <li><a class="mn_link" href="{{ route('get.blog.index') }}">Bài viết</a></li>
                    <li><a class="mn_link" href="{{ route('get.service.price') }}">Bảng giá</a></li>
                @endif
                

            </ul>
        </nav>

    </div>
</div>
<div class="panel-backdrop js-panel-backdrop"></div>