-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 07:55 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
ALTER DATABASE 'taz_db';
--

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `Fid` int(11) NOT NULL,
  `nrc` varchar(20) NOT NULL,
  `vz` varchar(20) NOT NULL,
  `name` char(40) NOT NULL,
  `merchant` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`Fid`, `nrc`, `vz`, `name`, `merchant`) VALUES
(1, '913338/71/1', 'vz4472', 'livingstone fruit farm', 'aot'),
(2, '914922/16/2', 'vz5142', 'mkumwanji farm ltd', 'aot'),
(3, '264151/43/1', 'vtbz21149', 'brian fishambo', 'aot'),
(4, '262449/76/1', 'vz2770', 'vergenoeg farm', 'tombwe'),
(5, '154652/71/1', 'vz2389', 'fairford', 'tombwe'),
(6, 'z12222896', 'vz5870', 'vixers farming', 'tombwe');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'farmer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'sysadmin@gmail.com', NULL, '$2y$10$CRodD/Z7R5/IAYGSHdQTEuW./F9ZIylxhtUuZlKDkLPXAgANpYJN6', NULL, '2020-07-14 03:19:13', '2020-07-14 03:19:13');

--
-- Indexes for dumped tables
--

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `FAid` int(11) NOT NULL,
  `sdate` date NOT NULL,
  `bftime` varchar(20) NOT NULL,
  `nrc` varchar(20) NOT NULL,
  `vz` varchar(20) NOT NULL,
  `name` char(40) NOT NULL,
  `virginia` int(20) NOT NULL,
  `station` int(10) NOT NULL,
  `reoffer` int(20) NOT NULL,
  `nofbales` int(20) NOT NULL,
  `grep` char(40) NOT NULL,
  `merchant` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`FAid`, `sdate`, `bftime`, `nrc`, `vz`, `name`, `virginia`, `station`, `reoffer`, `nofbales`, `grep`, `merchant`) VALUES
(4, '2020-06-10', '8am - 10am', '91338/71/1', 'vz4472', 'Livingstone Fruit Farm', 50, 0, 0, 50, 'cm', 'tombwe'),
(5, '2020-06-07', '8am - 10am', '914922/16/2', 'vz5142', 'Mkumwanji farm ltd', 50, 0, 20, 50, 'rk', 'aoz'),
(24, '2020-06-05', '', '913338/71/1', 'vz4472', 'livingstone fruit farm', 20, 0, 0, 20, '', 'tombwe'),
(25, '2020-06-05', '', '913338/71/1', 'vz4472', 'livingstone fruit farm', 20, 0, 0, 20, '', 'aot'),
(26, '2020-06-01', '', '913338/71/1', 'vz4472', 'livingstone fruit farm', 56, 0, 0, 56, '', 'aot'),
(27, '2020-06-05', '', '262449/76/1', 'vz2770', 'vergenoeg farm', 300, 0, 0, 300, '', 'tombwe');

-- --------------------------------------------------------

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`Fid`),
  ADD UNIQUE KEY `nrc` (`nrc`),
  ADD UNIQUE KEY `vz` (`vz`),
  ADD UNIQUE KEY `farmname` (`name`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `Fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
