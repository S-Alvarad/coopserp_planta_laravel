import AppLogoIcon from './app-logo-icon';
import { LayoutPanelLeft } from 'lucide-react'

export default function AppLogo() {
    return (
        <>
            <div className="bg-sidebar-primary text-sidebar-primary-foreground flex aspect-square size-8 items-center justify-center rounded-lg">
                <LayoutPanelLeft className="size-5 fill-current text-white dark:text-black" />
            </div>
            <div className="flex flex-col gap-0.5 leading-none">
                <span className="font-semibold">Talento Humano</span>
                <span className="font-extralight">Coposerp</span>
            </div>
        </>
    );
}
