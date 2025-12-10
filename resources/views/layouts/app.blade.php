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

    <nav class="w-full px-2 sm:px-3 py-1 sm:py-2 bg-transparent">
        <div class="w-full flex items-center justify-between">
            <a class="font-bold text-[clamp(0.9rem,2.5vw,1.1rem)] no-underline" href="{{ route('home') }}">
                <span style="color:var(--accent2)">UMAP</span> <span class="hidden sm:inline">Menteri</span>
            </a>
            <div class="flex gap-2 ml-auto">
                {{-- <a class="text-sm px-3 py-1.5 rounded-full border border-white/30 text-white hover:bg-white/10 transition" href="{{ route('compare') }}">Bandingkan</a>
      <a class="text-sm px-3 py-1.5 rounded-full bg-white text-gray-900 hover:bg-gray-100 transition" href="{{ route('menteri.create') }}">Tambah Data</a> --}}
            </div>
        </div>
    </nav>

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
