<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Page\PageBlogService;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index(Request $request)
    {
        $data = PageBlogService::index($request);
        return view('frontend.pages.blog.index', $data);
    }

    public function getArticleDetail($slug, $id, Request $request)
    {
        $data = PageBlogService::getArticleDetail($id, $request);
        return view('frontend.pages.article_detail.index', $data);
    }
}
