<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('kandidats', function (Blueprint $table) {
            $table->unsignedBigInteger('vote_session_id')->nullable()->after('id');
            $table->foreign('vote_session_id')->references('id')->on('db_vote')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::table('kandidats', function (Blueprint $table) {
            $table->dropForeign(['vote_session_id']);
            $table->dropColumn('vote_session_id');
        });
    }
};

