<!-- Tambahkan ini di tempat yang sesuai -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>System Voting ASPIKOM</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <link rel="icon" href="{{ asset('ASPIKOM.png') }}" type="image/x-icon"/>
</head>
<body>
    {{ $slot }}
</body>
</html>

@if (View::hasSection('header'))

    <header class="bg-white dark:bg-gray-800 shadow">
        <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
            @yield('header')
        </div>
    </header>
@endif

<main>
    @yield('content')
</main>
