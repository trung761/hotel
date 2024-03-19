@extends('frontend.layouts.app_master')
@section('title', 'Bài viết')
@push('css')
<link href="/css/blog.css" rel="stylesheet">
@endpush
@section('content')

@php
$dataBreadcrumb = ['Trang chủ', 'Blog'];
@endphp
@include('components.breadcrumb', ['data' => $dataBreadcrumb])

<section class="grid post-category blog-content ">
    <div class="wrapper ">
        <div class="content">
            <div class="card b-blog">
                <div class="card-header">
                    <div class="cpn-heading">Blog</div>
                </div>
                <div class="card-body blogs">
                    @foreach($articles ?? [] as $item)
                    <a class="blog-item" title="{{ $item->ten }}" href="{{ route('get.room.blog_detail',['id' => $item->id,'slug' => $item->slug]) }}">
                        <div class="blog-image">
                            <img src="{{ pare_url_file($item->anhdaidien) }}" alt="{{ $item->ten }}">
                        </div>
                        <div class="blog-info">
                            <h6 class="blog-title">{{ $item->ten }}</h6>
                            <div class="blog-summary">{{ $item->mota }}</div>
                        </div>
                    </a>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="sidebar sidebar-right">
            @include('frontend.components._inc_sidebar')
        </div>
    </div>
</section>
@include('components.whyus')
@stop

@push('script')
<script src="/js/blog.js"></script>
@endpush