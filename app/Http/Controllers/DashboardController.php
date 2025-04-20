<?php

namespace App\Http\Controllers;

use App\Models\VoteSession;
use Illuminate\Http\Request;
use App\Models\Kandidat;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    //
    public function index()
    {
          // Data kandidat + jumlah suara (relasi voters)
    $kandidats = Kandidat::withCount('voters')->get();
    $labels = $kandidats->pluck('nama'); // ganti dengan field nama yang sesuai
    $data = $kandidats->pluck('voters_count');

    // Statistik pengguna voting dari tabel db_vote
    $totalSesi1 = DB::table('db_vote')->whereNotNull('pin_sesi_1')->count();
    $usedSesi1 = DB::table('db_vote')->where('is_used_1', 1)->count();
    $unusedSesi1 = $totalSesi1 - $usedSesi1;

    $totalSesi2 = DB::table('db_vote')->whereNotNull('pin_sesi_2')->count();
    $usedSesi2 = DB::table('db_vote')->where('is_used_2', 1)->count();
    $unusedSesi2 = $totalSesi2 - $usedSesi2;

    return view('admin.dashboard', compact(
        'labels', 'data',
        'totalSesi1', 'usedSesi1', 'unusedSesi1',
        'totalSesi2', 'usedSesi2', 'unusedSesi2'
    ));
    }
    
    public function statistik()
    {
        if (!session('admin_logged_in')) {
            return redirect()->route('admin.login')->with('error', 'Silakan login sebagai admin.');
        }
    
        $data = VoteSession::with('kandidats.voters')->get();
        return view('admin.statistik', compact('data'));
    }
    
}
