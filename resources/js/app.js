import * as d3 from "d3";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import tippy from "tippy.js";
import "tippy.js/dist/tippy.css";

/* =========================================================
   MASTER LOADER (untuk modal tambah data)
   Ambil dari /api/masters
========================================================= */
async function loadMasters() {
    try {
        const res = await fetch("/api/masters");
        const m = await res.json();

        const fillSelect = (
            el,
            items,
            labelKey = "label",
            extraFirst = null
        ) => {
            if (!el) return;
            el.innerHTML = "";

            if (extraFirst) {
                const opt0 = document.createElement("option");
                opt0.value = extraFirst.value;
                opt0.textContent = extraFirst.text;
                el.appendChild(opt0);
            }

            (items || []).forEach((it) => {
                const opt = document.createElement("option");
                opt.value = it.id;
                opt.textContent =
                    it[labelKey] ??
                    it.nama ??
                    it.nama_kementerian ??
                    it.nama_partai ??
                    it.label_jurusan ??
                    "-";
                el.appendChild(opt);
            });
        };

        // SELECTS
        fillSelect(
            document.getElementById("master-kementerian"),
            m.kementerian,
            "nama_kementerian"
        );
        fillSelect(
            document.getElementById("master-provinsi-lahir"),
            m.provinsi,
            "nama"
        );
        fillSelect(
            document.getElementById("master-umur"),
            m.umur_kategori,
            "label"
        );
        fillSelect(
            document.getElementById("master-partai"),
            m.partai,
            "nama_partai"
        );
        fillSelect(
            document.getElementById("master-jabatan-rangkap"),
            m.jabatan_rangkap,
            "label"
        );
        fillSelect(document.getElementById("master-dpr"), m.dpr_mpr, "label");
        fillSelect(
            document.getElementById("master-militer"),
            m.militer_polisi,
            "label"
        );

        // Lokasi (provinsi)
        fillSelect(
            document.getElementById("master-lokasi-sma"),
            m.provinsi,
            "nama"
        );
        fillSelect(
            document.getElementById("master-lokasi-s1"),
            m.provinsi,
            "nama"
        );

        fillSelect(
            document.getElementById("master-lokasi-s2"),
            m.provinsi,
            "nama",
            { value: 0, text: "Tidak Ada / Default" }
        );
        fillSelect(
            document.getElementById("master-lokasi-s3"),
            m.provinsi,
            "nama",
            { value: 0, text: "Tidak Ada / Default" }
        );

        // Pendidikan
        fillSelect(
            document.getElementById("master-pendidikan-s1"),
            m.pendidikan_umum,
            "label_jurusan"
        );
        fillSelect(
            document.getElementById("master-pendidikan-s2s3"),
            m.pendidikan_s2s3,
            "label_jurusan",
            { value: 0, text: "Tidak Ada / Default" }
        );

        // Korupsi & Harta
        fillSelect(
            document.getElementById("master-korupsi"),
            m.korupsi_level,
            "label"
        );
        fillSelect(
            document.getElementById("master-harta"),
            m.harta_level,
            "label"
        );

        // RADIO JK
        const jkWrap = document.getElementById("master-jk");
        if (jkWrap) {
            jkWrap.innerHTML = "";
            (m.jenis_kelamin || []).forEach((jk) => {
                const lab = document.createElement("label");
                lab.className =
                    "inline-flex items-center px-4 py-2.5 rounded-lg border border-gray-300 bg-white cursor-pointer hover:bg-gray-50 transition-colors text-sm font-medium";
                lab.innerHTML = `
          <input type="radio" name="jenis_kelamin_id" value="${jk.id}" required class="mr-2 text-primary focus:ring-primary">
          ${jk.label}
        `;
                jkWrap.appendChild(lab);
            });
        }
    } catch (err) {
        console.error("loadMasters error:", err);
    }
}
loadMasters();

// switch foto mode url / file
document.addEventListener("change", (e) => {
    if (!e.target.matches("input[name='foto_mode']")) return;

    const mode = e.target.value;
    const urlWrap = document.getElementById("fotoUrlWrap");
    const fileWrap = document.getElementById("fotoFileWrap");

    if (!urlWrap || !fileWrap) return;

    if (mode === "file") {
        urlWrap.classList.add("hidden");
        fileWrap.classList.remove("hidden");
    } else {
        fileWrap.classList.add("hidden");
        urlWrap.classList.remove("hidden");
    }
});

// ===== DATE PICKER SETUP =====
let tanggalLahirPicker = null;

