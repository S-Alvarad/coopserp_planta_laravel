import { NavFooter } from '@/components/nav-footer';
import { NavMain } from '@/components/nav-main';
import { NavUser } from '@/components/nav-user';
import { Sidebar, SidebarContent, SidebarFooter, SidebarHeader, SidebarMenu, SidebarMenuButton, SidebarMenuItem } from '@/components/ui/sidebar';
import { NavItemWithSubmenu, type NavItem } from '@/types';
import { Link } from '@inertiajs/react';
import { UserRoundCheck, Folder } from 'lucide-react';
import { UserRoundPlus, Folders, LibraryBig, Files, Activity, Ellipsis } from 'lucide-react';
import AppLogo from './app-logo';

const mainNavItems: NavItemWithSubmenu[] = [
    {
        title: 'Hoja de vida',
        icon: UserRoundPlus,
        submenu: [
            { title: 'Hojas de vida', href: '/hojas-de-vida', icon: null },
            { title: 'Personas', href: '/persona', icon: null },
            { title: 'Vacantes', href: '/vacantes', icon: null },
        ],
    },
    {
        title: 'Planta de cargos',
        icon: Folders,
        submenu: [
            { title: 'Planta de cargos', href: '/planta-de-cargos', icon: null },
            { title: 'Agencias', href: '/agencias', icon: null },
            { title: 'Cargos', href: '/cargos', icon: null },
            { title: 'Departamentos', href: '/departamentos', icon: null },
            { title: 'Funcionarios', href: '/funcionarios', icon: null },
            { title: 'Contratos', href: '/contratos', icon: null },
        ],
    },
    {
        title: 'Acciones disciplinarias',
        icon: LibraryBig,
        submenu: [
            { title: 'Sanciones', href: '/sanciones', icon: null },
            { title: 'Asuntos', href: '/asuntos', icon: null },
            { title: 'Motivos', href: '/motivos', icon: null },
        ],
    },
    {
        title: 'Certificados',
        href: '/certificados',
        icon: Files,
    },
    {
        title: 'Tamizaje',
        icon: Activity,
        submenu: [
            { title: 'tamizajes', href: '/tamizajes', icon: null },
            { title: 'resultados', href: '/resultados', icon: null },
        ],
    },
    {
        title: 'Mas tablas',
        icon: Ellipsis,
        submenu: [
            { title: 'ARL', href: '/arl', icon: null },
            { title: 'Bancos', href: '/bancos', icon: null },
            { title: 'Caja de compensacion', href: '/caja-de-compensacion', icon: null },
            { title: 'Cesantias', href: '/cesantias', icon: null },
            { title: 'Eps', href: '/eps', icon: null },
            { title: 'Pensiones', href: '/pensiones', icon: null },
            { title: 'Tipos de contrato', href: '/tipos-de-contrato', icon: null },
            { title: 'Tipos de cuenta bancaria', href: '/tipos-de-cuenta-bancaria', icon: null },
        ],
    },

];

const footerNavItems: NavItem[] = [
    {
        title: 'Usuarios',
        href: '/usuarios',
        icon: UserRoundCheck,
    },
    {
        title: 'Roles',
        href: '/roles',
        icon: Folder,
    },
];

export function AppSidebar() {
    return (
        <Sidebar collapsible="icon" variant="inset">
            <SidebarHeader>
                <SidebarMenu>
                    <SidebarMenuItem>
                        <SidebarMenuButton size="lg" asChild>
                            <Link href="/dashboard" prefetch>
                                <AppLogo />
                            </Link>
                        </SidebarMenuButton>
                    </SidebarMenuItem>
                </SidebarMenu>
            </SidebarHeader>

            <SidebarContent>
                <NavMain items={mainNavItems} />
            </SidebarContent>

            <SidebarFooter>
                <NavFooter items={footerNavItems} className="mt-auto" />
                <NavUser />
            </SidebarFooter>
        </Sidebar>
    );
}
