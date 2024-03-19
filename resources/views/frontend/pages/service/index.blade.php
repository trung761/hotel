@extends('frontend.layouts.app_master')
@section('title', 'Trang chủ')
@push('css')
<link href="/css/home.css" rel="stylesheet">
@endpush

@section('content')

<section class="grid post-category">

    <header class="page-header category clearfix">
        <h1 class="page-h1" style="float: none; margin-top: 50px; margin-bottom: 30px; text-align: center; font-size:30px">Bảng giá
        </h1>
    </header>
    <div class="section-content">
        <p>
            <img style="display: inline-block;float: left;margin-right: 10px;" src="/images/icon-tick-green.svg">
            <strong>Tin tường</strong> 2.000 / 1 ngày
        </p>
        <p>
            <img style="display: inline-block;float: left;margin-right: 10px;" src="/images/icon-tick-green.svg">
            <strong>Tin Vip 3</strong> 20.000 / 1 ngày
        </p>
        <p>
            <img style="display: inline-block;float: left;margin-right: 10px;" src="/images/icon-tick-green.svg">
            <strong>Tin Vip 2</strong> 30.000 / 1 ngày
        </p>
        <p>
            <img style="display: inline-block;float: left;margin-right: 10px;" src="/images/icon-tick-green.svg">
            <strong>Tin Vip 1</strong> 50.000 / 1 ngày
        </p>
        <p>
            <img style="display: inline-block;float: left;margin-right: 10px;" src="/images/icon-tick-green.svg">
            <strong>Tin đặc biệt</strong> 80.000 / 1 ngày
        </p>
    </div>
</section>
@include('components.link_footer')
@include('components.whyus')
@stop

@push('script')
<script src="/js/home.js"></script>
@endpush