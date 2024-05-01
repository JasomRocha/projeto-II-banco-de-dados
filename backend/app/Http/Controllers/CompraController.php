<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use App\Models\Compra;
use App\Models\ItemCompra;
use App\Models\Produto;
use App\Models\Vendedor;
use Illuminate\Http\Request;

class CompraController extends Controller
{
    public function store(Request $request)
{
    // Validar se o cliente existe no sistema
    $cliente = Cliente::find($request->cliente_id);
    if (!$cliente) {
        return response()->json(['message' => 'Cliente não encontrado'], 400);
    }

    // Validar se o vendedor existe no sistema
    $vendedor = Vendedor::find($request->vendedor_id);
    if (!$vendedor) {
        return response()->json(['message' => 'Vendedor não encontrado'], 400);
    }

    // Verificar se a forma de pagamento é válida
    $formaPagamento = $request->forma_pagamento;
    if (!in_array($formaPagamento, ['cartao', 'boleto', 'pix', 'berries'])) {
        return response()->json(['message' => 'Forma de pagamento inválida'], 400);
    }

    // Se a forma de pagamento for cartão, boleto, pix ou berries, verificar o status de confirmação associado
    if (in_array($formaPagamento, ['cartao', 'boleto', 'pix', 'berries'])) {
        $statusPagamento = $request->status_pagamento;
        if ($statusPagamento !== 'confirmado') {
            return response()->json(['message' => 'Status de pagamento inválido'], 400);
        }
    }

    // Criar uma transação para garantir a consistência dos dados
    \DB::beginTransaction();

    try {
        $compra = new Compra();
        $compra->cliente_id = $request->cliente_id;
        $compra->vendedor_id = $request->vendedor_id;
        $compra->forma_pagamento = $formaPagamento;
        $compra->status_pagamento = $request->status_pagamento;
        $compra->cupom_desconto = $request->cupom_desconto;
        $compra->save();

        // Criar itens de compra e verificar estoque
        foreach ($request->itens as $item) {
            $produto = Produto::find($item['produto_id']);
            if (!$produto || $produto->estoque < $item['quantidade']) {
                \DB::rollBack();
                return response()->json(['message' => 'Produto não disponível em estoque'], 400);
            }

            $itemCompra = new ItemCompra();
            $itemCompra->compra_id = $compra->id;
            $itemCompra->produto_id = $item['produto_id'];
            $itemCompra->quantidade = $item['quantidade'];
            $itemCompra->save();

            // Atualizar estoque do produto
            $produto->estoque -= $item['quantidade'];
            $produto->save();
        }

        \DB::commit();

        return response()->json(['message' => 'Compra efetuada com sucesso'], 201);
    } catch (\Exception $e) {
        \DB::rollBack();
        return response()->json(['message' => 'Erro ao registrar compra'], 500);
    }
}

    public function index(Request $request)
    {
        // Verifica se foi passado o parâmetro 'vendedor'
        if ($request->has('vendedor')) {
            $vendedor = $request->input('vendedor');
            
            // Obtém as compras associadas ao vendedor especificado
            $compras = Compra::whereHas('vendedor', function ($query) use ($vendedor) {
                $query->where('nome', $vendedor);
            })->with('cliente', 'vendedor', 'itensCompra')->get();
        } else {
            // Caso contrário, retorna todas as compras
            $compras = Compra::with('cliente', 'vendedor', 'itensCompra')->get();
        }
        
        return response()->json($compras);
    }

    public function show($id)
    {
        $compra = Compra::with('cliente', 'vendedor', 'itensCompra')->findOrFail($id);
        return response()->json($compra);
    }

    public function update(Request $request, $id)
    {
        $compra = Compra::findOrFail($id);
        $compra->update($request->all());
        return response()->json($compra, 200);
    }

    public function destroy($id)
    {
        Compra::findOrFail($id)->delete();
        return response()->json(null, 204);
    }
    public function contarCompras()
    {
        // Contar o número de linhas na tabela de compras
        $quantidadeVendas = Compra::count();

        return view('sua.view', ['quantidadeVendas' => $quantidadeVendas]);
    }
}