function initDatePicker() {
    const tanggalLahirInput = document.getElementById("tanggal_lahir_input");
    if (tanggalLahirInput && !tanggalLahirPicker) {
        tanggalLahirPicker = flatpickr(tanggalLahirInput, {
            dateFormat: "d/m/Y",
            locale: {
                firstDayOfWeek: 1,
                weekdays: {
                    shorthand: [
                        "Min",
                        "Sen",
                        "Sel",
                        "Rab",
                        "Kam",
                        "Jum",
                        "Sab",
                    ],
                    longhand: [
                        "Minggu",
                        "Senin",
                        "Selasa",
                        "Rabu",
                        "Kamis",
                        "Jumat",
                        "Sabtu",
                    ],
                },
                months: {
                    shorthand: [
                        "Jan",
                        "Feb",
                        "Mar",
                        "Apr",
                        "Mei",
                        "Jun",
                        "Jul",
                        "Agu",
                        "Sep",
                        "Okt",
                        "Nov",
                        "Des",
                    ],
                    longhand: [
                        "Januari",
                        "Februari",
                        "Maret",
                        "April",
                        "Mei",
                        "Juni",
                        "Juli",
                        "Agustus",
                        "September",
                        "Oktober",
                        "November",
                        "Desember",
                    ],
                },
            },
            allowInput: true,
            clickOpens: true,
            defaultDate: null,
            maxDate: "today",
        });
    }
}

// Initialize saat DOM ready
if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", () => {
        setTimeout(initDatePicker, 100);
    });
} else {
    setTimeout(initDatePicker, 100);
}

// Re-initialize saat modal dibuka
const modalAddData = document.getElementById("modalAddData");
if (modalAddData) {
    const observer = new MutationObserver((mutations) => {
        mutations.forEach((mutation) => {
            if (
                mutation.type === "attributes" &&
                mutation.attributeName === "class"
            ) {
                const isHidden = modalAddData.classList.contains("hidden");
                if (!isHidden) {
                    setTimeout(() => {
                        if (tanggalLahirPicker) {
                            tanggalLahirPicker.destroy();
                            tanggalLahirPicker = null;
                        }
                        initDatePicker();
                    }, 100);
                }
            }
        });
    });
    observer.observe(modalAddData, {
        attributes: true,
        attributeFilter: ["class"],
    });
}

