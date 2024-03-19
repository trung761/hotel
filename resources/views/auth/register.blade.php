@extends('frontend.layouts.app_master')
@section('title', 'Register')
@push('css')
<link href="/css/auth.css" rel="stylesheet">
@endpush

@section('content')
<div class="b-auth">
    <div class="auth-header">
        <h1 class="title" style="text-align: center;">Tạo tài khoản mới</h1>
    </div>
    <div class="auth-content">
        <form action="" method="POST" autocomplete="off">
            @csrf
            <div class="form-group">
                <label for="ten">Họ tên</label>
                <input type="text" class="form-control" required placeholder="" name="ten">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" required placeholder="" name="email">

            </div>
            <div class="form-group">
                <label for="sodienthoai">Số điện thoại</label>
                <input type="text" class="form-control" required placeholder="" name="sodienthoai">
            </div>
            <div class="form-group">
                <label for="password">Tạo mật khẩu</label>
                <input type="password" class="form-control" required placeholder="" name="password">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-blue btn-submit" style="background-color: #102136;">Tạo tài
                    khoản</button>
            </div>

            <div class="form-group form-group-register">

                <p class="text-center">Bạn đã có tài khoản? <a class="link" href="{{ route('get.login') }}">Đăng nhập
                        ngay</a></p>
            </div>
        </form>
    </div>
</div>

@include('components.whyus')

@stop

@push('script')
<script src="/js/auth.js"></script>
@endpush