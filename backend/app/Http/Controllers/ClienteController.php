<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use Illuminate\Http\Request;

class ClienteController extends Controller
{
    public function index()
    {
        $clientes = Cliente::all();
        return response()->json($clientes);
    }

    public function store(Request $request)
    {
        try {
            // Convertendo valores 'sim' e 'não' para booleanos
            $torceFlamengo = $request->torce_flamengo === 'sim' ? 1 : 0;
            $assisteOnePiece = $request->assiste_one_piece === 'sim' ? 1 : 0;
    
            // Criando o cliente com os valores convertidos
            $cliente = Cliente::create([
                'nome' => $request->nome,
                'email' => $request->email,
                'cidade' => $request->cidade,
                'torce_flamengo' => $torceFlamengo,
                'assiste_one_piece' => $assisteOnePiece
            ]);
    
            return response()->json($cliente, 201);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Erro ao criar cliente: ' . $e->getMessage()], 410);
        }
    }
    public function show($id)
    {
        $cliente = Cliente::find($id);
        if (!$cliente) {
            return response()->json(['message' => 'Cliente não encontrado'], 404);
        }

        // Permitir que os clientes verifiquem seus dados cadastrais e vejam seus pedidos já realizados
        return response()->json(['cliente' => $cliente, 'compras' => $cliente->compras], 200);
    }

    public function update(Request $request, $id)
    {
        try {
            $cliente = Cliente::findOrFail($id);
            $cliente->update($request->all());
            return response()->json($cliente, 200);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Erro ao atualizar cliente: ' . $e->getMessage()], 500);
        }
    }

    public function destroy($id)
    {
        try {
            Cliente::findOrFail($id)->delete();
            return response()->json(null, 204);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Erro ao excluir cliente: ' . $e->getMessage()], 500);
        }
    }
}
