
{{-- resources/views/admin/dashboard.blade.php --}}
<x-layouts.admin>
    <x-slot name="title">Dashboard Admin</x-slot>

   {{-- Tetap tampilkan grafik kandidat --}}
<h2 class="text-2xl font-bold text-gray-800 dark:text-white mb-6">Statistik Suara Kandidat</h2>
<div class="bg-white dark:bg-gray-800 p-6 rounded shadow mb-8">
    <canvas id="voteChart" height="120"></canvas>
</div>

{{-- Tambahkan statistik sesi voting --}}
<h2 class="text-2xl font-bold text-gray-800 dark:text-white mb-6">Statistik Pengguna Voting</h2>
<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
    <div class="bg-blue-100 dark:bg-blue-900 text-blue-800 dark:text-blue-200 p-5 rounded-lg shadow">
        <h3 class="font-semibold">Sesi 1</h3>
        <p>Total: {{ $totalSesi1 }}</p>
        <p>Sudah Memilih: {{ $usedSesi1 }}</p>
        <p>Belum: {{ $unusedSesi1 }}</p>
    </div>
    <div class="bg-green-100 dark:bg-green-900 text-green-800 dark:text-green-200 p-5 rounded-lg shadow">
        <h3 class="font-semibold">Sesi 2</h3>
        <p>Total: {{ $totalSesi2 }}</p>
        <p>Sudah Memilih: {{ $usedSesi2 }}</p>
        <p>Belum: {{ $unusedSesi2 }}</p>
    </div>
</div>

</x-layouts.admin>
