<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pesertapelatihans', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_jurusan')
                ->nullable()
                ->constrained('jurusans')
                ->onUpdate('cascade')
                ->onDelete('set null');
            $table->foreignId('id_gelombang')
                ->nullable()
                ->constrained('gelombangs')
                ->onUpdate('cascade')
                ->onDelete('set null');
            $table->string('nama_lengkap');
            $table->string('nik');
            $table->string('kartu_keluarga');
            $table->string('jenis_kelamin');
            $table->string('tempat_lahir');
            $table->date('tanggal_lahir');
            $table->string('pendidikan_terakhir');
            $table->string('nama_sekolah');
            $table->string('kejuruan');
            $table->string('nomor_hp');
            $table->string('email');
            $table->string('aktivitas_saat_ini');
            $table->tinyInteger('status');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pesertapelatihans');
    }
};
