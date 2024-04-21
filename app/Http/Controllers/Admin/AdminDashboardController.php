<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\LichSuNapTien;
use App\Models\LichSuThanhToan;
use App\Models\NguoiDung;
use App\Models\Phong;
use App\Models\User;
use Illuminate\Http\Request;

class AdminDashboardController extends Controller
{
    public function index()
    {
        $totalUser            = NguoiDung::select('id')->count();
        $totalRoom            = Phong::select('id')->count();
        $totalPay             = LichSuThanhToan::select('id')->count();
        $totalRechargeHistory = LichSuNapTien::select('id')->count();
        $users = NguoiDung::orderByDesc('id')->limit(20)->get();
        $paymentHistory = LichSuThanhToan::with('user:id,ten')->orderByDesc('id')->limit(20)->get();
        $rechargeHistory = LichSuNapTien::with('user:id,ten')->orderByDesc('id')->get();

        $viewData = [
            'totalUser'            => $totalUser,
            'totalRoom'            => $totalRoom,
            'totalPay'             => $totalPay,
            'totalRechargeHistory' => $totalRechargeHistory,
            'paymentHistory'       => $paymentHistory,
            'users'                => $users,
            'rechargeHistory'      => $rechargeHistory
        ];

        return view('admin.pages.index', $viewData);
    }
}
