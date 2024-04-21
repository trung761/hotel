<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\NguoiDungRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('auth.login');
    }

    public function login(NguoiDungRequest $request)
    {
        $data = $request->except('_token');
        if (Auth::attempt($data)) {

            toastr()->success('Đăng nhập thành công !', 'Thông báo', ['timeOut' => 3000]);
            return redirect()->to('/');
        }


        toastr()->error('Email hoặc mật khẩu không chính xác !', 'Thông báo', ['timeOut' => 3000]);

        return redirect()->back();
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }
}
