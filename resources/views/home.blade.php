@extends('layouts.app')

@section('content')
    <div class="w-full h-screen min-h-screen p-2 sm:p-3 lg:p-3.5 overflow-hidden flex flex-col">
        {{-- HEADER --}}
        <header class="sticky top-0 z-[7] bg-transparent mb-3 flex-none">
            <div
                class="bg-white border border-stroke rounded-xl sm:rounded-2xl lg:rounded-[20px] p-3 sm:p-3.5 lg:p-4 lg:px-6 flex flex-col sm:flex-row items-center justify-between gap-3 sm:gap-4 lg:gap-5 shadow-[0_2px_8px_rgba(15,23,42,0.04),0_1px_3px_rgba(15,23,42,0.06)] sm:shadow-[0_4px_12px_rgba(15,23,42,0.05),0_2px_4px_rgba(15,23,42,0.06)] lg:shadow-[0_8px_22px_rgba(15,23,42,0.06)] backdrop-blur-[10px]">
                <h1
                    class="order-2 sm:order-1 w-full sm:w-auto text-center sm:text-left m-0 font-black text-[clamp(1rem,3.5vw,2.1rem)] sm:text-[clamp(1.4rem,2.2vw,2.1rem)] tracking-wide flex-1 whitespace-normal sm:whitespace-nowrap break-words sm:break-normal leading-tight sm:overflow-hidden sm:text-ellipsis">
                    Peta Kemiripan Menteri
                </h1>
                <div class="flex flex-row gap-2 sm:gap-3 w-full sm:w-auto order-1 sm:order-2">
                    <button id="btnCompare"
                        class="rounded-full bg-primary text-white flex-1 sm:flex-none whitespace-nowrap px-3.5 sm:px-5 py-2.5 sm:py-3.5 font-bold sm:font-extrabold text-sm sm:text-base border-0 no-underline transition-all duration-200 inline-flex items-center justify-center cursor-pointer gap-1.5 min-h-10 sm:min-h-0 shadow-[0_1px_3px_rgba(0,0,0,0.1)] hover:-translate-y-0.5 hover:brightness-110 hover:shadow-[0_6px_16px_rgba(0,163,255,0.3),0_3px_6px_rgba(0,163,255,0.2)] active:scale-[0.98] active:translate-y-0"
                        type="button">
                        <span class="hidden sm:inline">Bandingkan Menteri</span>
                        <span class="sm:hidden">Bandingkan</span>
                    </button>
                    <button id="btnAddData"
                        class="rounded-full bg-primary text-white flex-1 sm:flex-none whitespace-nowrap px-3.5 sm:px-5 py-2.5 sm:py-3.5 font-bold sm:font-extrabold text-sm sm:text-base border-0 no-underline transition-all duration-200 inline-flex items-center justify-center cursor-pointer gap-1.5 min-h-10 sm:min-h-0 shadow-[0_1px_3px_rgba(0,0,0,0.1)] hover:-translate-y-0.5 hover:brightness-110 hover:shadow-[0_6px_16px_rgba(0,163,255,0.3),0_3px_6px_rgba(0,163,255,0.2)] active:scale-[0.98] active:translate-y-0"
                        type="button" onclick="openModal('modalAddData')">
                        <span class="hidden sm:inline">Masukkan Dataku</span>
                        <span class="sm:hidden">Tambah Data</span>
                    </button>
                </div>
            </div>
        </header>

        {{-- MAIN --}}
        <main class="w-full flex-1 min-h-0 overflow-hidden">
            <section
                class="h-full min-h-0 grid grid-cols-1 lg:grid-cols-[360px_1fr] gap-2 lg:gap-3 items-start relative overflow-hidden"
                id="umap-layout">

                {{-- LEFT DOCK: DETAIL --}}
                <aside
                    class="dock-left hidden lg:block sticky top-[92px] h-[calc(100vh-190px)] overflow-hidden rounded-2xl p-3.5 shadow-[0_12px_28px_rgba(15,23,42,0.12)] transition-all duration-[0.18s] border-2"
                    id="dock-left"
                    style="background: var(--dock-accent, #00a3ff); border-color: color-mix(in srgb, var(--dock-accent, #00a3ff) 70%, #000 10%);">
                    <div class="block h-1.5 rounded-full bg-white/85 mb-2.5 opacity-90"></div>
                    {{-- JS akan isi semua field ke sini --}}
                    <div class="flex justify-between items-center mb-3 sm:mb-4 flex-wrap gap-2">
                        <div class="font-bold text-sm sm:text-base md:text-lg">Detail Menteri</div>
                        <button id="btnCloseDetail"
                            class="rounded-full bg-white text-text border-[1.5px] border-stroke px-3 sm:px-4 py-1.5 sm:py-2 text-xs sm:text-sm font-bold no-underline whitespace-nowrap transition-all duration-200 inline-flex items-center justify-center cursor-pointer gap-1.5 shadow-[0_1px_2px_rgba(0,0,0,0.05)] hover:-translate-y-0.5 hover:border-primary hover:text-primary hover:shadow-[0_2px_4px_rgba(0,0,0,0.1)] active:translate-y-0"
                            type="button">
                            Tutup
                        </button>
                    </div>

                    <div id="detailMount" class="space-y-2 sm:space-y-3">
                        {{-- content detail dari JS --}}
                    </div>
                </aside>

                {{-- RIGHT DOCK: COMPARE (compare mode) --}}
                <aside
                    class="dock-compare hidden fixed inset-x-2 sm:inset-x-auto sm:right-3.5 top-2 sm:top-[92px] w-auto sm:w-[min(720px,96vw)] sm:max-w-[calc(100vw-28px)] bg-white border border-stroke rounded-xl sm:rounded-2xl shadow-[0_14px_36px_rgba(15,23,42,0.14)] z-[8] max-h-[calc(100vh-16px)] sm:max-h-[calc(100vh-150px)] overflow-hidden"
                    id="dock-compare">
                    {{-- Header --}}
                    <div class="px-4 sm:px-5 py-4 sm:py-5 border-b border-stroke flex-none bg-white">
                        <h2 class="font-bold text-xl sm:text-2xl md:text-2xl mb-2 text-gray-900 leading-tight">
                            Bandingkan Menteri
                        </h2>
                        <p class="text-sm sm:text-base text-gray-600 leading-relaxed">
                            Klik 2 titik untuk membandingkan
                        </p>
                    </div>

                    {{-- Content Grid --}}
                    <div id="compareGrid"
                        class="flex-1 overflow-y-auto overflow-x-hidden px-4 sm:px-5 py-4 sm:py-5 min-h-0 scrollbar-thin scrollbar-thumb-gray-300 scrollbar-track-transparent">
                        {{-- Content akan diisi oleh JavaScript --}}
                    </div>

                    {{-- Footer Actions --}}
                    <div class="px-4 sm:px-5 py-4 sm:py-5 border-t border-stroke flex-none bg-gray-50/50">
                        <div class="flex flex-col sm:flex-row gap-3 sm:gap-3 justify-end">
                            <button id="btnResetCompare"
                                class="rounded-full bg-[#2563eb] text-white w-full sm:w-auto order-2 sm:order-1 px-5 sm:px-6 py-3 sm:py-3.5 font-semibold sm:font-bold text-sm sm:text-base border-0 transition-all duration-200 inline-flex items-center justify-center gap-2 shadow-[0_4px_12px_rgba(37,99,235,0.25)] hover:-translate-y-0.5 hover:brightness-105 hover:shadow-[0_6px_16px_rgba(37,99,235,0.35)] active:scale-[0.98] active:translate-y-0">
                                <svg class="w-4 h-4 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15">
                                    </path>
                                </svg>
                                <span class="hidden sm:inline whitespace-nowrap">Pilih Ulang</span>
                                <span class="sm:hidden whitespace-nowrap">Ulang</span>
                            </button>
                            <button id="btnExitCompare"
                                class="rounded-full bg-primary text-white w-full sm:w-auto order-1 sm:order-2 px-5 sm:px-6 py-3 sm:py-3.5 font-semibold sm:font-bold text-sm sm:text-base border-0 transition-all duration-200 inline-flex items-center justify-center gap-2 shadow-[0_4px_12px_rgba(0,163,255,0.25)] hover:-translate-y-0.5 hover:brightness-110 hover:shadow-[0_6px_16px_rgba(0,163,255,0.35)] active:scale-[0.98] active:translate-y-0">
                                <svg class="w-4 h-4 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M5 13l4 4L19 7">
                                    </path>
                                </svg>
                                <span class="hidden sm:inline whitespace-nowrap">Selesai Bandingkan</span>
                                <span class="sm:hidden whitespace-nowrap">Selesai</span>
                            </button>
                        </div>
                    </div>
                </aside>


                {{-- MAP --}}
                <div
                    class="bg-white border border-stroke rounded-xl sm:rounded-2xl lg:rounded-2xl p-2 sm:p-2.5 lg:p-2.5 relative h-full min-h-0 shadow-[0_8px_22px_rgba(15,23,42,0.06)] overflow-hidden">
                    <div class="absolute top-2.5 sm:top-2.5 left-3 sm:left-3 z-[3] flex gap-2 sm:gap-2 flex-wrap text-xs sm:text-sm text-muted bg-white/85 px-2 sm:px-2 py-1.5 sm:py-2 rounded-lg sm:rounded-lg backdrop-blur-sm max-w-[calc(100%-24px)] sm:max-w-[calc(100%-24px)] shadow-[0_2px_8px_rgba(0,0,0,0.08)]"
                        id="mapHints">
                        <span class="hidden md:inline px-1 sm:px-1.5 leading-snug">Hover titik → lihat ringkas</span>
                        <span class="hidden sm:inline px-1 sm:px-1.5 leading-snug">Click titik → detail</span>
                        <span class="hidden lg:inline px-1 sm:px-1.5 leading-snug">Scroll → zoom</span>
                        <span class="hidden lg:inline px-1 sm:px-1.5 leading-snug">Double click → reset</span>
                        <span
                            class="bg-[#111827] text-white px-1.5 sm:px-1.5 rounded-full font-black text-xs sm:text-xs hidden"
                            id="hint-locked">Titik terkunci</span>
                        <span
                            class="bg-[#0ea5e9] text-white px-1.5 sm:px-1.5 rounded-full font-black text-xs sm:text-xs hidden"
                            id="hint-compare">Mode Compare: pilih 2 titik</span>
                    </div>

                    <div id="umap-canvas" class="w-full h-full rounded-xl sm:rounded-xl bg-white overflow-hidden"
                        style="background: linear-gradient(0deg, #f5f5f5 1px, transparent 1px) 0 0/36px 36px, linear-gradient(90deg, #f5f5f5 1px, transparent 1px) 0 0/36px 36px, #fff;">
                    </div>
                </div>

            </section>
        </main>
    </div>

    {{-- ===================== MODAL TAMBAH DATA ===================== --}}
    <div id="modalAddData" class="fixed inset-0 z-50 hidden bg-black/50 backdrop-blur-sm overflow-y-auto"
        onclick="closeModalOnBackdrop(event, 'modalAddData')">
        <div class="w-full max-w-full sm:max-w-xl md:max-w-2xl lg:max-w-4xl xl:max-w-6xl mx-auto my-4 sm:my-8 flex items-start sm:items-center py-4"
            onclick="event.stopPropagation()">
            <div
                class="bg-white rounded-xl sm:rounded-2xl overflow-hidden flex flex-col w-full shadow-2xl max-h-[calc(100vh-2rem)] sm:max-h-[calc(100vh-4rem)] my-auto flex-shrink-0">
                {{-- Header --}}
                <div
                    class="px-5 sm:px-6 py-4 sm:py-5 flex items-center justify-between border-b border-gray-200 bg-gray-50/50 flex-none">
                    <div>
                        <h5 class="font-bold text-lg sm:text-xl md:text-2xl m-0 text-gray-900">Masukkan Dataku</h5>
                        <p class="text-xs sm:text-sm text-gray-500 mt-1 m-0">Lengkapi data menteri di bawah ini</p>
                    </div>
                    <button type="button"
                        class="w-9 h-9 flex items-center justify-center rounded-full hover:bg-gray-200 transition-colors duration-200 text-gray-500 hover:text-gray-700"
                        onclick="closeModal('modalAddData')" aria-label="Close">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12">
                            </path>
                        </svg>
                    </button>
                </div>

                <form id="formAddData" method="POST" action="{{ route('menteri.store') }}" enctype="multipart/form-data"
                    class="flex flex-col min-h-0 flex-1">
                    @csrf

                    <div class="overflow-y-auto flex-1 bg-gray-50/30 min-h-0 flex-shrink">
                        <div class="px-5 sm:px-6 py-5 sm:py-6">
                            {{-- Section: Data Dasar --}}
                            <div class="mb-6 sm:mb-8">
                                <h3
                                    class="text-sm sm:text-base font-bold text-gray-700 mb-4 sm:mb-5 uppercase tracking-wide">
                                    Data Dasar</h3>
                                <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 sm:gap-5">
                                    {{-- Nama --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Nama <span class="text-red-500">*</span>
                                        </label>
                                        <input type="text" name="nama"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none placeholder-gray-400"
                                            placeholder="Masukkan nama lengkap" required>
                                    </div>

                                    {{-- Foto --}}
                                    <div class="sm:col-span-1">
                                        <label
                                            class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">Foto</label>

                                        {{-- switch kecil url / file --}}
                                        <div class="flex gap-2 mb-3">
                                            <label
                                                class="inline-flex items-center px-3 py-1.5 rounded-lg border border-gray-300 bg-white cursor-pointer hover:bg-gray-50 transition-colors text-sm font-medium">
                                                <input type="radio" name="foto_mode" value="url" checked
                                                    class="mr-2 text-primary focus:ring-primary">
                                                URL
                                            </label>
                                            <label
                                                class="inline-flex items-center px-3 py-1.5 rounded-lg border border-gray-300 bg-white cursor-pointer hover:bg-gray-50 transition-colors text-sm font-medium">
                                                <input type="radio" name="foto_mode" value="file"
                                                    class="mr-2 text-primary focus:ring-primary">
                                                Upload File
                                            </label>
                                        </div>

                                        <div id="fotoUrlWrap">
                                            <input type="text" name="foto_path"
                                                class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none placeholder-gray-400"
                                                placeholder="https://example.com/foto.jpg">
                                        </div>

                                        <div id="fotoFileWrap" class="hidden">
                                            <input type="file" name="foto_file"
                                                class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none file:mr-4 file:py-2 file:px-4 file:rounded-lg file:border-0 file:text-sm file:font-semibold file:bg-primary/10 file:text-primary hover:file:bg-primary/20"
                                                accept="image/*">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            {{-- Section: Informasi Personal --}}
                            <div class="mb-6 sm:mb-8">
                                <h3
                                    class="text-sm sm:text-base font-bold text-gray-700 mb-4 sm:mb-5 uppercase tracking-wide">
                                    Informasi Personal</h3>
                                <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 sm:gap-5">

                                    {{-- Kementerian --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Kementerian <span class="text-red-500">*</span>
                                        </label>
                                        <select id="master-kementerian" name="kementerian_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"
                                            required></select>
                                    </div>

                                    {{-- Jenis Kelamin --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Jenis Kelamin <span class="text-red-500">*</span>
                                        </label>
                                        <div id="master-jk" class="flex gap-2 sm:gap-3 flex-wrap items-start"></div>
                                    </div>

                                    {{-- Provinsi Lahir --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Provinsi Lahir <span class="text-red-500">*</span>
                                        </label>
                                        <select id="master-provinsi-lahir" name="provinsi_lahir_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"
                                            required></select>
                                    </div>

                                    {{-- Umur --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Kategori Umur <span class="text-red-500">*</span>
                                        </label>
                                        <select id="master-umur" name="umur_kategori_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"
                                            required></select>
                                    </div>

                                    {{-- Partai --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Partai <span class="text-red-500">*</span>
                                        </label>
                                        <select id="master-partai" name="partai_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"
                                            required></select>
                                    </div>

                                    {{-- Jabatan Rangkap --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Jabatan Rangkap <span class="text-red-500">*</span>
                                        </label>
                                        <select id="master-jabatan-rangkap" name="jabatan_rangkap_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"
                                            required></select>
                                    </div>

                                    {{-- Pernah Menteri --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Pernah Menjabat Menteri? <span class="text-red-500">*</span>
                                        </label>
                                        <div class="flex gap-3 flex-wrap items-start">
                                            <label
                                                class="inline-flex items-center px-4 py-2.5 rounded-lg border border-gray-300 bg-white cursor-pointer hover:bg-gray-50 transition-colors text-sm font-medium">
                                                <input type="radio" name="pernah_menteri" value="1" required
                                                    class="mr-2 text-primary focus:ring-primary">
                                                Pernah
                                            </label>
                                            <label
                                                class="inline-flex items-center px-4 py-2.5 rounded-lg border border-gray-300 bg-white cursor-pointer hover:bg-gray-50 transition-colors text-sm font-medium">
                                                <input type="radio" name="pernah_menteri" value="0"
                                                    class="mr-2 text-primary focus:ring-primary">
                                                Tidak Pernah
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            {{-- Section: Karir & Pendidikan --}}
                            <div class="mb-6 sm:mb-8">
                                <h3
                                    class="text-sm sm:text-base font-bold text-gray-700 mb-4 sm:mb-5 uppercase tracking-wide">
                                    Karir & Pendidikan</h3>
                                <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 sm:gap-5">

                                    {{-- DPR/MPR --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            DPR / MPR <span class="text-red-500">*</span>
                                        </label>
                                        <select id="master-dpr" name="dpr_mpr_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"
                                            required></select>
                                    </div>

                                    {{-- Militer/Polisi --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Latar Militer / Polisi <span class="text-red-500">*</span>
                                        </label>
                                        <select id="master-militer" name="militer_polisi_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"
                                            required></select>
                                    </div>

                                    {{-- Lokasi SMA --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Lokasi SMA <span class="text-red-500">*</span>
                                        </label>
                                        <select id="master-lokasi-sma" name="lokasi_sma_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"
                                            required></select>
                                    </div>

                                    {{-- Lokasi S1 --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Lokasi S1 <span class="text-red-500">*</span>
                                        </label>
                                        <select id="master-lokasi-s1" name="lokasi_s1_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"
                                            required></select>
                                    </div>

                                    {{-- Lokasi S2 --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">Lokasi
                                            S2</label>
                                        <select id="master-lokasi-s2" name="lokasi_s2_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"></select>
                                    </div>

                                    {{-- Lokasi S3 --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">Lokasi
                                            S3</label>
                                        <select id="master-lokasi-s3" name="lokasi_s3_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"></select>
                                    </div>

                                    {{-- Pendidikan S1 --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Jurusan / Bidang S1 <span class="text-red-500">*</span>
                                        </label>
                                        <select id="master-pendidikan-s1" name="pendidikan_s1_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"
                                            required></select>
                                    </div>

                                    {{-- Pendidikan S2/S3 --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">Jurusan
                                            S2 /
                                            S3</label>
                                        <select id="master-pendidikan-s2s3" name="pendidikan_s2s3_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"></select>
                                    </div>
                                </div>
                            </div>

                            {{-- Section: Lainnya --}}
                            <div class="mb-6 sm:mb-8">
                                <h3
                                    class="text-sm sm:text-base font-bold text-gray-700 mb-4 sm:mb-5 uppercase tracking-wide">
                                    Lainnya</h3>
                                <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 sm:gap-5">

                                    {{-- Korupsi --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Level Korupsi <span class="text-red-500">*</span>
                                        </label>
                                        <select id="master-korupsi" name="korupsi_level_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"
                                            required></select>
                                    </div>

                                    {{-- Harta --}}
                                    <div class="sm:col-span-1">
                                        <label class="font-semibold text-sm sm:text-base mb-2 block text-gray-700">
                                            Level Harta <span class="text-red-500">*</span>
                                        </label>
                                        <select id="master-harta" name="harta_level_id"
                                            class="text-sm sm:text-base w-full px-4 py-3 rounded-lg border border-gray-300 bg-white focus:border-primary focus:ring-2 focus:ring-primary/20 transition-all outline-none"
                                            required></select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    {{-- Footer Actions --}}
                    <div
                        class="flex flex-col sm:flex-row gap-3 justify-end px-5 sm:px-6 py-4 sm:py-5 border-t border-gray-200 bg-gray-50/50">
                        <button type="button"
                            class="rounded-full bg-white text-gray-700 border-2 border-gray-300 w-full sm:w-auto order-1 sm:order-2 min-w-[120px] px-5 py-3 font-semibold text-sm sm:text-base transition-all duration-200 inline-flex items-center justify-center cursor-pointer hover:border-gray-400 hover:bg-gray-50 active:scale-[0.98]"
                            onclick="closeModal('modalAddData')">
                            Batal
                        </button>
                        <button type="submit"
                            class="rounded-full bg-primary text-white w-full sm:w-auto order-2 sm:order-1 min-w-[120px] px-5 py-3 font-semibold text-sm sm:text-base border-0 transition-all duration-200 inline-flex items-center justify-center cursor-pointer gap-2 shadow-[0_4px_12px_rgba(0,163,255,0.25)] hover:-translate-y-0.5 hover:brightness-110 hover:shadow-[0_6px_16px_rgba(0,163,255,0.35)] active:scale-[0.98] active:translate-y-0">
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7">
                                </path>
                            </svg>
                            Simpan
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
