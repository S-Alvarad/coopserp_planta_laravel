<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class AgenciaSeeder extends Seeder
{
   /**
    * Run the database seeds.
    */
   public function run(): void
   {
      DB::table('agencias')->insert([
         ['id' => 13, 'nombre' => 'BOGOTA ELEMENTO', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 21, 'nombre' => 'ZONA CENTRO', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 22, 'nombre' => 'ZONA NORTE', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 23, 'nombre' => 'ZONA SUR', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 30, 'nombre' => 'CALI BC', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 31, 'nombre' => 'CALI', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 32, 'nombre' => 'PALMIRA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 33, 'nombre' => 'B/TURA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 34, 'nombre' => 'BUGA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 35, 'nombre' => 'TULUA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 36, 'nombre' => 'SEVILLA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 37, 'nombre' => 'LA UNION', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 38, 'nombre' => 'ROLDANILLO', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 39, 'nombre' => 'CARTAGO', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 40, 'nombre' => 'ZARZAL', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 41, 'nombre' => 'CAICEDONIA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 42, 'nombre' => 'S/QUILICHAO', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 43, 'nombre' => 'YUMBO', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 44, 'nombre' => 'JAMUNDI', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 45, 'nombre' => 'PASTO', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 46, 'nombre' => 'POPAYAN', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 47, 'nombre' => 'IPIALES', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 48, 'nombre' => 'LETICIA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 68, 'nombre' => 'SOACHA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 70, 'nombre' => 'MANIZALES', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 73, 'nombre' => 'ZIPAQUIRA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 74, 'nombre' => 'PEREIRA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 76, 'nombre' => 'GIRARDOT', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 77, 'nombre' => 'SAN ANDRES', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 78, 'nombre' => 'ARMENIA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 79, 'nombre' => 'RIO NEGRO', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 80, 'nombre' => 'MEDELLIN', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 81, 'nombre' => 'MONTERIA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 82, 'nombre' => 'SINCELEJO', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 83, 'nombre' => 'YOPAL', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 84, 'nombre' => 'RIOHACHA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 85, 'nombre' => 'VALLEDUPAR', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 86, 'nombre' => 'CARTAGENA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 87, 'nombre' => 'BARRANQUILLA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 88, 'nombre' => 'SANTA MARTA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 89, 'nombre' => 'DUITAMA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 90, 'nombre' => 'BOGOTA CENTRO', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 91, 'nombre' => 'BOGOTA T.C.', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 92, 'nombre' => 'BOGOTA NORTE', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 93, 'nombre' => 'VILLAVICENCIO', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 94, 'nombre' => 'TUNJA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 95, 'nombre' => 'IBAGUE', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 96, 'nombre' => 'NEIVA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 97, 'nombre' => 'BUCARAMANGA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
         ['id' => 98, 'nombre' => 'CUCUTA', 'estado' => 1, 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
      ]);
   }
}
