<?php

namespace App\Mail;

use App\Models\NguoiDung;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class SendMailResetPassword extends Mailable
{
    use Queueable, SerializesModels;
    private $name;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($name)
    {
        $this->name = $name;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $randomString = Str::random(8);
        $user = NguoiDung::where('email', $this->name)->get()->first();
        $user->update([
            'password' => Hash::make($randomString)
        ]);
        $user->save();
        return $this->subject('Nhận mật khẩu mới từ hệ thống "Đăng tin quảng bá nhà trọ"')->view('auth.reset_password_mail')->with(['name' => $this->name, 'randomString' => $randomString]);
    }
}
