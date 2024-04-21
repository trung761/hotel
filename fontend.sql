-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2024 at 04:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tim_phong_tro_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT 0,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anhdaidien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten`, `slug`, `tieude`, `mota`, `trangthai`, `created_at`, `updated_at`) VALUES
(21, 'Cho thuê phòng trọ', 'cho-thue-phong-tro', NULL, 'Cho thuê phòng trọ', 1, '2023-05-31 14:30:17', '2023-06-09 04:06:42'),
(22, 'Nhà cho thuê', 'nha-cho-thue', NULL, 'Nhà cho thuê', 1, '2023-05-31 14:30:48', '2023-06-09 04:06:38'),
(23, 'Cho thuê mặt bằng', 'cho-thue-mat-bang', NULL, 'Cho thuê mặt bằng', 1, '2023-05-31 14:33:12', '2023-06-09 04:06:35'),
(24, 'Ở ghép', 'o-ghep', NULL, 'Ở ghép', 1, '2023-05-31 15:21:38', '2023-06-11 01:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `diachi`
--

CREATE TABLE `diachi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anhdaidien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `hot` tinyint(4) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `loai` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là quận huyện, 2 là phường xã',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diachi`
--

INSERT INTO `diachi` (`id`, `ten`, `slug`, `tieude`, `mota`, `anhdaidien`, `trangthai`, `hot`, `parent_id`, `loai`, `created_at`, `updated_at`) VALUES
(105, 'Bình Thuỷ', 'binh-thuy', NULL, NULL, '2024-03-30__binhthuy.jpg', 1, 1, 0, 1, '2024-02-25 14:29:43', '2024-03-30 14:30:11'),
(106, 'An Thới', 'an-thoi', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 14:30:53', '2024-02-25 14:30:53'),
(107, 'Cái Răng', 'cai-rang', NULL, NULL, '2024-03-30__cairang.webp', 1, 1, 0, 1, '2024-02-25 14:31:23', '2024-03-30 14:29:52'),
(108, 'Ba Láng', 'ba-lang', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 14:31:32', '2024-02-25 14:31:33'),
(109, 'Hưng Phú', 'hung-phu', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 14:32:16', '2024-02-25 14:32:16'),
(110, 'Ninh Kiều', 'ninh-kieu', NULL, NULL, '2024-03-30__ninhkieu.jpg', 1, 1, 0, 1, '2024-02-25 14:32:24', '2024-03-30 14:29:38'),
(111, 'An Bình', 'an-binh', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 14:32:38', '2024-02-25 14:33:16'),
(112, 'Hưng Lợi', 'hung-loi', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 14:32:49', '2024-02-25 14:32:49'),
(113, 'Ô Môn', 'o-mon', NULL, NULL, NULL, 1, 0, 0, 1, '2024-02-25 15:50:08', '2024-02-25 15:50:08'),
(114, 'Châu Văn Liêm', 'chau-van-liem', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 15:50:20', '2024-02-25 15:50:20'),
(116, 'Thốt Nốt', 'thot-not', NULL, NULL, NULL, 1, 0, 0, 1, '2024-02-25 16:45:22', '2024-02-25 16:45:22'),
(117, 'Bùi Hữu Nghĩa', 'bui-huu-nghia', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:45:46', '2024-02-25 16:45:46'),
(118, 'Bình Tuỷ', 'binh-tuy', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:47:14', '2024-02-25 16:47:14'),
(119, 'Long Hoà', 'long-hoa', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:47:54', '2024-02-25 16:47:54'),
(120, 'Long Tuyền', 'long-tuyen', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:48:23', '2024-02-25 16:48:23'),
(121, 'Thới An Đông', 'thoi-an-dong', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:48:53', '2024-02-25 16:48:53'),
(122, 'Trà An', 'tra-an', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:54:51', '2024-02-25 16:54:51'),
(123, 'Trà Nóc', 'tra-noc', NULL, NULL, NULL, 1, 0, 105, 2, '2024-02-25 16:55:09', '2024-02-25 16:55:09'),
(127, 'Hưng Thạnh', 'hung-thanh', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 16:56:12', '2024-02-25 16:56:12'),
(128, 'Lê Bình', 'le-binh', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 16:56:26', '2024-02-25 16:56:26'),
(129, 'Phú Thứ', 'phu-thu', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 16:56:43', '2024-02-25 16:56:43'),
(130, 'Tân Phú', 'tan-phu', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 16:57:05', '2024-02-25 16:57:05'),
(131, 'Thường Thạnh', 'thuong-thanh', NULL, NULL, NULL, 1, 0, 107, 2, '2024-02-25 16:57:18', '2024-02-25 16:57:18'),
(133, 'An Cư', 'an-cu', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:57:53', '2024-02-25 16:57:53'),
(134, 'An Hoà', 'an-hoa', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:58:06', '2024-02-25 16:58:06'),
(135, 'An Khánh', 'an-khanh', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:58:19', '2024-02-25 16:58:19'),
(136, 'An Nghiệp', 'an-nghiep', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:58:31', '2024-02-25 16:58:31'),
(137, 'An Phú', 'an-phu', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:58:47', '2024-02-25 16:58:47'),
(138, 'Cái Khế', 'cai-khe', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:59:06', '2024-02-25 16:59:06'),
(141, 'Tân An', 'tan-an', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:59:41', '2024-02-25 16:59:41'),
(142, 'Thới Bình', 'thoi-binh', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 16:59:56', '2024-02-25 16:59:56'),
(143, 'Xuân Khánh', 'xuan-khanh', NULL, NULL, NULL, 1, 0, 110, 2, '2024-02-25 17:00:14', '2024-02-25 17:00:14'),
(145, 'Long Hưng', 'long-hung', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 17:00:43', '2024-02-25 17:00:43'),
(146, 'Phước Thới', 'phuoc-thoi', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 17:00:56', '2024-02-25 17:00:56'),
(147, 'Thới An', 'thoi-an', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 17:01:07', '2024-02-25 17:01:07'),
(148, 'Thới Hoà', 'thoi-hoa', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 17:01:18', '2024-02-25 17:01:18'),
(149, 'Thới Long', 'thoi-long', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 17:01:37', '2024-02-25 17:01:37'),
(150, 'Trường Lạc', 'truong-lac', NULL, NULL, NULL, 1, 0, 113, 2, '2024-02-25 17:01:52', '2024-02-25 17:01:52'),
(151, 'Tân Hưng', 'tan-hung', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:02:06', '2024-02-25 17:02:06'),
(152, 'Tân Lộc', 'tan-loc', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:02:18', '2024-02-25 17:02:18'),
(153, 'Thạnh Hoà', 'thanh-hoa', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:02:32', '2024-02-25 17:02:32'),
(156, 'Thới Thuận', 'thoi-thuan', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:05:33', '2024-02-25 17:05:33'),
(157, 'Thuận An', 'thuan-an', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:05:43', '2024-02-25 17:05:43'),
(158, 'Thuận Hưng', 'thuan-hung', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:05:57', '2024-02-25 17:05:57'),
(159, 'Trung Kiên', 'trung-kien', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:06:10', '2024-02-25 17:06:10'),
(160, 'Trung Nhứt', 'trung-nhut', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:06:18', '2024-02-25 17:06:18'),
(161, 'Cờ Đỏ', 'co-do', NULL, NULL, NULL, 1, 0, 0, 1, '2024-02-25 17:08:29', '2024-02-25 17:08:29'),
(162, 'Thị trấn Cờ Đỏ', 'thi-tran-co-do', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:08:42', '2024-02-25 17:08:42'),
(163, 'Đông Hiệp', 'dong-hiep', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:08:56', '2024-02-25 17:08:56'),
(164, 'Đông Thắng', 'dong-thang', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:09:13', '2024-02-25 17:09:13'),
(165, 'Thạnh Phú', 'thanh-phu', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:09:21', '2024-02-25 17:09:21'),
(166, 'Thới Đồng', 'thoi-dong', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:09:29', '2024-02-25 17:09:29'),
(167, 'Thới Hưng', 'thoi-hung', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:09:38', '2024-02-25 17:09:38'),
(168, 'Thới Xuân', 'thoi-xuan', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:09:46', '2024-02-25 17:10:18'),
(169, 'Trung An', 'trung-an', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:09:57', '2024-02-25 17:10:26'),
(170, 'Trung Hưng', 'trung-hung', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:10:06', '2024-02-25 17:10:33'),
(171, 'Trung Thạnh', 'trung-thanh', NULL, NULL, NULL, 1, 0, 161, 2, '2024-02-25 17:10:44', '2024-02-25 17:10:44'),
(172, 'Phong Điền', 'phong-dien', NULL, NULL, NULL, 1, 0, 0, 1, '2024-02-25 17:10:54', '2024-02-25 17:10:54'),
(173, 'Thị trấn Phong Điền', 'thi-tran-phong-dien', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:11:04', '2024-02-25 17:11:04'),
(174, 'Giai Xuân', 'giai-xuan', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:11:18', '2024-02-25 17:11:18'),
(175, 'Mỹ Khánh', 'my-khanh', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:11:25', '2024-02-25 17:11:25'),
(176, 'Nhơn Ái', 'nhon-ai', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:11:34', '2024-02-25 17:11:34'),
(177, 'Nhơn Nghĩa', 'nhon-nghia', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:11:42', '2024-02-25 17:11:43'),
(178, 'Tân Thới', 'tan-thoi', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:11:52', '2024-02-25 17:11:52'),
(179, 'Trường Long', 'truong-long', NULL, NULL, NULL, 1, 0, 172, 2, '2024-02-25 17:12:01', '2024-02-25 17:12:01'),
(180, 'Thới Lai', 'thoi-lai', NULL, NULL, NULL, 1, 0, 0, 1, '2024-02-25 17:12:09', '2024-02-25 17:12:09'),
(181, 'Thị trấn Thới Lai', 'thi-tran-thoi-lai', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:12:17', '2024-02-25 17:12:17'),
(182, 'Định Môn', 'dinh-mon', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:12:25', '2024-02-25 17:12:25'),
(183, 'Đông Bình', 'dong-binh', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:12:34', '2024-02-25 17:12:34'),
(184, 'Đông Thuận', 'dong-thuan', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:12:45', '2024-02-25 17:12:45'),
(185, 'Thân Thạnh', 'than-thanh', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:12:56', '2024-02-25 17:12:56'),
(186, 'Thới Tân', 'thoi-tan', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:13:08', '2024-02-25 17:13:08'),
(187, 'Thới Thạnh', 'thoi-thanh', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:13:17', '2024-02-25 17:13:17'),
(188, 'Trường Thắng', 'truong-thang', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:14:19', '2024-02-25 17:14:19'),
(189, 'Trường Thành', 'truong-thanh', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:14:28', '2024-02-25 17:14:28'),
(190, 'Trường Xuân', 'truong-xuan', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:14:37', '2024-02-25 17:14:37'),
(191, 'Trường Xuân A', 'truong-xuan-a', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:14:45', '2024-02-25 17:14:45'),
(192, 'Trường Xuân B', 'truong-xuan-b', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:14:54', '2024-02-25 17:14:54'),
(193, 'Xuân Thắng', 'xuan-thang', NULL, NULL, NULL, 1, 0, 180, 2, '2024-02-25 17:15:13', '2024-02-25 17:15:13'),
(194, 'Vĩnh Thạnh', 'vinh-thanh', NULL, NULL, NULL, 1, 0, 0, 1, '2024-02-25 17:15:21', '2024-02-25 17:15:21'),
(195, 'Thị trấn Vĩnh Thạnh', 'thi-tran-vinh-thanh', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:15:30', '2024-02-25 17:15:30'),
(196, 'Thị trấn Thạnh An', 'thi-tran-thanh-an', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:15:39', '2024-02-25 17:15:39'),
(197, 'Thạnh An', 'thanh-an', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:15:47', '2024-02-25 17:15:55'),
(198, 'Thạnh Lộc', 'thanh-loc', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:16:03', '2024-02-25 17:16:03'),
(199, 'Thạnh Lợi', 'thanh-loi', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:16:12', '2024-02-25 17:16:12'),
(200, 'Thạnh Mỹ', 'thanh-my', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:16:21', '2024-02-25 17:16:21'),
(201, 'Thạnh Quới', 'thanh-quoi', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:16:29', '2024-02-25 17:16:29'),
(202, 'Thạnh Thắng', 'thanh-thang', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:16:40', '2024-02-25 17:16:40'),
(203, 'Thạnh Tiến', 'thanh-tien', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:16:55', '2024-02-25 17:16:55'),
(204, 'Vĩnh Bình', 'vinh-binh', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:17:05', '2024-02-25 17:17:05'),
(205, 'Vĩnh Trinh', 'vinh-trinh', NULL, NULL, NULL, 1, 0, 194, 2, '2024-02-25 17:17:15', '2024-02-25 17:17:15'),
(206, 'Phường Thốt Nốt', 'phuong-thot-not', NULL, NULL, NULL, 1, 0, 116, 2, '2024-02-25 17:19:02', '2024-02-25 17:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh_ct`
--

CREATE TABLE `hinhanh_ct` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duongdan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phong_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hinhanh_ct`
--

INSERT INTO `hinhanh_ct` (`id`, `ten`, `duongdan`, `phong_id`, `created_at`, `updated_at`) VALUES
(137, '1.jpg', '2024-02-23__1jpg.jpg', 94, '2024-02-23 13:10:38', NULL),
(138, '2.jpg', '2024-02-23__2jpg.jpg', 94, '2024-02-23 13:10:38', NULL),
(139, 'hostel_1.jpg', '2024-02-25__hostel-1jpg.jpg', 95, '2024-02-25 14:52:44', NULL),
(140, 'hostel_2.jpg', '2024-02-25__hostel-2jpg.jpg', 95, '2024-02-25 14:52:44', NULL),
(141, 'hostel_3.jpg', '2024-02-25__hostel-3jpg.jpg', 95, '2024-02-25 14:52:44', NULL),
(142, 'hostel_4.jpg', '2024-02-25__hostel-4jpg.jpg', 95, '2024-02-25 14:52:44', NULL),
(143, 'hostel_5.jpg', '2024-02-25__hostel-5jpg.jpg', 95, '2024-02-25 14:52:44', NULL),
(144, 'hostel_5.jpg', '2024-02-25__hostel-5jpg.jpg', 96, '2024-02-25 14:59:57', NULL),
(145, 'hostel_6.jpg', '2024-02-25__hostel-6jpg.jpg', 96, '2024-02-25 14:59:57', NULL),
(146, 'hostel_7.jpg', '2024-02-25__hostel-7jpg.jpg', 96, '2024-02-25 14:59:57', NULL),
(147, 'hostel_9.jpg', '2024-02-25__hostel-9jpg.jpg', 96, '2024-02-25 14:59:57', NULL),
(148, 'hostel_7.jpg', '2024-02-25__hostel-7jpg.jpg', 97, '2024-02-25 15:09:21', NULL),
(149, 'hostel_11.jpg', '2024-02-25__hostel-11jpg.jpg', 97, '2024-02-25 15:09:21', NULL),
(150, 'hostel_12.jpg', '2024-02-25__hostel-12jpg.jpg', 97, '2024-02-25 15:09:21', NULL),
(151, 'hostel_13.jpg', '2024-02-25__hostel-13jpg.jpg', 97, '2024-02-25 15:09:21', NULL),
(152, 'hostel_14.jpg', '2024-02-25__hostel-14jpg.jpg', 97, '2024-02-25 15:09:21', NULL),
(153, 'hostel_10.jpg', '2024-02-25__hostel-10jpg.jpg', 98, '2024-02-25 15:16:10', NULL),
(154, 'hostel_11.jpg', '2024-02-25__hostel-11jpg.jpg', 98, '2024-02-25 15:16:10', NULL),
(155, 'hostel_12.jpg', '2024-02-25__hostel-12jpg.jpg', 98, '2024-02-25 15:16:10', NULL),
(156, 'hostel_13.jpg', '2024-02-25__hostel-13jpg.jpg', 98, '2024-02-25 15:16:10', NULL),
(157, 'hostel_14.jpg', '2024-02-25__hostel-14jpg.jpg', 98, '2024-02-25 15:16:10', NULL),
(158, 'hostel_14.jpg', '2024-02-25__hostel-14jpg.jpg', 99, '2024-02-25 15:18:30', NULL),
(159, 'hostel_15.jpg', '2024-02-25__hostel-15jpg.jpg', 99, '2024-02-25 15:18:30', NULL),
(160, 'hostel_16.jpg', '2024-02-25__hostel-16jpg.jpg', 99, '2024-02-25 15:18:30', NULL),
(161, 'hostel_17.jpg', '2024-02-25__hostel-17jpg.jpg', 99, '2024-02-25 15:18:30', NULL),
(162, 'hostel_19.png', '2024-02-25__hostel-19png.png', 99, '2024-02-25 15:18:30', NULL),
(163, 'hostel_17.jpg', '2024-02-25__hostel-17jpg.jpg', 100, '2024-02-25 15:23:42', NULL),
(164, 'hostel_19.png', '2024-02-25__hostel-19png.png', 100, '2024-02-25 15:23:42', NULL),
(165, 'hostel_20.jpg', '2024-02-25__hostel-20jpg.jpg', 100, '2024-02-25 15:23:42', NULL),
(166, 'hostel_21.jpg', '2024-02-25__hostel-21jpg.jpg', 101, '2024-02-25 15:42:50', NULL),
(167, 'hostel_22.jpg', '2024-02-25__hostel-22jpg.jpg', 101, '2024-02-25 15:42:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lichsu_naptien`
--

CREATE TABLE `lichsu_naptien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nguoidung_id` bigint(20) NOT NULL DEFAULT 0,
  `loai` tinyint(4) NOT NULL COMMENT 'phương thức',
  `tien` int(11) NOT NULL DEFAULT 0,
  `giamgia` int(11) NOT NULL DEFAULT 0,
  `tongtien` int(11) NOT NULL DEFAULT 0,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lichsu_naptien`
--

INSERT INTO `lichsu_naptien` (`id`, `ma`, `nguoidung_id`, `loai`, `tien`, `giamgia`, `tongtien`, `trangthai`, `created_at`, `updated_at`) VALUES
(97, 'CXwUNa19nlnaU5b17', 17, 3, 60000, 0, 60000, 1, '2024-02-23 13:12:58', '2024-02-23 13:12:58'),
(98, '9Zfbo8n3sO9fLR818', 18, 3, 99999999, 0, 99999999, 2, '2024-02-25 14:44:39', '2024-02-25 14:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `lichsu_thanhtoan`
--

CREATE TABLE `lichsu_thanhtoan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nguoidung_id` bigint(20) NOT NULL DEFAULT 0,
  `loai` tinyint(4) NOT NULL DEFAULT 1,
  `phong_id` int(11) NOT NULL DEFAULT 0,
  `dichvu_id` tinyint(4) NOT NULL DEFAULT 0,
  `tien` int(11) NOT NULL DEFAULT 0,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lichsu_thanhtoan`
--

INSERT INTO `lichsu_thanhtoan` (`id`, `nguoidung_id`, `loai`, `phong_id`, `dichvu_id`, `tien`, `trangthai`, `created_at`, `updated_at`) VALUES
(72, 18, 5, 95, 0, 640000, 2, '2024-02-25 14:53:33', '2024-02-25 14:53:33'),
(73, 18, 4, 96, 0, 450000, 2, '2024-02-25 15:00:09', '2024-02-25 15:00:09'),
(74, 18, 3, 97, 0, 300000, 2, '2024-02-25 15:09:32', '2024-02-25 15:09:32'),
(75, 18, 2, 98, 0, 220000, 2, '2024-02-25 15:16:21', '2024-02-25 15:16:21'),
(76, 18, 5, 99, 0, 1120000, 2, '2024-02-25 15:18:43', '2024-02-25 15:18:43'),
(77, 18, 1, 100, 0, 24000, 2, '2024-02-25 15:23:50', '2024-02-25 15:23:50'),
(78, 18, 5, 101, 0, 400000, 2, '2024-02-25 15:42:59', '2024-02-25 15:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `ma_dien_thoai`
--

CREATE TABLE `ma_dien_thoai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `maxacthuc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_hoatdong` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ma_dien_thoai`
--

INSERT INTO `ma_dien_thoai` (`id`, `maxacthuc`, `is_hoatdong`, `created_at`, `updated_at`) VALUES
(11, '760712', 0, '2023-06-10 18:05:51', '2023-06-10 18:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_06_12_162342_create_categories_table', 2),
(6, '2022_06_12_162532_create_locations_table', 3),
(8, '2022_06_12_163256_create_options_table', 4),
(9, '2022_06_12_163613_create_admins_table', 5),
(10, '2022_06_12_163809_create_images_table', 6),
(11, '2022_06_12_162740_create_rooms_table', 7),
(12, '2022_08_21_033748_create_codes_table', 8),
(13, '2022_10_26_072922_create_recharge_history_table', 9),
(14, '2022_10_26_072947_create_payment_history_table', 9),
(15, '2022_10_26_145748_create_menus_table', 10),
(16, '2022_10_26_145810_create_articles_table', 10),
(17, '2023_06_07_101247_create_test_id_table', 11),
(18, '2023_06_11_001623_create__ma_dien_thoai_table', 12),
(19, '2023_06_11_002506_create_ma_dien_thoai_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anhdaidien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sodukhadung` bigint(20) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `ten`, `email`, `sodienthoai`, `facebook`, `anhdaidien`, `sodukhadung`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(17, 'Vũ Tuấn Anh', 'vutuananh0949@gmail.com', '0949083443', NULL, NULL, 0, NULL, '$2y$10$zIsNK681dWF7A5zX4pE3TuRzOK61ToV4XiXksweVdZNfyAdXETFY2', NULL, '2024-02-23 13:02:53', '2024-02-25 15:45:45'),
(18, 'Vũ Tuấn Anh', 'vutuananh01@gmail.com', '0949083414', NULL, '2024-02-25__z4241880085877-eff804ef3a7d57939eb72a234fc858a0.jpg', 96845999, NULL, '$2a$12$oe2QRWxJ8ILux4e48.xMnue6yqd5t3a/rED0GCWg89Cd1dNXa9McO', NULL, '2024-02-25 13:52:11', '2024-02-25 15:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anhdaidien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qhuyen_id` bigint(20) NOT NULL DEFAULT 0,
  `phuongxa_id` bigint(20) NOT NULL DEFAULT 0,
  `gia` bigint(20) NOT NULL DEFAULT 0,
  `khoanggia` tinyint(4) NOT NULL DEFAULT 1,
  `khoangkhuvuc` tinyint(4) NOT NULL DEFAULT 1,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1,
  `khuvuc` int(11) NOT NULL DEFAULT 0,
  `sophong` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chitietdiachi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot` tinyint(4) NOT NULL DEFAULT 0,
  `lydo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `danhmuc_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `thoigian_batdau` date DEFAULT NULL,
  `thoigian_ketthuc` date DEFAULT NULL,
  `xacthuc_id` bigint(20) NOT NULL DEFAULT 0,
  `dichvu_hot` tinyint(4) NOT NULL DEFAULT 0,
  `map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) NOT NULL DEFAULT 0,
  `video_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'link yt',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`id`, `ten`, `slug`, `anhdaidien`, `mota`, `qhuyen_id`, `phuongxa_id`, `gia`, `khoanggia`, `khoangkhuvuc`, `trangthai`, `khuvuc`, `sophong`, `chitietdiachi`, `noidung`, `hot`, `lydo`, `danhmuc_id`, `thoigian_batdau`, `thoigian_ketthuc`, `xacthuc_id`, `dichvu_hot`, `map`, `subject_id`, `video_link`, `created_at`, `updated_at`) VALUES
(95, 'Phòng trọ mới xây, giờ tự do, hầm xe, thang máy', 'phong-tro-moi-xay-gio-tu-do-ham-xe-thang-may', '2024-02-25__hostel-1.jpg', '<p>ApasHome cho thuê phòng trọ, tòa nhà thang máy, giờ giấc tự do</p><p>Vị trí:</p><p>Chi nhánh 1: 325/12 Đường Lê Văn Quới, Phường Bình Trị Đông, quận Bình Tân( ĐƯỜNG HẺM XE TẢI )</p><p>Chi nhánh 2: 431a Đường Lê Văn Quới, Phường Bình Trị Đông A, Quận Bình Tân</p><p>Sát chợ Lê Văn Quới, 1km đến ngã tư bốn xã, 2km đến Khu công nghiệp Dimsum, KDL Đầm Sen, 20 phút di chuyển về Quận 10, 11, 5 và các tiện ích xung quanh đầy đủ&nbsp;</p><p>Giá phòng:</p><p>- 2.600.000đ/tháng. (tiện nghi:máy lạnh, gác, kệ bếp, toilet).</p><p>- 3.100.000/tháng. (tiện nghi:máy lạnh tủ âm tường, kệ bếp, toilet).</p><p>- 3.500.000/tháng ( tiện nghi:gác, máy lạnh tủ âm tường, kệ bếp, toilet).</p><p>- Đặt cọc phòng 1 tháng.</p><p>+ Dịch vụ:</p><p>- Điện: 3.8k/KWH.</p><p>- Nước máy: 25k/m3.</p><p>- Wifi, rác, vệ sinh, thang máy: 150k / phòng/ tháng.</p><p>- Xe máy: 100k/ xe / tháng.</p><p>- Liên hệ: Mr.Tuấn( call, zalo)</p>', 110, 111, 3000000, 4, 3, 3, 32, 'C1T82', 'C1T82, phường An Bình, Ninh Kiều, Cần Thơ', NULL, 0, NULL, 21, '2024-02-25', '2024-03-31', 18, 5, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 14:52:44', '2024-02-25 14:54:11'),
(96, 'Nhà Trọ Sạch Sẽ - TRỌ CÓ GÁC GẦN BẾN XE MIỀN TÂY', 'nha-tro-sach-se-tro-co-gac-gan-ben-xe-mien-tay', '2024-02-25__hostel-5.jpg', '<p>NHÀ TRỌ SẠCH SẼ - LUÔN SẠCH SẼ, LUÔN GỌN GÀNG</p><p>Phòng có cửa sổ hành lang</p><p>Phòng mới như hình ảnh, gần Đại học Công thương, khu công nghiệp Tân Bình/Vĩnh Lộc/ Bình Chánh, bến xe miền Tây,...</p><p>Tiện ích:</p><p>- Cổng vân tay, camera 24/24,</p><p>- Nhà xe rộng rãi</p><p>- Nhân viên trực tại chổ</p><p>- Nước uống free, khu phơi quần áo, máy giặt tính tiền giá rẻ,</p><p>- Sân thượng</p><p>Địa chỉ: 5E Đường số 1, Phường Bình Hưng Hòa A, Quận Bình Tân</p>', 107, 109, 1500000, 2, 2, 3, 24, NULL, '5E Đường số 1, Hưng Phú, Cái Răng', NULL, 0, NULL, 21, '2024-02-27', '2024-03-07', 18, 4, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 14:59:57', '2024-02-25 15:00:14'),
(97, 'Cho thuê phòng trọ mini có cửa sổ thoáng', 'cho-thue-phong-tro-mini-co-cua-so-thoang', '2024-02-25__hostel-6.jpg', '<p>Chính chủ cho thuê phòng trọ đường Trần Xuân Soạn</p><p>Phòng sạch sẽ , thoáng</p><p>Có bếp và toilet chung</p><p>Dọn dẹp vệ sinh 2l / 1 tuần</p><p>Có máy giặt chung</p><p>Giá rẻ</p>', 105, 106, 900000, 1, 1, 3, 15, 'h122', 'h122, hẻm 32, Bình Thủy, An Thới', NULL, 0, NULL, 24, '2024-02-25', '2024-03-06', 18, 3, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 15:09:21', '2024-02-25 15:09:37'),
(98, 'Nhà trọ giá rẻ Thiên Ân đầy đủ tiện nghi', 'nha-tro-gia-re-thien-an-day-du-tien-nghi', '2024-02-25__hostel-10.jpg', '<p>Nhà trọ giá rẻ đầy đủ tiện nghi</p><p>Ra vào vân tay</p><p>Không chung chủ</p><p>Điện 4000kw</p><p>Xe free,&nbsp;Wifi free</p><p>Nước nóng lạnh 100K/phòng/tháng</p>', 110, 112, 2500000, 3, 3, 3, 30, '223', '223, Ninh Kiều, Hưng Lợi, Cần Thơ', NULL, 0, NULL, 21, '2024-02-25', '2024-03-07', 18, 2, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 15:16:10', '2024-02-25 15:16:29'),
(99, 'Cho thuê nhà nguyên căn sạch sẽ, thoáng mát, giá chỉ 9.5tr/tháng', 'cho-thue-nha-nguyen-can-sach-se-thoang-mat-gia-chi-95trthang', '2024-02-25__hostel-15.jpg', '<p>CHO THUÊ NHÀ NGUYÊN CĂN NHÀ ĐẸP GIÁ RẺ</p><p>Cho thuê nhà nguyên căn, hai tầng, 3 ban công, 3 phòng ngủ, 2 toilet, bếp bàn ăn và phòng khách.</p><p>Địa chỉ: 55, hẻm 3, Bình Thủy, An Thới, Cần Thơ</p><p>Giá: 9.500.000</p><p>Đường xe hơi</p>', 105, 106, 9500000, 6, 7, 3, 90, '55', '55, hẻm 3, Bình Thủy, An Thới, Cần Thơ', NULL, 0, NULL, 22, '2024-02-25', '2024-03-10', 18, 5, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 15:18:30', '2024-02-25 15:18:50'),
(100, 'Tìm Nam ở ghép ưu tiên dân văn phòng, sinh viên, người đi làm', 'tim-nam-o-ghep-uu-tien-dan-van-phong-sinh-vien-nguoi-di-lam', '2024-02-25__hostel-20.jpg', '<p>Tìm Nam ở ghép không hút thuốc, ưu tiên dân văn phòng, sinh viên, người đi làm ở Thạnh Lộc 15</p><p>Giá : 1.000.000đ/tháng</p><p>Mô tả phòng (đúng phòng này, để không mất thời gian của 2 bên, cam kết thông tin và hình thật 100%, xem hình đính kèm):</p><p>Phòng hơn 30m2, ở lầu 2</p><p>Phòng chỉ cho tối đa 3 nam</p><p>Phòng rộng, đẹp, sạch sẽ</p><p>Toilet riêng trong phòng, có bồn tắm</p><p>Giờ giấc tự do thoải mãi</p><p>Có cửa sổ, gió thoáng mát phong thủy tốt</p><p>Có wifi mạnh</p><p>Có nhà để xe rộng rãi, an ninh, camera giám sát</p><p>Khu đông dân cư dân trí, an ninh</p><p>Gần cafe sân bóng goal</p>', 107, 108, 700000, 1, 2, 3, 29, '44/33', '44/33, hẻm 23,  Ba Láng, Cần Thơ, Cái Răng', NULL, 0, NULL, 24, '2024-02-25', '2024-03-08', 18, 1, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 15:23:42', '2024-02-25 15:24:07'),
(101, 'Cho thuê nhiều văn phòng: 50m2, 100m2, 250m2, 235m2, 500m2 Vinhomes Grand Park.', 'cho-thue-nhieu-van-phong-50m2-100m2-250m2-235m2-500m2-vinhomes-grand-park', '2024-02-25__hostel-21.jpg', '<p>CHO THUÊ NHIỀU VĂN PHÒNG 50M2 100M2, 250M2, 235M2, 500M2 VINHOMES GRAND PARK 0933.777.844</p><p>Em có sẵn hơn 300 văn phòng dành cho doanh nghiệp của anh chị tại khu vực Vinhomes Grand Park, phường Long Bình,TP Thủ Đức ( Quận 9 cũ).</p><p>Liên hệ: 0933.777.844</p><p>Thông tin chi tiết:</p><p>+ Kích thước: Ngang 7mx12m, xây dựng 1 trệt 4 lầu + sân thượng</p><p>+ Diện tích 1 sàn 49m2, tổng 5 sàn 235m2. Hoàn thiện 5 tầng</p><p>+ Có thang máy</p><p>+ Sử dụng nguyên căn</p><p>+ Chỗ để xe thỏa mái.</p><p>+ Điện nước riêng</p><p>+ Giá cho thuê 25.000.000đ/tháng</p><p>Cùng với các loại hình diện tích đáp ứng các tiêu chí:</p><p>Với đầy các loại hình diện tích đáp ứng các tiêu chí:</p><p>Tiện nghi Vị trí đẹp</p><p>Không gian riêng tư An ninh</p><p>Chỗ để xe thỏa mái Điện nước riêng</p><p>Phí quản lý rẻ Được đăng ký địa chỉ kinh doanh</p><p>- Diện tích 45m2 giá 5.000.000đ/tháng</p><p>- Diện tích 70m2 giá 8.000.000đ/tháng</p><p>- Diện tích 100m2 giá 10.000.000đ/tháng</p><p>- Diện tích 144m2 Giá 12.000.000đ/tháng</p><p>- Diện tích sàn 235m2 giá 25.000.000đ/tháng (nhà 5 tầng)</p><p>- Diện tích sàn 450m2 giá 30.000.000đ/tháng (nhà 5 tầng)</p><p>- Diện tích sàn 500m2 giá 35.000.000đ/tháng (nhà 5 tầng)</p><p>- Diện tích sàn 600m2 giá 40.000.000đ/tháng (có nhà 3 tầng, có nhà 5 tầng)</p><p>***Ngoài ra, chúng tôi còn có nhiều loại hình sản phẩm khác, phong phú về nội thất cơ bản, nội thất đầy đủ tại các căn hộ, căn shop, nhà phố và biệt thự tại khu đô thị Vinhomes Grand Park.</p><p>Sự phát triển từng ngày của khu Vinhomes Grand Park với hơn 100.000 cư dân, còn rất nhiều mảnh ghép đang cần anh chị tới bổ sung.</p><p>/-heart Xin chúc quý anh chị, quý doanh nghiệp ngày càng phát triển và thành công</p><p>Liên hệ xem nhà: 0933.777.844 Mr Sinh</p>', 105, 106, 40000000, 8, 10, 3, 300, '22', '22, hẻm 1, An Thới, Bình Thủy, Cần Thơ', NULL, 0, NULL, 23, NULL, '2024-03-01', 18, 5, 'https://maps.app.goo.gl/L1woVXfZHgRghs2PA', 0, NULL, '2024-02-25 15:42:50', '2024-02-26 12:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `quantrivien`
--

CREATE TABLE `quantrivien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quantrivien`
--

INSERT INTO `quantrivien` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2a$12$aBl9RYTJXMy6rbief1KNHOTCUCRAgm/xoTzytdv74vxoNHWdS494m', '2022-10-27 02:43:18', '2022-10-27 02:43:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locations_slug_unique` (`slug`);

--
-- Indexes for table `hinhanh_ct`
--
ALTER TABLE `hinhanh_ct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lichsu_naptien`
--
ALTER TABLE `lichsu_naptien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recharge_history_code_unique` (`ma`);

--
-- Indexes for table `lichsu_thanhtoan`
--
ALTER TABLE `lichsu_thanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ma_dien_thoai`
--
ALTER TABLE `ma_dien_thoai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ma_dien_thoai_maxacthuc_unique` (`maxacthuc`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`sodienthoai`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- Indexes for table `quantrivien`
--
ALTER TABLE `quantrivien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `diachi`
--
ALTER TABLE `diachi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `hinhanh_ct`
--
ALTER TABLE `hinhanh_ct`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `lichsu_naptien`
--
ALTER TABLE `lichsu_naptien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `lichsu_thanhtoan`
--
ALTER TABLE `lichsu_thanhtoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `ma_dien_thoai`
--
ALTER TABLE `ma_dien_thoai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `quantrivien`
--
ALTER TABLE `quantrivien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
