<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\MaDienThoai;


class SendMailCodePhone extends Mailable
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

        // $SixDigitRandomNumber = rand(100000, 999999);

        // $codePhone = new MaDienThoai([
        //     'maxacthuc' => $SixDigitRandomNumber,
        //     'is_hoatdong' => false,
        // ]);

        // $codePhone->save();
        // return $this->subject("Hello $this->name")->view('auth.reset_password_mail')->with(['name' => $this->name, 'randomString' => $SixDigitRandomNumber]);
    }
}