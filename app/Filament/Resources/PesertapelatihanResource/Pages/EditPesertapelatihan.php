<?php

namespace App\Filament\Resources\PesertapelatihanResource\Pages;

use App\Filament\Resources\PesertapelatihanResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditPesertapelatihan extends EditRecord
{
    protected static string $resource = PesertapelatihanResource::class;

    protected function getHeaderActions(): array
    {

        return [
            Actions\DeleteAction::make(),
            Actions\ForceDeleteAction::make(),
            Actions\RestoreAction::make(),
        ];
    }
}
