<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FuncionarioController;

/*
 * Rutas para la vista de usuarios (/usuarios), protegidas por los middleware 'auth' y 'verified'.
 * Opciones disponibles:
 * 1. Ruta simple:
 *    - Renderiza la vista 'Usuarios' sin pasar datos.
         Route::get('usuarios', function () {
            return Inertia::render('usuarios');
         })->name('usuarios');
 *    - Uso: Ideal para vistas estáticas, pero no pasa datos dinámicos.
 * 2. Ruta con consulta directa:
 *    - Ejecuta 'SELECT * FROM users' y pasa los usuarios a la vista.
         Route::get('usuarios', function () {
            $users = User::all();
            return Inertia::render('usuarios', ['users' => $users]);
         })->name('usuarios');
 *    - Uso: Simple para listas completas, pero no soporta paginación ni filtros.
 * 3. Ruta con controlador (recomendada):
 *    - Delega la lógica al método 'index' de UserController.
         Route::get('usuarios', [UserController::class, 'index'])->name('usuarios');
 *    - Uso: Escalable, permite paginación, filtros y lógica avanzada.
 */

Route::get('/', function () {
   return redirect()->route('login');
})->name('home');

Route::middleware(['auth', 'verified'])->group(function () {
   Route::get('dashboard', function () {
      return Inertia::render('dashboard');
   })->name('dashboard');

   Route::get('agencias', function () {
      return Inertia::render('planta_de_cargos/agencias');
   })->name('agencias');


   Route::get('usuarios', [UserController::class, 'index'])->name('usuarios');
   Route::get('funcionarios', [FuncionarioController::class, 'index'])->name('funcionarios');
   // ========================================================================
   // planta de cargos
   Route::get('planta-de-cargos/contratos/indefinidos', function () {
      return Inertia::render('planta_de_cargos/contratos/indefinidos');
   })->name('planta-de-cargos/contratos/indefinidos');
});

require __DIR__ . '/settings.php';
require __DIR__ . '/auth.php';
