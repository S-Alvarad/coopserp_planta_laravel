import { PlaceholderPattern } from '@/components/ui/placeholder-pattern';
import AppLayout from '@/layouts/app-layout';
import { type BreadcrumbItem } from '@/types';
import { Head } from '@inertiajs/react';

import { RevenueCard, UsersCard, ConversionCard, ActivityCard, StatisticsCard } from "@/components/statistics-card"
import { ShoppingCartIcon, EyeIcon, HeartIcon } from "lucide-react"

const breadcrumbs: BreadcrumbItem[] = [
    {
        title: 'Dashboard',
        href: '/dashboard',
    },
];

export default function Dashboard() {
    return (
        <AppLayout breadcrumbs={breadcrumbs}>
            <Head title="Dashboard" />
            <div className="flex h-full flex-1 flex-col gap-4 rounded-xl p-8 overflow-x-auto">
                <div className="">
                    <div className="mb-8">
                        <h1 className="text-3xl font-bold text-foreground mb-2">Panel de Estadísticas</h1>
                        <p className="text-muted-foreground">Resumen de métricas clave de tu negocio</p>
                    </div>

                    {/* Grid de tarjetas principales */}
                    <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-4 mb-8">
                        <RevenueCard value="€45,231" trend={{ value: 12.5, isPositive: true }} />
                        <UsersCard value="2,350" trend={{ value: 8.2, isPositive: true }} />
                        <ConversionCard value="3.24%" trend={{ value: 2.1, isPositive: false }} />
                        <ActivityCard value="1,429" trend={{ value: 15.3, isPositive: true }} />
                    </div>

                    {/* Tarjetas adicionales personalizadas */}
                    <div className="grid gap-6 md:grid-cols-3 lg:grid-cols-3">
                        <StatisticsCard
                            title="Pedidos Completados"
                            value="847"
                            description="Este mes"
                            trend={{ value: 5.7, isPositive: true }}
                            icon={<ShoppingCartIcon />}
                        />
                        <StatisticsCard
                            title="Visualizaciones de Página"
                            value="12,543"
                            description="Últimas 24 horas"
                            trend={{ value: 3.2, isPositive: true }}
                            icon={<EyeIcon />}
                        />
                        <StatisticsCard
                            title="Productos Favoritos"
                            value="324"
                            description="Agregados hoy"
                            trend={{ value: 1.8, isPositive: false }}
                            icon={<HeartIcon />}
                        />
                    </div>
                </div>
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
            </div>
        </AppLayout>
    );
}
