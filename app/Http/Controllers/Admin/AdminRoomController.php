<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\DanhMuc;
use App\Models\Phong;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class AdminRoomController extends Controller
{
    public function index(Request $request)
    {
        $rooms      = Phong::with('category:id,ten,slug', 'district:id,ten,slug', 'wards:id,ten,slug');
        if ($request->danhmuc_id)
            $rooms->where('danhmuc_id', $request->danhmuc_id);

        if ($request->ten)
            $rooms->where('ten', 'like', '%' . $request->ten . '%');

        $rooms      = $rooms->orderByDesc('id')->paginate(10);
        $categories = DanhMuc::select('id', 'ten')->get();
        $viewData   = [
            'rooms'      => $rooms,
            'categories' => $categories,
            'query'      => $request->query()
        ];

        return view('admin.pages.room.index', $viewData);
    }

    public function success($id)
    {
        $room         = Phong::find($id);
        $room->trangthai = Phong::STATUS_ACTIVE;
        $room->save();

        return redirect()->back();
    }

    public function expires($id)
    {
        $room            = Phong::find($id);
        $room->trangthai    = Phong::STATUS_EXPIRED;
        $room->thoigian_ketthuc = date('Y-m-d');
        $room->save();

        return redirect()->back();
    }

    public function hide($id)
    {
        $room         = Phong::find($id);
        $room->trangthai = Phong::STATUS_DEFAULT;
        $room->save();

        return redirect()->back();
    }

    public function cancel($id)
    {
        $room     = Phong::find($id);
        $viewData = [
            'room' => $room
        ];

        return view('admin.pages.room.cancel', $viewData);
    }

    public function processCancelRoom($id, Request $request)
    {
        try {
            $room         = Phong::find($id);
            $room->lydo = $request->lydo;
            $room->trangthai = -1;
            $room->save();
            return redirect()->route('get_admin.room.index');
        } catch (\Exception $exception) {
            Log::error("---------------------  " . $exception->getMessage());
            return redirect()->back();
        }
    }

    public function delete($id)
    {
        Phong::find($id)->delete();
        return redirect()->back();
    }
}