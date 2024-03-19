<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Page\PageLocationService;
use Illuminate\Http\Request;

class LocationController extends Controller
{
    public function getRoomByLocation($slug, $id, Request $request)
    {
        $data = PageLocationService::index($id, $request);

        return view('frontend.pages.location.index', $data);
    }

    public function getRoomByDistrict($slug, $id, Request $request)
    {
        $data = PageLocationService::indexByDistrict($id, $request);

        return view('frontend.pages.location.index', $data);
    }

    public function getRoomByWards($slug, $id, Request $request)
    {
        $data = PageLocationService::indexByWards($id, $request);
        return view('frontend.pages.location.index', $data);
    }
    public function getRoomByPrice($id, Request $request)
    {
        $data = PageLocationService::indexByPrice($id, $request);
        return view('frontend.pages.location.index', $data);
    }
    public function getRoomByArea($id, Request $request)
    {
        $data = PageLocationService::indexByArea($id, $request);
        return view('frontend.pages.location.index', $data);
    }
}
