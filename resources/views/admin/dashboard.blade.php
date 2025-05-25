<x-layouts.admin>
    <x-slot name="title">Dashboard</x-slot>

    @if (session('success'))
        <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded mb-6">
            {{ session('success') }}
        </div>
    @endif
     {{-- Tombol Global Toggle --}}
     <h2 class="text-2xl font-bold text-gray-800 dark:text-white mb-6 mt-10">Kontrol Sesi Voting</h2>
     <form action="{{ route('vote.toggleAll') }}" method="POST" onsubmit="return confirm('Yakin ingin mengubah status semua sesi?')">
        @csrf
        <button type="submit"
            class="mb-4 font-semibold py-2 px-4 rounded shadow
                {{ $isAllActive ? 'bg-red-600 hover:bg-red-700 text-white' : 'bg-green-600 hover:bg-green-700 text-white' }}">
            {{ $isAllActive ? 'Nonaktifkan Semua Sesi' : 'Aktifkan Semua Sesi' }}
        </button>
    </form>
    

    {{-- Statistik Voting Sesi --}}
    <h2 class="text-2xl font-bold text-gray-800 dark:text-white mb-6">Statistik Pengguna Voting</h2>
    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div class="bg-blue-100 dark:bg-blue-900 text-blue-800 dark:text-blue-200 p-5 rounded-lg shadow">
            <h3 class="font-semibold text-lg mb-2">Sesi 1</h3>
            <p>Total Voter: <strong>{{ $totalSesi1 }}</strong></p>
            <p>Sudah Memilih: <strong>{{ $usedSesi1 }}</strong></p>
            <p>Belum Memilih: <strong>{{ $unusedSesi1 }}</strong></p>
        </div>
        <div class="bg-green-100 dark:bg-green-900 text-green-800 dark:text-green-200 p-5 rounded-lg shadow">
            <h3 class="font-semibold text-lg mb-2">Sesi 2</h3>
            <p>Total Voter: <strong>{{ $totalSesi2 }}</strong></p>
            <p>Sudah Memilih: <strong>{{ $usedSesi2 }}</strong></p>
            <p>Belum Memilih: <strong>{{ $unusedSesi2 }}</strong></p>
        </div>
    </div>

   


    {{-- Chart JS Script --}}
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</x-layouts.admin>
