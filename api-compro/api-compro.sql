-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 05:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api-compro`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_box` enum('First On Field','Easy To Reach','Worldwide Services','24/7 Support') NOT NULL,
  `description` varchar(255) NOT NULL,
  `description_box` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `title_box`, `description`, `description_box`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Trusted By Worldwide Clients Since 1980', 'First On Field', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'C:\\xampp\\tmp\\phpE932.tmp', '2024-01-22 20:08:15', '2024-01-22 20:08:15'),
(2, 'Trusted By Worldwide Clients Since 1980', 'Easy To Reach', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'C:\\xampp\\tmp\\php40E9.tmp', '2024-01-22 20:08:37', '2024-01-22 20:08:37'),
(3, 'Trusted By Worldwide Clients Since 1980', 'Worldwide Services', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'C:\\xampp\\tmp\\php5116.tmp', '2024-01-22 20:08:41', '2024-01-22 20:08:41'),
(4, 'Trusted By Worldwide Clients Since 1980', '24/7 Support', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'C:\\xampp\\tmp\\phpDAC9.tmp', '2024-01-22 20:09:16', '2024-01-22 20:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `addres` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `title`, `description`, `image`, `addres`, `telp`, `created_at`, `updated_at`) VALUES
(1, 'GET IN TOUCH', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'C:\\xampp\\tmp\\phpD677.tmp', 'JL. Lawanggintung, JL. Sekip Paspampres Depan Puskesmas RT.01/RW.01,Kec.Bogor Selatan', '081296263367', '2024-01-22 21:48:39', '2024-01-22 21:48:39');

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
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `navbar` enum('Home','Portfolio','About Us','FAQ','Contact Us','Services','Testimonials') NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `navbar`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Home', 'Providing The Best Technology & Creativity Solutions', 'Lorem Ipsum', 'C:\\xampp\\tmp\\phpB89B.tmp', '2024-01-22 07:38:45', '2024-01-22 07:38:45'),
(6, 'Home', 'Providing The Best Technology & Creativity Solutions', 'Lorem Ipsum', 'C:\\xampp\\tmp\\phpE1EA.tmp', '2024-01-22 15:47:10', '2024-01-22 15:47:10'),
(7, 'Portfolio', 'Providing The Best Technology & Creativity Solutions', 'Lorem Ipsum', 'C:\\xampp\\tmp\\php863B.tmp', '2024-01-22 15:47:52', '2024-01-22 15:47:52'),
(8, 'About Us', 'Providing The Best Technology & Creativity Solutions', 'Lorem Ipsum', 'C:\\xampp\\tmp\\phpB194.tmp', '2024-01-22 15:48:03', '2024-01-22 15:48:03'),
(12, 'FAQ', 'Providing The Best Technology & Creativity Solutions', 'Lorem Ipsum', 'C:\\xampp\\tmp\\php571F.tmp', '2024-01-22 16:34:38', '2024-01-22 16:34:38'),
(13, 'Contact Us', 'Providing The Best Technology & Creativity Solutions', 'Lorem Ipsum', 'C:\\xampp\\tmp\\phpDD97.tmp', '2024-01-22 16:35:12', '2024-01-22 16:35:12'),
(14, 'Services', 'Providing The Best Technology & Creativity Solutions', 'Lorem Ipsum', 'C:\\xampp\\tmp\\phpE20.tmp', '2024-01-22 16:35:24', '2024-01-22 16:35:24'),
(15, 'Testimonials', 'Providing The Best Technology & Creativity Solutions', 'Lorem Ipsum', 'C:\\xampp\\tmp\\php5D7C.tmp', '2024-01-22 16:35:45', '2024-01-22 16:35:45');

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
(1, '2024_01_22_092949_create_homes_table', 1),
(2, '2014_10_12_000000_create_users_table', 2),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(4, '2019_08_19_000000_create_failed_jobs_table', 2),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(6, '2024_01_22_092948_create_homes_table', 3),
(7, '2024_01_23_015716_create_services_table', 4),
(8, '2024_01_23_025208_create_about_us_table', 5),
(9, '2024_01_23_031254_create_portfolios_table', 6),
(10, '2024_01_23_034937_create_testimonials_table', 7),
(11, '2024_01_23_042004_create_contact_us_table', 8);

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
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(4, 'A nice and comfortable place for an amployee', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'C:\\xampp\\tmp\\phpC9C7.tmp', '2024-01-22 20:47:26', '2024-01-22 20:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_box` enum('Web Development','Digital Marketing','Apps Development') NOT NULL,
  `description` varchar(255) NOT NULL,
  `description_box` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `title_box`, `description`, `description_box`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Service We Offer', 'Web Development', 'Lorem Ipsum', 'Lorem Ipsum', 'C:\\xampp\\tmp\\phpA062.tmp', '2024-01-22 19:41:43', '2024-01-22 19:41:43'),
(2, 'Service We Offer', 'Digital Marketing', 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'C:\\xampp\\tmp\\php3327.tmp', '2024-01-22 19:44:32', '2024-01-22 19:44:32'),
(3, 'Service We Offer', 'Apps Development', 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'C:\\xampp\\tmp\\php6046.tmp', '2024-01-22 19:44:43', '2024-01-22 19:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_box` enum('KEEP TRACK OF THE HOTTEST NPTS','NO EXTRA CHARGES, LESS ROYALITIES') NOT NULL,
  `description` varchar(255) NOT NULL,
  `description_box` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `title`, `title_box`, `description`, `description_box`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'KEEP TRACK OF THE HOTTEST NPTS', 'A nice and comfortable place for an amployee', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'C:\\xampp\\tmp\\phpE3EB.tmp', '2024-01-22 21:15:57', '2024-01-22 21:15:57'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'NO EXTRA CHARGES, LESS ROYALITIES', 'A nice and comfortable place for an amployee', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'C:\\xampp\\tmp\\php4604.tmp', '2024-01-22 21:16:21', '2024-01-22 21:16:21');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
