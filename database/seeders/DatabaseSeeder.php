<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\User;
use App\Models\Gelombang;
use App\Models\Jurusan;
use App\Models\pesertapelatihan;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID'); // Adjust locale to 'id_ID' for Indonesian locale

        // Fetch all jurusan and gelombang IDs
        $jurusanIds = Jurusan::pluck('id')->toArray();
        $gelombangIds = Gelombang::pluck('id')->toArray();

        for ($i = 0; $i < 20; $i++) {
            $name = $faker->name;
            pesertapelatihan::create([
                'nama_lengkap' => $name,
                'email' => $faker->email,
                'id_jurusan' => $faker->randomElement($jurusanIds),
                'id_gelombang' => $faker->randomElement($gelombangIds),
                'nik' => $faker->nik,
                'kartu_keluarga' => $faker->nik,
                'jenis_kelamin' => $faker->randomElement(['Laki - Laki', 'Perempuan']),
                'tempat_lahir' => $faker->city,
                'tanggal_lahir' => $faker->date,
                'pendidikan_terakhir' => $faker->randomElement(['S-1', 'SMA', 'S-2']),
                'nama_sekolah' => $faker->company,
                'kejuruan' => $faker->randomElement(['Fisika', 'Komputer', 'Bahasa Inggris']),
                'nomor_hp' => $faker->phoneNumber,
                'aktivitas_saat_ini' => $faker->randomElement(['Mencari Kerja', 'Sekolah', 'Bekerja']),
                'status' => $faker->numberBetween(0, 2),
            ]);
        }
    }
}
