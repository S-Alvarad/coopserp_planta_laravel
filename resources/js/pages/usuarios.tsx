import AppLayout from '@/layouts/app-layout';
import { type BreadcrumbItem } from '@/types';
import { Head } from '@inertiajs/react';
import {
  Table,
  TableBody,
  TableCaption,
  TableCell,
  TableFooter,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table"

// Definir la interfaz para un usuario
interface User {
  id: number;
  name: string;
  email: string;
}

// Definir la interfaz para las props del componente
interface UsuariosProps {
  users: User[];
}

const breadcrumbs: BreadcrumbItem[] = [
  {
    title: 'Usuarios',
    href: '/usuarios',
  },
];

export default function Usuarios({ users }: UsuariosProps) {
  // ... resto del código, usando users.data para la tabla

  console.log('Usuarios recibidos:', users); // Imprime users en la consola
  
  return (
    <AppLayout breadcrumbs={breadcrumbs}>
      <Head title="Usuarios" />
      <div className="p-12">


        <Table>
          <TableCaption>A list of your recent invoices.</TableCaption>
          <TableHeader>
            <TableRow>
              <TableHead>#</TableHead>
              <TableHead>Usuario</TableHead>
              <TableHead>Correo</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {users.length > 0 ? (
              users.map((user) => (
                <TableRow key={user.id}>
                  <TableCell>{user.id}</TableCell>
                  <TableCell>{user.name}</TableCell>
                  <TableCell>{user.email}</TableCell>
                </TableRow>
              ))
            ) : (
              <TableRow>
                <TableCell colSpan={3} className="text-center">
                  No se encontraron usuarios
                </TableCell>
              </TableRow>
            )}
          </TableBody>
        </Table>
      </div>
    </AppLayout>
  );
}
