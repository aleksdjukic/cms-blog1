<?php

use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = User::where('email', 'aco-djukic@hotmail.com')->first();

        if(!$user){
            User::create([
                'name' => 'Aco',
                'email' => 'aco-djukic@hotmail.com',
                'role' => 'admin',
                'password' => Hash::make('password')
            ]);
        }
    }
}
