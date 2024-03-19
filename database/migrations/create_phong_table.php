<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRoomsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('phong', function (Blueprint $table) {
            $table->id();
            $table->string('ten')->nullable();
            $table->string('slug')->nullable();
            $table->string('anhdaidien')->nullable();
            $table->tinyInteger('hot')->default(0);
            $table->string('mota', 300)->nullable();
            $table->bigInteger('qhuyen_id')->default(0);
            $table->bigInteger('phuongxa_id')->default(0);
            $table->bigInteger('gia')->default(0);
            $table->tinyInteger('trangthai')->default(1);
            $table->tinyInteger('khoanggia')->default(1);
            $table->tinyInteger('khoangkhuvuc')->default(1);
            $table->tinyInteger('dichvu_hot')->default(0)->comment(' lưu lại v1, vip2 hay vip 3');
            $table->integer('khuvuc')->default(0);
            $table->string('sophong')->nullable();
            $table->string('chitietdiachi')->nullable();
            $table->date('thoigian_batdau')->nullable();
            $table->date('thoigian_ketthuc')->nullable()->comment('ngày hết hạn');
            $table->string('lydo')->nullable();
            $table->text('noidung')->nullable();
            $table->bigInteger('danhmuc_id')->default(0);
            $table->bigInteger('xacthuc_id')->default(0);
            $table->text('map')->nullable();
            $table->bigInteger('subject_id')->default(0);
            $table->text('video_link')->nullable()->comment('link yt');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('phong');
    }
}
