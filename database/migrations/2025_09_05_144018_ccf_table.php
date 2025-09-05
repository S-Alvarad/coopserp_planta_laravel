<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('ccf', function (Blueprint $table) {
            $table->id('codigo', 45)->primary();
            $table->string('nit', 100); // NIT de la ccf
            $table->string('nombre', 100); // Nombre de la ccf
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ccf');
    }
};
