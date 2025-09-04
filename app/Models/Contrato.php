<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contrato extends Model
{
    /** @use HasFactory<\Database\Factories\FuncionarioFactory> */
    use HasFactory;

    protected $table = 'contratos'; // Nombre de la tabla en la BD

    protected $fillable = [
        'id',
        'fk_funcionario',
        'fk_agencia',
        'fk_departamento',
        'fk_cargo',
        'fecha_generacion',
        'fecha_inicio',
        'fecha_fin',
        'salario',
        'fk_tipo_contrato',
        'fk_banco',
        'numero_cuenta_banco',
        'fk_tipo_cuenta_banco',
        'fk_eps',
        'fk_arl',
        'fk_pension',
        'fk_cesantia',
        'fk_ccf',
        'estado',
    ];
}