/* =========================================================
   UMAP + DETAIL + COMPARE ONEPAGE
========================================================= */
(async function () {
    const canvas = document.getElementById("umap-canvas");
    if (!canvas) return;

    // elemen dock & layout (dibuat null-safe)
    const dockLeft = document.getElementById("dock-left");
    const dockCompare = document.getElementById("dock-compare");
    const layout = document.getElementById("umap-layout");
    const hintLocked = document.getElementById("hint-locked");
    const hintCompare = document.getElementById("hint-compare");

    const btnCompare = document.getElementById("btnCompare");
    const btnExitCompare = document.getElementById("btnExitCompare");
    const btnResetCompare = document.getElementById("btnResetCompare");
    const btnCloseDetail = document.getElementById("btnCloseDetail");

    // Expose ke global scope untuk onclick fallback
    window.dockLeft = dockLeft;
    window.layout = layout;

    const width = canvas.clientWidth;
    const height = canvas.clientHeight;

    // helper display aman
    const disp = (v) => (v === null || v === undefined || v === "" ? "-" : v);

    // ✅ format angka rupiah dengan titik pemisah ribuan
    const formatRupiah = (value) => {
        if (value === null || value === undefined || value === "") return "-";

        // Jika value sudah berupa string angka atau number
        const numStr = String(value).replace(/\D/g, ""); // hapus semua non-digit
        if (!numStr || numStr === "0") return "-";

        // Tambahkan titik pemisah ribuan
        return numStr.replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    };

    // helper precedence: detail menang, fallback ke base
    const pick = (detailVal, baseVal, fallback = "-") => {
        if (detailVal !== null && detailVal !== undefined && detailVal !== "")
            return detailVal;
        if (baseVal !== null && baseVal !== undefined && baseVal !== "")
            return baseVal;
        return fallback;
    };

    // umur display: detail (display_umur_tahun / umur_tahun) menang
    const dispUmur = (d) => {
        // kalau API kasih display_umur_tahun, pakai itu
        if (
            d.display_umur_tahun !== null &&
            d.display_umur_tahun !== undefined &&
            d.display_umur_tahun !== ""
        )
            return d.display_umur_tahun;

        // fallback angka umur_tahun mentah
        if (
            d.umur_tahun !== null &&
            d.umur_tahun !== undefined &&
            d.umur_tahun !== ""
        )
            return `${d.umur_tahun} Tahun`;

        // terakhir umur kategori
        return disp(d.umur);
    };

    // SVG root
    const svg = d3
        .select(canvas)
        .append("svg")
        .attr("width", width)
        .attr("height", height);

    const g = svg.append("g").attr("class", "zoom-layer");

    // Fetch data UMAP
    const res = await fetch("/api/menteri");
    const raw = await res.json();

    const data = (raw || []).filter(
        (d) => Number.isFinite(+d.umap_x) && Number.isFinite(+d.umap_y)
    );

    if (!data.length) {
        canvas.innerHTML =
            "<div class='text-center p-5' style='color:var(--muted)'>Data UMAP belum tersedia</div>";
        return;
    }

    // scale
    const x = d3
        .scaleLinear()
        .domain(d3.extent(data, (d) => +d.umap_x))
        .nice()
        .range([30, width - 30]);

    const y = d3
        .scaleLinear()
        .domain(d3.extent(data, (d) => +d.umap_y))
        .nice()
        .range([height - 30, 30]);

    // palette fallback (tanpa hitam)
    const palette = [
        "#FF6384",
        "#36A2EB",
        "#FFCE56",
        "#4BC0C0",
        "#9966FF",
        "#FF9F40",
        "#00C49A",
        "#F15BB5",
        "#00BBF9",
        "#9BDEAC",
    ];

    const sanitizeColor = (hex) => {
        if (!hex) return null;
        const c = String(hex).toLowerCase().trim();
        if (c === "#000" || c === "#000000" || c === "black") return null;
        return c;
    };

    const getColor = (d, i) =>
        sanitizeColor(d.color_code) || palette[i % palette.length];

    let lockedId = null;
    let tipInstance = null;

    // compare mode state
    let compareMode = false;
    let compareIds = []; // max 2

    // hover template (pakai display + dispUmur)
    const hoverTemplate = (d, color) => `
    <div style="width:320px; background:${color}; border-radius:12px; padding:8px;">
      <div class="hover-glass">
        <div style="display:flex; gap:8px; align-items:center; margin-bottom:6px;">
          <div style="flex:1;">
            <div style="font-weight:900; font-size:1rem;">${disp(d.nama)}</div>
            <div style="font-size:.84rem; color:#475569;">${disp(
                d.catatan
            )}</div>
          </div>
          <img src="${d.foto_url || ""}"
               onerror="this.style.display='none'"
               style="width:44px;height:44px;border-radius:10px;object-fit:cover;background:#fff;">
        </div>

        <div class="tooltip-kv">
          <div class="k">Jenis Kelamin</div><div class="v">${disp(
              d.jenis_kelamin
          )}</div>
          <div class="k">Umur</div><div class="v">${dispUmur(d)}</div>
          <div class="k">Partai</div><div class="v">${disp(d.partai)}</div>
          <div class="k">Bidang S1</div><div class="v">${disp(
              d.pendidikan_s1
          )}</div>
        </div>

        <div style="margin-top:6px; font-size:.75rem; color:#475569;">
          ${
              compareMode
                  ? "Klik untuk memilih compare"
                  : "Klik titik untuk kunci & lihat detail"
          }
        </div>
      </div>
    </div>
  `;

    function showHover(d, node, color) {
        if (lockedId && lockedId !== d.id) return;
        if (tipInstance) tipInstance.destroy();

        tipInstance = tippy(node, {
            content: hoverTemplate(d, color),
            allowHTML: true,
            interactive: false,
            trigger: "manual",
            theme: "umap-hover",
            placement: "right-start",
            appendTo: document.body,
            popperOptions: {
                modifiers: [
                    { name: "offset", options: { offset: [8, 8] } },
                    { name: "preventOverflow", options: { padding: 8 } },
                    {
                        name: "flip",
                        options: {
                            fallbackPlacements: ["left-start", "top", "bottom"],
                        },
                    },
                ],
            },
        });

        tipInstance.show();
    }

    // DETAIL FULL (pakai display_* dan precedence detail menang)
    function renderFullCard(d, color) {
        if (!dockLeft) return;

        // set accent buat css dock putih + border warna
        dockLeft.style.setProperty("--dock-accent", color);
        const isMobile = window.innerWidth < 1024; // < lg breakpoint
        // Tampilkan dock: di mobile sebagai overlay full, di desktop tetap di tempatnya
        dockLeft.classList.remove("hidden");
        dockLeft.classList.remove("dock-left--hidden");
        if (isMobile) {
            dockLeft.dataset.mobileActive = "1";
            dockLeft.style.position = "fixed";
            dockLeft.style.inset = "0";
            dockLeft.style.zIndex = "50";
            dockLeft.style.maxHeight = "100vh";
            dockLeft.style.overflowY = "auto";
            dockLeft.style.margin = "0";
            dockLeft.style.width = "100%";
            dockLeft.style.borderRadius = "0";
            dockLeft.style.border = "none";
            dockLeft.style.padding = "16px";
            dockLeft.style.background =
                dockLeft.style.getPropertyValue("--dock-accent") || "#00a3ff";
        } else {
            dockLeft.dataset.mobileActive = "0";
            dockLeft.style.position = "";
            dockLeft.style.inset = "";
            dockLeft.style.zIndex = "";
            dockLeft.style.maxHeight = "";
            dockLeft.style.overflowY = "";
            dockLeft.style.margin = "";
            dockLeft.style.width = "";
            dockLeft.style.borderRadius = "";
            dockLeft.style.border = "";
            dockLeft.style.padding = "";
            dockLeft.style.background = "";
        }

        dockLeft.innerHTML = `
      <div class="detail-head">
        <img class="detail-photo" src="${
            d.foto_url || ""
        }" onerror="this.style.display='none'">
        <button id="btnCloseDetailInner" class="detail-close">×</button>
      </div>

      <div class="detail-title">${disp(d.nama)}</div>
      <div class="detail-sub">${disp(d.catatan)}</div>

      <div class="detail-scroll">
        <div class="kv">
          <div class="k">Jenis Kelamin</div><div class="v">${disp(
              d.jenis_kelamin
          )}</div>

          <div class="k">Tempat Lahir</div><div class="v">${pick(
              d.display_tempat_lahir,
              d.provinsi_lahir
          )}</div>
          <div class="k">Tanggal Lahir</div><div class="v">${disp(
              d.display_tanggal_lahir
          )}</div>
          <div class="k">Umur (Tahun)</div><div class="v">${dispUmur(d)}</div>

          <div class="k">Provinsi Lahir</div><div class="v">${disp(
              d.provinsi_lahir
          )}</div>

          <div class="k">Partai</div><div class="v">${disp(d.partai)}</div>
          <div class="k">Jabatan Rangkap</div><div class="v">${disp(
              d.jabatan_rangkap
          )}</div>

          <div class="k">Karir DPR/MPR</div><div class="v">${disp(
              d.dpr_mpr
          )}</div>
          <div class="k">Karir Mil/Pol</div><div class="v">${disp(
              d.militer_polisi
          )}</div>
          <div class="k">Almamater SMA</div><div class="v">${disp(
              d.display_almamater_sma
          )}</div>
          <div class="k">Almamater S1</div><div class="v">${disp(
              d.display_almamater_s1
          )}</div>
          <div class="k">Almamater S2</div><div class="v">${disp(
              d.display_almamater_s2
          )}</div>
          <div class="k">Almamater S3</div><div class="v">${disp(
              d.display_almamater_s3
          )}</div>

          <div class="k">Bidang S1</div><div class="v">${disp(
              d.pendidikan_s1
          )}</div>
          <div class="k">Bidang S2/S3</div><div class="v">${disp(
              d.pendidikan_s2s3
          )}</div>


          <div class="k">Status Hukum</div><div class="v">${disp(
              d.display_status_hukum
          )}</div>
          <div class="k">Kekayaan (Rp)</div><div class="v">${formatRupiah(
              d.display_kekayaan_rp
          )}</div>
        </div>
      </div>
    `;

        dockLeft.classList.remove("dock-left--hidden");
        layout?.classList.remove("umap-layout--onecol");
        hintLocked && (hintLocked.style.display = "inline-flex");

        dockLeft
            .querySelector("#btnCloseDetailInner")
            ?.addEventListener("click", closeDetailDock);
    }

    function closeDetailDock() {
        if (!dockLeft) return;

        lockedId = null;

        // Trigger animasi dengan menambahkan class hidden
        dockLeft.classList.add("dock-left--hidden");
        dockLeft.classList.add("hidden");
        layout?.classList.add("umap-layout--onecol");
        hintLocked && (hintLocked.style.display = "none");

        // Reset styling overlay mobile
        dockLeft.dataset.mobileActive = "0";
        dockLeft.style.position = "";
        dockLeft.style.inset = "";
        dockLeft.style.zIndex = "";
        dockLeft.style.maxHeight = "";
        dockLeft.style.overflowY = "";
        dockLeft.style.margin = "";
        dockLeft.style.width = "";
        dockLeft.style.borderRadius = "";
        dockLeft.style.border = "";
        dockLeft.style.padding = "";
        dockLeft.style.background = "";

        // Reset nodes setelah animasi
        nodes
            .attr("fill", (n, i) => getColor(n, i))
            .attr("r", 5)
            .attr("opacity", 0.9);
    }

    // Expose ke global scope untuk onclick fallback
    window.closeDetailDock = closeDetailDock;

    // COMPARE DOCK (pakai display_* juga)
    function renderCompareDock() {
        const grid = document.getElementById("compareGrid");
        if (!grid) return;

        const selected = compareIds
            .map((id) => data.find((d) => d.id === id))
            .filter(Boolean);

        if (selected.length < 2) {
            dockCompare?.classList.add("dock-compare--hidden", "hidden");
            dockCompare?.classList.remove("flex", "flex-col");
            return;
        }

        const leftD = selected[0];
        const rightD = selected[1];
        const leftColor = getColor(leftD, data.indexOf(leftD));
        const rightColor = getColor(rightD, data.indexOf(rightD));

        const fields = [
            {
                label: "Jenis Kelamin",
                a: leftD.jenis_kelamin,
                b: rightD.jenis_kelamin,
            },
            {
                label: "Tempat Lahir",
                a: leftD.display_tempat_lahir,
                b: rightD.display_tempat_lahir,
            },
            {
                label: "Tanggal Lahir",
                a: leftD.display_tanggal_lahir,
                b: rightD.display_tanggal_lahir,
            },
            { label: "Umur (Tahun)", a: dispUmur(leftD), b: dispUmur(rightD) },
            {
                label: "Provinsi Lahir",
                a: leftD.provinsi_lahir,
                b: rightD.provinsi_lahir,
            },
            { label: "Partai", a: leftD.partai, b: rightD.partai },
            {
                label: "Jabatan Rangkap",
                a: leftD.jabatan_rangkap,
                b: rightD.jabatan_rangkap,
            },
            { label: "Karir DPR/MPR", a: leftD.dpr_mpr, b: rightD.dpr_mpr },
            {
                label: "Karir Mil/Pol",
                a: leftD.militer_polisi,
                b: rightD.militer_polisi,
            },
            {
                label: "Almamater SMA",
                a: leftD.display_almamater_sma,
                b: rightD.display_almamater_sma,
            },
            {
                label: "Almamater S1",
                a: leftD.display_almamater_s1,
                b: rightD.display_almamater_s1,
            },
            {
                label: "Almamater S2",
                a: leftD.display_almamater_s2,
                b: rightD.display_almamater_s2,
            },
            {
                label: "Almamater S3",
                a: leftD.display_almamater_s3,
                b: rightD.display_almamater_s3,
            },
            {
                label: "Bidang S1",
                a: leftD.pendidikan_s1,
                b: rightD.pendidikan_s1,
            },
            {
                label: "Bidang S2/S3",
                a: leftD.pendidikan_s2s3,
                b: rightD.pendidikan_s2s3,
            },
            {
                label: "Status Hukum",
                a: leftD.display_status_hukum,
                b: rightD.display_status_hukum,
            },
            {
                label: "Kekayaan (Rp)",
                a: formatRupiah(leftD.display_kekayaan_rp),
                b: formatRupiah(rightD.display_kekayaan_rp),
            },
        ];

        const renderCell = (value, badge, colorHex) => `
      <div class="compare-cell" style="display:flex;flex-direction:column;gap:6px;">
        <span class="compare-badge" style="
          display:inline-block;
          align-self:flex-start;
          padding:4px 10px;
          border-radius:9999px;
          background:${colorHex || "#0ea5e9"};
          color:#fff;
          font-weight:700;
          font-size:.72rem;
          letter-spacing:0.02em;
        ">${badge}</span>
        <div class="compare-value">${disp(value)}</div>
      </div>
    `;

        // Desktop: 3-column layout (left | label | right)
        const rowsDesktop = fields
            .map(
                (f) => `
      ${renderCell(f.a, "Menteri 1", leftColor)}
      <div class="compare-label">${f.label}</div>
      ${renderCell(f.b, "Menteri 2", rightColor)}
    `
            )
            .join("");

        // Mobile: Card per field with label and side-by-side values
        const rowsMobile = fields
            .map(
                (f) => `
      <div class="compare-field-mobile">
        <div class="compare-label">${f.label}</div>
        <div class="compare-values-mobile">
          ${renderCell(f.a, "Menteri 1", leftColor)}
          ${renderCell(f.b, "Menteri 2", rightColor)}
        </div>
      </div>
    `
            )
            .join("");

        grid.innerHTML = `
      <div class="compare-wrap">
        <div class="compare-head">
          <div class="compare-side" style="background:${leftColor}">
            <div class="compare-side-badge">Menteri 1</div>
            <div class="compare-side-inner">
              <img class="compare-photo" src="${
                  leftD.foto_url || ""
              }" onerror="this.style.display='none'">
              <div class="compare-info">
                <div class="compare-side-badge compare-side-badge-mobile">Menteri 1</div>
                <div class="compare-name">${disp(leftD.nama)}</div>
                <div class="compare-sub">${disp(leftD.catatan)}</div>
              </div>
            </div>
          </div>

          <div class="compare-mid"></div>

          <div class="compare-side" style="background:${rightColor}">
            <div class="compare-side-badge">Menteri 2</div>
            <div class="compare-side-inner">
              <img class="compare-photo" src="${
                  rightD.foto_url || ""
              }" onerror="this.style.display='none'">
              <div class="compare-info">
                <div class="compare-side-badge compare-side-badge-mobile">Menteri 2</div>
                <div class="compare-name">${disp(rightD.nama)}</div>
                <div class="compare-sub">${disp(rightD.catatan)}</div>
              </div>
            </div>
          </div>
        </div>

        <div class="compare-table compare-table-desktop">
          ${rowsDesktop}
        </div>
        <div class="compare-table compare-table-mobile">
          ${rowsMobile}
        </div>
      </div>
    `;

        dockCompare?.classList.remove("dock-compare--hidden", "hidden");
        dockCompare?.classList.add("flex", "flex-col");
    }

    function resetCompare() {
        compareIds = [];
        dockCompare?.classList.add("dock-compare--hidden", "hidden");
        dockCompare?.classList.remove("flex", "flex-col");
        nodes
            .attr("fill", (n, i) => getColor(n, i))
            .attr("opacity", 0.9)
            .attr("r", 5);
    }

    function enterCompareMode() {
        compareMode = true;
        lockedId = null;

        dockLeft?.classList.add("dock-left--hidden");
        layout?.classList.add("umap-layout--onecol");
        hintLocked && (hintLocked.style.display = "none");
        hintCompare && (hintCompare.style.display = "inline-flex");

        resetCompare();

        if (btnCompare) {
            btnCompare.textContent = "Mode Compare Aktif";
            btnCompare.classList.remove("bg-primary");
            btnCompare.classList.add("bg-green-500");
        }
    }

    function exitCompareMode() {
        compareMode = false;
        hintCompare && (hintCompare.style.display = "none");
        dockCompare?.classList.add("dock-compare--hidden");

        if (btnCompare) {
            btnCompare.textContent = "Bandingkan";
            btnCompare.classList.remove("bg-green-500");
            btnCompare.classList.add("bg-primary");
        }

        nodes
            .attr("fill", (n, i) => getColor(n, i))
            .attr("opacity", 0.9)
            .attr("r", 5);
    }

    // ===== dots =====
    const nodes = g
        .selectAll("circle")
        .data(data)
        .enter()
        .append("circle")
        .attr("cx", (d) => x(+d.umap_x))
        .attr("cy", (d) => y(+d.umap_y))
        .attr("r", 5)
        .attr("fill", (d, i) => getColor(d, i))
        .attr("opacity", 0.9)
        .style("cursor", "pointer")
        .classed("dot-user", (d) => {
            // Check berbagai kemungkinan flag untuk user input
            return (
                d.is_user_input === true ||
                d.is_user_input === 1 ||
                d.source === "user" ||
                d.submitted_by_ip !== null ||
                d.user_id !== null
            );
        });

    nodes
        .on("mouseenter", function (event, d) {
            const i = data.indexOf(d);
            const color = getColor(d, i);

            d3.select(this).attr("r", lockedId === d.id ? 8 : 7);
            showHover(d, this, color);
        })
        .on("mouseleave", function () {
            d3.select(this).attr("r", (n) => (lockedId === n.id ? 8 : 5));
            if (!lockedId && tipInstance) tipInstance.hide();
        })
        .on("click", function (event, d) {
            const i = data.indexOf(d);
            const color = getColor(d, i);

            // ===== compare mode click =====
            if (compareMode) {
                if (compareIds.includes(d.id)) {
                    compareIds = compareIds.filter((x) => x !== d.id);
                } else {
                    if (compareIds.length < 2) compareIds.push(d.id);
                    else compareIds[1] = d.id;
                }

                nodes
                    .attr("fill", (n, ii) =>
                        compareIds.includes(n.id) ? "#000000" : getColor(n, ii)
                    )
                    .attr("r", (n) => (compareIds.includes(n.id) ? 8 : 5))
                    .attr("opacity", (n) =>
                        compareIds.includes(n.id) ? 1 : 0.85
                    );

                if (compareIds.length === 2) renderCompareDock();
                else dockCompare?.classList.add("dock-compare--hidden");

                if (tipInstance) tipInstance.destroy();
                return;
            }

            // ===== normal lock click =====
            lockedId = d.id;

            nodes
                .attr("fill", (n, ii) =>
                    n.id === lockedId ? "#000000" : getColor(n, ii)
                )
                .attr("r", (n) => (n.id === lockedId ? 8 : 5));

            if (tipInstance) tipInstance.destroy();
            renderFullCard(d, color);
        });

    // ===== zoom & pan follow mouse =====
    const zoom = d3
        .zoom()
        .scaleExtent([0.7, 8])
        .on("zoom", (event) => {
            g.attr("transform", event.transform);
        });

    svg.call(zoom);
    svg.on("dblclick.zoom", null);
    svg.on("dblclick", () => {
        svg.transition().duration(250).call(zoom.transform, d3.zoomIdentity);
    });

    // ===== compare buttons =====
    btnCompare?.addEventListener("click", () => {
        if (!compareMode) enterCompareMode();
        else exitCompareMode();
    });

    btnExitCompare?.addEventListener("click", exitCompareMode);
    btnResetCompare?.addEventListener("click", resetCompare);

    // ===== close detail external button (kalau ada di blade) =====
    if (btnCloseDetail) {
        btnCloseDetail.addEventListener("click", function (e) {
            e.preventDefault();
            e.stopPropagation();
            closeDetailDock();
        });
    }

    // Fallback: juga attach ke button yang mungkin dibuat dinamis dengan event delegation
    document.addEventListener("click", function (e) {
        const target = e.target.closest("#btnCloseDetail");
        if (target) {
            e.preventDefault();
            e.stopPropagation();
            closeDetailDock();
        }
    });

    // Default: dock detail tersembunyi sampai user klik titik
    closeDetailDock();
})();

