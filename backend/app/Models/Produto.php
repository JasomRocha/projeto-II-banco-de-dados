<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produto extends Model
{
    use HasFactory;
    protected $table = 'produto';
    protected $fillable = ['nome', 'preco', 'estoque', 'categoria', 'fabricante'];

    public function itensCompra()
    {
        return $this->hasMany(ItemCompra::class);
    }
}
