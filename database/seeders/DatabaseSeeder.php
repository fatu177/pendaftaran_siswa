<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();
        $faker = 
for ($i=0; $i < 20; $i++) {
    User::create([
        'name' => $faker->name,
        'email' => 'test@example.com',
    ]);
}
    }
}
