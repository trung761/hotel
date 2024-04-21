<?php

namespace Database\Seeders;

use App\Models\QTV;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Log;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        try {
            QTV::create([
                'hoten'       => 'admin',
                'email'      => 'admin@gmail.com',
                'sodienthoai'      => '0949083414',
                'matkhau'   => bcrypt('123456789'),
                'created_at' => Carbon::now()
            ]);
        } catch (\Exception $exception) {
            Log::error("-------------- " . $exception->getMessage());
        }
    }
}
