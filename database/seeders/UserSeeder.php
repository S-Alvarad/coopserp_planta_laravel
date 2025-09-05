<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('usuarios')->insert([
            [
                'name' => 'Administrador',
                'email' => 'stevenalvaradopaez@gmail.com',
                'email_verified_at' => NULL,
                'password' => Hash::make('123'),
                // 'password' => '$2a$12$9bGiSCK3sds.J2DG0zNu5.5GBonqiSJ0nwHqexJB74XvCglCQPBF.',
                'remember_token' => NULL,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
        ]);
    }
}
