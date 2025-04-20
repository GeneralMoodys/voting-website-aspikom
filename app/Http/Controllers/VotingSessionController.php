<?php

namespace App\Http\Controllers;

use App\Models\VoteSession;
use App\Models\Voter;
use Illuminate\Http\Request;
use App\Models\Kandidat;
use Illuminate\Support\Facades\DB;
 
class VotingSessionController extends Controller
{
    
    public function showPinForm()
    {
        return view('vote.pin');
    }

    public function checkPin(Request $request)
{
    $request->validate([
        'pin' => 'required|string',
    ]);

    $pin = $request->pin;

    // Cek jika PIN cocok dengan sesi 1
    $session = VoteSession::where('pin_sesi_1', $pin)->first();
    $usedSessionField = 'is_used_1';

    if (!$session) {
        // Jika bukan sesi 1, cek apakah cocok dengan sesi 2
        $session = VoteSession::where('pin_sesi_2', $pin)->first();
        $usedSessionField = 'is_used_2';

        if (!$session) {
            return back()->withErrors(['pin' => 'PIN tidak ditemukan atau belum aktif.']);
        }

        // Jika sesi 2 sudah digunakan, tolak
        if ($session->is_used_2) {
            return back()->withErrors(['pin' => 'PIN sesi 2 sudah digunakan.']);
        }

        // Ambil voter dari sesi 1 untuk duplikasi data
        $voterSesi1 = Voter::where('vote_session_id', $session->id)->first();

        if (!$voterSesi1) {
            return back()->withErrors(['pin' => 'Data sesi 1 belum ditemukan.']);
        }

        // Buat voter baru untuk sesi 2
        $voterBaru = Voter::create([
            'nama' => $voterSesi1->nama,
            'vote_session_id' => $session->id,
            'bukti_anggota' => $voterSesi1->bukti_anggota,
            'surat_kuasa' => $voterSesi1->surat_kuasa,
        ]);

        session([
            'vote_session_id' => $session->id,
            'used_session_field' => $usedSessionField,
        ]);

        // Redirect langsung ke kandidat
        return redirect()->route('vote.kandidat', ['voter' => $voterBaru->id]);
    }

    // Kalau ini adalah PIN sesi 1
    if ($session->is_used_1) {
        return back()->withErrors(['pin' => 'PIN sesi 1 sudah digunakan.']);
    }

    // Simpan session info
    session([
        'vote_session_id' => $session->id,
        'used_session_field' => $usedSessionField,
    ]);

    // Redirect ke form
    return redirect()->route('vote.form');
}

    



public function showVoteForm()
{
    $sessionId = session('vote_session_id');

    if (!$sessionId) {
        return redirect()->route('vote.pin')->withErrors(['pin' => 'Session tidak ditemukan.']);
    }

    $session = VoteSession::findOrFail($sessionId);

    return view('vote.form', compact('session'));
}

public function submitVoterData(Request $request)
{
    $sessionId = session('vote_session_id');

    if (!$sessionId) {
        return redirect()->route('vote.pin')->withErrors(['pin' => 'Session tidak ditemukan.']);
    }

    $session = VoteSession::findOrFail($sessionId);

    $request->validate([
        'nama' => 'required|string|max:255',
        'bukti_anggota' => 'required|file|mimes:jpg,jpeg,png,pdf|max:2048',
        'surat_kuasa' => 'required|file|mimes:jpg,jpeg,png,pdf|max:2048',
    ]);

    // Simpan bukti anggota dan surat kuasa
    $buktiAnggotaPath = $request->file('bukti_anggota')->store('bukti/anggota', 'public');
    $suratKuasaPath = $request->file('surat_kuasa')->store('bukti/surat_kuasa', 'public');

    // Simpan data voter
    $voter = Voter::create([
        'nama' => $request->nama,
        'vote_session_id' => $session->id,
        'bukti_anggota' => $buktiAnggotaPath,
        'surat_kuasa' => $suratKuasaPath,
    ]);

    // Arahkan ke halaman kandidat
    return redirect()->route('vote.kandidat', ['voter' => $voter->id]);
}
    

public function showKandidatForm(Voter $voter)
{
    if ($voter->status == 1) {
        return redirect()->route('vote.success', ['session' => $voter->vote_session_id])
            ->with('message', 'Anda sudah melakukan voting.');
    }

    $kandidats = Kandidat::all(); // Ambil semua kandidat
    return view('vote.kandidat', compact('voter', 'kandidats'));
}
    
public function submitVote(Request $request, Voter $voter)
{
    // Pastikan voter yang dimaksud ada
    if (!$voter) {
        return redirect()->route('vote.pin')->withErrors(['error' => 'Voter tidak ditemukan.']);
    }

    $request->validate([
        'kandidat_id' => 'required|exists:kandidats,id',
    ]);

    // Update data voter
    $voter->update([
        'kandidat_id' => $request->kandidat_id,
        'status' => 1,
    ]);

    // Ambil sesi voting dari voter
    $session = $voter->session; 

    // Ambil nama field (is_used_1 / is_used_2) yang digunakan
    $usedField = session('used_session_field'); 
    
    // Update hanya field yang digunakan sesuai dengan sesi
    if ($usedField === 'is_used_1') {
        $session->update([
            'is_used_1' => true,
        ]);
    } elseif ($usedField === 'is_used_2') {
        $session->update([
            'is_used_2' => true,
        ]);
    }

    // Simpan perubahan sesi
    $session->save();

    return redirect()->route('vote.success', ['session' => $voter->vote_session_id]);
}


    public function showSuccess(VoteSession $session)
    {
        return view('vote.success');
    }



}

