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
                <span>Lịch sử thanh toán</span>
            </a>
        </li>
        <li>
            <span>Danh sách</span>
        </li>
    </ol>
</section>
<div class="setup_history_payment">
<h1 style="padding: 10px 0" class="page-title-h1">Lịch sử thanh toán</h1>
<div class="setup_mb_table">
<table style="margin-bottom: 50px" class="table table-hover">
    <thead>
        <tr>
            <th style="text-align: left">Mã giao dịch</th>
            <th>Loại</th>
            <th>Tổng tiền</th>
            <th>Tin</th>
            <th>Ngày tạo</th>
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
            <td scope="row"><span class="text-danger text-bold">{{ number_format($item->tien,0,',','.') }}đ</span></td>
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

@push('script')
<script src="/js/home.js"></script>
@endpush