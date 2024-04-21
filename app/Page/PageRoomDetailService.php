<?php

namespace App\Page;

use App\Models\NguoiDung;
use App\Models\Phong;
use App\Service\RoomService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Date;
use Illuminate\Support\Facades\DB;

class PageRoomDetailService
{
    public static function index(Request $request, $id)
    {
        $today = Date::today()->format('Y-m-d');

        $checkTimeRoom = Phong::with('category:id,ten,slug', 'district:id,ten,slug', 'wards:id,ten,slug')
            ->whereDate('thoigian_batdau', '<=', $today)
            ->whereDate('thoigian_ketthuc', '>=', $today)
            ->find($id);


        if (!$checkTimeRoom) {
            // Update status của room
            DB::table('phong')->where('id', $id)
                ->update([
                    'trangthai'      => Phong::STATUS_EXPIRED,
                    'dichvu_hot' => 0
                ]);
        }

        $room = Phong::with('category:id,ten,slug', 'district:id,ten,slug', 'wards:id,ten,slug')
            ->whereIn('trangthai', [Phong::STATUS_ACTIVE, Phong::STATUS_EXPIRED])
            ->find($id);

        if (!$room) return abort(404);

        $author        = NguoiDung::find($room->xacthuc_id);
        $roomsSuggests = RoomService::getListsRoom($request, $params = [
            'danhmuc_id'      => $room->danhmuc_id,
            'location_city_id' => $room->qhuyen_id,
        ]);

        $images = DB::table('hinhanh_ct')
            ->where("phong_id", $id)
            ->select('duongdan')->get();

        if ($room->anhdaidien) {
            $collection       = new \Illuminate\Database\Eloquent\Collection();
            $collection->duongdan = $room->anhdaidien;
            $images->push($collection);
        }

        $viewData = [
            'room'          => $room,
            'author'        => $author,
            'images'        => $images,
            'roomsSuggests' => $roomsSuggests
        ];

        return $viewData;
    }
}
