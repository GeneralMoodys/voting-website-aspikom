{{-- resources/views/vote/form.blade.php --}}
<x-app-layout>
    <x-slot name="header">
        <h2 class="sr-only">Form Pemilih</h2>
    </x-slot>

    <div class="min-h-screen flex items-center justify-center bg-[#f9fafb] dark:bg-gray-900 px-4">
        <div class="bg-white dark:bg-gray-800 shadow-xl rounded-lg p-8 w-full max-w-xl">

            {{-- Title --}}
            <div class="mb-6">
                <h1 class="text-2xl font-bold text-gray-800 dark:text-white">Lengkapi Data Pemilih 📝</h1>
                <p class="text-sm text-gray-600 dark:text-gray-300 mt-1">
                    Harap isi data dengan benar dan unggah dokumen yang diminta sebelum melanjutkan ke proses voting.
                </p>
            </div>
            {{-- Tampilkan Data Universitas dan Prodi --}}
            @if(session('universitas') && session('prodi'))
                <div class="alert alert-info">
                    Universitas: <strong>{{ session('universitas') }}</strong> <br>
                    Prodi: <strong>{{ session('prodi') }}</strong>
                </div>
            @endif

            {{-- Form --}}
            <form method="POST" action="{{ route('vote.submitVoterData') }}" enctype="multipart/form-data" class="space-y-5">
                @csrf
                 
                {{-- Nama --}}
                <div>
                    <label for="nama" class="block text-sm font-medium text-gray-700 dark:text-gray-200">Nama</label>
                    <input type="text" id="nama" name="nama"
                        class="mt-1 block w-full px-4 py-2 border rounded-md shadow-sm focus:outline-none focus:ring focus:border-blue-300 dark:bg-gray-700 dark:border-gray-600 dark:text-white"
                        value="{{ old('nama', $voter->nama ?? '') }}" required>
                </div>

                {{-- Bukti Anggota --}}
                <div>
                    <label for="bukti_anggota" class="block text-sm font-medium text-gray-700 dark:text-gray-200">Bukti Anggota</label>
                    <input type="file" id="bukti_anggota" name="bukti_anggota"
                        class="mt-1 block w-full text-sm text-gray-900 bg-gray-50 border border-gray-300 rounded-md cursor-pointer dark:text-gray-400 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400"
                        required>
                </div>

                {{-- Surat Kuasa --}}
                <div>
                    <label for="surat_kuasa" class="block text-sm font-medium text-gray-700 dark:text-gray-200">Surat Kuasa</label>
                    <input type="file" id="surat_kuasa" name="surat_kuasa"
                        class="mt-1 block w-full text-sm text-gray-900 bg-gray-50 border border-gray-300 rounded-md cursor-pointer dark:text-gray-400 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400">
                </div>

                {{-- Submit Button --}}
                <div>
                    <button type="submit"
                        class="w-full bg-blue-600 text-white font-semibold py-2 px-4 rounded-lg hover:bg-blue-700 transition-all duration-150">
                        Kirim Data
                    </button>
                </div>
            </form>
        </div>
    </div>
</x-app-layout>
