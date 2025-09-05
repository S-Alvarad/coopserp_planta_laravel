import { NavFooter } from '@/components/nav-footer';
import { NavMain } from '@/components/nav-main';
import { NavUser } from '@/components/nav-user';
import { Sidebar, SidebarContent, SidebarFooter, SidebarHeader, SidebarMenu, SidebarMenuButton, SidebarMenuItem } from '@/components/ui/sidebar';
import { NavItem } from '@/types';
import { Link } from '@inertiajs/react';
import { UserRoundPlus, UserRoundSearch, Folders, Folder, FolderCheck, Files, LibraryBig, Bookmark, FileCheck2, Package, PackagePlus, PackageOpen, FolderOpen, Heart, FolderHeart, Dot, UserRoundCheck, Shield } from 'lucide-react';
import AppLogo from './app-logo';

const mainNavItems: NavItem[] = [
    {
        title: 'Hoja de vida',
        href: null,
        icon: UserRoundPlus,
        isActive: false,
        disabled: false,
        submenu: [
            { title: 'Listar postulados', href: '/hoja-de-vida/postulados', icon: UserRoundSearch },
        ],
    },
    {
        title: 'Planta de cargos',
        href: null,
        icon: Folders,
        isActive: true,
        disabled: false,
        submenu: [
            { title: 'Gestionar planta', href: '/planta-de-cargos/gestionar-planta', icon: FolderCheck },
            { title: 'Detalle planta', href: '/planta-de-cargos/detalle-planta', icon: FolderCheck },
            {
                title: 'Contratos',
                href: null,
                icon: Folder,
                isActive: true,
                submenu: [
                    { title: 'Indefinidos', href: '/planta-de-cargos/contratos/indefinidos', icon: FolderOpen },
                    { title: 'Fijos', href: '/planta-de-cargos/contratos/fijos', icon: FolderOpen },
                ]
            },
        ],
    },
    {
        title: 'Agencias',
        href: null,
        icon: Folders,
        isActive: false,
        disabled: false,
        submenu: [
            { title: 'Gestionar agencias', href: '/agencias/gestionar-agencias', icon: Folder },
            { title: 'Categorizacion', href: '/agencias/categorizacion-agencias', icon: Folder },
        ]
    },
    {
        title: 'Departamentos',
        href: '/departamentos/gestionar-departamentos',
        icon: Folders,
        isActive: false,
        disabled: false,
    },
    {
        title: 'Cargos',
        href: '/cargos/gestionar-cargos',
        icon: Folders,
        isActive: false,
        disabled: false,
    },
    {
        title: 'Funcionarios',
        href: '/funcionarios/gestionar-funcionarios',
        icon: Folders,
        isActive: false,
        disabled: false,
    },
    {
        title: 'Acciones disciplinarias',
        href: null,
        icon: LibraryBig,
        isActive: false,
        disabled: false,
        submenu: [
            { title: 'Lista de Sanciones', href: '/acciones-disciplinarias/sanciones', icon: Bookmark },
            { title: 'Asuntos', href: '/acciones-disciplinarias/asuntos', icon: Bookmark },
            { title: 'Motivos', href: '/acciones-disciplinarias/motivos', icon: Bookmark },
        ],
    },
    {
        title: 'Certificados',
        href: null,
        icon: Files,
        isActive: false,
        disabled: false,
        submenu: [
            {
                title: 'Laborales',
                href: null,
                icon: Files,
                isActive: false,
                disabled: false,
                submenu: [
                    { title: 'Simple', href: '/certificados/laboral/simple', icon: FileCheck2 },
                    { title: 'Funciones', href: '/certificados/laboral/funciones', icon: FileCheck2 },
                    { title: 'Cargos', href: '/certificados/laboral/cargos', icon: FileCheck2 },
                    { title: 'Horarios', href: '/certificados/laboral/horarios', icon: FileCheck2 },
                    { title: 'Tiempo', href: '/certificados/laboral/tiempo', icon: FileCheck2 },
                ],
            },
        ],
    },
    {
        title: 'Mas Informacion',
        href: null,
        icon: PackagePlus,
        isActive: false,
        disabled: false,
        submenu: [
            { title: 'ARL', href: '/arl', icon: Package },
            { title: 'Bancos', href: '/bancos', icon: Package },
            { title: 'Caja de compensacion', href: '/caja-de-compensacion', icon: Package },
            { title: 'Cesantias', href: '/cesantias', icon: Package },
            { title: 'Eps', href: '/eps', icon: Package },
            { title: 'Pensiones', href: '/pensiones', icon: Package },
            {
                title: 'Tipos de...',
                href: null,
                icon: PackagePlus,
                isActive: false,
                submenu: [
                    { title: 'contrato', href: '/tipos-de-contrato', icon: PackageOpen },
                    { title: 'cuenta bancaria', href: '/tipos-de-cuenta-bancaria', icon: PackageOpen },
                ],
            },
        ],
    },
    {
        title: 'SST',
        href: null,
        icon: Heart,
        isActive: false,
        disabled: true,
        submenu: [
            { title: 'Gestión de Riesgos', href: '/sst/gestion-de-riesgos', icon: FolderHeart },
            { title: 'Comité Paritario', href: '/sst/comite-paritario', icon: FolderHeart },
            {
                title: 'Tamizaje',
                href: null,
                icon: FolderHeart,
                submenu: [
                    { title: 'Tamizajes', href: '/sst/tamizaje/tamizajes', icon: Dot },
                    { title: 'Resultados', href: '/sst/tamizaje/resultados', icon: Dot },
                    { title: 'Seguimientos', href: '/sst/tamizaje/seguimientos', icon: Dot },
                ]
            },
        ]
    }
];

const footerNavItems: NavItem[] = [
    {
        title: 'Usuarios',
        href: '/usuarios',
        icon: UserRoundCheck,
        // isActive: false,
    },
    {
        title: 'Roles',
        href: '/roles',
        icon: Shield,
        // isActive: false,
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
