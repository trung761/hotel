<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Page\PageCategoryService;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index(Request $request, $slug, $id)
    {
        $data = PageCategoryService::index($id, $request);
        return view('frontend.pages.category.index', $data);
    }
}