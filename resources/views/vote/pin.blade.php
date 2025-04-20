{{-- resources/views/vote/index.blade.php --}}
<x-app-layout>
    <x-slot name="header">
        <h2 class="sr-only">Voting</h2> {{-- Disembunyikan karena konten utama sudah di tengah --}}
    </x-slot>

    <div class="min-h-screen flex items-center justify-center bg-[#f9fafb] dark:bg-gray-900 px-4">
        <div class="bg-white dark:bg-gray-800 shadow-xl rounded-lg p-8 w-full max-w-md">
            <h1 class="text-2xl font-bold text-gray-800 dark:text-white mb-2">Selamat Datang 👋</h1>
            <p class="text-sm text-gray-600 dark:text-gray-300 mb-6">
                Masukkan PIN sesi voting yang sudah diberikan untuk melanjutkan.
            </p>

            <form action="{{ route('vote.checkPin') }}" method="POST" class="space-y-4">
                @csrf
                <div>
                    <label for="pin" class="block text-sm font-medium text-gray-700 dark:text-gray-200">PIN Voting</label>
                    <input type="text" name="pin" id="pin"
                        class="mt-1 w-full px-4 py-2 rounded-lg border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 text-gray-800 dark:text-white focus:outline-none focus:ring-2 focus:ring-blue-500"
                        required>
                    @error('pin')
                        <div class="text-sm text-red-500 mt-1">{{ $message }}</div>
                    @enderror
                </div>

                <div class="text-right">
                    <button type="submit"
                        class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg shadow transition duration-200">
                        Lanjutkan
                    </button>
                </div>
            </form>
        </div>
    </div>
</x-app-layout>
