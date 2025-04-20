<x-layouts.admin>
    <x-slot name="title">Tambah Kandidat</x-slot>

    <h2 class="text-2xl font-bold text-gray-800 dark:text-white mb-6">Tambah Kandidat Baru</h2>

    <div class="max-w-2xl mx-auto bg-white dark:bg-gray-800 p-6 rounded shadow">
        <form action="{{ route('admin.kandidats.store') }}" method="POST" enctype="multipart/form-data">
            @csrf

            <!-- Nama -->
            <div class="mb-4">
                <label for="nama" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Nama</label>
                <input type="text" name="nama" id="nama" value="{{ old('nama') }}" class="mt-1 block w-full rounded-md shadow-sm border-gray-300 dark:border-gray-600 dark:bg-gray-700 dark:text-white" required>
                @error('nama')
                    <p class="text-sm text-red-500 mt-1">{{ $message }}</p>
                @enderror
            </div>

            <!-- Profil -->
            <div class="mb-4">
                <label for="profil" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Profil</label>
                <textarea name="profil" id="profil" rows="4" class="mt-1 block w-full rounded-md shadow-sm border-gray-300 dark:border-gray-600 dark:bg-gray-700 dark:text-white">{{ old('profil') }}</textarea>
                @error('profil')
                    <p class="text-sm text-red-500 mt-1">{{ $message }}</p>
                @enderror
            </div>

            <!-- Foto -->
            <div class="mb-4">
                <label for="foto" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Foto</label>
                <input type="file" name="foto" id="foto" class="mt-1 block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded file:border-0 file:text-sm file:font-semibold file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100 dark:file:bg-gray-700 dark:file:text-white">
                @error('foto')
                    <p class="text-sm text-red-500 mt-1">{{ $message }}</p>
                @enderror
            </div>

            <!-- Tombol Simpan -->
            <div class="text-right">
                <a href="{{ route('admin.kandidats.index') }}" class="inline-block px-4 py-2 bg-gray-300 dark:bg-gray-700 text-gray-700 dark:text-white rounded hover:bg-gray-400 dark:hover:bg-gray-600">Batal</a>
                <button type="submit" class="ml-2 px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700">Simpan</button>
            </div>
        </form>
    </div>
</x-layouts.admin>
