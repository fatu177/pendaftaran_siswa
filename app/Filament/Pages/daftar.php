<?php

namespace App\Filament\Pages;


use App\Models\pesertapelatihan;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Contracts\HasForms;
use Filament\Pages\BasePage;
use Filament\Forms\Form;


use Illuminate\Support\Facades\DB;

class daftar extends BasePage implements HasForms
{
    protected static ?string $model = pesertapelatihan::class;
    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    protected static string $view = 'filament.pages.daftar';
}
