{{-- resources/views/vote/form.blade.php --}}
<x-app-layout>
    <x-slot name="header">
        <h2 class="sr-only">Form Pemilih</h2> {{-- Disembunyikan karena heading utama di konten --}}
    </x-slot>

    <div class="min-h-screen flex items-center justify-center bg-[#f9fafb] dark:bg-gray-900 px-4">
        <div class="bg-white dark:bg-gray-800 shadow-xl rounded-lg p-8 w-full max-w-xl">
            <h1 class="text-2xl font-bold text-gray-800 dark:text-white mb-2">Lengkapi Data Pemilih 📝</h1>
            <p class="text-sm text-gray-600 dark:text-gray-300 mb-6">
                Harap isi data dengan benar dan unggah dokumen yang diminta sebelum melanjutkan ke proses voting.
            </p>

            <form method="POST" action="{{ route('vote.submitVoterData') }}" enctype="multipart/form-data">
                @csrf
            
                <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" id="nama" name="nama" class="form-control" value="{{ old('nama', $voter->nama ?? '') }}">
                </div>
            
                <div class="form-group">
                    <label for="bukti_anggota">Bukti Anggota</label>
                    <input type="file" id="bukti_anggota" name="bukti_anggota" class="form-control">
                </div>
            
                <div class="form-group">
                    <label for="surat_kuasa">Surat Kuasa</label>
                    <input type="file" id="surat_kuasa" name="surat_kuasa" class="form-control">
                </div>
            
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            
        </div>
    </div>
</x-app-layout>
