<?php

namespace App\Http\Controllers\User;

use App\Models\NguoiDung;
use Illuminate\Support\Str;
use App\Http\Controllers\Controller;
use App\Http\Requests\UserUpdatePhoneRequest;
use App\Mail\SendMailResetPassword;
use App\Mail\SendMailCodePhone;
use App\Models\DoiMatKhau;
use App\Models\MaDienThoai;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class UserProfileController extends Controller
{
    public function index()
    {
        $user = NguoiDung::find(Auth::user()->id);
        if (!$user) return abort(404);

        return view('user.profile.index', compact('user'));
    }

    public function update(Request $request)
    {
        $user = NguoiDung::find(Auth::user()->id);
        if (!$user) return abort(404);
        $user->ten = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);

        if ($request->anhdaidien) {
            // dd($request->anhdaidien);
            $file = upload_image('anhdaidien');
            if (isset($file) && $file['code'] == 1) {
                $user->anhdaidien = $file['name'];
            }
        }

        $user->save();

        return  redirect()->route('get_user.profile.index');
    }

    // UPDATE SỐ ĐIỆN THOẠI

    public function updatePhone()
    {
        $user = NguoiDung::find(Auth::user()->id);
        if (!$user) return abort(404);

        return view('user.profile.update_phone', compact('user'));
    }

    public function processUpdatePhone(UserUpdatePhoneRequest $request)
    {
        $is_check = MaDienThoai::where('maxacthuc', '=', $request->ma)
            ->Where('is_hoatdong', '=', false)
            ->first();
        if ($is_check) {
            DB::transaction(function () use ($request) {
                $user = NguoiDung::find(Auth::user()->id);
                $user->sodienthoai = $request->phone_new;

                $user->save();

                $code =  MaDienThoai::where('maxacthuc', '=', $request->ma)->first();
                $code->is_hoatdong = true;

                $code->save();
            });
        }

        return  redirect()->route('get_user.profile.index');
    }

    public function sendCode(Request $request)
    {
        $user = NguoiDung::find(Auth::user()->id);
        if (!$user) return abort(404);
        $mail = new SendMailCodePhone($user->ten);
        Mail::to($user->email)->send($mail);
        return back();
    }

    // END -> đang lỗi 

    public function forgotPassword()
    {
        return view('auth.forgot_password');
    }


    public function forgotPasswordReset(Request $request)
    {
        $data = $request->all();
        $mail = new SendMailResetPassword($data['email']);
        Mail::to($data['email'])->send($mail);
        // 
        toastr()->success('Vui lòng vào gmail lấy lại mật khẩu mới!', 'Thông báo', ['timeOut' => 3000]);
        // 
        return redirect(route('get.login'));
    }
}
