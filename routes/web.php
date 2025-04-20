<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DBVoteImportController;
use App\Http\Controllers\VoteSessionController;
use App\Http\Controllers\KandidatController;
use App\Http\Controllers\VotingSessionController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AdminLoginController;

/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
*/
Route::prefix('admin')->name('admin.')->group(function () {
    // Auth
    Route::get('/login', [AdminLoginController::class, 'showLoginForm'])->name('login');
    Route::post('/login', [AdminLoginController::class, 'login'])->name('login.check');
    Route::get('/logout', function () {
        session()->forget('admin_logged_in');
        return redirect()->route('admin.login')->with('success', 'Berhasil logout');
    })->name('logout');

    // Dashboard
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('vote-sessions', [VoteSessionController::class, 'index'])->name('vote.sessions');

    // Kandidat CRUD (admin.kandidats.*)
    Route::resource('kandidats', KandidatController::class)->except(['show']);
});

/*
|--------------------------------------------------------------------------
| DB Vote Import Routes
|--------------------------------------------------------------------------
*/
Route::get('/import-db-vote', [DBVoteImportController::class, 'index'])->name('import.db_vote');
Route::post('/import-db-vote', [DBVoteImportController::class, 'import'])->name('import.db_vote.post');

/*
|--------------------------------------------------------------------------
| Public Voting Routes (No Login Required)
|--------------------------------------------------------------------------
*/
Route::get('/vote/pin', [VotingSessionController::class, 'showPinForm'])->name('vote.pin');
Route::post('/vote/check-pin', [VotingSessionController::class, 'checkPin'])->name('vote.checkPin');
Route::get('/vote/form', [VotingSessionController::class, 'showVoteForm'])->name('vote.form');
Route::post('/vote/submit', [VotingSessionController::class, 'submitVoterData'])->name('vote.submitVote');
Route::post('/vote/submit', [VotingSessionController::class, 'submitVoterData'])->name('vote.submitVoterData');
Route::get('/vote/kandidat/{voter}', [VotingSessionController::class, 'showKandidatForm'])->name('vote.kandidat');
Route::post('/vote/{voter}', [VotingSessionController::class, 'submitVote'])->name('vote.submitVote');
Route::get('/vote/success/{session}', [VotingSessionController::class, 'showSuccess'])->name('vote.success');
/*
|--------------------------------------------------------------------------
| Profile Placeholder
|--------------------------------------------------------------------------
*/
Route::get('/profile', function () {
    return 'Halaman Profile belum dibuat.';
})->name('profile');
