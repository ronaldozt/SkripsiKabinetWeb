<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

use App\Models\Menteri;
use App\Models\DetailMenteri;
use App\Models\MasterProvinsi;
use App\Models\MasterPendidikan;
use App\Services\UmapService;

class MenteriController extends Controller
{
    public function store(Request $request, UmapService $umapService)
    {
        $validated = $request->validate([
            'nama' => ['required','string','max:255'],

            // foto mode dari modal
            'foto_mode' => ['nullable','in:url,file'],
            'foto_path' => ['nullable','string'],
            'foto_file' => ['nullable','image','max:2048'],

            // master wajib
            'kementerian_id'     => ['required','integer'],
            'jenis_kelamin_id'   => ['required','integer'],
            'provinsi_lahir_id'  => ['required','integer'],
            'umur_kategori_id'   => ['required','integer'],
            'partai_id'          => ['required','integer'],
            'jabatan_rangkap_id' => ['required','integer'],
            'dpr_mpr_id'         => ['required','integer'],
            'militer_polisi_id'  => ['required','integer'],

            'lokasi_sma_id'      => ['required','integer'],
            'lokasi_s1_id'       => ['required','integer'],
            'lokasi_s2_id'       => ['nullable','integer'],
            'lokasi_s3_id'       => ['nullable','integer'],

            'pendidikan_s1_id'   => ['required','integer'],
            'pendidikan_s2s3_id' => ['nullable','integer'],

            'korupsi_level_id'   => ['required','integer'],
            'harta_level_id'     => ['required','integer'],

            'pernah_menteri'     => ['required','in:0,1'],

            // Detail fields (optional)
            'tempat_lahir'       => ['nullable','string','max:255'],
            'tanggal_lahir'      => ['nullable','date'],
            'umur_tahun'         => ['nullable','integer','min:0','max:150'],
            'almamater_sma'      => ['nullable','string','max:255'],
            'almamater_s1'       => ['nullable','string','max:255'],
            'almamater_s2'       => ['nullable','string','max:255'],
            'almamater_s3'       => ['nullable','string','max:255'],
            'kekayaan_rp'        => ['nullable','string'], // akan di-parse jadi integer
            'status_hukum'        => ['nullable','string','max:255'],
            'jabatan'            => ['nullable','string','max:255'], // akan masuk ke catatan
        ]);

        // ========= FOTO HANDLER =========
        $fotoPath = null;

        if (($validated['foto_mode'] ?? null) === 'url') {
            $request->validate([
                'foto_path' => ['required','url']
            ]);
            $fotoPath = $validated['foto_path'];
        }

        if (($validated['foto_mode'] ?? null) === 'file') {
            $request->validate([
                'foto_file' => ['required','image','max:2048']
            ]);

            $file = $request->file('foto_file');
            $name = Str::uuid().'.'.$file->getClientOriginalExtension();
            $stored = $file->storeAs('public/foto-menteri', $name);
            $fotoPath = Storage::url($stored);
        }

        // ========= FALLBACK NULLABLE =========
        $prov0 = MasterProvinsi::where('kode_umap', 0)->value('id');
        $pend0 = MasterPendidikan::where('jenjang_default','s2s3')
            ->where('kode_umap', 0)
            ->value('id');

        $lokasiS2 = empty($validated['lokasi_s2_id']) || $validated['lokasi_s2_id'] == 0
            ? $prov0
            : $validated['lokasi_s2_id'];

        $lokasiS3 = empty($validated['lokasi_s3_id']) || $validated['lokasi_s3_id'] == 0
            ? $prov0
            : $validated['lokasi_s3_id'];

        $pendS2S3 = empty($validated['pendidikan_s2s3_id']) || $validated['pendidikan_s2s3_id'] == 0
            ? $pend0
            : $validated['pendidikan_s2s3_id'];

        // ========= INSERT =========
        $menteri = Menteri::create([
            'nama'              => $validated['nama'],
            'foto_path'         => $fotoPath,

            'kementerian_id'     => $validated['kementerian_id'],
            'jenis_kelamin_id'   => $validated['jenis_kelamin_id'],
            'provinsi_lahir_id'  => $validated['provinsi_lahir_id'],
            'umur_kategori_id'   => $validated['umur_kategori_id'],
            'partai_id'          => $validated['partai_id'],
            'jabatan_rangkap_id' => $validated['jabatan_rangkap_id'],

            'pernah_menteri'     => (int)$validated['pernah_menteri'],

            'dpr_mpr_id'         => $validated['dpr_mpr_id'],
            'militer_polisi_id'  => $validated['militer_polisi_id'],

            'lokasi_sma_id'      => $validated['lokasi_sma_id'],
            'lokasi_s1_id'       => $validated['lokasi_s1_id'],
            'lokasi_s2_id'       => $lokasiS2,
            'lokasi_s3_id'       => $lokasiS3,

            'pendidikan_s1_id'   => $validated['pendidikan_s1_id'],
            'pendidikan_s2s3_id' => $pendS2S3,

            'korupsi_level_id'   => $validated['korupsi_level_id'],
            'harta_level_id'     => $validated['harta_level_id'],

            // ✅ publik langsung masuk approved
            'status'             => 'approved',
            'submitted_by_ip'    => $request->ip(),
        ]);

        // ========= INSERT DETAIL =========
        // Parse tanggal lahir dari dd/mm/yyyy ke Y-m-d
        $tanggalLahir = null;
        if (!empty($validated['tanggal_lahir'])) {
            try {
                // Coba parse berbagai format
                $dateStr = $validated['tanggal_lahir'];
                if (preg_match('/^(\d{2})\/(\d{2})\/(\d{4})$/', $dateStr, $matches)) {
                    // Format dd/mm/yyyy
                    $tanggalLahir = \Carbon\Carbon::createFromFormat('d/m/Y', $dateStr)->format('Y-m-d');
                } else {
                    // Coba parse dengan Carbon langsung
                    $tanggalLahir = \Carbon\Carbon::parse($dateStr)->format('Y-m-d');
                }
            } catch (\Throwable $e) {
                \Log::warning("Gagal parse tanggal lahir: {$validated['tanggal_lahir']}");
            }
        }

        // Parse kekayaan dari string ke integer (hapus titik/koma)
        $kekayaanRp = null;
        if (!empty($validated['kekayaan_rp'])) {
            $kekayaanRp = (int) preg_replace('/\D+/', '', $validated['kekayaan_rp']);
        }

        // Gabungkan jabatan ke catatan jika ada
        $catatan = null;
        if (!empty($validated['jabatan'])) {
            $catatan = trim($validated['jabatan']);
        }

        DetailMenteri::create([
            'menteri_id'     => $menteri->id,
            'tempat_lahir'   => $validated['tempat_lahir'] ?? null,
            'tanggal_lahir'  => $tanggalLahir,
            'umur_tahun'     => $validated['umur_tahun'] ?? null,
            'almamater_sma'  => $validated['almamater_sma'] ?? null,
            'almamater_s1'   => $validated['almamater_s1'] ?? null,
            'almamater_s2'   => $validated['almamater_s2'] ?? null,
            'almamater_s3'   => $validated['almamater_s3'] ?? null,
            'kekayaan_rp'    => $kekayaanRp,
            'status_hukum'   => $validated['status_hukum'] ?? null,
            'catatan'        => $catatan,
        ]);

        // ========= RECOMPUTE FULL =========
        try {
            $umapService->recomputeAll(); 
        } catch (\Throwable $e) {
            \Log::error("UMAP recompute gagal setelah insert menteri {$menteri->id}: ".$e->getMessage());
            // tetap lanjut redirect, biar user gak error
        }

        // Return JSON untuk AJAX request
        if ($request->ajax() || $request->wantsJson()) {
            return response()->json([
                'success' => true,
                'message' => 'Data berhasil ditambahkan dan UMAP sudah diperbarui.',
                'data' => [
                    'id' => $menteri->id,
                    'nama' => $menteri->nama,
                ]
            ]);
        }

        return redirect('/')
            ->with('success', 'Data berhasil ditambahkan dan UMAP sudah diperbarui.');
    }
}
