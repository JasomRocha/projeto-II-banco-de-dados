<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\VendedorController;
use App\Http\Controllers\ProdutoController;
use App\Http\Controllers\CompraController;
use App\Http\Controllers\Api\LojaController;

Route::get('/home', [LojaController::class, 'index']);


// Rotas para Cliente
Route::get('/clientes', [ClienteController::class, 'index']);
Route::post('/clientes', [ClienteController::class, 'store']);
Route::get('/clientes/{id}', [ClienteController::class, 'show']);
Route::put('/clientes/{id}', [ClienteController::class, 'update']);
Route::delete('/clientes/{id}', [ClienteController::class, 'destroy']);


// Rotas para Vendedor
Route::get('/vendedores', [VendedorController::class, 'index']);
Route::post('/vendedores', [VendedorController::class, 'store']);
Route::get('/vendedores/{id}', [VendedorController::class, 'show']);
Route::put('/vendedores/{id}', [VendedorController::class, 'update']);
Route::delete('/vendedores/{id}', [VendedorController::class, 'destroy']);

// Rotas para Produto
Route::get('/produtos', [ProdutoController::class, 'index']);
Route::post('/produtos', [ProdutoController::class, 'store']);
Route::get('/produtos/{id}', [ProdutoController::class, 'show']);
Route::put('/produtos/{id}', [ProdutoController::class, 'update']);
Route::delete('/produtos/{id}', [ProdutoController::class, 'destroy']);
Route::get('/produtos/mais-caro', [ProdutoController::class, 'maisCaro']);
Route::get('/produtos/mais-vendido', [ProdutoController::class, 'maisVendido']);

// Rotas para Compra
Route::get('/compras', [CompraController::class, 'index']);
Route::post('/compras', [CompraController::class, 'store']);
Route::get('/compras/{id}', [CompraController::class, 'show']);
Route::put('/compras/{id}', [CompraController::class, 'update']);
Route::delete('/compras/{id}', [CompraController::class, 'destroy']);
