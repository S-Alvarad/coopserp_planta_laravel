<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class CesantiasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('cesantias')->insert([
            [
                'codigo' => '230201',
                'nit' => '800229739-0',
                'nombre' => 'ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIA PROTECCION SA',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '230301',
                'nit' => '800224808-8',
                'nombre' => 'SOCIEDAD ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIAS PORVENIR SA',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '230901',
                'nit' => '800253055-2',
                'nombre' => 'OLD MUTUAL ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIAS SA',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '231001',
                'nit' => '800227940-6',
                'nombre' => 'COMPAÑIA COLOMBIANA ADMINISTRADORA DE FONDOS DE PENSIONES Y CESANTIAS SA COLFONDOS',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '270000',
                'nit' => '860007379-8',
                'nombre' => 'FONDO NACIONAL DEL AHORRO',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'RES004',
                'nit' => '899999155-5',
                'nombre' => 'FONDO DE PRESTACIONES SOCIALES DEL MAGISTERIO',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
        ]);
    }
}