/* =========================================================
   MODAL FUNCTIONS (Tailwind)
   Pastikan fungsi tersedia di global scope untuk inline onclick
========================================================= */
window.openModal = function (modalId) {
    const modal = document.getElementById(modalId);
    if (modal) {
        modal.classList.remove("hidden");
        modal.classList.add("flex", "items-center", "justify-center");
        document.body.style.overflow = "hidden";
    }
};

window.closeModal = function (modalId) {
    const modal = document.getElementById(modalId);
    if (modal) {
        modal.classList.add("hidden");
        modal.classList.remove("flex", "items-center", "justify-center");
        document.body.style.overflow = "";
    }
};

window.closeModalOnBackdrop = function (event, modalId) {
    if (event.target.id === modalId) {
        window.closeModal(modalId);
    }
};

// ESC key untuk close modal
document.addEventListener("keydown", (e) => {
    if (e.key === "Escape") {
        const modals = document.querySelectorAll("[id^='modal']");
        modals.forEach((modal) => {
            if (!modal.classList.contains("hidden")) {
                window.closeModal(modal.id);
            }
        });
    }
});

/* =========================================================
   TOAST NOTIFICATION FUNCTIONS
========================================================= */
function createToastContainer() {
    let container = document.getElementById("toast-container");
    if (!container) {
        container = document.createElement("div");
        container.id = "toast-container";
        container.className = "toast-container";
        document.body.appendChild(container);
    }
    return container;
}

