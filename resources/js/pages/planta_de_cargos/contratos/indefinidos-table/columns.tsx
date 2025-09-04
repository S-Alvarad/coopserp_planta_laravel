"use client"

import { ColumnDef } from "@tanstack/react-table"

// Este tipo se utiliza para definir la forma de nuestros datos.
// Puedes usar un esquema Zod aquí si lo deseas.

// Definir la interfaz para un contrato
export interface Contrato {
   id: number,
   fk_funcionario: string,
   fk_agencia: number,
   fk_departamento: number,
   fk_cargo: number,
   fecha_generacion: Date,
   fecha_inicio: Date,
   fecha_fin: Date | null,
   salario: number,
   fk_tipo_contrato: number,
   fk_banco: string,
   numero_cuenta_banco: string,
   fk_tipo_cuenta_banco: number,
   fk_eps: string,
   fk_arl: string,
   fk_pension: string,
   fk_cesantia: string,
   fk_ccf: string,
   estado: string,
   primer_nombre: string,
   segundo_nombre: string,
   primer_apellido: string,
   segundo_apellido: string,
}

export const columns: ColumnDef<Contrato>[] = [
   {
      accessorKey: "fk_funcionario",
      header: "Cédula",
   },
   {
      accessorKey: "primer_nombre",
      header: "Primer Nombre",
   },
   {
      accessorKey: "segundo_nombre",
      header: "Segundo Nombre",
   },
   {
      accessorKey: "primer_apellido",
      header: "Primer Apellido",
   },
   {
      accessorKey: "segundo_apellido",
      header: "Segundo Apellido",
   },
]