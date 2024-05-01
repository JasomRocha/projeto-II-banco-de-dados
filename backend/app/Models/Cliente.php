<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    use HasFactory;
    protected $table = 'cliente';
    protected $fillable = ['nome', 'email', 'torce_flamengo', 'assiste_one_piece', 'cidade'];

    public function compras()
    {
        return $this->hasMany(Compra::class);
    }
}
