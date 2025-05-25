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
        Schema::table('voters', function (Blueprint $table) {
            $table->integer('sesi_ke')->after('vote_session_id')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('voters', function (Blueprint $table) {
            $table->dropColumn('sesi_ke');
        });
    }
    
};
