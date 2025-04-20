<x-layouts.admin>
    <x-slot name="title">Dashboard</x-slot>

   {{-- Grafik Kandidat --}}
   <h2 class="text-2xl font-bold text-gray-800 dark:text-white mb-6">Statistik Suara Kandidat</h2>
   <div class="bg-white dark:bg-gray-800 p-6 rounded shadow mb-8">
       <canvas id="voteChart" height="120"></canvas>
   </div>

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
   <script>
       const ctx = document.getElementById('voteChart').getContext('2d');
       const voteChart = new Chart(ctx, {
           type: 'bar',
           data: {
               labels: {!! json_encode($labels) !!},
               datasets: [{
                   label: 'Jumlah Suara',
                   data: {!! json_encode($data) !!},
                   backgroundColor: '#3b82f6'
               }]
           },
           options: {
               responsive: true,
               scales: {
                   y: {
                       beginAtZero: true,
                       ticks: {
                           precision: 0
                       }
                   }
               }
           }
       });
   </script>
</x-layouts.admin>
