@extends('admin.layouts.app_master_admin')
@section('content')

<style>
.total-money {
    background-color: transparent;
    border: 1px solid #ececdd;
    padding: 2rem 1rem;
}

.total-money>p {
    margin-bottom: 0;
}
</style>

<div class="row mt-4">
    <div class="col-xl-3 col-md-6">
        <div class="card bg-primary text-white mb-4">
            <div class="card-body">
                Tổng số thành viên {{ $totalUser ?? 0 }}
            </div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="{{ route('get_admin.user.index') }}">Danh sách</a>
                <div class="small text-white"><svg class="svg-inline--fa fa-angle-right" aria-hidden="true"
                        focusable="false" data-prefix="fas" data-icon="angle-right" role="img"
                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512" data-fa-i2svg="">
                        <path fill="currentColor"
                            d="M64 448c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L178.8 256L41.38 118.6c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l160 160c12.5 12.5 12.5 32.75 0 45.25l-160 160C80.38 444.9 72.19 448 64 448z">
                        </path>
                    </svg><!-- <i class="fas fa-angle-right"></i> Font Awesome fontawesome.com -->
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-md-6">
        <div class="card bg-warning text-white mb-4">
            <div class="card-body">Tổng tin đăng {{ $totalRoom ?? 0 }}</div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="{{ route('get_admin.room.index') }}">Danh sách</a>
                <div class="small text-white"><svg class="svg-inline--fa fa-angle-right" aria-hidden="true"
                        focusable="false" data-prefix="fas" data-icon="angle-right" role="img"
                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512" data-fa-i2svg="">
                        <path fill="currentColor"
                            d="M64 448c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L178.8 256L41.38 118.6c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l160 160c12.5 12.5 12.5 32.75 0 45.25l-160 160C80.38 444.9 72.19 448 64 448z">
                        </path>
                    </svg><!-- <i class="fas fa-angle-right"></i> Font Awesome fontawesome.com -->
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-md-6">
        <div class="card bg-success text-white mb-4">
            <div class="card-body">Giao dịch thanh toán {{ $totalPay }}</div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="{{ route('get_admin.recharge_pay.index') }}">Danh
                    sách</a>
                <div class="small text-white"><svg class="svg-inline--fa fa-angle-right" aria-hidden="true"
                        focusable="false" data-prefix="fas" data-icon="angle-right" role="img"
                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512" data-fa-i2svg="">
                        <path fill="currentColor"
                            d="M64 448c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L178.8 256L41.38 118.6c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l160 160c12.5 12.5 12.5 32.75 0 45.25l-160 160C80.38 444.9 72.19 448 64 448z">
                        </path>
                    </svg><!-- <i class="fas fa-angle-right"></i> Font Awesome fontawesome.com -->
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-md-6">
        <div class="card bg-danger text-white mb-4">
            <div class="card-body">Lịch sử nạp tiền {{ $totalRechargeHistory }}</div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="{{ route('get_admin.recharge.index') }}">Danh sách</a>
                <div class="small text-white"><svg class="svg-inline--fa fa-angle-right" aria-hidden="true"
                        focusable="false" data-prefix="fas" data-icon="angle-right" role="img"
                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512" data-fa-i2svg="">
                        <path fill="currentColor"
                            d="M64 448c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L178.8 256L41.38 118.6c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l160 160c12.5 12.5 12.5 32.75 0 45.25l-160 160C80.38 444.9 72.19 448 64 448z">
                        </path>
                    </svg><!-- <i class="fas fa-angle-right"></i> Font Awesome fontawesome.com -->
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-xl-6">
        <h5 class="mt-3" style="display: flex;justify-content: space-between"><span>Thành viên mới</span></h5>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Ảnh đại diện</th>
                    <th>Thông tin</th>
                    <th>Số điện thoại</th>
                    <th>Ngày tạo</th>
                </tr>
            </thead>
            <tbody>
                @foreach($users ?? [] as $item)
                <tr>
                    <td scope="row">{{ $item->id }}</td>
                    <td scope="row">
                        <img src="{{ pare_url_file($item->anhdaidien) }}"
                            style="width: 60px;height: 60px;border-radius: 50%" alt="">
                    </td>
                    <td scope="row">{{ $item->ten }} <br>{{ $item->email }}</td>
                    <td scope="row">{{ $item->sodienthoai }}</td>
                    <td scope="row">{{ $item->created_at }}</td>

                </tr>
                @endforeach
            </tbody>
        </table>
        <div class="row">
            <div class="col-12">
                <div class="total-money">
                    @php
                    $total = 0;
                    @endphp

                    @foreach ($rechargeHistory ?? [] as $item)
                    @php
                    $total += $item->tien;
                    @endphp
                    @endforeach

                    <p>
                        Tổng số tiền khách nạp:
                        <span class="text-danger text-bold">{{ number_format($total, 0, ',', '.') }}đ</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-6">
        <h5 class="mt-3" style="display: flex;justify-content: space-between"><span>Giao dịch mới</span></h5>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th style="text-align: left">Mã giao dịch</th>
                    <th class="text-center">Loại</th>
                    <th class="text-center">Tổng tiền</th>
                    <th class="text-center">Tin</th>
                    <th class="text-center">Ngày tạo</th>
                </tr>
            </thead>
            <tbody>
                @foreach($paymentHistory ?? [] as $item)
                <tr style="text-align: center">
                    <td style="text-align: left" scope="row">{{ $item->id }}</td>
                    <td>
                        @if ($item->loai == 1)
                        <span>Tin tường</span>
                        @elseif($item->loai == 2)
                        <span>Vip 3</span>
                        @elseif($item->loai == 3)
                        <span>Vip 2</span>
                        @elseif($item->loai == 4)
                        <span>Vip 1</span>
                        @else
                        <span>Đặc biệt</span>
                        @endif
                    </td>
                    <td scope="row"><span
                            class="text-danger text-bold">{{ number_format($item->tien,0,',','.') }}đ</span></td>
                    <td scope="row">
                        <a href="">{{ $item->phong_id }}</a>
                    </td>
                    <td scope="">
                        {{ $item->created_at }}
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

</div>
@stop