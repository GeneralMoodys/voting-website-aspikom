<?php

// app/Http/Controllers/AdminController.php

namespace App\Http\Controllers;

use App\Models\Kandidat;
use App\Models\VoteSession;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function dashboard()
    {
        $sessions = VoteSession::with(['kandidats.voters'])->get();

        return view('admin.dashboard', [
            'data' => $sessions
        ]);
    }

    public function statistik()
    {
        $data = VoteSession::with('kandidats.voters')->get();
        return view('admin.statistik', compact('data'));
    }

}

