<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLocationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('diachi', function (Blueprint $table) {
            $table->id();
            $table->string('ten');
            $table->string('slug')->unique();
            $table->string('tieude')->nullable();
            $table->string('mota')->nullable();
            $table->string('anhdaidien')->nullable();
            $table->tinyInteger('trangthai')->default(1);
            $table->bigInteger('parent_id')->default(0);
            $table->bigInteger('hot')->default(0);
            $table->tinyInteger('loai')->default(1)->comment('1 tỉnh thành, 2 là quân huyện, 3 là phường xã');
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
        Schema::dropIfExists('diachi');
    }
}
