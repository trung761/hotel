<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class DiaChi extends Model
{
    use HasFactory;

    protected $table = 'diachi';
    protected $guarded = [''];

    protected $setType = [
        1 => 'Quận huyện',
        2 => 'Phường xã',
    ];

    public function getType()
    {
        return Arr::get($this->setType, $this->loai, '...');
    }

    public function roomDistricts()
    {
        return $this->hasMany(Phong::class, 'qhuyen_id');
    }

    public function rooms()
    {
        return $this->hasMany(Phong::class, 'phuongxa_id');
    }
}
