<x-layouts.admin>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <x-slot name="title">Dashboard</x-slot>

    {{-- Container --}}
    <div class="container mt-4">

        {{-- Heading --}}
        <div class="mb-4">
            <h2 class="text-2xl font-semibold text-gray-800">Hasil Voting Sesi 2</h2>
            <p class="text-sm text-gray-500">Berikut adalah hasil perolehan suara masing-masing kandidat untuk sesi 2.</p>
        </div>

        {{-- Card --}}
        <div class="bg-white shadow-md rounded-lg p-4">
            <div class="overflow-x-auto">
                <table class="table-auto w-full text-sm text-left text-gray-700">
                    <thead class="text-xs text-gray-600 uppercase bg-gray-200">
                        <tr>
                            <th class="px-4 py-2">Kandidat</th>
                            <th class="px-4 py-2">Jumlah Suara</th>
                        </tr>
                    </thead>
                    <tbody class="bg-white">
                        @foreach ($labelsSesi2 as $index => $label)
                            <tr class="border-b">
                                <td class="px-4 py-2">{{ $label }}</td>
                                <td class="px-4 py-2">{{ $dataSesi2[$index] }}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <div class="mt-8">
                <h3 class="text-lg font-semibold mb-2">Grafik Voting Sesi 2</h3>
                <canvas id="sesi2Chart" width="400" height="200"></canvas>
            </div>

        </div>
    </div>
</x-layouts.admin>
<script>
    const ctx = document.getElementById('sesi2Chart').getContext('2d');

    const sesi2Chart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: @json($labelsSesi2),
            datasets: [{
                label: 'Jumlah Suara',
                data: @json($dataSesi2),
                backgroundColor: 'rgba(54, 162, 235, 0.6)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true,
                    precision: 0
                }
            }
        }
    });
</script>
