<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\LichSuNapTien;
use App\Models\LichSuThanhToan;
use App\Models\NguoiDung;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class AdminRechargeController extends Controller
{
    public function index()
    {
        $rechargeHistory = LichSuNapTien::with('user:id,ten')->orderByDesc('id')->paginate(20);
        $viewData        = [
            'rechargeHistory' => $rechargeHistory
        ];

        return view('admin.pages.recharge.index', $viewData);
    }

    public function indexPay(Request $request)
    {
        $paymentHistory = LichSuThanhToan::with('user:id,ten')
            ->orderByDesc('id')->paginate(20);

        $viewData = [
            'paymentHistory' => $paymentHistory
        ];

        return view('admin.pages.recharge.pay', $viewData);
    }

    public function create()
    {
        $users          = NguoiDung::all();
        $rechargeConfig = config('payment.method');

        $viewData = [
            'users'          => $users,
            'rechargeConfig' => $rechargeConfig
        ];

        return view('admin.pages.recharge.create', $viewData);
    }

    public function store(Request $request)
    {
        try {
            DB::beginTransaction();
            $data                = $request->except('_token');
            $data['created_at']  = Carbon::now();
            $data['tongtien'] = $data['tien'] + $data['giamgia'];
            $data['ma']        = generateRandomString(15) . $data['nguoidung_id'];
            $rechargeHistory     = LichSuNapTien::create($data);
            if ($rechargeHistory) {
                if ($rechargeHistory->trangthai == LichSuNapTien::STATUS_SUCCESS) {
                    // tiến hành cộng tiền cho người dùng
                    $user = NguoiDung::find($rechargeHistory->nguoidung_id);
                    if (!$user) {
                        $rechargeHistory->ghichu   = 'User không hợp lệ';
                        $rechargeHistory->trangthai = LichSuNapTien::STATUS_CANCEL;
                        $rechargeHistory->save();
                    } else {
                        Log::info("--- cộng tiền");
                        $user->sodukhadung += $rechargeHistory->tongtien;
                        $user->save();
                    }
                }
            }

            DB::commit();
            return redirect()->route('get_admin.recharge.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error("---------------------  " . $exception->getMessage());
            return redirect()->back();
        }
    }

    public function edit($id)
    {
        $rechargeHistory = LichSuNapTien::find($id);
        if ($rechargeHistory->trangthai == LichSuNapTien::STATUS_SUCCESS) {
            return redirect()->back();
        }

        $rechargeConfig  = config('payment.method');

        $viewData = [
            'rechargeHistory' => $rechargeHistory,
            'rechargeConfig'  => $rechargeConfig
        ];

        return view('admin.pages.recharge.update', $viewData);
    }

    public function update($id, Request $request)
    {
        try {
            DB::beginTransaction();
            $rechargeHistory = LichSuNapTien::find($id);
            $rechargeHistory->tongtien = $request->tien + $request->giamgia;
            $rechargeHistory->updated_at = Carbon::now();
            $rechargeHistory->nguoidung_id = $request->nguoidung_id;
            $rechargeHistory->trangthai = $request->trangthai;
            $rechargeHistory->save();
            if ($rechargeHistory) {
                if ($rechargeHistory->trangthai == LichSuNapTien::STATUS_SUCCESS) {
                    // tiến hành cộng tiền cho người dùng
                    $user = NguoiDung::find($rechargeHistory->nguoidung_id);
                    if (!$user) {
                        $rechargeHistory->ghichu   = 'User không hợp lệ';
                        $rechargeHistory->trangthai = LichSuNapTien::STATUS_CANCEL;
                        $rechargeHistory->save();
                    } else {
                        Log::info("--- cộng tiền");
                        $user->sodukhadung += $rechargeHistory->tongtien;
                        $user->save();
                    }
                }
            }

            DB::commit();
            return redirect()->route('get_admin.recharge.index');
        } catch (\Exception $exception) {
            DB::rollBack();
            Log::error("---------------------  " . $exception->getMessage());
            return redirect()->back();
        }
    }
}
