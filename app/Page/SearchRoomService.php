<?php

namespace App\Page;

use App\Service\RoomService;
use Illuminate\Http\Request;

class SearchRoomService
{
    public static function index(Request $request)
    {
        $params = $request->all();
        if (isset($params['qhuyen_id'])) $params["location_city_id"] = $params['qhuyen_id'];
        if (isset($params['phuongxa_id'])) $params["location_district_id"] = $params['phuongxa_id'];
        if (isset($params['price'])) $params["price"] = $params['price'];
        if (isset($params['khuvuc'])) $params["khuvuc"] = $params['khuvuc'];

        $rooms    = RoomService::getListsRoom($request, $params);
        return [
            'rooms'    => $rooms,
            'query'    => $request->query()
        ];
    }
}
