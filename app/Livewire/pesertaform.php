<?php

namespace App\Livewire;

use App\Models\pesertapelatihan;
use Filament\Forms;
use Filament\Forms\Components\Hidden;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;
use Filament\Forms\Form;
use Filament\Notifications\Notification;
use Livewire\Component;
use Illuminate\Contracts\View\View;

class pesertaform extends Component implements HasForms
{
    use InteractsWithForms;

    public ?array $data = [];

    public function mount(): void
    {
        $this->form->fill();
    }

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('id_jurusan')
                    ->relationship('jurusan', 'nama_jurusan')
                    ->native(false)
                    ->label("Jurusan")
                    ->required(),
                Select::make('id_gelombang')
                    ->relationship('gelombang', 'nama_gelombang')
                    ->native(false)
                    ->label("Gelombang")
                    ->required(),
                Forms\Components\TextInput::make('nama_lengkap')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('nik')
                    ->required()
                    ->label("NIK")
                    ->maxLength(255),
                Forms\Components\TextInput::make('kartu_keluarga')
                    ->required()
                    ->maxLength(255),
                Select::make('jenis_kelamin')
                    ->options([
                        'Laki-laki' => 'Laki-laki',
                        'Perempuan' => 'Perempuan'
                    ])
                    ->native(false)
                    ->required(),
                Forms\Components\TextInput::make('tempat_lahir')
                    ->required()
                    ->maxLength(255),
                Forms\Components\DatePicker::make('tanggal_lahir')
                    ->required()
                    ->native(false)
                    ->maxDate(now()),
                Forms\Components\TextInput::make('pendidikan_terakhir')
                    ->required()

                    ->maxLength(255),
                Forms\Components\TextInput::make('nama_sekolah')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('kejuruan')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('nomor_hp')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('email')
                    ->email()
                    ->hintColor(100)
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('aktivitas_saat_ini')
                    ->required()
                    ->maxLength(255),
                Hidden::make('status', 2)
                    ->default(2),
            ])
            ->statePath('data')->columns(2)
            ->model(pesertapelatihan::class);
    }

    public function create()
    {
        $data = $this->form->getState();

        $record = pesertapelatihan::create($data);

        $this->form->model($record)->saveRelationships();

        Notification::make()
            ->title('Success')
            ->body('Data berhasil ditambahkan')
            ->icon('heroicon-o-check-circle')
            ->color('success')
            ->send();
        return redirect()->route('peserta');
    }

    public function render(): View
    {
        return view('livewire.pesertaform');
    }
}
