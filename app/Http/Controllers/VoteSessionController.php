<?php

namespace App\Http\Controllers;

use App\Models\Kandidat;
use App\Models\VoteSession;
use App\Models\Voter;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class VoteSessionController extends Controller
{
    public function sesi1()
    {
        // Mengambil hasil voting untuk sesi 1
        $kandidatVotesSesi1 = DB::table('voters')
            ->select('kandidat_id', DB::raw('count(*) as total_votes'))
            ->join('db_vote', 'voters.vote_session_id', '=', 'db_vote.id')
            ->whereNotNull('db_vote.pin_sesi_1')
            ->where('voters.sesi_ke', 1) // 🛠️ Tambahkan ini
            ->groupBy('kandidat_id')
            ->get();


        $labelsSesi1 = [];
        $dataSesi1 = [];
        foreach ($kandidatVotesSesi1 as $vote) {
            $kandidat = Kandidat::find($vote->kandidat_id);
            if ($kandidat) {
                $labelsSesi1[] = $kandidat->nama;
                $dataSesi1[] = $vote->total_votes;
            }
        }

        // Menampilkan hasil sesi 1
        return view('admin.vote_sessions_sesi1', [
            'labelsSesi1' => $labelsSesi1,
            'dataSesi1' => $dataSesi1,
            'totalSesi1' => $kandidatVotesSesi1->count()
        ]);
    }

    public function sesi2()
    {
        $kandidatVotesSesi2 = DB::table('voters')
            ->select('kandidat_id', DB::raw('count(*) as total_votes'))
            ->where('sesi_ke', 2)
            ->groupBy('kandidat_id')
            ->get();
    
        $labelsSesi2 = [];
        $dataSesi2 = [];
        foreach ($kandidatVotesSesi2 as $vote) {
            $kandidat = Kandidat::find($vote->kandidat_id);
            if ($kandidat) {
                $labelsSesi2[] = $kandidat->nama;
                $dataSesi2[] = $vote->total_votes;
            }
        }
    
        return view('admin.vote_sessions_sesi2', [
            'labelsSesi2' => $labelsSesi2,
            'dataSesi2' => $dataSesi2,
            'totalSesi2' => $kandidatVotesSesi2->sum('total_votes')
        ]);
    }
    
    public function toggle($id)
    {
        $session = \App\Models\VoteSession::findOrFail($id);
        $session->is_active = !$session->is_active; // Ganti status aktif/tidak
        $session->save();

        return back()->with('success', 'Status sesi berhasil diubah.');
    }

    public function toggleAll()
{
    // Ambil status aktif dari sesi pertama sebagai referensi
    $currentStatus = VoteSession::first()?->is_active ?? 0;

    // Toggle ke kebalikannya
    $newStatus = !$currentStatus;

    VoteSession::query()->update(['is_active' => $newStatus]);

    return back()->with('success', 'Semua sesi berhasil di-' . ($newStatus ? 'aktifkan' : 'nonaktifkan') . '.');
}

    
}
