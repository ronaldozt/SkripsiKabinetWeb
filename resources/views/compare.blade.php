@extends('layouts.app')
@section('title', 'Bandingkan Menteri')

@section('content')
    <section class="bg-white border border-stroke rounded-xl p-3 sm:p-4 mb-3 shadow-sm" x-data="{ compareMode: false }">
        <div class="flex items-center justify-between flex-wrap gap-2">
            <div>
                <h2 class="font-bold mb-1 m-0" style="font-size:clamp(1.1rem, 3vw, 1.5rem);">Bandingkan Menteri</h2>
                <p class="mb-0 hidden sm:block m-0" style="color:var(--muted);font-size:clamp(0.85rem, 2vw, 1rem);">Aktifkan
                    mode untuk pilih 2 menteri.</p>
                <small x-show="compareMode" class="badge-soft mt-2 inline-block">
                    Mode Bandingkan Aktif
                </small>
            </div>
            <button
                class="rounded-full bg-primary text-white px-4 sm:px-5 py-2.5 sm:py-3 font-bold text-sm sm:text-base border-0 transition-all hover:brightness-110 shadow-sm"
                @click="compareMode = !compareMode; window.setCompareMode(compareMode)">
                <span x-text="compareMode ? 'Matikan Bandingkan' : 'Bandingkan Menteri'" class="hidden sm:inline"></span>
                <span x-text="compareMode ? 'Matikan' : 'Bandingkan'" class="sm:hidden"></span>
            </button>
        </div>
    </section>

    <section class="bg-white border border-stroke rounded-xl p-2 sm:p-3 relative mb-3 shadow-sm" style="min-height:400px;">
        <div id="umap-canvas" style="width:100%;height:100%;min-height:400px;"></div>
    </section>

    <section id="compare-cards" class="hidden">
        <div class="flex flex-col md:flex-row gap-3">
            <div id="card-left" class="bg-white border border-stroke rounded-xl p-3 flex-1 shadow-sm"></div>
            <div id="card-right" class="bg-white border border-stroke rounded-xl p-3 flex-1 shadow-sm"></div>
        </div>
        <div class="text-center mt-3">
            <button
                class="rounded-full border border-gray-300 bg-white text-gray-700 px-3 sm:px-4 py-2 text-sm sm:text-base transition-all hover:bg-gray-50"
                onclick="window.resetCompare()">
                <span class="hidden sm:inline">Banding Ulang</span>
                <span class="sm:hidden">Ulang</span>
            </button>
            <div class="hidden sm:block mt-2 text-sm" style="color:var(--muted);">Scroll salah
                satu kartu → keduanya bergerak bareng</div>
        </div>
    </section>
@endsection

@push('scripts')
    @vite('resources/js/umap-compare.js')
@endpush
