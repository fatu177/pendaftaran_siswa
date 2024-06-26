<?php

namespace App\Livewire;

use App\Models\pesertapelatihan;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Infolists\Components\Tabs\Tab;
use Filament\Pages\BasePage;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Livewire\Component;
use Illuminate\Contracts\View\View;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\DB;

class peserta extends Component implements HasForms, HasTable
{
    use InteractsWithForms;
    use InteractsWithTable;





    public function table(Table $table): Table
    {

        return $table
            ->query(pesertapelatihan::query())

            ->columns([
                TextColumn::make('nama_lengkap')
                    ->searchable(),
                TextColumn::make('jurusan.nama_jurusan', 'Jurusan')
                    ->sortable(),
                TextColumn::make('gelombang.nama_gelombang', 'Gelombang')
                    ->sortable(),
                TextColumn::make('status')
                    ->sortable()

                    ->formatStateUsing(
                        fn ($record) => $record->status == 1 ? 'Lolos' : ($record->status == 0 ? 'Tidak Lolos' : 'Sedang Di Cek')
                    )
                    ->badge()
                    ->color(fn (string $state): string => match ($state) {
                        '2' => 'warning',
                        '1' => 'success',
                        '0' => 'danger',
                    }),
            ])

            ->filters([
                SelectFilter::make('jurusan')
                    ->relationship('jurusan', 'nama_jurusan')
                    ->multiple()
                    ->searchable()
                    ->preload()
                    ->placeholder('Pilih Jurusan'),
                SelectFilter::make('status')
                    ->options([
                        '2' => 'Sedang Di Cek',
                        '1' => 'Lolos',
                        '0' => 'Tidak Lolos',
                    ])
                    ->multiple()
                    ->searchable()
                    ->preload()
                    ->placeholder('Pilih Status'),
            ]);
    }

    public function render(): View
    {
        return view('livewire.peserta');
    }
}
