<?php

namespace App\Filament\Pages;

use Filament\Infolists\Components\Tabs\Tab;
use Filament\Navigation\MenuItem;
use Filament\Pages\BasePage;
use Filament\Pages\Page;
use Filament\Panel;

class peserta extends BasePage
{
    protected static string $view = 'filament.pages.peserta';
    public function panel(Panel $panel): Panel
    {
        return $panel
            // ...
            ->userMenuItems([
                'logout' => MenuItem::make()->label('Log out'),
                // ...
            ]);
    }
}
