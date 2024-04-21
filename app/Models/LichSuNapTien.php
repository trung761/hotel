<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class LichSuNapTien extends Model
{
    use HasFactory;

    protected $table = 'lichsu_naptien';
    protected $guarded = [''];

    const STATUS_DEFAULT = 1;
    const STATUS_CANCEL = -1;
    const STATUS_SUCCESS = 2;
    const STATUS_ERROR = -2;

    protected $setStatus = [
        self::STATUS_DEFAULT => [
            'name' => 'Khởi tạo',
            'class' => 'text-black-50'
        ],
        self::STATUS_SUCCESS => [
            'name' => 'Hoàn thành',
            'class' => 'text-success'
        ],
        self::STATUS_CANCEL => [
            'name' => 'Đã huỷ',
            'class' => 'text-info'
        ],
        self::STATUS_ERROR => [
            'name' => 'Lỗi',
            'class' => 'text-danger'
        ],
    ];

    public function getStatus()
    {
        return Arr::get($this->setStatus, $this->trangthai, []);
    }

    public function user()
    {
        return $this->belongsTo(NguoiDung::class, 'nguoidung_id');
    }
}
