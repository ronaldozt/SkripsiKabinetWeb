-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2025 at 12:46 PM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u941929935_umap_menteri`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_menteris`
--

CREATE TABLE `detail_menteris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menteri_id` bigint(20) UNSIGNED NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `umur_tahun` tinyint(3) UNSIGNED DEFAULT NULL,
  `almamater_sma` varchar(255) DEFAULT NULL,
  `almamater_s1` varchar(255) DEFAULT NULL,
  `almamater_s2` varchar(255) DEFAULT NULL,
  `almamater_s3` varchar(255) DEFAULT NULL,
  `kekayaan_rp` bigint(20) UNSIGNED DEFAULT NULL,
  `status_hukum` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_menteris`
--

INSERT INTO `detail_menteris` (`id`, `menteri_id`, `tempat_lahir`, `tanggal_lahir`, `umur_tahun`, `almamater_sma`, `almamater_s1`, `almamater_s2`, `almamater_s3`, `kekayaan_rp`, `status_hukum`, `catatan`, `created_at`, `updated_at`) VALUES
(128, 1, 'Surakarta, Jawa Tengah', '1959-12-11', 65, 'SMAN 3 Teladan Jakarta', 'Akademi Angkatan Bersenjata Republik Indonesia, Jawa Tengah', 'Universitas Indonesia, DKI Jakarta.', 'Universitas Trisakti, (DKI) Jakarta', 26540000000, 'Tersangka', 'Menteri Koordinator Bidang Politik dan Keamanan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(129, 13, 'Bandung, Jawa Barat', '1952-10-09', 73, 'Tidak Diketahui', 'Akademi Militer, Indonesia', 'Institut Manajemen Bisnis Indonesia, Jawa Barat ', 'Universitas Pertahanan Indonesia, Indonesia', 36340000000, 'Tersangka', 'Menteri Pertahanan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(130, 3, 'Padang, Sumatera Barat', '1949-04-08', 76, 'Tidak Diketahui', 'Universitas Andalas, Sumatera Barat', 'TIDAK', 'TIDAK', 14949575416, 'Terperiksa/Saksi', 'Menteri Koordinator Bidang Politik dan Keamanan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(131, 4, 'Manggar, Belitung Timur, Kepulauan Bangka Belitung', '1956-02-05', 69, 'SMAN 7 Jakarta', 'Universitas Islam Indonesia, Yogyakarta', 'Universitas Sains Malaysia, Malaysia', 'Universitas Indonesia (UI), DKI Jakarta', 89441113647, 'Terperiksa/Saksi', 'Menteri Koordinator Bidang Hukum, Hak Asasi Manusia, Imigrasi, dan  Pemasyarakatan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(132, 5, 'Surabaya, Jawa Timur', '1962-10-01', 63, 'SMA Kolese Kanisius Jakarta', 'Institut Teknologi Bandung, Jawa Barat', 'Universitas Monash, Australia; Universitas Melbourne, Australia', 'The University of Melbourne, Australia', 98453472000, 'Tersangka', 'Menteri Koordinator Bidang Perekonomian', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(133, 6, 'Padangan, Bojonegoro, Jawa Timur', '1962-02-13', 63, 'SMA Negeri 2 Bojonegoro', 'Universitas Gadjah Mada, Daerah Istimewa Yogyakarta', 'Universitas Birmingham, Inggris Raya', 'University of Queensland, Australia', 4940507271, 'Terdakwa', 'Menteri Koordinator Bidang Pembangunan Manusia dan Kebudayaan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(134, 7, 'Bandung, Jawa Barat', '1978-08-10', 47, 'SMAN 3 Jakarta', 'Universitas Harvard, Amerika Serikat', 'Universitas Teknologi Nanyang, Singapura', 'Naval Postgraduate School, Amerika Serikat', 15456488313, 'Tersangka', 'Menteri Koordinator Bidang Infrastruktur dan Pembangunan Kewilayahan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(135, 8, 'Jombang, Jawa Timur', '1966-09-24', 59, 'Madrasah Aliyah Negeri (MAN) 1 Yogyakarta', 'Universitas Islam Negeri Sunan Ampel, Jawa Timur', 'Universitas Indonesia, DKI Jakarta', 'Universitas Indonesia, DKI Jakarta', 30460000000, 'Terdakwa', 'Menteri Koordinator Bidang Pemberdayaan Masyarakat', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(136, 9, 'Penengahan, Lampung Selatan, Lampung', '1962-05-17', 63, 'SMAN 53 Jakarta', 'Akademi Angkatan Bersenjata Republik Indonesia, Jawa Barat', 'Universitas Islam Internasional Malaysia, Malaysia', 'Sejong University, Korea Selatan', 14067972074, 'Terdakwa', 'Menteri Koordinator Bidang Pangan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(137, 10, 'Tegal, Jawa Tengah', '1971-05-10', 54, 'SMA Taruna Nusantara Magelang', 'Universitas Gadjah Mada (UGM)', 'Universitas Gadjah Mada (UGM), Daerah Istimewa Yogyakarta', 'UPN Veteran Jakarta, DKI Jakarta', 7109000000, 'Terdakwa', 'Menteri Sekretaris Negara', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(138, 11, 'Palembang, Sumatera Selatan', '1964-10-26', 61, 'SMAN 2 Palembang', 'Akademi Kepolisian, Jawa Barat', 'Universitas Exeter, Inggris Raya', 'S. Rajaratnam School of International Studies, Singapura', 23283464072, 'Tersangka', 'Menteri Dalam Negeri', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(139, 12, 'Takengon, Aceh', '1979-02-11', 46, 'SMA Taruna Nusantara', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Nasional Singapura, Singapura', 'Universitas Konstanz, Jerman', 18776609950, 'Bersalah/Terpidana', 'Menteri Luar Negeri', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(140, 14, 'Bone, Sulawesi Selatan', '1959-06-23', 66, 'Pesantren As\'adiyah Sengkang', 'Institut Agama Islam Negeri (IAIN) Ujung Pandang (UIN Alauddin Makassar).', 'Universitas Islam Negeri Syarif Hidayatullah Jakarta, DKI Jakarta', 'Universitas Leiden, Belanda', 16183389771, 'Terperiksa/Saksi', 'Menteri Agama', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(141, 15, 'Rantepao, Toraja Utara, Sulawesi Selatan', '1966-08-10', 59, 'SMAN 1 Toli-toli', 'Universitas Muslim Indonesia, Makassar', 'Universitas Hasanuddin (Unhas), Sulawesi Selatan', 'Universitas Hasanuddin, Sulawesi Selatan', 14589098595, 'Tidak Ada', 'Menteri Hukum', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(142, 16, 'Paniai, Papua Tengah', '1975-12-25', 49, 'SMAN 1 Wamena', 'Universitas Cenderawasih, Papua', 'TIDAK', 'TIDAK', 4300000000, 'Tidak Ada', 'Menteri Hak Asasi Manusia', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(143, 17, 'Blora, Jawa Tengah', '1967-02-16', 58, 'SMAN 1 Blora', 'Universitas Bhayangkara Jawa Timur Universitas', 'Universitas Muhammadiyah Sumatera Utara (UMSU), Sumatera Utara  ', 'TIDAK', 19800000000, 'Tidak Ada', 'Menteri Imigrasi dan Pemasyarakatan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(144, 18, 'Tanjung Karang, Lampung', '1962-08-26', 63, 'SMAN 3 Semarang', 'Universitas Indonesia, Jakarta', 'Universitas Illinois, Amerika Serikat', 'University of Illinois at Urbana-Champaign, Amerika Serikat', 22849807659, 'Terperiksa/Saksi', 'Menteri Keuangan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(145, 19, 'Jakarta, DKI Jakarta', '1963-09-24', 62, 'SMAN 3 Jakarta', 'Institut Teknologi Bandung, Jawa Barat', 'Universitas Purdue, AS', 'Purdue University, Amerika Serikat', 39210000000, 'Terperiksa/Saksi', 'Menteri Keuangan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(146, 20, 'Kudus, Jawa Tengah', '1968-09-03', 57, 'Madrasah Aliyah Negeri (MAN) Purwodadi Filial', 'Universitas Islam Negeri Syarif Hidayatullah, Banten', 'Universitas Queensland, Australia', 'UIN Syarif Hidayatullah Jakarta, DKI Jakarta', 20100443679, 'Tidak Ada', 'Menteri Pendidikan Dasar dan Menengah', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(147, 21, 'Delft, Belanda', '1956-01-05', 69, 'SMAN 3 Jakarta', 'Institut Teknologi Bandung, Jawa Barat', 'Universitas California, Berkeley, Amerika Serikat', 'Universitas California, Berkeley, Amerika Serikat', 18797960000, 'Tidak Ada', 'Menteri Pendidikan Tinggi, Sains, dan Teknologi', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(148, 22, 'Jakarta, DKI Jakarta', '1975-07-27', 50, 'SMAN 14 Jakarta', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Universitas Tokyo, Jepang', 'The University of Tokyo, Jepang', 22849760000, 'Tidak Ada', 'Menteri Pendidikan Tinggi, Sains, dan Teknologi', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(149, 23, 'Jakarta, DKI Jakarta', '1971-06-01', 54, 'SMA Negeri 31 Jakarta', 'Universitas Indonesia, Jawa Barat', 'Sekolah Ekonomi dan Ilmu Politik London, Inggris Raya', 'Universitas Indonesia, DKI Jakarta', 85139265903, 'Tidak Ada', 'Menteri Kebudayaan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(150, 24, 'Bogor, Jawa Barat', '1966-05-06', 59, 'SMAN 1 Teladan Bogor', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Universitas Washington, Amerika Serikat', 'TIDAK', 62463032766, 'Terperiksa/Saksi', 'Menteri Kesehatan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(151, 25, 'Pasuruan, Jawa Timur', '1964-08-28', 61, 'SMAN 1 Probolinggo', 'Fakultas Ilmu Sosial dan Politik (FISIP) Universitas Nasional (Unas), Jakarta', 'Universitas Nasional, DKI Jakarta', 'TIDAK', 14995383084, 'Tersangka', 'Menteri Sosial', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(152, 26, 'Padang, Sumatera Barat', '1977-08-10', 48, 'SMA Negeri 1 Padang', 'Universitas Gadjah Mada, Yogyakarta', 'Institut Teknologi Bandung, Jawa Barat', 'Virginia Polytechnic Institute and State University, Amerika Serikat', 8944111308, 'Terperiksa/Saksi', 'Menteri Ketenagakerjaan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(153, 27, 'Donggala, Sulawesi Tengah', '1969-02-10', 56, 'SMA Negeri 2 Palu', 'Universitas Islam Negeri Syarif Hidayatullah, Banten', 'Universitas Diponegoro (Undip), Jawa Tengah', 'TIDAK', 16100000000, 'Terdakwa', 'Menteri Pelindungan Pekerja Migran', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(154, 28, 'Pangkalan Bun, Kalimantan Tengah', '1971-05-15', 54, 'SMAN 1 Pangkalan Bun', 'Akademi Ilmu Pengetahuan, Indonesia', 'Universitas Lambung Mangkurat (ULM), Kalimantan Selatan', 'TIDAK', 19553750000, 'Tidak Ada', 'Menteri Pelindungan Pekerja Migran', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(155, 29, 'Jakarta, DKI Jakarta', '1977-01-19', 48, 'SMAN 3 Jakarta', 'Pacific Western University', 'Universitas Pittsburgh, Amerika Serikat', 'Hiroshima University, Jepang', 86780963500, 'Terperiksa/Saksi', 'Menteri Perindustrian', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(156, 30, 'Sukoharjo, Jawa Tengah', '1963-02-19', 62, 'SMAN 1 Surakarta', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Sains Terapan HAN, Belanda', 'Universitas Sahid, DKI Jakarta', 149955700000, 'Tersangka', 'Menteri Perdagangan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(157, 31, 'Bumiayu, Buton, Sulawesi Tenggara', '1976-08-10', 49, 'SMA YAPIS Fakfak', 'Akademi Ilmu Pengetahuan dan Teknologi, Sulawesi Selatan', 'Universitas Cenderawasih', 'TIDAK', 310400000000, 'Terperiksa/Saksi', 'Menteri Energi dan Sumber Daya Mineral', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(158, 32, 'Semarang, Jawa Tengah', '1966-02-07', 59, 'SMAN 3 Semarang', 'Institut Teknologi Bandung (ITB)', 'Universitas Tulsa, Amerika Serikat', 'TIDAK', 19395066928, 'Tidak Ada', 'Menteri Pekerjaan Umum', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(159, 33, 'Bandung, Jawa Barat', '1969-02-12', 56, 'SMAN 47 Jakarta, 1988.', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'TIDAK', 'TIDAK', 49400000000, 'Terperiksa/Saksi', 'Menteri Perumahan dan Kawasan Permukiman', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(160, 34, 'Tanjung Karang,Lampung,Lampung', '1974-11-07', 51, 'SMAN 3 Tanjung Karang', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas KH. Abdul Chalim, Jawa Timur', 'TIDAK', 13159982461, 'Terperiksa/Saksi', 'Menteri Desa dan Pembangunan Daerah Tertinggal', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(161, 35, 'Bandung, Jawa Barat', '1979-08-04', 46, 'SMA Negeri 2 Bogor', 'Universitas Pendidikan Indonesia, Jawa Barat', 'Universitas Indonesia, DKI Jakarta', 'Universitas Padjadjaran (Unpad), Jawa Barat', 10672000000, 'Tidak Ada', 'Menteri Transmigrasi', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(162, 36, 'Jakarta, DKI Jakarta', '1966-11-25', 59, 'SMAN 3 Jakarta', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Michigan, Amerika Serikat', 'Universitas Indonesia (UI), DKI Jakarta', 44128421231, 'Tidak Ada', 'Menteri Perhubungan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(163, 37, 'Bandung, Jawa Barat', '1978-05-03', 47, 'SMAN 8 Jakarta', 'Universitas Indonesia, Jakarta', 'Universitas Indonesia, DKI Jakarta', 'TIDAK', 47326848779, 'Terperiksa/Saksi', 'Menteri Komunikasi dan Digital', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(164, 38, 'Bone, Sulawesi Selatan', '1968-07-09', 57, 'SMAN 2 Watampone', 'Universitas Hasanuddin, Sulawesi Selatan', 'Universitas Indonesia, DKI Jakarta.', 'Universitas Hasanuddin, Sulawesi Selatan', 22744116012, 'Terperiksa/Saksi', 'Menteri Pertanian', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(165, 39, 'Pekanbaru, Riau', '1977-07-13', 48, 'SMAN 2 Pekanbaru', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Universitas Bradford, Inggris Raya; Universitas Queensland, Australia', 'University of Bradford, Inggris', 3865046200, 'Terperiksa/Saksi', 'Menteri Kehutanan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(166, 40, 'Semarang, Jawa Tengah (Jawa Tengah)', '1962-11-01', 63, 'Tidak Diketahui', 'Institut Pertanian Bogor, Jawa Barat', 'Universitas Indonesia, DKI Jakarta', 'Institut Teknologi Bandung (ITB), Jawa Barat', 54877749000, 'Terperiksa/Saksi', 'Menteri Kelautan dan Perikanan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(167, 41, 'Kudus, Jawa Tengah', '1973-10-12', 52, 'SMAN 1 Kudus', 'Akademi Ilmu Pengetahuan, Jawa Tengah', 'Universitas Indonesia, DKI Jakarta', 'Universitas Indonesia, DKI Jakarta', 5439462886, 'Tidak Ada', 'Menteri Agraria dan Tata Ruang', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(168, 42, 'Yogyakarta, Daerah Istimewa Yogyakarta', '1959-12-23', 65, 'SMAN 3 Yogyakarta', 'Institut Pertanian Bogor (IPB)', 'Universitas Indonesia, DKI Jakarta.', 'Institut Pertanian Bogor, Jawa Barat', 10673324021, 'Tidak Ada', 'Menteri Perencanaan Pembangunan Nasional', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(169, 43, 'Jakarta, DKI Jakarta', '1965-05-29', 60, 'SMAN 3 Bandung', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Flinders, Australia', 'Flinders University, Australia', 4976721590, 'Tidak Ada', 'Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(170, 44, 'Panglima Polim, Kebayoran Baru, DKI Jakarta', '1970-05-30', 55, 'SMAN 3 Teladan Jakarta', 'Universitas Trisakti, Jakarta', 'Universitas Nasional, Amerika Serikat', 'Universitas Brawijaya (UB), Jawa Timur', 243171355812, 'Terperiksa/Saksi', 'Menteri Pemuda dan Olahraga', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(171, 45, 'Tanjung Alam, Tanah Datar, Sumatera Barat', '1971-01-04', 54, 'SMAN 3 Padang', 'Universitas Gadjah Mada, Yogyakarta', 'Institut Manajemen Asia, Filipina', 'Asian Institute of Manajement (AIM), Filipina', 61376822997, 'Terperiksa/Saksi', 'Menteri Badan Usaha Milik Negara (Jabatan dihapus pada 2 Oktober 2025)', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(172, 46, 'Brebes, Jawa Tengah', '1972-07-27', 53, 'SMAN 1 Brebes', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Indonesia, DKI Jakarta', 'Universitas Negeri Jakarta (UNJ), DKI Jakarta', 4948834468, 'Terperiksa/Saksi', 'Menteri Kependudukan dan Pembangunan Keluarga', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(173, 47, 'Brebes, Jawa Tengah', '1984-07-19', 41, 'SMA Negeri 1 Bojonegoro', 'Universitas Islam Negeri Sunan Ampel, Jawa Timur', 'Universitas Lambung Mangkurat (Unlam), Kalimantan Selatan', 'Universitas Brawijaya, Jawa Timur', 2802197150, 'Tidak Ada', 'Menteri Lingkungan Hidup', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(174, 48, 'Jakarta, DKI Jakarta', '1968-12-31', 56, 'SMA Pangudi Luhur', 'Universitas Trisakti, DKI Jakarta', 'Antwerpen European University, Belgia', 'TIDAK', 1067201777085, 'Terperiksa/Saksi', 'Menteri Investasi dan Hilirisasi', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(175, 49, 'Jakarta, DKI Jakarta', '1969-04-20', 56, 'SMAN 1 Jatiwangi', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Universitas Indonesia, DKI Jakarta', 'TIDAK', 97107775587, 'Terperiksa/Saksi', 'Menteri Koperasi', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(176, 50, 'Jakarta, DKI Jakarta', '1967-07-27', 58, 'SMAN 3 Jakarta.', 'Universitas Padjadjaran (Unpad)', 'Universitas Indonesia (UI), DKI Jakarta', 'Universitas Indonesia (UI),DKI Jakarta', 8960252119, 'Terdakwa', 'Wakil Menteri Koperasi', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(177, 51, 'Jakarta, DKI Jakarta', '1982-05-12', 43, 'SMAN 3 Pontianak', 'Akademi Militer, Jawa Barat', 'Universitas Bradford, Inggris Raya', 'TIDAK', 10677109289, 'Terperiksa/Saksi', 'Menteri Usaha Mikro, Kecil, dan Menengah', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(178, 52, 'Sokaraja Kidul, Banyumas, Jawa Tengah', '1970-12-08', 54, 'SMAN 1 Banyumas', 'Universitas Gadjah Mada, Yogyakarta', 'TIDAK', 'TIDAK', 8944588720, 'Tidak Ada', 'Menteri Pariwisata', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(179, 53, 'Jakarta, DKI Jakarta', '1972-09-04', 53, 'SMAN 6 Jakarta', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Indonesia, DKI Jakarta', 'IPB Business School, Jawa Barat', 17154015081, 'Terperiksa/Saksi', 'Menteri Ekonomi Kreatif', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(180, 54, 'Madura, Jawa Timur', '1969-07-28', 56, 'Madrasah Tsanawiyah (MTs) dan Madrasah Aliyah As Syafiiyah Jatiwaringin', 'Universitas Islam Negeri Sunan Ampel, Jawa Timur', 'Institut Pertanian Bogor(IPB), Jawa Barat', 'Universitas Indonesia, DKI Jakarta', 11170000000, 'Terperiksa/Saksi', 'Menteri Pemberdayaan Perempuan dan Perlindungan Anak', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(181, 55, 'Jakarta, DKI Jakarta', '1990-09-19', 35, 'SMAN 6 Jakarta', 'Universitas Gadjah Mada, Yogyakarta', 'TIDAK', 'TIDAK', 106757100000, 'Terperiksa/Saksi', 'Menteri Pemuda dan Olahraga', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(182, 56, 'Jombang, Jawa Timur', '1962-06-24', 63, 'SMAN 2 Jombang', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Brawijaya (UB), Jawa Timur', 'Universitas Islam Negeri (UIN) Maulana Malik Ibrahim Malang, Jawa Timur', 16260000000, 'Tidak Ada', 'Menteri Haji dan Umrah (Jabatan dibentuk pada 8 September 2025)', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(183, 57, 'Garut, Jawa Barat', '1960-07-17', 65, 'SMAN 1 Garut', 'Universitas 17 Agustus 1945 Semarang', 'Universitas Indonesia, DKI Jakarta', 'Universitas Satyagama, DKI Jakarta', 5325000000, 'Tidak Ada', 'Jaksa Agung', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(184, 59, 'Ambarawa,Semarang,Jawa Tengah', '1969-01-19', 56, 'SMAN 8 Palembang', 'Akademi Kepolisian, Jawa Tengah', 'Universitas Indonesia (UI), Jawa Barat', 'Universitas Indonesia, DKI Jakarta', 13501700000, 'Tidak Ada', 'Kepala Kepolisian Republik Indonesia', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(185, 60, 'Magelang, Jawa Tengah', '1964-11-30', 60, 'SMA 8 Jakarta', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Salford, Inggris Raya; Universitas Nasional Malaysia, Malaysia', 'University of Salford, Inggris', 8349019688, 'Tidak Ada', 'Kepala Badan Intelijen Negara', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(186, 61, 'Jember, Jawa Timur', '1964-02-26', 61, 'SMA Negeri 1 Jember', 'Universitas Gadjah Mada, Yogyakarta', 'TIDAK', 'TIDAK', 14995537672, 'Tidak Ada', 'Kepala Staf Kepresidenan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(187, 62, 'Padang, Sumatera Barat', '1973-10-13', 52, 'SMA Negeri 2 Bandar Lampung', 'Universitas Islam Negeri Syarif Hidayatullah, Banten', 'Universitas Indonesia, DKI Jakarta', 'Universitas Gadjah Mada, Daerah Istimewa Yogyakarta', 14995229235, 'Tidak Ada', 'Kepala Staf Kepresidenan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(188, 63, 'Bukittinggi, Sumatera Barat', '1979-10-11', 46, 'SMAN 2 Bukittinggi', 'Akademi Ilmu Pengetahuan, Jawa Barat', 'Universitas Indonesia (UI), Jawa Barat', 'TIDAK', 41336616257, 'Tersangka', 'Kepala Kantor Komunikasi Kepresidenan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(189, 64, 'Bandung, Jawa Barat', '1993-06-10', 32, 'SMAN 3 Bandung', 'Universitas Gadjah Mada, Yogyakarta', 'TIDAK', 'TIDAK', 14051034000, 'Tersangka', 'Wakil Menteri Komunikasi dan Digital', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(190, 65, 'Silaen, Toba Samosir, Sumatera Utara', '1947-12-19', 77, 'SMAN 1 Bandung', 'Akademi Militer, Jawa Timur', 'Universitas George Washington, Amerika Serikat', 'TIDAK', 107693526365, 'Terperiksa/Saksi', 'Ketua Dewan Ekonomi Nasional', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(191, 66, 'Semarang, Jawa Tengah', '1967-03-06', 58, 'SMAN 3 Semarang', 'Universitas Gadjah Mada (UGM)', 'Universitas Pertahanan (Unhan), Jawa Barat', 'TIDAK', 7556283828, 'Tidak Ada', 'Kepala Badan Siber dan Sandi Negara', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(192, 67, 'Jakarta, DKI Jakarta', '1964-08-09', 61, 'SMAN 3 Bandung', 'Universitas Islam Negeri Syarif Hidayatullah, Banten', 'University of Adelaide, Australia', 'Universitas Gadjah Mada, Daerah Istimewa Yogyakarta', 10672202685, 'Tidak Ada', 'Kepala Badan Pengawasan Keuangan dan Pembangunan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(193, 68, 'Yogyakarta, Daerah Istimewa Yogyakarta', '1979-08-29', 46, 'SMA Negeri 3 Bandung', 'Universitas Gadjah Mada, Daerah Istimewa Yogyakarta', 'Institut Teknologi Bandung (ITB), Jawa Barat', 'University of Melbourne, Australia', 24660856000, 'Tidak Ada', 'Kepala Badan Pusat Statistik', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(194, 69, 'Manado, Sulawesi Utara', '1961-07-10', 64, 'SMA Negeri Palu', 'Universitas Kristen Satya Wacana, Indonesia', 'TIDAK', 'TIDAK', 10565576135, 'Tersangka', 'Wakil Menteri Koordinator Bidang Politik dan Keamanan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(195, 70, 'Pematangsiantar, Sumatera Utara', '1955-05-05', 70, 'SMAN 1 Pematangsiantar', 'Universitas Kristen Satya Wacana, Indonesia', 'Universitas Teknologi Sydney, Australia', 'University Technology of Sydney, Australia', 83499427048, 'Terperiksa/Saksi', 'Wakil Menteri Koordinator Bidang Hukum, Hak Asasi Manusia, Imigrasi, dan  Pemasyarakatan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(196, 71, 'Solo, Surakarta, Jawa Tengah', '1962-04-07', 63, 'SMAN 1 Jember', 'Sekolah Perwira Prajurit Karier TNI', 'TIDAK', 'Universitas Padjadjaran, Jawa Barat', 10672018898, 'Tersangka', 'Wakil Menteri Sekretaris Negara', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(197, 72, 'Pekalongan, Jawa Tengah', '1972-05-10', 53, 'SMAN 1 Pekalongan', 'Akademi Angkatan Bersenjata Republik Indonesia, Jawa Timur', 'Universitas Indonesia, DKI Jakarta', 'TIDAK', 8944738500, 'Tersangka', 'Wakil Menteri Sekretaris Negara', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(198, 73, 'Bogor, Jawa Barat', '1972-06-17', 53, 'SMAN 1 Bogor', 'Universitas Indonesia, Jawa Barat', 'Universitas Monash, Australia', 'Australian National University, Australia', 19557451458, 'Terperiksa/Saksi', 'Wakil Menteri Dalam Negeri', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(199, 74, 'Piramida, Jayawijaya, Irian Jaya', '1971-01-22', 54, 'Tidak Diketahui', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Universitas Garut, Jawa Barat', 'Universitas Cenderawasih, Papua', 8331607764, 'Tersangka', 'Wakil Menteri Dalam Negeri', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(200, 75, 'Bandung, Jawa Barat', '1971-12-21', 53, 'SMAN 1 Garut', 'Universitas Gadjah Mada, Yogyakarta', 'TIDAK', 'Universiti Malaya, Malaysia', 2519143920, 'Tidak Ada', 'Wakil Menteri Dalam Negeri', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(201, 76, 'Welado, Bone, Sulawesi Selatan', '1968-12-07', 56, 'SMA Darul Arqam', 'Universitas Islam Negeri Syarif Hidayatullah, Banten', 'TIDAK', 'TIDAK', 3663044120, 'Tersangka', 'Wakil Menteri Luar Negeri', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(202, 77, 'Jakarta, DKI Jakarta', '1971-01-18', 54, 'Whitefield School', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Indonesia, DKI Jakarta; Universitas Leicester, Inggris', 'TIDAK', 4789000000, 'Terdakwa', 'Wakil Menteri Luar Negeri', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(203, 78, 'Semarang, Jawa Tengah', '1963-03-12', 62, 'SMAN 3 Jakarta', 'Universitas Diponegoro (Undip) di Semarang', 'Sekolah Hukum Harvard, Amerika Serikat', 'TIDAK', 22106263595, 'Tersangka', 'Wakil Menteri Luar Negeri', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(204, 79, 'Yogyakarta, Daerah Istimewa Yogyakarta', '1965-12-12', 59, 'SMAN 3 Yogyakarta', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Institut Teknologi(ITB), Bandung ', 'Universitas Padjadjaran, Jawa Barat', 6848700000, 'Terdakwa', 'Wakil Menteri Pertahanan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(205, 80, 'Medan, Sumatera Utara', '1959-06-09', 66, 'SMAN 3 Medan', 'Universitas Islam Negeri Syarif Hidayatullah, Banten', 'Universitas Sunan Giri, Jawa Timur', 'Perguruan Tinggi Ilmu Al-Qur\'an (PTIQ), DKI Jakarta', 3661168000, 'Bersalah/Terpidana/Tersangka', 'Wakil Menteri Agama', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(206, 81, 'Palu, Sulawesi Tengah', '1973-03-26', 52, 'SMAN 3 Palu', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Gadjah Mada (UGM),DIY Yogyakarta', 'Universitas Gadjah Mada, Daerah Istimewa Yogyakarta', 20690000000, 'Tersangka', 'Wakil Menteri Hukum', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(207, 82, 'Purbalingga, Jawa Tengah', '1973-11-10', 52, 'SMAN 1 Purbalingga', 'Universitas Gadjah Mada (UGM)', 'Universitas Pancasila, DKI Jakarta', 'TIDAK', 4687500000, 'Bersalah/Terpidana/Tersangka', 'Wakil Menteri Hak Asasi Manusia', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(208, 83, 'Tegal, Jawa Tengah', '1974-11-19', 51, 'SMAN 3 Jakarta', 'Universitas Trisakti.', 'Universitas Indonesia, DKI Jakarta', 'Universitas Indonesia, DKI Jakarta', 208800000000, 'Tersangka', 'Wakil Menteri Imigrasi dan Pemasyarakatan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(209, 84, 'Jakarta, DKI Jakarta', '1970-11-23', 55, 'SMAN 3 Teladan Jakarta', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Cornell, AS', 'University of Illinois at Urbana-Champaign, Amerika Serikat', 129782625168, 'Tersangka', 'Wakil Menteri Keuangan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(210, 85, 'Jakarta, DKI Jakarta', '1973-05-07', 52, 'SMAN 3 Teladan Jakarta', 'Haverford College, Amerika Serikat', 'Universitas Johns Hopkins, Amerika Serikat', 'TIDAK', 8908862909, 'Bersalah/Terpidana/Tersangka', 'Wakil Menteri Keuangan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(211, 86, 'Bogor, Jawa Barat', '1963-08-19', 62, 'SMAN 3 Yogyakarta', 'Institut Teknologi Bandung, Jawa Barat', 'Universitas Pennsylvania, AS', 'The University of Pennsylvania, Amerika Serikat', 15448375591, 'Terperiksa/Saksi', 'Wakil Menteri Keuangan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(212, 87, 'Tasikmalaya, Jawa Barat', '1973-07-04', 52, 'SMAN 2 Tasikmalaya', 'Universitas Padjadjaran (Unpad)', 'Universitas Indonesia, DKI Jakarta; Universitas Monash, Australia', 'Monash University, Australia', 3667100000, 'Tersangka', 'Wakil Menteri Pendidikan Dasar dan Menengah', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(213, 88, 'Sukabumi, Jawa Barat', '1979-02-01', 46, 'Madrasah Aliyah Keagamaan Khusus (MAKN) Darussalam', 'Universitas Islam Negeri Syarif Hidayatullah, Banten', 'Universitas Gajah Mada, Daerah Istimewa Yogyakarta', 'Universitas Gadjah Mada (UGM), DI Yogyakarta', 3663700000, 'Tidak Ada', 'Wakil Menteri Pendidikan Dasar dan Menengah', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(214, 89, 'Malang, Jawa Timur', '1988-06-06', 37, 'SMA Taruna Nusantara', 'Universitas Gadjah Mada, Yogyakarta', 'Fakultas Syariah, Arab Saudi', 'Universitas Negeri Malang (UM), Jawa Timur', 7318747666, 'Bersalah/Terpidana/Tersangka', 'Wakil Menteri Pendidikan Tinggi, Sains, dan Teknologi', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(215, 90, 'Jakarta, DKI Jakarta', '1979-01-11', 46, 'SMA Katolik Ricci 1 Jakarta', 'Universitas Kristen Satya Wacana, Indonesia', 'Universitas Indonesia, DKI Jakarta; Universitas Monash, Australia', 'Northwestern University, Amerika Serikat', 4790000000, 'Tidak Ada', 'Wakil Menteri Pendidikan Tinggi, Sains, dan Teknologi', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(216, 91, 'Bandung, Jawa Barat', '1983-07-14', 42, 'SMAN 3 Bandung', 'Universitas Paramadina, DKI Jakarta', 'TIDAK', 'TIDAK', 3663673397, 'Terdakwa', 'Wakil Menteri Kebudayaan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(217, 92, 'Temanggung, Jawa Tengah', '1973-03-23', 52, 'SMAN 1 Magelang', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Universitas Indonesia (UI), DKI Jakarta', 'University of Yamanashi, Jepang', 54395000000, 'Tersangka', 'Wakil Menteri Kesehatan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(218, 93, 'Malang, Jawa Timur', '1963-09-13', 62, 'Tidak Diketahui', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'TIDAK', 'TIDAK', 8340000000, 'Terdakwa', 'Wakil Menteri Kesehatan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(219, 94, 'Jatiwangi, Majalengka, Jawa Barat', '1961-08-04', 64, 'SMAN 10 Bandung', 'Universitas Sebelas Maret (UNS)', 'TIDAK', 'Universitas Sebelas Maret (UNS), Jawa Tengah', 3181576786, 'Tersangka', 'Wakil Menteri Sosial', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(220, 95, 'Medan, Sumatera Utara', '1975-07-22', 50, 'Tidak Diketahui', 'Universitas Kristen Satya Wacana, Indonesia', 'TIDAK', 'TIDAK', 17620000000, 'Tersangka', 'Wakil Menteri Ketenagakerjaan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(221, 96, 'Jambi, Jambi', '1962-04-27', 63, 'SMP Negeri 3 Lubuk Linggau', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Krisnadwipayana, DKI Jakarta', 'TIDAK', 14578144000, 'Tersangka', 'Wakil Menteri Ketenagakerjaan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(222, 97, 'Jakarta, DKI Jakarta', '1982-07-04', 43, 'SMA Tarakanita 1', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Universitas Indonesia, DKI Jakarta', 'TIDAK', 36372573210, 'Tersangka', 'Wakil Menteri Pelindungan Pekerja Migran Indonesia', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(223, 98, 'Makassar, Sulawesi Selatan', '1987-09-04', 38, 'SMA Muhammadiyah Limbung', 'Universitas Islam Negeri Syarif Hidayatullah, Banten', 'STIKOM Interstudi, DKI Jakarta', 'TIDAK', 8265000000, 'Bersalah/Terpidana/Tersangka', 'Wakil Menteri Pelindungan Pekerja Migran Indonesia', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(224, 99, 'Kraksaan, Kabupaten Probolinggo, Jawa Timur', '1973-01-01', 52, 'SMAN 1 Kraksaan', 'Universitas Islam Negeri Syarif Hidayatullah, Banten', 'Universitas Indonesia, DKI Jakarta', 'Universitas Indonesia, DKI Jakarta', 17500000000, 'Terperiksa/Saksi', 'Wakil Menteri Perindustrian', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(225, 100, 'Jakarta, DKI Jakarta', '1993-05-25', 32, 'Global Jaya School', 'Universitas Gadjah Mada, Yogyakarta', 'Imperial College London, Inggris Raya', 'TIDAK', 10672583852, 'Tersangka', 'Wakil Menteri Perdagangan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(226, 101, 'Bukittinggi, Sumatera Barat', '1963-10-07', 62, 'SMA Negeri 1 Padang Panjang', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Universitas Indonesia, DKI Jakarta', 'TIDAK', 7293529326, 'Tersangka', 'Wakil Menteri Energi dan Sumber Daya Mineral', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(227, 102, 'Surakarta, Jawa Tengah', '1967-07-17', 58, 'SMA Negeri 1 Surakarta', 'Universitas Gadjah Mada, Yogyakarta', 'Institut Teknologi Bandung, Jawa Barat', 'Institut Teknologi Bandung, Jawa Barat', 7479388458, 'Terperiksa/Saksi', 'Wakil Menteri Pekerjaan Umum', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(228, 103, 'Sumbawa, Nusa Tenggara Barat', '1971-11-10', 54, 'SMAN 1 Sumbawa', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'TIDAK', 'TIDAK', 3656910624, 'Tersangka', 'Wakil Menteri Perumahan dan Kawasan Permukiman', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(229, 104, 'Banjarmasin, Kalimantan Selatan', '1969-12-17', 55, 'SMAN 48 Jakarta', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Institut Teknologi Bandung, Jawa Barat', 'Universitas Padjadjaran, Jawa Barat', 36070624068, 'Terdakwa', 'Wakil Menteri Desa dan Pembangunan Daerah Tertinggal', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(230, 105, 'Ciganjur, Jagakarsa, Jakarta Selatan, Jakarta Selatan', '1968-05-30', 57, 'SMAN 3 Teladan Jakarta', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Gadjah Mada, Daerah Istimewa Yogyakarta', 'Universitas Indonesia, DKI Jakarta', 2516447817, 'Bersalah/Terpidana/Tersangka', 'Wakil Menteri Transmigrasi', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(231, 106, 'Ciamis, Jawa Barat', '1966-05-10', 59, 'SMAN 1 Ciamis', 'Akademi Kepolisian (Akpol)', 'TIDAK', 'Universitas Padjadjaran, Jawa Barat', 6189648102, 'Tersangka', 'Wakil Menteri Perhubungan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(232, 107, 'Jakarta, DKI Jakarta', '1970-05-10', 55, 'Tidak Diketahui', 'Universitas Gadjah Mada, Yogyakarta', 'London School of Economics, Inggris; Institut Teknologi Bandung, Jawa Barat; Universitas Sains Malaysia, Malaysia', 'TIDAK', 3663024887, 'Tersangka', 'Wakil Menteri Komunikasi dan Digital', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(233, 108, 'Semarang, Jawa Tengah', '1987-01-04', 38, 'SMAN 3 Yogyakarta', 'National Defense Academy of Japan', 'Universitas Indonesia, DKI Jakarta; Manajemen Bisnis, Indonesia', 'Universitas Sebelas Maret, Jawa Tengah', 36615598150, 'Terdakwa', 'Wakil Menteri Pertanian', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(234, 109, 'Bone, Sulawesi Selatan', '1987-04-07', 38, 'SMAN 2 Bone', 'Universitas Islam Negeri Syarif Hidayatullah, Banten', 'Universitas Indonesia (UI), DKI Jakarta', 'Universitas Padjadjaran, Jawa Barat', 8991257406, 'Tersangka', 'Wakil Menteri Kehutanan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(235, 110, 'Magelang, Jawa Tengah', '1975-01-01', 50, 'SMAN 1 Magelang', 'Akademi Ilmu Pengetahuan, Jawa Barat', 'TIDAK', 'TIDAK', 16462700000, 'Bersalah/Terpidana/Tersangka', 'Wakil Menteri Kehutanan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(236, 111, 'Surabaya, Jawa Timur', '1961-09-04', 64, 'SMAN 2 Bandung', 'Universitas Gadjah Mada, Yogyakarta', 'Sekolah Staf dan Komando Gabungan, Inggris', 'Institut Pertanian Bogor (IPB), Jawa Barat', 3769165089, 'Tersangka', 'Wakil Menteri Kelautan dan Perikanan', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(237, 112, 'Jakarta, DKI Jakarta', '1976-11-09', 49, 'SMAN 3 Jakarta', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Sekolah Studi Internasional S. Rajaratnam (RSIS), Singapura', 'Universitas Indonesia, DKI Jakarta', 19543160000, 'Bersalah/Terpidana/Tersangka', 'Wakil Menteri Agraria dan Tata Ruang', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(238, 113, 'Semarang, Jawa Tengah', '1987-02-10', 38, 'Tidak Diketahui', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Birmingham, Inggris Raya', 'University of Birmingham, Inggris', 3663677329, 'Bersalah/Terpidana/Tersangka', 'Wakil Menteri Perencanaan Pembangunan Nasional', '2025-12-07 17:02:51', '2025-12-07 18:20:22'),
(239, 114, 'Jakarta, DKI Jakarta', '1966-08-19', 59, 'SMAN 3 Pamekasan', 'Universitas Gadjah Mada, Yogyakarta', 'TIDAK', 'TIDAK', 10672017163, 'Tersangka', 'Wakil Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(240, 115, 'Surabaya, Jawa Timur', '1973-07-18', 52, 'SMAN 3 Yogyakarta', 'Universitas Gadjah Mada, Yogyakarta', 'Universitas Erasmus, Belanda', 'TIDAK', 149635072619, 'Bersalah/Terpidana/Tersangka', 'Wakil Menteri Badan Usaha Milik Negara', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(241, 116, 'Makassar, Sulawesi Selatan', '1986-07-27', 39, 'SMAN 1 Makassar.', 'Akademi Ilmu Pengetahuan, Jawa Tengah', 'Universitas Gadjah Mada, Daerah Istimewa Yogyakarta', 'Universitas Hasanuddin, Sulawesi Selatan', 11080000000, 'Tersangka', 'Wakil Menteri Badan Usaha Milik Negara', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(242, 117, 'Tanjung Alam, Tanah Datar, Sumatera Barat', '1972-02-19', 53, 'SMAN 3 Padang', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Institut Manajemen Asia, Filipina', 'TIDAK', 106723223000, 'Terperiksa/Saksi', 'Wakil Menteri Badan Usaha Milik Negara', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(243, 118, 'Jakarta, DKI Jakarta', '1971-09-24', 54, 'SMAN 3 Jakarta', 'Universitas Gadjah Mada, Yogyakarta', 'TIDAK', 'TIDAK', 9013147882, 'Tidak Ada', 'Wakil Menteri Kependudukan dan Pembangunan Keluarga', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(244, 119, 'Jakarta, DKI Jakarta', '1978-09-03', 47, 'SMAN 3 Teladan Jakarta', 'Akademi Militer, Jawa Timur', 'Institut Politeknik Virginia dan Universitas Negeri, Amerika Serikat; Universitas Pasifik Hawaii, Amerika Serikat', 'Virginia Polytechnic Institute and State University, Amerika Serikat', 169540000000, 'Tidak Ada', 'Wakil Menteri Lingkungan Hidup', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(245, 120, 'Palu, Sulawesi Tengah', '1979-05-15', 46, 'SMAN 3 Palu', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'TIDAK', 'TIDAK', 175617306441, 'Terdakwa', 'Wakil Menteri Investasi dan Hilirisasi', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(246, 121, 'Grobogan, Jawa Tengah', '1966-04-27', 59, 'SMAN 1 Purwodadi', 'Universitas Gadjah Mada, Yogyakarta', 'Institut Pertanian Bogor, Jawa Barat', 'TIDAK', 3663000000, 'Tersangka', 'Wakil Menteri Koperasi', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(247, 122, 'Padang, Sumatera Barat', '1987-06-25', 38, 'SMAN 1 Padang', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Universitas Indonesia (UI), DKI Jakarta', 'Universitas Trisakti, DKI Jakarta', 25191255000, 'Tersangka', 'Wakil Menteri Usaha Mikro, Kecil, dan Menengah', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(248, 123, 'Singaraja, Buleleng, Bali', '1986-11-18', 39, 'SMAN 1 Singaraja', 'Universitas Udayana, Bali', 'STIE Nobel Indonesia, Makassar', 'TIDAK', 4617650000, 'Terdakwa', 'Wakil Menteri Pariwisata', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(249, 124, 'Jakarta, DKI Jakarta', '1988-01-10', 37, 'SMA Dian Harapan', 'Universitas Kristen Satya Wacana, Jawa Tengah', 'Universitas Indonesia, DKI Jakarta.', 'TIDAK', 3634000000, 'Tersangka', 'Wakil Menteri Ekonomi Kreatif', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(250, 125, 'Medan, Sumatera Utara', '1977-12-04', 47, 'SMAN 1 Medan', 'Universitas Kristen Satya Wacana, Indonesia', 'Institut Teknologi Massachusetts, Amerika Serikat', 'TIDAK', 9997103554, 'Tersangka', 'Wakil Menteri Pemberdayaan Perempuan dan Perlindungan Anak', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(251, 126, 'Bandung, Jawa Barat', '1981-08-10', 44, 'SMAN 2 Bandung', 'Universitas Pendidikan Indonesia, Jawa Barat', 'Universitas Indonesia, DKI Jakarta', 'Universitas Indonesia, DKI Jakarta', 8520779774, 'Tersangka', 'Wakil Menteri Pemuda dan Olahraga', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(252, 127, 'Langkat, Sumatera Utara', '1982-04-10', 43, 'SMAN 1 Kisaran', 'Universitas Islam Negeri Syarif Hidayatullah, Banten', 'Universitas Diponegoro, Jawa Tengah', 'Universitas Diponegoro, Jawa Tengah', 27800000000, 'Terperiksa/Saksi', 'Wakil Menteri Haji dan Umrah', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(253, 128, 'Manado, Sulawesi Utara', '1989-04-14', 36, 'SMA Taruna Nusantara', 'Akademi Militer, Jawa Timur', 'Universitas Indonesia (UI), DKI Jakarta', 'TIDAK', 15380000000, 'Tersangka', 'Sekretaris Kabinet', '2025-12-07 17:02:51', '2025-12-07 18:20:23'),
(254, 129, 'Majalengka, Jawa Barat', '1971-05-10', 54, 'SMAN 1 Majalengka', 'Akademi Manajemen Perhotelan, Jawa Barat', 'University of Bonn, Jerman', 'Institut Pertanian Bogor (IPB), Jawa Barat', 9022400000, 'Terperiksa/Saksi', 'Kepala Badan Gizi Nasional', '2025-12-07 17:02:51', '2025-12-07 18:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_dpr_mprs`
--

