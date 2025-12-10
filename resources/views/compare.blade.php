@extends('layouts.app')
@section('title', 'Bandingkan Menteri')

@section('content')
    <section class="glass p-3 p-sm-4 mb-3" x-data="{ compareMode: false }">
        <div class="d-flex align-items-center justify-content-between flex-wrap gap-2">
            <div>
                <h2 class="h4 fw-bold mb-1" style="font-size:clamp(1.1rem, 3vw, 1.5rem);">Bandingkan Menteri</h2>
                <p class="mb-0 d-none d-sm-block" style="color:var(--muted);font-size:clamp(0.85rem, 2vw, 1rem);">Aktifkan
                    mode untuk pilih 2 menteri.</p>
                <small x-show="compareMode" class="badge-soft mt-2 d-inline-block">
                    Mode Bandingkan Aktif
                </small>
            </div>
            <button class="btn-genz btn-pill btn-primary"
                @click="compareMode = !compareMode; window.setCompareMode(compareMode)">
                <span x-text="compareMode ? 'Matikan Bandingkan' : 'Bandingkan Menteri'" class="d-none d-sm-inline"></span>
                <span x-text="compareMode ? 'Matikan' : 'Bandingkan'" class="d-sm-none"></span>
            </button>
        </div>
    </section>

    <section class="glass p-2 p-sm-3 position-relative mb-3" style="min-height:400px;">
        <div id="umap-canvas" style="width:100%;height:100%;min-height:400px;"></div>
    </section>

    <section id="compare-cards" class="d-none">
        <div class="compare-wrap d-flex flex-column flex-md-row gap-3">
            <div id="card-left" class="glass p-3 info-card flex-1"></div>
            <div id="card-right" class="glass p-3 info-card flex-1"></div>
        </div>
        <div class="text-center mt-3">
            <button class="btn btn-outline-light rounded-pill px-3 px-sm-4" onclick="window.resetCompare()">
                <span class="d-none d-sm-inline">Banding Ulang</span>
                <span class="d-sm-none">Ulang</span>
            </button>
            <div class="compare-sync-note d-none d-sm-block mt-2" style="font-size:0.85rem;color:var(--muted);">Scroll salah
                satu kartu → keduanya bergerak bareng</div>
        </div>
    </section>
@endsection

@push('scripts')
    @vite('resources/js/umap-compare.js')
@endpush
