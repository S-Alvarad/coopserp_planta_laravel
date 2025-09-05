<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class EPSSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('eps')->insert([
            [
                'codigo' => 'CCFC09',
                'nit' => '891800213',
                'nombre' => 'Comfaboy EPS-CCF de Boyaca',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'CCFC15',
                'nit' => '891080002',
                'nombre' => 'Comfacaor EPS CCF de Cordoba',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'CCFC20',
                'nit' => '891600091',
                'nombre' => 'Comfachoco CCF del Choco',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'CCFC23',
                'nit' => '892115006',
                'nombre' => 'Caja de Compensacion Familiar de La Guajira',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'CCFC24',
                'nit' => '891180008',
                'nombre' => 'Comfamiliar Huila EPS CCF',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'CCFC27',
                'nit' => '892000106',
                'nombre' => 'Comfamiliar de Nariño EPS CCF',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'CCFC33',
                'nit' => '892200010',
                'nombre' => 'Comfasurc EPS-CCF de Sucre',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'CCFC53',
                'nit' => '860045904',
                'nombre' => 'Comfacundi - CCF de Cundinamarca',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'CCFC55',
                'nit' => '890102044',
                'nombre' => 'Cajacopi Atlantico CCF',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EAS016',
                'nit' => '899004996-1',
                'nombre' => 'Empresas Publicas de Medellin Departamento Medico',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EAS027',
                'nit' => '800112806-2',
                'nombre' => 'Fondo de Pasivo Social de Ferrocarriles',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS040',
                'nit' => '900604350',
                'nombre' => 'Caja de Compensacion Familiar de Antioquia - Comfama',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS001',
                'nit' => '830113831-0',
                'nombre' => 'Aliansalud EPS',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS002',
                'nit' => '800130907-4',
                'nombre' => 'Salud Total S.A.',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS003',
                'nit' => '800140949-6',
                'nombre' => 'Cafesalud EPS',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS005',
                'nit' => '800251440-6',
                'nombre' => 'E.P.S Sanitas',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS008',
                'nit' => '860066942-7',
                'nombre' => 'Compensar Entidad Promotora de Salud',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS010',
                'nit' => '800088702-2',
                'nombre' => 'EPS Sura',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS012',
                'nit' => '890303037-8',
                'nombre' => 'Comfenalco Valle EPS',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS016',
                'nit' => '805000427-1',
                'nombre' => 'Coomeva EPS',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS017',
                'nit' => '830003564-7',
                'nombre' => 'Famisanar',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS018',
                'nit' => '805001157-2',
                'nombre' => 'Servicio Occidental de Salud S.O.S. S.A.',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS023',
                'nit' => '830000783-0',
                'nombre' => 'Cruz Blanca S.A',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS033',
                'nit' => '830074184-5',
                'nombre' => 'Saludvida S.A EPS',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS037',
                'nit' => '900156264-2',
                'nombre' => 'Nueva EPS',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS044',
                'nit' => '9010974735',
                'nombre' => 'MEDIMAS EPS',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPS045',
                'nit' => '9010974735',
                'nombre' => 'Medimas EPS de Régimen Subsidiado',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPSC03',
                'nit' => '8001409496',
                'nombre' => 'Cafesalud Entidad Promotora de Salud S.A',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPSC22',
                'nit' => '899999107',
                'nombre' => 'Entidad Administradora de R?gimen Subsidiado Convida',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPSC25',
                'nit' => '891856000',
                'nombre' => 'Capresoca EPS',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPSC34',
                'nit' => '900298372',
                'nombre' => 'Capital Salud EPSS S.A.S.',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPSIC1',
                'nit' => '824001398',
                'nombre' => 'Asociacion de Cabildos Indigenas del Cesar Dusakawi EPSI',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPSIC2',
                'nit' => '812002376',
                'nombre' => 'Asociacion de Cabildos Indigenas del Resguardo Indigena Zenu de San Andres de Sotavento Cordoba - Su',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPSIC3',
                'nit' => '817001773',
                'nombre' => 'Asociacion Indigena del Cauca - A.I.C.',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPSIC4',
                'nit' => '893000495',
                'nombre' => 'Entidad Promotora de Salud Anas Wayuu EPSI',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPSIC5',
                'nit' => '837000084',
                'nombre' => 'Entidad Promotora de Salud Mallamas EPSI',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'EPSIC6',
                'nit' => '809000836',
                'nombre' => 'Entidad Promotora de Salud PijaosSalud EPSI',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'ESSC02',
                'nit' => '811004055',
                'nombre' => 'Empresa Mutual para el desarrollo integral de la salud E.S.S. Emdisalud ESS',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'ESSC07',
                'nit' => '806008394',
                'nombre' => 'Asociacion Mutual Ser Empresa Solidaria de Salud ESS',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'ESSC18',
                'nit' => '814000337',
                'nombre' => 'Asociacion Mutual Empresa Solidaria de Salud Emdisalud ESS',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'ESSC24',
                'nit' => '800249241',
                'nombre' => 'Cooperativa de Salud y Desarrollo Integral de la Zona Sur Oriente de Cartago - Coosalud',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'ESSC33',
                'nit' => '804002105',
                'nombre' => 'Cooperativa de Salud Comunitaria Comparta',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'ESSC62',
                'nit' => '817000248',
                'nombre' => 'Asociacion Mutual La Esperanza Asmet Salud',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'ESSC76',
                'nit' => '818000140',
                'nombre' => 'Asociacion Mutual Barrios Unidos de Quibdo E.S.S. AMBUQ',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'ESSC91',
                'nit' => '832000760',
                'nombre' => 'Entidad Cooperativa Solidaria de Salud Ecosops',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'MIN001',
                'nit' => '900462447-5',
                'nombre' => 'Fondo de Solidaridad y Garantia Fosyga',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'MIN002',
                'nit' => '900462447-5',
                'nombre' => 'Fondo de Solidaridad y Garantia Fosyga',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'MIN003',
                'nit' => '900462447-5',
                'nombre' => 'Fondo de Solidaridad y Garantia Fosyga',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'RES005',
                'nit' => '890102257-3',
                'nombre' => 'Universidad del Atlantico',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'RES006',
                'nit' => '890203183-0',
                'nombre' => 'Universidad Industrial de Santander',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],

            [
                'codigo' => 'RES008',
                'nit' => '899999063-3',
                'nombre' => 'Universidad Nacional de Colombia',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'RES009',
                'nit' => '891500319-2',
                'nombre' => 'Universidad del Cauca',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'RES011',
                'nit' => '890980040-8',
                'nombre' => 'Universidad de Antioquia',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'RES012',
                'nit' => '891080031-3',
                'nombre' => 'Universidad de Cordoba',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'codigo' => 'RES014',
                'nit' => '891800330-1',
                'nombre' => 'Universidad Pedagogica y Tecnologica de Colombia - UPTC',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
        ]);
    }
}
