-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 06, 2025 at 06:46 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locked` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `role` enum('admin','guest','shipper') COLLATE utf8mb4_unicode_ci DEFAULT 'guest',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `name`, `phone`, `address`, `token`, `locked`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$Nl0IqopilF6cxZ1auaHZE.8K.tGIeeNHOZkqYC8iXi5v4LWGA5y/O', 'Admin', '0123456789', 'Yên Nghĩa, Hà Đông, Hà Nội', 'XQzERLrp4mNqReNbrtpMmLbBYzCW0u22dvw1mmD7uSLTBGq84U', '0', 'admin', '2025-02-06 06:43:02', '2025-02-06 06:44:29'),
(2, 'shipper', '$2y$10$YYdU9jnJ9qEOt6lDDu8YpOgsjON15WgUc8L60y8mhnZSBmfaIgSJe', 'Shipper', '0123456789', 'Yên Nghĩa, Hà Đông, Hà Nội', 'rpsN3MQgcxAcuht7SFzi3zAa5z7kGFALk3VNZukbTMZsUd7vee', '0', 'shipper', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(3, 'user', '$2y$10$mwq1BRpgI8BFJeHstm3ahul41u0Se8IwXft.vHJKwpJI9F0EuG2VO', 'Khách hàng', '0123456789', 'Yên Nghĩa, Hà Đông, Hà Nội', 'GBxVhlYbTiXcH0mdDefUC17NQ3ZTssANraIg2X1Lc8XMwP8TKh', '0', 'guest', '2025-02-06 06:43:02', '2025-02-06 06:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Đồ ăn nhanh', 'do-an-nhanh', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(2, 'Đồ ăn chay', 'do-an-chay', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(3, 'Đồ ăn vặt', 'do-an-vat', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(4, 'Đồ ăn sáng', 'do-an-sang', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(5, 'Đồ ăn trưa', 'do-an-trua', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(6, 'Đồ ăn tối', 'do-an-toi', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(7, 'Đồ ăn đêm', 'do-an-dem', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(8, 'Đồ uống', 'do-uong', '2025-02-06 06:43:02', '2025-02-06 06:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` timestamp NULL DEFAULT NULL,
  `end_at` timestamp NULL DEFAULT NULL,
  `percent` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `code`, `start_at`, `end_at`, `percent`, `created_at`, `updated_at`) VALUES
