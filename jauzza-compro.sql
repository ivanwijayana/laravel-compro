-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 02:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jauzza-compro`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `image`, `description`, `visi`, `misi`, `created_at`, `updated_at`) VALUES
(1, '1_1704467813.png', '<div>CV Jauzza adalah sebuah startup yang berfokus pada pengembangan solusi teknologi inovatif untuk mempermudah dan meningkatkan efisiensi dalam berbagai aspek kehidupan sehari-hari. Dengan kombinasi keahlian dalam teknologi dan kreativitas, CV Jauzza berkomitmen untuk menciptakan produk dan layanan yang memberikan nilai tambah bagi penggunanya.</div>', '<div>Visi CV Jauzza adalah menjadi pemimpin dalam memberikan solusi teknologi terdepan yang mendorong transformasi positif dalam berbagai sektor. Kami bercita-cita untuk menciptakan dunia yang lebih terkoneksi, efisien, dan inovatif melalui produk-produk unggulan kami.</div>', '<ol><li><strong>Inovasi Berkelanjutan:</strong> Terus mendorong inovasi dalam pengembangan teknologi untuk menciptakan produk-produk yang relevan dan berdaya saing.</li><li><strong>Pemecahan Masalah:</strong> Menyediakan solusi praktis dan efektif untuk mengatasi tantangan nyata yang dihadapi oleh masyarakat dan bisnis.</li><li><strong>Kepuasan Pelanggan:</strong> Memastikan kepuasan pelanggan dengan menyediakan produk dan layanan yang berkualitas tinggi, handal, dan mudah digunakan.</li><li><strong>Keberlanjutan Lingkungan:</strong> Bertanggung jawab terhadap lingkungan dengan mengintegrasikan praktik bisnis yang ramah lingkungan dalam setiap aspek operasional.</li><li><strong>Kemitraan Strategis:</strong> Membangun kemitraan yang kuat dengan pelanggan, mitra bisnis, dan komunitas untuk mencapai pertumbuhan bersama.</li><li><strong>Pengembangan Sumber Daya Manusia:</strong> Memberdayakan tim dengan pengembangan keterampilan terus-menerus dan menciptakan lingkungan kerja yang mendukung inovasi dan kolaborasi.</li></ol><div><br></div>', NULL, '2024-01-05 09:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `alasan`
--

CREATE TABLE `alasan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alasan`
--

INSERT INTO `alasan` (`id`, `image`, `title`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1_1704436559.png', 'Solusi Tepat untuk Bisnis Anda', 'Tim ahli kami memiliki dedikasi untuk memberikan hasil terbaik dengan memastikan keamanan data yang tak tertandingi, layanan pemeliharaan berkala, dan dukungan 24/7 untuk menjawab setiap tantangan yang muncul. Kami juga menawarkan analisis data mendalam untuk mendukung pengambilan keputusan strategis yang lebih cerdas. Memilih [Nama Software House] berarti memilih pengalaman, keahlian, dan solusi yang terbukti membawa kesuksesan. Untuk Anda, kami menyediakan tawaran istimewa berupa [diskon khusus/paket lengkap/fitur tambahan] dan konsultasi gratis. Jangan lewatkan peluang untuk memajukan bisnis Anda! Hubungi kami hari ini di [Nomor Telepon/Alamat Email] dan temukan bagaimana [Nama Software House] dapat membawa inovasi ke bisnis Anda.', 1, '2024-01-04 23:35:59', '2024-01-04 23:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`, `category_id`) VALUES
(2, '1_1704494847.png', 'Pentingnya Quality Assurance dalam Pengembangan Perangkat Lunak', '<div>Pengembangan perangkat lunak adalah proses kompleks yang melibatkan berbagai tahap, mulai dari perencanaan hingga peluncuran produk akhir. Dalam setiap tahap tersebut, kualitas perangkat lunak menjadi faktor krusial yang mempengaruhi keberhasilan proyek. Di sinilah Quality Assurance (QA) memainkan peran pentingnya. QA bukan hanya sekadar langkah terakhir sebelum peluncuran, melainkan suatu pendekatan sistematis untuk memastikan bahwa setiap tahap pengembangan memenuhi standar kualitas tertentu. Berikut adalah beberapa alasan mengapa QA sangat penting dalam pengembangan perangkat lunak:</div><div><strong><br>1. Meningkatkan Kepuasan Pelanggan</strong></div><div>Kualitas perangkat lunak yang tinggi akan membawa dampak positif pada kepuasan pelanggan. Produk yang berfungsi dengan baik, bebas dari bug, dan responsif terhadap kebutuhan pengguna akan meningkatkan citra perusahaan dan membangun kepercayaan pelanggan.</div><div><strong><br>2. Mengurangi Biaya Perbaikan</strong></div><div>Jika bug atau masalah ditemukan setelah peluncuran produk, biaya untuk perbaikan dan pemeliharaan dapat meningkat secara signifikan. QA membantu mengidentifikasi dan memperbaiki masalah sejak awal, mengurangi risiko bug muncul di tahap lanjutan, dan pada akhirnya, menghemat biaya perbaikan.</div><div><strong><br>3. Menjamin Keamanan Sistem</strong></div><div>Keamanan perangkat lunak menjadi perhatian utama, terutama di tengah meningkatnya ancaman siber. QA memastikan bahwa sistem memiliki tingkat keamanan yang tinggi dengan melakukan uji penetrasi dan analisis keamanan secara menyeluruh.</div><div><strong><br>4. Meningkatkan Produktivitas Tim Pengembang</strong></div><div>QA membantu mengidentifikasi dan meminimalkan hambatan serta kendala selama proses pengembangan. Dengan demikian, tim pengembang dapat fokus pada peningkatan fitur dan fungsionalitas tanpa terganggu oleh bug atau masalah teknis lainnya.</div><div><strong><br>5. Menjaga Reputasi Perusahaan</strong></div><div>Ketika perangkat lunak yang diluncurkan memiliki kualitas yang buruk, reputasi perusahaan bisa tercoreng. QA membantu menjaga reputasi perusahaan dengan memastikan bahwa produk yang dihasilkan memiliki kualitas terbaik dan memenuhi ekspektasi pengguna.</div><div><strong><br>6. Memenuhi Standar dan Regulasi</strong></div><div>Berbagai industri memiliki standar dan regulasi tertentu yang harus dipenuhi. QA membantu memastikan bahwa perangkat lunak mematuhi semua standar dan regulasi yang berlaku, sehingga perusahaan tidak terkena sanksi atau masalah hukum.<br><br></div><div><strong><br>Kesimpulan</strong></div><div>Dengan adanya Quality Assurance, pengembangan perangkat lunak dapat dilakukan dengan lebih terstruktur dan terkontrol. Investasi dalam QA membawa manfaat jangka panjang, tidak hanya dalam hal kualitas produk, tetapi juga dalam meningkatkan kepercayaan pelanggan dan reputasi perusahaan. Oleh karena itu, memasukkan QA sebagai bagian integral dari siklus pengembangan perangkat lunak sangatlah penting.</div>', '2024-01-05 15:47:27', '2024-01-05 15:47:27', 2);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Technology', '2024-01-05 15:35:59', '2024-01-05 15:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `image`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1_1704436941.png', 'KEMENPORA', 1, '2024-01-04 23:42:21', '2024-01-04 23:42:21'),
(2, '1_1704436965.png', 'PEMDA Lombok Barat', 1, '2024-01-04 23:42:45', '2024-01-05 08:32:01'),
(3, '1_1704436980.png', 'Bintan Education', 1, '2024-01-04 23:43:00', '2024-01-04 23:43:00'),
(4, '1_1704436995.png', 'UNRAM', 1, '2024-01-04 23:43:15', '2024-01-04 23:43:15'),
(5, '1_1704437008.png', 'KEMENPAREKRAF', 1, '2024-01-04 23:43:28', '2024-01-04 23:43:28');

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
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_detail` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `contact_detail`, `created_at`, `updated_at`) VALUES
(1, '<div>Sunan Gunung Djati State Islamic University Bandung<br>Jl. A.H. Nasution No.105, Cipadung Wetan, Kec. Cibiru, Kota Bandung, Jawa Barat 40614</div>', '2024-01-05 18:42:27', '2024-03-15 09:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `footer_link`
--

CREATE TABLE `footer_link` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` longtext NOT NULL,
  `footer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_link`
