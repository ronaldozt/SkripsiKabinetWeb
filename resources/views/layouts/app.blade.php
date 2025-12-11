<!doctype html>
<html lang="id">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title', 'UMAP Menteri')</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body>

    <main class="w-full px-2 sm:px-3 lg:px-4 pb-4 sm:pb-5">
        @yield('content')
    </main>

    <footer class="w-full px-2 sm:px-3 lg:px-4 pt-3 sm:pt-4 pb-4 sm:pb-5 text-center" style="color:var(--muted)">
        <small class="block sm:inline">UMAP Menteri</small>
        <small class="hidden sm:inline"> · </small>
        <small class="block sm:inline">Data visual untuk Gen-Z</small>
        <small class="hidden sm:inline"> · </small>
        <small class="block sm:inline">v0.1</small>
    </footer>

    @stack('scripts')
</body>

</html>
