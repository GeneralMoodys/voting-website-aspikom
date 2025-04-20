<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Voter extends Model
{
    protected $table = 'voters';

    protected $fillable = [
        'nama',
        'vote_session_id',
        'bukti_anggota',
        'surat_kuasa',
        'kandidat_id',
        'status',
    ];

    // Relasi ke VoteSession (mengambil sesi voting)
    public function session()
    {
        return $this->belongsTo(VoteSession::class, 'vote_session_id');
    }

    // Relasi ke Kandidat (mengambil kandidat yang dipilih)
    public function kandidat()
    {
        return $this->belongsTo(Kandidat::class, 'kandidat_id');
    }
    
}
