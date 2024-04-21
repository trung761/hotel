<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\DiaChi;
use App\Models\Location;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class AdminLocationController extends Controller
{
    public function index(Request $request)
    {
        $locations = DiaChi::whereRaw(1);

        if ($request->n)
            $locations->where('ten', 'like', '%' . $request->n . '%');

        $locations = $locations->orderByDesc('id')->paginate(10);

        $viewData = [
            'locations' => $locations,
            'query'     => $request->query()
        ];

        return view('admin.pages.location.index', $viewData);
    }

    public function create()
    {
        $district = DiaChi::get();

        $viewData = [
            'district' => $district
        ];

        return view('admin.pages.location.create', $viewData);
    }

    public function store(Request $request)
    {
        try {
            $data = $request->except('_token', 'anhdaidien');
            $data['slug'] = Str::slug($request->ten);
            $data['created_at'] = Carbon::now();
            if ($request->anhdaidien) {
                $file = upload_image('anhdaidien');
                if (isset($file) && $file['code'] == 1) {
                    $data['anhdaidien'] = $file['name'];
                }
            }
            $location = DiaChi::create($data);

            return redirect()->route('get_admin.location.index');
        } catch (\Exception $exception) {
            Log::error("---------------------  " . $exception->getMessage());
            return redirect()->back();
        }
    }

    public function edit($id)
    {
        $location = DiaChi::find($id);
        $district   = DiaChi::get();
        $viewData = [
            'location' => $location,
            'district'   => $district
        ];

        return view('admin.pages.location.update', $viewData);
    }

    public function update($id, Request $request)
    {
        try {
            $data               = $request->except('_token', 'anhdaidien');
            $data['slug']       = Str::slug($request->ten);
            $data['updated_at'] = Carbon::now();

            if ($request->anhdaidien) {
                $file = upload_image('anhdaidien');
                if (isset($file) && $file['code'] == 1) {
                    $data['anhdaidien'] = $file['name'];
                }
            }

            DiaChi::find($id)->update($data);

            return redirect()->route('get_admin.location.index');
        } catch (\Exception $exception) {
            Log::error("---------------------  " . $exception->getMessage());
            return redirect()->back();
        }
    }

    public function delete($id)
    {
        DiaChi::find($id)->delete();
        return redirect()->back();
    }
}