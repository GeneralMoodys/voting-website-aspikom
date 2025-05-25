<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>{{ $title ?? 'Admin Panel' }}</title>
    
    <link rel="icon" href="{{ asset('ASPIKOM.png') }}" type="image/x-icon"/>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <style>
        /* Menyembunyikan sidebar pada tampilan mobile */
        @media (max-width: 768px) {
            #sidebar {
                transform: translateX(-100%);
                transition: transform 0.3s ease;
            }
            #sidebar.show {
                transform: translateX(0);
            }
        }
    </style>
</head>

<body class="bg-gray-100 dark:bg-gray-900">

    <div class="flex min-h-screen">

        {{-- Sidebar --}}
        <aside id="sidebar" class="w-64 bg-white dark:bg-gray-800 shadow-md fixed top-0 left-0 z-50 h-screen overflow-y-auto transition-transform">
            <div class="p-6 text-center border-b dark:border-gray-700">
                <h2 class="text-xl font-bold text-blue-600">Admin Panel</h2>
            </div>

            <nav class="mt-6">
                <ul class="space-y-2 px-4">
                    <li>
                        <a href="{{ route('admin.dashboard') }}" class="block px-4 py-2 rounded hover:bg-gray-200 dark:hover:bg-gray-700 text-gray-800 dark:text-gray-200">
                            Dashboard
                        </a>
                    </li>
                    <li>
                        <span class="block px-4 py-2 font-semibold text-gray-600 dark:text-gray-400">
                            Statistik Voting
                        </span>
                        <ul class="pl-4">
                            <li>
                                <a href="{{ route('admin.vote.sessions.sesi1') }}" class="block px-4 py-2 rounded hover:bg-gray-200 dark:hover:bg-gray-700 text-gray-800 dark:text-gray-200">
                                    Sesi 1
                                </a>
                            </li>
                            <li>
                                <a href="{{ route('admin.vote.sessions.sesi2') }}" class="block px-4 py-2 rounded hover:bg-gray-200 dark:hover:bg-gray-700 text-gray-800 dark:text-gray-200">
                                    Sesi 2
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="{{ route('admin.kandidats.index') }}" class="block px-4 py-2 rounded hover:bg-gray-200 dark:hover:bg-gray-700 text-gray-800 dark:text-gray-200">
                            Daftar Kandidat
                        </a>
                    </li>
                    <li>
                        <a href="{{ route('admin.voters') }}" class="block px-4 py-2 rounded hover:bg-gray-200 dark:hover:bg-gray-700 text-gray-800 dark:text-gray-200">
                            Tabel Voter
                        </a>
                    </li>
                    {{-- Logout Link --}}
                    <li>
                        <a href="{{ route('admin.logout') }}" class="block px-4 py-2 rounded hover:bg-gray-200 dark:hover:bg-gray-700 text-red-600 dark:text-red-400">
                            Logout
                        </a>
                    </li>
                </ul>
            </nav>
        </aside>

        {{-- Main Content --}}
        <div class="flex-1 min-h-screen md:pl-64 flex flex-col">
            {{-- Topbar (Visible on mobile only) --}}
            <header class="bg-white dark:bg-gray-800 shadow px-6 py-4 flex items-center justify-between md:hidden sticky top-0 z-40">
                <button id="hamburger" class="text-gray-600 dark:text-gray-300 focus:outline-none">
                    <svg class="h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M4 6h16M4 12h16M4 18h16" />
                    </svg>
                </button>
                <h1 class="text-lg font-bold text-gray-800 dark:text-white">Menu</h1>
            </header>

            {{-- Page Content --}}
            <main class="p-6">
                {{ $slot }}
            </main>
        </div>
    </div>

    <script>
        const hamburger = document.getElementById('hamburger');
        const sidebar = document.getElementById('sidebar');

        // Toggle sidebar on hamburger button click
        hamburger.addEventListener('click', () => {
            sidebar.classList.toggle('show');
        });
    </script>
    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <script src="//unpkg.com/alpinejs" defer></script>

</body>

</html>
