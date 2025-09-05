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
        Schema::create('funcionarios', function (Blueprint $table) {
            $table->id();

            $table->string('cedula', 20)->unique(); // Cédula del funcionario
            $table->string('primer_nombre', 50);
            $table->string('segundo_nombre', 50)->nullable();
            $table->string('primer_apellido', 50);
            $table->string('segundo_apellido', 50)->nullable();
            $table->enum('sexo', ['M', 'F', 'O']); // Masculino, Femenino, Otro
            $table->date('fecha_nacimiento');
            $table->string('tipo_sangre', 5); // Ej: O+, A-, AB+
            $table->string('ciudad_nacimiento', 100);
            $table->string('direccion_residencia', 150);
            $table->string('celular', 20);
            $table->string('correo', 100)->unique();
            $table->tinyInteger('estado')->default(1); // 1 = activo, 0 = inactivo

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('funcionarios');
    }
};
