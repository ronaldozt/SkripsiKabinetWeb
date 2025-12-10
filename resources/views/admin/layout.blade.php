<!doctype html>
<html lang="id">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin UMAP Menteri</title>

  @vite([
    'resources/css/admin.css',
    'resources/js/app.js'
  ])
</head>

<body class="admin-body">
  <div class="admin-shell">

    {{-- MOBILE MENU TOGGLE BUTTON --}}
    <button class="admin-menu-toggle d-lg-none" id="adminMenuToggle" type="button" aria-label="Toggle menu">
      <span></span>
      <span></span>
      <span></span>
    </button>

    {{-- SIDEBAR --}}
    <aside class="sidebar" id="adminSidebar">
      <div class="brand">
        <div style="width:34px;height:34px;border-radius:10px;background:#00A3FF;display:grid;place-items:center;font-weight:900;color:white;">U</div>
        <div>
          <span class="d-none d-sm-inline">Admin UMAP</span>
          <span class="d-sm-none">Admin</span>
          <div style="font-size:.8rem;color:#94a3b8;font-weight:700;" class="d-none d-sm-block">Kelola data menteri</div>
        </div>
      </div>

      <nav class="nav flex-column gap-1">
        <a class="nav-link {{ request()->routeIs('admin.detail_menteri.*')?'active':'' }}"
           href="{{ route('admin.detail_menteri.index') }}">Untuk Aplikasi</a>

        <a class="nav-link {{ request()->routeIs('admin.aplikasi.*')?'active':'' }}"
           href="{{ route('admin.aplikasi.index') }}">Untuk UMAP</a>

        <a class="nav-link {{ request()->routeIs('admin.umap_integer.*')?'active':'' }}"
           href="{{ route('admin.umap_integer.index') }}">Untuk UMAP Integer</a>
      </nav>
      <br>
       <div class="d-flex gap-2">
          <a href="{{ route('home') }}" class="btn btn-outline-light btn-sm rounded-pill px-2 px-sm-3 fw-bold">
            <span class="d-none d-sm-inline">Lihat Homepage</span>
            <span class="d-sm-none">Home</span>
          </a>
        </div>
    </aside>

    {{-- OVERLAY untuk mobile --}}
    <div class="admin-sidebar-overlay d-lg-none" id="adminSidebarOverlay"></div>

    {{-- CONTENT --}}
    <main>
      <div class="admin-topbar">
        <div>
          <div class="admin-title">@yield('page-title')</div>
          <div class="admin-sub d-none d-sm-block">@yield('page-subtitle')</div>
        </div>

        <div class="d-flex gap-2">
          <a href="{{ route('home') }}" class="btn btn-outline-light btn-sm rounded-pill px-2 px-sm-3 fw-bold d-none d-md-inline-flex">
            Lihat Homepage
          </a>
        </div>
      </div>

      @if(session('success'))
        <div class="alert alert-success rounded-3 fw-bold">
          {{ session('success') }}
        </div>
      @endif

      @yield('admin-content')
    </main>

  </div>

  <script>
    // Mobile menu toggle
    const menuToggle = document.getElementById('adminMenuToggle');
    const sidebar = document.getElementById('adminSidebar');
    const overlay = document.getElementById('adminSidebarOverlay');
    
    if (menuToggle && sidebar && overlay) {
      function toggleMenu() {
        sidebar.classList.toggle('sidebar-open');
        overlay.classList.toggle('overlay-active');
        document.body.classList.toggle('menu-open');
      }
      
      menuToggle.addEventListener('click', toggleMenu);
      overlay.addEventListener('click', toggleMenu);
      
      // Close menu when clicking nav link on mobile
      sidebar.querySelectorAll('.nav-link').forEach(link => {
        link.addEventListener('click', () => {
          if (window.innerWidth < 992) {
            toggleMenu();
          }
        });
      });
    }
  </script>
</body>
</html>
