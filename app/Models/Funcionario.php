<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Funcionario extends Model
{
    /** @use HasFactory<\Database\Factories\FuncionarioFactory> */
    use HasFactory;

    protected $table = 'funcionarios'; // Nombre de la tabla en la BD

    protected $fillable = [
        'cedula',
        'primer_nombre',
        'segundo_nombre',
        'primer_apellido',
        'segundo_apellido',
        'sexo',
        'fecha_nacimiento',
        'tipo_sangre',
        'ciudad_nacimiento',
        'direccion_residencia',
        'celular',
        'correo',
        'estado',
    ];
}
