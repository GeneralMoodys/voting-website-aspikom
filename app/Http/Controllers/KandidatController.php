<?php

namespace App\Http\Controllers;

use App\Models\Kandidat;
use Illuminate\Http\Request;
use App\Models\Voter;
use Illuminate\Support\Facades\Storage;

class KandidatController extends Controller
{

    public function index()
{
    if (!session('admin_logged_in')) {
        return redirect()->route('admin.login')->with('error', 'Silakan login sebagai admin.');
    }

    $kandidats = Kandidat::withCount('voters')->get();
    return view('admin.kandidats.index', compact('kandidats'));
}

public function create()
{
    if (!session('admin_logged_in')) {
        return redirect()->route('admin.login')->with('error', 'Silakan login sebagai admin.');
    }

    return view('admin.kandidats.create');
}

public function store(Request $request)
{
    if (!session('admin_logged_in')) {
        return redirect()->route('admin.login')->with('error', 'Silakan login sebagai admin.');
    }

    $request->validate([
        'nama' => 'required|string|max:255',
        'foto' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        'profil' => 'nullable|string',
    ]);

    $path = null;
    if ($request->hasFile('foto')) {
        $path = $request->file('foto')->store('kandidat_photos', 'public');
    }

    Kandidat::create([
        'nama' => $request->nama,
        'foto' => $path,
        'profil' => $request->profil,
    ]);

    return redirect()->route('admin.kandidats.index')->with('success', 'Kandidat berhasil ditambahkan.');
}

public function edit($id)
{
    $kandidat = Kandidat::findOrFail($id);
    return view('admin.kandidats.edit', compact('kandidat'));
}
    
public function update(Request $request, $id)
{
    // Validasi input
    $request->validate([
        'nama' => 'required|string|max:255',
        'foto' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        'profil' => 'nullable|string',
    ]);

    // Cari kandidat berdasarkan ID
    $kandidat = Kandidat::findOrFail($id);

    // Tentukan path foto jika ada file yang diupload
    $path = $kandidat->foto;
    if ($request->hasFile('foto')) {
        // Hapus foto lama jika ada
        if ($kandidat->foto && Storage::exists('public/' . $kandidat->foto)) {
            Storage::delete('public/' . $kandidat->foto);
        }

        // Upload foto baru
        $path = $request->file('foto')->store('kandidat_photos', 'public');
    }

    // Update data kandidat
    $kandidat->update([
        'nama' => $request->nama,
        'foto' => $path,
        'profil' => $request->profil,
    ]);

    // Redirect dengan pesan sukses
    return redirect()->route('admin.kandidats.index')->with('success', 'Kandidat berhasil diperbarui.');
}

public function destroy($id)
{
    // Cari kandidat berdasarkan ID
    $kandidat = Kandidat::findOrFail($id);

    // Hapus foto kandidat jika ada
    if ($kandidat->foto && Storage::exists('public/' . $kandidat->foto)) {
        Storage::delete('public/' . $kandidat->foto);
    }

    // Hapus kandidat dari database
    $kandidat->delete();

    // Redirect kembali ke halaman index dengan pesan sukses
    return redirect()->route('admin.kandidats.index')->with('success', 'Kandidat berhasil dihapus.');
}


}
