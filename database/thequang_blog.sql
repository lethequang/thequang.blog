-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2019 at 08:35 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thequang.blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$.w6G4Xh2HZbv9..EXJfOqed.HXQeKgJXuRbGQACrewr53vNlCH9zy', 'Quang', 'PDlQzEIKivLauuS7XT3IERKDjrHyxmNq32KoB6CmUBOeIxo6nKdKKcUS3zpQ', '2018-07-11 05:24:15', '2018-07-11 05:24:15'),
(2, 'quantrivien', 'thequang', 'Thế Quang', '', '2018-07-11 05:50:44', '2018-07-11 05:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(24, 'Albert Camus', 'albert-camus', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(25, 'Alexandre Dumas', 'alexandre-dumas', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(26, 'Bùi Việt Sỹ', 'bui-viet-sy', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(27, 'Cố Khúc', 'co-khuc', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(28, 'Dương Thúy', 'duong-thuy', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(29, 'Đào Duy Anh', 'dao-duy-anh', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(30, 'Địch An', 'dich-an', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(31, 'E. L. James', 'e-l-james', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(32, 'Gong Ji Young', 'gong-ji-young', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(33, 'Hải Hoa', 'hai-hoa', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(34, 'Jared Diamond', 'jared-diamond', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(35, 'Kay Allenbaugh', 'kay-allenbaugh', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(36, 'Kaza Kingsley', 'kaza-kingsley', '2018-05-11 16:12:03', '2018-06-14 22:27:27'),
(37, 'Khánh Linh', 'khanh-linh', '2018-05-11 16:12:03', '2018-06-14 22:27:28'),
(38, 'Nguyễn Mạnh Hùng', 'nguyen-manh-hung', '2018-05-11 16:12:03', '2018-06-14 22:27:28'),
(39, 'Nguyễn Phương Bảo An', 'nguyen-phuong-bao-an', '2018-05-11 16:12:03', '2018-06-14 22:27:28'),
(40, 'Nguyễn Quang Thiều', 'nguyen-quang-thieu', '2018-05-11 16:12:03', '2018-06-14 22:27:28'),
(41, 'Nguyễn Trung Hiếu', 'nguyen-trung-hieu', '2018-05-11 16:12:03', '2018-06-14 22:27:28'),
(42, 'Ni Daehaeng', 'ni-daehaeng', '2018-05-11 16:12:03', '2018-06-14 22:27:28'),
(43, 'Shin, Woong-Jin', 'shin-woong-jin', '2018-05-11 16:12:03', '2018-06-14 22:27:28'),
(44, 'Trần Thanh Mại', 'tran-thanh-mai', '2018-05-11 16:12:03', '2018-06-14 22:27:28'),
(45, 'Vũ Thanh Sơn', 'vu-thanh-son', '2018-05-11 16:12:03', '2018-06-14 22:27:28'),
(46, 'Waka Biên Soạn', 'waka-bien-soan', '2018-05-11 16:12:03', '2018-06-14 22:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `date_order` date NOT NULL,
  `total` double NOT NULL,
  `payment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `note`, `date_order`, `total`, `payment`, `created_at`, `updated_at`) VALUES
(8, 8, 'giao truoc 5h', '2018-05-20', 145000, 'ATM', '2018-05-20 10:48:09', '2018-05-20 10:48:09'),
(9, 9, 'ko co', '2018-05-20', 30000, 'Home', '2018-05-20 10:53:25', '2018-05-20 10:53:25'),
(10, 11, 'ko co', '2018-05-20', 45000, 'ATM', '2018-05-20 11:07:24', '2018-05-20 11:07:24'),
(11, 12, 'sad', '2018-05-24', 30000, 'Home', '2018-05-24 23:24:38', '2018-05-24 23:24:38'),
(12, 13, 'ads', '2018-05-25', 90000, 'Home', '2018-05-25 12:35:23', '2018-05-25 12:35:23'),
(13, 14, 'dfds', '2018-05-25', 115000, 'ATM', '2018-05-25 13:54:19', '2018-05-25 13:54:19'),
(14, 15, 'Giao hàng trước 7h', '2018-06-18', 90000, 'Home', '2018-06-18 10:58:33', '2018-06-18 10:58:33'),
(15, 16, 'yyyyyyyyyyyyyyyyyyy', '2018-12-23', 85000, 'Home', '2018-12-23 12:07:35', '2018-12-23 12:07:35'),
(16, 17, 'aa', '2019-02-22', 75000, 'Home', '2019-02-22 22:18:16', '2019-02-22 22:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(4, 8, 29, 1, 40000, '2018-05-20 10:48:10', '2018-05-20 10:48:10'),
(5, 8, 30, 1, 30000, '2018-05-20 10:48:10', '2018-05-20 10:48:10'),
(6, 8, 27, 1, 40000, '2018-05-20 10:48:10', '2018-05-20 10:48:10'),
(7, 8, 28, 1, 35000, '2018-05-20 10:48:10', '2018-05-20 10:48:10'),
(8, 9, 34, 2, 30000, '2018-05-20 10:53:26', '2018-05-20 10:53:26'),
(9, 10, 34, 1, 15000, '2018-05-20 11:07:24', '2018-05-20 11:07:24'),
(10, 10, 33, 1, 30000, '2018-05-20 11:07:24', '2018-05-20 11:07:24'),
(11, 11, 33, 1, 30000, '2018-05-24 23:24:38', '2018-05-24 23:24:38'),
(14, 12, 28, 1, 35000, '2018-05-25 12:35:23', '2018-05-25 12:35:23'),
(15, 13, 28, 1, 35000, '2018-05-25 13:54:19', '2018-05-25 13:54:19'),
(16, 13, 27, 1, 40000, '2018-05-25 13:54:19', '2018-05-25 13:54:19'),
(18, 14, 32, 2, 60000, '2018-06-18 10:58:33', '2018-06-18 10:58:33'),
(19, 14, 24, 1, 30000, '2018-06-18 10:58:33', '2018-06-18 10:58:33'),
(20, 15, 33, 2, 60000, '2018-12-23 12:07:35', '2018-12-23 12:07:35'),
(21, 15, 31, 1, 25000, '2018-12-23 12:07:35', '2018-12-23 12:07:35'),
(22, 16, 32, 1, 30000, '2019-02-22 22:18:16', '2019-02-22 22:18:16'),
(23, 16, 34, 1, 15000, '2019-02-22 22:18:16', '2019-02-22 22:18:16'),
(24, 16, 30, 1, 30000, '2019-02-22 22:18:16', '2019-02-22 22:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(8, 'Văn Học Tình Cảm Lãng Mạn', 'van-hoc-tinh-cam-lang-man', '2018-05-13 21:52:26', '2018-06-14 22:21:36'),
(9, 'Văn Hóa - Xã Hội', 'van-hoa-xa-hoi', '2018-05-13 21:52:26', '2018-06-14 22:21:36'),
(10, 'Chính Trị', 'chinh-tri', '2018-05-13 21:52:26', '2018-06-14 22:21:36'),
(11, 'Lịch Sử Việt Nam', 'lich-su-viet-nam', '2018-05-13 21:52:26', '2018-06-14 22:21:36'),
(12, 'Sống Đẹp', 'song-dep', '2018-05-13 21:52:26', '2018-06-14 22:21:36'),
(13, 'Truyện Ngắn - Bút Ký', 'truyen-ngan-but-ky', '2018-05-13 21:52:26', '2018-06-14 22:21:36'),
(14, 'Khoa Học - Viễn Tưởng', 'khoa-hoc-vien-tuong', '2018-05-13 21:52:26', '2018-06-14 22:21:36'),
(15, 'Thiếu Nhi', 'thieu-nhi', '2018-06-12 23:49:44', '2018-06-12 23:49:44'),
(16, 'Kinh Dị', 'kinh-di', '2018-06-30 23:12:38', '2018-06-30 23:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `email`, `address`, `phone`, `note`, `created_at`, `updated_at`) VALUES
(8, 'Lê Thế Quang', 'lethequang565@gmail.com', '175/74 Hà Tôn Quyền, Phường 4, Quận 11, TP HCM', '01674420257', 'giao truoc 5h', '2018-05-20 10:48:09', '2018-05-20 10:48:09'),
(9, 'LTQ', 'lethequang565@gmail.com', 'Ha Ton Quyen\r\nPhuong 4', '01674420257', 'ko co', '2018-05-20 10:53:25', '2018-05-20 10:53:25'),
(10, 'quang', 'quang@gmail.com', 'tp hcm', '01674420257', NULL, '2018-05-20 11:07:07', '2018-05-20 11:07:07'),
(11, 'quang', 'quang@gmail.com', 'tp hcm', '01674420257', 'ko co', '2018-05-20 11:07:24', '2018-05-20 11:07:24'),
(12, 'Lê Thế Quang', 'lethequang565@gmail.com', '175/74 Hà Tôn Quyền, Phường 4, Quận 11, TP HCM', '01674420257', 'sad', '2018-05-24 23:24:38', '2018-05-24 23:24:38'),
(13, 'quang the', 'lethequang565@gmail.com', 'Ha Ton Quyen\r\nPhuong 4', '01674420257', 'ads', '2018-05-25 12:35:22', '2018-05-25 12:35:22'),
(14, 'Lê Thế Quang', 'lethequang565@gmail.com', '175/74 Hà Tôn Quyền, Phường 4, Quận 11, TP HCM', '1674420257', 'dfds', '2018-05-25 13:54:18', '2018-05-25 13:54:18'),
(15, 'Lê Thế Quang', 'lethequang565@gmail.com', '175/74 Hà Tôn Quyền, Phường 4, Quận 11, TP HCM', '01674420257', 'Giao hàng trước 7h', '2018-06-18 10:58:32', '2018-06-18 10:58:32'),
(16, 'Quang Lê Thế', 'lethequang565@gmail.com', 'Ha Ton Quyen\r\nPhuong 4', '1674420257', 'yyyyyyyyyyyyyyyyyyy', '2018-12-23 12:07:35', '2018-12-23 12:07:35'),
(17, 'Quang Lê Thế', 'lethequang565@gmail.com', 'Ha Ton Quyen\r\nPhuong 4', '1674420257', 'aa', '2019-02-22 22:18:16', '2019-02-22 22:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Trương Ngọc Cường', 'tncvipcool@gmail.com', 'Admin rất là đẹp trai, có thể cho mình làm quen được không', '2018-05-11 16:10:06', '2018-05-11 16:10:06'),
(3, 'Trương Ngọc Cường', 'tncvipcool@gmail.com', 'Admin rất là đẹp trai, có thể cho mình làm quen được không', '2018-05-11 16:10:06', '2018-05-11 16:10:06'),
(4, 'Phạm Đức Thành', 'thanhtiencity@gmail.com', 'Sách rất là hay, không phụ lòng mọi người. Sẽ tiếp tục ủng hộ shop.', '2018-05-11 16:10:06', '2018-05-11 16:10:06'),
(5, 'Phạm Đức Thành', 'thanhtiencity@gmail.com', 'Sách rất là hay, không phụ lòng mọi người. Sẽ tiếp tục ủng hộ shop.', '2018-05-11 16:10:06', '2018-05-11 16:10:06'),
(6, 'đs', 'dsfds', 'dsfds', '2018-05-11 16:10:06', '2018-05-11 16:10:06'),
(7, 'Lê Thế Quang', 'lethequang565@gmail.com', '@@@@@', '2018-05-29 13:40:20', '2018-05-29 13:40:20');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `content`, `created_at`, `updated_at`) VALUES
(3, 'Etiam dictum egestas', '4-200x150.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In faucibus, risus eu volutpat pellentesque, massa felis feugiat velit, nec mattis felis elit a eros. Cras convallis sodales orci, et pretium sapien egestas quis. Donec tellus leo, scelerisque in facilisis a, laoreet vel quam. Suspendisse arcu nisl, tincidunt a vulputate ac, feugiat vitae leo. Integer hendrerit orci id metus venenatis in luctus tellus convallis. Mauris posuere, nisi vel vehicula pellentesque, libero lacus egestas ante, a bibendum mauris mi ut diam. Duis arcu odio, tincidunt eu dictum interdum, sagittis quis dui.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum egestas rutrum. Aenean a metus sit amet massa egestas vulputate sit amet a nisi. Sed nec enim erat. Sed laoreet imperdiet dui fermentum placerat. Donec purus mi, pellentesque et congue at, suscipit ac justo. Pellentesque et augue quis libero aliquam lacinia. Pellentesque a elit vitae nisl vulputate bibendum aliquet quis velit. Integer aliquet cursus erat, in pellentesque sapien tristique vitae. In tempus tincidunt leo id adipiscing. Sed eu sapien egestas arcu condimentum dapibus. Donec sit amet quam ut metus iaculis adipiscing eget quis eros.\r\n\r\nSed id dui dolor, eu consectetur dui. Etiam commodo convallis laoreet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus vel sem at sapien interdum pretium. Sed porttitor, odio in blandit ornare, arcu risus pulvinar ante, a gravida augue justo sagittis ante. Sed mattis consectetur metus quis rutrum. Phasellus ultrices nisi a orci dignissim nec rutrum turpis semper. Donec tempor libero ut nisl lacinia vel dignissim lacus tristique. Etiam accumsan velit in quam laoreet sollicitudin. Mauris euismod lacus ut magna placerat ac molestie augue consequat.', '2018-05-11 16:11:21', '2018-05-11 16:11:21'),
(11, 'Donec tempor libero', '7-200x15066.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In faucibus, risus eu volutpat pellentesque, massa felis feugiat velit, nec mattis felis elit a eros. Cras convallis sodales orci, et pretium sapien egestas quis. Donec tellus leo, scelerisque in facilisis a, laoreet vel quam. Suspendisse arcu nisl, tincidunt a vulputate ac, feugiat vitae leo. Integer hendrerit orci id metus venenatis in luctus tellus convallis. Mauris posuere, nisi vel vehicula pellentesque, libero lacus egestas ante, a bibendum mauris mi ut diam. Duis arcu odio, tincidunt eu dictum interdum, sagittis quis dui.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum egestas rutrum. Aenean a metus sit amet massa egestas vulputate sit amet a nisi. Sed nec enim erat. Sed laoreet imperdiet dui fermentum placerat. Donec purus mi, pellentesque et congue at, suscipit ac justo. Pellentesque et augue quis libero aliquam lacinia. Pellentesque a elit vitae nisl vulputate bibendum aliquet quis velit. Integer aliquet cursus erat, in pellentesque sapien tristique vitae. In tempus tincidunt leo id adipiscing. Sed eu sapien egestas arcu condimentum dapibus. Donec sit amet quam ut metus iaculis adipiscing eget quis eros.</p>\r\n\r\n<p>Sed id dui dolor, eu consectetur dui. Etiam commodo convallis laoreet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus vel sem at sapien interdum pretium. Sed porttitor, odio in blandit ornare, arcu risus pulvinar ante, a gravida augue justo sagittis ante. Sed mattis consectetur metus quis rutrum. Phasellus ultrices nisi a orci dignissim nec rutrum turpis semper. Donec tempor libero ut nisl lacinia vel dignissim lacus tristique. Etiam accumsan velit in quam laoreet sollicitudin. Mauris euismod lacus ut magna placerat ac molestie augue consequat.</p>\r\n', '2018-05-11 16:11:21', '2018-05-11 16:11:21'),
(12, 'Vivamus vel sem at', '6-200x150.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In faucibus, risus eu volutpat pellentesque, massa felis feugiat velit, nec mattis felis elit a eros. Cras convallis sodales orci, et pretium sapien egestas quis. Donec tellus leo, scelerisque in facilisis a, laoreet vel quam. Suspendisse arcu nisl, tincidunt a vulputate ac, feugiat vitae leo. Integer hendrerit orci id metus venenatis in luctus tellus convallis. Mauris posuere, nisi vel vehicula pellentesque, libero lacus egestas ante, a bibendum mauris mi ut diam. Duis arcu odio, tincidunt eu dictum interdum, sagittis quis dui.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum egestas rutrum. Aenean a metus sit amet massa egestas vulputate sit amet a nisi. Sed nec enim erat. Sed laoreet imperdiet dui fermentum placerat. Donec purus mi, pellentesque et congue at, suscipit ac justo. Pellentesque et augue quis libero aliquam lacinia. Pellentesque a elit vitae nisl vulputate bibendum aliquet quis velit. Integer aliquet cursus erat, in pellentesque sapien tristique vitae. In tempus tincidunt leo id adipiscing. Sed eu sapien egestas arcu condimentum dapibus. Donec sit amet quam ut metus iaculis adipiscing eget quis eros.</p>\r\n\r\n<p>Sed id dui dolor, eu consectetur dui. Etiam commodo convallis laoreet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus vel sem at sapien interdum pretium. Sed porttitor, odio in blandit ornare, arcu risus pulvinar ante, a gravida augue justo sagittis ante. Sed mattis consectetur metus quis rutrum. Phasellus ultrices nisi a orci dignissim nec rutrum turpis semper. Donec tempor libero ut nisl lacinia vel dignissim lacus tristique. Etiam accumsan velit in quam laoreet sollicitudin. Mauris euismod lacus ut magna placerat ac molestie augue consequat.</p>\r\n', '2018-05-11 16:11:21', '2018-05-11 16:11:21'),
(13, 'Lorem ipsum dolor sit', '8-200x150.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel mauris sollicitudin dignissim. Phasellus ultrices tellus eget ipsum ornare molestie scelerisque eros dignissim. Phasellus fringilla hendrerit lectus nec vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In faucibus, risus eu volutpat pellentesque, massa felis feugiat velit, nec mattis felis elit a eros. Cras convallis sodales orci, et pretium sapien egestas quis. Donec tellus leo, scelerisque in facilisis a, laoreet vel quam. Suspendisse arcu nisl, tincidunt a vulputate ac, feugiat vitae leo. Integer hendrerit orci id metus venenatis in luctus tellus convallis. Mauris posuere, nisi vel vehicula pellentesque, libero lacus egestas ante, a bibendum mauris mi ut diam. Duis arcu odio, tincidunt eu dictum interdum, sagittis quis dui.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum egestas rutrum. Aenean a metus sit amet massa egestas vulputate sit amet a nisi. Sed nec enim erat. Sed laoreet imperdiet dui fermentum placerat. Donec purus mi, pellentesque et congue at, suscipit ac justo. Pellentesque et augue quis libero aliquam lacinia. Pellentesque a elit vitae nisl vulputate bibendum aliquet quis velit. Integer aliquet cursus erat, in pellentesque sapien tristique vitae. In tempus tincidunt leo id adipiscing. Sed eu sapien egestas arcu condimentum dapibus. Donec sit amet quam ut metus iaculis adipiscing eget quis eros.</p>\r\n\r\n<p>Sed id dui dolor, eu consectetur dui. Etiam commodo convallis laoreet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus vel sem at sapien interdum pretium. Sed porttitor, odio in blandit ornare, arcu risus pulvinar ante, a gravida augue justo sagittis ante. Sed mattis consectetur metus quis rutrum. Phasellus ultrices nisi a orci dignissim nec rutrum turpis semper. Donec tempor libero ut nisl lacinia vel dignissim lacus tristique. Etiam accumsan velit in quam laoreet sollicitudin. Mauris euismod lacus ut magna placerat ac molestie augue consequat.</p>\r\n', '2018-05-11 16:11:21', '2018-05-11 16:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_author` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `id_author`, `title`, `slug`, `price`, `image`, `year`, `quantity`, `description`, `created_at`, `updated_at`) VALUES
(10, 8, 31, '50 Sắc Thái (Fifty Shades Of Grey) - Tập 4: Grey', '50-sac-thai-fifty-shades-of-grey-tap-4-grey', 45000, '10292.jpg', '2004', 20, '<p>Một số nh&agrave; ph&ecirc; b&igrave;nh n&oacute;i rằng phần 4 của bộ tiểu thuyết&nbsp;<em>50 sắc th&aacute;i</em>&nbsp;n&agrave;y l&agrave; một sự lắp gh&eacute;p th&ocirc; thiển v&agrave; lặp lại những g&igrave; đ&atilde; c&oacute; &ndash; những g&igrave; đ&atilde; được ch&uacute; &yacute; của 3 phần trước.</p>\r\n\r\n<p>T&ocirc;i ho&agrave;n to&agrave;n kh&ocirc;ng nghĩ như vậy.</p>\r\n\r\n<p>Sự th&uacute; vị lớn nhất của phần 4 n&agrave;y nằm ở việc t&aacute;c giả khai th&aacute;c t&acirc;m l&yacute; trong từng h&agrave;nh vi của Grey. Grey trong suy nghĩ của Anastasia kh&aacute;c gần như ho&agrave;n to&agrave;n với Grey bản chất h&agrave;nh động v&agrave; lời n&oacute;i của ch&iacute;nh anh.</p>\r\n\r\n<p>C&oacute; một thực tế rất r&otilde; r&agrave;ng v&agrave; l&agrave;m an l&ograve;ng những c&ocirc; n&agrave;ng l&atilde;ng mạn l&agrave; Grey thực sự y&ecirc;u Ana, ngay từ lần gặp đầu ti&ecirc;n, anh đ&atilde; d&agrave;y c&ocirc;ng đeo đuổi, d&agrave;y c&ocirc;ng để Ana trở th&agrave;nh người phụ thuộc v&agrave; đ&oacute; cũng l&agrave; qu&aacute; tr&igrave;nh anh t&igrave;m lại ch&iacute;nh con người, bản thể v&agrave; t&igrave;nh y&ecirc;u b&igrave;nh thường của m&igrave;nh. Những tổn thương t&acirc;m l&yacute; thời ấu thơ, sự thiếu vắng t&igrave;nh cảm gia đ&igrave;nh, sự lệch lạc trong nhận thức v&agrave; h&agrave;nh động t&igrave;nh dục đầu đời đ&atilde; tạo n&ecirc;n một Grey c&oacute; phần &ldquo;lập dị&rdquo; trong chuyện y&ecirc;u đương. Độc giả sẽ thấu hiểu ch&acirc;n dung t&acirc;m hồn của Grey trong phần n&agrave;y v&agrave; chia sẻ với anh hơn, th&ecirc;m y&ecirc;u mến nh&acirc;n vật n&agrave;y.</p>\r\n\r\n<p>Dĩ nhi&ecirc;n, sex l&agrave; phần tất yếu, l&agrave; đặc sản của bộ tiểu thuyết &ldquo;ng&ocirc;n t&igrave;nh Mỹ&rdquo; n&agrave;y n&ecirc;n chắc chắn&nbsp;<em>50 sắc th&aacute;i</em>&nbsp;kh&ocirc;ng thể kh&ocirc;ng c&oacute; những m&ocirc; tả hết sức n&oacute;ng bỏng v&agrave; đ&ocirc;i khi kh&aacute; trần trụi. V&igrave; điều n&agrave;y, t&ocirc;i khuyến c&aacute;o độc giả dưới 18 tuổi kh&ocirc;ng n&ecirc;n đọc. Tương tự như vậy, c&aacute;c nh&agrave; đạo đức học hay trong-s&aacute;ng-học cũng kh&ocirc;ng n&ecirc;n đọc!</p>\r\n\r\n<p>Waka tr&acirc;n trọng giới thiệu cuốn s&aacute;ch &quot;<strong>50 Sắc Th&aacute;i (Fifty shades of Grey) - Tập 4: Grey</strong>&quot;!</p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:17'),
(11, 8, 32, 'Yêu Người Tử Tù', 'yeu-nguoi-tu-tu', 30000, '8118.png', '2015', 20, '<p>T&oacute;m tắt s&aacute;ch&nbsp;<strong>Y&ecirc;u Người Tử T&ugrave;</strong>: Mười lăm năm trước, Yoo Jeong từ một c&ocirc; b&eacute; hiền l&agrave;nh, chăm chỉ, ngoan ngo&atilde;n đ&atilde; chịu một c&uacute; sốc lớn khiến cuộc đời c&ocirc; ho&agrave;n to&agrave;n thay đổi. Sau lần tự tử thứ ba bất th&agrave;nh, c&ocirc; tr&oacute;t hứa với c&ocirc; M&ocirc;nica, l&agrave; c&ocirc; ruột v&agrave; cũng l&agrave; một nữ tu, phải tới trại giam Seoul để gặp những người tử t&ugrave;. Tại đ&acirc;y, c&ocirc; đ&atilde; gặp Yoon Soo - một kẻ giết người bị kết &aacute;n tử h&igrave;nh.<br />\r\n<br />\r\nMặc d&ugrave; rất gh&ecirc; tởm tội &aacute;c của anh ta, nhưng c&oacute; một điều g&igrave; đ&oacute; trong s&acirc;u thẳm t&acirc;m hồn người đ&agrave;n &ocirc;ng n&agrave;y khiến Yoo Jeong ch&uacute; &yacute;. C&ocirc; trở lại thăm anh v&agrave;o tuần tiếp theo, rồi những tuần tiếp theo nữa... Dần d&agrave;, một thứ t&igrave;nh cảm kh&aacute;c lạ đ&atilde; nhen nh&oacute;m l&ecirc;n b&ecirc;n trong họ. N&oacute; như một ph&eacute;p m&agrave;u quyền năng gi&uacute;p họ vượt qua những thương tổn, l&agrave;m thay đổi con người v&agrave; niềm tin của họ. Cho đến khi cả hai c&oacute; thể gọi t&ecirc;n mối quan hệ ấy th&igrave; chợt nhận ra thời gian hạnh ph&uacute;c c&ograve;n lại qu&aacute; ngắn ngủi...</p>\r\n\r\n<p>Mời c&aacute;c bạn đ&oacute;n đọc s&aacute;ch&nbsp;<strong>Y&ecirc;u Người Tử T&ugrave;.</strong></p>', '0000-00-00 00:00:00', '2018-07-01 13:00:00'),
(13, 10, 43, ' Ban Ki Moon', 'ban-ki-moon', 40000, '7914.jpg', '2010', 15, '<p><strong>C</strong>uốn s&aacute;ch&nbsp;<strong>Ban Ki Moon</strong><em>&nbsp;- H&atilde;y học như kẻ ngốc v&agrave; mơ ước như thi&ecirc;n t&agrave;i</em>&nbsp;ra đời mới đ&oacute; đ&atilde; 5 năm. Trong thời gian đ&oacute;, Tổng thư k&yacute; Li&ecirc;n Hợp Quốc Ban Ki Moon&nbsp;đ&atilde;b&ocirc;n ba khắp nơi v&igrave; h&ograve;a&nbsp;b&igrave;nh thế giới v&agrave;&nbsp;v&igrave; những vấn đề mang t&iacute;nh to&agrave;n cầu như biến đổi kh&iacute; hậu, vấn nạn đ&oacute;i ngh&egrave;o,&hellip; V&agrave; bằng những nỗ lực đ&oacute;, &ocirc;ng được t&iacute;n nhiệm t&aacute;i đắc cử vị tr&iacute; n&agrave;y nhiệm kỳ thứ hai.</p>\r\n\r\n<p>Hơn nữa, thế hệ trẻ&nbsp;H&agrave;n Quốc đ&atilde; kh&ocirc;ng&nbsp;do dự&nbsp;b&igrave;nh chọn Ban Ki Moon l&agrave; nh&acirc;n vật được t&ocirc;n k&iacute;nh nhất&nbsp;tại đất nước n&agrave;y.</p>\r\n\r\n<p>Mời c&aacute;c bạn đ&oacute;n đọc s&aacute;ch&nbsp;<strong>Ban Ki Moon.</strong></p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:17'),
(14, 10, 34, ' SÚNG, VI TRÙNG VÀ THÉP', 'sung-vi-trung-va-thep', 60000, '7527.jpg', '2015', 20, '<p><strong>J</strong>ared Mason Diamond (10/9/1937)&nbsp;l&agrave;&nbsp;nh&agrave; khoa học Mỹ v&agrave; t&aacute;c giả nổi tiếng với c&aacute;c t&aacute;c phẩm:&nbsp;<em>Lo&agrave;i tinh tinh thứ ba; S&uacute;ng</em>,&nbsp;<em>vi tr&ugrave;ng v&agrave; th&eacute;p; Sụp đổ; Thế giới cho đến ng&agrave;y h&ocirc;m qua,</em>&nbsp;v.v&hellip; Tuy theo học v&agrave; c&oacute; bằng tiến sĩ về sinh l&yacute;&nbsp;học, nhưng kiến thức của &ocirc;ng bao tr&ugrave;m hầu như mọi ng&agrave;nh, từ kiến tr&uacute;c, ng&ocirc;n ngữ, khảo cổ, đến động vật học, y học. &Ocirc;ng cũng kh&ocirc;ng phải l&agrave; một học giả &ldquo;th&aacute;p ng&agrave;&rdquo; khi từng chu du nhiều ch&acirc;u lục, thậm ch&iacute; sống nhiều năm ở những nơi &ldquo;tận c&ugrave;ng thế giới&rdquo; (như đảo T&acirc;n Ghi-n&ecirc;, đảo Phục Sinh).&nbsp;&Ocirc;ng cũng&nbsp;được xếp&nbsp;v&agrave;o h&agrave;ng ngũ những nh&agrave; tư tưởng hiện đại c&oacute; nhiều ảnh hưởng nhất ở Mỹ.</p>\r\n\r\n<p>Từ khoảng đầu thập ni&ecirc;n 90 đến nay, Jared Diamond lu&ocirc;n nung nấu&nbsp;đi t&igrave;m c&acirc;u trả lời cho&nbsp;c&acirc;u hỏi:&nbsp;<em>Sau hơn 13.000 năm lịch sử, tại sao sự ph&aacute;t triển của c&aacute;c giống d&acirc;n tr&ecirc;n thế giới đ&atilde; trở th&agrave;nh qu&aacute; kh&aacute;c nhau như ng&agrave;y nay?</em>&nbsp;Theo Diamond, c&aacute;c nh&agrave; viết sử (đơn cử ở phương T&acirc;y) đ&atilde; phạm một lỗi lầm v&igrave; họ đ&atilde; nh&igrave;n kh&ocirc;ng đ&uacute;ng khu&ocirc;n mặt lịch sử của lo&agrave;i người. Cụ thể, họ chỉ ch&uacute; trọng v&agrave;o c&aacute;c x&atilde; hội tương đối văn minh (&iacute;t nhất l&agrave; c&oacute; chữ viết) ở &Acirc;u &Aacute; (Eurasia) v&agrave; Bắc Phi, v&agrave; ngay trong d&ograve;ng sử của lục địa &Acirc;u &Aacute;, họ lại chỉ tập trung v&agrave;o ph&iacute;a T&acirc;y, &iacute;t ch&uacute; &yacute; đến c&aacute;c quốc gia ph&iacute;a Đ&ocirc;ng (nổi bật l&agrave; Trung Quốc, rồi đến cả Nhật Bản v&agrave; Đ&ocirc;ng Nam &Aacute;). Hơn nữa, phần lớn sử k&yacute;&nbsp;hiện nay chỉ nh&igrave;n v&agrave;o khoảng 3.000 năm sau n&agrave;y, d&ugrave; rằng khoảng thời gian đ&oacute; chỉ l&agrave; 0,1% trong chiều d&agrave;i 5 triệu năm lo&agrave;i người c&oacute; mặt tr&ecirc;n tr&aacute;i đất. Theo Diamond, nhờ những tiến bộ như sinh vật học ph&acirc;n tử, di truyền học, sinh địa l&yacute;, khảo cổ học, v&agrave; ng&ocirc;n ngữ học đ&atilde; đến l&uacute;c ch&uacute;ng ta c&oacute; thể giải th&iacute;ch sự kh&aacute;c biệt về tr&igrave;nh độ ph&aacute;t triển giữa c&aacute;c nước. V&agrave; những t&aacute;c phẩm của &ocirc;ng lần lượt xuất bản qua c&aacute;c năm đ&atilde; l&agrave;m s&aacute;ng tỏ vấn đề đ&oacute;.</p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:17'),
(16, 10, 39, ' Kể Chuyện Danh Nhân Việt Nam', 'ke-chuyen-danh-nhan-viet-nam', 35000, '10372.jpg', '2015', 50, '<p>Ch&uacute;ng ta - những người con của Đất Việt lu&ocirc;n c&oacute; quyền tự h&agrave;o về những trang sử vẻ vang của d&acirc;n tộc.<br />\r\n<br />\r\nCuốn s&aacute;ch &quot;Kể chuyện danh nh&acirc;n Việt Nam&quot; khắc hoạ, phản &aacute;nh một c&aacute;ch ch&acirc;n thực, sinh động cuộc đời, sự nghiệp cũng như những chiến c&ocirc;ng hiển h&aacute;ch của 27 danh nh&acirc;n lịch sử d&acirc;n tộc được tr&igrave;nh b&agrave;y theo thứ tự thời gian với mục đ&iacute;ch lưu truyền cho c&aacute;c thế hệ sau:<br />\r\n<br />\r\n- B&agrave; Triệu (225 - 248).</p>\r\n\r\n<p>- L&yacute; C&ocirc;ng Uẩn (974 - 1028).</p>\r\n\r\n<p>- L&yacute; Thường Kiệt (1019 - 1105).</p>\r\n\r\n<p>- Ỷ Lan phu nh&acirc;n (? &ndash; 1117)</p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:17'),
(17, 12, 33, 'Sức Mạnh Của Tĩnh Tâm', 'suc-manh-cua-tinh-tam', 40000, '10422.jpg', '2014', 40, '<p>Tr&aacute;i tim của ch&uacute;ng ta giống như một chiếc cốc thủy tinh. Khi cốc đựng đầy nước &eacute;p tr&aacute;i c&acirc;y, người ta sẽ n&oacute;i: &quot;Đ&acirc;y l&agrave; một cốc nước &eacute;p hoa quả&quot;. Khi n&oacute; đựng đầy sữa, người ta lại n&oacute;i: &quot;Đ&acirc;y l&agrave; một cốc sữa&quot;. C&ograve;n chỉ khi chiếc cốc trống trơn th&igrave; người ta mới n&oacute;i: &quot;Đ&acirc;y l&agrave; một c&aacute;i cốc&quot;. Rất nhiều l&uacute;c, tr&aacute;i tim của ch&uacute;ng ta chất chứa qu&aacute; nhiều thứ, đến nỗi kh&ocirc;ng thể nh&igrave;n thấy được c&aacute;i t&ocirc;i ch&acirc;n thực. V&igrave; vậy, chỉ c&oacute; vứt bỏ mọi sự rối ren để t&acirc;m tĩnh lại th&igrave; mới c&oacute; thể xoa dịu được t&acirc;m trạng lo lắng bất an trong l&ograve;ng, lấy lại sự y&ecirc;n b&igrave;nh v&agrave; niềm vui trong tim.</p>\r\n\r\n<p>&quot;Gặp được c&aacute;i t&ocirc;i tĩnh t&acirc;m&quot;, d&ugrave; biết ph&iacute;a trước l&agrave; v&ugrave;ng hiểm trở, bạn cũng c&oacute; thể coi l&agrave; đồng bằng để vững bước đi qua; d&ugrave; trước mắt thế sự b&atilde;i bể nương d&acirc;u, đổi thay nhanh ch&oacute;ng, bạn cũng vẫn c&oacute; được sự b&igrave;nh an trong l&ograve;ng.&quot;Gặp được c&aacute;i t&ocirc;i tĩnh t&acirc;m&quot;, tuy tạm thời phải chịu ấm ức v&agrave; kh&ocirc;ng vui, vẫn c&oacute; thể y&ecirc;n l&ograve;ng; tuy cuộc sống b&igrave;nh dị, cũng c&oacute; thể tận hưởng năm th&aacute;ng b&igrave;nh y&ecirc;n.</p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:17'),
(18, 9, 24, 'Triết Học Albert Camus', 'triet-hoc-albert-camus', 40000, '10557.jpg', '2012', 60, '<p>Triết học của Albert Camus quan t&acirc;m đến kinh nghiệm sống về c&aacute;i hữu hạn v&agrave; c&aacute;i tuyệt đối (l&rsquo;exp&eacute;rience v&eacute;cue du fini et de l&rsquo;absolu / the lived experience of the finite and the absolute). C&aacute;i hữu hạn l&agrave; cảm thức về t&igrave;nh trạng vong th&acirc;n / ph&oacute;ng thể (alienation) của ch&uacute;ng ta, t&iacute;nh dễ bị tổn thương (vulnerability), sự yếu đuối (weakness), t&iacute;nh bất to&agrave;n (imperfection), t&igrave;nh trạng kh&ocirc;ng ai n&acirc;ng đỡ (helplessness), v&agrave; sự hạn chế của nhận thức (limitation of knowledge). C&oacute; lẽ điều n&agrave;y thường gặp nhất trong t&iacute;nh bất khả ti&ecirc;n liệu (unpredictableness) của những sự việc h&agrave;ng ng&agrave;y. Tuy nhi&ecirc;n t&iacute;nh hữu hạn đ&oacute; lại đồng hiện hữu (coexist) với một &yacute; thức vi diệu về tuyệt đối vốn thường được hiểu, dưới những dạng kh&aacute;c nhau, như một Thượng đế bất biến, hay như một vũ trụ b&iacute; ẩn m&agrave; khởi nguy&ecirc;n hay tận c&ugrave;ng dường như bất khả tư nghị đối với tư tưởng thuần l&yacute; (impenetrable to rational thought), hay cảm thức y&ecirc;n b&igrave;nh v&agrave; duy nhất (one&rsquo;s sense of peace and oneness) trong sự hiện diện của nắng, gi&oacute;, v&agrave; của biển trời, v.v...</p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:17'),
(20, 11, 38, 'Tướng Lĩnh Việt Nam Thế Kỉ XX Qua Lời Kể Của Người Thân', 'tuong-linh-viet-nam-the-ki-xx-qua-loi-ke-cua-nguoi-than', 100000, '9856.jpg', '2015', 200, '<p>T&oacute;m tắt cuốn s&aacute;ch &quot;<strong>Tướng Lĩnh Việt Nam Thế Kỉ XX Qua Lời Kể Của Người Th&acirc;n</strong>&quot;:</p>\r\n\r\n<p>Cuốn s&aacute;ch Tướng Lĩnh Việt Nam Thế Kỉ XX Qua Lời Kể Của Người Th&acirc;n dựng lại ch&acirc;n dung đời thường của những con người từng l&agrave;m n&ecirc;n lịch sử. Cuốn s&aacute;ch gi&uacute;p bạn đọc t&igrave;m hiểu về cuộc sống đời thường của 15 trong số c&aacute;c vị tướng được thụ phong trong thời kỳ chiến tranh giải ph&oacute;ng như Đại tướng Nguyễn Ch&iacute; Thanh, Đại tướng Văn Tiến Dũng, Đại tướng L&ecirc; Đức Anh, Đại tướng L&ecirc; Trọng Tấn, Thượng tướng Ho&agrave;ng Minh Thảo, Trung tướng Phạm Hồng Sơn...</p>\r\n\r\n<p>Kh&ocirc;ng chỉ cung cấp nhiều tư liệu qu&yacute;, cuốn s&aacute;ch c&ograve;n c&oacute; nhiều c&acirc;u chuyện c&oacute; gi&aacute; trị, được viết trung thực, r&otilde; r&agrave;ng về th&acirc;n thế sự nghiệp, thể hiện r&otilde; cốt c&aacute;ch, phương ph&aacute;p, t&aacute;c phong của mỗi vị tướng lĩnh tr&ecirc;n từng cương vị c&ocirc;ng t&aacute;c. Từ đ&oacute;, người đọc thấy được vai tr&ograve; l&atilde;nh đạo, chỉ huy v&agrave; những c&ocirc;ng lao đ&oacute;ng g&oacute;p của c&aacute;c vị tướng lĩnh Việt Nam đối với sự nghiệp C&aacute;ch mạng của Đảng.</p>\r\n\r\n<p>Waka tr&acirc;n trọng giới thiệu s&aacute;ch &quot;<strong>Tướng Lĩnh Việt Nam Thế Kỉ XX Qua Lời Kể Của Người Th&acirc;n</strong>&quot;!</p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:17'),
(21, 11, 26, 'Chim Ưng Và Vịt', 'chim-ung-va-vit', 45000, '7569.jpg', '2014', 100, '<p>T&oacute;m tắt s&aacute;ch&nbsp;<strong>Chim ưng v&agrave; vịt:</strong></p>\r\n\r\n<p><em>... Năm 1282, m&ugrave;a thu, th&aacute;ng 8 vua Nguy&ecirc;n Hốt Tất Liệt sai nguy&ecirc;n so&aacute;i Toa Đ&ocirc; đem đo&agrave;n chiến thuyền 1.000 chiếc c&ugrave;ng 20 vạn qu&acirc;n tinh nhuệ từ Ung Ch&acirc;u, vượt biển v&agrave;o đ&aacute;nh Chi&ecirc;m Th&agrave;nh. Tin dữ được truyền về kinh đ&ocirc; Thăng Long. Th&aacute;i Thượng Ho&agrave;ng Trần Th&aacute;nh T&ocirc;ng v&agrave; vua Trần Nh&acirc;n T&ocirc;ng v&ocirc; c&ugrave;ng sốt ruột cho triệu Quốc C&ocirc;ng Tiết Chế Hưng Đạo Vương Trần Quốc Tuấn ở điền trang Vạn Kiếp năm lần bẩy lượt m&agrave; Quốc Tuấn kh&ocirc;ng về. Cuối c&ugrave;ng vua Trần Nh&acirc;n T&ocirc;ng phải sai quan Chi luận cục thủ Đỗ Khắc Chung đến Vạn Kiếp để vời Trần Hưng Đạo, Khắc Chung c&oacute; t&agrave;i ăn n&oacute;i biết c&aacute;ch &quot;lựa gi&oacute; thả diều&quot; n&ecirc;n được hai &nbsp;vua Trần y&ecirc;u lắm, lu&ocirc;n cho ở b&ecirc;n cạnh.</em></p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:17'),
(22, 11, 44, ' Ngô Vương Quyền', 'ngo-vuong-quyen', 70000, '7500.jpg', '2015', 80, '<p><strong><em>B</em></strong><em>ạn đọc th&acirc;n mến!</em></p>\r\n\r\n<p>Lịch sử văn h&oacute;a của một d&acirc;n tộc kh&ocirc;ng phải của ri&ecirc;ng c&aacute; nh&acirc;n n&agrave;o, ch&iacute;nh v&igrave; vậy, việc bảo tồn, g&igrave;n giữ v&agrave; ph&aacute;t triển lịch sử văn h&oacute;a cũng kh&ocirc;ng phải ri&ecirc;ng một người n&agrave;o c&oacute; thể g&aacute;nh v&aacute;c được, n&oacute; thuộc về nhận thức chung của to&agrave;n x&atilde; hội v&agrave; vai tr&ograve; của từng nh&acirc;n tố trong mỗi chặng đường lịch sử. Lịch sử l&agrave; một khoa học. Lịch sử kh&ocirc;ng phải l&agrave; việc thống k&ecirc; sự kiện một c&aacute;ch kh&ocirc; khan rời rạc. Bởi mỗi sự kiện trong tiến tr&igrave;nh đ&oacute; đều c&oacute; mối li&ecirc;n kết chặt chẽ với nhau bằng sợi d&acirc;y v&ocirc; h&igrave;nh xuy&ecirc;n suốt kh&ocirc;ng gian v&agrave; thời gian tạo n&ecirc;n lịch sử của một d&acirc;n tộc.</p>\r\n\r\n<p>Đồng h&agrave;nh với mối quan t&acirc;m của to&agrave;n x&atilde; hội, C&ocirc;ng ty Cổ phần S&aacute;ch Alpha - một doanh nghiệp hoạt động trong lĩnh vực xuất bản, với t&ocirc;n chỉ &ldquo;Tri thức l&agrave; sức mạnh&rdquo; - đặc biệt quan t&acirc;m tới việc g&oacute;p phần n&acirc;ng cao hiểu biết của người d&acirc;n về truyền thống văn h&oacute;a lịch sử đất nước.</p>\r\n\r\n<p>Theo nhiều kết quả khảo s&aacute;t, đ&aacute;nh gi&aacute; nhu cầu của bạn đọc cho thấy, &ldquo;lỗ hổng lịch sử&rdquo; ở kh&ocirc;ng &iacute;t người trẻ hiện nay ho&agrave;n to&agrave;n c&oacute; thể b&ugrave; lấp một phần dựa tr&ecirc;n nhiều nguồn tư liệu, c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu, s&aacute;ch cổ s&aacute;ch qu&yacute; hiện đang được c&aacute;c Viện nghi&ecirc;n cứu, c&aacute;c tổ chức, c&aacute; nh&acirc;n lưu giữ. Để chung tay t&aacute;i hiện một c&aacute;ch r&otilde; n&eacute;t những mảnh gh&eacute;p lịch sử d&acirc;n tộc, C&ocirc;ng ty Cổ phần S&aacute;ch Alpha đ&atilde; triển khai dự &aacute;n xuất bản mang t&ecirc;n G&oacute;c nh&igrave;n sử Việt với mục đ&iacute;ch xuất bản lại v&agrave; xuất bản mới một c&aacute;ch c&oacute; hệ thống c&aacute;c c&ocirc;ng tr&igrave;nh, tư liệu, s&aacute;ch nghi&ecirc;n cứu, s&aacute;ch văn học c&oacute; gi&aacute; trị&hellip; về lịch sử, bước đầu h&igrave;nh th&agrave;nh n&ecirc;n Tủ s&aacute;ch Alpha Di sản.</p>\r\n\r\n<p>Cuốn s&aacute;ch bạn đang cầm tr&ecirc;n tay l&agrave; một trong những sản phẩm đầu ti&ecirc;n của dự &aacute;n n&agrave;y.</p>\r\n\r\n<p><em><strong>Xin tr&acirc;n trọng giới thiệu!</strong></em></p>\r\n\r\n<p>&nbsp;Mời c&aacute;c bạn đ&oacute;n đọc s&aacute;ch&nbsp;<strong>Ng&ocirc; Vương Quyền.</strong></p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:17'),
(23, 11, 29, ' Đất Nước Việt Nam Qua Các Đời', 'dat-nuoc-viet-nam-qua-cac-doi', 25000, '7497.jpg', '2015', 50, '<p>Giới thiệu</p>\r\n\r\n<p>T&oacute;m tắt s&aacute;ch&nbsp;<strong>Đất nước Việt Nam qua c&aacute;c đời.</strong></p>\r\n\r\n<p><strong><em>B</em></strong><em>ạn đọc th&acirc;n mến!</em></p>\r\n\r\n<p>Lịch sử văn h&oacute;a của một d&acirc;n tộc kh&ocirc;ng phải của ri&ecirc;ng c&aacute; nh&acirc;n n&agrave;o, ch&iacute;nh v&igrave; vậy, việc bảo tồn, g&igrave;n giữ v&agrave; ph&aacute;t triển lịch sử văn h&oacute;a cũng kh&ocirc;ng phải ri&ecirc;ng một người n&agrave;o c&oacute; thể g&aacute;nh v&aacute;c được, n&oacute; thuộc về nhận thức chung của to&agrave;n x&atilde; hội v&agrave; vai tr&ograve; của từng nh&acirc;n tố trong mỗi chặng đường lịch sử. Lịch sử l&agrave; một khoa học. Lịch sử kh&ocirc;ng phải l&agrave; việc thống k&ecirc; sự kiện một c&aacute;ch kh&ocirc; khan rời rạc. Bởi mỗi sự kiện trong tiến tr&igrave;nh đ&oacute; đều c&oacute; mối li&ecirc;n kết chặt chẽ với nhau bằng sợi d&acirc;y v&ocirc; h&igrave;nh xuy&ecirc;n suốt kh&ocirc;ng gian v&agrave; thời gian tạo n&ecirc;n lịch sử của một d&acirc;n tộc.</p>\r\n\r\n<p>Đồng h&agrave;nh với mối quan t&acirc;m của to&agrave;n x&atilde; hội, C&ocirc;ng ty Cổ phần S&aacute;ch Alpha - một doanh nghiệp hoạt động trong lĩnh vực xuất bản, với t&ocirc;n chỉ &ldquo;Tri thức l&agrave; sức mạnh&rdquo; - đặc biệt quan t&acirc;m tới việc g&oacute;p phần n&acirc;ng cao hiểu biết của người d&acirc;n về truyền thống văn h&oacute;a lịch sử đất nước.</p>\r\n\r\n<p>Theo nhiều kết quả khảo s&aacute;t, đ&aacute;nh gi&aacute; nhu cầu của bạn đọc cho thấy, &ldquo;lỗ hổng lịch sử&rdquo; ở kh&ocirc;ng &iacute;t người trẻ hiện nay ho&agrave;n to&agrave;n c&oacute; thể b&ugrave; lấp một phần dựa tr&ecirc;n nhiều nguồn tư liệu, c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu, s&aacute;ch cổ s&aacute;ch qu&yacute; hiện đang được c&aacute;c Viện nghi&ecirc;n cứu, c&aacute;c tổ chức, c&aacute; nh&acirc;n lưu giữ. Để chung tay t&aacute;i hiện một c&aacute;ch r&otilde; n&eacute;t những mảnh gh&eacute;p lịch sử d&acirc;n tộc, C&ocirc;ng ty Cổ phần S&aacute;ch Alpha đ&atilde; triển khai dự &aacute;n xuất bản mang t&ecirc;n G&oacute;c nh&igrave;n sử Việt với mục đ&iacute;ch xuất bản lại v&agrave; xuất bản mới một c&aacute;ch c&oacute; hệ thống c&aacute;c c&ocirc;ng tr&igrave;nh, tư liệu, s&aacute;ch nghi&ecirc;n cứu, s&aacute;ch văn học c&oacute; gi&aacute; trị&hellip; về lịch sử, bước đầu h&igrave;nh th&agrave;nh n&ecirc;n Tủ s&aacute;ch Alpha Di sản.</p>\r\n\r\n<p>Cuốn s&aacute;ch bạn đang cầm tr&ecirc;n tay l&agrave; một trong những sản phẩm đầu ti&ecirc;n của dự &aacute;n n&agrave;y.</p>\r\n\r\n<p><em><strong>Xin tr&acirc;n trọng giới thiệu!</strong></em></p>\r\n\r\n<p>Waka tr&acirc;n trọng giới thiệu s&aacute;ch&nbsp;<strong>Đất nước Việt Nam qua c&aacute;c đời.</strong></p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:17'),
(24, 14, 25, 'Bá Tước Monto Crixto', 'ba-tuoc-monto-crixto', 30000, '7698.jpg', '2014', 50, '<p><strong>B&aacute; tước Monte Cristo</strong>&nbsp;l&agrave; một tiểu thuyết phi&ecirc;u lưu của Alexandre Dumas cha. C&ugrave;ng với một t&aacute;c phẩm kh&aacute;c của &ocirc;ng l&agrave; Ba ch&agrave;ng l&iacute;nh ngự l&acirc;m, t&aacute;c phẩm thường được xem l&agrave; t&aacute;c phẩm văn học nổi tiếng nhất của Dumas.</p>\r\n\r\n<p>Mời c&aacute;c bạn đ&oacute;n đọc s&aacute;ch&nbsp;<strong>B&aacute; tước Monto Crixto.</strong></p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:18'),
(25, 14, 36, 'Erec Rex - Tập 1 - Mắt Rồng - Phần 2', 'erec-rex-tap-1-mat-rong-phan-2', 30000, '7338.jpg', '2015', 50, '<p>T&oacute;m tắt s&aacute;ch&nbsp;<strong>Erec Rex - Tập 1 - Mắt Rồng:</strong></p>\r\n\r\n<p>Erec Rez mười hai tuổi, c&oacute; một con mắt bằng thuỷ tinh v&agrave; trong đầu c&oacute; một tiếng n&oacute;i lạ, lu&ocirc;n sai bảo cậu l&agrave;m những việc lạ l&ugrave;ng. Một ng&agrave;y kia, tỉnh dậy, Erec thấy mẹ m&igrave;nh biến mất, chỉ để lại cặp k&iacute;nh thần trong nh&agrave; tắm. C&ugrave;ng với c&ocirc; bạn &ldquo;bụi đời&rdquo; Bethany, Erec đi t&igrave;m mẹ. Cả hai lọt v&agrave;o xứ Thần Quốc v&agrave; buộc phải tham gia những cuộc thi đầy ma thuật v&agrave; nguy hiểm. L&agrave;m sao ch&uacute;ng thắng được bọn trẻ lắm ph&eacute;p kia? L&agrave;m sao cứu được mẹ? V&agrave; l&agrave;m sao ch&uacute;ng ph&aacute;t hiện được thực sự ch&uacute;ng l&agrave; ai&hellip;</p>\r\n\r\n<p>Mắt rồng l&agrave; t&aacute;c phẩm của một trong những nh&agrave; văn kỳ ảo h&agrave;ng đầu của Anh quốc, Kaza Kingsley. Kaza l&agrave; một người y&ecirc;u du lịch v&agrave; th&aacute;m hiểm, đặc biệt l&agrave; những nơi b&iacute; ẩn v&agrave; nguy hiểm. Kaza c&ograve;n l&agrave; một ca sĩ, một người nghiện xem phim, v&agrave; y&ecirc;u đọc s&aacute;ch&hellip; C&ocirc; sống c&ugrave;ng gia đ&igrave;nh ở Cincinnati.</p>\r\n\r\n<p>Mời c&aacute;c bạn đ&oacute;n đọc s&aacute;ch&nbsp;<strong>Erec Rex - Tập 1 - Mắt Rồng - Phần 2.</strong></p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:18'),
(27, 9, 27, ' Du Kí Châu Phi', 'du-ki-chau-phi', 40000, '10224.jpg', '2014', 50, '<p>T&oacute;m tắt s&aacute;ch&nbsp;<strong>Du K&iacute; Ch&acirc;u Phi:</strong></p>\r\n\r\n<p>Nhiều người tỏ ra rất ngạc nhi&ecirc;n khi t&ocirc;i c&oacute; thể nhớ mọi điều về họ. Sao t&ocirc;i c&oacute; thể qu&ecirc;n được? Người ta chỉ c&oacute; thể x&oacute;a nh&ograve;a năm th&aacute;ng, k&yacute; ức th&igrave; c&ograve;n m&atilde;i.</p>\r\n\r\n<p>T&ocirc;i th&iacute;ch t&ocirc;i như b&acirc;y giờ: một chiếc quần b&ograve; phai m&agrave;u mặc cả th&aacute;ng. T&ocirc;i th&iacute;ch t&ocirc;i như thế: một m&igrave;nh t&ocirc;i giữa thế giới, bụi bặm phong trần, gương mặt mỏi mệt. Nhưng &aacute;nh mắt t&ocirc;i lu&ocirc;n ngời s&aacute;ng, nụ cười lu&ocirc;n rạng rỡ tr&ecirc;n m&ocirc;i. Để t&ocirc;i n&oacute;i bạn nghe, l&uacute;c ấy, t&ocirc;i xinh đẹp hơn mọi l&uacute;c&hellip;</p>\r\n\r\n<p>T&ocirc;i y&ecirc;u bản th&acirc;n m&igrave;nh, t&ocirc;i biết. V&agrave; chắc chắn bạn cũng sẽ y&ecirc;u t&ocirc;i.</p>\r\n\r\n<p>T&ocirc;i gặp rất nhiều người tr&ecirc;n đường đi, thế giới n&agrave;y quả thật rất phong ph&uacute;, mu&ocirc;n h&igrave;nh mu&ocirc;n vẻ. Điều duy nhất bạn cần l&agrave;m l&agrave; dừng lại, pha một t&aacute;ch c&agrave; ph&ecirc; v&agrave; lắng nghe từng c&acirc;u chuyện th&uacute; vị m&agrave; thế giới ấy rủ rỉ b&ecirc;n tai bạn.</p>\r\n\r\n<p>Thực ra một m&igrave;nh cũng c&oacute; rất nhiều điều th&uacute; vị. Bạn sẽ được thoải m&aacute;i ngồi ngơ ngẩn trước một khung cảnh tuyệt đẹp n&agrave;o đ&oacute;, bạn sẽ c&oacute; rất nhiều thời gian để tr&ograve; chuyện. V&agrave; nếu bạn chỉ c&oacute; một m&igrave;nh, người d&acirc;n địa phương cũng như những người đi du lịch bụi giống bạn sẽ dễ d&agrave;ng l&agrave;m th&acirc;n với bạn.Thế giới quanh cũng v&igrave; thế m&agrave; trở n&ecirc;n sinh động hơn, th&uacute; vị hơn, độc đ&aacute;o hơn. Bạn cứ thử xem, h&atilde;y tin v&agrave;o bản th&acirc;n m&igrave;nh, ch&uacute;ng ta sẽ thấy rằng ch&uacute;ng ta mạnh mẽ, dũng cảm hơn ch&uacute;ng ta tưởng tượng.</p>\r\n\r\n<p>Waka tr&acirc;n trọng giới thiệu s&aacute;ch&nbsp;<strong>Du K&iacute; Ch&acirc;u Phi.</strong></p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:18'),
(28, 9, 28, ' Chút Sự Thật Của Người Nổi Tiếng (Tập 1)', 'chut-su-that-cua-nguoi-noi-tieng-tap-1', 35000, '10534.png', '2015', 100, '<p>T&oacute;m tắt cuốn s&aacute;ch &quot;<strong>Ch&uacute;t Sự Thật Của Người Nổi Tiếng</strong>&quot;:</p>\r\n\r\n<p>L&agrave; tập hợp những cuộc phỏng vấn tr&ograve; chuyện của một nữ nh&agrave; b&aacute;o với những người nổi tiếng trong lĩnh vực văn h&oacute;a, nghệ thuật. T&aacute;c phẩm đưa đến cho người đọc những cảm nhận mới mẻ về cuộc sống, những g&oacute;c khuất của người nổi tiếng. C&aacute;c nh&acirc;n vật phỏng vấn đều l&agrave; những người c&oacute; t&ecirc;n tuổi trong l&agrave;ng giải tr&iacute; Việt như: Hồ Quỳnh Hương, Mỹ T&acirc;m, Johnny Tr&iacute; Nguyễn, Phi Thanh V&acirc;n, Vũ Ngọc Đ&atilde;ng, Lương Mạnh Hải, nhạc sĩ Trần Tiến, Phạm Duy, Bảo Chấn, Đức Huy... Với những c&acirc;u chuyện rất đời v&agrave; rất người đề cập tới b&iacute; mật &ldquo;th&acirc;m cung&rdquo; m&agrave; chỉ những người trong cuộc mới hiểu hết những nỗi gian tru&acirc;n đằng sau &aacute;nh h&agrave;o quang danh vọng.</p>\r\n\r\n<p>Waka tr&acirc;n trọng giới thiệu cuốn s&aacute;ch &quot;<strong>Ch&uacute;t Sự Thật Của Người Nổi Tiếng</strong>&quot;!</p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:18'),
(29, 12, 35, 'Socola Cho Một Trái Tim Yêu', 'socola-cho-mot-trai-tim-yeu', 40000, '7986.jpg', '2014', 60, '<p>T&oacute;m tắt s&aacute;ch&nbsp;<strong>Socola Cho Một Tr&aacute;i Tim Y&ecirc;u:&nbsp;</strong>Sức mạnh của t&igrave;nh y&ecirc;u c&oacute; thể l&agrave;m được g&igrave;? N&oacute; c&oacute; thể di chuyển vạn vật, biến ước mơ của ch&uacute;ng ta th&agrave;nh sự thật v&agrave; an ủi t&acirc;m hồn ch&uacute;ng ta v&agrave;o những l&uacute;c kh&oacute; khăn nhất của cuộc đời. Cho d&ugrave; ch&uacute;ng ta đang ở trong một mối quan hệ đặc biệt với một ai đ&oacute;, hay đang tr&ecirc;n đường t&igrave;m kiếm cho m&igrave;nh một người bạn đời đặc biệt n&agrave;o đ&oacute;. Ch&uacute;ng ta kh&ocirc;ng thể phủ nhận rằng t&igrave;nh y&ecirc;u sẽ đến l&uacute;c ch&uacute;ng ta &iacute;t ngờ tới nhất v&agrave; lu&ocirc;n c&oacute; l&yacute; lẽ cho việc trải nghiệm những cung bậc cảm x&uacute;c qu&yacute; gi&aacute; từ ch&uacute;ng. Kay Allenbaugh, t&aacute;c giả của series &quot;Chocolate for Woman&#39;s Soul&quot; đ&atilde; tập hợp những c&acirc;u chuyện rất thật, rất đời thường, được viết bởi ph&aacute;i đẹp v&agrave; d&agrave;nh ri&ecirc;ng cho họ trong &quot;Socola cho một tr&aacute;i tim y&ecirc;u&quot;. Quyển s&aacute;ch sẽ th&uacute;c đẩy bạn tiến đến c&aacute;c mục ti&ecirc;u của m&igrave;nh, khiến bạn cảm thấy vui vẻ, khiến bạn kh&oacute;c, cười, v&agrave; quan trọng hơn hết, l&agrave; nhắc nhở bạn, t&igrave;nh y&ecirc;u - l&agrave; điều g&igrave; đ&oacute; tuyệt vời, cần phải được nu&ocirc;i dưỡng, ấp ủ, n&acirc;ng niu, v&agrave; chia sẻ, như một thanh chocolate ngọt ng&agrave;o.</p>\r\n\r\n<p>Mời c&aacute;c bạn đ&oacute;n đọc s&aacute;ch&nbsp;<strong>Socola Cho Một Tr&aacute;i Tim Y&ecirc;u.</strong></p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:18'),
(30, 12, 42, ' Không Có Sông Nào Để Vượt Qua', 'khong-co-song-nao-de-vuot-qua', 30000, '8001.png', '2015', 40, '<p>T&oacute;m tắt s&aacute;ch&nbsp;<strong>Kh&ocirc;ng c&oacute; s&ocirc;ng n&agrave;o để vượt qua:&nbsp;</strong>Qua cuốn Kh&ocirc;ng c&oacute; s&ocirc;ng n&agrave;o để vượt qua (t&ecirc;n tiếng Anh: No river to cross), điều m&agrave; Sư b&agrave; Dae Haeng muốn b&agrave;y tỏ kh&ocirc;ng hẳn l&agrave;: ai cũng n&ecirc;n tu tập mười năm trong n&uacute;i s&acirc;u, khi đ&oacute;i th&igrave; ăn c&acirc;y cỏ, quả dại v&agrave; nấm rừng, m&ugrave;a đ&ocirc;ng tới th&igrave; đ&agrave;o một c&aacute;i hố c&aacute;t gần bờ s&ocirc;ng để tr&uacute; ẩn &ndash; cho d&ugrave; đ&oacute; ch&iacute;nh x&aacute;c l&agrave; những g&igrave; b&agrave;, bằng phẩm chất tuyệt hảo của một Thiền sư, đ&atilde; trải qua trước khi ra giảng dạy v&agrave; &ldquo;nổi danh khắp nơi l&agrave; một bậc thầy vừa c&oacute; tuệ gi&aacute;c, vừa c&oacute; l&ograve;ng từ bi s&acirc;u sắc&rdquo;, l&agrave; vị Ni c&oacute; ảnh hưởng s&acirc;u rộng nhất trong t&ocirc;ng ph&aacute;i T&agrave;o Kh&ecirc; cũng như trong to&agrave;n diện x&atilde; hội Đại H&agrave;n.</p>\r\n\r\n<p>Mời c&aacute;c bạn đ&oacute;n đọc s&aacute;ch&nbsp;<strong>Kh&ocirc;ng c&oacute; s&ocirc;ng n&agrave;o để vượt qua.</strong></p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:18'),
(31, 12, 46, 'Ngụ Ngôn Thời Hiện Đại Hay Những Bài Học Làm Người Đắt Giá', 'ngu-ngon-thoi-hien-dai-hay-nhung-bai-hoc-lam-nguoi-dat-gia', 25000, '9405.png', '2015', 10, '<p>T&oacute;m tắt s&aacute;ch:&nbsp;<strong>Ngụ Ng&ocirc;n Thời Hiện Đại Hay Những B&agrave;i Học L&agrave;m Người Đắt Gi&aacute;</strong>: Thật l&agrave; th&uacute; vị khi những c&acirc;u chuy&ecirc;̣n ngụ ng&ocirc;n h&oacute;m hỉnh lại mang đến cho mọi người những kinh nghiệm qu&yacute; gi&aacute; trong cu&ocirc;̣c s&ocirc;́ng hi&ecirc;̣n đại.</p>\r\n\r\n<p>Cùng đọc và kh&aacute;m ph&aacute; những bài học ý nghĩa qua cuốn&nbsp;<strong>&quot;Ngụ ng&ocirc;n thời hiện đại hay những b&agrave;i học l&agrave;m người đắt gi&aacute;&quot;</strong>&nbsp;với Waka nh&eacute;!</p>\r\n\r\n<p>Mời bạn đ&oacute;n đọc s&aacute;ch&nbsp;<strong>Ngụ Ng&ocirc;n Thời Hiện Đại Hay Những B&agrave;i Học L&agrave;m Người Đắt Gi&aacute;.</strong></p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:18'),
(32, 13, 40, 'Mùa Hoa Cải Bên Sông', 'mua-hoa-cai-ben-song', 30000, '10603.png', '2014', 20, '<p>T&oacute;m tắt cuốn s&aacute;ch &quot;<strong>M&ugrave;a Hoa Cải B&ecirc;n S&ocirc;ng</strong>&quot;:</p>\r\n\r\n<p>Đ&acirc;y l&agrave; t&ecirc;n của tuyển tập truyện ngắn, trong đ&oacute; c&oacute; Truyện ngắn nổi tiếng M&ugrave;a Hoa Cải B&ecirc;n S&ocirc;ng của Nguyễn Quang Thiều, nh&agrave; thơ, nh&agrave; văn nổi tiếng. T&aacute;c phẩm n&agrave;y được viết c&aacute;ch đ&acirc;y 20 năm, đ&atilde; được dựng th&agrave;nh phim &ldquo;Lời Nguyền Của D&ograve;ng S&ocirc;ng&rdquo; do Khải Hưng l&agrave;m đạo điễn, từng đoạt giải v&agrave;ng li&ecirc;n hoan phim truyền h&igrave;nh quốc tế tại Bỉ năm 1993.</p>\r\n\r\n<p>Nguyễn Quang Thiều đ&atilde; viết truyện ngắn n&agrave;y từ một c&acirc;u chuyện c&oacute; thật với một kết cục rất đau buồn! Chinh, t&ecirc;n nh&acirc;n vật ch&iacute;nh l&agrave; một c&ocirc; g&aacute;i c&oacute; thật. Chinh sống c&ugrave;ng gia đ&igrave;nh tr&ecirc;n chiếc thuyền. Họ kh&ocirc;ng được ph&eacute;p l&ecirc;n bờ v&igrave; lời nguyền của cha c&ocirc;. Nhưng cuối c&ugrave;ng c&ocirc; đ&atilde; l&ecirc;n bờ v&igrave; tiếng gọi của m&agrave;u hoa cải v&agrave;ng quyến rũ v&agrave; bởi tiếng gọi của t&igrave;nh y&ecirc;u với một ch&agrave;ng trai sống trong một x&oacute;m trại ven s&ocirc;ng&hellip; Khi biết c&ocirc; c&oacute; thai, cha c&ocirc; đ&atilde; trừng phạt c&ocirc; v&agrave; đưa cả gia đ&igrave;nh đi mất t&iacute;ch&hellip;V&agrave; theo lời Nguyễn Quang Thiều &ldquo;70% của truyện ngắn n&agrave;y l&agrave; sự thật&rdquo;.</p>\r\n\r\n<p>Waka tr&acirc;n trọng giới thiệu cuốn s&aacute;ch &quot;<strong>M&ugrave;a Hoa Cải B&ecirc;n S&ocirc;ng</strong>&quot;!</p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:18'),
(33, 13, 45, 'Hà Mã, Chó, Chim, Cá Và Những Thứ Khác', 'ha-ma-cho-chim-ca-va-nhung-thu-khac', 30000, '10587.jpg', '2014', 20, '<p>T&oacute;m tắt cuốn s&aacute;ch &quot;<strong>H&agrave; M&atilde;, Ch&oacute;, Chim, C&aacute; V&agrave; Những Thứ Kh&aacute;c</strong>&quot;:</p>\r\n\r\n<p>C&ocirc; đơn. Hoang mang. Bị nhấn ch&igrave;m. Bị vật h&oacute;a. Mất cảm gi&aacute;c hiện hữu. Lạc k&iacute; ức. Chung đụng với nhiều thứ hiện thực tẻ ngắt. Biến mất. V&acirc;n v&acirc;n.</p>\r\n\r\n<p>Mọi thứ được cắt lớp, chớp bắt, đồng hiện, thả tr&ocirc;i trong những cấu tr&uacute;c văn bản tưởng như rời rạc nhưng thực ra đầy &yacute; thức v&agrave; sự tiết chế. Văn phong chỉnh chu, tinh gọn, kh&ocirc;ng ch&uacute;t g&ograve; nắn hoa mỹ hay cố t&igrave;nh nhồi nh&eacute;t triết l&yacute;, kh&ocirc;ng tuyến t&iacute;nh đầu xu&ocirc;i, đu&ocirc;i lọt, người viết đang dấn bước v&agrave;o một cuộc đoe đuồi ẩn mật: nắm bắt t&iacute;nh chất xao nh&atilde;ng, đa trạng th&aacute;i b&ecirc;n trong con người đương đại. T&iacute;nh đương đại ở sự ưu tư, đa diện, x&aacute;o trộn m&agrave; kh&ocirc;ng son phấn. Khước từ lối tả kể truyền thống, tập truyện mỏng n&agrave;y chủ động để lại nhiều khoảng trống, độ hẫng khiến bạn đọc bối rối lẫn ho&agrave;i nghi. V&agrave;, đến l&uacute;c những khoảng trống, độ hẫng đ&oacute; mới l&agrave; điều hấp dẫn bạn đi v&agrave;o t&aacute;c phẩm. - Nguyễn Vĩnh Nguy&ecirc;n</p>\r\n\r\n<p>Waka tr&acirc;n trọng giới thiệu cuốn s&aacute;ch &quot;<strong>H&agrave; M&atilde;, Ch&oacute;, Chim, C&aacute; V&agrave; Những Thứ Kh&aacute;c</strong>&quot;!</p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:18'),
(34, 13, 37, ' Trường Học 1 0 2', 'truong-hoc-1-0-2', 15000, '10561.jpg', '2014', 40, '<p>T&oacute;m tắt s&aacute;ch&nbsp;<strong>Trường Học 1 0 2:</strong></p>\r\n\r\n<p>Series&nbsp;<strong>Trường học c&oacute; 1-0-2</strong>&nbsp;với 9 c&acirc;u chuyện vui nhộn về tuổi học tr&ograve;:<strong>&nbsp;Những đứa bạn thật ngầu, C&oacute; một tin nhắn tr&ecirc;n bảng, Vụ &aacute;n ụp bị r&aacute;c, Những ch&agrave;ng trai ở trường trung học, B&oacute; hoa thần kỳ của c&ocirc; gi&aacute;m thị, Lotion m&ugrave;i d&acirc;u, Chiến binh cầu vồng, Ch&uacute;ng m&igrave;nh c&atilde;i nhau!, Mọi chuyện sẽ ổn th&ocirc;i m&agrave;</strong>.</p>\r\n\r\n<p><strong>Trường học c&oacute; 1-0-2&nbsp;</strong>được độc giả đ&oacute;n nhận nồng nhiệt ngay khi c&ograve;n tr&iacute;ch đăng từ kỳ tr&ecirc;n &ldquo;Tuổi mới&rdquo; của Tập san &Aacute;o Trắng. Nhiều bạn đọc đ&atilde; gửi thư về to&agrave;n soạn viết: &ldquo;Ở đ&oacute;, em gặp lại ch&iacute;nh m&igrave;nh thời c&ograve;n đi học. Đứa em g&aacute;i em đang l&agrave; học sinh cũng vồ lấy đọc nghiến ngấu, rồi cười ha hả suốt&hellip; Em tin rằng, t&aacute;c giả hổi đi học hẳn phải l&agrave; một học sinh&hellip; c&aacute; biệt th&igrave; mới c&oacute; v&agrave; nhờ nhiều kỷ niệm đến thế&rdquo;.</p>\r\n\r\n<p>Waka tr&acirc;n trọng giới thiệu s&aacute;ch&nbsp;<strong>Trường Học 1 0 2.</strong></p>\r\n', '0000-00-00 00:00:00', '2018-05-31 14:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `full_name`, `password`, `email`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(28, 'admin', 'Lê Thế Quang', '$2y$10$mfUmUuhaDMitjv0/0BJBlug.DdImZju9t5FNTiusrMsoi2zKmpX9W', 'lethequang565@gmail.com', '1674420257', '175/74 Hà Tôn Quyền, Phường 4, Quận 11, TP HCM', 'rVculjIUcBGfeMAkiPxvgYq9Uil77V64zJwtrGaTuUu7zVZXSFuZGuzojJUo', '2018-05-25 13:53:55', '2018-05-29 11:39:30'),
(29, 'ddd', 'Lê Thế Quang', '$2y$10$dVkroCH3vowMgjzCLKmAwevJSDE2oI6O9XDEmX3mmnQ/SR89Wl1xC', 'lethequang565dsa@gmail.com', '1674420257', '175/74 Hà Tôn Quyền, Phường 4, Quận 11, TP HCM', NULL, '2018-07-02 02:31:34', '2018-07-02 02:31:34'),
(30, 'thquang38', 'Lê Thế Quang', '$2y$10$fS2hRg7L9idlsyWImKPUDOs.PYbVgJI.dmxL6SB5kBV3AOzpcPPvi', 'lethequang56d5@gmail.com', '1674420257', '175/74 Hà Tôn Quyền, Phường 4, Quận 11, TP HCM', 'sZcAjYEE1Zr6SUu9Soga9FR4bAJ1qu4VbvLPC0AOmC7dgr4SkfFGoj6Z9ovB', '2018-07-11 05:34:18', '2018-07-11 05:34:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bill` (`id_bill`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tg` (`id_author`),
  ADD KEY `fk_dm` (`id_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`);

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_dm` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_tg` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