function showToast(type, title, message, duration = 5000) {
    const container = createToastContainer();

    const toast = document.createElement("div");
    toast.className = `toast toast-${type}`;

    const iconSvg =
        type === "success"
            ? '<svg class="toast-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>'
            : '<svg class="toast-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>';

    toast.innerHTML = `
    ${iconSvg}
    <div class="toast-content">
      <div class="toast-title">${title}</div>
      <div class="toast-message">${message}</div>
    </div>
    <button class="toast-close" onclick="this.parentElement.remove()">
      <svg width="16" height="16" fill="none" stroke="currentColor" viewBox="0 0 24 24">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
      </svg>
    </button>
  `;

    container.appendChild(toast);

    // Auto remove setelah duration
    setTimeout(() => {
        toast.style.animation = "toast-slide-in 0.3s ease-out reverse";
        setTimeout(() => toast.remove(), 300);
    }, duration);

    return toast;
}

/* =========================================================
   FORM SUBMIT HANDLER
========================================================= */
document.addEventListener("DOMContentLoaded", function () {
    const formAddData = document.getElementById("formAddData");
    if (!formAddData) return;

    formAddData.addEventListener("submit", async function (e) {
        e.preventDefault();

        const submitBtn = formAddData.querySelector('button[type="submit"]');
        const originalText = submitBtn.innerHTML;

        // Disable button dan show loading
        submitBtn.disabled = true;
        submitBtn.innerHTML = `
      <svg class="animate-spin w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15"></path>
      </svg>
      Menyimpan...
    `;

        try {
            const formData = new FormData(formAddData);

            const response = await fetch(formAddData.action, {
                method: "POST",
                body: formData,
                headers: {
                    "X-Requested-With": "XMLHttpRequest",
                },
            });

            if (response.ok) {
                const result = await response.json().catch(() => null);

                // Success toast
                showToast(
                    "success",
                    "Berhasil!",
                    result?.message ||
                        "Data berhasil ditambahkan dan UMAP sudah diperbarui.",
                    6000
                );

                // Close modal
                window.closeModal("modalAddData");

                // Reset form
                formAddData.reset();

                // Reload page setelah 1.5 detik untuk refresh data
                setTimeout(() => {
                    window.location.reload();
                }, 1500);
            } else {
                // Handle error response
                let errorMessage = "Gagal menyimpan data. Silakan coba lagi.";

                try {
                    const errorData = await response.json();
                    if (errorData.message) {
                        errorMessage = errorData.message;
                    } else if (errorData.errors) {
                        const firstError = Object.values(errorData.errors)[0];
                        errorMessage = Array.isArray(firstError)
                            ? firstError[0]
                            : firstError;
                    }
                } catch (e) {
                    // Jika response bukan JSON, gunakan status text
                    errorMessage = response.statusText || errorMessage;
                }

                showToast("error", "Gagal!", errorMessage, 7000);

                // Re-enable button
                submitBtn.disabled = false;
                submitBtn.innerHTML = originalText;
            }
        } catch (error) {
            console.error("Form submit error:", error);
            showToast(
                "error",
                "Error!",
                "Terjadi kesalahan saat menyimpan data. Periksa koneksi internet Anda.",
                7000
            );

            // Re-enable button
            submitBtn.disabled = false;
            submitBtn.innerHTML = originalText;
        }
    });

    // ===== UMAP CONFIG FORM HANDLER =====
    const formUmapConfig = document.getElementById("formUmapConfig");
    if (formUmapConfig) {
        // Load saved parameters dari localStorage saat form dibuka
        const loadSavedParams = () => {
            try {
                const saved = localStorage.getItem("umap_params");
                if (saved) {
                    const params = JSON.parse(saved);
                    const nNeighborsInput = formUmapConfig.querySelector(
                        'input[name="nNeighbors"]'
                    );
                    const minDistInput = formUmapConfig.querySelector(
                        'input[name="minDist"]'
                    );
                    const randomStateInput = formUmapConfig.querySelector(
                        'input[name="randomState"]'
                    );

                    if (nNeighborsInput && params.nNeighbors) {
                        nNeighborsInput.value = params.nNeighbors;
                    }
                    if (minDistInput && params.minDist !== undefined) {
                        minDistInput.value = params.minDist;
                    }
                    if (randomStateInput && params.randomState !== undefined) {
                        randomStateInput.value = params.randomState;
                    }
                }
            } catch (e) {
                console.error("Error loading saved UMAP params:", e);
            }
        };

        // Load saat form dibuka (via modal open)
        const modalUmapConfig = document.getElementById("modalUmapConfig");
        if (modalUmapConfig) {
            // Observer untuk detect ketika modal dibuka
            const observer = new MutationObserver((mutations) => {
                mutations.forEach((mutation) => {
                    if (
                        mutation.type === "attributes" &&
                        mutation.attributeName === "class"
                    ) {
                        const isHidden =
                            modalUmapConfig.classList.contains("hidden");
                        if (!isHidden) {
                            loadSavedParams();
                        }
                    }
                });
            });
            observer.observe(modalUmapConfig, {
                attributes: true,
                attributeFilter: ["class"],
            });
        }

        // Load juga saat DOM ready (dengan delay kecil untuk pastikan form sudah render)
        if (document.readyState === "loading") {
            document.addEventListener("DOMContentLoaded", () => {
                setTimeout(loadSavedParams, 100);
            });
        } else {
            setTimeout(loadSavedParams, 100);
        }

        formUmapConfig.addEventListener("submit", async function (e) {
            e.preventDefault();

            const submitBtn = formUmapConfig.querySelector(
                'button[type="submit"]'
            );
            const originalText = submitBtn.innerHTML;

            // Disable button dan show loading
            submitBtn.disabled = true;
            submitBtn.innerHTML = `
        <svg class="animate-spin w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15"></path>
        </svg>
        Memproses...
      `;

            try {
                const formData = new FormData(formUmapConfig);
                const payload = {
                    nNeighbors: parseInt(formData.get("nNeighbors")),
                    minDist: parseFloat(formData.get("minDist")),
                    randomState: parseInt(formData.get("randomState")),
                };

                // Simpan ke localStorage sebelum submit
                localStorage.setItem("umap_params", JSON.stringify(payload));

                const response = await fetch("/api/umap/update-config", {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                        "X-Requested-With": "XMLHttpRequest",
                        "X-CSRF-TOKEN":
                            document
                                .querySelector('meta[name="csrf-token"]')
                                ?.getAttribute("content") || "",
                    },
                    body: JSON.stringify(payload),
                });

                if (response.ok) {
                    const result = await response.json().catch(() => null);

                    showToast(
                        "success",
                        "Berhasil!",
                        result?.message ||
                            "Parameter UMAP berhasil diperbarui. Visualisasi akan di-recompute.",
                        6000
                    );

                    window.closeModal("modalUmapConfig");

                    // Reload setelah 2 detik untuk refresh visualisasi
                    setTimeout(() => {
                        window.location.reload();
                    }, 2000);
                } else {
                    let errorMessage = "Gagal memperbarui parameter UMAP.";

                    try {
                        const errorData = await response.json();
                        if (errorData.message) {
                            errorMessage = errorData.message;
                        }
                    } catch (e) {
                        errorMessage = response.statusText || errorMessage;
                    }

                    showToast("error", "Gagal!", errorMessage, 7000);

                    submitBtn.disabled = false;
                    submitBtn.innerHTML = originalText;
                }
            } catch (error) {
                console.error("UMAP config submit error:", error);
                showToast(
                    "error",
                    "Error!",
                    "Terjadi kesalahan saat memperbarui parameter. Periksa koneksi internet Anda.",
                    7000
                );

                submitBtn.disabled = false;
                submitBtn.innerHTML = originalText;
            }
        });
    }
});
