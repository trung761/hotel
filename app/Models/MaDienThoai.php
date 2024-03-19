<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MaDienThoai extends Model
{
    use HasFactory;
    protected $table = 'ma_dien_thoai';

    protected $fillable = [
        'maxacthuc',
        'hoatdong'
    ];
}
