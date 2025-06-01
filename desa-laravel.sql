-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2025 at 03:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desa-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `agamas`
--

CREATE TABLE `agamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agama` varchar(255) NOT NULL,
  `penganut` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agamas`
--

INSERT INTO `agamas` (`id`, `agama`, `penganut`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Islam', 0, 1, '2025-02-11 03:21:45', '2025-05-19 07:16:12'),
(2, 'Kristen', 200, 1, '2025-02-11 03:21:45', '2025-04-27 10:32:27'),
(3, 'Katolik', 20, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(4, 'Hindu', 10, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(5, 'Budha', 15, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(6, 'Konghucu', 6, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `anggarans`
--

CREATE TABLE `anggarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `keterangan` longtext NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggarans`
--

INSERT INTO `anggarans` (`id`, `judul`, `slug`, `keterangan`, `gambar`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rincian Dana Desa 2024', 'rincian-dana-desa', '<p>Contoh saja</p>', 'img-anggaran//67aaf242796a8.jpeg', 1, '2025-02-11 06:46:26', '2025-02-11 06:46:49'),
(2, 'Rincian 2025', 'rincian-2025', '<p>Contoh Saja</p>', 'img-anggaran//67aaf2a551c24.png', 1, '2025-02-11 06:48:05', '2025-02-11 06:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `excerpt` longtext NOT NULL,
  `isi_pengumuman` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `judul`, `slug`, `views`, `excerpt`, `isi_pengumuman`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Cek Kesehatan Gratis', 'cek-kesehatan-gratis', 3, 'Dinas Kesehatan Kota Indramayu mengadakan Cek Kesehatan Gratis bagi seluruh warga Indramayu! Manfaatkan kesempatan ini untuk mengetahui kondisi kesehatan Anda dan mendapatkan konsultasi medis secara g...', '<p>Dinas Kesehatan Kota Indramayu mengadakan <strong>Cek Kesehatan Gratis</strong> bagi seluruh warga Indramayu! Manfaatkan kesempatan ini untuk mengetahui kondisi kesehatan Anda dan mendapatkan konsultasi medis secara gratis.</p><p>📅 <strong>Tanggal:</strong> [Isi tanggal kegiatan]<br>🕘 <strong>Waktu:</strong> [Isi waktu kegiatan]<br>📍 <strong>Lokasi:</strong> [Isi lokasi kegiatan]</p><p>🔍 <strong>Layanan yang tersedia:</strong><br>✅ Pemeriksaan tekanan darah<br>✅ Cek gula darah<br>✅ Pemeriksaan kolesterol<br>✅ Konsultasi kesehatan dengan dokter<br>✅ Edukasi pola hidup sehat</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 Warga Kota indramayu (bawa KTP/KK)<br>📌 Datang sesuai jadwal dan tetap menjaga protokol kesehatan</p><p>Jangan lewatkan kesempatan ini! Ajak keluarga dan kerabat untuk bersama-sama menjaga kesehatan.</p><p>📞 <strong>Informasi lebih lanjut:</strong> [Isi kontak atau link resmi]</p><p>Salam sehat,<br><strong>Dinas Kesehatan Kota Bandung</strong></p>', 1, '2025-02-11 06:42:52', '2025-04-29 07:10:24'),
(2, 'PROGRAM BANTUAN DAN PELATIHAN UNTUK UMKM KOTA INDRAMAYU', 'program-bantuan-dan-pelatihan-untuk-umkm-kota-indramayu', 0, 'Pemerintah Kota INDRAMAYU melalui Dinas Koperasi dan UMKM mengadakan program bantuan dan pelatihan bagi para pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) untuk meningkatkan daya saing dan memperluas...', '<p>Pemerintah Kota INDRAMAYU melalui Dinas Koperasi dan UMKM mengadakan <strong>program bantuan dan pelatihan</strong> bagi para pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) untuk meningkatkan daya saing dan memperluas pasar!</p><p>📅 <strong>Tanggal Pendaftaran:</strong> [Isi tanggal]<br>📍 <strong>Lokasi:</strong> [Isi lokasi atau link pendaftaran]</p><p>🔍 <strong>Fasilitas yang diberikan:</strong><br>✅ Bantuan modal usaha<br>✅ Pelatihan digital marketing dan branding<br>✅ Pendampingan legalitas usaha (NIB, PIRT, Halal, dll.)<br>✅ Akses ke marketplace dan jaringan bisnis</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 Pelaku UMKM yang berdomisili di Kota INDRAMAYU<br>📌 Memiliki usaha yang sudah berjalan minimal 6 bulan<br>📌 Bersedia mengikuti seluruh rangkaian pelatihan</p><p>📞 <strong>Informasi lebih lanjut:</strong> [Isi kontak atau link resmi]</p><p>Jangan lewatkan kesempatan ini untuk mengembangkan usaha Anda!</p><p>Salam sukses,<br><strong>Dinas Koperasi dan UMKM Kota INDRAMAYU</strong></p>', 1, '2025-02-11 06:43:42', '2025-04-27 10:30:38'),
(3, 'LOMBA UMKM INOVATIF KOTA INDRAMAYU 2025', 'lomba-umkm-inovatif-kota-indramayu-2025', 1, 'Pemerintah Kota INDRAMAYU melalui Dinas Koperasi dan UMKM mengundang para pelaku usaha mikro, kecil, dan menengah (UMKM) untuk mengikuti Lomba UMKM Inovatif 2025! Tunjukkan kreativitas dan inovasi usa...', '<p>Pemerintah Kota INDRAMAYU melalui <strong>Dinas Koperasi dan UMKM</strong> mengundang para pelaku usaha mikro, kecil, dan menengah (UMKM) untuk mengikuti <strong>Lomba UMKM Inovatif 2025</strong>! Tunjukkan kreativitas dan inovasi usaha Anda serta raih hadiah menarik!</p><p>📅 <strong>Pendaftaran:</strong> [Isi tanggal pendaftaran]<br>📅 <strong>Batas Akhir Pendaftaran:</strong> [Isi batas waktu]<br>📍 <strong>Lokasi Acara:</strong> [Isi lokasi acara]</p><p>🔍 <strong>Kategori Lomba:</strong><br>🏆 UMKM Kuliner<br>🏆 UMKM Fashion &amp; Kerajinan<br>🏆 UMKM Teknologi &amp; Jasa</p><p>🎁 <strong>Hadiah:</strong><br>🏅 Juara 1: Rp [Isi nominal] + Sertifikat + Pembinaan Eksklusif<br>🥈 Juara 2: Rp [Isi nominal] + Sertifikat<br>🥉 Juara 3: Rp [Isi nominal] + Sertifikat</p><p>💡 <strong>Syarat &amp; Ketentuan:</strong><br>📌 UMKM berdomisili di Kota INDRAMAYU<br>📌 Usaha sudah berjalan minimal 6 bulan<br>📌 Mengisi formulir pendaftaran dan mengunggah profil usaha</p><p>📞 <strong>Informasi &amp; Pendaftaran:</strong> [Isi kontak/link pendaftaran]</p><p>Jangan lewatkan kesempatan ini! Tunjukkan inovasi terbaik dan jadilah UMKM unggulan Kota Bandung! 🚀</p><p><strong>Dinas Koperasi dan UMKM Kota INDRAMAYU</strong></p>', 1, '2025-02-11 06:44:26', '2025-04-27 10:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `gambar`, `judul`, `excerpt`, `slug`, `views`, `body`, `user_id`, `status_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(4, 'img-berita/680e472ecab11.jpeg', 'Indramayu Semakin Bersinar: Dorong Pertumbuhan Ekonomi dan Wisata Lokal', 'Indramayu, 27 April 2025 – Kabupaten Indramayu, Jawa Barat, terus menunjukkan perkembangan positif d...', 'indramayu-semakin-bersinar-dorong-pertumbuhan-ekonomi-dan-wisata-lokal', 2, '<p><strong>Indramayu, 27 April 2025</strong> – Kabupaten Indramayu, Jawa Barat, terus menunjukkan perkembangan positif di berbagai sektor, mulai dari ekonomi, pariwisata, hingga infrastruktur. Berkat kerja sama antara pemerintah daerah, masyarakat, dan pelaku usaha, Indramayu kini semakin bersaing di tingkat nasional.</p><p>Dalam sektor ekonomi, produksi pertanian, khususnya padi dan mangga, tetap menjadi andalan. Tahun ini, Indramayu mencatatkan peningkatan hasil panen padi sebesar 8% dibandingkan tahun sebelumnya. Pemerintah Kabupaten Indramayu juga tengah mendorong program hilirisasi pertanian untuk meningkatkan nilai tambah produk lokal.</p><p>Di bidang pariwisata, sejumlah destinasi seperti Pantai Balongan Indah, Pantai Tirtamaya, dan Hutan Mangrove Karangsong terus dipercantik untuk menarik lebih banyak wisatawan. Tidak hanya wisata alam, budaya lokal seperti tradisi Nadran dan tarian Topeng Dermayon juga semakin dipromosikan melalui festival tahunan.</p><p>Bupati Indramayu, Nina Agustina, dalam keterangannya mengatakan, <i>\"Kami berkomitmen menjadikan Indramayu sebagai daerah yang maju, inovatif, dan berdaya saing tinggi, tanpa meninggalkan nilai budaya yang menjadi identitas kami.\"</i></p><p>Peningkatan infrastruktur juga tampak nyata dengan selesainya beberapa proyek jalan raya dan revitalisasi pasar tradisional. Kehadiran jalan tol Cisumdawu yang sudah terkoneksi mempercepat akses dari dan ke Indramayu, membuat investasi dan kunjungan wisatawan menjadi lebih mudah.</p><p>Dengan berbagai pencapaian ini, masyarakat berharap Indramayu dapat terus berkembang, memberikan lebih banyak peluang usaha, lapangan kerja, dan menjadikan kabupaten ini semakin dikenal di kancah nasional maupun internasional.</p>', 1, 2, 4, '2025-04-27 15:03:10', '2025-04-29 07:15:46'),
(5, 'img-berita/680e484e8cead.jpeg', 'Mall Pertama di Indramayu Resmi Dibuka, Angkat Ekonomi Lokal', 'Indramayu, 27 April 2025 – Warga Indramayu kini memiliki destinasi belanja dan hiburan baru dengan d...', 'mall-pertama-di-indramayu-resmi-dibuka-angkat-ekonomi-lokal', 9, '<p><strong>Indramayu, 27 April 2025</strong> – Warga Indramayu kini memiliki destinasi belanja dan hiburan baru dengan diresmikannya <strong>Indramayu Plaza</strong> (ImPlaz), mall modern pertama di Kabupaten Indramayu. Mall ini berlokasi strategis di jantung kota, menghadirkan berbagai tenant nasional hingga produk lokal unggulan.</p><p>Peresmian yang digelar meriah pada hari Sabtu (26/4) kemarin dihadiri langsung oleh Bupati Indramayu, Nina Agustina, serta tokoh masyarakat dan ribuan warga. Dalam sambutannya, Bupati menyampaikan bahwa kehadiran mall ini diharapkan dapat menjadi motor penggerak ekonomi baru bagi Indramayu.</p><p><i>\"ImPlaz tidak hanya menghadirkan pusat belanja, tapi juga membuka lapangan kerja baru dan mempromosikan produk UMKM lokal agar lebih dikenal masyarakat luas,\"</i> ujar Bupati Nina.</p><p>Mall ini terdiri dari tiga lantai dengan fasilitas lengkap, mulai dari supermarket, food court, bioskop, pusat permainan anak, hingga area khusus untuk bazar UMKM. Selain brand nasional seperti Matahari Department Store dan J.CO Donuts, banyak juga booth yang diisi oleh usaha lokal khas Indramayu, seperti batik Paoman, mangga Indramayu, hingga kuliner tradisional.</p><p>Antusiasme warga sangat tinggi sejak pembukaan. Banyak keluarga muda, pelajar, hingga wisatawan dari kota sekitar memadati area mall, menikmati suasana modern yang sebelumnya jarang ditemukan di Indramayu.</p><p>Kehadiran ImPlaz diyakini menjadi langkah awal transformasi wajah kota Indramayu menjadi lebih maju dan kompetitif, sekaligus menumbuhkan gaya hidup baru masyarakat lokal.</p>', 1, 2, 4, '2025-04-27 15:07:58', '2025-05-19 07:30:39'),
(6, 'img-berita/680e4947b4f56.jpeg', 'Lucky Hakim Disorot Usai Pergi ke Jepang di Tengah Polemik Jabatan', 'Indramayu, 27 April 2025 – Nama Lucky Hakim kembali menjadi sorotan publik setelah kepergiannya ke J...', 'lucky-hakim-disorot-usai-pergi-ke-jepang-di-tengah-polemik-jabatan', 3, '<p><strong>Indramayu, 27 April 2025</strong> – Nama Lucky Hakim kembali menjadi sorotan publik setelah kepergiannya ke Jepang di tengah panasnya isu politik di Kabupaten Indramayu. Kepergian Lucky Hakim ke Negeri Sakura tersebut menimbulkan tanda tanya besar, terutama setelah ia secara mengejutkan mengundurkan diri dari jabatannya sebagai Wakil Bupati Indramayu pada tahun 2023.</p><p>Saat itu, Lucky Hakim berdalih bahwa alasan pengunduran dirinya adalah karena merasa \"dibohongi\" terkait janji-janji politik di internal pemerintahan. Namun di tengah ketidakpastian tersebut, publik dikejutkan dengan beredarnya foto-foto dan laporan keberadaannya di Jepang.</p><p>Beberapa pihak menilai kepergian Lucky ke Jepang sebagai langkah tidak etis, mengingat situasi politik Indramayu sedang membutuhkan ketenangan dan stabilitas. Tidak sedikit pula yang mempertanyakan apakah perjalanan tersebut bersifat pribadi, bisnis, atau berhubungan dengan tugas resmi.</p><p>Dalam klarifikasinya kepada media, Lucky Hakim menegaskan bahwa perjalanannya ke Jepang adalah untuk urusan pribadi sekaligus studi banding di bidang pertanian dan pendidikan, yang menurutnya tetap memiliki keterkaitan dengan upayanya membantu daerah asalnya, meski ia sudah tidak menjabat.</p><p><i>\"Saya ke Jepang bukan untuk berfoya-foya. Saya melihat peluang yang bisa dibawa pulang untuk Indramayu, meski jabatan saya sudah saya kembalikan,\"</i> kata Lucky Hakim.</p><p>Meski demikian, masyarakat Indramayu tetap terbelah antara yang mendukung langkah Lucky dan yang mempertanyakan komitmennya terhadap amanah yang pernah diembannya.</p><p>Polemik ini menjadi salah satu babak baru dalam dinamika politik Indramayu yang memang penuh warna belakangan ini.</p>', 1, 2, 5, '2025-04-27 15:12:07', '2025-04-29 07:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `bumdes`
--

CREATE TABLE `bumdes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `produk` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `berita_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `nama`, `email`, `body`, `berita_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'iyan', 'iyan@gmail.com', '123', 5, NULL, '2025-05-19 07:17:32', '2025-05-19 07:17:32'),
(3, 'har', 'har@gmail.com', '###', 5, NULL, '2025-05-19 07:18:29', '2025-05-19 07:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gambar`, `keterangan`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 'img-gallery//680e59d176849.jpeg', 'Pantai Tirtamaya', 1, '2025-04-27 16:22:41', '2025-04-27 16:22:41'),
(10, 'img-gallery//680e59ffdbb3a.jpg', 'Pantai Bali', 1, '2025-04-27 16:23:27', '2025-04-27 16:23:27'),
(11, 'img-gallery//680e5a10b0782.jpeg', 'Pantai Karangsong', 1, '2025-04-27 16:23:44', '2025-04-27 16:23:44'),
(12, 'img-gallery//680e5a22ed076.jpeg', 'Alun Alun Indramayu', 1, '2025-04-27 16:24:02', '2025-04-27 16:24:02'),
(13, 'img-gallery//680e5a356d0d1.png', 'Agung Fantasi Waterboom', 1, '2025-04-27 16:24:21', '2025-04-27 16:24:21'),
(14, 'img-gallery//680e5a60eac33.jpeg', 'Mall Indramayu', 1, '2025-04-27 16:25:04', '2025-04-27 16:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamins`
--

CREATE TABLE `jenis_kelamins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_kelamins`
--

INSERT INTO `jenis_kelamins` (`id`, `jenis_kelamin`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Laki-laki', 70, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Perempuan', 55, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `kategori`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi', 'teknologi', 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'Kesenian', 'kesenian', 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'UMKM', 'umkm', 1, '2025-02-11 06:05:44', '2025-02-11 06:05:44'),
(4, 'pariwisata', 'pariwisata', 1, '2025-02-11 06:26:07', '2025-02-11 06:26:07'),
(5, 'Politik', 'politik', 1, '2025-04-27 15:12:20', '2025-04-27 15:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `kontaks`
--

CREATE TABLE `kontaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lokasi` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kontaks`
--

INSERT INTO `kontaks` (`id`, `lokasi`, `email`, `no_hp`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Simade,Indramayu', 'kelompok3@gmail.com', '0882260686031', 1, '2025-02-11 03:21:45', '2025-04-27 09:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `persyaratan` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanans`
--

INSERT INTO `layanans` (`id`, `layanan`, `persyaratan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Program UHC di Kota INDRAMAYU', '<p><strong>Identitas Resmi:</strong> Memiliki identitas yang dikeluarkan oleh Pemerintah Kota INDRAMAYU selama lebih dari 1 tahun.</p><p><strong>Kartu Keluarga (KK):</strong> Bagi bayi yang usianya lebih dari 1 bulan, namanya harus sudah tercantum di Kartu Keluarga untuk bisa masuk dalam UHC.</p><p><strong>Dokumen Pendukung:</strong> Menyiapkan KTP, KK, dan hasil pemeriksaan pasien/rujukan/surat rawat.</p><p><strong>Kepesertaan JKN:</strong> UHC berlaku untuk:</p><ul><li>Pasien yang belum memiliki JKN atau PBI non-aktif (sesuai persyaratan).</li><li>Pasien terdaftar BPJS Mandiri non-aktif karena masalah premi (dengan tambahan formulir PYDOPD).</li><li>Pasien terdaftar BPJS pegawai swasta non-aktif (dengan tambahan surat keterangan kerja).</li><li>Pasien BBL (bayi dari ibu yang terdaftar PBI dengan usia &lt;28 hari) dengan tambahan Surat Keterangan Lahir.</li></ul>', 1, '2025-02-11 06:23:03', '2025-04-27 10:31:52'),
(2, 'Pendaftaran Layanan Kesehatan di Puskesmas Secara Online', '<p><strong>Sistem yang Dikembangkan Sendiri oleh Puskesmas:</strong> Setiap Puskesmas mungkin memiliki sistem pendaftaran online yang unik. Petunjuk pendaftaran biasanya tersedia di situs web Puskesmas atau dapat diperoleh melalui kontak telepon.</p><p><strong>Platform Kesehatan Online Pemerintah:</strong> Jika tersedia, platform ini terintegrasi dengan beberapa Puskesmas. Anda mungkin perlu mendaftar akun terlebih dahulu sebelum dapat mendaftar di Puskesmas. Informasi lebih lanjut dapat ditemukan di situs web Dinas Kesehatan Kota Indramyu.</p><p><strong>Aplikasi Pihak Ketiga:</strong> Beberapa Puskesmas mungkin bekerja sama dengan aplikasi pihak ketiga untuk menyediakan layanan pendaftaran online. Pastikan aplikasi tersebut terpercaya dan aman sebelum menggunakannya.</p><p>Langkah-langkah umum pendaftaran online di Puskesmas indramayu meliputi:</p><p><strong>Akses Situs Web atau Aplikasi:</strong> Buka situs web Puskesmas atau aplikasi yang telah ditentukan.</p><p><strong>Pendaftaran Akun:</strong> Jika diperlukan, buat akun dengan mengisi data diri yang diminta.</p><p><strong>Pilih Layanan:</strong> Pilih jenis layanan kesehatan yang dibutuhkan dan jadwal kunjungan.</p><p><strong>Konfirmasi Pendaftaran:</strong> Setelah mengisi semua informasi yang diperlukan, konfirmasi pendaftaran Anda.</p>', 1, '2025-02-11 06:24:18', '2025-04-27 08:57:22');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_13_022605_create_sliders_table', 1),
(7, '2023_09_14_134427_create_beritas_table', 1),
(8, '2023_09_14_142413_create_post_statuses_table', 1),
(9, '2023_09_14_223318_create_kategoris_table', 1),
(10, '2023_09_17_091224_create_comments_table', 1),
(11, '2023_09_18_054320_create_comment_replies_table', 1),
(12, '2023_09_18_173129_create_wilayahs_table', 1),
(13, '2023_09_18_203110_create_sejarahs_table', 1),
(14, '2023_09_18_210113_create_visi_misis_table', 1),
(15, '2023_09_19_061945_create_perangkat_desas_table', 1),
(16, '2023_09_21_054915_create_agamas_table', 1),
(17, '2023_09_21_073255_create_jenis_kelamins_table', 1),
(18, '2023_09_21_085821_create_pekerjaans_table', 1),
(19, '2023_09_23_063218_create_petas_table', 1),
(20, '2023_09_24_051908_create_umkms_table', 1),
(21, '2023_09_25_061424_create_kontaks_table', 1),
(22, '2023_09_25_075226_create_video_profils_table', 1),
(23, '2023_09_26_054211_create_situses_table', 1),
(24, '2023_11_29_060538_create_layanans_table', 1),
(25, '2023_11_29_073753_create_galleries_table', 1),
(26, '2023_11_29_164313_create_announcements_table', 1),
(27, '2023_11_29_201150_create_anggarans_table', 1),
(28, '2025_05_14_134545_create_bumdes_table', 2),
(29, '2025_05_25_175328_create_pesanan_bumdes_table', 3);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaans`
--

CREATE TABLE `pekerjaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pekerjaans`
--

INSERT INTO `pekerjaans` (`id`, `pekerjaan`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Petani', 132, 1, '2025-02-11 03:21:45', '2025-02-11 04:55:09'),
(2, 'Pegawai Negeri', 14, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(3, 'Belum/Tidak bekerja', 10, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(4, 'Pensiunan', 20, 1, '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `perangkat_desas`
--

CREATE TABLE `perangkat_desas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perangkat_desas`
--

INSERT INTO `perangkat_desas` (`id`, `nama`, `foto`, `jabatan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Kelompok 3', 'img-perangkat//67aaf46b5d68e.jpg', 'Kepala Desa', 1, '2025-02-11 03:21:45', '2025-04-27 08:40:41'),
(2, 'Hardi', 'img-perangkat//67aaf45773274.jpg', 'Sekretaris Desa', 1, '2025-02-11 03:21:45', '2025-04-27 08:40:31'),
(3, 'Puspa', 'img-perangkat//67aaf3cb12ce6.png', 'Kepala Urusan Umum', 1, '2025-02-11 03:21:45', '2025-04-27 08:40:15'),
(4, 'oke', 'img-perangkat//682ada8fc68d1.jpg', 'Kepala Dusun', 1, '2025-02-11 03:21:45', '2025-05-19 07:15:27');

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
-- Table structure for table `pesanan_bumdes`
--

CREATE TABLE `pesanan_bumdes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bumdes_id` bigint(20) UNSIGNED NOT NULL,
  `nama_pemesan` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `catatan` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'menunggu',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petas`
--

CREATE TABLE `petas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petas`
--

INSERT INTO `petas` (`id`, `judul`, `alamat`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'polindra', 'lohbener', 1, '2025-02-11 03:21:45', '2025-05-19 07:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `post_statuses`
--

CREATE TABLE `post_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_statuses`
--

INSERT INTO `post_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'draft', '2025-02-11 03:21:45', '2025-02-11 03:21:45'),
(2, 'publish', '2025-02-11 03:21:45', '2025-02-11 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `sejarahs`
--

CREATE TABLE `sejarahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sejarahs`
--

INSERT INTO `sejarahs` (`id`, `judul`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah Desa Indramayu', '<p>Berikut adalah sejarah Kabupaten Indramayu dalam bentuk narasi lengkap tanpa menggunakan simbol bullet point atau asterisk:</p><p>**Sejarah Kabupaten Indramayu**</p><p>Asal usul nama Indramayu berasal dari gabungan kata \"Indra\" yang berarti dewa hujan dalam kepercayaan Hindu dan \"Mayu\" yang berarti permohonan. Nama ini terkait erat dengan legenda Ki Gede Bangsawati, seorang tokoh penyebar agama Islam dari Kerajaan Demak yang datang ke wilayah ini sekitar abad ke-16. Kisah ini tercatat dalam Babad Dermayu, naskah kuno yang menjadi sumber sejarah daerah ini.</p><p>Pada masa pra-kolonial, wilayah Indramayu berada di bawah pengaruh Kerajaan Sunda-Galuh sebelum kemudian menjadi bagian dari Kesultanan Cirebon di bawah pemerintahan Sunan Gunung Jati. Catatan sejarah Portugis dari tahun 1513 menyebutkan Indramayu sebagai salah satu pelabuhan penting di pesisir utara Jawa yang menjadi pusat perdagangan beras dan hasil laut.</p><p>Tanggal 18 Oktober 1527 ditetapkan sebagai hari jadi Kabupaten Indramayu, merujuk pada saat Ki Gede Bangsawati membuka permukiman pertama di daerah yang sekarang dikenal sebagai Kecamatan Sindang. Pada masa Mataram Islam tahun 1625, Indramayu menjadi wilayah penting sebagai lumbung padi.</p><p>Pada era kolonial Belanda, Indramayu berkembang sebagai pusat produksi beras untuk memenuhi kebutuhan Batavia. Tahun 1816, Pemerintah Hindia Belanda secara resmi memisahkan Indramayu dari Cirebon dan menetapkannya sebagai kabupaten tersendiri dengan Raden Aria Wiralodra sebagai bupati pertama. Sistem tanam paksa tebu yang diterapkan Belanda tahun 1830 meninggalkan jejak sejarah berupa pabrik-pabrik gula seperti PG Jatibarang.</p><p>Masa kemerdekaan mencatat peran penting Indramayu sebagai basis perjuangan Laskar Hizbullah melawan penjajah antara tahun 1945-1949. Setelah pengakuan kedaulatan tahun 1950, Indramayu secara resmi menjadi bagian dari Provinsi Jawa Barat. Temuan ladang minyak Jatibarang tahun 1968 menjadi titik balik perkembangan ekonomi wilayah ini.</p><p>Perkembangan modern Indramayu ditandai dengan pembangunan Pelabuhan Perikanan Karangsong tahun 1984 yang menjadi pelabuhan perikanan terbesar di Jawa Barat. Abad ke-21 menyaksikan transformasi Indramayu sebagai kawasan agrowisata mangga dan lumbung pangan nasional yang ditetapkan pemerintah pusat tahun 2021.</p><p>Beberapa fakta sejarah penting antara lain pemberontakan petani tebu tahun 1885 yang dikenal sebagai Gejolak Dermayu, peran Indramayu dalam jalur rempah Nusantara, serta ditemukannya berbagai artefak dan prasasti peninggalan era Hindu-Buddha di Kecamatan Lohbener.</p><p>Tokoh sejarah yang paling dihormati adalah Raden Aria Wiralodra, bupati pertama Indramayu yang menjadi simbol kepemimpinan lokal. Peninggalan sejarah fisik yang masih bisa disaksikan hingga kini antara lain Masjid Agung Indramayu yang berdiri sejak 1527, makam Ki Gede Bangsawati di Sindang, serta bangunan-bangunan bekas pabrik gula era kolonial di Jatibarang.</p><p>Setiap tanggal 18 Oktober, masyarakat Indramayu memperingati hari jadi dengan berbagai kegiatan budaya seperti Festival Nadran yang merupakan tradisi larung sesaji ke laut dan Kirab Budaya yang menampilkan berbagai fragmen sejarah daerah. Indramayu saat ini terus berkembang dengan tetap mempertahankan identitasnya sebagai kota pesisir yang kaya akan warisan budaya agraris dan maritim.</p>', 1, '2025-02-11 03:21:45', '2025-04-27 11:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `situses`
--

CREATE TABLE `situses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `nm_desa` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `situses`
--

INSERT INTO `situses` (`id`, `logo`, `nm_desa`, `kecamatan`, `kabupaten`, `provinsi`, `kode_pos`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-logo/DESA KRAGILAN.png', 'Desa Simade', 'Sindang', 'Indaramayu', 'Jawa Barat', 898989, 1, '2025-02-11 03:21:45', '2025-04-27 08:51:28');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `img_slider` varchar(255) DEFAULT NULL,
  `link_btn` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `judul`, `deskripsi`, `img_slider`, `link_btn`, `created_at`, `updated_at`) VALUES
(1, 'Website Desa', 'Indramayu adalah kabupaten di Provinsi Jawa Barat yang terletak di pesisir utara Pulau Jawa (Pantura). Dikenal sebagai “Kota Mangga” karena produksi mangga berkualitas tinggi, wilayah ini juga menjadi sentra pertanian, perikanan, dan penghasil migas.', 'img-slider//682ad898a20ca.jpg', '#', '2025-02-11 03:21:45', '2025-05-19 07:07:04'),
(2, 'Sejarah Desa', 'Nama Indramayu berasal dari legenda Ki Gede Bangsawati, seorang pemimpin dari Kerajaan Demak yang diutus ke wilayah ini pada abad ke-16. Kisahnya tercatat dalam Babad Dermayu:\r\n\r\n\"Indra\" = Nama putri Ki Gede (Nyi Endang Darma)\r\n\r\n\"Maya\" = Ilusi/kemakmuran\r\n\r\n\"Darma Ayu\" = Tugas mulia (menyuburkan wilayah)\r\nGabungan kata ini kemudian menjadi \"Indramayu\", yang juga dikenal dengan nama \"Dermayu\" dalam literasi kuno.', 'img-slider//67aacc68000d2.png', '#', '2025-02-11 03:21:45', '2025-04-27 10:51:53'),
(3, 'Visi & Misi', '\"Terwujudnya Desa KN yang Bersih, Religius, Sejahtera, Rapi, dan Indah (BERSERI) Berbasis Gotong Royong dan Kearifan Lokal\"', 'img-slider//67aaca21bd8df.jpeg', '#', '2025-02-11 03:21:45', '2025-04-27 10:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `umkms`
--

CREATE TABLE `umkms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL,
  `produk` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `deskripsi` text NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `umkms`
--

INSERT INTO `umkms` (`id`, `foto`, `produk`, `slug`, `harga`, `deskripsi`, `no_hp`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-produk/67aae72a74e39.jpeg', 'Kerajinan Rajut Eceng Gondok', 'kerajinan-rajut-eceng-gondok', 150000, '<p>KERANJANG MINI ENCENG GONDOK DIMENSI 30X28X10 CM ( UKURAN PAKET )<br>DETAIL SIZE PRODUK : 30X18X10 CM<br>dikarenakan produk merupakan handmade wajar bila ada selisih dengan size yg tertera dideskripsi.<br><br>LANGSUNG PENGRAJIN , BELI DI MALL PASTI 100 LEBIH<br><br>LANGUNS AJA SIS.<br><br>NOTE : SUPAYA TIDAK RUSAK KAMI MENYEDIAKAN KARDUS BERBAYAR HANYA 500 RUPIAH , SILAHKAN CHECK OUT DI ETALASE<br><br>#ENCENGGONDOK #STORAGE #KERANJANGANYAMAN #SEAGRASS</p>', '81212121212', 1, '2025-02-11 05:59:06', '2025-02-11 05:59:06'),
(2, 'img-produk/67aae9ee8b60f.png', 'Pisang Bolen', 'pisang-bolen', 30000, '<p>Perpaduan pisang yang dibalut dengan kulit pastry yang renyah ini jadi camilan khas Bandung. Saat dimakan, kombinasi lembutnya pisang, manis gurihnya cokelat dan keju yang jadi isian rasa dan renyahnya pastry menjadikan camilan ini oleh-oleh khas yang wajib untuk dibeli.</p><p>Kamu bisa mendapatkan pisang bolen ini di Kartika Sari yang sudah memiliki 8 cabang. Gerai pertamanya berada di Jl. Haji Akbar, No. 4 Kebon Kawung yang lokasinya tidak jauh dari Stasiun Bandung. Di sini, pisang bolen disajikan dalam berbagai pilihan rasa, mulai dari Cokelat Keju, Durian Keju, Kacang Hijau, Peuyeum Keju, dan Keju Spesial.</p>', '89502040585', 1, '2025-02-11 06:10:54', '2025-04-27 16:33:53'),
(3, 'img-produk/67aaeaf668166.jpeg', 'Dorokdokcu, Banjaran', 'dorokdokcu-banjaran', 15000, '<p>Dorokdok Pedas Jeruk Brand: Dorokdokcu Rasa: Pedas daun jeruk Netto: 50gr Harga: Rp 10.000 Terbuat dari 100% kulit sapi . Ini enak banget rasanya pedes asin gurih plus ada sedikit rasa khas daun jeruknya, sobi micin dijamin nagih!!</p>', '89502040585', 1, '2025-02-11 06:15:18', '2025-04-27 16:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `foto`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'img-profil/user-1.jpg', 'admin', 'admin@gmail.com', NULL, '$2y$10$y524SMmxYHjWaYnq9OmZvOyo9tMISdjVPs72wj9ngvruf3sj7D0S2', NULL, '2025-02-11 03:21:45', '2025-02-11 07:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `video_profils`
--

CREATE TABLE `video_profils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url_video` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_profils`
--

INSERT INTO `video_profils` (`id`, `url_video`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/embed/DpSaBP4mEyE?si=oXGfKsV0UMRNUSeW\"', 1, '2025-02-11 03:21:45', '2025-05-19 07:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `visi_misis`
--

CREATE TABLE `visi_misis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visi_misis`
--

INSERT INTO `visi_misis` (`id`, `visi`, `misi`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Terwujudnya Desa Simade yang sejahtera, mandiri, dan berbudaya', '- Meningkatkan perekonomian masyarakat melalui pengembangan potensi pertanian, perkebunan, dan pariwisata\r\n                            - Meningkatkan kualitas sumber daya manusia melalui pendidikan dan kesehatan\r\n                            - Meningkatkan kesadaran masyarakat akan pentingnya kelestarian lingkungan', 1, '2025-02-11 03:21:45', '2025-04-27 08:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `wilayahs`
--

CREATE TABLE `wilayahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wilayahs`
--

INSERT INTO `wilayahs` (`id`, `judul`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Wilayah Desa Simade', '<p>indramayu</p>', 1, '2025-02-11 03:21:45', '2025-05-19 07:12:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggarans`
--
ALTER TABLE `anggarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `announcements_slug_unique` (`slug`);

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_slug_unique` (`slug`);

--
-- Indexes for table `bumdes`
--
ALTER TABLE `bumdes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bumdes_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontaks`
--
ALTER TABLE `kontaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pekerjaans`
--
ALTER TABLE `pekerjaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perangkat_desas`
--
ALTER TABLE `perangkat_desas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesanan_bumdes`
--
ALTER TABLE `pesanan_bumdes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pesanan_bumdes_bumdes_id_foreign` (`bumdes_id`);

--
-- Indexes for table `petas`
--
ALTER TABLE `petas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_statuses`
--
ALTER TABLE `post_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sejarahs`
--
ALTER TABLE `sejarahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `situses`
--
ALTER TABLE `situses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umkms`
--
ALTER TABLE `umkms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_profils`
--
ALTER TABLE `video_profils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visi_misis`
--
ALTER TABLE `visi_misis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wilayahs`
--
ALTER TABLE `wilayahs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anggarans`
--
ALTER TABLE `anggarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bumdes`
--
ALTER TABLE `bumdes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kontaks`
--
ALTER TABLE `kontaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pekerjaans`
--
ALTER TABLE `pekerjaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perangkat_desas`
--
ALTER TABLE `perangkat_desas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan_bumdes`
--
ALTER TABLE `pesanan_bumdes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petas`
--
ALTER TABLE `petas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_statuses`
--
ALTER TABLE `post_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sejarahs`
--
ALTER TABLE `sejarahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `situses`
--
ALTER TABLE `situses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `umkms`
--
ALTER TABLE `umkms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_profils`
--
ALTER TABLE `video_profils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visi_misis`
--
ALTER TABLE `visi_misis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wilayahs`
--
ALTER TABLE `wilayahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesanan_bumdes`
--
ALTER TABLE `pesanan_bumdes`
  ADD CONSTRAINT `pesanan_bumdes_bumdes_id_foreign` FOREIGN KEY (`bumdes_id`) REFERENCES `bumdes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
