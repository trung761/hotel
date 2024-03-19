@extends('frontend.layouts.app_master')
@section('title', 'Quận huyện ' . $location->name)
@push('css')
<link href="/css/mini_apartment.css" rel="stylesheet">
@endpush

@section('content')
<!-- @include('components.searchbar') -->
<section class="breadcrumb ">
    <ol>
        <li><a href="{{ route('get.home') }}">Trang chủ</a></li>
        <li><span>{{ $location->ten }}</span></li>
    </ol>
</section>

<div class="info">
    <h1>{{ $location->ten }}</h1>
    <div class="description">{{ $location->mota }}</div>
</div>
<section class="grid post-category">
    <div class="wrapper">
        <div class="content">
            <style>
                .location-district,
                .location-ward {
                    padding: 15px;
                    background-color: #fff;
                    border-radius: 5px;
                    border: 1px solid #dedede;
                }

                .location-district li .count {
                    color: #999;
                    margin-left: 5px;
                    font-size: .9rem;
                }

                .location-district li a {
                    display: inline-block;
                    padding: 5px 0;
                    font-size: 1.05rem;
                    color: #1266dd;
                    text-decoration: none;
                }

                .location-district li {
                    width: 170px;
                    float: left;
                    text-align: left;
                }
            </style>
            <div class="card">
                @if (isset($wards) && !$wards->IsEmpty())
                <section class="section section-top-location">
                    <ul class="location-district phongtro clearfix">
                        @foreach($wards ?? [] as $item)
                        <li>
                            <a class="district-item" title="Phòng trọ {{ $item->ten }}" href="{{ route('get.room.by_wards',['id' => $item->id, 'slug' => $item->slug]) }}">{{ $item->ten }}</a>
                            <span class="count">({{ $item->rooms-> count() ?? 0 }})</span>
                        </li>
                        @endforeach
                    </ul>
                </section>
                @endif
                <div class="card-header">
                    <div class="cpn-heading">Danh sách tin đăng</div>
                </div>
                <div class="card-body">
                    <div class="post-list">
                        @foreach($rooms ?? [] as $item)
                        @include('components.room._inc_item',['item' => $item])
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <div class="sidebar sidebar-right">
            <style>
                .section .section-header {
                    margin-top: 0;
                    margin-bottom: 15px;
                }

                .section .section-title {
                    font-size: 1.3rem;
                    font-weight: 700;
                    margin: 0;
                    padding: 0;
                }

                .list-links {
                    list-style: none;
                    padding: 0;
                    margin: 0;
                }

                .list-links.acreage>li,
                .list-links.price>li {
                    width: 50%;
                    float: left;
                }

                .list-links>li {
                    position: relative;
                    display: flex;
                    align-items: center;
                    padding-left: 20px;
                    border-bottom: 1px dashed #eee;
                }

                .list-links>li:before {
                    display: inline-block;
                    content: "";
                    width: 14px;
                    height: 14px;
                    background: url(../images/chevron-right.svg) center no-repeat;
                    background-size: contain;
                    position: absolute;
                    left: 0;
                    opacity: .3;
                }

                .list-links>li a {
                    padding: 5px 0;
                    display: inline-flex;
                    align-items: center;
                    color: #333;
                    width: 100%;
                    line-height: 1.4;
                    font-size: 14px;
                    font-weight: 400;
                }
            </style>
            <section class="section section-sublink">
                <div class="section-header"><span class="section-title">Xem theo giá</span></div>
                <ul class="list-links price clearfix">
                    @foreach(config('config_search.price') as $key => $item)
                    <li><a href="{{ request()->fullUrlWithQuery(['price' => $key]) }}">{{ $item }}</a></li>
                    @endforeach
                </ul>
            </section>
            <section class="section section-sublink">
                <div class="section-header"><span class="section-title">Xem theo diện tích</span></div>
                <ul class="list-links acreage clearfix">
                    @foreach(config('config_search.khuvuc') as $key => $item)
                    <li><a href="{{ request()->fullUrlWithQuery(['khuvuc' => $key]) }}">{{ $item }} </a></li>
                    @endforeach
                </ul>
            </section>
            @include('frontend.components._inc_sidebar')
        </div>
    </div>
</section>

@include('components.link_footer')
{{-- @include('components.whyus')--}}
{{-- @include('components.support')--}}
@stop

@push('script')
<script src="/js/mini_apartment.js"></script>
@endpush