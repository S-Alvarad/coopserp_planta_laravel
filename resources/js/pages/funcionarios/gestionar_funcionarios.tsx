import { PlaceholderPattern } from '@/components/ui/placeholder-pattern';
import AppLayout from '@/layouts/app-layout';
import { type BreadcrumbItem } from '@/types';
import { Head } from '@inertiajs/react';

// Definir la interfaz para un funcionario
interface Funcionario {
    id: number;
    cedula: string;
    primer_nombre: string;
    segundo_nombre: string;
    primer_apellido: string;
    segundo_apellido: string;
    sexo: string;
    tipo_sangre: string;
    fecha_nacimiento: string;
    ciudad_nacimiento: string;
    direccion_residencia: string;
    celular: string;
    correo: string;
    estado: string;
}

// Definir la interfaz para las props del componente
interface FuncionarioProps {
    funcionarios: Funcionario[];
}

const breadcrumbs: BreadcrumbItem[] = [
    {
        title: 'Funcionarios',
        href: '/funcionarios',
    },
];

export default function Funcionarios({ funcionarios }: FuncionarioProps) {
    // ... resto del código, usando funcionarios.data para la tabla

    console.log(funcionarios); // Imprime funcionarios en la consola

    return (
        <AppLayout breadcrumbs={breadcrumbs}>
            <Head title="Funcionarios" />
            <div className="flex h-full flex-1 flex-col gap-4 rounded-xl p-4 overflow-x-auto">
                <div className="grid auto-rows-min gap-4 md:grid-cols-3">
                    <div className="relative aspect-video overflow-hidden rounded-xl border border-sidebar-border/70 dark:border-sidebar-border">
                        <PlaceholderPattern className="absolute inset-0 size-full stroke-neutral-900/20 dark:stroke-neutral-100/20" />
                    </div>
                    <div className="relative aspect-video overflow-hidden rounded-xl border border-sidebar-border/70 dark:border-sidebar-border">
                        <PlaceholderPattern className="absolute inset-0 size-full stroke-neutral-900/20 dark:stroke-neutral-100/20" />
                    </div>
                    <div className="relative aspect-video overflow-hidden rounded-xl border border-sidebar-border/70 dark:border-sidebar-border">
                        <PlaceholderPattern className="absolute inset-0 size-full stroke-neutral-900/20 dark:stroke-neutral-100/20" />
                    </div>
                </div>
                <pre className='text-lime-500'>{JSON.stringify(funcionarios, null, 2)}</pre>
            </div>
        </AppLayout>
    );
}
