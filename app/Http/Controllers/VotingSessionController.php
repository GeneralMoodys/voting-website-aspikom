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

    // Cek apakah PIN cocok dengan sesi 1 atau sesi 2
    $session = VoteSession::where('pin_sesi_1', $pin)
        ->orWhere('pin_sesi_2', $pin)
        ->first();

    if (!$session) {
        return back()->withErrors(['pin' => 'PIN tidak ditemukan atau belum aktif.']);
    }

    // Tentukan apakah ini sesi 1 atau sesi 2
    $isSesi1 = $session->pin_sesi_1 === $pin;
    $usedSessionField = $isSesi1 ? 'is_used_1' : 'is_used_2';

    // Cek apakah sesi sedang aktif
    if (!$session->is_active) {
        return back()->withErrors(['pin' => 'Sesi voting ini sedang tidak aktif.']);
    }

    // Cek apakah PIN sudah digunakan
    if ($session->$usedSessionField) {
        return back()->withErrors(['pin' => 'PIN sesi ' . ($isSesi1 ? '1' : '2') . ' sudah digunakan.']);
    }

    // Kalau sesi 1: redirect ke form
    if ($isSesi1) {
        session([
            'vote_session_id' => $session->id,
            'used_session_field' => $usedSessionField,
            'universitas' => $session->universitas,
            'prodi' => $session->prodi,
        ]);

        return redirect()->route('vote.form');
    }

    // Kalau sesi 2: clone voter dari sesi 1
    $voterSesi1 = Voter::where('vote_session_id', $session->id)->first();

    if (!$voterSesi1) {
        return back()->withErrors(['pin' => 'Data sesi 1 belum ditemukan.']);
    }

    $voterBaru = Voter::create([
        'nama' => $voterSesi1->nama,
        'vote_session_id' => $session->id,
        'bukti_anggota' => $voterSesi1->bukti_anggota,
        'surat_kuasa' => $voterSesi1->surat_kuasa,
        'sesi_ke' => 2,
    ]);

    session([
        'vote_session_id' => $session->id,
        'used_session_field' => $usedSessionField,
        'universitas' => $session->universitas,
        'prodi' => $session->prodi,
    ]);

    return redirect()->route('vote.kandidat', ['voter' => $voterBaru->id]);
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
        'sesi_ke' => 1, // <== karena ini pasti sesi 1
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
    
    public function showVoters(Request $request)
{
    $search = $request->input('search');
    $sesi = $request->input('sesi', 1); // default sesi 1

    $voters = Voter::with(['session', 'kandidat'])
        ->where('sesi_ke', $sesi)
        ->when($search, function ($query, $search) {
            $query->where('nama', 'like', "%{$search}%")
                ->orWhereHas('session', function ($q) use ($search) {
                    $q->where('universitas', 'like', "%{$search}%")
                      ->orWhere('prodi', 'like', "%{$search}%");
                });
        })
        ->orderByDesc('created_at')
        ->paginate(10)
        ->withQueryString(); // agar query tetap saat pagination

    return view('admin.voter', compact('voters', 'search', 'sesi'));
}



}

