<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VoteSession extends Model
{
    protected $table = 'db_vote';

    protected $fillable = [
        'universitas',
        'prodi',
        'pin_sesi_1',
        'pin_sesi_2',
        'is_used_1',
        'is_used_2',
    ];

    public function kandidats()
{
    return $this->hasMany(Kandidat::class, 'vote_session_id', 'id');
}


    // VoteSession.php
    public function voters()
    {
        return $this->hasMany(Voter::class, 'kandidat_id', 'id');
    }

    

    
}