(1, 'Giảm giá 10%', 'giam10', '2024-12-31 17:00:00', '2025-01-30 16:59:59', 10, '2025-02-06 06:43:02', '2025-02-06 06:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2025_01_26_062044_create_accounts_table', 1),
(3, '2025_01_26_062240_create_categories_table', 1),
(4, '2025_01_26_062316_create_products_table', 1),
(5, '2025_01_26_062357_create_discounts_table', 1),
(6, '2025_01_26_172503_create_order_table', 1),
(7, '2025_01_26_172913_create_order_product_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` bigint UNSIGNED DEFAULT NULL,
  `shipper_id` bigint UNSIGNED DEFAULT NULL,
  `discount_id` bigint UNSIGNED DEFAULT NULL,
  `discount_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay` enum('unpaid','paid') COLLATE utf8mb4_unicode_ci DEFAULT 'unpaid',
  `status` enum('cart','wait','shipping','complete','cancel') COLLATE utf8mb4_unicode_ci DEFAULT 'cart',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `quantity` int NOT NULL,
  `vote` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `avatar`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Burger Bò Phô Mai', 'Burger Bò Phô Mai với lớp thịt bò mềm ngon, phô mai béo ngậy, rau sống tươi mát, sốt mayonnaise thơm ngon, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 50000, 1, 'Food/1.png', 'burger-bo-pho-mai', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(2, 'Khoai Tây Chiên Giòn', 'Khoai Tây Chiên Giòn với lớp vỏ giòn tan, bên trong mềm thơm, ăn kèm sốt mayonnaise thơm ngon, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 20000, 1, 'Food/2.png', 'khoai-tay-chien-gion', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(3, 'Gà Rán Cay', 'Gà Rán Cay với lớp vỏ giòn tan, bên trong thịt gà mềm ngon, cay nồng, ăn kèm sốt mayonnaise thơm ngon, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 30000, 1, 'Food/3.png', 'ga-ran-cay', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(4, 'Bún Chay Nấm', 'Bún Chay Nấm với nước dùng chua ngọt, thơm ngon, bún mềm, nấm dai, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 25000, 2, 'Food/4.png', 'bun-chay-nam', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(5, 'Cơm Chiên Rau Củ', 'Cơm Chiên Rau Củ với cơm chiên giòn, thơm, rau củ tươi ngon, ăn kèm trứng chiên và sốt chua ngọt, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 30000, 2, 'Food/5.png', 'com-chien-rau-cu', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(6, 'Gỏi Cuốn Chay', 'Gỏi Cuốn Chay với bánh tráng mềm, dai, rau sống tươi mát, chay ngon, ăn kèm nước mắm chua ngọt, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 20000, 2, 'Food/6.png', 'goi-cuon-chay', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(7, 'Bánh Tráng Trộn', 'Bánh Tráng Trộn với bánh tráng giòn, thơm, ăn kèm rau sống tươi mát, chà bông, tôm khô, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 15000, 3, 'Food/7.png', 'banh-trang-tron', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(8, 'Xoài Lắc Muối Ớt', 'Xoài Lắc Muối Ớt với xoài chua ngọt, giòn, ăn kèm muối ớt, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 10000, 3, 'Food/8.png', 'xoai-lac-muoi-ot', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(9, 'Bắp Xào Bơ', 'Bắp Xào Bơ với bắp ngọt, giòn, ăn kèm bơ, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 20000, 3, 'Food/9.png', 'bap-xao-bo', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(10, 'Bánh Mì Ốp La', 'Bánh Mì Ốp La với bánh mì giòn, thơm, ăn kèm trứng ốp la, pate, sốt chua ngọt, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 25000, 4, 'Food/10.png', 'banh-mi-op-la', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(11, 'Phở Bò', 'Phở Bò với nước dùng chua ngọt, thơm ngon, bò mềm, dai, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 30000, 4, 'Food/11.png', 'pho-bo', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(12, 'Xôi Gấc', 'Xôi Gấc với xôi ngọt, thơm, ăn kèm hạt dẻ, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 20000, 4, 'Food/12.png', 'xoi-gac', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(13, 'Cơm Tấm Sườn Bì Chả', 'Cơm Tấm Sườn Bì Chả với cơm chiên giòn, thơm, sườn nướng, bì chả, ăn kèm trứng chiên và sốt chua ngọt, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 65000, 5, 'Food/13.png', 'com-tam-suon-bi-cha', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(14, 'Bún Riêu Cua', 'Bún Riêu Cua với nước dùng chua ngọt, thơm ngon, bún mềm, cua dai, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 35000, 5, 'Food/14.png', 'bun-rieu-cua', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(15, 'Bánh Canh Cua', 'Bánh Canh Cua với nước dùng chua ngọt, thơm ngon, bánh canh dai, cua dai, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 40000, 5, 'Food/15.png', 'banh-canh-cua', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(16, 'Lẩu Thái Hải Sản', 'Lẩu Thái Hải Sản với nước dùng chua ngọt, thơm ngon, hải sản tươi ngon, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 200000, 6, 'Food/16.png', 'lau-thai-hai-san', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(17, 'Bò Lúc Lắc', 'Bò Lúc Lắc với thịt bò mềm ngon, sốt lúc lắc thơm ngon, ăn kèm cơm chiên, rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 70000, 6, 'Food/17.png', 'bo-luc-lac', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(18, 'Mì Xào Hải Sản', 'Mì Xào Hải Sản với mì xào giòn, thơm, hải sản tươi ngon, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 60000, 6, 'Food/18.png', 'mi-xao-hai-san', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(19, 'Cháo Lòng', 'Cháo Lòng với lòng lợn, lòng gà, lòng bò, cháo mềm, thơm, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 25000, 7, 'Food/19.png', 'chao-long', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(20, 'Hủ Tiếu Nam Vang', 'Hủ Tiếu Nam Vang với nước dùng chua ngọt, thơm ngon, hủ tiếu mềm, thịt heo, tôm, ăn kèm rau sống tươi mát, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 30000, 7, 'Food/20.png', 'hu-tieu-nam-vang', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(21, 'Bánh Bao Nhân Thịt', 'Bánh Bao Nhân Thịt với bánh bao mềm, thơm, nhân thịt bò, thịt heo, ăn kèm sốt chua ngọt, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 15000, 7, 'Food/21.png', 'banh-bao-nhan-thit', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(22, 'Trà Sữa Trân Châu Đen', 'Trà Sữa Trân Châu Đen với trà sữa thơm ngon, trân châu đen giòn, ăn kèm đá xay, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 25000, 8, 'Food/22.png', 'tra-sua-tran-chau-den', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(23, 'Cà Phê Sữa Đá', 'Cà Phê Sữa Đá với cà phê thơm ngon, sữa ngọt, ăn kèm đá xay, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 20000, 8, 'Food/23.png', 'ca-phe-sua-da', '2025-02-06 06:43:02', '2025-02-06 06:43:02'),
(24, 'Nước Dừa', 'Nước Dừa với nước dừa tươi ngon, ăn kèm đá xay, hòa quyện với nhau tạo nên một món ăn vô cùng hấp dẫn và lạ miệng.', 15000, 8, 'Food/24.png', 'nuoc-dua', '2025-02-06 06:43:02', '2025-02-06 06:43:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_account_id_foreign` (`account_id`),
  ADD KEY `orders_shipper_id_foreign` (`shipper_id`),
  ADD KEY `orders_discount_id_foreign` (`discount_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_shipper_id_foreign` FOREIGN KEY (`shipper_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
