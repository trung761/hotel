@extends('frontend.layouts.app_master')
@section('title', 'Quên mật khẩu')
@push('css')
<link href="/css/auth.css" rel="stylesheet">
@endpush

@section('content')
<div class="b-auth">
    <div class="auth-header">
        <h1 class="title">Quên mật khẩu</h1>
    </div>
    <div class="auth-content">
        <form action="{{route('get.forgot-password')}}" method="POST" autocomplete="off">
            @csrf
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" require placeholder="" name="email">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-blue btn-submit" style="background-color: var(--primary-color)"> Xác
                    nhận</button>
            </div>
        </form>
    </div>
</div>

@stop


@push('script')
<script src="/js/auth.js"></script>
@endpush