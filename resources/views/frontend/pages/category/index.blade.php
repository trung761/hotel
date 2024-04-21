@extends('frontend.layouts.app_master')
@section('title', 'Trang chủ')
@push('css')
<link href="/css/mini_apartment.css" rel="stylesheet">
@endpush

@section('content')
@section('hero')
@include('components.hero')
@include('components.searchbar')
<section class="breadcrumb container">
    <ol>
        <li>
            <a href="{{ route('get.home') }}">Trang chủ</a>
        </li>
        <li><span>{{ $category->ten }}</span></li>
    </ol>
</section>

@include('frontend.pages.category.include._inc_info',['category' => $category])
<section class="grid post-category ">
    <div class="wrapper container">
        <div class="content">
            <div class="card">
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