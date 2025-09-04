import { PlaceholderPattern } from '@/components/ui/placeholder-pattern';
import AppLayout from '@/layouts/app-layout';
import { type BreadcrumbItem } from '@/types';
import { Head } from '@inertiajs/react';

import { columns, Contrato } from "./indefinidos-table/columns"
import { DataTable } from "./indefinidos-table/data-table"

// Definir la interfaz para las props del componente
interface ContratoProps {
   contratos: Contrato[];
}

const breadcrumbs: BreadcrumbItem[] = [
   {
      title: 'Contratos indefinidos',
      href: '/planta-de-cargos/contratos/indefinidos',
   },
];

export default function ContratosIndefinidos({ contratos }: ContratoProps) {
   // ... resto del código, usando contratos.data para la tabla

   console.log(contratos); // Imprime contratos en la consola

   return (
      <AppLayout breadcrumbs={breadcrumbs}>
         <Head title="Contratos indefinidos" />
         <div className="flex h-full flex-1 flex-col gap-4 rounded-xl p-4 overflow-x-auto">
            <DataTable columns={columns} data={contratos} />
            <pre>{JSON.stringify(contratos.find(c => c.fk_funcionario === "1144197016"), null, 2)}</pre>
            <div className="relative min-h-[100vh] flex-1 overflow-hidden rounded-xl border border-sidebar-border/70 md:min-h-min dark:border-sidebar-border">
               <PlaceholderPattern className="absolute inset-0 size-full stroke-neutral-900/20 dark:stroke-neutral-100/20" />
            </div>
         </div>
      </AppLayout>
   );
}