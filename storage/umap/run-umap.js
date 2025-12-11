// storage/umap/run-umap.js
import fs from "fs";
import { UMAP } from "umap-js";

const inputPath = process.argv[2];
const outputPath = process.argv[3];
const rows = JSON.parse(fs.readFileSync(inputPath, "utf8"));

// Langsung pakai features dari Laravel (sudah urut sesuai cobaUmap.js)
const features = rows.map((r) => r.features);

// Parameter UMAP dari command line (opsional, default seperti sebelumnya)
// Format: node run-umap.js input.json output.json nNeighbors minDist randomState
// Dimensi kita kunci ke 2D untuk visualisasi.
const nComponents = 2;
const nNeighbors = parseInt(process.argv[4]) || 10;
const minDist = parseFloat(process.argv[5]) || 0.1;
const randomState = parseInt(process.argv[6]) || 42;

// Config UMAP dengan parameter dinamis
const umap = new UMAP({
    nComponents: nComponents,
    nNeighbors: nNeighbors,
    minDist: minDist,
    randomState: randomState,
});

// Method seperti cobaUmap.js
const nEpochs = umap.initializeFit(features);
for (let i = 0; i < nEpochs; i++) {
    umap.step();
}
const embedding = umap.getEmbedding();

// Output
const out = rows.map((r, i) => ({
    id: r.id,
    umap_x: embedding[i][0],
    umap_y: embedding[i][1],
}));

fs.writeFileSync(outputPath, JSON.stringify(out));
console.log("UMAP DONE. rows:", out.length, "params:", {
    nComponents,
    nNeighbors,
    minDist,
    randomState,
});
