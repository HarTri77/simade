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
        Schema::create('bumdes', function (Blueprint $table) {
            $table->id();
            $table->string('gambar'); // Untuk menyimpan path/nama file gambar
            $table->string('produk', 255); // VARCHAR(255) untuk nama produk
            $table->string('slug', 255)->unique(); // VARCHAR(255) untuk slug (sebaiknya unique)
            $table->text('deskripsi'); // TEXT lebih cocok untuk deskripsi panjang
            $table->decimal('harga', 10, 2); // Tipe DECIMAL lebih tepat untuk harga
            $table->timestamps(); // Ditambahkan created_at dan updated_at
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bumdes');
    }
};
