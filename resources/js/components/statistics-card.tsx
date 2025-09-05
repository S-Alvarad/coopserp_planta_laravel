import type React from "react"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { ArrowUpIcon, ArrowDownIcon, TrendingUpIcon, UsersIcon, DollarSignIcon, ActivityIcon } from "lucide-react"
import { cn } from "@/lib/utils"

interface StatisticsCardProps {
   title: string
   value: string | number
   description?: string
   trend?: {
      value: number
      isPositive: boolean
   }
   icon?: React.ReactNode
   className?: string
}

export function StatisticsCard({ title, value, description, trend, icon, className }: StatisticsCardProps) {
   return (
      <Card className={cn("transition-all duration-200 hover:scale-105 hover:border-accent hover:shadow-lg", className)}>
         <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium text-card-foreground">{title}</CardTitle>
            {icon && <div className="h-4 w-4 text-muted-foreground">{icon}</div>}
         </CardHeader>
         <CardContent>
            <div className="text-2xl font-bold text-foreground">{value}</div>
            {(description || trend) && (
               <div className="flex items-center justify-between mt-2">
                  {description && <p className="text-xs text-muted-foreground">{description}</p>}
                  {trend && (
                     <div
                        className={cn(
                           "flex items-center text-xs font-medium",
                           trend.isPositive ? "text-accent" : "text-destructive",
                        )}
                     >
                        {trend.isPositive ? (
                           <ArrowUpIcon className="h-3 w-3 mr-1" />
                        ) : (
                           <ArrowDownIcon className="h-3 w-3 mr-1" />
                        )}
                        {Math.abs(trend.value)}%
                     </div>
                  )}
               </div>
            )}
         </CardContent>
      </Card>
   )
}

// Componentes predefinidos para métricas comunes
export function RevenueCard({
   value,
   trend,
}: { value: string | number; trend?: { value: number; isPositive: boolean } }) {
   return (
      <StatisticsCard
         title="Ingresos Totales"
         value={value}
         description="Desde el último mes"
         trend={trend}
         icon={<DollarSignIcon />}
      />
   )
}

export function UsersCard({
   value,
   trend,
}: { value: string | number; trend?: { value: number; isPositive: boolean } }) {
   return (
      <StatisticsCard
         title="Usuarios Activos"
         value={value}
         description="En los últimos 30 días"
         trend={trend}
         icon={<UsersIcon />}
      />
   )
}

export function ConversionCard({
   value,
   trend,
}: { value: string | number; trend?: { value: number; isPositive: boolean } }) {
   return (
      <StatisticsCard
         title="Tasa de Conversión"
         value={value}
         description="Promedio mensual"
         trend={trend}
         icon={<TrendingUpIcon />}
      />
   )
}

export function ActivityCard({
   value,
   trend,
}: { value: string | number; trend?: { value: number; isPositive: boolean } }) {
   return (
      <StatisticsCard
         title="Actividad Diaria"
         value={value}
         description="Sesiones hoy"
         trend={trend}
         icon={<ActivityIcon />}
      />
   )
}
