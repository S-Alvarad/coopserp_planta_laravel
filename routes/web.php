<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FuncionarioController;
use App\Http\Controllers\ContratoController;

/*
|--------------------------------------------------------------------------
| Rutas para la vista de Usuarios
|--------------------------------------------------------------------------
|
| Estas rutas controlan el acceso a la sección de usuarios (/usuarios).
| Están protegidas por los middleware 'auth' y 'verified'.
|
| Opciones disponibles:
|
| 1. Ruta simple:
|    - Renderiza la vista 'Usuarios' sin pasar datos.
|      Route::get('usuarios', function () {
|          return Inertia::render('usuarios');
|      })->name('usuarios');
|    - Uso: Ideal para vistas estáticas, pero no pasa datos dinámicos.
|
| 2. Ruta con consulta directa:
|    - Ejecuta 'SELECT * FROM users' y pasa los usuarios a la vista.
|      Route::get('usuarios', function () {
|          $users = User::all();
|          return Inertia::render('usuarios', ['users' => $users]);
|      })->name('usuarios');
|    - Uso: Simple para listas completas, pero no soporta paginación ni filtros.
|
| 3. Ruta con controlador (recomendada):
|    - Delega la lógica al método 'index' de UserController.
|      Route::get('usuarios', [UserController::class, 'index'])->name('usuarios');
|    - Uso: Escalable, permite paginación, filtros y lógica avanzada.
|
*/


Route::get('/', function () {
   return redirect()->route('login');
})->name('home');

Route::middleware(['auth', 'verified'])->group(function () {
   Route::get('dashboard', function () {
      return Inertia::render('dashboard');
   })->name('dashboard');
   // ===============================================================================================
   // usuarios
   Route::get('usuarios', [UserController::class, 'index'])->name('usuarios');
   // ===============================================================================================
   // roles
   // ...
   // ===============================================================================================
});

// hoja de vida
Route::middleware(['auth', 'verified'])->group(function () {
   // listar postulados
   Route::get('hoja-de-vida/postulados', function () {
      return Inertia::render('hoja_de_vida/postulados');
   })->name('hoja-de-vida/postulados');
});

// planta de cargos
Route::middleware(['auth', 'verified'])->group(function () {

   // gestionar planta de cargos
   Route::get('planta-de-cargos/gestionar-planta', function () {
      return Inertia::render('planta_de_cargos/gestionar_planta');
   })->name('planta-de-cargos/gestionar-planta');

   // detalle planta de cargos
   Route::get('planta-de-cargos/detalle-planta', function () {
      return Inertia::render('planta_de_cargos/detalle_planta');
   })->name('planta-de-cargos/detalle-planta');

   // contratos indefinidos
   Route::get('planta-de-cargos/contratos/indefinidos', [ContratoController::class, 'index'])
      ->name('planta-de-cargos/contratos/indefinidos');

   // contratos fijos
   Route::get('planta-de-cargos/contratos/fijos', function () {
      return Inertia::render('planta_de_cargos/contratos/fijos');
   })->name('planta-de-cargos/contratos/fijos');
});

// agencias
Route::middleware(['auth', 'verified'])->group(function () {
   // gestionar agencias
   Route::get('agencias/gestionar-agencias', function () {
      return Inertia::render('agencias/gestionar_agencias');
   })->name('agencias/gestionar-agencias');

   // categorizacion de agencias
   Route::get('agencias/categorizacion-agencias', function () {
      return Inertia::render('agencias/categorizacion_agencias');
   })->name('agencias/categorizacion-agencias');
});

// departamentos
Route::middleware(['auth', 'verified'])->group(function () {
   // gestionar departamentos
   Route::get('departamentos/gestionar-departamentos', function () {
      return Inertia::render('departamentos/gestionar_departamentos');
   })->name('departamentos/gestionar-departamentos');
});

// cargos
Route::middleware(['auth', 'verified'])->group(function () {
   // gestionar cargos
   Route::get('cargos/gestionar-cargos', function () {
      return Inertia::render('cargos/gestionar_cargos');
   })->name('cargos/gestionar-cargos');
});

// funcionarios
Route::middleware(['auth', 'verified'])->group(function () {
   // gestionar funcionarios
   Route::get('funcionarios/gestionar-funcionarios', [FuncionarioController::class, 'index'])
      ->name('funcionarios/gestionar-funcionarios');
});

require __DIR__ . '/settings.php';
require __DIR__ . '/auth.php';
