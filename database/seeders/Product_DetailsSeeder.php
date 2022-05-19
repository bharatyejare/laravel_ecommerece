<?php

namespace Database\Seeders;
 
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class Product_DetailsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();
        for ($i=0; $i < 20; $i++) { 
            \DB::table("products")->insert([
                "name" => $faker->firstName(),
                "price" => $faker->numberBetween(25, 50),
                "description"=>$faker->text(),
            ]);
        }

    }
}
