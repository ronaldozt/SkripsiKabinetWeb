@extends('layouts.app')

@section('content')
    <div class="page-home">

        {{-- HEADER --}}
        <header class="home-header">
            <div class="home-header__inner">
                <div class="home-header__top d-flex align-items-center justify-content-between gap-2 w-100">
                    <h1 class="home-title">Peta Kemiripan Menteri</h1>
                </div>
                <div class="home-header__actions d-flex gap-2 w-100">
                    <button id="btnCompare" class="btn-pill btn-primary flex-1" type="button">
                        <span class="d-none d-sm-inline">Bandingkan Menteri</span>
                        <span class="d-sm-none">Bandingkan Menteri</span>
                    </button>
                    <button id="btnAddData" class="btn-pill btn-primary flex-1" type="button" data-bs-toggle="modal"
                        data-bs-target="#modalAddData">
                        <span class="d-none d-sm-inline">Masukkan Dataku</span>
                        <span class="d-sm-none">Masukkan Dataku</span>
                    </button>
                </div>
            </div>
        </header>

        {{-- MAIN --}}
        <main class="home-main">
            <section class="umap-layout umap-layout--onecol" id="umap-layout">

                {{-- LEFT DOCK: DETAIL (lock mode) --}}
                <aside class="dock-left dock-left--hidden" id="dock-left">
                    {{-- JS akan isi semua field ke sini --}}
                    <div class="d-flex justify-content-between align-items-center mb-2 flex-wrap gap-2">
                        <div class="fw-bold" style="font-size:clamp(0.9rem, 2vw, 1rem);">Detail Menteri</div>
                        <button id="btnCloseDetail" class="btn-pill btn-outline" type="button"
                            style="padding:.35rem .8rem;font-size:clamp(0.75rem, 1.8vw, 0.8rem);">
                            Tutup
                        </button>
                    </div>

                    <div id="detailMount">
                        {{-- content detail dari JS --}}
                    </div>
                </aside>

                {{-- RIGHT DOCK: COMPARE (compare mode) --}}
                <aside class="dock-compare dock-compare--hidden" id="dock-compare">
                    <div class="dock-compare__header">
                        <div class="fw-bold" style="font-size:clamp(0.95rem, 2.5vw, 1.1rem);">Bandingkan Menteri</div>
                        <div class="text-muted d-none d-sm-block"
                            style="font-size:clamp(0.75rem, 1.8vw, 0.85rem); margin-top:4px;">Klik 2 titik untuk
                            membandingkan</div>
                    </div>

                    <div id="compareGrid" class="dock-compare__content"></div>

                    <div class="dock-compare__actions">
                        <button id="btnResetCompare" class="btn-pill btn-reset-compare flex-1 flex-sm-0">
                            <span class="d-none d-sm-inline">Pilih Ulang</span>
                            <span class="d-sm-none">Ulang</span>
                        </button>
                        <button id="btnExitCompare" class="btn-pill btn-primary flex-1 flex-sm-0">
                            <span class="d-none d-sm-inline">Selesai Bandingkan</span>
                            <span class="d-sm-none">Selesai</span>
                        </button>
                    </div>
                </aside>


                {{-- MAP --}}
                <div class="map-card">
                    <div class="map-hints" id="mapHints">
                        <span class="d-none d-md-inline">Hover titik → lihat ringkas</span>
                        <span class="d-none d-sm-inline">Click titik → detail</span>
                        <span class="d-none d-lg-inline">Scroll → zoom</span>
                        <span class="d-none d-lg-inline">Double click → reset</span>
                        <span class="hint-locked" id="hint-locked" style="display:none;">Titik terkunci</span>
                        <span class="hint-compare" id="hint-compare" style="display:none;">Mode Compare: pilih 2
                            titik</span>
                    </div>

                    <div id="umap-canvas" class="umap-canvas"></div>
                </div>

            </section>
        </main>
    </div>

    {{-- ===================== MODAL TAMBAH DATA ===================== --}}
    <div class="modal fade" id="modalAddData" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
            <div class="modal-content" style="border-radius:18px; overflow:hidden;">
                <div class="modal-header">
                    <h5 class="modal-title fw-bold" style="font-size:clamp(1rem, 2.5vw, 1.25rem);">Masukkan Dataku</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>

                <form id="formAddData" method="POST" action="{{ route('menteri.store') }}" enctype="multipart/form-data">
                    @csrf

                    <div class="modal-body">
                        <div class="row g-3">

                            {{-- Nama --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Nama</label>
                                <input type="text" name="nama" class="form-control" required>
                            </div>

                            {{-- Foto --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Foto</label>

                                {{-- switch kecil url / file --}}
                                <div class="d-flex gap-2 mb-2">
                                    <label class="badge-soft">
                                        <input type="radio" name="foto_mode" value="url" checked>
                                        URL
                                    </label>
                                    <label class="badge-soft">
                                        <input type="radio" name="foto_mode" value="file">
                                        Upload File
                                    </label>
                                </div>

                                <div id="fotoUrlWrap">
                                    <input type="text" name="foto_path" class="form-control"
                                        placeholder="https://....jpg">
                                </div>

                                <div id="fotoFileWrap" class="d-none">
                                    <input type="file" name="foto_file" class="form-control" accept="image/*">
                                </div>
                            </div>

                            <div class="col-12">
                                <hr>
                            </div>

                            {{-- Kementerian --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Kementerian</label>
                                <select id="master-kementerian" name="kementerian_id" class="form-select"
                                    required></select>
                            </div>

                            {{-- Jenis Kelamin --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Jenis Kelamin</label>
                                <div id="master-jk" class="d-flex gap-3 flex-wrap mt-1"></div>
                            </div>

                            {{-- Provinsi Lahir --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Provinsi Lahir</label>
                                <select id="master-provinsi-lahir" name="provinsi_lahir_id" class="form-select"
                                    required></select>
                            </div>

                            {{-- Umur --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Kategori Umur</label>
                                <select id="master-umur" name="umur_kategori_id" class="form-select" required></select>
                            </div>

                            {{-- Partai --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Partai</label>
                                <select id="master-partai" name="partai_id" class="form-select" required></select>
                            </div>

                            {{-- Jabatan Rangkap --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Jabatan Rangkap</label>
                                <select id="master-jabatan-rangkap" name="jabatan_rangkap_id" class="form-select"
                                    required></select>
                            </div>

                            {{-- Pernah Menteri --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Pernah Menjabat Menteri?</label>
                                <div class="d-flex gap-3 mt-2">
                                    <label class="badge-soft">
                                        <input type="radio" name="pernah_menteri" value="1" required>
                                        Pernah
                                    </label>
                                    <label class="badge-soft">
                                        <input type="radio" name="pernah_menteri" value="0">
                                        Tidak Pernah
                                    </label>
                                </div>
                            </div>

                            {{-- DPR/MPR --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">DPR / MPR</label>
                                <select id="master-dpr" name="dpr_mpr_id" class="form-select" required></select>
                            </div>

                            {{-- Militer/Polisi --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Latar Militer / Polisi</label>
                                <select id="master-militer" name="militer_polisi_id" class="form-select"
                                    required></select>
                            </div>

                            {{-- Lokasi SMA --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Lokasi SMA</label>
                                <select id="master-lokasi-sma" name="lokasi_sma_id" class="form-select"
                                    required></select>
                            </div>

                            {{-- Lokasi S1 --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Lokasi S1</label>
                                <select id="master-lokasi-s1" name="lokasi_s1_id" class="form-select" required></select>
                            </div>

                            {{-- Lokasi S2 --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Lokasi S2</label>
                                <select id="master-lokasi-s2" name="lokasi_s2_id" class="form-select"></select>
                            </div>

                            {{-- Lokasi S3 --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Lokasi S3</label>
                                <select id="master-lokasi-s3" name="lokasi_s3_id" class="form-select"></select>
                            </div>

                            {{-- Pendidikan S1 --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Jurusan / Bidang S1</label>
                                <select id="master-pendidikan-s1" name="pendidikan_s1_id" class="form-select"
                                    required></select>
                            </div>

                            {{-- Pendidikan S2/S3 --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Jurusan S2 / S3</label>
                                <select id="master-pendidikan-s2s3" name="pendidikan_s2s3_id"
                                    class="form-select"></select>
                            </div>

                            {{-- Korupsi --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Level Korupsi</label>
                                <select id="master-korupsi" name="korupsi_level_id" class="form-select"
                                    required></select>
                            </div>

                            {{-- Harta --}}
                            <div class="col-md-6">
                                <label class="form-label fw-bold">Level Harta</label>
                                <select id="master-harta" name="harta_level_id" class="form-select" required></select>
                            </div>

                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn-pill btn-primary">
                            Simpan
                        </button>
                        <button type="button" class="btn-pill btn-outline" data-bs-dismiss="modal">
                            Batal
                        </button>
                    </div>

                </form>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    @vite('resources/js/app.js')
@endpush
