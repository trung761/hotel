@extends('frontend.layouts.app_master')
@section('title', 'Cập nhật thông tin')
@push('css')
<link href="/css/auth.css" rel="stylesheet">
@endpush

@section('content')
<div class="b-auth">
    <div class="auth-header">
        <h1 class="title">Cập nhật số điện thoại</h1>
    </div>
    <div class="auth-content">
        <form action="{{ route('post_user.profile.update_phone') }}" method="POST" autocomplete="off">

            <div class="form-group">
                <label for="phone">Số điện thoại cũ</label>
                <input type="text" class="form-control" placeholder="" name="sodienthoai" disabled value="{{ $user->sodienthoai }}">
            </div>
            <div class="form-group">
                <label for="phone">Số điện thoại mới</label>
                <input type="text" class="form-control" id="phone_new" placeholder="" name="phone_new" value="{{ old('phone_new') }}">
                @if ($errors->first('phone_new'))
                <span class="text-error d-block">{{ $errors->first('phone_new') }}</span>
                @endif
                <a href="/user/send-code">Lấy mã xác thực</a>
                <p><i>Mã xác thực sẽ gửi về số điện thoại / email mới của bạn</i></p>
            </div>
            <div class="form-group">
                <label for="text">Mã xác thực</label>
                <input type="text" class="form-control" placeholder="" name="ma" value="{{ $user->ma }}">
                @if ($errors->first('ma'))
                <span class="text-error">{{ $errors->first('ma') }}</span>
                @endif
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-blue btn-submit">Cập nhật số điện thoại</button>
            </div>
        </form>
    </div>
</div>

@include('components.whyus')
@stop

@push('script')
<script src="/js/profile.js"></script>
@endpush