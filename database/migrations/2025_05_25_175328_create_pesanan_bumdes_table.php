<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
       Schema::create('pesanan_bumdes', function (Blueprint $table) {
    $table->id();
    $table->foreignId('bumdes_id')->constrained();
    $table->string('nama_pemesan');
    $table->string('no_hp');
    $table->text('alamat');
    $table->integer('jumlah');
    $table->text('catatan')->nullable();
    $table->string('status')->default('menunggu');
    $table->timestamps();
});
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pesanan_bumdes');
    }
};
