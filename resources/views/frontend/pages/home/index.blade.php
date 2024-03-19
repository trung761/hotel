@extends('frontend.layouts.app_master')
@section('title', 'Trang chủ')
@push('css')
<link href="/css/home.css" rel="stylesheet">
@endpush
@section('content')
@section('hero')
@include('components.hero')
@include('components.searchbar')
@include('frontend.pages.home.include._inc_room_hot',['rooms' => $roomVipFive ?? []])
<section class="grid post-category ">
    <div class="wrapper container">
        <div class="content">
            <div class="card">
                <div class="card-header">
                    <div class="cpn-heading text-uppercase">Tin đăng mới nhất</div>
                </div>
                <div class="card-body">
                    <div class="post-list">
                        @foreach($roomNew ?? [] as $item)
                        @include('components.room._inc_item',['item' => $item])
                        @endforeach
                        {!! $roomNew->links('vendor.pagination.default') !!}
                    </div>
                </div>
            </div>
        </div>
        <div class="sidebar sidebar-right">
            @include('frontend.components._inc_sidebar')
        </div>
    </div>
</section>
@include('components.top_location',['locationsHot' => $locationsHot ?? []])
@include('components.link_footer')
@include('components.whyus')
@stop

@push('script')
<script src="/js/home.js"></script>
@endpush