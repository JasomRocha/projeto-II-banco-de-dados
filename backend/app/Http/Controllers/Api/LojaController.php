<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LojaController extends Controller
{
    public function index()
    {
        // Aqui você pode retornar os dados da loja em formato JSON
        return response()->json([
            'message' => 'Bem-vindo à loja!',
            // Outros dados da loja...
        ]);
    }
}