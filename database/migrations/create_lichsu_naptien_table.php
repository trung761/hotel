<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRechargeHistoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('recharge_history', function (Blueprint $table) {
            $table->id();
            $table->string('code',100)->unique();
            $table->bigInteger('nguoidung_id')->default(0);
            $table->tinyInteger('type')->comment('phương thức');
            $table->integer('money')->default(0);
            $table->integer('discount')->default(0);
            $table->integer('total_money')->default(0);
            $table->tinyInteger('status')->default(1);
            $table->string('note')->nullable();
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
        Schema::dropIfExists('recharge_history');
    }
}
