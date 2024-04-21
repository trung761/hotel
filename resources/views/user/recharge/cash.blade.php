@extends('frontend.layouts.app_master')
@section('title', 'Trang chủ')
@push('css')
    <link href="/css/home.css" rel="stylesheet">
@endpush

@section('content')
    <section class="breadcrumb">
        <ol>
            <li>
                <a href="">
                    <span>Trang chủ</span>
                </a>
            </li>
            <li>
                <a href="">
                    <span>Nạp tiền</span>
                </a>
            </li>
            <li>
                <span>Tiền mặt</span>
            </li>
        </ol>
    </section>
    <h1 class="page-title-h1">Đóng tiền mặt</h1>
    <style>
        .alert-warning {
            color: #856404;
            background-color: #fff3cd;
            border-color: #ffeeba;
        }
    </style>
    <div class="setup_tienmat">
        <div class="alert alert-warning" role="alert">
            <h3 class="mt-4">Thanh toán tại văn phòng công ty</h3>
            <p>Bạn vui lòng đến địa chỉ văn phòng công ty TBN Hostel theo địa chỉ sau:</p>
            <p>188 Nguyễn Văn Cừ, Ninh Kiều, Cần Thơ</p>
            <p>Số điện thoại: 0949083414</p>
            <h3 class="mt-5">Thu tiền tận nơi</h3>
            <p>Áp dụng cho khu vực Tp.Cần Thơ và số tiền thanh toán lớn hơn 500.000đ</p>
            <p>Liên hệ: 0949083414 để chúng tôi hỗ trợ bạn</p>
            <p>Xin cảm ơn!</p>
        </div>
    </div>
        
    
    
@stop

@push('script')
    <script src="/js/home.js"></script>
@endpush
