<?php

use App\Filament\Pages\daftar;
use App\Filament\Pages\peserta;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/daftar', daftar::class)->name('daftar');
Route::get('/', peserta::class)->name('peserta');
