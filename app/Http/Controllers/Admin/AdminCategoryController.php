<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\DanhMuc;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class AdminCategoryController extends Controller
{
    public function index(Request $request)
    {
        $categories = DanhMuc::whereRaw(1);

        if ($request->n)
            $categories->where('ten', 'like', '%' . $request->n . '%');

        $categories = $categories->orderByDesc('id')->paginate(20);

        $viewData = [
            'categories' => $categories,
            'query'      => $request->query()
        ];

        return view('admin.pages.category.index', $viewData);
    }

    public function create()
    {
        $viewData = [];

        return view('admin.pages.category.create', $viewData);
    }

    public function store(Request $request)
    {
        try {
            $data               = $request->except('_token');
            $data['slug']       = Str::slug($request->ten);
            $data['created_at'] = Carbon::now();
            DanhMuc::create($data);

            return redirect()->route('get_admin.category.index');
        } catch (\Exception $exception) {
            Log::error("---------------------  " . $exception->getMessage());
            return redirect()->back();
        }
    }

    public function edit($id)
    {
        $category = DanhMuc::find($id);
        $viewData = [
            'category' => $category
        ];

        return view('admin.pages.category.update', $viewData);
    }

    public function update($id, Request $request)
    {
        try {
            $data               = $request->except('_token');
            $data['slug']       = Str::slug($request->ten);
            $data['updated_at'] = Carbon::now();
            DanhMuc::find($id)->update($data);

            return redirect()->route('get_admin.category.index');
        } catch (\Exception $exception) {
            Log::error("---------------------  " . $exception->getMessage());
            return redirect()->back();
        }
    }

    public function delete($id)
    {
        DanhMuc::find($id)->delete();
        return redirect()->back();
    }
}
