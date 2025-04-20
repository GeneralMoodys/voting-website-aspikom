<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Admin;
use Illuminate\Support\Facades\Hash;

class AdminLoginController extends Controller
{
    public function showLoginForm()
    {
        return view('admin.login');
    }

    public function login(Request $request)
{
    $request->validate([
        'username' => 'required|string',
        'password' => 'required|string',
    ]);

    $admin = Admin::where('username', $request->username)->first();

    
    if (!$admin || !Hash::check($request->password, $admin->password)) {
        return back()->with('error', 'Username atau Password salah');
    }

    session(['admin_logged_in' => true]);

    return redirect()->route('admin.dashboard');
}


    
}
