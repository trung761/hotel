<?php

namespace App\Service;

use App\Models\Phong;
use App\Models\Room;
use Illuminate\Support\Arr;

class RoomService
{
    protected $column = ['id', 'anhdaidien', 'ten', 'mota', 'chitietdiachi', 'gia', 'updated_at', 'khuvuc', 'slug', 'dichvu_hot'];

    public static function getRoomsHot($limit = 8)
    {
        $self = new self();
        return Phong::where('hot', 1)
            ->whereIn('trangthai', [Phong::STATUS_ACTIVE, Phong::STATUS_EXPIRED])
            ->limit($limit)->select($self->column)->get();
    }

    public static function getRoomsNew($limit = 10)
    {
        $self = new self();
        return Phong::whereIn('trangthai', [Phong::STATUS_ACTIVE, Phong::STATUS_EXPIRED])
            ->limit($limit)
            ->select($self->column)
            ->orderByDesc('id')
            ->get();
    }

    public static function getListsRoomVip($limit = 10, $params = [])
    {
        $self = new self();
        $room =  Phong::whereIn('trangthai', [Phong::STATUS_ACTIVE, Phong::STATUS_EXPIRED]);

        if ($dichvu_hot =  Arr::get($params, 'dichvu_hot'))
            $room->where('dichvu_hot', $dichvu_hot);

        return $room
            ->limit($limit)
            ->select($self->column)
            ->orderByDesc('id')
            ->get();
    }

    public static function getRoomsNewVip($limit = 10, $params = [])
    {
        $self = new self();
        $room =  Phong::whereIn('trangthai', [Phong::STATUS_ACTIVE, Phong::STATUS_EXPIRED]);
        $room->whereBetween('dichvu_hot', [2, 4]);

        return $room
            ->select($self->column)
            ->orderByDesc('dichvu_hot')
            ->paginate($limit);
    }

    public static function getListsRoom($request, $params = [])
    {
        // seft gọi đến chính nó
        // where lọc đúng 1 trường + giá trị
        // whereIn lọc 1 trường + nhiều giá trị
        $self = new self();
        $rooms = Phong::whereIn('trangthai', [Phong::STATUS_ACTIVE, Phong::STATUS_EXPIRED]);

        if ($categoryId = Arr::get($params, 'danhmuc_id')) {
            // dd("Hello danh muc" . Arr::get($params, 'danhmuc_id'));
            $rooms->where('danhmuc_id', $categoryId);
        }

        if ($cityId = Arr::get($params, 'location_city_id')) {
            // dd("Hello city" . Arr::get($params, 'location_city_id'));
            $rooms->where('qhuyen_id', $cityId);
        }

        if ($phuongxa_id = Arr::get($params, 'phuongxa_id')) {
            // dd("Hello px" . Arr::get($params, 'phuongxa_id'));
            $rooms->where('phuongxa_id', $phuongxa_id);
        }

        if ($khoanggia = Arr::get($params, 'price')) {
            // dd("Hello gia " . Arr::get($params, 'price'));
            $rooms->where('khoanggia', $khoanggia);
        }

        if ($khoangkhuvuc = Arr::get($params, 'khuvuc')) {
            // dd("Hello" . Arr::get($params, 'khuvuc'));
            $rooms->where('khoangkhuvuc', $khoangkhuvuc);
        }

        $rooms = $rooms->select($self->column)->orderByDesc('id')->paginate(10);

        return $rooms;
    }
}
