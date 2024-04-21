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
            <span>Danh sách</span>
        </li>
    </ol>
</section>
<h1 class="page-title-h1">Phương thức nạp tiền</h1>
<div class=" d-md-block">
    <style>
        .addfund_method_list {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 10rem;
        }

        .addfund_method_list .col-item-3 {
            width: 20%;
            margin-bottom: 30px;
            border: 1px solid #ddd;
            border-radius: 5px;
            overflow: hidden;
            margin-right: 1%;
        }

        .addfund_method_list .col-item-3 img {
            max-width: 160px;
            max-height: 60px;
        }

        .method_item_icon {
            height: 120px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-bottom: 0;
            padding: 10px;
        }

        .addfund_method_list .method_item .method_item_name {
            text-align: center;
            padding: 10px 0;
            border-top: 0;
            font-weight: bold;
            background: #eee;
        }

        .btn_select_method {
            margin-top: 10px;
            background: #ddd;
            color: #333;
            display: block;
            width: 100%;
            border-radius: 0;
            display: none;
        }
    </style>
    <div class="addfund_method_list clearfix">
        @foreach($recharge ?? [] as $item)
        <div class="col-item-3">
            <div class="method_item">
                <a href="{{ route('get_user.recharge.switch', ['slug' => \Illuminate\Support\Str::slug($item['ten']), 'id' => $item['ma']]) }}">
                    <div class="method_item_icon">
                        <img src="{{ $item['anhdaidien'] }}" alt="{{ $item['ten'] }}" title="{{ $item['ten'] }}">
                    </div>
                    <div class="method_item_name">{{ $item['ten'] }}</div>
                    <button class="btn btn_select_method">Chọn</button>
                </a>
            </div>
        </div>
        @endforeach
    </div>
</div>
@stop

@push('script')
<script src="/js/home.js"></script>
@endpush