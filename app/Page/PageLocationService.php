<?php

namespace App\Page;

use App\Models\DiaChi;
use App\Service\RoomService;
use Illuminate\Http\Request;

class PageLocationService
{
    public static function index($id, Request $request)
    {
        $location = DiaChi::find($id);
        $params = $request->all();
        $params['location_city_id'] = $id;

        $rooms    = RoomService::getListsRoom($request, $params);
        $districts = DiaChi::withCount('roomDistricts')->where('parent_id', $id)
            ->limit(24)->get();

        // dd($districts);
        return [
            'location'  => $location,
            'rooms'     => $rooms,
            'districts' => $districts,
            'query'     => $request->query()
        ];
    }

    public static function indexByDistrict($id, Request $request)
    {
        $location = DiaChi::find($id);

        if ($request->price && $request->khuvuc) {
            $rooms    = RoomService::getListsRoom($request, $params = [
                'location_city_id' => $id,
                'price' => ($request->price ? $request->price : -1),
                'khuvuc' => ($request->khuvuc ? $request->khuvuc : -1)
            ]);
            $wards =  DiaChi::where('parent_id', $id)->get();
            return [
                'location'  => $location,
                'wards' => $wards,
                'rooms'     => $rooms,
                'query'     => $request->query()
            ];
        } else {
            if ($request->price) {
                $rooms    = RoomService::getListsRoom($request, $params = [
                    'location_city_id' => $id,
                    'price' => ($request->price ? $request->price : -1),

                ]);
                $wards =  DiaChi::where('parent_id', $id)->get();
                return [
                    'location'  => $location,
                    'wards' => $wards,
                    'rooms'     => $rooms,
                    'query'     => $request->query()
                ];
            } elseif ($request->khuvuc) {
                $rooms    = RoomService::getListsRoom($request, $params = [
                    'location_city_id' => $id,
                    'khuvuc' => ($request->khuvuc ? $request->khuvuc : -1)
                ]);
                $wards =  DiaChi::where('parent_id', $id)->get();
                return [
                    'location'  => $location,
                    'wards' => $wards,
                    'rooms'     => $rooms,
                    'query'     => $request->query()
                ];
            } else {
                $rooms    = RoomService::getListsRoom($request, $params = [
                    'location_city_id' => $id,
                ]);
                $wards =  DiaChi::where('parent_id', $id)->get();
                return [
                    'location'  => $location,
                    'wards' => $wards,
                    'rooms'     => $rooms,
                    'query'     => $request->query()
                ];
            }
        }
    }

    public static function indexByWards($id, Request $request)
    {
        $location = DiaChi::find($id);
        if ($request->price && $request->khuvuc) {
            $rooms    = RoomService::getListsRoom($request, $params = [
                'phuongxa_id' => $id,
                'price' => ($request->price ? $request->price : -1),
                'khuvuc' => ($request->khuvuc ? $request->khuvuc : -1)

            ]);
            return [
                'location'  => $location,
                'rooms'     => $rooms,
                'query'     => $request->query()
            ];
        } else {
            if ($request->price) {
                $rooms    = RoomService::getListsRoom($request, $params = [
                    'phuongxa_id' => $id,
                    'price' => ($request->price ? $request->price : -1),
                ]);



                return [
                    'location'  => $location,
                    'rooms'     => $rooms,
                    'query'     => $request->query()
                ];
            } elseif ($request->khuvuc) {
                $rooms    = RoomService::getListsRoom($request, $params = [
                    'phuongxa_id' => $id,
                    'khuvuc' => ($request->khuvuc ? $request->khuvuc : -1)
                ]);



                return [
                    'location'  => $location,
                    'rooms'     => $rooms,
                    'query'     => $request->query()
                ];
            } else {
                $rooms    = RoomService::getListsRoom($request, $params = [
                    'phuongxa_id' => $id
                ]);
                return [
                    'location'  => $location,
                    'rooms'     => $rooms,
                    'query'     => $request->query()
                ];
            }
        }
    }

    public static function indexByPrice($id, Request $request)
    {
        $rooms    = RoomService::getListsRoom($request, $params = [
            'price' => $id
        ]);
        return [
            'price'  => $id,
            'rooms'     => $rooms,
            'query'     => $request->query()
        ];
    }
    public static function indexByArea($id, Request $request)
    {
        $rooms    = RoomService::getListsRoom($request, $params = [
            'khuvuc' => $id
        ]);



        return [
            'khuvuc'  => $id,
            'rooms'     => $rooms,
            'query'     => $request->query()
        ];
    }
}