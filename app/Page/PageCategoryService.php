<?php

namespace App\Page;

use App\Models\DanhMuc;
use App\Service\RoomService;
use Illuminate\Http\Request;

class PageCategoryService
{
    public static function index($id, Request $request)
    {
        $category = DanhMuc::find($id);
        $rooms    = RoomService::getListsRoom($request, $params = [
            'danhmuc_id' => $id
        ]);
        return [
            'category' => $category,
            'rooms'    => $rooms,
            'query'    => $request->query()
        ];
    }
}