CREATE TABLE `master_dpr_mprs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `kode_umap` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_dpr_mprs`
--

INSERT INTO `master_dpr_mprs` (`id`, `label`, `kode_umap`, `created_at`, `updated_at`) VALUES
(1, 'Tidak Anggota', 0, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(2, 'Anggota', 1, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(3, 'Ketua', 2, '2025-12-02 08:08:02', '2025-12-02 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_harta_levels`
--

CREATE TABLE `master_harta_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `kode_umap` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_harta_levels`
--

INSERT INTO `master_harta_levels` (`id`, `label`, `kode_umap`, `created_at`, `updated_at`) VALUES
(1, 'Tidak ada / default', 0, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(2, '< 5 Miliar', 1, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(3, '5 - 10 Miliar', 2, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(4, '10 - 15 Miliar', 3, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(5, '15 - 20 Miliar', 4, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(6, '20 - 30 Miliar', 5, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(7, '30 - 50 Miliar', 6, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(8, '50 - 100 Miliar', 7, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(9, '> 100 Miliar', 8, '2025-12-02 08:08:02', '2025-12-02 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_jabatan_rangkaps`
--

CREATE TABLE `master_jabatan_rangkaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `kode_umap` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_jabatan_rangkaps`
--

INSERT INTO `master_jabatan_rangkaps` (`id`, `label`, `kode_umap`, `created_at`, `updated_at`) VALUES
(1, 'Tidak diketahui / default', 0, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(2, 'Swasta/Independen', 1, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(3, 'Partai Politik', 2, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(4, 'Pemerintah', 3, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(5, 'BUMN (Badan Usaha Milik Negara)', 4, '2025-12-02 08:08:02', '2025-12-02 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_jenis_kelamins`
--

CREATE TABLE `master_jenis_kelamins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `kode_umap` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_jenis_kelamins`
--

INSERT INTO `master_jenis_kelamins` (`id`, `label`, `kode_umap`, `created_at`, `updated_at`) VALUES
(1, 'Laki-laki', 1, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(2, 'Perempuan', 2, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(3, 'Tidak Diketahui', 0, '2025-12-02 08:08:02', '2025-12-02 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_kementerians`
--

CREATE TABLE `master_kementerians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kementerian` varchar(255) NOT NULL,
  `kode_umap` int(10) UNSIGNED NOT NULL,
  `urutan` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_kementerians`
--

INSERT INTO `master_kementerians` (`id`, `nama_kementerian`, `kode_umap`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 'Kementrian Koordinator Bidang Politik dan Keamanan', 1, 1, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(2, 'Kementrian Koordinator Bidang Hukum, Hak Asasi Manusia, Imigrasi, dan  Pemasyarakatan', 2, 2, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(3, 'Kementrian Koordinator Bidang Perekonomian', 3, 3, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(4, 'Kementrian Koordinator Bidang Pembangunan Manusia dan Kebudayaan', 4, 4, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(5, 'Kementrian Koordinator Bidang Infrastruktur dan Pembangunan Kewilayahan', 5, 5, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(6, 'Kementrian Koordinator Bidang Pemberdayaan Masyarakat', 6, 6, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(7, 'Kementrian Koordinator Bidang Pangan', 7, 7, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(8, 'Kementrian Sekretaris Negara', 8, 8, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(9, 'Kementrian Dalam Negeri', 9, 9, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(10, 'Kementrian Luar Negeri', 10, 10, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(11, 'Kementrian Pertahanan', 11, 11, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(12, 'Kementrian Agama', 12, 12, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(13, 'Kementrian Hukum', 13, 13, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(14, 'Kementrian Keuangan', 14, 14, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(15, 'Kementrian Sosial', 15, 15, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(16, 'Kementrian Infrastruktur dan Pembangunan Kewilayahan', 16, 16, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(17, 'Kementrian Perdagangan', 17, 17, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(18, 'Kementrian Pertanian', 18, 18, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(19, 'Kementrian Lingkungan Hidup', 19, 19, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(20, 'Kementrian Komunikasi dan Digital', 20, 20, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(21, 'Kementrian Kesehatan', 21, 21, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(22, 'Kementrian Perhubungan', 22, 22, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(23, 'Kementrian Pendidikan Dasar dan Menengah', 23, 23, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(24, 'Kementrian Pendidikan Tinggi, Sains, dan Teknologi', 24, 24, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(25, 'Kementrian Kebudayaan', 25, 25, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(26, 'Kementrian Ekonomi Kreatif', 26, 26, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(27, 'Kementrian Pariwisata', 27, 27, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(28, 'Kementrian Ketenagakerjaan', 28, 28, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(29, 'Kementrian Perlindungan Pekerja Migran Indonesia', 29, 29, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(30, 'Kementrian Pemberdayaan Perempuan dan Perlindungan Anak', 30, 30, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(31, 'Kementrian Kependudukan dan Pembangunan Keluarga', 31, 31, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(32, 'Kementrian Perumahan dan Kawasan Permukiman', 32, 32, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(33, 'Kementrian Desa dan Pembangunan Daerah Tertinggal', 33, 33, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(34, 'Kementrian Transmigrasi', 34, 34, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(35, 'Kementrian Kelautan dan Perikanan', 35, 35, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(36, 'Kementrian Pekerjaan Umum', 36, 36, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(37, 'Kementrian Energi dan Sumber Daya Mineral', 37, 37, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(38, 'Kementrian Investasi dan Hilirisasi', 38, 38, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(39, 'Kementrian Badan Usaha Milik Negara', 39, 39, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(40, 'Kementrian Koperasi', 40, 40, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(41, 'Kementrian Usaha Mikro, Kecil, dan Menengah', 41, 41, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(42, 'Kementrian Perindustrian', 42, 42, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(43, 'Kementrian Peternakan', 43, 43, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(44, 'Kementrian Kehutanan', 44, 44, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(45, 'Kementrian Pangan', 45, 45, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(46, 'Kementrian Hukum, Hak Asasi Manusia, Imigrasi, dan Pemasyarakatan', 46, 46, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(47, 'Kementrian Komunikasi', 47, 47, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(48, 'Kementrian Digital', 48, 48, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(49, 'Kementrian Imigrasi', 49, 49, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(50, 'Kementrian Pemasyarakatan', 50, 50, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(51, 'Kementrian Hukum dan HAM', 51, 51, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(52, 'Kementrian Hukum dan Hak Asasi Manusia', 52, 52, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(53, 'Kementrian Pembangunan', 53, 53, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(54, 'Kementrian Infrastruktur', 54, 54, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(55, 'Kementrian Pemberdayaan Masyarakat', 55, 55, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(56, 'Kementrian Ketenagakerjaan dan Perlindungan Tenaga Kerja', 56, 56, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(57, 'Kementrian Koordinator dan Sekretaris Kabinet', 57, 57, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(58, 'Kementrian Sekretaris Kabinet', 58, 58, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(59, 'Kementrian Koordinator Pembangunan Manusia', 59, 59, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(60, 'Kementrian Koordinator Infrastruktur', 60, 60, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(61, 'Kementrian Koordinator Ekonomi Kreatif', 61, 61, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(62, 'Kementrian Koordinator Pariwisata', 62, 62, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(63, 'Kementrian Koordinator Pendidikan', 63, 63, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(64, 'Kementrian Koordinator Sosial', 64, 64, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(65, 'Kementrian Koordinator Perumahan', 65, 65, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(66, 'Kementrian Koordinator Kelautan', 66, 66, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(67, 'Kementrian Koordinator Kehutanan', 67, 67, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(68, 'Kementrian Koordinator Pekerjaan Umum', 68, 68, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(69, 'Kementrian Koordinator Energi', 69, 69, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(70, 'Kementrian Koordinator Investasi', 70, 70, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(71, 'Kementrian Koordinator BUMN', 71, 71, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(72, 'Kementrian Koordinator Koperasi', 72, 72, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(73, 'Kementrian Koordinator UMKM', 73, 73, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(74, 'Kementrian Koordinator Perindustrian', 74, 74, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(75, 'Kementrian Koordinator Peternakan', 75, 75, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(76, 'Kementrian Koordinator Pangan dan Pertanian', 76, 76, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(77, 'Kementrian Koordinator Hukum dan HAM', 77, 77, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(78, 'Kementrian Koordinator Komunikasi Digital', 78, 78, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(79, 'Kementrian Koordinator Kesehatan', 79, 79, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(80, 'Kementrian Koordinator Pendidikan Tinggi', 80, 80, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(81, 'Kementrian Koordinator Kebudayaan', 81, 81, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(82, 'Kementrian Koordinator Ekonomi Kreatif dan Pariwisata', 82, 82, '2025-12-02 08:08:01', '2025-12-02 08:08:01'),
(83, 'Kementrian Koordinator Perlindungan Pekerja Migran Indonesia', 83, 83, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(84, 'Kementrian Koordinator Kependudukan dan Pembangunan Keluarga', 84, 84, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(85, 'Kementrian Koordinator Pemberdayaan Perempuan', 85, 85, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(86, 'Kementrian Koordinator Transmigrasi', 86, 86, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(87, 'Kementrian Koordinator Desa', 87, 87, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(88, 'Kementrian Koordinator Perumahan dan Kawasan Permukiman', 88, 88, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(89, 'Kementrian Koordinator Pangan (cadangan)', 89, 89, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(90, 'Kementrian Koordinator Pemerintahan', 90, 90, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(91, 'Kementrian Koordinator Agama', 91, 91, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(92, 'Kementrian Koordinator Harta dan Kekayaan', 92, 92, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(93, 'Kementrian Koordinator Korupsi dan Hukum', 93, 93, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(94, 'Kementrian Koordinator Digitalisasi', 94, 94, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(95, 'Kementrian Koordinator Sosial Masyarakat', 95, 95, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(96, 'Kementrian Koordinator Pertahanan dan Militer', 96, 96, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(97, 'Kementrian Koordinator DPR/MPR', 97, 97, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(98, 'Kementrian Koordinator Pendidikan Nasional', 98, 98, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(99, 'Kementrian Koordinator Ekonomi Nasional', 99, 99, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(100, 'Kementrian Koordinator Infrastruktur Nasional', 100, 100, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(101, 'Kementrian Koordinator Kehutanan Nasional', 101, 101, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(102, 'Kementrian Koordinator Energi Nasional', 102, 102, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(103, 'Kementrian Koordinator Pangan Nasional', 103, 103, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(104, 'Kementrian Koordinator Kelautan Nasional', 104, 104, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(105, 'Kementrian Koordinator Transmigrasi Nasional', 105, 105, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(106, 'Tidak diketahui', 106, 106, '2025-12-02 08:08:02', '2025-12-02 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_korupsi_levels`
--

CREATE TABLE `master_korupsi_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `kode_umap` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_korupsi_levels`
--

INSERT INTO `master_korupsi_levels` (`id`, `label`, `kode_umap`, `created_at`, `updated_at`) VALUES
(1, 'Tidak ada / default', 0, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(2, 'Tidak Ada', 1, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(3, 'Terperiksa/Saksi', 2, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(4, 'Tersangka', 3, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(5, 'Terdakwa', 4, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(6, 'Terpidana/Tersangka', 5, '2025-12-02 08:08:02', '2025-12-02 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_militer_polisis`
--

CREATE TABLE `master_militer_polisis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `kode_umap` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_militer_polisis`
--

INSERT INTO `master_militer_polisis` (`id`, `label`, `kode_umap`, `created_at`, `updated_at`) VALUES
(1, 'Tidak ada / default', 0, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(2, 'Militer', 1, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(3, 'Polisi', 2, '2025-12-02 08:08:02', '2025-12-02 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_partais`
--

CREATE TABLE `master_partais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_partai` varchar(255) NOT NULL,
  `kode_umap` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_partais`
--

INSERT INTO `master_partais` (`id`, `nama_partai`, `kode_umap`, `created_at`, `updated_at`) VALUES
(1, 'Tidak ada / default', 0, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(2, 'Nonpartai', 1, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(3, 'Partai Gerakan Indonesia Raya (Gerindra)', 2, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(4, 'Partai Bulan Bintang (PBB)', 3, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(5, 'Partai Golongan Karya (Golkar)', 4, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(6, 'Partai Demokrat', 5, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(7, 'Partai Kebangkitan Bangsa (PKB)', 6, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(8, 'Partai Amanat Nasional (PAN)', 7, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(9, 'Partai Solidaritas Indonesia (PSI)', 8, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(10, 'Partai Rakyat Adil Makmur (PRIMA)', 9, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(11, 'Partai Gelombang Rakyat Indonesia (Gelora)', 10, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(12, 'Partai Keadilan dan Persatuan (PKP)', 11, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(13, 'Partai Persatuan Indonesia (Perindo)', 12, '2025-12-02 08:08:02', '2025-12-02 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_pendidikans`
--

CREATE TABLE `master_pendidikans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label_jurusan` varchar(255) NOT NULL,
  `kode_umap` tinyint(3) UNSIGNED NOT NULL,
  `jenjang_default` enum('s1','s2s3','umum') NOT NULL DEFAULT 'umum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_pendidikans`
--

INSERT INTO `master_pendidikans` (`id`, `label_jurusan`, `kode_umap`, `jenjang_default`, `created_at`, `updated_at`) VALUES
(1, 'Tidak ada S2/S3', 0, 's2s3', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(2, 'Kepolisian', 1, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(3, 'Pertahanan', 2, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(4, 'Militer', 3, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(5, 'Hukum', 4, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(6, 'Ekonomi', 5, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(7, 'Politik', 6, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(8, 'Kehutanan', 7, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(9, 'Teknik', 8, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(10, 'Sastra', 9, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(11, 'Perikanan', 10, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(12, 'Pemerintahan', 11, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(13, 'Peternakan', 12, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(14, 'Sosial', 13, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(15, 'Pertanian', 14, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(16, 'Manajemen', 15, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(17, 'Kesehatan', 16, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(18, 'Komunikasi', 17, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(19, 'Ilmu Lingkungan', 18, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(20, 'Administrasi', 19, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(21, 'Agama', 20, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(22, 'Sosial (kode 21)', 21, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(23, 'Kedokteran', 22, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(24, 'Matematika', 23, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(25, 'Sosial (kode 24)', 24, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(26, 'Administrasi (kode 25)', 25, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(27, 'Strategis', 26, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(28, 'Pendidikan', 27, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(29, 'Nanoteknologi', 28, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(30, 'Sejarah', 29, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(31, 'Sains', 30, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(32, 'Seni', 31, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(33, 'Biologi', 32, 'umum', '2025-12-02 08:08:02', '2025-12-02 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_provinsis`
--

CREATE TABLE `master_provinsis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kode_umap` tinyint(3) UNSIGNED NOT NULL,
  `region_order` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_provinsis`
--

INSERT INTO `master_provinsis` (`id`, `nama`, `kode_umap`, `region_order`, `created_at`, `updated_at`) VALUES
(1, 'Tidak diketahui', 0, 0, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(2, 'Aceh', 1, 1, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(3, 'Sumatera Utara', 2, 2, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(4, 'Sumatera Barat', 3, 3, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(5, 'Riau', 4, 4, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(6, 'Kepulauan Riau', 5, 5, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(7, 'Jambi', 6, 6, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(8, 'Bengkulu', 7, 7, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(9, 'Sumatera Selatan', 8, 8, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(10, 'Kepulauan Bangka Belitung', 9, 9, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(11, 'Lampung', 10, 10, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(12, 'DKI Jakarta', 11, 11, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(13, 'Jawa Barat', 12, 12, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(14, 'Banten', 13, 13, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(15, 'Jawa Tengah', 14, 14, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(16, 'Daerah Istimewa Yogyakarta', 15, 15, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(17, 'Jawa Timur', 16, 16, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(18, 'Bali', 17, 17, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(19, 'Nusa Tenggara Barat', 18, 18, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(20, 'Nusa Tenggara Timur', 19, 19, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(21, 'Kalimantan Barat', 20, 20, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(22, 'Kalimantan Tengah', 21, 21, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(23, 'Kalimantan Selatan', 22, 22, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(24, 'Kalimantan Timur', 23, 23, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(25, 'Kalimantan Utara', 24, 24, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(26, 'Sulawesi Utara', 25, 25, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(27, 'Gorontalo', 26, 26, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(28, 'Sulawesi Tengah', 27, 27, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(29, 'Sulawesi Barat', 28, 28, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(30, 'Sulawesi Selatan', 29, 29, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(31, 'Sulawesi Tenggara', 30, 30, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(32, 'Maluku Utara', 31, 31, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(33, 'Maluku', 32, 32, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(34, 'Papua', 33, 33, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(35, 'Papua Barat', 34, 34, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(36, 'Papua Tengah', 35, 35, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(37, 'Papua Pegunungan', 36, 36, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(38, 'Papua Selatan', 37, 37, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(39, 'Papua Barat Daya', 38, 38, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(40, 'Luar Negeri', 39, 39, '2025-12-02 08:08:02', '2025-12-02 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `master_umur_kategoris`
--

CREATE TABLE `master_umur_kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `kode_umap` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_umur_kategoris`
--

INSERT INTO `master_umur_kategoris` (`id`, `label`, `kode_umap`, `created_at`, `updated_at`) VALUES
(1, 'Tidak ada / default', 0, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(2, '10-an', 1, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(3, '20-an', 2, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(4, '30-an', 3, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(5, '40-an', 4, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(6, '50-an', 5, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(7, '60-an', 6, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(8, '70-an', 7, '2025-12-02 08:08:02', '2025-12-02 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `menteris`
--

CREATE TABLE `menteris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto_path` text DEFAULT NULL,
  `kementerian_id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin_id` bigint(20) UNSIGNED NOT NULL,
  `provinsi_lahir_id` bigint(20) UNSIGNED NOT NULL,
  `umur_kategori_id` bigint(20) UNSIGNED NOT NULL,
  `partai_id` bigint(20) UNSIGNED NOT NULL,
  `jabatan_rangkap_id` bigint(20) UNSIGNED NOT NULL,
  `pernah_menteri` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `dpr_mpr_id` bigint(20) UNSIGNED NOT NULL,
  `militer_polisi_id` bigint(20) UNSIGNED NOT NULL,
  `lokasi_sma_id` bigint(20) UNSIGNED NOT NULL,
  `lokasi_s1_id` bigint(20) UNSIGNED NOT NULL,
  `lokasi_s2_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lokasi_s3_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pendidikan_s1_id` bigint(20) UNSIGNED NOT NULL,
  `pendidikan_s2s3_id` bigint(20) UNSIGNED DEFAULT NULL,
  `korupsi_level_id` bigint(20) UNSIGNED NOT NULL,
  `harta_level_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('approved','pending','rejected') NOT NULL DEFAULT 'approved',
  `submitted_by_ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menteris`
--

INSERT INTO `menteris` (`id`, `nama`, `foto_path`, `kementerian_id`, `jenis_kelamin_id`, `provinsi_lahir_id`, `umur_kategori_id`, `partai_id`, `jabatan_rangkap_id`, `pernah_menteri`, `dpr_mpr_id`, `militer_polisi_id`, `lokasi_sma_id`, `lokasi_s1_id`, `lokasi_s2_id`, `lokasi_s3_id`, `pendidikan_s1_id`, `pendidikan_s2s3_id`, `korupsi_level_id`, `harta_level_id`, `status`, `submitted_by_ip`, `created_at`, `updated_at`) VALUES
(1, 'Budi Gunawan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Menkopolkam_Budi_Gunawan_%28cropped%29.jpg/120px-Menkopolkam_Budi_Gunawan_%28cropped%29.jpg', 1, 1, 15, 7, 2, 2, 0, 1, 2, 12, 15, 12, 12, 2, 5, 4, 9, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(2, 'Sjafrie Sjamsoeddin (ad interim)', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Sjafrie_Sjamsoeddin_dalam_acara_upacara_resmi_%E2%80%9CPenerimaan_Menteri_Pertahanan_RI%E2%80%9D_%28cropped%29.jpg/120px-Sjafrie_Sjamsoeddin_dalam_acara_upacara_resmi_%E2%80%9CPenerimaan_Menteri_Pertahanan_RI%E2%80%9D_%28cropped%29.jpg', 1, 1, 16, 8, 2, 1, 1, 2, 2, 12, 17, 12, 13, 3, 1, 4, 6, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(3, 'Djamari Chaniago', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Djamari_Chaniago%2C_Menteri_Koordinator_Bidang_Politik_dan_Keamanan_%282025%29_%28cropped%29.png/120px-Djamari_Chaniago%2C_Menteri_Koordinator_Bidang_Politik_dan_Keamanan_%282025%29_%28cropped%29.png', 1, 1, 4, 8, 3, 1, 1, 3, 2, 4, 4, 1, 15, 4, 1, 3, 6, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(4, 'Yusril Ihza Mahendra', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Yusril_Ihza_Mahendra_pada_Pelantikan_Menteri_Kabinet_Merah_Putih.jpg/120px-Yusril_Ihza_Mahendra_pada_Pelantikan_Menteri_Kabinet_Merah_Putih.jpg', 2, 1, 10, 7, 4, 3, 1, 2, 1, 12, 16, 1, 12, 5, 7, 3, 4, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(5, 'Airlangga Hartarto', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Airlangga_Hartarto_bersama_istri_saat_penyambutannya_kembali_sebagai_Menteri_Koordinator_Bidang_Perekonomian_RI_%282024%29_%28cropped%29.jpg/120px-Airlangga_Hartarto_bersama_istri_saat_penyambutannya_kembali_sebagai_Menteri_Koordinator_Bidang_Perekonomian_RI_%282024%29_%28cropped%29.jpg', 33, 1, 17, 7, 5, 3, 1, 2, 1, 17, 13, 1, 1, 5, 16, 4, 8, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-07 17:48:27'),
(6, 'Pratikno', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Pratikno_saat_Serah_Terima_Jabatan_Menko_PMK_%282024%29.jpg/120px-Pratikno_saat_Serah_Terima_Jabatan_Menko_PMK_%282024%29.jpg', 4, 1, 17, 7, 2, 1, 1, 1, 1, 17, 16, 1, 1, 7, 25, 5, 8, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(7, 'Agus Harimurti Yudhoyono', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Agus_Harimurti_Yudhoyono%2C_Coordinating_Minister_for_Infrastructure_and_Regional_Development_%282024%29_%28cropped%29.png/120px-Agus_Harimurti_Yudhoyono%2C_Coordinating_Minister_for_Infrastructure_and_Regional_Development_%282024%29_%28cropped%29.png', 5, 1, 13, 5, 6, 4, 0, 1, 2, 12, 1, 1, 1, 4, 26, 4, 2, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(8, 'Muhaimin Iskandar', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/KMP_Muhaimin_Iskandar_%282024%29.png/120px-KMP_Muhaimin_Iskandar_%282024%29.png', 6, 1, 17, 6, 7, 3, 1, 2, 1, 16, 17, 12, 12, 7, 25, 5, 5, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(9, 'Zulkifli Hasan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Zulkifli_Hasan%2C_Menteri_Perdagangan_%28cropped%29.jpg/120px-Zulkifli_Hasan%2C_Menteri_Perdagangan_%28cropped%29.jpg', 7, 1, 11, 7, 8, 3, 1, 2, 1, 12, 13, 1, 1, 6, 16, 5, 7, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(10, 'Prasetyo Hadi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Prasetyo_Hadi%2CMenteri_Sekretaris_Negara_RI_%282024%29_%28cropped%29.jpg/120px-Prasetyo_Hadi%2CMenteri_Sekretaris_Negara_RI_%282024%29_%28cropped%29.jpg', 8, 1, 15, 6, 3, 1, 0, 1, 1, 15, 16, 16, 12, 8, 5, 5, 4, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(11, 'Tito Karnavian', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Tito_Karnavian%2C_Menteri_Dalam_Negeri_%282024%29_%28cropped%29.jpg/120px-Tito_Karnavian%2C_Menteri_Dalam_Negeri_%282024%29_%28cropped%29.jpg', 9, 1, 9, 7, 2, 4, 1, 1, 3, 9, 13, 1, 1, 4, 27, 4, 3, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(12, 'Sugiono', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Sugiono%2C_Menteri_Luar_Negeri_Indonesia_%282024%29_%28cropped%29.jpg/120px-Sugiono%2C_Menteri_Luar_Negeri_Indonesia_%282024%29_%28cropped%29.jpg', 10, 1, 2, 5, 3, 3, 1, 2, 2, 15, 16, 1, 1, 7, 4, 6, 6, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(13, 'Sjafrie Sjamsoeddin', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Sjafrie_Sjamsoeddin_dalam_acara_upacara_resmi_%E2%80%9CPenerimaan_Menteri_Pertahanan_RI%E2%80%9D_%28cropped%29.jpg/120px-Sjafrie_Sjamsoeddin_dalam_acara_upacara_resmi_%E2%80%9CPenerimaan_Menteri_Pertahanan_RI%E2%80%9D_%28cropped%29.jpg', 1, 1, 13, 8, 2, 4, 1, 2, 2, 13, 15, 13, 13, 3, 1, 4, 5, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(14, 'Nasaruddin Umar', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Serah_Terima_Jabatan_Menteri_Agama_Nasaruddin_Umar_dari_Yaqut_Cholil_%282024%29_%28cropped%29.jpg/120px-Serah_Terima_Jabatan_Menteri_Agama_Nasaruddin_Umar_dari_Yaqut_Cholil_%282024%29_%28cropped%29.jpg', 12, 1, 30, 7, 2, 2, 1, 1, 1, 30, 30, 12, 1, 23, 7, 3, 7, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(15, 'Supratman Andi Agtas', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Supratman_Andi_Agtas_dilantik_sebagai_Menteri_Hukum_pada_Kabinet_Merah_Putih.png/120px-Supratman_Andi_Agtas_dilantik_sebagai_Menteri_Hukum_pada_Kabinet_Merah_Putih.png', 13, 1, 30, 6, 3, 1, 1, 2, 1, 28, 30, 30, 30, 5, 1, 2, 5, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(16, 'Natalius Pigai', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Natalius_Pigai_%28cropped%29.png/120px-Natalius_Pigai_%28cropped%29.png', 106, 1, 36, 5, 2, 1, 1, 1, 1, 34, 34, 1, 1, 24, 7, 2, 4, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(17, 'Agus Andrianto', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Agus_Andrianto%2C_Menteri_Imigrasi_dan_Pemasyarakatan_%282024%29_%28cropped%2C_white_background%29.jpg/120px-Agus_Andrianto%2C_Menteri_Imigrasi_dan_Pemasyarakatan_%282024%29_%28cropped%2C_white_background%29.jpg', 49, 1, 15, 6, 2, 1, 0, 1, 3, 15, 17, 3, 1, 2, 1, 2, 2, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-07 17:26:24'),
(18, 'Sri Mulyani', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Sri_Mulyani_usai_dilantik_sebagai_Menteri_Keuangan_di_Kabinet_Merah_Putih_%282024%29_%28cropped%29.png/120px-Sri_Mulyani_usai_dilantik_sebagai_Menteri_Keuangan_di_Kabinet_Merah_Putih_%282024%29_%28cropped%29.png', 14, 2, 11, 7, 2, 1, 1, 1, 1, 15, 12, 1, 1, 6, 1, 3, 5, 'approved', NULL, '2025-12-02 08:08:02', '2025-12-02 08:08:02'),
(19, 'Purbaya Yudhi Sadewa', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Purbaya_Yudhi_Sadewa_pada_saat_pelantikan_sebagai_Menteri_Keuangan_%282024%29.jpg/120px-Purbaya_Yudhi_Sadewa_pada_saat_pelantikan_sebagai_Menteri_Keuangan_%282024%29.jpg', 14, 1, 12, 7, 2, 1, 0, 1, 1, 12, 13, 1, 1, 6, 1, 3, 6, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(20, 'Abdul Mu’ti', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Abdul_Mu%27ti%2C_Menteri_Pendidikan_Dasar_dan_Menengah_%282024%29.jpg/120px-Abdul_Mu%27ti%2C_Menteri_Pendidikan_Dasar_dan_Menengah_%282024%29.jpg', 23, 1, 15, 6, 2, 2, 0, 1, 1, 15, 14, 1, 12, 23, 28, 2, 7, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(21, 'Satryo Soemantri Brodjonegoro', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Satryo_Brodjonegoro%2C_Menteri_Pendidikan_Tinggi%2C_Sains_dan_Teknologi_%282024%29.jpg/120px-Satryo_Brodjonegoro%2C_Menteri_Pendidikan_Tinggi%2C_Sains_dan_Teknologi_%282024%29.jpg', 24, 1, 40, 7, 2, 1, 1, 1, 1, 12, 13, 1, 1, 9, 1, 2, 6, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(22, 'Brian Yuliarto', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Brian_Yuliarto%2C_Mendiktisaintek_%282025%29_%28cropped%29.png/120px-Brian_Yuliarto%2C_Mendiktisaintek_%282025%29_%28cropped%29.png', 24, 1, 12, 6, 2, 4, 0, 1, 1, 12, 15, 1, 1, 9, 29, 2, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(23, 'Fadli Zon', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Fadli_Zon%2C_Menteri_Kebudayaan_%282024%29.jpg/120px-Fadli_Zon%2C_Menteri_Kebudayaan_%282024%29.jpg', 25, 1, 12, 6, 3, 3, 0, 2, 1, 12, 13, 1, 12, 10, 30, 2, 6, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(24, 'Budi Gunadi Sadikin', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Budi_Gunadi_Sadikin_usai_dilantik_sebagai_Menteri_Kesehatan_di_Kabinet_Merah_Putih_%282024%29.jpg/120px-Budi_Gunadi_Sadikin_usai_dilantik_sebagai_Menteri_Kesehatan_di_Kabinet_Merah_Putih_%282024%29.jpg', 21, 1, 13, 6, 2, 2, 1, 1, 1, 13, 15, 1, 1, 9, 6, 3, 8, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(25, 'Saifullah Yusuf', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Saifullah_Yusuf%2C_Menteri_Sosial_%282024%29_-_Kabinet_Merah_Putih.jpg/120px-Saifullah_Yusuf%2C_Menteri_Sosial_%282024%29_-_Kabinet_Merah_Putih.jpg', 15, 1, 17, 7, 7, 2, 1, 2, 1, 17, 12, 12, 1, 7, 25, 4, 8, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(26, 'Yassierli', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Yassierli%2C_Menteri_Ketenagakerjaan_%282024%29.jpg/120px-Yassierli%2C_Menteri_Ketenagakerjaan_%282024%29.jpg', 28, 1, 4, 5, 2, 1, 0, 1, 1, 4, 16, 13, 1, 9, 1, 3, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(27, 'Abdul Kadir Karding', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Abdul_Kadir_Karding%2C_Menteri_Perlindungan_Pekerja_Migran_%282024%29.jpg/120px-Abdul_Kadir_Karding%2C_Menteri_Perlindungan_Pekerja_Migran_%282024%29.jpg', 29, 1, 28, 6, 7, 4, 0, 2, 1, 28, 14, 15, 1, 11, 26, 5, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-05 12:00:57'),
(28, 'Mukhtarudin', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Mukhtarudin%2C_Menteri_Pelindungan_Pekerja_Migran_Indonesia_%282025%29.png/120px-Mukhtarudin%2C_Menteri_Pelindungan_Pekerja_Migran_Indonesia_%282025%29.png', 106, 1, 22, 6, 5, 4, 0, 2, 1, 22, 12, 23, 1, 5, 1, 2, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(29, 'Agus Gumiwang Kartasasmita', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/KIM_Agus_Gumiwang_Kartasasmita.jpg/120px-KIM_Agus_Gumiwang_Kartasasmita.jpg', 42, 1, 12, 5, 5, 3, 1, 2, 1, 12, 1, 1, 1, 12, 1, 3, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(30, 'Budi Santoso', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Budi_Santoso%2C_Menteri_Perdagangan_%282024%29.jpg/120px-Budi_Santoso%2C_Menteri_Perdagangan_%282024%29.jpg', 17, 1, 15, 7, 8, 1, 0, 1, 1, 15, 16, 1, 12, 5, 26, 4, 8, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(31, 'Bahlil Lahadalia', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Bahlil_Lahadalia%2C_Menteri_ESDM_%282024%29.jpg/120px-Bahlil_Lahadalia%2C_Menteri_ESDM_%282024%29.jpg', 37, 1, 31, 5, 5, 4, 1, 1, 1, 35, 30, 34, 1, 6, 31, 3, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(32, 'Dody Hanggodo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Dody_Hanggodo%2C_Menteri_Pekerjaan_Umum_%282024%29.jpg/120px-Dody_Hanggodo%2C_Menteri_Pekerjaan_Umum_%282024%29.jpg', 36, 1, 15, 6, 6, 1, 0, 1, 1, 15, 13, 1, 1, 9, 1, 2, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(33, 'Maruarar Sirait', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Marurar_Sirait%2C_Menteri_Perumahan_dan_Kawasan_Pemukiman_%282024%29.png/120px-Marurar_Sirait%2C_Menteri_Perumahan_dan_Kawasan_Pemukiman_%282024%29.png', 32, 1, 13, 6, 3, 1, 0, 2, 1, 12, 15, 1, 1, 5, 7, 3, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(34, 'Yandri Susanto', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Yandri_Susanto%2C_Menteri_Desa_dan_Pembangunan_Daerah_Tertinggal_%282024%29.jpg/120px-Yandri_Susanto%2C_Menteri_Desa_dan_Pembangunan_Daerah_Tertinggal_%282024%29.jpg', 33, 1, 11, 6, 8, 1, 0, 3, 1, 11, 16, 17, 1, 13, 28, 3, 7, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(35, 'Iftitah Sulaiman Suryanagara', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Iftitah_Sulaiman_Suryanagara%2C_Menteri_Transmigrasi_Indonesia_%28cropped%29.jpg/120px-Iftitah_Sulaiman_Suryanagara%2C_Menteri_Transmigrasi_Indonesia_%28cropped%29.jpg', 34, 1, 13, 5, 6, 1, 0, 1, 1, 13, 13, 12, 13, 7, 4, 2, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(36, 'Dudy Purwagandhi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Dudy_Purwagandhi%2C_Menteri_Perhubungan_%282025%29_%28cropped%29.jpg/120px-Dudy_Purwagandhi%2C_Menteri_Perhubungan_%282025%29_%28cropped%29.jpg', 22, 1, 12, 6, 8, 5, 0, 1, 1, 12, 16, 1, 1, 5, 9, 2, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(37, 'Meutya Hafid', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Meutya_Hafid_saat_pelantikan_Menteri_Kabinet_Merah_Putih_%282024%29.png/120px-Meutya_Hafid_saat_pelantikan_Menteri_Kabinet_Merah_Putih_%282024%29.png', 20, 2, 13, 5, 5, 1, 0, 2, 1, 12, 12, 12, 1, 9, 7, 3, 7, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(38, 'Amran Sulaiman', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/KMP_Amran_Sulaiman_%282024%29.png/120px-KMP_Amran_Sulaiman_%282024%29.png', 18, 1, 30, 6, 2, 4, 1, 1, 1, 30, 30, 12, 30, 15, 1, 3, 7, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(39, 'Raja Juli Antoni', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Raja_Juli_Antoni_usai_dilantik_sebagai_Menteri_Kehutanan_%282024%29.png/120px-Raja_Juli_Antoni_usai_dilantik_sebagai_Menteri_Kehutanan_%282024%29.png', 44, 1, 5, 5, 9, 3, 1, 1, 1, 5, 15, 1, 1, 7, 23, 3, 6, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(40, 'Sakti Wahyu Trenggono', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Sakti_Wahyu_Trenggono_Menteri_Kelautan_dan_Perikanan_%282024%29_-_white_background.png/120px-Sakti_Wahyu_Trenggono_Menteri_Kelautan_dan_Perikanan_%282024%29_-_white_background.png', 35, 1, 15, 7, 8, 3, 1, 1, 1, 15, 13, 12, 13, 16, 9, 3, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(41, 'Nusron Wahid', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Nusron_Wahid%2C_Menteri_Agraria_dan_Tata_Ruang_%282024%29_%28cropped%29.png/120px-Nusron_Wahid%2C_Menteri_Agraria_dan_Tata_Ruang_%282024%29_%28cropped%29.png', 106, 1, 15, 6, 5, 2, 1, 2, 1, 15, 15, 12, 12, 7, 1, 2, 8, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(42, 'Rachmat Pambudy', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Rachmat_Pambudy%2C_Menteri_Perencanaan_Pembangunan_%282025%29_%28cropped%29.png/120px-Rachmat_Pambudy%2C_Menteri_Perencanaan_Pembangunan_%282025%29_%28cropped%29.png', 106, 1, 16, 7, 3, 4, 0, 1, 1, 16, 13, 12, 13, 17, 1, 2, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(43, 'Rini Widyantini', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Menpan_RB_Rini_Widyantini_dan_Abdullah_Azwar_Anas_saat_serah_terima_jabatan_%282024%29_%28cropped%29.jpg/120px-Menpan_RB_Rini_Widyantini_dan_Abdullah_Azwar_Anas_saat_serah_terima_jabatan_%282024%29_%28cropped%29.jpg', 106, 2, 12, 7, 2, 1, 0, 1, 1, 13, 16, 1, 1, 25, 16, 2, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(44, 'Erick Thohir', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Erick_Thohir%2C_Menteri_BUMN_RI_%282024%29_%28cropped%29.png/120px-Erick_Thohir%2C_Menteri_BUMN_RI_%282024%29_%28cropped%29.png', 106, 1, 12, 6, 2, 2, 1, 1, 1, 12, 12, 1, 17, 6, 1, 3, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(45, 'Dony Oskaria (pelaksana tugas)', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Dony_Oskaria_sebagai_Kepala_BP_BUMN_%282025%29_%28cropped%29.png/120px-Dony_Oskaria_sebagai_Kepala_BP_BUMN_%282025%29_%28cropped%29.png', 106, 1, 4, 6, 2, 1, 0, 1, 1, 4, 16, 1, 1, 16, 1, 3, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(46, 'Wihaji', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Wihaji%2C_Menteri_Kependudukan_dan_Pembangunan_Keluarga_%282024%29.jpg/120px-Wihaji%2C_Menteri_Kependudukan_dan_Pembangunan_Keluarga_%282024%29.jpg', 106, 1, 15, 6, 5, 4, 0, 2, 1, 15, 16, 12, 12, 25, 1, 3, 8, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(47, 'Hanif Faisol Nurofiq', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Hanif_Faisol_Nurofiq%2C_Menteri_Lingkungan_Hidup_%282024%29_%28cropped%29.jpg/120px-Hanif_Faisol_Nurofiq%2C_Menteri_Lingkungan_Hidup_%282024%29_%28cropped%29.jpg', 106, 1, 15, 5, 8, 4, 0, 1, 1, 17, 17, 23, 17, 15, 1, 2, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(48, 'Rosan Roeslani', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Rosan_Perkasa_Roeslani%2C_Menteri_Investasi_dan_Hilirisasi_%282024%29_%28cropped%29.webp/120px-Rosan_Perkasa_Roeslani%2C_Menteri_Investasi_dan_Hilirisasi_%282024%29_%28cropped%29.webp.png', 38, 1, 12, 6, 2, 4, 1, 1, 1, 12, 12, 1, 1, 16, 1, 3, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(49, 'Budi Arie Setiadi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Budi_Arie_Setiadi%2C_Menteri_Koperasi_%282024%29.png/120px-Budi_Arie_Setiadi%2C_Menteri_Koperasi_%282024%29.png', 40, 1, 12, 6, 2, 3, 1, 1, 1, 13, 15, 12, 1, 19, 1, 3, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(50, 'Ferry Juliantono', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Ferry_Juliantono%2C_Wakil_Menteri_Koperasi_%282025%29.png/120px-Ferry_Juliantono%2C_Wakil_Menteri_Koperasi_%282025%29.png', 40, 1, 12, 6, 3, 3, 1, 2, 1, 12, 13, 12, 12, 5, 1, 5, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(51, 'Maman Abdurrahman', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Serah_Terima_Jabatan_Menteri_UMKM_Maman_Abdurrahman_oleh_Mantan_MenkopUKM_Teten_Masduki_%282024%29_%28cropped%29.jpg/120px-Serah_Terima_Jabatan_Menteri_UMKM_Maman_Abdurrahman_oleh_Mantan_MenkopUKM_Teten_Masduki_%282024%29_%28cropped%29.jpg', 41, 1, 12, 5, 5, 1, 0, 2, 1, 21, 13, 1, 1, 9, 1, 3, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(52, 'Widiyanti Putri', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Widiyanti_Putri%2C_Menteri_Pariwisata_%282024%29.jpg/120px-Widiyanti_Putri%2C_Menteri_Pariwisata_%282024%29.jpg', 27, 2, 15, 6, 2, 1, 0, 1, 1, 15, 16, 1, 1, 5, 1, 2, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(53, 'Teuku Riefky Harsya', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Sandiaga_Uno_dan_Teuku_Riefky_Harsya_saat_serah_terima_jabatan_menteri_%282024%29_%28cropped%29.jpg/120px-Sandiaga_Uno_dan_Teuku_Riefky_Harsya_saat_serah_terima_jabatan_menteri_%282024%29_%28cropped%29.jpg', 26, 1, 12, 6, 6, 3, 0, 2, 1, 12, 16, 12, 13, 17, 1, 3, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(54, 'Arifatul Choiri Fauzi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Arifah_Choiri_Fauzi_saat_Serah_Terima_Jabatan_Menteri_Pemberdayaan_Perempuan_dan_Perlindungan_Anak_%282024%29.png/120px-Arifah_Choiri_Fauzi_saat_Serah_Terima_Jabatan_Menteri_Pemberdayaan_Perempuan_dan_Perlindungan_Anak_%282024%29.png', 30, 2, 17, 6, 2, 2, 0, 1, 1, 17, 17, 13, 12, 5, 1, 3, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(55, 'Dito Ariotedjo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Menpora_Dito_Ariotedjo_Memberikan_Keterangan_Pers_usai_dilantik_%282024%29_%28cropped%29.jpg/120px-Menpora_Dito_Ariotedjo_Memberikan_Keterangan_Pers_usai_dilantik_%282024%29_%28cropped%29.jpg', 106, 1, 12, 4, 5, 1, 0, 1, 1, 12, 16, 1, 1, 5, 1, 3, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(56, 'Mochamad Irfan Yusuf', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Mochamad_Irfan_Yusuf%2C_Menteri_Haji_%26_Umrah_%282025%29.png/120px-Mochamad_Irfan_Yusuf%2C_Menteri_Haji_%26_Umrah_%282025%29.png', 106, 1, 17, 7, 3, 1, 0, 1, 1, 17, 16, 17, 17, 23, 1, 2, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(57, 'ST Burhanuddin', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/JAKSAAGUNG%2CSanitiar_Burhanuddin.jpg/120px-JAKSAAGUNG%2CSanitiar_Burhanuddin.jpg', 106, 1, 13, 7, 2, 1, 0, 1, 1, 13, 15, 12, 12, 5, 1, 2, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(58, 'Jenderal TNIAgus Subiyanto', NULL, 106, 1, 13, 6, 2, 1, 0, 1, 2, 13, 17, 15, 1, 26, 1, 2, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(59, 'Jenderal PolisivListyo Sigit Prabowo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Kapolri_Jenderal_Polisi_Listyo_Sigit_Prabowo.jpg/120px-Kapolri_Jenderal_Polisi_Listyo_Sigit_Prabowo.jpg', 106, 1, 15, 6, 2, 1, 0, 1, 3, 9, 15, 13, 12, 5, 1, 2, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(60, 'Muhammad Herindra', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/M._Herindra%2C_Wakil_Menteri_Pertahanan.jpg/120px-M._Herindra%2C_Wakil_Menteri_Pertahanan.jpg', 106, 1, 15, 7, 2, 1, 1, 1, 2, 12, 16, 1, 1, 25, 3, 2, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(61, 'Anto Mukti Putranto', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Anto_Mukti_Putranto%2C_Kepala_Staf_Kepresidenan_RI_%282024%29.png/120px-Anto_Mukti_Putranto%2C_Kepala_Staf_Kepresidenan_RI_%282024%29.png', 106, 1, 17, 7, 2, 1, 0, 1, 2, 17, 16, 1, 1, 4, 1, 2, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(62, 'Muhammad Qodari', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Muhammad_Qodari%2C_Kepala_Staf_Kepresidenan_RI_%282025%29.png/120px-Muhammad_Qodari%2C_Kepala_Staf_Kepresidenan_RI_%282025%29.png', 106, 1, 4, 6, 2, 1, 0, 1, 1, 11, 14, 12, 16, 7, 25, 2, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(63, 'Hasan Nasbi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Hasan_Nasbi%2C_Kepala_PCO_%28cropped%29.png/120px-Hasan_Nasbi%2C_Kepala_PCO_%28cropped%29.png', 106, 1, 4, 5, 2, 5, 0, 1, 1, 4, 13, 13, 1, 7, 1, 4, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(64, 'Angga Raka Prabowo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Angga_Raka_Prabowo%2C_Wakil_Menteri_Komunikasi_dan_Informatika_%282024%29.png/120px-Angga_Raka_Prabowo%2C_Wakil_Menteri_Komunikasi_dan_Informatika_%282024%29.png', 106, 1, 13, 4, 3, 4, 0, 1, 1, 13, 16, 1, 1, 19, 1, 4, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(65, 'Luhut Binsar Pandjaitan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Luhut_Pandjaitan_usai_dilantik_sebagai_Ketua_Dewan_Ekonomi_Nasional_oleh_Presiden_Prabowo_Subianto_%282024%29_%28cropped%29.jpg/120px-Luhut_Pandjaitan_usai_dilantik_sebagai_Ketua_Dewan_Ekonomi_Nasional_oleh_Presiden_Prabowo_Subianto_%282024%29_%28cropped%29.jpg', 106, 1, 3, 8, 2, 4, 1, 1, 2, 13, 17, 1, 1, 5, 1, 3, 7, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(66, 'Nugroho Sulistyo Budi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Nugroho_Sulistyo_Budi%2C_Kepala_BSSN_%282025%29.png/120px-Nugroho_Sulistyo_Budi%2C_Kepala_BSSN_%282025%29.png', 106, 1, 15, 6, 2, 1, 1, 1, 2, 15, 16, 13, 1, 4, 1, 2, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(67, 'Muhammad Yusuf Ateh', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Muhammad_Yusuf_Ateh%2C_Kepala_BPKP_%282025%29_%28cropped%29.png/120px-Muhammad_Yusuf_Ateh%2C_Kepala_BPKP_%282025%29_%28cropped%29.png', 106, 1, 12, 7, 2, 5, 1, 1, 1, 13, 14, 1, 16, 6, 1, 2, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(68, 'Amalia Adininggar Widyasanti', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Amalia_Adininggar_Widyasanti_%282023%29.jpg/120px-Amalia_Adininggar_Widyasanti_%282023%29.jpg', 106, 2, 16, 5, 2, 4, 0, 1, 1, 13, 16, 13, 1, 9, 6, 2, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(69, 'Lodewijk Freidrich Paulus', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Letjend_TNI_%28Purn.%29_Lodewijk_Freidrich_Paulus%2C_Wakil_Menteri_Koordinator_Politik_dan_Keamanan.jpg/120px-Letjend_TNI_%28Purn.%29_Lodewijk_Freidrich_Paulus%2C_Wakil_Menteri_Koordinator_Politik_dan_Keamanan.jpg', 106, 1, 26, 7, 5, 4, 1, 2, 2, 28, 15, 1, 1, 4, 1, 4, 6, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(70, 'Otto Hasibuan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Otto_Hasibuan_pada_saat_pelantikan_sebagai_Wakil_Menteri_Koordinator_Hukum%2C_Hak_Asasi_Manusia%2C_Imigrasi_dan_Permasyarakatan_%282024%29.png/120px-Otto_Hasibuan_pada_saat_pelantikan_sebagai_Wakil_Menteri_Koordinator_Hukum%2C_Hak_Asasi_Manusia%2C_Imigrasi_dan_Permasyarakatan_%282024%29.png', 106, 1, 3, 8, 2, 2, 0, 1, 1, 3, 15, 1, 1, 5, 16, 3, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(71, 'Bambang Eko Suhariyanto', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Wamensesneg_Bambang_Eko_Suhariyanto_pada_saat_Serah_Terima_Jabatan_Menteri_Sekretaris_Negara_%282024%29_%28cropped%29.jpg/120px-Wamensesneg_Bambang_Eko_Suhariyanto_pada_saat_Serah_Terima_Jabatan_Menteri_Sekretaris_Negara_%282024%29_%28cropped%29.jpg', 106, 1, 15, 7, 2, 5, 0, 1, 2, 17, 13, 1, 13, 12, 1, 4, 8, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(72, 'Juri Ardiantoro', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Juri_Ardiantoro%2C_Wakil_Menteri_Sekretaris_Negara_RI_%282024%29.jpg/120px-Juri_Ardiantoro%2C_Wakil_Menteri_Sekretaris_Negara_RI_%282024%29.jpg', 106, 1, 15, 6, 2, 4, 0, 1, 1, 15, 17, 12, 1, 7, 1, 4, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(73, 'Bima Arya Sugiarto', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Bima_Arya_Sugiarto%2C_Wakil_Menteri_Dalam_Negeri_%282024%29.jpeg/120px-Bima_Arya_Sugiarto%2C_Wakil_Menteri_Dalam_Negeri_%282024%29.jpeg', 106, 1, 13, 6, 8, 2, 0, 1, 1, 13, 13, 1, 1, 7, 1, 3, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(74, 'Ribka Haluk', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Ribka_Haluk%2C_Wakil_Menteri_Dalam_Negeri_%282025%29_%28cropped%29.png/120px-Ribka_Haluk%2C_Wakil_Menteri_Dalam_Negeri_%282025%29_%28cropped%29.png', 106, 2, 40, 6, 2, 1, 0, 1, 1, 37, 15, 13, 34, 16, 1, 4, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(75, 'Akhmad Wiyagus', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Akhmad_Wiyagus_dilantik_sebagai_Wakil_Menteri_Dalam_Negeri_%282025%29_%28cropped%29.jpg/120px-Akhmad_Wiyagus_dilantik_sebagai_Wakil_Menteri_Dalam_Negeri_%282025%29_%28cropped%29.jpg', 9, 1, 13, 6, 2, 4, 0, 1, 3, 13, 16, 1, 1, 5, 1, 2, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-07 18:11:32'),
(76, 'Anis Matta', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Anis_Matta%2C_Wakil_Menteri_Luar_Negeri_RI_%282024%29_%28cropped%29.jpg/120px-Anis_Matta%2C_Wakil_Menteri_Luar_Negeri_RI_%282024%29_%28cropped%29.jpg', 106, 1, 30, 6, 11, 3, 1, 2, 1, 30, 14, 1, 1, 23, 5, 4, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(77, 'Arrmanatha Christiawan Nasir', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Arrmanatha_C._Nasir%2C_Wakil_Menteri_Luar_Negeri_%282024%29_%28cropped%29.jpg/120px-Arrmanatha_C._Nasir%2C_Wakil_Menteri_Luar_Negeri_%282024%29_%28cropped%29.jpg', 106, 1, 12, 6, 2, 1, 1, 1, 1, 12, 16, 12, 1, 6, 25, 5, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(78, 'Arif Havas Oegroseno', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Arif_Havas_Oegroseno%2C_Wakil_Menteri_Luar_Negeri_RI_%282024%29_%28cropped%29.jpg/120px-Arif_Havas_Oegroseno%2C_Wakil_Menteri_Luar_Negeri_RI_%282024%29_%28cropped%29.jpg', 106, 1, 15, 7, 2, 5, 1, 1, 1, 12, 15, 1, 1, 5, 1, 4, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(79, 'Donny Ermawan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Donny_Ermawan_Taufanto%2C_Wakil_Menteri_Pertahanan_Indonesia_%282024%29_%28cropped%29.jpg/120px-Donny_Ermawan_Taufanto%2C_Wakil_Menteri_Pertahanan_Indonesia_%282024%29_%28cropped%29.jpg', 106, 1, 16, 6, 2, 1, 1, 1, 2, 16, 15, 13, 13, 5, 1, 5, 6, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(80, 'Muhammad Syafi\'i', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Anggota_Badan_Pengkajian_Majelis_Permusyawaratan_Rakyat_Republik_Indonesia_Romo_H._R._Muhammad_Syafi%27i_%28cropped-2%29.png/120px-Anggota_Badan_Pengkajian_Majelis_Permusyawaratan_Rakyat_Republik_Indonesia_Romo_H._R._Muhammad_Syafi%27i_%28cropped-2%29.png', 106, 1, 3, 7, 3, 1, 0, 2, 1, 3, 14, 17, 12, 23, 1, 6, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(81, 'Eddy Hiariej', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Eddy_Hiariej%2C_Wakil_Menteri_Hukum_%282024%29.jpg/120px-Eddy_Hiariej%2C_Wakil_Menteri_Hukum_%282024%29.jpg', 106, 1, 28, 6, 2, 5, 1, 1, 1, 28, 16, 16, 16, 5, 1, 4, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(82, 'Mugiyanto', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Mugiyanto%2C_Wakil_Menteri_Hak_Asasi_Manusia_%282024%29_%28cropped%29.png/120px-Mugiyanto%2C_Wakil_Menteri_Hak_Asasi_Manusia_%282024%29_%28cropped%29.png', 106, 1, 15, 6, 2, 5, 0, 1, 1, 15, 16, 12, 1, 7, 1, 6, 6, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(83, 'Silmy Karim', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Wakil_Menteri_Imigrasi_dan_Pemasyarakatan_Silmy_Karim_%282024%29_%28cropped%29.jpg/120px-Wakil_Menteri_Imigrasi_dan_Pemasyarakatan_Silmy_Karim_%282024%29_%28cropped%29.jpg', 106, 1, 15, 6, 2, 5, 1, 1, 1, 12, 12, 12, 12, 6, 3, 4, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(84, 'Suahasil Nazara', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Suahasil_Nazara%2C_Wakil_Menteri_Keuangan_%282024%29.jpg/120px-Suahasil_Nazara%2C_Wakil_Menteri_Keuangan_%282024%29.jpg', 106, 1, 12, 6, 2, 1, 1, 1, 1, 12, 16, 1, 1, 6, 1, 4, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(85, 'Thomas Djiwandono', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Thomas_Djiwandono_pada_saat_pelantikan_sebagai_Wakil_Menteri_Keuangan_di_Kabinet_Merah_Putih_%282024%29.png/120px-Thomas_Djiwandono_pada_saat_pelantikan_sebagai_Wakil_Menteri_Keuangan_di_Kabinet_Merah_Putih_%282024%29.png', 106, 1, 12, 6, 3, 3, 0, 1, 1, 12, 1, 1, 1, 6, 1, 6, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(86, 'Anggito Abimanyu', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Anggito_Abimanyu_%28cropped%29.jpg/120px-Anggito_Abimanyu_%28cropped%29.jpg', 106, 1, 13, 7, 2, 4, 1, 1, 1, 16, 13, 1, 1, 6, 1, 3, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(87, 'Atip Latipulhayat', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Atip_Latipulhayat%2C_Wakil_Menteri_Pendidikan_Dasar_dan_Menengah_%282024%29.jpg/120px-Atip_Latipulhayat%2C_Wakil_Menteri_Pendidikan_Dasar_dan_Menengah_%282024%29.jpg', 106, 1, 13, 6, 2, 2, 0, 1, 1, 13, 13, 12, 1, 5, 1, 4, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(88, 'Fajar Riza Ul Haq', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Fajar_Riza_Ul_Haq%2C_Wakil_Menteri_Pendidikan_Dasar_dan_Menengah_%282024%29.jpg/120px-Fajar_Riza_Ul_Haq%2C_Wakil_Menteri_Pendidikan_Dasar_dan_Menengah_%282024%29.jpg', 106, 1, 13, 5, 2, 1, 0, 1, 1, 13, 14, 16, 16, 5, 23, 2, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(89, 'Fauzan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Prof._Fauzan%2C_Wakil_Menteri_Pendidikan_Tinggi%2C_Sains%2C_dan_Teknologi_%282024%29.jpg/120px-Prof._Fauzan%2C_Wakil_Menteri_Pendidikan_Tinggi%2C_Sains%2C_dan_Teknologi_%282024%29.jpg', 106, 1, 17, 4, 2, 2, 0, 1, 1, 15, 16, 1, 17, 28, 1, 6, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(90, 'Stella Christie', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Prof._Stella_Christie%2C_Wakil_Menteri_Pendidikan_Tinggi%2C_Sains%2C_dan_Teknologi_%282024%29.jpg/120px-Prof._Stella_Christie%2C_Wakil_Menteri_Pendidikan_Tinggi%2C_Sains%2C_dan_Teknologi_%282024%29.jpg', 106, 2, 12, 5, 2, 5, 0, 1, 1, 12, 15, 12, 1, 20, 1, 2, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(91, 'Giring Ganesha', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Giring_Ganesha%2C_Wakil_Menteri_Kebudayaan_%282024%29.jpg/120px-Giring_Ganesha%2C_Wakil_Menteri_Kebudayaan_%282024%29.jpg', 106, 1, 13, 5, 9, 1, 0, 1, 1, 13, 12, 1, 1, 25, 1, 5, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(92, 'Dante Saksono Harbuwono', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/PP_Wamenkes_dr._Dante_Saksono.jpg/120px-PP_Wamenkes_dr._Dante_Saksono.jpg', 106, 1, 15, 6, 2, 5, 0, 1, 1, 15, 15, 12, 1, 21, 1, 4, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(93, 'Benjamin Paulus Octavianus', 'https://kemkes.go.id/app_asset/image_content/176101252968f6eb31973ce2.03213826.png', 106, 1, 17, 7, 3, 3, 0, 1, 2, 17, 15, 1, 1, 21, 1, 5, 8, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(94, 'Agus Jabo Priyono', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Agus_Jabo_Priyono%2C_Wakil_Menteri_Sosial_%282024%29.jpg/120px-Agus_Jabo_Priyono%2C_Wakil_Menteri_Sosial_%282024%29.jpg', 15, 1, 13, 7, 10, 3, 0, 1, 1, 13, 15, 1, 15, 7, 1, 4, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-07 17:27:30'),
(95, 'Immanuel Ebenezer', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Immanuel_Ebenezer%2C_Wakil_Menteri_Ketenagakerjaan_%282024%29.jpg/120px-Immanuel_Ebenezer%2C_Wakil_Menteri_Ketenagakerjaan_%282024%29.jpg', 106, 1, 3, 6, 3, 1, 0, 1, 1, 3, 15, 1, 1, 5, 1, 4, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(96, 'Afriansyah Noor', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Afriansyah_Noor_%28cropped%29.jpg/120px-Afriansyah_Noor_%28cropped%29.jpg', 28, 1, 7, 7, 6, 1, 0, 1, 1, 9, 16, 12, 1, 5, 1, 4, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-07 17:25:45'),
(97, 'Christina Aryani', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Christina_Aryani%2C_Wakil_Menteri_Perlindungan_Pekerja_Migran_%282024%29.jpg/120px-Christina_Aryani%2C_Wakil_Menteri_Perlindungan_Pekerja_Migran_%282024%29.jpg', 106, 2, 12, 5, 5, 4, 0, 2, 1, 12, 15, 12, 1, 5, 6, 4, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(98, 'Dzulfikar Ahmad Tawalla', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Dzulfikar_Ahmad_Tawalla%2C_Wakil_Menteri_Perlindungan_Pekerja_Migran_%282024%29.jpg/120px-Dzulfikar_Ahmad_Tawalla%2C_Wakil_Menteri_Perlindungan_Pekerja_Migran_%282024%29.jpg', 106, 1, 30, 4, 2, 2, 0, 1, 1, 30, 14, 12, 1, 28, 19, 6, 7, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(99, 'Faisol Riza', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Faisol_Riza%2C_Wakil_Menteri_Perindustrian_%282024%29.jpg/120px-Faisol_Riza%2C_Wakil_Menteri_Perindustrian_%282024%29.jpg', 106, 1, 17, 6, 7, 1, 0, 2, 1, 17, 14, 12, 12, 7, 1, 3, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(100, 'Dyah Roro Esti', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Dyah_Roro_Esti%2C_Wakil_Menteri_Perdagangan_%282024%29_%28cropped%29.jpg/120px-Dyah_Roro_Esti%2C_Wakil_Menteri_Perdagangan_%282024%29_%28cropped%29.jpg', 106, 2, 12, 4, 5, 5, 0, 2, 1, 12, 16, 1, 1, 9, 5, 4, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(101, 'Yuliot Tanjung', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Yuliot_Tanjung%2C_Wakil_Menteri_Investasi_%282024%29.jpg/120px-Yuliot_Tanjung%2C_Wakil_Menteri_Investasi_%282024%29.jpg', 106, 1, 4, 7, 2, 5, 0, 1, 1, 4, 15, 12, 1, 6, 1, 4, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(102, 'Diana Kusumastuti', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Diana_Kusumastuti%2C_Wakil_Menteri_Pekerjaan_Umum_%282024%29.jpg/120px-Diana_Kusumastuti%2C_Wakil_Menteri_Pekerjaan_Umum_%282024%29.jpg', 106, 2, 15, 6, 2, 4, 1, 1, 1, 15, 16, 13, 13, 18, 9, 3, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(103, 'Fahri Hamzah', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Fahri_Hamzah%2C_Wakil_Menteri_Perumahan_dan_Kawasan_Permukiman_%282024%29.jpg/120px-Fahri_Hamzah%2C_Wakil_Menteri_Perumahan_dan_Kawasan_Permukiman_%282024%29.jpg', 106, 1, 19, 6, 11, 1, 0, 2, 1, 19, 15, 1, 1, 15, 6, 4, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(104, 'Ahmad Riza Patria', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Ahmad_Riza_Patria.png/120px-Ahmad_Riza_Patria.png', 33, 1, 23, 6, 3, 1, 1, 2, 1, 12, 15, 13, 13, 9, 26, 5, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-07 18:10:38'),
(105, 'Viva Yoga Mauladi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Viva_Yoga_Mauladi%2C_Wakil_Menteri_Transmigrasi_%282025%29.jpg/120px-Viva_Yoga_Mauladi%2C_Wakil_Menteri_Transmigrasi_%282025%29.jpg', 106, 1, 12, 6, 8, 1, 0, 2, 1, 12, 16, 16, 12, 7, 1, 6, 7, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(106, 'Suntana', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Suntana%2C_Wakil_Menteri_Perhubungan_%282025%29_%28cropped%29.png/120px-Suntana%2C_Wakil_Menteri_Perhubungan_%282025%29_%28cropped%29.png', 106, 1, 13, 6, 2, 5, 0, 1, 3, 13, 15, 1, 13, 5, 1, 4, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(107, 'Nezar Patria', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Nezar_Patria%2C_Wakil_Menteri_Komunikasi_dan_Informatika_%282024%29_%28cropped%29.jpg/120px-Nezar_Patria%2C_Wakil_Menteri_Komunikasi_dan_Informatika_%282024%29_%28cropped%29.jpg', 106, 1, 12, 6, 2, 2, 1, 1, 1, 12, 16, 1, 1, 5, 25, 4, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(108, 'Sudaryono', 'https://upload.wikimedia.org/wikipedia/id/thumb/4/41/Foto_Sudaryono_Terkini.png/120px-Foto_Sudaryono_Terkini.png', 106, 1, 15, 4, 3, 1, 0, 1, 1, 16, 1, 12, 15, 5, 1, 5, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(109, 'Sulaiman Umar Siddiq', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Sulaiman_Umar_Siddiq%2C_Wakil_Menteri_Kehutanan_%282024%29_%28cropped%29.png/120px-Sulaiman_Umar_Siddiq%2C_Wakil_Menteri_Kehutanan_%282024%29_%28cropped%29.png', 106, 1, 30, 4, 2, 1, 0, 1, 1, 30, 14, 12, 13, 26, 1, 4, 7, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(110, 'Rohmat Marzuki', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Rohmat_Marzuki%2C_Wakil_Menteri_Kehutanan_%282025%29.png/120px-Rohmat_Marzuki%2C_Wakil_Menteri_Kehutanan_%282025%29.png', 106, 1, 15, 6, 3, 3, 0, 1, 1, 15, 13, 1, 1, 7, 1, 6, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(111, 'Didit Herdiawan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Didit_Herdiawan_Ashaf%2C_Wakil_Menteri_Kelautan_dan_Perikanan_%282024%29_-_white.png/120px-Didit_Herdiawan_Ashaf%2C_Wakil_Menteri_Kelautan_dan_Perikanan_%282024%29_-_white.png', 106, 1, 17, 7, 2, 4, 0, 1, 1, 13, 16, 1, 13, 26, 1, 4, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(112, 'Ossy Dermawan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Ossy_Dermawan%2C_Wakil_Menteri_Agraria_dan_Tata_Ruang_%282024%29_%28cropped%29.jpg/120px-Ossy_Dermawan%2C_Wakil_Menteri_Agraria_dan_Tata_Ruang_%282024%29_%28cropped%29.jpg', 106, 1, 12, 5, 6, 3, 0, 1, 1, 12, 15, 1, 12, 27, 1, 6, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(113, 'Febrian Alphyanto Ruddyard', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Febrian_Alphyanto_Ruddyard%2C_Wakil_Menteri_Perencanaan_Pembangunan_%282025%29.png/120px-Febrian_Alphyanto_Ruddyard%2C_Wakil_Menteri_Perencanaan_Pembangunan_%282025%29.png', 106, 1, 15, 4, 2, 4, 0, 1, 1, 15, 16, 1, 1, 25, 1, 6, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(114, 'Purwadi Arianto', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Purwadi_Arianto%2C_Wakil_Menteri_PAN-RB_%282024%29_%28cropped%29.png/120px-Purwadi_Arianto%2C_Wakil_Menteri_PAN-RB_%282024%29_%28cropped%29.png', 106, 1, 12, 6, 2, 5, 0, 1, 3, 17, 16, 1, 1, 5, 1, 4, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(115, 'Kartika Wirjoatmodjo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Kartika_Wirjoatmodjo%2C_Wakil_Menteri_BUMN_%28version_3%29.png/120px-Kartika_Wirjoatmodjo%2C_Wakil_Menteri_BUMN_%28version_3%29.png', 106, 1, 17, 6, 2, 1, 1, 1, 1, 16, 16, 1, 1, 6, 26, 6, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(116, 'Aminuddin Ma\'ruf', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Aminuddin_Ma%27ruf%2C_Wakil_Menteri_BUMN_%282024%29.jpg/120px-Aminuddin_Ma%27ruf%2C_Wakil_Menteri_BUMN_%282024%29.jpg', 106, 1, 30, 4, 2, 5, 0, 1, 1, 30, 15, 16, 30, 6, 23, 4, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(117, 'Dony Oskaria', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Dony_Oskaria_sebagai_Kepala_BP_BUMN_%282025%29_%28cropped%29.png/120px-Dony_Oskaria_sebagai_Kepala_BP_BUMN_%282025%29_%28cropped%29.png', 106, 1, 4, 6, 2, 5, 0, 1, 1, 4, 15, 1, 1, 5, 16, 3, 4, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(118, 'Isyana Bagoes Oka', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Ratu_Ayu_Isyana_Bagoes_Oka%2C_Wakil_Menteri_Kependudukan_dan_Pembangunan_Keluarga_%282024%29.jpg/120px-Ratu_Ayu_Isyana_Bagoes_Oka%2C_Wakil_Menteri_Kependudukan_dan_Pembangunan_Keluarga_%282024%29.jpg', 106, 2, 12, 6, 9, 4, 0, 1, 1, 12, 16, 1, 1, 25, 1, 2, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(119, 'Diaz Hendropriyono', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Diaz_Hendropiyono.png/120px-Diaz_Hendropiyono.png', 106, 1, 12, 5, 12, 5, 0, 1, 1, 12, 17, 1, 1, 7, 1, 2, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(120, 'Todotua Pasaribu', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Todotua_Pasaribu%2C_Wakil_Menteri_Investasi_dan_Hilirisasi_%282024%29_%28cropped%29.webp/120px-Todotua_Pasaribu%2C_Wakil_Menteri_Investasi_dan_Hilirisasi_%282024%29_%28cropped%29.webp.png', 106, 1, 28, 5, 2, 4, 0, 1, 1, 28, 15, 1, 1, 5, 1, 5, 9, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(121, 'Farida Farichah', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Farida_Farichah%2C_Wakil_Menteri_Koperasi_%282025%29.jpg/120px-Farida_Farichah%2C_Wakil_Menteri_Koperasi_%282025%29.jpg', 106, 2, 15, 6, 7, 4, 0, 1, 1, 15, 16, 13, 1, 28, 31, 4, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(122, 'Helvi Yuni Moraza', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Hevli_Yuni_Moraza.jpg/120px-Hevli_Yuni_Moraza.jpg', 106, 1, 4, 4, 3, 5, 0, 1, 1, 4, 15, 12, 12, 6, 16, 4, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(123, 'Ni Luh Puspa', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Ni_Luh_Erna_Erawati%2C_Wakil_Menteri_Pariwisata_%282024%29_%28cropped%29.jpg/120px-Ni_Luh_Erna_Erawati%2C_Wakil_Menteri_Pariwisata_%282024%29_%28cropped%29.jpg', 27, 2, 18, 4, 2, 1, 0, 1, 1, 18, 18, 30, 1, 5, 1, 5, 6, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-07 17:24:37'),
(124, 'Irene Umar', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Irene_Umar.jpg/120px-Irene_Umar.jpg', 106, 2, 12, 4, 2, 4, 0, 1, 1, 14, 15, 12, 1, 16, 1, 4, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(125, 'Veronica Tan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Veronica_Tan%2C_Wakil_Menteri_Pemberdayaan_Perempuan_dan_Perlindungan_Anak_%282024%29.png/120px-Veronica_Tan%2C_Wakil_Menteri_Pemberdayaan_Perempuan_dan_Perlindungan_Anak_%282024%29.png', 106, 2, 3, 5, 13, 5, 0, 1, 1, 3, 15, 1, 1, 18, 1, 4, 2, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(126, 'Taufik Hidayat', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Taufik_Hidayat%2C_Wakil_Menteri_Pemuda_dan_Olahraga_%282025%29.png/120px-Taufik_Hidayat%2C_Wakil_Menteri_Pemuda_dan_Olahraga_%282025%29.png', 106, 1, 13, 5, 3, 5, 0, 1, 1, 13, 13, 12, 12, 5, 1, 4, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(127, 'Dahnil Anzar Simanjuntak', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Dahnil_Anzar_Simanjuntak%2C_Wakil_Menteri_Haji_dan_Umrah_%282025%29.png/120px-Dahnil_Anzar_Simanjuntak%2C_Wakil_Menteri_Haji_dan_Umrah_%282025%29.png', 106, 1, 3, 5, 3, 2, 1, 1, 1, 3, 14, 15, 15, 6, 7, 3, 3, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(128, 'Letkol TNI Teddy Indra Wijaya', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Mayor_TNI_Teddy_Indra_Wijaya%2C_Sekretaris_Kabinet_%282024%29.jpg/120px-Mayor_TNI_Teddy_Indra_Wijaya%2C_Sekretaris_Kabinet_%282024%29.jpg', 106, 1, 26, 4, 2, 4, 0, 1, 2, 15, 17, 12, 1, 4, 1, 4, 6, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03'),
(129, 'Dadan Hindayana', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Kepala_Badan_Gizi_Nasional%2C_Dadan_Hindayana.%28cropped%29.png/120px-Kepala_Badan_Gizi_Nasional%2C_Dadan_Hindayana.%28cropped%29.png', 106, 1, 13, 6, 2, 1, 0, 1, 1, 13, 13, 1, 13, 33, 1, 3, 5, 'approved', NULL, '2025-12-02 08:08:03', '2025-12-02 08:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_12_02_131659_create_master_kementerians_table', 1),
(6, '2025_12_02_132226_create_master_jenis_kelamins_table', 1),
(7, '2025_12_02_132249_create_master_provinsis_table', 1),
(8, '2025_12_02_132304_create_master_umur_kategoris_table', 1),
(9, '2025_12_02_132455_create_master_partais_table', 1),
(10, '2025_12_02_132512_create_master_jabatan_rangkaps_table', 1),
(11, '2025_12_02_132524_create_master_dpr_mprs_table', 1),
(12, '2025_12_02_132541_create_master_militer_polisis_table', 1),
(13, '2025_12_02_132557_create_master_pendidikans_table', 1),
(14, '2025_12_02_132610_create_master_korupsi_levels_table', 1),
(15, '2025_12_02_132623_create_master_harta_levels_table', 1),
(16, '2025_12_02_133247_create_menteris_table', 1),
(18, '2025_12_02_180009_create_umap_embeddings_table', 2),
(19, '2025_12_06_083134_add_is_admin_to_users_table', 3),
(20, '2025_12_06_161131_create_detail_menteris_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `umap_embeddings`
--

CREATE TABLE `umap_embeddings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menteri_id` bigint(20) UNSIGNED NOT NULL,
  `umap_x` double NOT NULL,
  `umap_y` double NOT NULL,
  `color_code` varchar(7) DEFAULT NULL,
  `batch_tag` varchar(255) NOT NULL DEFAULT 'v1',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `umap_embeddings`
--

INSERT INTO `umap_embeddings` (`id`, `menteri_id`, `umap_x`, `umap_y`, `color_code`, `batch_tag`, `is_active`, `created_at`, `updated_at`) VALUES
(647, 1, 1.3352659042124, -1.2297345251205, '#4BC0C0', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(648, 2, 1.4860091341537, -1.2056654308156, '#34D399', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(649, 3, 0.66449556103208, 0.29511429729333, '#FFB1C1', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(650, 4, 0.58473204432804, 0.37603264929597, '#00BBF9', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(651, 5, 5.9228232012739, -6.0443877477319, '#00C49A', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(652, 6, 6.0810095002388, -5.3997733985727, '#FF6384', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(653, 7, 6.254443646061, -5.833781184314, '#00C49A', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(654, 8, 6.0509112327075, -4.452778019329, '#FFB1C1', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(655, 9, 6.1578361792097, -6.2111560271811, '#9BDEAC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(656, 10, 1.8974193520993, -2.0844141033552, '#36A2EB', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(657, 11, 6.4179286696965, -5.8243313017857, '#60A5FA', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(658, 12, 4.7637850933006, -8.1871264100734, '#FF9F40', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(659, 13, 1.3941559060243, -1.0889313876433, '#F15BB5', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(660, 14, 4.1948636951527, -4.7157957519906, '#A3E635', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(661, 15, 2.8274582047186, -2.3387953549163, '#F472B6', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(662, 16, 3.9576231429147, -4.7715782607634, '#9966FF', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(663, 17, 3.8766421504625, -8.8159472248645, '#FFCE56', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(664, 18, 4.284736824437, -8.0693452204007, '#4BC0C0', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(665, 19, 4.5111498789319, -7.9387288602134, '#36A2EB', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(666, 20, 6.4759332027303, -4.9205859894614, '#FFCE56', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(667, 21, 3.2822998612936, -8.0832371807536, '#A3E635', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(668, 22, 6.4767665134478, -5.5102276180806, '#F472B6', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(669, 23, 6.6063796506076, -5.0583894332255, '#FB7185', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(670, 24, 4.9378307677968, -7.518261835996, '#F15BB5', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(671, 25, 5.8122110541129, -4.9794929672645, '#9BDEAC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(672, 26, 1.7390918980139, -7.0184078737658, '#F15BB5', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(673, 27, 5.4373323309173, -4.7313212371798, '#36A2EB', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(674, 28, 0.08700229478038, -6.6013560086474, '#00BBF9', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(675, 29, 3.9337687157076, -7.9014607368816, '#9AD0F5', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(676, 30, 6.423276509866, -5.158258317408, '#60A5FA', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(677, 31, 5.4135811120086, -4.6349404485292, '#FF9F40', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(678, 32, 4.2737957809438, -7.4345046686147, '#4BC0C0', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(679, 33, 5.0477599270949, -7.4458123880202, '#34D399', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(680, 34, 6.0528579535735, -4.8585918739197, '#FFCE56', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(681, 35, 2.1370011230742, -1.3744393878632, '#00BBF9', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(682, 36, 4.9379409324964, -7.2136784699663, '#FFCE56', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(683, 37, 1.0143046255976, -6.9586516502646, '#FF6384', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(684, 38, 2.9973567590335, -2.4093182174672, '#36A2EB', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(685, 39, 6.6922480732131, -5.9898152863989, '#FFB1C1', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(686, 40, 1.7965175538188, -2.8256704309393, '#FF6384', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(687, 41, 1.7803815029126, -1.6919151814127, '#00C49A', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(688, 42, 1.933631424515, -2.933356393025, '#00BBF9', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(689, 43, 2.9312780282716, -5.4605930296809, '#FFCE56', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(690, 44, 0.52110880060584, 0.5104270459348, '#FF9F40', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(691, 45, 2.6412713513146, -6.5627336824387, '#FFB1C1', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(692, 46, 2.1285530223341, -3.4440897310946, '#34D399', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(693, 47, 2.1319245844449, -2.8331076701578, '#60A5FA', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(694, 48, 3.0279848890845, -5.9886953248184, '#9AD0F5', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(695, 49, 1.6423997047007, -4.9541974271613, '#FB7185', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(696, 50, 1.4237182089737, -1.1249289056732, '#9BDEAC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(697, 51, 3.81726485436, -8.1537575975082, '#C084FC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(698, 52, 4.2773090807247, -8.6812641682489, '#36A2EB', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(699, 53, 1.8168135171537, -3.1363377538605, '#C084FC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(700, 54, 2.0865746931985, -1.8462708849331, '#9966FF', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(701, 55, 4.4029414455222, -8.0016899655156, '#F472B6', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(702, 56, 2.2524216153418, -3.1477153902442, '#00BBF9', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(703, 57, 1.5418877409681, -1.2748466279329, '#F472B6', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(704, 58, 1.6183306658017, -4.9033314452227, '#FFB1C1', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(705, 59, 1.694676687222, -0.94578998830988, '#FBBF24', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(706, 60, 2.65372088776, -5.2914668832447, '#F472B6', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(707, 61, 3.7301928008862, -8.6260575495383, '#A3E635', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(708, 62, 6.4515921952473, -4.4527326828644, '#F472B6', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(709, 63, 1.5533637538879, -6.8455756769295, '#A3E635', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(710, 64, 2.6808457417992, -5.5828998542894, '#4BC0C0', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(711, 65, 4.7257860830733, -8.2277439849525, '#36A2EB', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(712, 66, 0.42194329157817, -6.8599346020656, '#C084FC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(713, 67, 0.52331454211733, 0.41474499803062, '#FBBF24', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(714, 68, 0.72291712520432, -6.7445124840804, '#A3E635', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(715, 69, 3.4173766828564, -8.0564066342167, '#38BDF8', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(716, 70, 6.901673560159, -5.9247771731946, '#F15BB5', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(717, 71, 0.36601733000211, 0.58175179383288, '#34D399', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(718, 72, 0.58387229206756, -7.0649572206039, '#FFB1C1', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(719, 73, 4.1676185075807, -7.5380919393322, '#36A2EB', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(720, 74, 3.0865079490874, -2.4906969444476, '#FFCE56', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(721, 75, 4.1522638580714, -8.7517375097101, '#9966FF', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(722, 76, 3.9942546551714, -4.6631169204466, '#00C49A', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(723, 77, 6.0555564470054, -5.1028239460323, '#00BBF9', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(724, 78, 4.1374795605777, -8.567579135655, '#9BDEAC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(725, 79, 1.8138576437041, -1.5486045821044, '#60A5FA', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(726, 80, 1.7969496915402, -3.5207414660505, '#A3E635', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(727, 81, 2.690473386705, -2.1140032336093, '#9AD0F5', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(728, 82, 0.3448697924046, -6.7197282417438, '#FF6384', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(729, 83, 1.9454060141545, -1.2258735649903, '#F472B6', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(730, 84, 4.7289189298751, -7.7612446153248, '#FBBF24', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(731, 85, 4.0760572251798, -7.8926853826553, '#C084FC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(732, 86, 3.9447085509258, -8.290796125297, '#36A2EB', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(733, 87, 0.72764024651475, -7.1816879796732, '#FFB1C1', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(734, 88, 6.2905370913618, -4.3684932075311, '#9AD0F5', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(735, 89, 2.5034822009349, -4.1039416736469, '#FB7185', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(736, 90, 1.5580656684736, -4.9917783420407, '#FF9F40', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(737, 91, 2.6499351574159, -5.2902560070383, '#F15BB5', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(738, 92, 1.7804926832183, -5.0136397587685, '#36A2EB', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(739, 93, 3.1464403822408, -5.373057172485, '#4BC0C0', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(740, 94, 0.44882728130416, 0.37636799937019, '#FF6384', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(741, 95, 2.3362641351243, -6.8911234613596, '#00C49A', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(742, 96, 1.4536893799235, -7.0958705312886, '#9966FF', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(743, 97, 0.89926843527393, -6.9445879709945, '#F472B6', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(744, 98, 4.450990434007, -4.4968885215478, '#FFB1C1', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(745, 99, 2.136878352938, -1.7767828953953, '#9BDEAC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(746, 100, 4.6892083326563, -7.3242819660838, '#F472B6', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(747, 101, 1.6348666693823, -6.9822556285624, '#FB7185', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(748, 102, 1.6663096760462, -3.0157921295543, '#F472B6', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(749, 103, 3.7826681749405, -7.1839336909453, '#00BBF9', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(750, 104, 5.8457233601255, -4.4389018009755, '#4BC0C0', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(751, 105, 1.5834766520296, -1.5344455840125, '#34D399', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(752, 106, 0.49512387463292, 0.39258480415101, '#C084FC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(753, 107, 6.3691034471691, -5.6178490248353, '#FBBF24', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(754, 108, 1.9420561001137, -1.2036695754889, '#9966FF', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(755, 109, 3.8610575406488, -4.2392144631198, '#00C49A', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(756, 110, 4.0682816791082, -8.4223357514315, '#60A5FA', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(757, 111, 2.5971822106793, -4.0476591284799, '#36A2EB', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(758, 112, 2.5213186049224, -4.142775990609, '#C084FC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(759, 113, 2.7459989401614, -5.2280405029489, '#9BDEAC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(760, 114, 4.1932830048707, -8.7561312198507, '#9AD0F5', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(761, 115, 6.1796126323959, -5.5807916143952, '#FF6384', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(762, 116, 3.1772915413001, -2.3642089981586, '#9AD0F5', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(763, 117, 6.8674530272311, -5.8504470641979, '#9966FF', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(764, 118, 2.5929108701027, -5.2742115073621, '#36A2EB', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(765, 119, 4.2043411573036, -7.6052086100143, '#C084FC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(766, 120, 3.3886482711943, -8.0032296096961, '#FB7185', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(767, 121, 6.032649412329, -4.8002045474552, '#F472B6', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(768, 122, 6.7539400438822, -4.5084194875214, '#FF6384', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(769, 123, 0.28764121039882, -6.7992825661625, '#FFCE56', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(770, 124, 1.4660248109571, -5.1520710444911, '#FF9F40', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(771, 125, 2.7135711212059, -6.3788331278345, '#60A5FA', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(772, 126, 1.7726255494259, -1.0591779910382, '#36A2EB', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(773, 127, 2.1783019723692, -0.82011235499562, '#C084FC', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(774, 128, 0.52921790697081, -6.7191339990163, '#00C49A', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(775, 129, 2.5765796526651, -4.0908197807233, '#00BBF9', 'v20251207_143547', 0, '2025-12-07 14:35:48', '2025-12-07 14:52:16'),
(776, 1, 4.7869553396689, -3.645849692517, '#4BC0C0', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(777, 2, 4.8168371080202, -3.6098179870797, '#34D399', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(778, 3, 5.6241491819864, -1.9822903599424, '#FFB1C1', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(779, 4, 5.5223019877077, -1.5687686043532, '#00BBF9', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(780, 5, -3.9814596544748, -1.1184576532545, '#00C49A', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(781, 6, -3.2642840030904, -0.59653107073494, '#FF6384', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(782, 7, -3.5424961792207, -0.74962093287398, '#00C49A', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(783, 8, -2.2537862384854, -0.1225393094217, '#FFB1C1', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(784, 9, -3.7874832727141, -1.2877104432963, '#9BDEAC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(785, 10, 4.0091697118554, -3.6494459616974, '#36A2EB', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(786, 11, -3.488732785293, -0.68623821186842, '#60A5FA', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(787, 12, -4.3188559425912, -2.9725894120438, '#FF9F40', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(788, 13, 4.6270543190602, -3.3600638055885, '#F15BB5', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(789, 14, -1.616642188217, -2.5078161884811, '#A3E635', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(790, 15, 2.8655233505469, -3.4243040657289, '#F472B6', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(791, 16, -1.7223507691926, -2.6641730636236, '#9966FF', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(792, 17, -5.1687218730682, -3.9972844995345, '#FFCE56', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(793, 18, -4.4508754778473, -4.1954795678475, '#4BC0C0', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(794, 19, -4.122330467321, -3.896792060038, '#36A2EB', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(795, 20, -3.0396987441516, -0.26649512492729, '#FFCE56', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(796, 21, -3.7460049305097, -3.7846079041067, '#A3E635', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(797, 22, -3.4031415557177, -0.31156043675559, '#F472B6', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(798, 23, -2.8182979541783, 0.039741911404295, '#FB7185', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(799, 24, -4.0344021556385, -2.7540463543081, '#F15BB5', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(800, 25, -2.5463743868781, -0.60867284536367, '#9BDEAC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(801, 26, -9.4383976189987, -1.4287399550329, '#F15BB5', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(802, 27, -2.3827421020867, -0.84618951496056, '#36A2EB', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(803, 28, -9.1457618560987, -0.74508949507223, '#00BBF9', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(804, 29, -3.9378663943546, -4.3089994561875, '#9AD0F5', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(805, 30, -2.697941877445, -0.034550109024929, '#60A5FA', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(806, 31, -2.2439416630877, -0.70999994836087, '#FF9F40', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(807, 32, -3.886237701615, -4.0019692017718, '#4BC0C0', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(808, 33, -4.3002804445792, -2.5581829494912, '#34D399', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(809, 34, -2.5496280989786, -0.59812214821396, '#FFCE56', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(810, 35, 4.4160627967246, -3.2656651656581, '#00BBF9', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(811, 36, -4.0978155380382, -2.3985403420534, '#FFCE56', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(812, 37, -8.8272323736147, -1.0118539505909, '#FF6384', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(813, 38, 2.7351915363361, -3.4928074583563, '#36A2EB', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(814, 39, -3.6622559549976, -0.99243045952361, '#FFB1C1', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(815, 40, 1.8984063293664, -3.9951212877791, '#FF6384', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(816, 41, 4.2206210002956, -3.1921238799991, '#00C49A', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(817, 42, 1.7064014497166, -3.8755715159996, '#00BBF9', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(818, 43, -1.5737442927798, -3.1816204459606, '#FFCE56', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(819, 44, 5.4682957064593, -1.6694929789776, '#FF9F40', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(820, 45, -2.3045281487813, -3.7363470404058, '#FFB1C1', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(821, 46, 1.1919121785601, -3.8284468096767, '#34D399', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(822, 47, 2.1624372820006, -3.6755672358992, '#60A5FA', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(823, 48, -2.342291023657, -3.8859163010476, '#9AD0F5', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(824, 49, -1.2137004954247, -4.4723377178867, '#FB7185', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(825, 50, 4.5717591729103, -3.1347346846099, '#9BDEAC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(826, 51, -4.6287232740655, -4.4511622806841, '#C084FC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(827, 52, -4.7367869548763, -3.9042314651516, '#36A2EB', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(828, 53, 1.5917701743193, -4.1197600086284, '#C084FC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(829, 54, 4.3217623002996, -3.7583067957625, '#9966FF', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(830, 55, -4.6153908846172, -3.4196267712289, '#F472B6', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(831, 56, 1.5662156449819, -3.7037532461573, '#00BBF9', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(832, 57, 4.4734729193719, -3.6292122769544, '#F472B6', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(833, 58, -0.91392334662512, -4.6630903427752, '#FFB1C1', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(834, 59, 4.9077869911506, -3.4018500052855, '#FBBF24', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(835, 60, -1.3720194845251, -3.4044055339427, '#F472B6', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(836, 61, -5.1244513117284, -4.2147108866526, '#A3E635', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(837, 62, -2.0935294844172, 0.23974736371114, '#F472B6', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(838, 63, -9.3677754155564, -1.2987656517099, '#A3E635', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(839, 64, -1.7111872828811, -3.7030591194136, '#4BC0C0', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(840, 65, -4.4209856773449, -3.7270038274247, '#36A2EB', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(841, 66, -8.9982924974088, -1.0432334048777, '#C084FC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(842, 67, 5.3748538121461, -1.7369704538106, '#FBBF24', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(843, 68, -8.8058534004147, -0.79103844859093, '#A3E635', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(844, 69, -4.9609517929202, -4.5172734790368, '#38BDF8', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(845, 70, -3.7483339478563, -1.4107672340069, '#F15BB5', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(846, 71, 5.448128447956, -1.6370537215091, '#34D399', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(847, 72, -8.871824059664, -0.93958036663421, '#FFB1C1', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(848, 73, -3.9444545567453, -3.6977371078047, '#36A2EB', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(849, 74, 2.6505098035545, -3.4104727432473, '#FFCE56', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(850, 75, -4.9570160714702, -3.6873200735331, '#9966FF', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(851, 76, -2.0275447257755, -3.0894311848472, '#00C49A', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(852, 77, -2.7108281046867, -0.51527145748404, '#00BBF9', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(853, 78, -4.6710536889316, -3.7603617492872, '#9BDEAC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(854, 79, 4.1358443559045, -3.5361706101782, '#60A5FA', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(855, 80, 1.3873930837421, -4.0327745269277, '#A3E635', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(856, 81, 3.8057788294018, -3.5263214289122, '#9AD0F5', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(857, 82, -9.1799737920789, -0.9292068799889, '#FF6384', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(858, 83, 4.8811833733029, -3.0602869124405, '#F472B6', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(859, 84, -4.1821597763063, -3.595651756788, '#FBBF24', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(860, 85, -4.0776185016603, -4.2995882444114, '#C084FC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(861, 86, -4.6996886000373, -4.1732846218326, '#36A2EB', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(862, 87, -8.9738871687559, -1.2351524449344, '#FFB1C1', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(863, 88, -2.0064938537741, 0.12524104524493, '#9AD0F5', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(864, 89, -0.11154046090061, -3.5617618374137, '#FB7185', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(865, 90, -1.0252287541532, -4.6481187659725, '#FF9F40', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(866, 91, -1.577775066932, -3.5358331272497, '#F15BB5', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(867, 92, -1.1164983863389, -4.4674111326034, '#36A2EB', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(868, 93, -1.521318944974, -3.3235303566159, '#4BC0C0', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(869, 94, 5.412254132069, -1.5109858201657, '#FF6384', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(870, 95, -4.6687510352199, -3.5164293833611, '#00C49A', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(871, 96, -9.2407916203329, -1.357705727772, '#9966FF', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(872, 97, -9.0367787405075, -0.93859611311715, '#F472B6', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(873, 98, -2.0844618756388, -1.489077449936, '#FFB1C1', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(874, 99, 4.0327415402547, -3.3534312358444, '#9BDEAC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(875, 100, -4.038245208321, -2.7162785541676, '#F472B6', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(876, 101, -9.4889972083068, -1.2641781641556, '#FB7185', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(877, 102, 1.8769712955612, -3.8279472548976, '#F472B6', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(878, 103, -2.8072244684029, -3.29760441023, '#00BBF9', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(879, 104, -2.1654402119481, 0.020348072064658, '#4BC0C0', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(880, 105, 4.0749123639897, -3.2555103848631, '#34D399', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(881, 106, 5.384280871139, -1.5941127416718, '#C084FC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(882, 107, -3.3932357316414, -0.74595252849156, '#FBBF24', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(883, 108, 4.9471135685117, -3.0762193926114, '#9966FF', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(884, 109, 1.192093865805, -3.5976106741979, '#00C49A', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(885, 110, -4.346867204118, -4.1165419816084, '#60A5FA', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(886, 111, -0.14959261131274, -3.5393494971939, '#36A2EB', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(887, 112, -0.30901323795924, -3.6813235389524, '#C084FC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(888, 113, -1.3133433446801, -3.553091046958, '#9BDEAC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(889, 114, -5.0752649929115, -4.1609216128965, '#9AD0F5', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(890, 115, -3.2041489624877, -0.55657018724666, '#FF6384', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(891, 116, -1.9006838245381, 0.099953761415569, '#9AD0F5', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(892, 117, -3.6437708818464, -1.2934544729423, '#9966FF', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(893, 118, -1.515263622387, -3.5345986582544, '#36A2EB', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(894, 119, -4.0532091086719, -3.234241353946, '#C084FC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(895, 120, -4.918583233189, -4.4796753522639, '#FB7185', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(896, 121, -2.5138719460706, -0.89364635645214, '#F472B6', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(897, 122, -1.6738699344128, -0.16864923429202, '#FF6384', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(898, 123, -9.0078641870137, -0.62462511355962, '#FFCE56', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(899, 124, -1.2001129853668, -4.509069209823, '#FF9F40', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(900, 125, -1.9603671662489, -3.7141840720551, '#60A5FA', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(901, 126, 4.7862516133164, -3.1256776411826, '#36A2EB', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(902, 127, 5.0049130686314, -3.418880928212, '#C084FC', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(903, 128, -9.03012927246, -1.1329626255049, '#00C49A', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(904, 129, -0.14636465088625, -3.4876197642461, '#00BBF9', 'v20251207_145215', 0, '2025-12-07 14:52:16', '2025-12-07 18:36:01'),
(905, 1, -0.79270953233767, 3.786137031664, '#4BC0C0', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(906, 2, -0.86747555218256, 3.5992314470994, '#34D399', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(907, 3, -1.1646562734953, 5.6309818540901, '#FFB1C1', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(908, 4, -1.3648131565068, 5.8703856618508, '#00BBF9', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(909, 5, 5.5336308012676, 0.43325788068709, '#00C49A', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(910, 6, 6.070413704272, 1.3349162254935, '#FF6384', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(911, 7, 6.1950947328116, 1.0589531273697, '#00C49A', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(912, 8, 5.5663991080434, 2.1244624074203, '#FFB1C1', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(913, 9, 5.8625729974638, 0.25981256499771, '#9BDEAC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(914, 10, -0.23809554222168, 2.7735358802844, '#36A2EB', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(915, 11, 6.2320602979417, 1.0899884826648, '#60A5FA', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(916, 12, 4.6471330993707, -1.6847634374654, '#FF9F40', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(917, 13, -0.55948512993048, 3.6668851086463, '#F15BB5', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(918, 14, 3.1996201890108, 1.218124063758, '#A3E635', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(919, 15, 0.73581525997666, 2.8627679407649, '#F472B6', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(920, 16, 3.3393543782281, 0.83340970170701, '#9966FF', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(921, 17, 4.4587597731992, -3.3438485478189, '#FFCE56', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(922, 18, 4.0555734664655, -2.6467556674677, '#4BC0C0', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(923, 19, 4.4000090495491, -2.3305722591355, '#36A2EB', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(924, 20, 6.3362746173388, 2.1171546430196, '#FFCE56', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(925, 21, 4.1011318918011, -1.9255829474267, '#A3E635', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(926, 22, 6.174648666246, 1.4197914168705, '#F472B6', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(927, 23, 6.2009669942539, 1.927104652023, '#FB7185', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(928, 24, 4.7660986990438, -1.4149143743306, '#F15BB5', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(929, 25, 5.4568266807105, 1.5132295328282, '#9BDEAC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(930, 26, 5.3485297659446, 9.4709915655235, '#F15BB5', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(931, 27, 5.2733082648374, 1.6402903920024, '#36A2EB', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(932, 28, 5.3028472325943, 8.5402780958981, '#00BBF9', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(933, 29, 3.9488349898295, -2.2202813222646, '#9AD0F5', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(934, 30, 6.0830678513032, 1.8628384831505, '#60A5FA', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(935, 31, 5.1888117568231, 1.937228191678, '#FF9F40', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(936, 32, 4.159455670575, -1.9901566371972, '#4BC0C0', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(937, 33, 4.9963297926429, -1.3771203426275, '#34D399', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(938, 34, 5.3636529630352, 1.6850485531538, '#FFCE56', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(939, 35, -0.28874500687568, 3.235864235265, '#00BBF9', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(940, 36, 5.1455801985738, -1.2265338926295, '#FFCE56', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(941, 37, 5.234240829164, 9.2752732271002, '#FF6384', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(942, 38, 0.82648417898098, 2.699710282593, '#36A2EB', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(943, 39, 6.1230953344561, 0.64342317205221, '#FFB1C1', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(944, 40, 0.62085861234306, 2.2176367741111, '#FF6384', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(945, 41, -0.88170535888883, 3.1311607523288, '#00C49A', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(946, 42, 0.89365803574888, 2.0346648911673, '#00BBF9', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(947, 43, 3.6693002487861, 0.23710676463631, '#FFCE56', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(948, 44, -1.247966151501, 5.7876021003439, '#FF9F40', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(949, 45, 3.5712278491321, -0.92732628941802, '#FFB1C1', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(950, 46, 1.3098147926604, 1.757520019487, '#34D399', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(951, 47, 0.82347592572645, 2.3117054710736, '#60A5FA', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(952, 48, 3.4990489697407, -0.74172123048012, '#9AD0F5', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(953, 49, 2.5983743669134, 1.7609889536214, '#FB7185', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(954, 50, -0.83816779206875, 3.5050998721574, '#9BDEAC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(955, 51, 3.7288761062408, -2.8563415966524, '#C084FC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(956, 52, 4.435269793415, -2.9500756973486, '#36A2EB', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(957, 53, 0.77581667476697, 2.0064527135366, '#C084FC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(958, 54, -0.55106580611399, 3.0255877051816, '#9966FF', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(959, 55, 4.8411829029874, -2.3525967185359, '#F472B6', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(960, 56, 1.0098820504147, 2.1679991928841, '#00BBF9', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(961, 57, -0.65735560326947, 3.5664569379616, '#F472B6', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(962, 58, 2.3672641061467, 1.9823621164893, '#FFB1C1', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(963, 59, -0.51976994534509, 3.9294805604064, '#FBBF24', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(964, 60, 3.2802431919191, 0.072082453922498, '#F472B6', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(965, 61, 4.2355311886372, -3.2297684998523, '#A3E635', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(966, 62, 5.7399009044396, 2.4066931444191, '#F472B6', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(967, 63, 5.4747589379686, 9.3079111675048, '#A3E635', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(968, 64, 3.4639108720301, -0.22171320950001, '#4BC0C0', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(969, 65, 4.609971269364, -2.7538177135524, '#36A2EB', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(970, 66, 5.1771976122786, 8.5996067832312, '#C084FC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(971, 67, -1.3975121874143, 5.8094496332389, '#FBBF24', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(972, 68, 5.21836406125, 8.9564582986264, '#A3E635', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(973, 69, 3.7997651315829, -3.1790299907377, '#38BDF8', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(974, 70, 6.1061601334939, 0.16910908319233, '#F15BB5', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(975, 71, -1.2470018811517, 5.9371757706684, '#34D399', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(976, 72, 5.5146020332115, 8.7689164651022, '#FFB1C1', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(977, 73, 4.5886975101997, -2.1522511848252, '#36A2EB', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(978, 74, 0.99187674986317, 2.8684746586815, '#FFCE56', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(979, 75, 4.7093621837927, -2.8764617525169, '#9966FF', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(980, 76, 3.533328272739, 0.38976996251893, '#00C49A', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(981, 77, 5.6654344539135, 1.638645663397, '#00BBF9', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(982, 78, 4.5093628952941, -2.8862439544056, '#9BDEAC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(983, 79, -0.6221393862748, 3.2889730139503, '#60A5FA', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(984, 80, 1.1919613902162, 1.9136315666707, '#A3E635', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(985, 81, -0.16658134371212, 2.9582619246049, '#9AD0F5', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(986, 82, 5.62207724733, 8.8709661736162, '#FF6384', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(987, 83, -0.27280684724164, 3.5892129399959, '#F472B6', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(988, 84, 4.4817671273508, -2.3770211351578, '#FBBF24', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(989, 85, 3.9791501606248, -2.3402020474827, '#C084FC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(990, 86, 3.9445086321045, -2.9783784612292, '#36A2EB', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(991, 87, 5.5229350452034, 8.8271843691029, '#FFB1C1', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(992, 88, 5.5570279034734, 2.3814423066525, '#9AD0F5', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(993, 89, 2.295184566157, 0.15082404399593, '#FB7185', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(994, 90, 2.4552123423408, 1.897975810228, '#FF9F40', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(995, 91, 3.2002776463122, -0.19873250713364, '#F15BB5', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(996, 92, 2.413726265568, 1.9518331182426, '#36A2EB', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(997, 93, 3.4026434238465, 0.00081334489909832, '#4BC0C0', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(998, 94, -1.2467080901962, 5.9224670901267, '#FF6384', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(999, 95, 4.92705834299, -2.4511334437268, '#00C49A', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1000, 96, 5.3845301761427, 9.1686014791835, '#9966FF', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1001, 97, 5.4198240859231, 9.0667371578561, '#F472B6', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1002, 98, 4.3965822129516, 1.3946007313946, '#FFB1C1', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1003, 99, -0.53468532292737, 2.9568418367324, '#9BDEAC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1004, 100, 4.7991221182309, -1.5083593689711, '#F472B6', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1005, 101, 5.6242051420223, 9.4538174895294, '#FB7185', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1006, 102, 0.83110519532706, 2.1106864048051, '#F472B6', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1007, 103, 4.0358828959179, -0.78851675750428, '#00BBF9', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1008, 104, 5.5811232489925, 2.0686435948566, '#4BC0C0', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1009, 105, -0.80426648434961, 3.0747143780354, '#34D399', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1010, 106, -1.4150636629635, 5.704932247988, '#C084FC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1011, 107, 6.0342367730685, 1.1374654377182, '#FBBF24', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1012, 108, -0.21705529690536, 3.5496566532506, '#9966FF', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1013, 109, 1.4163424157503, 1.8464549039599, '#00C49A', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1014, 110, 4.0982903677929, -2.6482225725517, '#60A5FA', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1015, 111, 2.466657344256, 0.14541470090617, '#36A2EB', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1016, 112, 2.3919799502091, 0.11410895782524, '#C084FC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1017, 113, 3.1914352054712, 0.1395056788734, '#9BDEAC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1018, 114, 4.1851130264617, -3.2316406554919, '#9AD0F5', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1019, 115, 5.9371999073019, 1.2976309738297, '#FF6384', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1020, 116, 5.4526536108201, 2.3732236839759, '#9AD0F5', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1021, 117, 6.0283850604846, 0.30546306452554, '#9966FF', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1022, 118, 3.0675323085556, -0.20722308422536, '#36A2EB', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1023, 119, 4.6867024028999, -2.0054200474169, '#C084FC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1024, 120, 3.8351103221922, -3.1516074983297, '#FB7185', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1025, 121, 4.9877420814504, 1.5890189363668, '#F472B6', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1026, 122, 5.3412254217599, 2.5672490051453, '#FF6384', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1027, 123, 5.2217422421734, 8.4542575366339, '#FFCE56', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1028, 124, 2.4307032364988, 2.0674738434507, '#FF9F40', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1029, 125, 3.3845564707572, -0.50857056170274, '#60A5FA', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1030, 126, -0.32094105232457, 3.5148438179267, '#36A2EB', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1031, 127, -0.27743461461132, 3.987036432568, '#C084FC', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1032, 128, 5.416346327207, 8.6997074077218, '#00C49A', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1033, 129, 2.4440431186577, 0.045704306369715, '#00BBF9', 'v20251207_183601', 0, '2025-12-07 18:36:01', '2025-12-07 18:54:44'),
(1034, 1, -2.4330532668845, -0.25296620528484, '#4BC0C0', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1035, 2, -2.438631110415, -0.24459134169393, '#34D399', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1036, 3, -0.45523123199385, -1.2256437037377, '#FFB1C1', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1037, 4, -0.30054599399556, -1.2630403278486, '#00BBF9', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1038, 5, 1.4119276155833, 6.1533624984215, '#00C49A', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1039, 6, 2.0005982198511, 5.3609131956163, '#FF6384', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1040, 7, 2.2184692365838, 5.7262843817276, '#00C49A', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1041, 8, 1.4682678397658, 4.1480119367585, '#FFB1C1', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1042, 9, 1.5888171316086, 6.3001298249357, '#9BDEAC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1043, 10, -2.4341023326057, 0.65139130501518, '#36A2EB', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1044, 11, 2.1178819894428, 5.7944409764555, '#60A5FA', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1045, 12, -0.33964767209746, 7.6173711163933, '#FF9F40', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1046, 13, -2.510604631731, -0.31499290208862, '#F15BB5', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55');
INSERT INTO `umap_embeddings` (`id`, `menteri_id`, `umap_x`, `umap_y`, `color_code`, `batch_tag`, `is_active`, `created_at`, `updated_at`) VALUES
(1047, 14, -0.87803668130201, 4.5562082957307, '#A3E635', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1048, 15, -2.1265166738367, 1.0684389660297, '#F472B6', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1049, 16, -0.99355371986645, 4.9446585571748, '#9966FF', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1050, 17, -1.1397623025509, 8.8364668734719, '#FFCE56', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1051, 18, -1.146131079518, 8.1472273464094, '#4BC0C0', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1052, 19, -1.2384987812831, 8.1046849703414, '#36A2EB', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1053, 20, 1.7817097763381, 4.5700533127721, '#FFCE56', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1054, 21, -1.4840060628897, 7.5377813870391, '#A3E635', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1055, 22, 2.082868946349, 5.3461004761254, '#F472B6', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1056, 23, 2.0133129450551, 4.7383048216014, '#FB7185', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1057, 24, -0.37485610235185, 7.2543922137089, '#F15BB5', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1058, 25, 1.4198988810913, 5.0196922715457, '#9BDEAC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1059, 26, 13.384322170943, -0.62214165294716, '#F15BB5', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1060, 27, 1.1105436871251, 4.7610377606982, '#36A2EB', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1061, 28, 12.636316288223, -0.41632177518491, '#00BBF9', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1062, 29, -1.5121868054469, 7.9429824495292, '#9AD0F5', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1063, 30, 2.0994792355471, 4.8251075230133, '#60A5FA', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1064, 31, 1.1321846564972, 4.5946646802292, '#FF9F40', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1065, 32, -1.3190227569355, 7.7280334804776, '#4BC0C0', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1066, 33, -0.32504811470513, 7.3950393633141, '#34D399', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1067, 34, 1.3040054303077, 4.6670598396458, '#FFCE56', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1068, 35, -1.7339402302074, 0.15133847997416, '#00BBF9', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1069, 36, -0.082457773757203, 7.2148690356288, '#FFCE56', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1070, 37, 12.84671771524, -0.82465879230406, '#FF6384', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1071, 38, -2.0560270881327, 1.2913372026838, '#36A2EB', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1072, 39, 1.8557606245108, 6.1149671088957, '#FFB1C1', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1073, 40, -2.4399852854397, 1.6477946553123, '#FF6384', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1074, 41, -2.0827126880771, 0.24571732358852, '#00C49A', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1075, 42, -2.2555983221857, 1.8414194253242, '#00BBF9', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1076, 43, -1.1753443890907, 5.3746206033383, '#FFCE56', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1077, 44, -0.26394605401118, -1.1039289754086, '#FF9F40', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1078, 45, -1.5971308234491, 6.3767190361583, '#FFB1C1', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1079, 46, -2.2973754365919, 2.4018043644284, '#34D399', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1080, 47, -2.383989935394, 1.5063436893573, '#60A5FA', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1081, 48, -1.4717490714714, 6.2609913097503, '#9AD0F5', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1082, 49, -2.0129801872578, 3.019991903117, '#FB7185', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1083, 50, -2.1264874037194, -0.14114179440483, '#9BDEAC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1084, 51, -0.50694676822142, 8.4357150553468, '#C084FC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1085, 52, -0.95969000099353, 8.655276732289, '#36A2EB', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1086, 53, -2.4598017951296, 1.8813231120141, '#C084FC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1087, 54, -2.3336322373914, 0.46142358371324, '#9966FF', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1088, 55, -0.81039672695868, 8.1111600131127, '#F472B6', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1089, 56, -2.1353223819995, 1.9749914763092, '#00BBF9', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1090, 57, -2.211426042032, -0.033251365418811, '#F472B6', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1091, 58, -1.9150482967487, 3.0347849163366, '#FFB1C1', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1092, 59, -2.1486091031611, -0.45976649854744, '#FBBF24', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1093, 60, -1.5061751162514, 5.4037225334475, '#F472B6', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1094, 61, -1.0057519551558, 8.7937397529045, '#A3E635', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1095, 62, 1.6783897257172, 4.1363000030028, '#F472B6', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1096, 63, 13.310459353384, -0.55466578254477, '#A3E635', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1097, 64, -1.551651941947, 5.7906604063457, '#4BC0C0', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1098, 65, -1.1729581545761, 8.4379226248672, '#36A2EB', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1099, 66, 12.885919452094, -0.05387637832354, '#C084FC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1100, 67, -0.15849589768471, -1.1580168423165, '#FBBF24', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1101, 68, 12.926770769836, -0.62541341319418, '#A3E635', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1102, 69, -0.4150900213098, 8.6988160061319, '#38BDF8', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1103, 70, 1.7244598030679, 6.3206902216633, '#F15BB5', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1104, 71, -0.19226762107097, -1.11861672899, '#34D399', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1105, 72, 12.935016516879, -0.33018617016214, '#FFB1C1', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1106, 73, -0.89860397010113, 7.6481512182855, '#36A2EB', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1107, 74, -1.9697539525772, 1.2470998531107, '#FFCE56', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1108, 75, -0.98715929593371, 8.5030698119434, '#9966FF', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1109, 76, -1.0267433692381, 5.7757358571378, '#00C49A', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1110, 77, 1.5106446709734, 4.9900485919942, '#00BBF9', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1111, 78, -0.88996955668451, 8.4858518632218, '#9BDEAC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1112, 79, -2.3653522413861, 0.23768227035906, '#60A5FA', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1113, 80, -2.1887168167326, 2.273455368468, '#A3E635', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1114, 81, -2.080882526363, 0.55762499575515, '#9AD0F5', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1115, 82, 12.961105970409, -0.32590612935651, '#FF6384', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1116, 83, -1.7010465158386, -0.35865896297996, '#F472B6', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1117, 84, -1.1504125618761, 7.9333182836403, '#FBBF24', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1118, 85, -1.5079733587723, 8.1412849897013, '#C084FC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1119, 86, -0.67683039546057, 8.6690622669565, '#36A2EB', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1120, 87, 13.132181337253, -0.31815569146673, '#FFB1C1', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1121, 88, 1.6933659470877, 3.9608392455584, '#9AD0F5', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1122, 89, -2.5372789232872, 4.94618210697, '#FB7185', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1123, 90, -1.8672860318035, 3.0987553022918, '#FF9F40', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1124, 91, -1.6871179306598, 5.7076457800319, '#F15BB5', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1125, 92, -1.7541277077455, 3.2273935204757, '#36A2EB', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1126, 93, -1.4196057200899, 5.361455609807, '#4BC0C0', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1127, 94, -0.22105533375574, -1.205328062609, '#FF6384', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1128, 95, -0.85137216145864, 8.2132686613973, '#00C49A', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1129, 96, 13.210374220622, -0.48953375485874, '#9966FF', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1130, 97, 12.877967829352, -0.70433692548668, '#F472B6', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1131, 98, 0.432536045015, 4.7222259645236, '#FFB1C1', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1132, 99, -1.9194455242245, 0.4709457185193, '#9BDEAC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1133, 100, -0.31310462267374, 7.2987474650651, '#F472B6', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1134, 101, 13.376902564464, -0.51078137888302, '#FB7185', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1135, 102, -2.376975275849, 1.9551708101794, '#F472B6', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1136, 103, -0.85950371167343, 6.5141050102179, '#00BBF9', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1137, 104, 1.6061913250034, 4.2283460897987, '#4BC0C0', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1138, 105, -2.1090498714286, 0.27020651621718, '#34D399', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1139, 106, -0.32254420508372, -1.2132019613668, '#C084FC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1140, 107, 1.8633220364988, 5.5603588818854, '#FBBF24', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1141, 108, -1.7595538505991, -0.21768030648624, '#9966FF', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1142, 109, -2.004949296953, 2.0951233343595, '#00C49A', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1143, 110, -0.57015939419147, 8.1548586450223, '#60A5FA', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1144, 111, -2.423945788389, 5.0617107948712, '#36A2EB', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1145, 112, -2.4104508650442, 5.0708009815225, '#C084FC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1146, 113, -1.3735508914546, 5.4127629041077, '#9BDEAC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1147, 114, -0.83680025260948, 8.8965559977105, '#9AD0F5', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1148, 115, 1.8960552562842, 5.4132157788349, '#FF6384', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1149, 116, 1.4424066903186, 3.874768172404, '#9AD0F5', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1150, 117, 1.7521357876131, 6.2415618091349, '#9966FF', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1151, 118, -1.6345154516262, 5.5653530190367, '#36A2EB', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1152, 119, -0.73312664206968, 7.5920361834989, '#C084FC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1153, 120, -0.38947197906727, 8.6404756645264, '#FB7185', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1154, 121, 1.0684377770055, 4.8126909824794, '#F472B6', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1155, 122, 1.6118695847958, 3.7114092262951, '#FF6384', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1156, 123, 12.724015388349, -0.18330014169861, '#FFCE56', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1157, 124, -1.8521495264131, 3.0753584249297, '#FF9F40', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1158, 125, -1.6697499574731, 5.9647428893126, '#60A5FA', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1159, 126, -1.9001172415913, -0.075660224170863, '#36A2EB', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1160, 127, -1.8938135389979, -0.63055514710667, '#C084FC', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1161, 128, 12.907322466801, -0.16296627269697, '#00C49A', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1162, 129, -2.2832285196832, 5.1974958208568, '#00BBF9', 'v20251207_185444', 0, '2025-12-07 18:54:44', '2025-12-07 18:54:55'),
(1163, 1, 0.62764449768071, 1.3099331705486, '#4BC0C0', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1164, 2, 0.47249645291167, 1.1351988141707, '#34D399', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1165, 3, 1.317463613601, 2.0720639276008, '#FFB1C1', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1166, 4, 1.8399611754913, 2.5706398215354, '#00BBF9', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1167, 5, -4.4463048254542, -1.2801138796721, '#00C49A', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1168, 6, -3.6493390359475, -1.556824437336, '#FF6384', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1169, 7, -3.8846028836165, -1.8680585526973, '#00C49A', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1170, 8, -2.4992056220129, -1.2685953590018, '#FFB1C1', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1171, 9, -4.5278089835778, -1.5322033921676, '#9BDEAC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1172, 10, -0.52488258537926, 1.7277260466489, '#36A2EB', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1173, 11, -4.0332779337314, -1.7978166929339, '#60A5FA', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1174, 12, -6.1121743613451, -0.37626080391911, '#FF9F40', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1175, 13, 0.48365883240497, 1.3690858017906, '#F15BB5', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1176, 14, -3.9130264743164, 1.0701056128251, '#A3E635', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1177, 15, -1.1272552562986, 1.5118109191916, '#F472B6', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1178, 16, -4.1929958351675, 1.2497372787146, '#9966FF', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1179, 17, -7.5669904462385, 0.086090076484566, '#FFCE56', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1180, 18, -6.6435226805372, 0.43053708989035, '#4BC0C0', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1181, 19, -6.6803594941849, 0.67402476691903, '#36A2EB', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1182, 20, -2.92452327129, -1.5225843965788, '#FFCE56', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1183, 21, -6.3270130463056, 1.0870772096051, '#A3E635', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1184, 22, -3.7727513577345, -1.8361823884476, '#F472B6', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1185, 23, -3.0323252803276, -1.6882512235028, '#FB7185', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1186, 24, -5.7461803979045, -0.39475539446447, '#F15BB5', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1187, 25, -3.3214454922822, -1.1630172281235, '#9BDEAC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1188, 26, -15.196760429443, -14.851467204504, '#F15BB5', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1189, 27, -3.1244663203479, -0.86974051895294, '#36A2EB', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1190, 28, -15.259432100743, -14.047595061257, '#00BBF9', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1191, 29, -6.3793261080086, 0.73015461640804, '#9AD0F5', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1192, 30, -2.9999392377155, -1.6282325332003, '#60A5FA', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1193, 31, -3.0789652332316, -0.73867553104379, '#FF9F40', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1194, 32, -6.1831360618633, 0.71148762130683, '#4BC0C0', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1195, 33, -5.8401750696006, -0.69893527908823, '#34D399', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1196, 34, -3.124765055503, -1.207322337866, '#FFCE56', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1197, 35, -0.029568619219714, 1.2158116273796, '#00BBF9', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1198, 36, -5.5695243348519, -0.7054901541534, '#FFCE56', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1199, 37, -15.122061387017, -14.480301915984, '#FF6384', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1200, 38, -1.3093566082096, 1.4158959208081, '#36A2EB', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1201, 39, -4.2484806513164, -1.7784885232777, '#FFB1C1', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1202, 40, -1.5927192500777, 2.1732873991343, '#FF6384', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1203, 41, 0.023647344198005, 1.7497853500823, '#00C49A', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1204, 42, -1.8859440311928, 2.1130321734242, '#00BBF9', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1205, 43, -4.7785793218598, 1.6369521297899, '#FFCE56', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1206, 44, 1.4397434818357, 2.1760406181897, '#FF9F40', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1207, 45, -5.5575171163726, 1.4866043664763, '#FFB1C1', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1208, 46, -2.4144751800121, 2.1929755300682, '#34D399', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1209, 47, -1.4296187935779, 2.0308493800453, '#60A5FA', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1210, 48, -5.3277025899911, 1.315728041496, '#9AD0F5', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1211, 49, -3.4570235921255, 2.8159066108471, '#FB7185', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1212, 50, 0.19865040104766, 1.8558095415163, '#9BDEAC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1213, 51, -6.5681928055441, -0.1115755474706, '#C084FC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1214, 52, -7.3144889560572, 0.18909167724055, '#36A2EB', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1215, 53, -1.8903792011997, 2.3321185582648, '#C084FC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1216, 54, -0.19034925040447, 1.5623985381705, '#9966FF', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1217, 55, -6.7032405073473, 0.22940306100974, '#F472B6', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1218, 56, -2.0208643250694, 1.9634876999378, '#00BBF9', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1219, 57, 0.17255202632333, 1.2550025605648, '#F472B6', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1220, 58, -3.347476021761, 2.9721264453863, '#FFB1C1', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1221, 59, 0.39476295323331, 1.1200670369406, '#FBBF24', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1222, 60, -4.7128983196399, 2.0904747019214, '#F472B6', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1223, 61, -7.4203886319314, 0.060712276898243, '#A3E635', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1224, 62, -2.2883001239968, -1.5208497698015, '#F472B6', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1225, 63, -15.327104878554, -14.798136968657, '#A3E635', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1226, 64, -4.5774452480048, 1.8726854484648, '#4BC0C0', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1227, 65, -7.1577780900198, 0.78040372169047, '#36A2EB', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1228, 66, -15.518707617982, -14.1831924432, '#C084FC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1229, 67, 1.5067038683228, 2.2449640684204, '#FBBF24', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1230, 68, -15.123940333886, -14.385818432181, '#A3E635', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1231, 69, -7.1220064421609, -0.36540240288802, '#38BDF8', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1232, 70, -4.6048973176963, -1.6993389410141, '#F15BB5', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1233, 71, 1.6007793661085, 2.3364829042022, '#34D399', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1234, 72, -15.562784938129, -14.332388950961, '#FFB1C1', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1235, 73, -6.2618260864759, 0.32251477341068, '#36A2EB', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1236, 74, -1.2964024766, 1.4458899324428, '#FFCE56', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1237, 75, -7.4120793003903, 0.48308719986476, '#9966FF', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1238, 76, -4.5636987609772, 1.097229914312, '#00C49A', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1239, 77, -3.3181406030327, -1.4171493816432, '#00BBF9', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1240, 78, -7.2070366110605, 0.39517930194039, '#9BDEAC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1241, 79, -0.17816046468035, 1.5088672301104, '#60A5FA', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1242, 80, -2.1418559032257, 2.3710541280355, '#A3E635', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1243, 81, -0.53137421227984, 1.4141675966584, '#9AD0F5', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1244, 82, -15.500708530774, -14.317635302734, '#FF6384', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1245, 83, 0.48029228118224, 1.5868815665287, '#F472B6', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1246, 84, -6.8663570518486, 0.81753610909758, '#FBBF24', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1247, 85, -6.3948908405809, 0.78134838410622, '#C084FC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1248, 86, -6.8546222999493, 0.11501606352014, '#36A2EB', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1249, 87, -15.483898079476, -14.352345320354, '#FFB1C1', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1250, 88, -2.2078282199511, -1.4004981782794, '#9AD0F5', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1251, 89, -3.4780728041569, 1.8984182465681, '#FB7185', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1252, 90, -3.4466835314324, 2.9798497041937, '#FF9F40', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1253, 91, -4.7290715694758, 2.0036177480315, '#F15BB5', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1254, 92, -3.4260552172323, 2.9156511830543, '#36A2EB', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1255, 93, -4.48435555254, 1.5821380971423, '#4BC0C0', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1256, 94, 1.7020577015268, 2.4330884426327, '#FF6384', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1257, 95, -7.1140267187646, 0.41003557872689, '#00C49A', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1258, 96, -15.538097564823, -14.512869087776, '#9966FF', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1259, 97, -15.177486862378, -14.406680862145, '#F472B6', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1260, 98, -3.3351151718335, -0.26560979651213, '#FFB1C1', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1261, 99, -0.36666882807112, 1.7258863499526, '#9BDEAC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1262, 100, -5.8669623938706, -0.19371300022893, '#F472B6', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1263, 101, -15.335274363771, -14.85029803806, '#FB7185', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1264, 102, -1.726555252364, 2.1916175443223, '#F472B6', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1265, 103, -5.3217938384124, 0.68494069874093, '#00BBF9', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1266, 104, -2.4376475653901, -1.3630644971258, '#4BC0C0', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1267, 105, -0.10571228218393, 1.7414279047721, '#34D399', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1268, 106, 1.6757401534828, 2.4080318561091, '#C084FC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1269, 107, -3.9291373005016, -1.6994598551131, '#FBBF24', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1270, 108, 0.44292464384358, 1.6651636622653, '#9966FF', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1271, 109, -2.2461091731657, 1.7911074902078, '#00C49A', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1272, 110, -6.7208510949404, -0.048437407830975, '#60A5FA', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1273, 111, -3.5506733166298, 1.93187634841, '#36A2EB', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1274, 112, -3.5843881302265, 1.9709844928773, '#C084FC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1275, 113, -4.3617074561904, 1.8033105109894, '#9BDEAC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1276, 114, -7.3893050127657, 0.11503296640785, '#9AD0F5', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1277, 115, -3.5947447873678, -1.6066152019237, '#FF6384', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1278, 116, -2.1699647174796, -1.3498336514142, '#9AD0F5', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1279, 117, -4.527616884871, -1.6384596070472, '#9966FF', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1280, 118, -4.6515060142565, 1.7024908437675, '#36A2EB', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1281, 119, -6.1382973135276, 0.020763099163442, '#C084FC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1282, 120, -7.165571930736, -0.24685952926416, '#FB7185', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1283, 121, -3.2485296391946, -1.1631165527889, '#F472B6', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1284, 122, -1.894346370504, -1.1183040231597, '#FF6384', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1285, 123, -15.250368401837, -14.024190222253, '#FFCE56', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1286, 124, -3.57158174403, 2.9346394261696, '#FF9F40', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1287, 125, -5.1226087826218, 1.7403585522867, '#60A5FA', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1288, 126, 0.29295396025168, 1.6733141175362, '#36A2EB', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1289, 127, 0.296250072867, 0.96407639895266, '#C084FC', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1290, 128, -15.353573828266, -14.09457662496, '#00C49A', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1291, 129, -3.4789617010961, 1.8651396368514, '#00BBF9', 'v20251207_185455', 0, '2025-12-07 18:54:55', '2025-12-08 08:39:23'),
(1292, 1, -1.5450200973097, -5.3959891366568, '#4BC0C0', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1293, 2, -1.6102759544383, -5.3161029161962, '#34D399', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1294, 3, -3.9107332981048, -3.9723129075163, '#FFB1C1', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1295, 4, -4.3462040563973, -3.5683114823774, '#00BBF9', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1296, 5, -1.4216799141794, 2.1548893772676, '#00C49A', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1297, 6, -2.4189458669495, 2.0477906078143, '#FF6384', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1298, 7, -2.1638290041743, 2.3454657132844, '#00C49A', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1299, 8, -3.4924477858811, 1.0689084556271, '#FFB1C1', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1300, 9, -1.4223546246613, 2.3013759073819, '#9BDEAC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1301, 10, -1.0187048838774, -4.4266232238023, '#36A2EB', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1302, 11, -2.0921735372997, 2.2858006941092, '#60A5FA', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1303, 12, 0.86152531548285, 2.7437259923089, '#FF9F40', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1304, 13, -1.8685539877376, -5.1732480562704, '#F15BB5', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1305, 14, -0.20860203625584, -0.0029414766328813, '#A3E635', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1306, 15, -1.054618952246, -3.7684386475922, '#F472B6', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1307, 16, 0.076757379573614, 0.30238558278979, '#9966FF', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1308, 17, 1.8768240833982, 3.4009744421496, '#FFCE56', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1309, 18, 2.2181098888947, 2.6195227733517, '#4BC0C0', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1310, 19, 1.7891423367659, 2.6004621030033, '#36A2EB', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1311, 20, -3.0152789640543, 1.7174107748652, '#FFCE56', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1312, 21, 1.691724294199, 2.1122604726497, '#A3E635', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1313, 22, -2.4991623889351, 2.0801602809575, '#F472B6', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1314, 23, -3.1494981807786, 1.7721790331789, '#FB7185', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1315, 24, 0.83980235628012, 2.5443046669778, '#F15BB5', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1316, 25, -2.6872519550979, 1.2982763689506, '#9BDEAC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1317, 26, -5.8659955466491, 6.1319057103061, '#F15BB5', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1318, 27, -2.7020021878845, 0.93634371337987, '#36A2EB', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1319, 28, -5.6571922325378, 7.1107159877983, '#00BBF9', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1320, 29, 1.9943722266611, 2.2136348833283, '#9AD0F5', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1321, 30, -3.0559769705349, 1.8199103237092, '#60A5FA', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1322, 31, -2.9054560015781, 0.93329153636057, '#FF9F40', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1323, 32, 1.7447727140691, 2.2899822861326, '#4BC0C0', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1324, 33, 0.3903608733278, 2.7681431513783, '#34D399', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1325, 34, -3.0328026955413, 1.1965388808463, '#FFCE56', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1326, 35, -1.5440033199319, -4.641109578458, '#00BBF9', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1327, 36, 0.4440203583585, 2.6994599599592, '#FFCE56', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1328, 37, -5.3178795095782, 6.4475247638553, '#FF6384', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1329, 38, -1.0279652546182, -3.6759772256702, '#36A2EB', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1330, 39, -1.9408459430413, 2.3203429581705, '#FFB1C1', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1331, 40, -0.4296855411632, -3.3654974202263, '#FF6384', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1332, 41, -1.2123962141076, -4.9933805557664, '#00C49A', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1333, 42, -0.4813347123674, -3.0508560843414, '#00BBF9', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1334, 43, 1.104749404207, 0.36173870110579, '#FFCE56', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1335, 44, -4.1551415156481, -3.762008067008, '#FF9F40', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1336, 45, 1.4349257992413, 1.454024789537, '#FFB1C1', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1337, 46, -0.52583474278693, -2.5564155629761, '#34D399', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1338, 47, -0.62376462600532, -3.1525785795845, '#60A5FA', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1339, 48, 1.3041422896375, 1.397240585759, '#9AD0F5', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1340, 49, 0.21767761018626, -1.674067040798, '#FB7185', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1341, 50, -1.5674903153055, -5.1513418712943, '#9BDEAC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1342, 51, 2.4459547243997, 2.8148587320525, '#C084FC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1343, 52, 2.008970561878, 3.2564861690294, '#36A2EB', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1344, 53, -0.38806564763312, -2.9280197817485, '#C084FC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1345, 54, -1.245169912393, -4.7658440501918, '#9966FF', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1346, 55, 1.5785320963128, 2.9165430711497, '#F472B6', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1347, 56, -0.66368400711431, -2.8613896785345, '#00BBF9', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1348, 57, -1.7513506698529, -4.9893483351223, '#F472B6', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1349, 58, 0.19143078027042, -1.7073900930954, '#FFB1C1', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1350, 59, -2.0218222861831, -5.2770429932384, '#FBBF24', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1351, 60, 0.9709535384432, 0.51479086691303, '#F472B6', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1352, 61, 2.0212184777661, 3.5624589194261, '#A3E635', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1353, 62, -3.6917564069637, 1.223861331744, '#F472B6', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1354, 63, -5.7541653005251, 6.1866366266987, '#A3E635', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1355, 64, 1.0154612573477, 0.89233388852738, '#4BC0C0', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1356, 65, 1.6902178024179, 3.2223297635861, '#36A2EB', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1357, 66, -5.4840070637146, 6.9871085486698, '#C084FC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1358, 67, -4.0978640477161, -3.8188475052775, '#FBBF24', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1359, 68, -5.4879407794471, 6.6381683835978, '#A3E635', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1360, 69, 2.4444147776211, 3.2287767521821, '#38BDF8', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1361, 70, -1.5307285887756, 2.3797042166473, '#F15BB5', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1362, 71, -4.1820237543964, -3.7411752840208, '#34D399', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1363, 72, -5.577629945836, 6.8319179452841, '#FFB1C1', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1364, 73, 1.4950780787301, 2.6104878887106, '#36A2EB', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1365, 74, -0.92955354220865, -3.4516004138478, '#FFCE56', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1366, 75, 1.9200957332035, 3.3813214055488, '#9966FF', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1367, 76, 0.56150839669014, 0.97418278404376, '#00C49A', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1368, 77, -2.9724727820144, 1.21889807191, '#00BBF9', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1369, 78, 1.7259119234465, 3.1309560570388, '#9BDEAC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1370, 79, -1.496121537602, -4.9405195956807, '#60A5FA', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1371, 80, -0.30338426386524, -2.6669624405982, '#A3E635', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1372, 81, -1.28184174827, -4.483760506727, '#9AD0F5', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1373, 82, -5.4804605062132, 6.6563719386281, '#FF6384', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1374, 83, -2.1041626323523, -4.8255018150888, '#F472B6', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1375, 84, 1.675846473571, 2.6218221318929, '#FBBF24', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1376, 85, 2.1118973512979, 2.3266684441104, '#C084FC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1377, 86, 2.1923165517502, 2.9877240615494, '#36A2EB', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1378, 87, -5.7186658393873, 6.7151342716455, '#FFB1C1', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1379, 88, -3.7612948661877, 1.0593813639162, '#9AD0F5', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1380, 89, 1.0479129322127, -0.30255646021901, '#FB7185', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1381, 90, 0.078187593729483, -1.8251460947838, '#FF9F40', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1382, 91, 1.1101155409422, 0.72993597809763, '#F15BB5', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1383, 92, 0.20062352611978, -1.6894673895796, '#36A2EB', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1384, 93, 0.77141797037759, 0.6351884713474, '#4BC0C0', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1385, 94, -4.2174911580935, -3.7042516376183, '#FF6384', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1386, 95, 1.5021918117141, 2.9902993256864, '#00C49A', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1387, 96, -5.7102046496699, 6.4408097483375, '#9966FF', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1388, 97, -5.4739473814885, 6.4575261866082, '#F472B6', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1389, 98, -2.2609815829925, 0.72254514320041, '#FFB1C1', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1390, 99, -1.3642252462691, -4.5216057315557, '#9BDEAC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1391, 100, 0.63334487994405, 2.6892248676254, '#F472B6', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1392, 101, -5.7786002768434, 6.2062673172951, '#FB7185', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1393, 102, -0.48155318830474, -3.1592714320897, '#F472B6', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1394, 103, 0.9250440930354, 1.6227157141704, '#00BBF9', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1395, 104, -3.5781736280333, 1.0137736489484, '#4BC0C0', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1396, 105, -1.1282066396692, -5.0290314559465, '#34D399', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1397, 106, -4.2593220745374, -3.6539744580078, '#C084FC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1398, 107, -2.1536450827685, 2.0283901990104, '#FBBF24', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1399, 108, -1.9682765275558, -4.7814099043035, '#9966FF', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1400, 109, -0.75902579032771, -2.6722604517425, '#00C49A', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1401, 110, 2.1313253113707, 2.8710188357534, '#60A5FA', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1402, 111, 1.027802987756, -0.16508701674809, '#36A2EB', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1403, 112, 1.1221240251381, -0.22459443168374, '#C084FC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1404, 113, 0.80499172801117, 0.39719808405975, '#9BDEAC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1405, 114, 2.2569480601659, 3.2815784439693, '#9AD0F5', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1406, 115, -2.3979390570333, 1.9845074679562, '#FF6384', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1407, 116, -3.8091090695416, 0.94374337347906, '#9AD0F5', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1408, 117, -1.61194861507, 2.298655985575, '#9966FF', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1409, 118, 1.0188412468433, 0.58146674057701, '#36A2EB', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1410, 119, 1.1418812396474, 2.7106963153458, '#C084FC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1411, 120, 2.4826201895244, 3.2385576020191, '#FB7185', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1412, 121, -2.600252397607, 1.0723226744381, '#F472B6', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1413, 122, -3.8689777867233, 0.68821282093663, '#FF6384', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1414, 123, -5.6504725844045, 7.0970840831336, '#FFCE56', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1415, 124, 0.1706806091015, -1.7226751120988, '#FF9F40', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1416, 125, 1.3120365998811, 1.068492939795, '#60A5FA', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1417, 126, -1.8682897942036, -4.9264760865348, '#36A2EB', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1418, 127, -2.112612344737, -5.3042403800987, '#C084FC', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1419, 128, -5.4094218006489, 6.8593661862988, '#00C49A', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23'),
(1420, 129, 1.0841480197693, -0.23306794958388, '#00BBF9', 'v20251208_083923', 1, '2025-12-08 08:39:23', '2025-12-08 08:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin UMAP', 'admin@umap.local', NULL, '$2y$10$GGNVGRl/D0oQ0fA6o0CihOtYzsK2Z6E3SPz0uNwQMcndpMQRialQy', 1, 'wtZPCcPsyJ7oVM29mz0rw4X5olIp7WeCU94q2YzZjC4DGQbd53KM0VugLnWB', '2025-12-06 02:03:26', '2025-12-06 02:03:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_menteris`
--
ALTER TABLE `detail_menteris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `detail_menteris_menteri_id_unique` (`menteri_id`),
  ADD KEY `detail_menteris_menteri_id_index` (`menteri_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `master_dpr_mprs`
--
ALTER TABLE `master_dpr_mprs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_dpr_mprs_label_unique` (`label`),
  ADD UNIQUE KEY `master_dpr_mprs_kode_umap_unique` (`kode_umap`);

--
-- Indexes for table `master_harta_levels`
--
ALTER TABLE `master_harta_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_harta_levels_label_unique` (`label`),
  ADD UNIQUE KEY `master_harta_levels_kode_umap_unique` (`kode_umap`);

--
-- Indexes for table `master_jabatan_rangkaps`
--
ALTER TABLE `master_jabatan_rangkaps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_jabatan_rangkaps_label_unique` (`label`),
  ADD UNIQUE KEY `master_jabatan_rangkaps_kode_umap_unique` (`kode_umap`);

--
-- Indexes for table `master_jenis_kelamins`
--
ALTER TABLE `master_jenis_kelamins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_jenis_kelamins_label_unique` (`label`),
  ADD UNIQUE KEY `master_jenis_kelamins_kode_umap_unique` (`kode_umap`);

--
-- Indexes for table `master_kementerians`
--
ALTER TABLE `master_kementerians`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_kementerians_nama_kementerian_unique` (`nama_kementerian`),
  ADD UNIQUE KEY `master_kementerians_kode_umap_unique` (`kode_umap`);

--
-- Indexes for table `master_korupsi_levels`
--
ALTER TABLE `master_korupsi_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_korupsi_levels_label_unique` (`label`),
  ADD UNIQUE KEY `master_korupsi_levels_kode_umap_unique` (`kode_umap`);

--
-- Indexes for table `master_militer_polisis`
--
ALTER TABLE `master_militer_polisis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_militer_polisis_label_unique` (`label`),
  ADD UNIQUE KEY `master_militer_polisis_kode_umap_unique` (`kode_umap`);

--
-- Indexes for table `master_partais`
--
ALTER TABLE `master_partais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_partais_nama_partai_unique` (`nama_partai`),
  ADD UNIQUE KEY `master_partais_kode_umap_unique` (`kode_umap`);

--
-- Indexes for table `master_pendidikans`
--
ALTER TABLE `master_pendidikans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_pendidikans_kode_umap_jenjang_default_unique` (`kode_umap`,`jenjang_default`),
  ADD UNIQUE KEY `master_pendidikans_label_jurusan_unique` (`label_jurusan`);

--
-- Indexes for table `master_provinsis`
--
ALTER TABLE `master_provinsis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_provinsis_nama_unique` (`nama`),
  ADD UNIQUE KEY `master_provinsis_kode_umap_unique` (`kode_umap`);

--
-- Indexes for table `master_umur_kategoris`
--
ALTER TABLE `master_umur_kategoris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_umur_kategoris_label_unique` (`label`),
  ADD UNIQUE KEY `master_umur_kategoris_kode_umap_unique` (`kode_umap`);

--
-- Indexes for table `menteris`
--
ALTER TABLE `menteris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menteris_status_index` (`status`),
  ADD KEY `menteris_kementerian_id_index` (`kementerian_id`),
  ADD KEY `menteris_provinsi_lahir_id_index` (`provinsi_lahir_id`),
  ADD KEY `menteris_partai_id_index` (`partai_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `umap_embeddings`
--
ALTER TABLE `umap_embeddings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `umap_embeddings_menteri_id_index` (`menteri_id`),
  ADD KEY `umap_embeddings_batch_tag_is_active_index` (`batch_tag`,`is_active`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_menteris`
--
ALTER TABLE `detail_menteris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_dpr_mprs`
--
ALTER TABLE `master_dpr_mprs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_harta_levels`
--
ALTER TABLE `master_harta_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `master_jabatan_rangkaps`
--
ALTER TABLE `master_jabatan_rangkaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_jenis_kelamins`
--
ALTER TABLE `master_jenis_kelamins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_kementerians`
--
ALTER TABLE `master_kementerians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `master_korupsi_levels`
--
ALTER TABLE `master_korupsi_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_militer_polisis`
--
ALTER TABLE `master_militer_polisis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_partais`
--
ALTER TABLE `master_partais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `master_pendidikans`
--
ALTER TABLE `master_pendidikans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `master_provinsis`
--
ALTER TABLE `master_provinsis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `master_umur_kategoris`
--
ALTER TABLE `master_umur_kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menteris`
--
ALTER TABLE `menteris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `umap_embeddings`
--
ALTER TABLE `umap_embeddings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1421;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
