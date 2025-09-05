<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class BancosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('bancos')->insert([
            ['codigo' => '1001', 'nombre' => 'BANCO DE BOGOTA', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1002', 'nombre' => 'BANCO POPULAR', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1006', 'nombre' => 'ITAU antes Corpbanca', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1007', 'nombre' => 'BANCOLOMBIA', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1009', 'nombre' => 'CITIBANK', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1012', 'nombre' => 'BANCO GNB SUDAMERIS', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1013', 'nombre' => 'BBVA COLOMBIA', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1014', 'nombre' => 'ITAU', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1019', 'nombre' => 'SCOTIABANK COLPATRIA S.A', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1023', 'nombre' => 'BANCO DE OCCIDENTE', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1031', 'nombre' => 'BANCOLEX S.A.', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1032', 'nombre' => 'BANCO CAJA SOCIAL BCSC SA', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1040', 'nombre' => 'BANCO AGRARIO', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1047', 'nombre' => 'BANCO MUNDO MUJER', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1051', 'nombre' => 'BANCO DAVIVIENDA SA', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1052', 'nombre' => 'BANCO AV VILLAS', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1053', 'nombre' => 'BANCO W S.A', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1059', 'nombre' => 'BANCAMIA S.A', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1060', 'nombre' => 'BANCO PICHINCHA', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1061', 'nombre' => 'BANCOOMEVA', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1062', 'nombre' => 'BANCO FALABELLA S.A.', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1063', 'nombre' => 'BANCO FINANDINA S.A.', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1065', 'nombre' => 'BANCO SANTANDER DE NEGOCIOS CO', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1066', 'nombre' => 'BANCO COOPERATIVO COOPCENTRAL', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1067', 'nombre' => 'MIBANCO S.A.', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1069', 'nombre' => 'BANCO SERFINANZA S.A', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1070', 'nombre' => 'LULO BANK S.A.', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1071', 'nombre' => 'BANCO J.P. MORGAN COLOMBIA S.A.', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1121', 'nombre' => 'FINANCIERA JURISCOOP S.A. COMP', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1283', 'nombre' => 'COOPERATIVA FINANCIERA DE ANTI', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1286', 'nombre' => 'JFK COOPERATIVA FINANCIERA', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1289', 'nombre' => 'COOTRAFA COOPERATIVA FINANCIER', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1292', 'nombre' => 'CONFIAR COOPERATIVA FINANCIERA', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1303', 'nombre' => 'BANCO UNION S.A', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1370', 'nombre' => 'COLTEFINANCIERA S.A', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1507', 'nombre' => 'NEQUI', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1551', 'nombre' => 'DAVIPLATA', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1558', 'nombre' => 'BANCO CREDIFINANCIERA SA.', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1560', 'nombre' => 'PIBANK', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1637', 'nombre' => 'IRIS', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1801', 'nombre' => 'MOVII', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1802', 'nombre' => 'DING TECNIPAGOS SA', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1803', 'nombre' => 'POWWI', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1804', 'nombre' => 'Ualá', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1805', 'nombre' => 'BANCO BTG PACTUAL', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1814', 'nombre' => 'BOLD CF', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1809', 'nombre' => 'NU', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1811', 'nombre' => 'RAPPIPAY', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1812', 'nombre' => 'COINK', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1816', 'nombre' => 'GLOBAL66', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1819', 'nombre' => 'BANCO CONTACTAR S.A.', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
            ['codigo' => '1899', 'nombre' => 'AVAL SOLUCIONES TECNOLOGICAS', 'created_at' => Carbon::now(), 'updated_at' => Carbon::now()],
        ]);
    }
}
