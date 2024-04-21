@extends('frontend.layouts.app_master')
@section('title', 'Nạp tiền ATM ')
@push('css')
<link href="/css/home.css" rel="stylesheet">
@endpush

@section('content')
<section class="breadcrumb ">
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
            <span>Thẻ ATM Internet Banking</span>
        </li>
    </ol>
</section>
<h1 class="page-title-h1">Thẻ ATM Internet Banking</h1>
<div class="b-auth">
    <div class="auth-content">
        <form action="" method="POST" autocomplete="off" style="padding-bottom: 11rem;">
            @csrf
            <div class="form-group">
                <label for="phone">Số tiền nạp</label>
                <input type="number" class="form-control" placeholder="" name="gia" value="">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-blue btn-submit">Tiếp tục </button>
            </div>
        </form>
    </div>
</div>
@stop

@push('script')
<script src="/js/home.js"></script>
@endpush