@extends('frontend.layouts.app_master')
@section('title', 'Trang chủ')
@push('css')
<link href="/css/user_room.css" rel="stylesheet">
@endpush

@section('content')
<section class="breadcrumb container">
    <ol>
        <li>
            <a href="">
                <span>Trang chủ</span>
            </a>
        </li>
        <li>
            <a href="{{ route('get_user.room.index') }}">
                <span>Phòng</span>
            </a>
        </li>
        <li>
            <span>Thêm mới</span>
        </li>
    </ol>
</section>
<h1 class="page-title-h1">Thêm mới <a href="{{ route('get_user.room.index') }}" title="Thêm mới">Trở về</a></h1>
<div class="alert alert-danger mb-5" role="alert">
    Nếu bạn đã từng đăng tin trên phongtrocantho.vn, hãy sử dụng chức năng ĐẨY TIN / GIA HẠN / NÂNG CẤP VIP trong mục
    QUẢN LÝ TIN ĐĂNG để làm mới, đẩy tin lên cao thay vì đăng tin mới. Tin đăng trùng nhau sẽ không được duyệt.
</div>
@include('user.room.form')

@stop