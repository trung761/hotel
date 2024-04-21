<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthAdminController extends Controller
{
    public function login()
    {
        return view('auth.admin_login');
    }

    public function postLogin(Request $request)
    {
        $data = $request->except('_token');
        if (Auth::guard('admins')->attempt($data)) {
            return redirect()->route('get_admin.home.index');
        }

        return redirect()->back();
    }

    public function logout(Request $request)
    {
        Auth::guard('admins')->logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('get_admin.login');
    }
}
