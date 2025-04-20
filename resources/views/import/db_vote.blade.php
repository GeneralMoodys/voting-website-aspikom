<x-app-layout>
    <div class="max-w-2xl mx-auto mt-10">
        @if(session('success'))
            <div class="bg-green-100 text-green-700 p-3 rounded mb-4">
                {{ session('success') }}
            </div>
        @endif

        <form action="{{ url('/import-db-vote') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <label class="block text-sm font-medium text-gray-700">Upload File Excel</label>
            <input type="file" name="file" class="mt-2 mb-4 block w-full">
            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600">
                Import
            </button>
        </form>
    </div>
</x-app-layout>
