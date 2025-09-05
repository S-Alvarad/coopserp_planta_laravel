<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class ARLSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('arl')->insert([
            [
                'codigo' => '14-17',
                'nit' => '860503617-3',
                'nombre' => 'ARP Alfa',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '14-18',
                'nit' => '860008645-7',
                'nombre' => 'Liberty Seguros de Vida S.A.',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '14-23',
                'nit' => '860011153-6',
                'nombre' => 'Positiva Compañía de Seguros',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '14-25',
                'nit' => '800226175-3',
                'nombre' => 'Colmena Riesgos Profesionales',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '14-28',
                'nit' => '800256161-9',
                'nombre' => 'ARL Sura',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '14-29',
                'nit' => '830006686-1',
                'nombre' => 'La Equidad Seguros de Vida',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '14-30',
                'nit' => '830054904-6',
                'nombre' => 'Mapfre Colombia Vida Seguros S.A.',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '14-3',
                'nit' => '860002183-9',
                'nombre' => 'A.R.L. Seguros de Vida Colpatria S.A.',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '14-7',
                'nit' => '860002503-2',
                'nombre' => 'Compañía de Seguros Bolivar S.A.',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => '14-8',
                'nit' => '860022137-5',
                'nombre' => 'Seguros de Vida Aurora',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
        ]);
    }
}
