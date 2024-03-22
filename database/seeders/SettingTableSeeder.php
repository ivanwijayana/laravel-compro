<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class SettingTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('setting')->delete();
        
        \DB::table('setting')->insert(array (
            0 => 
            array (
                'id' => 1,
                'title' => 'Landing Page',
                'image_header' => '1_1710524070.jpg',
                'created_at' => '2024-01-05 16:54:41',
                'updated_at' => '2024-01-05 16:54:41',
            ),
        ));
    }
}
