-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 04:02 AM
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
-- Database: `vmas`
--

-- --------------------------------------------------------

--
-- Table structure for table `academy_classes`
--

CREATE TABLE `academy_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academy_classes`
--

INSERT INTO `academy_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'KG-I', '2024-02-26 17:43:10', '2024-02-26 17:43:13'),
(2, 'KG-II', '2024-02-26 17:43:15', '2024-02-26 17:43:16'),
(3, 'I', '2024-02-26 15:19:50', '2024-02-26 15:19:52'),
(4, 'II', '2024-02-26 15:19:53', '2024-02-26 15:19:55'),
(5, 'III', '2024-02-26 15:19:57', '2024-02-26 15:19:58'),
(6, 'IV', '2024-02-26 15:20:00', '2024-02-26 15:20:02'),
(7, 'V', '2024-02-26 15:20:03', '2024-02-26 15:20:06'),
(8, 'VI', '2024-02-26 15:20:08', '2024-02-26 15:20:09'),
(9, 'VII', '2024-02-26 15:20:11', '2024-02-26 15:20:12'),
(10, 'VIII', '2024-02-26 15:20:13', '2024-02-26 15:20:15'),
(11, 'IX', '2024-02-26 15:20:16', '2024-02-26 15:20:17'),
(12, 'X', '2024-02-26 15:20:18', '2024-02-26 15:20:21'),
(13, 'XI', '2024-02-26 15:20:23', '2024-02-26 15:20:20'),
(14, 'XII', '2024-02-26 15:20:25', '2024-02-26 15:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, '2024_02_25_131621_create_vehicles_table', 1),
(2, '2014_10_12_000000_create_users_table', 2),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(4, '2019_08_19_000000_create_failed_jobs_table', 2),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(6, '2024_02_24_061158_create_stopages_table', 2),
(7, '2024_02_25_231627_create_vehicle_stopages_table', 3),
(10, '2024_02_26_085353_create_academy_classes_table', 4),
(11, '2024_02_26_085418_create_sections_table', 4),
(12, '2024_02_26_085438_create_departments_table', 4),
(14, '2024_02_26_85439_create_students_table', 5);

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
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'A', '2024-02-26 15:19:34', '2024-02-26 15:19:37'),
(2, 'B', '2024-02-26 15:19:38', '2024-02-26 15:19:39'),
(3, 'C', '2024-02-26 15:19:41', '2024-02-26 15:19:42'),
(4, 'D', '2024-02-26 15:19:44', '2024-02-26 15:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `stopages`
--

CREATE TABLE `stopages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `fare` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stopages`
--

INSERT INTO `stopages` (`id`, `name`, `fare`, `created_at`, `updated_at`) VALUES
(2, 'Mr. Laverne Gerhold MD', 9361, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(3, 'Reginald Crist Sr.', 47886, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(4, 'Dr. Harry Kihn DVM', 52684, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(5, 'Orin Olson', 46454, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(6, 'Earline Steuber III', 2849, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(7, 'Prof. Jaleel Champlin Sr.', 18807, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(8, 'Charley Klein', 47490, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(9, 'Zena Strosin', 42179, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(10, 'Tristian Mueller', 48541, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(11, 'Retta Konopelski', 37203, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(12, 'Kristopher O\'Conner', 18905, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(13, 'Bella Morar', 20550, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(14, 'Misael Hammes', 12808, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(15, 'Prof. Jaeden Batz', 39761, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(16, 'Kareem Barton III', 17959, '2024-02-25 18:07:34', '2024-02-25 18:07:34'),
(17, 'Krystal Parisian', 98825, '2024-02-25 18:07:34', '2024-02-25 18:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academy_class_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `student_image` varchar(255) DEFAULT NULL,
  `student_id` varchar(255) NOT NULL,
  `roll` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone1` varchar(255) NOT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `gender` enum('male','female') NOT NULL,
  `dob` date NOT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `academy_class_id`, `section_id`, `student_image`, `student_id`, `roll`, `student_name`, `father_name`, `mother_name`, `address`, `phone1`, `phone2`, `gender`, `dob`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '8795', '12', 'Rhiannon Kelley', 'Kameko Stokes', 'Russell Peterson', 'Laboriosam voluptat', '+1 (478) 267-6809', '+1 (795) 633-9317', 'male', '1992-09-16', NULL, '2024-02-26 21:24:31', '2024-02-26 21:24:31'),
