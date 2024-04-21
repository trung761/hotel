<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRoomRequest;
use App\Models\DiaChi;
use App\Models\DanhMuc;
use App\Models\LichSuThanhToan;
use App\Models\Phong;
use App\Models\NguoiDung;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Date;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class UserRoomController extends Controller
{
    public function index(Request $request)
    {
        $rooms = Phong::with('category:id,ten,slug', 'wards:id,ten,slug', 'district:id,ten,slug', 'paymentHistory:id,phong_id')
            ->where("xacthuc_id", Auth::user()->id);

        $rooms = $rooms->orderByDesc("id")->paginate(10);

        $viewData = [
            'rooms' => $rooms
        ];

        return view('user.room.index', $viewData);
    }

    public function create(Request $request)
    {
        $districts     = DiaChi::select('id', 'ten')->where('loai', 1)->get();
        $wards      = DiaChi::select('id', 'ten')->where('loai', 2)->get();
        $categories = DanhMuc::select('id', 'ten')->get();

        $viewData = [
            'districts'  => $districts,
            'wards'      => $wards,
            'categories' => $categories
        ];

        return view('user.room.create', $viewData);
    }

    public function store(UserRoomRequest $request)
    {
        $data               = $request->except('_token', 'anhdaidien', 'file');
        $data['created_at'] = Carbon::now();
        $data['trangthai']     = Phong::STATUS_EXPIRED;
        $data['slug']       = Str::slug($request->ten);
        $data['xacthuc_id']    = Auth::user()->id;
        $data['gia'] = str_replace(',', '', $data['gia']);
        //area
        $data = $this->switchPrice($data);
        $data = $this->switchArea($data);
        //price
        if ($request->anhdaidien) {
            $file = upload_image('anhdaidien');
            if (isset($file) && $file['code'] == 1) {
                $data['anhdaidien'] = $file['name'];
            }
        }

        $data = $this->switchPrice($data);

        $room = Phong::create($data);
        if ($room) {
            if ($request->file) {
                $this->syncAlbumImageAndProduct($request->file, $room->id);
            }
            toastr()->success('Tạo phòng thành công!', 'Thông báo', ['timeOut' => 200]);
            // ->with(['success' => 'Tạo phòng thành công'])
            return redirect()->route('get_user.room.index');
        }

        return redirect()->back();
    }

    public function edit($id, Request $request)
    {
        $room = Phong::where([
            'id'      => $id,
            'xacthuc_id' => Auth::user()->id
        ])->first();

        if (!$room) return abort(404);
        $districts  = DiaChi::select('id', 'ten')->where('loai', 1)->get();
        $wards      = DiaChi::select('id', 'ten')->where('loai', 2)->get();
        $categories = DanhMuc::select('id', 'ten')->get();
        $images     = DB::table('hinhanh_ct')
            ->where("phong_id", $id)
            ->get();

        $viewData = [
            'districts'  => $districts,
            'wards'      => $wards,
            'images'     => $images,
            'categories' => $categories,
            'room'       => $room
        ];


        return view('user.room.update', $viewData);
    }

    public function update($id, UserRoomRequest $request)
    {
        $data               = $request->except('_token', 'anhdaidien', 'file');
        $data['updated_at'] = Carbon::now();
        $data['gia']      = str_replace('.', '', $request->gia);
        $data['slug']       = Str::slug($request->ten);
        $data['gia'] = str_replace(',', '', $data['gia']);

        if ($request->anhdaidien) {
            $file = upload_image('anhdaidien');
            if (isset($file) && $file['code'] == 1) {
                $data['anhdaidien'] = $file['name'];
            }
        }

        //area
        $data = $this->switchPrice($data);
        $data = $this->switchArea($data);
        //price

        //
        $room = Phong::where([
            'id'      => $id,
            'xacthuc_id' => Auth::user()->id
        ])->update($data);

        if ($room) {
            if ($request->file) {
                $this->syncAlbumImageAndProduct($request->file, $id);
            }
            return redirect()->route('get_user.room.index');
        }

        return redirect()->back();
    }

    protected function switchPrice($data)
    {
        switch ($data['gia']) {
            case $data['gia'] < 1000000:
                $data['khoanggia'] = 1;
                break;

            case ($data['gia'] >= 1000000 && $data['gia'] < 2000000):
                $data['khoanggia'] = 2;
                break;

            case ($data['gia'] >= 2000000 && $data['gia'] < 3000000):
                $data['khoanggia'] = 3;
                break;

            case ($data['gia'] >= 3000000 && $data['gia'] < 5000000):
                $data['khoanggia'] = 4;
                break;

            case ($data['gia'] >= 5000000 && $data['gia'] < 7000000):
                $data['khoanggia'] = 5;
                break;

            case ($data['gia'] >= 7000000 && $data['gia'] < 10000000):
                $data['khoanggia'] = 6;
                break;

            case ($data['gia'] >= 10000000 && $data['gia'] < 15000000):
                $data['khoanggia'] = 7;
                break;

            case ($data['gia'] >= 15000000):
                $data['khoanggia'] = 8;
                break;
        }

        return $data;
    }

    protected function switchArea($data)
    {
        switch ($data['khuvuc']) {
            case $data['khuvuc'] < 20:
                $data['khoangkhuvuc'] = 1;
                break;

            case ($data['khuvuc'] >= 20 && $data['khuvuc'] < 30):
                $data['khoangkhuvuc'] = 2;
                break;

            case ($data['khuvuc'] >= 30 && $data['khuvuc'] < 50):
                $data['khoangkhuvuc'] = 3;
                break;

            case ($data['khuvuc'] >= 50 && $data['khuvuc'] < 60):
                $data['khoangkhuvuc'] = 4;
                break;

            case ($data['khuvuc'] >= 60 && $data['khuvuc'] < 70):
                $data['khoangkhuvuc'] = 5;
                break;

            case ($data['khuvuc'] >= 70 && $data['khuvuc'] < 80):
                $data['khoangkhuvuc'] = 6;
                break;

            case ($data['khuvuc'] >= 80 && $data['khuvuc'] < 100):
                $data['khoangkhuvuc'] = 7;
                break;

            case ($data['khuvuc'] >= 100 && $data['khuvuc'] < 120):
                $data['khoangkhuvuc'] = 8;
                break;

            case ($data['khuvuc'] >= 120 && $data['khuvuc'] < 150):
                $data['khoangkhuvuc'] = 9;
                break;

            case ($data['khuvuc'] >= 150):
                $data['khoangkhuvuc'] = 10;
                break;
        }

        return $data;
    }

    public function payRoom($id)
    {
        $room = Phong::where([
            'id'      => $id,
            'xacthuc_id' => Auth::user()->id,
            'trangthai'  => Phong::STATUS_EXPIRED
        ])->first();

        $viewData = [
            'room' => $room
        ];

        return view('user.room.pay', $viewData);
    }

    public function savePayRoom($id, Request $request)
    {
        $room            = Phong::find($id);
        $data            = $request->all();
        $roomType        = $request->room_type;
        $configPriceType = config('payment.type_price');
        $gia           = $configPriceType[$roomType];
        $day             = $request->day;

        // Tổng tiền
        $totalMoney = $day * $gia;

        //
        $sodukhadung = get_data_user('web', 'sodukhadung');
        if ($sodukhadung < $totalMoney) {
            // show message số dư ko đủ
            return redirect()->back();
        }

        try {
            DB::beginTransaction();
            // lưu vào payment history
            LichSuThanhToan::create([
                'nguoidung_id'    => get_data_user('web'),
                'phong_id'    => $id,
                'tien'      => $totalMoney,
                'loai'       => $roomType,
                'dichvu_id' => 0,
                'trangthai'     => LichSuThanhToan::STATUS_SUCCESS,
                'created_at' => Carbon::now()
            ]);
            // Trừ tiền

            DB::table('nguoidung')->where('id', get_data_user('web'))
                ->decrement('sodukhadung', $totalMoney);

            $timeStartNow = Carbon::parse($request->thoigian_batdau);
            $timeStop     = $timeStartNow->addDay($request->day);
            // Update tin
            $room->trangthai      = Phong::STATUS_PAID;
            $room->thoigian_batdau  = $request->thoigian_batdau;
            $room->thoigian_ketthuc   = $timeStop->format('Y-m-d');
            $room->dichvu_hot = $roomType;
            $room->updated_at  = Carbon::now();
            $room->save();
            DB::commit();

            return redirect()->route('get_user.room.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error("---------------------  " . $exception->getMessage());
            return redirect()->back();
        }
    }

    public function loadDistrict(Request $request)
    {
        if ($request->ajax()) {
            $districts      = $request->qhuyen_id;
            $locations = DiaChi::where('parent_id', $districts)->select('id', 'ten', 'slug')->get();

            return response()->json($locations);
        }
    }


    public function hideRoom($id)
    {
        $room         = Phong::find($id);
        $room->trangthai = Phong::STATUS_DEFAULT;
        $room->save();

        return redirect()->back();
    }

    public function activeRoom($id)
    {
        $today         = Date::today()->format('Y-m-d');
        $checkTimeRoom = Phong::with('category:id,ten,slug', 'district:id,ten,slug')
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
        } else {
            DB::table('phong')->where('id', $id)
                ->update([
                    'trangthai' => Phong::STATUS_ACTIVE,
                ]);
        }

        return redirect()->back();
    }

    public function loadWards(Request $request)
    {
        if ($request->ajax()) {
            $phuongxa_id = $request->phuongxa_id;
            $locations   = DiaChi::where('parent_id', $phuongxa_id)->select('id', 'ten', 'slug')->get();

            return response()->json($locations);
        }
    }

    public function syncAlbumImageAndProduct($files, $productID)
    {
        foreach ($files as $key => $fileImage) {
            $ext    = $fileImage->getClientOriginalExtension();
            $extend = [
                'png', 'jpg', 'jpeg', 'PNG', 'JPG'
            ];

            if (!in_array($ext, $extend)) return false;

            $filename = date('Y-m-d__') . Str::slug($fileImage->getClientOriginalName()) . '.' . $ext;
            $path     = public_path() . '/uploads/' . date('Y/m/d/');
            if (!File::exists($path)) {
                mkdir($path, 0777, true);
            }

            $fileImage->move($path, $filename);
            DB::table('hinhanh_ct')
                ->insert([
                    'ten'       => $fileImage->getClientOriginalName(),
                    'duongdan'       => $filename,
                    'phong_id'    => $productID,
                    'created_at' => Carbon::now()
                ]);
        }
    }

    public function deleteImage($imageID)
    {
        DB::table('hinhanh_ct')->where('id', $imageID)->delete();
        return redirect()->back();
    }
}
