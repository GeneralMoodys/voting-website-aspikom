<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class VoteUser extends Model
{
    protected $table = 'db_user';
    protected $fillable = ['nama_pemilih', 'bukti_keanggotaan', 'bukti_surat_kuasa', 'vote_id', 'sesi', 'kandidat_id'];

    public function vote()
    {
        return $this->belongsTo(VoteSession::class, 'vote_id');
    }

    public function kandidat()
    {
        return $this->belongsTo(Kandidat::class, 'kandidat_id');
    }
}
