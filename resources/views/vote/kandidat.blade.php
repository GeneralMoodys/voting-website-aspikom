<x-app-layout>
    <x-slot name="header">
        <h2 class="sr-only">Vote Kandidat</h2>
    </x-slot>

    <div x-data="{ showModal: false }" class="min-h-screen flex items-center justify-center bg-[#f9fafb] dark:bg-gray-900 px-4 py-8">
        <div class="w-full max-w-2xl bg-white dark:bg-gray-800 p-8 rounded-lg shadow-md">
            <h1 class="text-2xl font-bold text-gray-800 dark:text-white mb-2">Pilih Kandidat 🔽</h1>
            <p class="text-sm text-gray-600 dark:text-gray-300 mb-6">Silakan pilih satu kandidat untuk memberikan suaramu.</p>

            <form id="voteForm" action="{{ route('vote.submitVote', $voter->id) }}" method="POST" class="space-y-6">
                @csrf

                <div class="space-y-4">
                    @foreach ($kandidats as $kandidat)
                        <label class="flex items-start p-4 border rounded-lg cursor-pointer hover:border-blue-500 transition
                                      border-gray-300 dark:border-gray-600 bg-gray-50 dark:bg-gray-700 space-x-4">
                                      <input type="radio" name="kandidat_id" value="{{ $kandidat->id }}" required
                                class="mt-1 text-blue-600 focus:ring-blue-500">

                            <img src="{{ asset('storage/' . $kandidat->foto) }}" alt="{{ $kandidat->nama }}"
                                class="w-16 h-16 object-cover rounded-full border border-gray-300 dark:border-gray-500">

                            <div>
                                <p class="text-lg font-semibold text-gray-800 dark:text-white">{{ $kandidat->nama }}</p>
                                <p class="text-sm text-gray-600 dark:text-gray-300">{{ $kandidat->deskripsi }}</p>
                            </div>
                        </label>
                    @endforeach

                    @error('kandidat_id')
                        <div class="text-red-500 text-sm">{{ $message }}</div>
                    @enderror
                </div>

                <!-- Trigger Modal Button -->
                <div class="text-right">
                    <button type="button" @click="showModal = true"
                        class="bg-blue-600 hover:bg-blue-700 text-white px-6 py-2 rounded-lg shadow transition">
                        Vote Sekarang 🗳️
                    </button>
                </div>
            </form>

            <!-- Modal -->
            <div x-show="showModal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50"
                x-cloak>
                <div class="bg-white dark:bg-gray-700 rounded-lg shadow-lg p-6 max-w-sm w-full text-center">
                    <h2 class="text-xl font-bold text-gray-800 dark:text-white mb-4">Yakin dengan pilihan Anda?</h2>
                    <p class="text-sm text-gray-600 dark:text-gray-300 mb-6">Anda tidak dapat mengubah pilihan setelah voting.</p>
                    <div class="flex justify-center gap-4">
                        <button @click="showModal = false"
                            class="px-4 py-2 bg-gray-300 dark:bg-gray-500 text-gray-800 dark:text-white rounded hover:bg-gray-400">
                            Batal
                        </button>
                        <button @click="document.getElementById('voteForm').submit()"
                            class="px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700">
                            Yakin & Vote ✅
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
