{{-- resources/views/admin/kandidats/index.blade.php --}}
<x-layouts.admin>
    <x-slot name="title">Daftar Kandidat</x-slot>

    <h2 class="text-2xl font-bold text-gray-800 dark:text-white mb-6">Dashboard Admin</h2>

    <div class="py-8 max-w-6xl mx-auto sm:px-6 lg:px-8">
        <div class="mb-4 text-right">
            <a href="{{ route('admin.kandidats.create') }}" class="bg-blue-600 hover:bg-blue-700 text-white py-2 px-4 rounded shadow">
                + Tambah Kandidat
            </a>
        </div>
        <div x-data="{ open: false, selectedId: null, selectedName: '' }" x-cloak>
            <div class="bg-white dark:bg-gray-800 shadow rounded-lg p-6">
                @if($kandidats->count())
                    <table class="min-w-full divide-y divide-gray-200 dark:divide-gray-700">
                        <thead>
                            <tr>
                                <th class="px-4 py-2 text-left text-sm font-semibold text-gray-700 dark:text-gray-300">Foto</th>
                                <th class="px-4 py-2 text-left text-sm font-semibold text-gray-700 dark:text-gray-300">Nama</th>
                                <th class="px-4 py-2 text-left text-sm font-semibold text-gray-700 dark:text-gray-300">Profil</th>
                                <th class="px-4 py-2 text-right text-sm font-semibold text-gray-700 dark:text-gray-300">Aksi</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-200 dark:divide-gray-700">
                            @foreach($kandidats as $kandidat)
                                <tr>
                                    <td class="px-4 py-2">
                                        @if($kandidat->foto)
                                            <img src="{{ asset('storage/' . $kandidat->foto) }}" alt="{{ $kandidat->nama }}" class="w-12 h-12 object-cover rounded-full">
                                        @else
                                            <span class="text-gray-500 text-sm">-</span>
                                        @endif
                                    </td>
                                    <td class="px-4 py-2 text-gray-800 dark:text-white">{{ $kandidat->nama }}</td>
                                    <td class="px-4 py-2 text-gray-600 dark:text-gray-300">{{ Str::limit($kandidat->profil, 100) }}</td>
                                    <td class="px-4 py-2 text-right">
                                        <a href="{{ route('admin.kandidats.edit', $kandidat) }}" class="text-blue-600 hover:underline mr-2">Edit</a>
                                        <form action="{{ route('admin.kandidats.destroy', $kandidat) }}" method="POST" class="inline" onsubmit="return confirm('Yakin ingin hapus?')">
                                            @csrf
                                            @method('DELETE')
                                            <!-- Tombol Hapus -->
                                                <button
                                                type="button"
                                                @click="open = true; selectedName = '{{ $kandidat->nama }}'; selectedId = {{ $kandidat->id }}"
                                                class="text-red-600 hover:underline"
                                                >
                                                Hapus
                                                </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                @else
                    <p class="text-gray-500 dark:text-gray-300">Belum ada data kandidat.</p>
                @endif
        
            <!-- Modal Hapus -->
            <!-- Modal Hapus -->
<div x-show="open" x-cloak class="fixed z-50 inset-0 flex items-center justify-center bg-black bg-opacity-50">
    <div class="bg-white dark:bg-gray-800 rounded-lg p-6 w-full max-w-md">
        <h2 class="text-xl font-bold mb-4 text-gray-800 dark:text-white">Konfirmasi Hapus</h2>
        <p class="mb-4 text-gray-700 dark:text-gray-300">
            Yakin ingin menghapus kandidat <span class="font-semibold" x-text="selectedName"></span>?
        </p>
        <form :action="`{{ route('admin.kandidats.destroy', '') }}/${selectedId}`" method="POST" class="flex justify-end space-x-3">
            @csrf
            @method('DELETE')
            <button type="button" @click="open = false" class="px-4 py-2 bg-gray-300 dark:bg-gray-700 rounded hover:bg-gray-400 dark:hover:bg-gray-600">Batal</button>
            <button type="submit" class="px-4 py-2 bg-red-600 text-white rounded hover:bg-red-700">Hapus</button>
        </form>
    </div>
</div>

        </div>
        
    

</x-layouts.admin>
