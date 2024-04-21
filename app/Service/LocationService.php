<?php


namespace App\Service;

use App\Models\DiaChi;


class LocationService
{
    public static function getLocationsHot($limit)
    {
        return DiaChi::withCount('rooms')->where('hot', 1)->limit($limit)->get();
    }
}
