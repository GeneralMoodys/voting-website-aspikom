<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
{
    Schema::create('db_vote', function (Blueprint $table) {
        $table->id();
        $table->string('universitas');
        $table->string('prodi');
        $table->string('pin_sesi_1')->unique();
        $table->string('pin_sesi_2')->nullable()->unique();
        $table->boolean('is_used_1')->default(false);
        $table->boolean('is_used_2')->default(false);
        $table->timestamps();
    });
}


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('db_vote');
    }
};
