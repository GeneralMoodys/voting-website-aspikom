{{-- resources/views/admin/dashboard.blade.php --}}
<x-layouts.admin>
    <x-slot name="title">Dashboard Admin</x-slot>

    <h2 class="text-2xl font-bold text-gray-800 dark:text-white mb-6">Dashboard Admin</h2>

    <div class="space-y-10">
        @forelse ($data as $session)
            <div class="bg-white dark:bg-gray-800 shadow rounded-xl p-6 border dark:border-gray-700">
                <div class="flex flex-col md:flex-row md:items-center justify-between mb-4">
                    <h3 class="text-xl font-bold text-blue-700">
                        @if ($session->is_used_2)
                            Sesi Voting 2 (PIN: {{ $session->pin_sesi_2 }})
                        @else
                            Sesi Voting 1 (PIN: {{ $session->pin_sesi_1 }})
                        @endif
                    </h3>
                    <div class="text-sm text-gray-600 dark:text-gray-300 mt-2 md:mt-0">
                        <span class="font-medium">{{ $session->universitas }}</span> - {{ $session->prodi }}
                    </div>
                </div>

                <div class="overflow-x-auto">
                    <table class="min-w-full text-sm text-left border border-gray-300 dark:border-gray-700 rounded-md">
                        <thead class="bg-gray-100 dark:bg-gray-700">
                            <tr>
                                <th class="px-4 py-2 border-b dark:border-gray-600">Nama Kandidat</th>
                                <th class="px-4 py-2 border-b dark:border-gray-600">Deskripsi</th>
                                <th class="px-4 py-2 border-b dark:border-gray-600 text-center">Jumlah Suara</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($session->kandidats as $kandidat)
                                <tr class="hover:bg-gray-50 dark:hover:bg-gray-700">
                                    <td class="px-4 py-2 border-b dark:border-gray-600 font-semibold">
                                        {{ $kandidat->nama }}
                                    </td>
                                    <td class="px-4 py-2 border-b dark:border-gray-600">
                                        {{ $kandidat->deskripsi }}
                                    </td>
                                    <td class="px-4 py-2 border-b dark:border-gray-600 text-center">
                                        <span class="bg-blue-100 text-blue-800 px-3 py-1 rounded-full text-sm font-medium">
                                            {{ $kandidat->voters->count() }} suara
                                        </span>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="3" class="text-center py-4 text-gray-500 dark:text-gray-400">
                                        Belum ada kandidat terdaftar.
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        @empty
            <div class="text-center text-gray-600 dark:text-gray-400">
                Tidak ada data sesi voting tersedia.
            </div>
        @endforelse

    </div>
</x-layouts.admin>
