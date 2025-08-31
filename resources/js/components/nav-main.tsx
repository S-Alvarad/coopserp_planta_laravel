import {
   SidebarGroup,
   SidebarGroupLabel,
   SidebarMenu,
   SidebarMenuButton,
   SidebarMenuItem,
   SidebarMenuSub,
   SidebarMenuSubItem,
   SidebarMenuSubButton
} from '@/components/ui/sidebar';
import {
   Collapsible,
   CollapsibleContent,
   CollapsibleTrigger,
} from '@/components/ui/collapsible';
import { NavItem } from '@/types';
import { Link, usePage } from '@inertiajs/react';
import { ChevronRight } from 'lucide-react';

function RenderNavItem({ item }: { item: NavItem }) {
   const page = usePage();
   const hasSubmenu = !!item.submenu?.length;
   const isActive = item.href ? page.url.startsWith(item.href) : !!item.isActive;
   const defaultOpen =
      item.isActive ||
      (hasSubmenu && item.href ? page.url.startsWith(item.href) : false);

   return (
      <Collapsible key={item.title} defaultOpen={defaultOpen}>
         <SidebarMenuItem>
            {hasSubmenu ? (
               <CollapsibleTrigger asChild disabled={item.disabled}>
                  <SidebarMenuButton
                     asChild
                     tooltip={item.title}
                     className={`group/collapsible ${item.disabled ? "opacity-50 cursor-not-allowed pointer-events-none" : ""}`}
                  >
                     <div className="flex items-center w-full">
                        {item.icon && <item.icon />}
                        <span>{item.title}</span>
                        <ChevronRight className="ml-auto transition-transform duration-200 group-data-[state=open]/collapsible:rotate-90" />
                     </div>
                  </SidebarMenuButton>
               </CollapsibleTrigger>

            ) : (
               <SidebarMenuButton asChild isActive={isActive} tooltip={item.title}>
                  <Link href={item.href!} prefetch>
                     {item.icon && <item.icon />}
                     <span>{item.title}</span>
                  </Link>
               </SidebarMenuButton>
            )}

            {hasSubmenu && (
               <CollapsibleContent>
                  <SidebarMenuSub>
                     {item.submenu!.map((subItem) => (
                        <SidebarMenuSubItem key={subItem.title}>
                           {subItem.submenu ? (
                              <RenderNavItem item={subItem} />
                           ) : (
                              <SidebarMenuSubButton
                                 asChild
                                 isActive={page.url.startsWith(subItem.href ?? '')}
                                 className={`${subItem.disabled ? "opacity-50 cursor-not-allowed pointer-events-none" : ""}`}
                              >
                                 {subItem.disabled ? (
                                    <div className="flex items-center">
                                       {subItem.icon && <subItem.icon />}
                                       <span>{subItem.title}</span>
                                    </div>
                                 ) : (
                                    <Link href={subItem.href!} prefetch>
                                       {subItem.icon && <subItem.icon />}
                                       <span>{subItem.title}</span>
                                    </Link>
                                 )}
                              </SidebarMenuSubButton>
                           )}
                        </SidebarMenuSubItem>
                     ))}
                  </SidebarMenuSub>
               </CollapsibleContent>
            )}
         </SidebarMenuItem>
      </Collapsible>
   );
}

export function NavMain({ items = [] }: { items: NavItem[] }) {
   return (
      <SidebarGroup className="px-2 py-0">
         <SidebarGroupLabel>Platform</SidebarGroupLabel>
         <SidebarMenu>
            {items.map((item) => (
               <RenderNavItem key={item.title} item={item} />
            ))}
         </SidebarMenu>
      </SidebarGroup>
   );
}
