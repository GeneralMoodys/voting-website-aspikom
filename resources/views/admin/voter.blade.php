<x-layouts.admin>
    <x-slot name="title">Dashboard</x-slot>

    <h1 class="text-xl text-white font-semibold mb-4">Data Voter</h1>

    {{-- Tabs Sesi --}}
    <div class="mb-6 border-b border-gray-200 dark:border-gray-700">
        <ul class="flex flex-wrap -mb-px text-sm font-medium text-center" role="tablist">
            @foreach([1, 2] as $s)
                <li class="me-2">
                    <a href="{{ route('admin.voters', ['sesi' => $s, 'search' => request('search')]) }}"
                       class="inline-block px-4 py-2 rounded-t-lg border-b-2 {{ $sesi == $s ? 'border-blue-500 text-blue-600' : 'border-transparent text-gray-500 hover:text-gray-600 hover:border-gray-300' }}">
                        Sesi {{ $s }}
                    </a>
                </li>
            @endforeach
        </ul>
    </div>

    {{-- Search Form --}}
    <form method="GET" action="{{ route('admin.voters') }}" class="mb-4">
        <input type="hidden" name="sesi" value="{{ $sesi }}">
        <div class="flex items-center space-x-2">
            <input type="text" name="search" value="{{ $search }}" placeholder="Cari nama/universitas/prodi..."
                   class="w-full md:w-1/3 px-4 py-2 border rounded-md focus:outline-none focus:ring focus:border-blue-300">
            <button type="submit" class="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700">Cari</button>
        </div>
    </form>

    {{-- Table --}}
    <div class="overflow-x-auto">
        <table class="min-w-full bg-white text-sm text-left text-gray-700 rounded-lg shadow-md overflow-hidden">
            <thead class="bg-gray-100 text-gray-700">
                <tr>
                    <th class="px-4 py-2 bg-gray-100 font-semibold">Nama</th>
                    <th class="px-4 py-2 bg-gray-100 font-semibold">Universitas</th>
                    <th class="px-4 py-2 bg-gray-100 font-semibold">Prodi</th>
                    <th class="px-4 py-2 bg-gray-100 font-semibold">Sesi</th>
                    <th class="px-4 py-2 bg-gray-100 font-semibold">Status</th>
                    <th class="px-4 py-2 bg-gray-100 font-semibold">Kandidat Dipilih</th>
                    <th class="px-4 py-2 bg-gray-100 font-semibold">Aksi</th>
                </tr>
            </thead>
            <tbody class="text-gray-800">
                @forelse($voters as $voter)
                    <tr class="border-b hover:bg-gray-50 transition">
                        <td class="px-4 py-2">{{ $voter->nama }}</td>
                        <td class="px-4 py-2">{{ $voter->session->universitas ?? '-' }}</td>
                        <td class="px-4 py-2">{{ $voter->session->prodi ?? '-' }}</td>
                        <td class="px-4 py-2">{{ $voter->sesi_ke }}</td>
                        <td class="px-4 py-2">{{ $voter->status == 1 ? 'Sudah Vote' : 'Belum Vote' }}</td>
                        <td class="px-4 py-2">{{ $voter->kandidat->nama ?? '-' }}</td>
                        <td class="px-4 py-2 space-y-1">
                            <a href="{{ asset('storage/' . $voter->bukti_anggota) }}" class="text-blue-600 hover:underline block">📄 Lihat Bukti</a>
                            <a href="{{ asset('storage/' . $voter->surat_kuasa) }}" class="text-blue-600 hover:underline block">📝 Lihat Surat Kuasa</a>
                            <form action="{{ route('admin.voters.destroy', $voter->id) }}" method="POST" onsubmit="return confirm('Yakin ingin menghapus voter ini?')">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="text-red-600 hover:underline block">🗑️ Hapus</button>
                            </form>
                        </td>


                        
                        
                    </tr>
                    
                @empty
                    <tr>
                        <td colspan="7" class="text-center text-gray-500 py-4">Tidak ada data pada sesi ini.</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>

    {{-- Pagination --}}
    <div class="mt-4">
        {{ $voters->links() }}
    </div>

</x-layouts.admin>
