<?php

namespace App\Http\Controllers;

use App\Models\Contrato;
use Inertia\Inertia;
use App\Http\Requests\StoreContratoRequest;
use App\Http\Requests\UpdateContratoRequest;
use Illuminate\Support\Facades\DB;

class ContratoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $contratos = DB::select('
            SELECT c.id consecutivo,c.*, f.* FROM contratos c
            INNER JOIN funcionarios f ON c.fk_funcionario = f.cedula
            WHERE c.fk_tipo_contrato = ?
        ', [2]);
        return Inertia::render('planta_de_cargos/contratos/indefinidos', [
            'contratos' => $contratos,
        ]);
    }
}
