<!doctype html>
<html lang="id">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>@yield('title','UMAP Menteri')</title>
  @vite(['resources/css/app.css','resources/js/app.js'])
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark px-2 px-sm-3 py-1 py-sm-2" style="background:transparent;">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="{{ route('home') }}" style="font-size:clamp(0.9rem, 2.5vw, 1.1rem);">
      <span style="color:var(--accent2)">UMAP</span> <span class="d-none d-sm-inline">Menteri</span>
    </a>
    <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation" style="padding:0.25rem 0.5rem;">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <div class="d-flex gap-2 ms-auto">
        {{-- <a class="btn btn-sm btn-outline-light rounded-pill px-3" href="{{ route('compare') }}">Bandingkan</a>
        <a class="btn btn-sm btn-light rounded-pill px-3" href="{{ route('menteri.create') }}">Tambah Data</a> --}}
      </div>
    </div>
  </div>
</nav>

<main class="container-fluid px-2 px-sm-3 px-lg-4 pb-4 pb-sm-5">
  @yield('content')
</main>

<footer class="container-fluid px-2 px-sm-3 px-lg-4 pt-3 pt-sm-4 pb-4 pb-sm-5 text-center" style="color:var(--muted)">
  <small class="d-block d-sm-inline">UMAP Menteri</small>
  <small class="d-none d-sm-inline"> · </small>
  <small class="d-block d-sm-inline">Data visual untuk Gen-Z</small>
  <small class="d-none d-sm-inline"> · </small>
  <small class="d-block d-sm-inline">v0.1</small>
</footer>

@stack('scripts')
</body>
</html>
