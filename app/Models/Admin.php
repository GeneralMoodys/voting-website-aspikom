<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\Hash;

class Admin extends Model
{
    protected $table = 'admins'; // Nama tabel

    protected $fillable = [
        'username',
        'password',
    ];

    // Agar password otomatis di-hash jika kamu set dari model
    public function setPasswordAttribute($value)
    {
        $this->attributes['password'] = Hash::make($value);
    }

    public $timestamps = true; // Jika kamu pakai created_at dan updated_at
}
