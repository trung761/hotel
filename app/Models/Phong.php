<?php

namespace App\Models;

use App\Models\DanhMuc;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Phong extends Model
{
    use HasFactory;

    protected $table = 'phong';
    protected $guarded = [''];

    const STATUS_DEFAULT = 1; // khởi tạo
    const STATUS_PAID = 2; // đã thanh toán
    const STATUS_EXPIRED = -2; //hết hạn
    const STATUS_ACTIVE = 3; // đã duyệt
    const STATUS_CANCEL = -1; // huỷ bỏ


    protected $setStatus = [
        self::STATUS_DEFAULT => [
            'name' => 'Khởi tạo',
            'class' => 'text-black-50'
        ],
        self::STATUS_EXPIRED => [
            'name' => 'Hết hạn',
            'class' => 'text-danger'
        ],
        self::STATUS_PAID => [
            'name' => 'Đã thanh toán',
            'class' => 'text-info'
        ],
        self::STATUS_ACTIVE => [
            'name' => 'Hiển thị',
            'class' => 'text-success'
        ],
        self::STATUS_CANCEL => [
            'name' => 'Đã huỷ',
            'class' => 'text-danger'
        ],
    ];

    public function getStatus()
    {
        return Arr::get($this->setStatus, $this->trangthai, []);
    }

    public function category()
    {
        return $this->belongsTo(DanhMuc::class, 'danhmuc_id');
    }

    public function district()
    {
        return $this->belongsTo(DiaChi::class, 'qhuyen_id');
    }
    public function wards()
    {
        return $this->belongsTo(DiaChi::class, 'phuongxa_id');
    }
    public function city()
    {
        return $this->belongsTo(DiaChi::class, 'phuongxa_id');
    }
    public function paymentHistory()
    {
        return $this->hasMany(LichSuThanhToan::class, 'phong_id');
    }
}