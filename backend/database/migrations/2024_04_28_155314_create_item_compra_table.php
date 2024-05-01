<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('itemcompra', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('compra_id');
            $table->unsignedBigInteger('produto_id');
            $table->integer('quantidade');
            $table->timestamps();

            $table->foreign('compra_id')->references('id')->on('compra')->onDelete('cascade');
            $table->foreign('produto_id')->references('id')->on('produto')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('itemcompra');
    }
};

