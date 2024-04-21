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
        $user = NguoiDung::where('email', $this->name)->first();
        if ($user) {
            $user->update([
                'password' => Hash::make($randomString)
            ]);
            $user->save();
            $subject = 'Xin chào khách hàng: ' . $user->name; // Chèn tên người dùng vào tiêu đề email
        } else {
            $subject = 'Xin chào khách hàng: '; // Nếu không tìm thấy người dùng, sẽ không có tên người dùng
        }

        return $this->subject($subject)->view('auth.reset_password_mail')->with(['name' => $this->name, 'randomString' => $randomString]);
    }
}
