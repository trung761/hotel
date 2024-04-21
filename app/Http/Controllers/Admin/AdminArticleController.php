<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;
use App\Models\BaiViet;

class AdminArticleController extends Controller
{
    public function index(Request $request)
    {
        $articles = BaiViet::whereRaw(1);

        if ($request->n)
            $articles->where('ten', 'like', '%' . $request->n . '%');

        $articles = $articles->orderByDesc('id')->paginate(20);


        $viewData   = [
            'articles' => $articles
        ];

        return view('admin.pages.article.index', $viewData);
    }

    public function create()
    {
        return view('admin.pages.article.create');
    }

    public function store(Request $request)
    {
        try {
            $data               = $request->except('_token', 'anhdaidien');
            $data['slug']       = Str::slug($request->ten);
            $data['created_at'] = Carbon::now();

            if ($request->anhdaidien) {
                $file = upload_image('anhdaidien');
                if (isset($file) && $file['code'] == 1) {
                    $data['anhdaidien'] = $file['name'];
                }
            }
            BaiViet::create($data);

            return redirect()->route('get_admin.article.index');
        } catch (\Exception $exception) {
            Log::error("---------------------  " . $exception->getMessage());
            return redirect()->back();
        }
    }

    public function edit($id)
    {
        $article = BaiViet::find($id);
        $viewData = [
            'article' => $article
        ];

        return view('admin.pages.article.update', $viewData);
    }

    public function update($id, Request $request)
    {
        try {
            $data               = $request->except('_token', 'anhdaidien');
            $data['slug']       = Str::slug($request->ten);

            if ($request->anhdaidien) {
                $file = upload_image('anhdaidien');
                if (isset($file) && $file['code'] == 1) {
                    $data['anhdaidien'] = $file['name'];
                }
            }

            $data['updated_at'] = Carbon::now();
            BaiViet::find($id)->update($data);

            return redirect()->route('get_admin.article.index');
        } catch (\Exception $exception) {
            Log::error("---------------------  " . $exception->getMessage());
            return redirect()->back();
        }
    }

    public function delete($id)
    {
        BaiViet::find($id)->delete();
        return redirect()->back();
    }
}
