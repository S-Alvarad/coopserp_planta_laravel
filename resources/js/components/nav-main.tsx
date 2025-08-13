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
import { NavItemWithSubmenu } from '@/types';
import { Link, usePage } from '@inertiajs/react';
import { ChevronRight } from 'lucide-react';

export function NavMain({ items = [] }: { items: NavItemWithSubmenu[] }) {
   const page = usePage();

   return (
      <SidebarGroup className="px-2 py-0">
         <SidebarGroupLabel>Platform</SidebarGroupLabel>
         <SidebarMenu>
            {items.map((item) => {
               const hasSubmenu = !!item.submenu?.length;
               const isActive = item.href ? page.url.startsWith(item.href) : false;
               const defaultOpen = hasSubmenu && item.href
                  ? page.url.startsWith(item.href)
                  : false;

               return (
                  <Collapsible key={item.title} defaultOpen={defaultOpen}>
                     <SidebarMenuItem>
                        {hasSubmenu ? (
                           <CollapsibleTrigger asChild>
                              <SidebarMenuButton
                                 asChild
                                 tooltip={item.title}
                                 className="group/collapsible"
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
                                       <SidebarMenuSubButton
                                          asChild
                                          isActive={page.url.startsWith(subItem.href)}
                                       >
                                          <Link href={subItem.href} prefetch>
                                             {subItem.icon && <subItem.icon />}
                                             <span>{subItem.title}</span>
                                          </Link>
                                       </SidebarMenuSubButton>
                                    </SidebarMenuSubItem>
                                 ))}
                              </SidebarMenuSub>
                           </CollapsibleContent>
                        )}
                     </SidebarMenuItem>
                  </Collapsible>
               );
            })}
         </SidebarMenu>
      </SidebarGroup>
   );
}
