<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kandidat extends Model
{
    use HasFactory;

    // Tambahkan properti fillable untuk mencegah Mass Assignment Exception
    protected $fillable = [
        'nama',       // Kolom nama kandidat
        'profil',     // Kolom profil/deskripsi kandidat
        'foto',       // Kolom foto kandidat
    ];

public function voters()
{
    return $this->hasMany(Voter::class, 'kandidat_id', 'id');
}



public function voteSession()
{
    return $this->belongsTo(VoteSession::class);
}

}

