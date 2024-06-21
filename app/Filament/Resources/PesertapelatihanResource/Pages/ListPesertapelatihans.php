<?php

namespace App\Filament\Resources\PesertapelatihanResource\Pages;

use App\Filament\Resources\PesertapelatihanResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListPesertapelatihans extends ListRecords
{
    protected static string $resource = PesertapelatihanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
