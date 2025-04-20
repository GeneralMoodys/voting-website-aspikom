<?php

namespace App\Http\Controllers;
use App\Models\Voter;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class VoteController extends Controller
{
    //
    public function store(Request $request)
{
    $request->validate([
        'kandidat_id' => 'required|exists:kandidats,id',
    ]);

    $user = Auth::user();

    // Cek jika user sudah voting
    if ($user->vote) {
        return redirect()->back()->with('error', 'Kamu sudah memilih.');
    }

    Voter::create([
        'user_id' => $user->id,
        'kandidat_id' => $request->kandidat_id,
    ]);

    return redirect()->back()->with('success', 'Terima kasih, pilihanmu sudah tercatat!');
}
}
