<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Cliente;

class ClienteSeeder extends Seeder
{
    public function run():void
    {
        Cliente::create([
            'nome' => 'João Silva',
            'email' => 'joao@example.com',
            'torce_flamengo' => true,
            'assiste_one_piece' => false,
            'cidade' => 'Rio de Janeiro',
        ]);

        // Adicione mais clientes conforme necessário
    }
}