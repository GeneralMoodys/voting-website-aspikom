{{-- resources/views/kandidats/edit.blade.php --}}
<x-layouts.admin>
    <x-slot name="title">Edit Kandidat</x-slot>

    <div class="max-w-xl mx-auto py-10">
        <h2 class="text-2xl font-bold text-gray-800 dark:text-white mb-6">Edit Kandidat</h2>

        <form action="{{ route('admin.kandidats.update', $kandidat) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            {{-- Nama --}}
            <div class="mb-4">
                <label for="nama" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Nama</label>
                <input type="text" name="nama" id="nama" value="{{ old('nama', $kandidat->nama) }}"
                    class="mt-1 block w-full rounded-md border-gray-300 dark:border-gray-600 shadow-sm dark:bg-gray-700 dark:text-white">
                @error('nama') <p class="text-red-500 text-sm">{{ $message }}</p> @enderror
            </div>

            {{-- Profil --}}
            <div class="mb-4">
                <label for="profil" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Profil</label>
                <textarea name="profil" id="profil" rows="4"
                    class="mt-1 block w-full rounded-md border-gray-300 dark:border-gray-600 shadow-sm dark:bg-gray-700 dark:text-white">{{ old('profil', $kandidat->profil) }}</textarea>
                @error('profil') <p class="text-red-500 text-sm">{{ $message }}</p> @enderror
            </div>

            {{-- Foto --}}
            <div class="mb-4">
                <label class="block text-sm font-medium text-gray-700 dark:text-gray-300">Foto Saat Ini</label>
                @if ($kandidat->foto)
                    <img src="{{ asset('storage/' . $kandidat->foto) }}" class="w-32 h-32 rounded-full object-cover mt-2 mb-4">
                @else
                    <p class="text-gray-500 dark:text-gray-400 italic">Belum ada foto</p>
                @endif

                <label for="foto" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Ganti Foto</label>
                <input type="file" name="foto" id="foto"
                    class="mt-1 block w-full text-sm text-gray-700 dark:text-white bg-white dark:bg-gray-800 border border-gray-300 dark:border-gray-600 rounded-md shadow-sm">
                @error('foto') <p class="text-red-500 text-sm">{{ $message }}</p> @enderror
            </div>

            <div class="mt-6">
                <button type="submit"
                    class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded shadow">
                    Update Kandidat
                </button>
                <a href="{{ route('admin.kandidats.index') }}"
                    class="ml-2 text-gray-600 dark:text-gray-300 hover:underline">Batal</a>
            </div>
        </form>
    </div>
</x-layouts.admin>
