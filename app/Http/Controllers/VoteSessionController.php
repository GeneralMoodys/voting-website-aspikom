<?php

namespace App\Http\Controllers;

use App\Models\VoteSession;
use App\Models\kandidat;
use App\Models\Voter;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\KandidatController;


class VoteSessionController extends Controller
{
    public function index()
    {
        // Total sesi 1
        $totalSesi1 = DB::table('db_vote')->whereNotNull('pin_sesi_1')->count();
        $usedSesi1 = DB::table('voters')
                        ->join('db_vote', 'voters.vote_session_id', '=', 'db_vote.id')
                        ->where('voters.status', 1) // yang sudah memilih
                        ->whereNotNull('db_vote.pin_sesi_1')
                        ->count();
        $unusedSesi1 = $totalSesi1 - $usedSesi1;

        // Total sesi 2
        $totalSesi2 = DB::table('db_vote')->whereNotNull('pin_sesi_2')->count();
        $usedSesi2 = DB::table('voters')
                        ->join('db_vote', 'voters.vote_session_id', '=', 'db_vote.id')
                        ->where('voters.status', 1) // yang sudah memilih
                        ->whereNotNull('db_vote.pin_sesi_2')
                        ->count();
        $unusedSesi2 = $totalSesi2 - $usedSesi2;

        // Statistik suara kandidat
        $kandidatVotes = DB::table('voters')
            ->select('kandidat_id', DB::raw('count(*) as total_votes'))
            ->groupBy('kandidat_id')
            ->get();

        // Menyiapkan data untuk chart
        $labels = [];
        $data = [];
        foreach ($kandidatVotes as $vote) {
            $kandidat = Kandidat::find($vote->kandidat_id);
            if ($kandidat) {
                $labels[] = $kandidat->nama;
                $data[] = $vote->total_votes;
            }
        }

        return view('admin.vote_sessions', [
            'totalSesi1' => $totalSesi1,
            'usedSesi1' => $usedSesi1,
            'unusedSesi1' => $unusedSesi1,
            'totalSesi2' => $totalSesi2,
            'usedSesi2' => $usedSesi2,
            'unusedSesi2' => $unusedSesi2,
            'labels' => $labels,
            'data' => $data,
        ]);
    }
}
