<?php

namespace App\Page;

use App\Service\LocationService;
use App\Service\RoomService;
use Illuminate\Http\Request;

class PageHomeService
{
    public static function index(Request $request)
    {
        $roomHots    = RoomService::getRoomsHot($limit = 6);
        $roomVipFive = RoomService::getListsRoomVip($limit = 4, [
            'dichvu_hot' => 5
        ]);

        $roomNew      = RoomService::getRoomsNewVip($limit =  10);
        $locationsHot = LocationService::getLocationsHot(3);
        $viewData = [
            'roomHots'     => $roomHots,
            'roomNew'      => $roomNew,
            'roomVipFive'  => $roomVipFive,
            'locationsHot' => $locationsHot
        ];

        return $viewData;
    }
}
