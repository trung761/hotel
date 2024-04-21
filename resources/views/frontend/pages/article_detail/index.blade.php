@extends('frontend.layouts.app_master')
@section('title', 'Bài viết')
@push('css')
<link href="/css/blog_detail.css" rel="stylesheet">
@endpush

@section('content')
@php
$dataBreadcrumb = ['Trang chủ', 'Blog'];
@endphp
@include('components.breadcrumb', ['data' => $dataBreadcrumb])
<style>
    .article-main-content img {
        max-width: 100% !important;
        height: auto !important;
        width: 100% !important;
    }
</style>
<section class="grid post-category blog-detail ">
    <div class="wrapper">
        <div class="content">
            <div class="card b-detail">
                <div class="card-header">
                    <div class="cpn-heading">{{ $article->ten }}</div>
                </div>
                <div class="card-body">
                    <div class="the-article">
                        <div class="article-summary">
                            <p>{{ $article->mota }}</p>
                        </div>
                        <div class="article-main-content">
                            {!! $article->noidung !!}
                        </div>
                    </div>
                </div>
            </div>
          <!--   <div class="card b-blog">
                <div class="card-header">
                    <div class="cpn-heading">Có thể bạn quan tâm</div>
                </div>
                <div class="card-body blogs">
                    @for ($i = 0; $i < 6; $i++) <a class="blog-item" href="/apartment-detail">
                        <div class="blog-image">
                            <img src="{{ url('images/news-1.jpg') }}" alt="">
                        </div>
                        <div class="blog-info">
                            <h6 class="blog-title">Nhà trọ Bắc Từ Liêm - Hà Nội nhà trọ giá… </h6>
                            <div class="blog-summary">Nhược điểm của việc ở trọKhi nói đến việc ở trọ, sẽ có không ít
                                hạn chế xuất hiện mà bản thân người thuê cũng khó lòng khắc phục mà phải…</div>
                        </div>
                        </a>
                        @endfor
                </div>
            </div> -->
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