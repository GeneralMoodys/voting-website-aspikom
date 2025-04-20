<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\DBVoteImport;

class DBVoteImportController extends Controller
{
    public function index()
    {
        return view('import.db_vote');
    }

    public function import(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,xls,csv',
        ]);

        Excel::import(new DBVoteImport, $request->file('file'));

        return redirect()->back()->with('success', 'Data berhasil diimport ke database!');
    }
}

