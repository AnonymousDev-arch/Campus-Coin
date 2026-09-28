-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 28, 2026 at 10:45 AM
-- Server version: 8.3.0
-- PHP Version: 8.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campuscoin`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowance` decimal(12,2) NOT NULL DEFAULT '0.00',
  `savings_goal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `font_scale` decimal(3,2) NOT NULL DEFAULT '1.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `gender`, `academic_year`, `allowance`, `savings_goal`, `is_admin`, `is_disabled`, `theme`, `font_scale`) VALUES
(1, 'John Doe', 'user@example.com', NULL, '$2y$12$xgPGPVdvPA74FyIZmIDX2.H5uXlyvHOFyZEBY4G3jENt0doF9QkgK', NULL, '2026-09-28 04:00:24', '2026-09-28 04:00:38', '0123456789', 'Male', '1st Yr', 19000.00, 6500.00, 0, 0, 'dark', 1.00),
(2, 'Yousuf bhai', 'yousyf123@gmail.com', NULL, '$2y$12$sx4spq5vyESm/Fju6gD.au/4A60u1wihuyAoo5yu0x5w2s.8RpAtS', NULL, '2026-09-28 04:33:50', '2026-09-28 04:41:07', '032378679', 'Male', '2nd year', 30000.00, 5000.00, 0, 0, 'dark', 1.00),
(3, 'Admin', 'admin@campuscoin.edu', NULL, '$2y$12$SLcKojikzo2hGJ8UNMGU4Ohup8odOp6rYxVR3Vq0mSHAGKsf/EIK2', NULL, '2026-09-28 04:46:01', '2026-09-28 04:48:24', NULL, NULL, NULL, 0.00, 0.00, 1, 0, 'dark', 1.00),
(4, 'Saad Ameen', 'saadameen700@gmail.com', NULL, '$2y$12$C9M8.d5v/I40IM9ZDl0iI.U8yh7E9.m6V9g2ZAy4qMJQwVl3EhLBK', NULL, '2026-09-28 05:03:46', '2026-09-28 05:03:55', '03022283041', 'Male', '2nd year', 50000.00, 10000.00, 0, 0, 'dark', 1.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
