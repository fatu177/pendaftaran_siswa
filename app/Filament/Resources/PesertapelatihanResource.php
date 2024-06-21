<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PesertapelatihanResource\Pages;
use App\Filament\Resources\PesertapelatihanResource\RelationManagers;
use App\Models\Pesertapelatihan;
use Filament\Actions\ViewAction;
use Filament\Forms;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\View;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\Relationship;
use Illuminate\Database\Eloquent\SoftDeletingScope;

use function Termwind\render;

class PesertapelatihanResource extends Resource
{

    protected static ?string $model = Pesertapelatihan::class;

    protected static ?string $modelLabel = 'Peserta Pelatihan';


    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationLabel = 'Peserta Pelatihan';

    protected static ?string $pluralModelLabel = 'Peserta Pelatihan';

    protected static ?string $slug = 'peserta_pelatihan';



    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('id_jurusan')
                    ->relationship('jurusan', 'nama_jurusan')
                    ->native(false)
                    ->label("Jurusan")
                    ->required()
                    ->disabled(!auth()->user()->hasRole('Admin')),
                Select::make('id_gelombang')
                    ->relationship('gelombang', 'nama_gelombang')
                    ->native(false)
                    ->label("Gelombang")
                    ->required()
                    ->disabled(!auth()->user()->hasRole('Admin')),
                Forms\Components\TextInput::make('nama_lengkap')
                    ->required()
                    ->maxLength(255)
                    ->disabled(!auth()->user()->hasRole('Admin')),
                Forms\Components\TextInput::make('nik')
                    ->required()
                    ->label("NIK")
                    ->maxLength(255)
                    ->visible(auth()->user()->hasRole('Admin')),
                Forms\Components\TextInput::make('kartu_keluarga')
                    ->required()
                    ->maxLength(255)
                    ->visible(auth()->user()->hasRole('Admin')),
                Select::make('jenis_kelamin')
                    ->options([
                        'Laki-laki' => 'Laki-laki',
                        'Perempuan' => 'Perempuan'
                    ])
                    ->native(false)
                    ->required()
                    ->visible(auth()->user()->hasRole('Admin')),
                Forms\Components\TextInput::make('tempat_lahir')
                    ->required()
                    ->maxLength(255)
                    ->visible(auth()->user()->hasRole('Admin')),
                Forms\Components\DatePicker::make('tanggal_lahir')
                    ->required()
                    ->native(false)
                    ->maxDate(now())
                    ->visible(auth()->user()->hasRole('Admin')),
                Forms\Components\TextInput::make('pendidikan_terakhir')
                    ->required()
                    ->maxLength(255)
                    ->disabled(!auth()->user()->hasRole('Admin')),
                Forms\Components\TextInput::make('nama_sekolah')
                    ->required()
                    ->maxLength(255)
                    ->visible(auth()->user()->hasRole('Admin')),
                Forms\Components\TextInput::make('kejuruan')
                    ->required()
                    ->maxLength(255)
                    ->visible(auth()->user()->hasRole('Admin')),
                Forms\Components\TextInput::make('nomor_hp')
                    ->required()
                    ->maxLength(255)
                    ->visible(auth()->user()->hasRole('Admin')),
                Forms\Components\TextInput::make('email')
                    ->email()
                    ->required()
                    ->maxLength(255)
                    ->visible(auth()->user()->hasRole('Admin')),
                Forms\Components\TextInput::make('aktivitas_saat_ini')
                    ->required()
                    ->maxLength(255)
                    ->visible(auth()->user()->hasRole('Admin')),
                Select::make('status')
                    ->options([
                        '1' => 'Lolos',
                        '0' => 'Tidak Lolos',
                        '2' => 'Sedang Di Cek'
                    ])
                    ->native(false)
                    ->default(2)
                    ->hidden(auth()->user()->hasRole('Admin'))
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('jurusan.nama_jurusan')
                    ->sortable(),
                Tables\Columns\TextColumn::make('gelombang.nama_gelombang')
                    ->sortable(),
                Tables\Columns\TextColumn::make('nama_lengkap')
                    ->searchable(),
                Tables\Columns\TextColumn::make('nik')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),

                Tables\Columns\TextColumn::make('kartu_keluarga')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('jenis_kelamin')
                    ->searchable(),
                Tables\Columns\TextColumn::make('tempat_lahir')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('tanggal_lahir')
                    ->date()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('pendidikan_terakhir')
                    ->searchable(),
                Tables\Columns\TextColumn::make('nama_sekolah')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('kejuruan')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('nomor_hp')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('email')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('aktivitas_saat_ini')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
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
                Tables\Columns\TextColumn::make('deleted_at')
                    ->dateTime()
                    ->sortable()
                    ->hidden(!auth()->user()->hasRole('Admin'))
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->hidden(!auth()->user()->hasRole('Admin'))
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->hidden(!auth()->user()->hasRole('Admin'))
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\TrashedFilter::make(),
                SelectFilter::make('jurusan')
                    ->relationship('jurusan', 'nama_jurusan')
                    ->multiple()
                    ->searchable()
                    ->preload(),
                SelectFilter::make('gelombang')
                    ->relationship('gelombang', 'nama_gelombang')
                    ->multiple()
                    ->searchable()
                    ->preload()
            ])
            ->actions([
                Tables\Actions\EditAction::make()->successNotificationTitle('Edit Success'),
                Tables\Actions\DeleteAction::make()->successNotificationTitle('Delete Success'),


            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    Tables\Actions\ForceDeleteBulkAction::make(),
                    Tables\Actions\RestoreBulkAction::make(),
                ])->Visible(auth()->user()->hasRole('Admin')),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPesertapelatihans::route('/'),
            'create' => Pages\CreatePesertapelatihan::route('/create'),
            'edit' => Pages\EditPesertapelatihan::route('/{record}/edit'),
        ];
    }

    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