--

INSERT INTO `footer_link` (`id`, `image`, `title`, `link`, `footer_id`, `created_at`, `updated_at`) VALUES
(2, '1_1704508386.png', 'Instagram', 'https://instagram.com', 1, '2024-01-05 19:33:06', '2024-01-05 19:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `title`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1_1704437057.png', 'Bareng anak-anak', 1, '2024-01-04 23:44:17', '2024-01-04 23:44:17'),
(2, '1_1704437075.png', 'Brainstorm', 1, '2024-01-04 23:44:35', '2024-01-04 23:44:35'),
(3, '1_1704437100.png', 'Gantian Presentasi', 1, '2024-01-04 23:45:00', '2024-01-04 23:45:00'),
(4, '1_1704437121.png', 'UI/UX Designer', 1, '2024-01-04 23:45:21', '2024-01-04 23:45:21'),
(5, '1_1704437139.png', 'Masih UI/UX Designer', 1, '2024-01-04 23:45:39', '2024-01-04 23:45:39'),
(6, '1_1704437161.png', 'Lagi-lagi UI/UX', 1, '2024-01-04 23:46:01', '2024-01-04 23:46:01'),
(7, '1_1704437190.png', 'Ngoding Bray', 1, '2024-01-04 23:46:30', '2024-01-04 23:46:30'),
(8, '1_1704437210.png', 'Ngoding lagi bray', 1, '2024-01-04 23:46:50', '2024-01-04 23:46:50'),
(9, '1_1704437226.png', 'Dashboard', 1, '2024-01-04 23:47:06', '2024-01-04 23:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`id`, `image`, `title`, `subtitle`, `is_active`, `created_at`, `updated_at`) VALUES
(2, '1_1704472904.png', 'Perfeksionalitas Tanpa Batas', 'Kami Menyediakan Layanan Konsultasi IT,  Pembuatan Web, Aplikasi Mobile Dll.', 1, '2024-01-05 00:16:38', '2024-01-05 09:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id`, `image`, `title`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(4, '1_1704439727.png', 'Web Development', 'Melalui web development, kami siap menyediakan solusi tepat guna untuk bisnis anda.', 1, '2024-01-05 00:28:47', '2024-01-05 00:28:47'),
(5, '1_1704439755.png', 'UI/UX Design', 'Melalui UI/UX Design, kami siap menyediakan solusi tepat guna untuk bisnis anda.', 1, '2024-01-05 00:29:15', '2024-01-05 00:29:15'),
(6, '1_1704439840.png', 'Mobile Development', 'Melalui mobile development, kami siap menyediakan solusi tepat guna untuk bisnis anda.', 1, '2024-01-05 00:30:40', '2024-01-05 00:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alias_name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `alias_name`, `link`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'UIN Sunan Gunung Djati Bandung', 'https://www.google.com/maps/embed/v1/place?q=UIN+Sunan+Gunung+Djati+Bandung,+Jalan+A.H.+Nasution,+Cipadung+Wetan,+Bandung+City,+West+Java,+Indonesia&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8', 1, '2024-01-04 23:47:25', '2024-01-05 08:24:03');

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
(5, '2024_01_04_042947_create_heroes_table', 1),
(6, '2024_01_04_043521_create_alasans_table', 1),
(7, '2024_01_04_044045_create_layanans_table', 1),
(8, '2024_01_04_062010_create_clients_table', 1),
(9, '2024_01_04_062141_create_galleries_table', 1),
(10, '2024_01_04_062236_create_maps_table', 1),
(11, '2024_01_05_074121_create_abouts_table', 1),
(12, '2024_01_05_080004_create_trix_rich_texts_table', 1),
(13, '2024_01_05_093301_create_project_categories_table', 1),
(14, '2024_01_05_093311_create_projects_table', 1),
(15, '2024_01_05_222614_create_blog_categories_table', 1),
(16, '2024_01_05_222623_create_blogs_table', 1),
(17, '2024_01_06_012900_create_footers_table', 1),
(18, '2024_01_06_012906_create_footer_links_table', 1),
(20, '2024_03_15_172012_create_settings_table', 2);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`, `category_id`) VALUES
(1, '1_1704470015.png', 'Laracom-pro', '<div>A dynamic company profile</div>', '2024-01-05 08:53:36', '2024-01-05 09:39:49', 3);

-- --------------------------------------------------------

--
-- Table structure for table `project_category`
--

CREATE TABLE `project_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_category`
--

INSERT INTO `project_category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Web Programming', '2024-01-05 08:18:28', '2024-01-05 08:33:47'),
(4, 'Mobile Development', '2024-01-05 08:27:19', '2024-01-05 08:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_header` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `image_header`, `created_at`, `updated_at`) VALUES
(1, 'CV. Jauzza Noor', '1_1710524070.jpg', '2024-03-15 17:27:51', '2024-03-21 18:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `trix_attachments`
--

CREATE TABLE `trix_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `attachable_id` int(10) UNSIGNED DEFAULT NULL,
  `attachable_type` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `disk` varchar(255) NOT NULL,
  `is_pending` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trix_rich_texts`
--

CREATE TABLE `trix_rich_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@admin.com', NULL, '$2y$10$xy9xXqqYt7nXzaWPaSG0O.3zuerYC6p9jM6sSMULRvQpdKtsiDkSC', NULL, '2024-01-04 23:31:49', '2024-01-04 23:31:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alasan`
--
ALTER TABLE `alasan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_category_id_foreign` (`category_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_link`
--
ALTER TABLE `footer_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footer_link_footer_id_foreign` (`footer_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_category_id_foreign` (`category_id`);

--
-- Indexes for table `project_category`
--
ALTER TABLE `project_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trix_attachments`
--
ALTER TABLE `trix_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trix_rich_texts`
--
ALTER TABLE `trix_rich_texts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trix_rich_texts_model_type_model_id_index` (`model_type`,`model_id`);

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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alasan`
--
ALTER TABLE `alasan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_link`
--
ALTER TABLE `footer_link`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_category`
--
ALTER TABLE `project_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trix_attachments`
--
ALTER TABLE `trix_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trix_rich_texts`
--
ALTER TABLE `trix_rich_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`);

--
-- Constraints for table `footer_link`
--
ALTER TABLE `footer_link`
  ADD CONSTRAINT `footer_link_footer_id_foreign` FOREIGN KEY (`footer_id`) REFERENCES `footer` (`id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `project_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
