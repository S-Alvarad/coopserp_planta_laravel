<?php

namespace App\Http\Controllers;

use App\Models\Contrato;
use Inertia\Inertia;
use App\Http\Requests\StoreContratoRequest;
use App\Http\Requests\UpdateContratoRequest;

class ContratoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $contratos = Contrato::all(); // SELECT * FROM contratos
        return Inertia::render('planta-de-cargos/contratos/indefinidos', [
            'contratos' => $contratos,
        ]);
    }
}