(2, 3, 2, NULL, '5487', '98', 'Justin Logan', 'Karly Mendoza', 'Benjamin Miranda', 'Obcaecati adipisci n', '+1 (345) 675-3082', '+1 (911) 798-9707', 'male', '2017-08-08', NULL, '2024-02-26 21:25:49', '2024-02-26 21:25:49'),
(3, 1, 1, NULL, '987', '123', 'Thor Guthrie', 'Miriam Clayton', 'Unity Hickman', 'Pariatur Proident', '+1 (947) 407-6717', '+1 (627) 889-5752', 'male', '1989-08-08', NULL, '2024-02-26 21:28:20', '2024-02-26 21:28:20'),
(4, 2, 1, 'public/images/V8l0yBvhIvF5mJpmC8dSE15aqFDRQGsxbHsIVF9I.jpg', '1234', '987', 'Kennedy Bullock', 'Barrett Horton', 'Gemma Aguirre', 'Ut maxime distinctio', '+1 (747) 348-7562', '+1 (809) 433-6586', 'male', '1972-06-08', NULL, '2024-02-26 21:31:46', '2024-02-26 21:31:46');

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
(1, 'Raktim', 'raktimbanerjee9@gmail.com', NULL, '$2y$12$FMnHO4TdTwrkWYrM2PfXy.FInjDhEnSXqgUwMXKf9likZsQdo34GK', NULL, '2024-02-25 08:42:49', '2024-02-25 08:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `registration_no` varchar(255) NOT NULL,
  `identity_no` varchar(255) NOT NULL,
  `engine_no` varchar(255) NOT NULL,
  `insurance_valid_upto` varchar(255) NOT NULL,
  `tax_valid_upto` varchar(255) NOT NULL,
  `fitness_valid_upto` varchar(255) NOT NULL,
  `pollution_valid_upto` varchar(255) NOT NULL,
  `permit_valid_upto` varchar(255) NOT NULL,
  `driver_name` varchar(255) NOT NULL,
  `driver_phone` varchar(255) NOT NULL,
  `helper_name` varchar(255) NOT NULL,
  `helper_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `registration_no`, `identity_no`, `engine_no`, `insurance_valid_upto`, `tax_valid_upto`, `fitness_valid_upto`, `pollution_valid_upto`, `permit_valid_upto`, `driver_name`, `driver_phone`, `helper_name`, `helper_phone`, `created_at`, `updated_at`) VALUES
(1, 'WB-7623823', 'ID-1', 'Qui aliquip non dese', '1992-03-08', '2019-04-08', '1992-11-18', '2010-12-11', '1985-06-08', 'Julie Wise', '+1 (675) 532-2781', 'Bruce Hatfield', '+1 (506) 715-1164', '2024-02-25 17:34:26', '2024-02-25 17:38:53'),
(2, 'WB-724333', 'ID-2', 'Qui aliquip non dese', '1992-03-08', '2019-04-08', '1992-11-18', '2010-12-11', '1985-06-08', 'Julie Wise', '+1 (675) 532-2781', 'Bruce Hatfield', '+1 (506) 715-1164', '2024-02-25 17:34:26', '2024-02-25 17:38:53'),
(4, 'WB-587506', 'ID-3', 'Qui aliquip non dese', '1992-03-08', '2019-04-08', '1992-11-18', '2010-12-11', '1985-06-08', 'Julie Wise', '+1 (675) 532-2781', 'Bruce Hatfield', '+1 (506) 715-1164', '2024-02-25 17:34:26', '2024-02-25 17:38:53'),
(5, 'WB-654577', 'ID-4', 'Qui aliquip non dese', '1992-03-08', '2019-04-08', '1992-11-18', '2010-12-11', '1985-06-08', 'Julie Wise', '+1 (675) 532-2781', 'Bruce Hatfield', '+1 (506) 715-1164', '2024-02-25 17:34:26', '2024-02-25 17:38:53'),
(6, 'WB-588422', 'ID-5', 'Qui aliquip non dese', '1992-03-08', '2019-04-08', '1992-11-18', '2010-12-11', '1985-06-08', 'Julie Wise', '+1 (675) 532-2781', 'Bruce Hatfield', '+1 (506) 715-1164', '2024-02-25 17:34:26', '2024-02-25 17:38:53'),
(7, 'WB-325412', 'ID-6', 'Qui aliquip non dese', '1992-03-08', '2019-04-08', '1992-11-18', '2010-12-11', '1985-06-08', 'Julie Wise', '+1 (675) 532-2781', 'Bruce Hatfield', '+1 (506) 715-1164', '2024-02-25 17:34:26', '2024-02-25 17:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_stopages`
--

CREATE TABLE `vehicle_stopages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `stopage_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_stopages`
--

INSERT INTO `vehicle_stopages` (`id`, `vehicle_id`, `stopage_id`, `created_at`, `updated_at`) VALUES
(9, 1, 3, '2024-02-25 23:30:16', '2024-02-25 23:30:16'),
(10, 1, 11, '2024-02-25 23:30:28', '2024-02-25 23:30:28'),
(11, 1, 14, '2024-02-25 23:30:28', '2024-02-25 23:30:28'),
(12, 1, 3, '2024-02-26 03:13:54', '2024-02-26 03:13:54'),
(13, 1, 11, '2024-02-26 03:13:54', '2024-02-26 03:13:54'),
(14, 1, 14, '2024-02-26 03:13:54', '2024-02-26 03:13:54'),
(15, 1, 2, '2024-02-26 03:14:06', '2024-02-26 03:14:06'),
(16, 1, 3, '2024-02-26 03:14:06', '2024-02-26 03:14:06'),
(17, 1, 11, '2024-02-26 03:14:06', '2024-02-26 03:14:06'),
(18, 1, 14, '2024-02-26 03:14:06', '2024-02-26 03:14:06'),
(19, 2, 2, '2024-02-26 03:17:43', '2024-02-26 03:17:43'),
(20, 2, 3, '2024-02-26 03:17:43', '2024-02-26 03:17:43'),
(21, 2, 4, '2024-02-26 03:17:43', '2024-02-26 03:17:43'),
(22, 2, 5, '2024-02-26 03:17:43', '2024-02-26 03:17:43'),
(23, 2, 6, '2024-02-26 03:17:43', '2024-02-26 03:17:43'),
(24, 2, 7, '2024-02-26 03:17:43', '2024-02-26 03:17:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academy_classes`
--
ALTER TABLE `academy_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stopages`
--
ALTER TABLE `stopages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_student_id_unique` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_stopages`
--
ALTER TABLE `vehicle_stopages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academy_classes`
--
ALTER TABLE `academy_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stopages`
--
ALTER TABLE `stopages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vehicle_stopages`
--
ALTER TABLE `vehicle_stopages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
