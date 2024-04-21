<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\NguoiDung;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class AdminUserController extends Controller
{
    public function index(Request $request)
    {
        $users = NguoiDung::whereRaw(1);

        if ($request->n)
            $users->where('ten', 'like', '%' . $request->n . '%');

        $users = $users->orderByDesc('id')->paginate(20);

        $viewData = [
            'users' => $users,
            'query' => $request->query()
        ];

        return view('admin.pages.user.index', $viewData);
    }

    public function edit($id)
    {
        $user     = NguoiDung::find($id);
        $viewData = [
            'user' => $user
        ];

        return view('admin.pages.user.update', $viewData);
    }

    public function update($id, Request $request)
    {
        try {
            $data               = $request->except('_token');
            $data['updated_at'] = Carbon::now();
            NguoiDung::find($id)->update($data);

            return redirect()->route('get_admin.user.index');
        } catch (\Exception $exception) {
            Log::error("---------------------  " . $exception->getMessage());
            return redirect()->back();
        }
    }

    public function delete($id)
    {
        NguoiDung::find($id)->delete();
        return redirect()->back();
    }
}
