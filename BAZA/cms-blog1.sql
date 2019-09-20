-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2019 at 08:57 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'News', '2019-08-29 19:53:07', '2019-08-29 19:53:07'),
(2, 'Marketing', '2019-08-29 19:53:07', '2019-08-29 19:53:07'),
(3, 'Partnerships', '2019-08-29 19:53:07', '2019-08-29 19:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_23_141708_create_posts_table', 1),
(4, '2019_08_23_141744_create_categories_table', 1),
(5, '2019_08_25_140913_add_soft_deletes_to_posts_table', 1),
(6, '2019_08_26_133830_create_tags_table', 1),
(7, '2019_08_26_141454_create_post_tag_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `image`, `user_id`, `category_id`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'We relocated our office to a new designed garage', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. \r\n                              Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \r\n                              when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<div><strong><br>The standard Lorem Ipsum passage, used since the 1500s<br></strong><br></div><div>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"<br><br></div>', 'posts/6.jpg', 2, 1, NULL, '2019-08-29 19:53:07', '2019-08-29 22:39:48', '2019-08-29 22:39:48'),
(2, 'Best practices for minimalist design with example', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. \r\n                              Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \r\n                              when an unknown printer took a galley of type and scrambled it to make a type specimen book. \r\n                         .', '<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</div>', 'posts/7.jpg', 2, 1, '2019-08-22 10:00:00', '2019-08-29 19:53:07', '2019-08-29 23:02:11', NULL),
(3, 'New published books to read by a product designer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. \r\n                              Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \r\n                              when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</div>', 'posts/8.jpg', 2, 2, '2019-08-07 10:00:00', '2019-08-29 19:53:07', '2019-08-29 23:03:03', NULL),
(4, 'This is why it\'s time to ditch dress codes at work', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. \r\n                              Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \r\n                              when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<div>knknk</div>', 'posts/6.jpg', 3, 1, '2019-08-13 10:00:00', '2019-08-29 19:53:07', '2019-08-29 23:04:16', NULL),
(5, 'Top 5 brilliant content marketing strategies', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. \r\n                              Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \r\n                              when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</div>', 'posts/7.jpg', 3, 2, '2019-08-08 10:00:00', '2019-08-29 19:53:07', '2019-08-29 23:03:14', NULL),
(6, 'Congratulate and thank to Maryam for joining our team', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. \r\n                              Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \r\n                              when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry.&nbsp;</div>', 'posts/6.jpg', 3, 3, '2019-08-06 10:00:00', '2019-08-29 19:53:07', '2019-08-29 23:03:34', NULL),
(7, 'Laravel', 'Ovo je laravel', '<div>Laravel laravel</div>', 'posts/UhGrUPqunlBQzTSprjUpMLzSVQKtli2B1EzFRmJQ.jpeg', 2, 1, '2019-08-15 10:00:00', '2019-08-29 22:42:18', '2019-08-29 22:42:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 3, 1, NULL, NULL),
(6, 3, 3, NULL, NULL),
(7, 7, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'job', '2019-08-29 19:53:07', '2019-08-29 19:53:07'),
(2, 'customize', '2019-08-29 19:53:07', '2019-08-29 19:53:07'),
(3, 'record', '2019-08-29 19:53:07', '2019-08-29 19:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('writer','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'writer',
  `about` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `about`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aco', 'aco-djukic@hotmail.com', 'admin', NULL, NULL, '$2y$10$IsLtRgb.KDxxW4Xr4U3rL.fxo9/IJTx6urd3EnY8RP.QHn8n5tPsG', NULL, '2019-08-29 19:53:07', '2019-08-29 19:53:07'),
(2, 'Aleksandar', 'djukicaleks91@gmail.com', 'writer', NULL, NULL, '$2y$10$D3Wn8aWjipDzdNoid5xPZOPgo7w359ryUnzE/09UliomXsJshppMq', NULL, '2019-08-29 19:53:07', '2019-08-29 19:53:07'),
(3, 'Marko', 'markoo@gmail.com', 'writer', NULL, NULL, '$2y$10$Kt1.JUUew7IOSO38jEgsIuT.9r9wNI4M7D0RB8mNn4AsjucHi823G', NULL, '2019-08-29 19:53:07', '2019-08-29 19:53:07'),
(4, 'Marko', 'mark@gmail.com', 'admin', NULL, NULL, '$2y$10$zDjMdfbb2NJEnR5h92b7puBE95.ShYjjzdT4RHwbWLr0XO/UfI05e', NULL, '2019-08-30 16:50:18', '2019-08-30 16:50:18'),
(5, 'Aleksandar Djukic', 'baka@gmail.com', 'writer', NULL, NULL, '$2y$10$N8dK/5SeKMkgvhMaQ06Bku7a7R2vrRM.y5oMC6xMOb5sWe7s0z69u', NULL, '2019-09-06 10:46:48', '2019-09-06 10:46:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
