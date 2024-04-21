<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\NguoiDung;
use App\Page\PageRoomDetailService;
use Illuminate\Http\Request;

class RoomDetailController extends Controller
{
    public function detail($slug, $id, Request $request)
    {
        $data = PageRoomDetailService::index($request, $id);
        return view('frontend.pages.room_detail.index', $data);
    }
}
