<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Services\UmapService;
use Illuminate\Http\Request;

class UmapConfigController extends Controller
{
    public function update(Request $request, UmapService $umapService)
    {
        $validated = $request->validate([
            'nNeighbors' => 'required|integer|min:2|max:200',
            'minDist' => 'required|numeric|min:0|max:1',
            'randomState' => 'required|integer|min:0',
        ]);

        try {
            $umapService->recomputeAll(
                null,
                2,
                $validated['nNeighbors'],
                $validated['minDist'],
                $validated['randomState']
            );

            return response()->json([
                'success' => true,
                'message' => 'UMAP berhasil di-recompute dengan parameter baru.',
                'parameters' => $validated
            ]);
        } catch (\Exception $e) {
            \Log::error('UMAP recompute error: ' . $e->getMessage());
            
            return response()->json([
                'success' => false,
                'message' => 'Gagal recompute UMAP: ' . $e->getMessage()
            ], 500);
        }
    }
}
