@extends('frontend.layouts.app_master')
@section('title', 'Login')
@push('css')
<link href="/css/auth.css" rel="stylesheet">
@endpush

@section('content')
<div style="" class="b-auth box_shadow">
    <div class="auth-header">
        <h1 class="title" style="text-align: center;">Đăng nhập</h1>
    </div>
    <div class="auth-content">
        <form action="" method="POST" autocomplete="off">
            @csrf
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" placeholder="" name="email" value="{{old('email')}}">
                @if ($errors->has('email'))
                <span class="d-block " style="color:red;font-size:13px">{{ $errors->first('email') }} </span>
                @endif
            </div>
            <div class=" form-group">
                <label for="password">Mật khẩu</label>
                <input type="password" class="form-control" placeholder="" name="password">
                @if ($errors->has('password'))
                <span class="d-block " style="color:red; font-size:13px">{{ $errors->first('password') }} </span>
                @endif
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-blue btn-submit" style="background-color: var(--primary-color);">Đăng
                    nhập</button>
            </div>
            <div class="form-group">
                <a href="{{ route('get.forget-password') }}">Bạn quên mật khẩu?</a>
                <a style="float: right;" href="{{ route('get.register') }}">Tạo tài khoản mới</a>
            </div>
        </form>
    </div>
</div>

@stop

@push('script')
<script src="/js/auth.js"></script>
@endpush