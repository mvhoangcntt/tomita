-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 05:54 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `ap_banner`
--

CREATE TABLE `ap_banner` (
  `id` int(11) NOT NULL,
  `property_id` int(5) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  `script` text DEFAULT NULL,
  `is_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'trang thai',
  `displayed_time` datetime NOT NULL COMMENT 'ngay publish',
  `created_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'ngay tao',
  `updated_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngay sua'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_banner`
--

INSERT INTO `ap_banner` (`id`, `property_id`, `thumbnail`, `url`, `url_video`, `script`, `is_status`, `displayed_time`, `created_time`, `updated_time`) VALUES
(1, 4, 'banner-home.jpg', '', NULL, '', 1, '2019-05-31 19:15:25', '2019-04-02 22:37:12', '2019-06-05 19:15:30'),
(2, 101, 'untitled123.png', '', NULL, '', 1, '2019-06-12 19:15:32', '2018-09-24 22:37:28', '2019-06-05 19:15:36'),
(3, 101, 'banner-home.jpg', '', NULL, '', 1, '2019-06-12 19:15:36', '2018-09-27 10:48:25', '2019-06-05 19:15:40'),
(4, 101, '0_2ut8qgcydruy5az_.jpg', '', NULL, '', 1, '2019-06-13 19:15:42', '2018-09-27 14:27:46', '2019-06-05 19:15:45'),
(7, 101, 'untitled123.png', '', NULL, NULL, 1, '2019-06-07 19:15:46', '2019-03-04 14:07:35', '2019-06-05 19:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `ap_banner_translations`
--

CREATE TABLE `ap_banner_translations` (
  `id` int(11) DEFAULT NULL,
  `language_code` varchar(5) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_description` varchar(170) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ap_catalog`
--

CREATE TABLE `ap_catalog` (
  `id` int(11) NOT NULL,
  `name_catalog` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_catalog`
--

INSERT INTO `ap_catalog` (`id`, `name_catalog`) VALUES
(1, 'Đầm'),
(2, 'Quần bò'),
(3, 'Áo sơ mi');

-- --------------------------------------------------------

--
-- Table structure for table `ap_category`
--

CREATE TABLE `ap_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `is_featured` varchar(255) DEFAULT NULL COMMENT 'Background for parent_id = 0',
  `files` varchar(255) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL COMMENT 'style html',
  `class` varchar(100) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'post' COMMENT 'type theo đúng tên controller',
  `order` int(3) DEFAULT 0,
  `is_status` tinyint(2) NOT NULL DEFAULT 1,
  `created_time` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `ratting` mediumtext DEFAULT NULL,
  `retionship` varchar(120) DEFAULT NULL,
  `question` mediumtext DEFAULT NULL,
  `url_video` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_category`
--

INSERT INTO `ap_category` (`id`, `parent_id`, `thumbnail`, `banner`, `is_featured`, `files`, `style`, `class`, `type`, `order`, `is_status`, `created_time`, `updated_time`, `created_by`, `updated_by`, `ratting`, `retionship`, `question`, `url_video`, `link`) VALUES
(1, 0, NULL, 'abc-xyz.jpg', NULL, NULL, NULL, NULL, 'post', 2, 1, '2019-02-06 11:31:56', '2019-02-10 16:23:37', 'men_02', 'mem_02', NULL, NULL, NULL, NULL, NULL),
(45, 76, 'icon-cat2.png', 'bn-product.jpg', NULL, NULL, '', '', 'course', 0, 1, '2018-11-28 09:29:00', '2019-02-15 15:20:58', '0', '0', NULL, NULL, NULL, NULL, NULL),
(48, 76, 'icon-cat2.png', 'bn-news.jpg', NULL, NULL, '', '', 'course', 5, 1, '2019-01-08 10:58:38', '2019-02-14 02:28:07', '0', '0', NULL, NULL, NULL, NULL, NULL),
(49, 76, 'icon-cat2.png', 'baner.jpg', NULL, NULL, '', '', 'course', 4, 1, '2018-11-08 14:22:33', '2019-02-14 02:28:11', '0', '0', NULL, NULL, NULL, NULL, NULL),
(76, 0, 'icon-cat2.png', '', NULL, NULL, '', '', 'course', 4, 1, '2019-02-11 14:53:38', '2019-02-14 02:32:54', '', '', NULL, NULL, NULL, NULL, NULL),
(77, 0, 'icon-cat2.png', '', NULL, NULL, '', '', 'course', 1, 1, '2019-02-11 14:54:22', '2019-02-14 02:32:56', '', '', NULL, NULL, NULL, NULL, NULL),
(78, 0, 'icon-cat2.png', '', NULL, NULL, '', '', 'course', 1, 1, '2019-02-11 15:06:08', '2019-02-14 02:32:57', '', '', NULL, NULL, NULL, NULL, NULL),
(79, 78, 'icon-cat2.png', '', NULL, NULL, '', '', 'course', 5, 1, '2019-02-11 15:07:11', '2019-02-14 02:33:01', '', '', NULL, NULL, NULL, NULL, NULL),
(80, 0, '', '', NULL, NULL, '', '', 'video', 2, 1, '2019-02-11 18:33:19', '2019-02-19 18:35:30', '', '', NULL, NULL, NULL, NULL, NULL),
(81, 0, '', '', NULL, NULL, '', '', 'master', 5, 1, '2019-02-12 18:38:09', '2019-02-12 18:38:09', '', '', NULL, NULL, NULL, NULL, NULL),
(82, 81, '', '', NULL, NULL, '', '', 'master', 1, 1, '2019-02-12 18:39:10', '2019-02-12 18:39:10', '', '', NULL, NULL, NULL, NULL, NULL),
(83, 81, '', '', NULL, NULL, '', '', 'master', 2, 1, '2019-02-12 18:40:06', '2019-02-12 18:40:06', '', '', NULL, NULL, NULL, NULL, NULL),
(84, 81, '', '', NULL, NULL, '', '', 'master', 3, 1, '2019-02-12 18:41:04', '2019-02-12 18:41:04', '', '', NULL, NULL, NULL, NULL, NULL),
(85, 0, '', '', NULL, NULL, '', '', 'master', 6, 1, '2019-02-12 18:41:33', '2019-02-12 18:41:33', '', '', NULL, NULL, NULL, NULL, NULL),
(86, 85, '', '', NULL, NULL, '', '', 'master', 1, 1, '2019-02-12 18:43:02', '2019-02-12 18:43:02', '', '', NULL, NULL, NULL, NULL, NULL),
(87, 85, '', '', NULL, NULL, '', '', 'master', 2, 1, '2019-02-12 18:43:44', '2019-02-12 18:43:44', '', '', NULL, NULL, NULL, NULL, NULL),
(88, 85, '', '', NULL, NULL, '', '', 'master', 3, 1, '2019-02-12 18:44:06', '2019-02-12 18:44:06', '', '', NULL, NULL, NULL, NULL, NULL),
(89, 85, '', '', NULL, NULL, '', '', 'master', 4, 1, '2019-02-12 18:44:39', '2019-02-12 18:44:39', '', '', NULL, NULL, NULL, NULL, NULL),
(91, 90, NULL, NULL, NULL, NULL, NULL, NULL, 'post', 0, 1, '2019-02-13 16:19:49', '2019-02-13 16:19:52', '02', '0', NULL, NULL, NULL, NULL, NULL),
(92, 90, NULL, NULL, NULL, NULL, NULL, NULL, 'post', 0, 1, '2019-02-13 16:20:17', '2019-02-13 16:20:19', '02', '0', NULL, NULL, NULL, NULL, NULL),
(93, 90, NULL, NULL, NULL, NULL, NULL, NULL, 'post', 0, 1, '2019-02-13 16:20:37', '2019-02-13 16:20:40', '02', '0', NULL, NULL, NULL, NULL, NULL),
(94, 90, NULL, NULL, NULL, NULL, NULL, NULL, 'post', 0, 1, '2019-02-13 16:20:37', '2019-02-13 16:20:40', '02', '0', NULL, NULL, NULL, NULL, NULL),
(95, 90, NULL, NULL, NULL, NULL, NULL, NULL, 'post', 0, 1, '2019-02-13 16:20:37', '2019-02-13 16:20:40', '02', '0', NULL, NULL, NULL, NULL, NULL),
(97, 0, '', '', NULL, NULL, '', '', 'master', 7, 1, '2019-02-13 13:37:13', '2019-02-13 13:37:13', '', '', NULL, NULL, NULL, NULL, NULL),
(98, 97, '', '', NULL, NULL, '', 'fa fa-flash', 'master', 1, 1, '2019-02-13 13:38:22', '2019-02-14 03:20:02', '', '', NULL, NULL, NULL, NULL, NULL),
(99, 97, '', '', NULL, NULL, '', 'fa fa-diamond', 'master', 2, 1, '2019-02-13 13:39:57', '2019-02-13 15:44:09', '', '', NULL, NULL, NULL, NULL, NULL),
(100, 97, '', '', NULL, NULL, '', 'fa fa-star-o', 'master', 1, 1, '2019-02-13 13:41:21', '2019-02-14 03:19:22', '', '', NULL, NULL, NULL, NULL, NULL),
(101, 97, '', '', NULL, NULL, '', 'fa fa-rocket', 'master', 4, 1, '2019-02-13 13:43:11', '2019-02-14 03:20:06', '', '', NULL, NULL, NULL, NULL, NULL),
(102, 0, '', '', NULL, NULL, '', '', 'master', 8, 1, '2019-02-13 16:59:48', '2019-02-13 16:59:48', '', '', NULL, NULL, NULL, NULL, NULL),
(103, 102, 'pro2.jpg', '', NULL, NULL, '', '', 'master', 1, 1, '2019-02-13 17:00:48', '2019-02-13 17:03:57', '', '', NULL, NULL, NULL, NULL, NULL),
(104, 102, 'pro1.jpg', '', NULL, NULL, '', '', 'master', 2, 1, '2019-02-13 17:01:47', '2019-03-02 21:24:20', '', '', NULL, NULL, NULL, NULL, 'hehee'),
(105, 0, '', '', NULL, NULL, '', '', 'video', 1, 1, '2019-02-16 05:18:05', '2019-02-19 18:35:32', '', '', NULL, NULL, NULL, NULL, NULL),
(107, 0, '', '', NULL, NULL, 'career', '', 'post', 4, 1, '2019-03-02 21:46:32', '2019-03-02 21:46:32', '', '', NULL, NULL, NULL, NULL, ''),
(108, 0, '', '', NULL, NULL, '', '', 'post', 5, 1, '2019-06-05 21:04:18', '2019-06-05 21:04:18', '', '', NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `ap_category_translations`
--

CREATE TABLE `ap_category_translations` (
  `id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_category_translations`
--

INSERT INTO `ap_category_translations` (`id`, `language_code`, `title`, `description`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `content`) VALUES
(108, 'en', 'àdasdfasdfasdf', 'àdasdfasdfasdf', 'adasdfaàdasdfasdfasdfsdfasdf', 'àdasdfasdfasdfàdasdfasdfasdfàdasdfasdfasdf', 'àdasdfasdfasdfàdasdfasdfasdfàdasdfasdfasdfàdasdfasdfasdfàdasdfasdfasdfàdasdfasdfasdfàdasdfasdfasdfàdasdfasdfasdfàdasdfasdfasdf', 'àdasdfasdfasdf', ''),
(108, 'vi', 'dddd', 'ddddd', 'dddd', 'dddddddddddddddddddddddddddddddddddddddddddđ', 'dddddddddddddddddđdddddddddddddddddđdddddddddddddddddđdddddddddddddddddđdddddddddddddddddđdddddddddddddddddđdddddddddddddddddđ', 'ddddddddddddddd', '');

-- --------------------------------------------------------

--
-- Table structure for table `ap_contact`
--

CREATE TABLE `ap_contact` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_time` datetime DEFAULT current_timestamp(),
  `title` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_contact`
--

INSERT INTO `ap_contact` (`id`, `fullname`, `email`, `phone`, `content`, `created_time`, `title`) VALUES
(31, 'Đinh Văn Khương', 'khuongkoi200798@gmail.com', '0337373955', '123213213', '2019-01-24 09:59:53', NULL),
(32, 'Đinh Văn Khương', 'khuongkoi200798@gmail.com', '0337373955', 'OK', '2019-01-24 10:01:40', NULL),
(33, 'Đinh Văn Khương', 'khuongkoi200798@gmail.com', '0337373955', 'aaaaaaaaaaaaaaa', '2019-03-14 14:38:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ap_currency`
--

CREATE TABLE `ap_currency` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `is_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'trang thai',
  `format` varchar(50) DEFAULT NULL COMMENT 'Định dạng tiền',
  `code` varchar(100) DEFAULT NULL,
  `order` tinyint(1) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'ngay tao',
  `updated_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngay sua'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_currency`
--

INSERT INTO `ap_currency` (`id`, `name`, `is_status`, `format`, `code`, `order`, `country`, `symbol`, `created_time`, `updated_time`) VALUES
(1, 'Leke', 2, NULL, 'ALL', 0, NULL, 'Lek', '2019-04-03 11:05:35', '2019-06-05 19:59:29'),
(2, 'Dollars', 1, '23000', 'USD', 2, NULL, '$', '2019-04-03 11:05:35', '2019-06-05 19:59:29'),
(3, 'Afghanis', 2, NULL, 'AFN', 0, NULL, '؋', '2019-04-03 11:05:35', '2019-06-05 19:59:29'),
(4, 'Pesos', 2, NULL, 'ARS', 0, NULL, '$', '2019-04-03 11:05:35', '2019-06-05 19:59:29'),
(5, 'Guilders', 2, NULL, 'AWG', 0, NULL, 'ƒ', '2019-04-03 11:05:35', '2019-06-05 19:59:29'),
(6, 'Dollars', 2, NULL, 'AUD', 0, NULL, '$', '2019-04-03 11:05:35', '2019-06-05 19:59:29'),
(7, 'New Manats', 2, NULL, 'AZN', 0, NULL, 'ман', '2019-04-03 11:05:36', '2019-06-05 19:59:29'),
(8, 'Dollars', 2, NULL, 'BSD', 0, NULL, '$', '2019-04-03 11:05:36', '2019-06-05 19:59:29'),
(9, 'Dollars', 2, NULL, 'BBD', 0, NULL, '$', '2019-04-03 11:05:36', '2019-06-05 19:59:29'),
(10, 'Rubles', 2, NULL, 'BYR', 0, NULL, 'p.', '2019-04-03 11:05:36', '2019-06-05 19:59:29'),
(11, 'Euro', 2, NULL, 'EUR', 0, NULL, '€', '2019-04-03 11:05:36', '2019-06-05 19:59:29'),
(12, 'Dollars', 2, NULL, 'BZD', 0, NULL, 'BZ$', '2019-04-03 11:05:36', '2019-06-05 19:59:29'),
(13, 'Dollars', 2, NULL, 'BMD', 0, NULL, '$', '2019-04-03 11:05:36', '2019-06-05 19:59:29'),
(14, 'Bolivianos', 2, NULL, 'BOB', 0, NULL, '$b', '2019-04-03 11:05:36', '2019-06-05 19:59:29'),
(15, 'Convertible Marka', 2, NULL, 'BAM', 0, NULL, 'KM', '2019-04-03 11:05:36', '2019-06-05 19:59:29'),
(16, 'Pula', 2, NULL, 'BWP', 0, NULL, 'P', '2019-04-03 11:05:36', '2019-04-03 11:05:36'),
(17, 'Leva', 2, NULL, 'BGN', 0, NULL, 'лв', '2019-04-03 11:05:36', '2019-04-03 11:05:36'),
(18, 'Reais', 2, NULL, 'BRL', 0, NULL, 'R$', '2019-04-03 11:05:36', '2019-04-03 11:05:36'),
(19, 'Pounds', 2, NULL, 'GBP', 0, NULL, '£', '2019-04-03 11:05:36', '2019-04-03 11:05:36'),
(20, 'Dollars', 2, NULL, 'BND', 0, NULL, '$', '2019-04-03 11:05:36', '2019-04-03 11:05:36'),
(21, 'Riels', 2, NULL, 'KHR', 0, NULL, '៛', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(22, 'Dollars', 2, NULL, 'CAD', 0, NULL, '$', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(23, 'Dollars', 2, NULL, 'KYD', 0, NULL, '$', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(24, 'Pesos', 2, NULL, 'CLP', 0, NULL, '$', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(25, 'Yuan Renminbi', 2, NULL, 'CNY', 0, NULL, '¥', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(26, 'Pesos', 2, NULL, 'COP', 0, NULL, '$', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(27, 'Colón', 2, NULL, 'CRC', 0, NULL, '₡', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(28, 'Kuna', 2, NULL, 'HRK', 0, NULL, 'kn', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(29, 'Pesos', 2, NULL, 'CUP', 0, NULL, '₱', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(30, 'Koruny', 2, NULL, 'CZK', 0, NULL, 'Kč', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(31, 'Kroner', 2, NULL, 'DKK', 0, NULL, 'kr', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(32, 'Pesos', 2, NULL, 'DOP ', 0, NULL, 'RD$', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(33, 'Dollars', 2, NULL, 'XCD', 0, NULL, '$', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(34, 'Pounds', 2, NULL, 'EGP', 0, NULL, '£', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(35, 'Colones', 2, NULL, 'SVC', 0, NULL, '$', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(36, 'Pounds', 2, NULL, 'FKP', 0, NULL, '£', '2019-04-03 11:05:37', '2019-04-03 11:05:37'),
(37, 'Dollars', 2, NULL, 'FJD', 0, NULL, '$', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(38, 'Cedis', 2, NULL, 'GHC', 0, NULL, '¢', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(39, 'Pounds', 2, NULL, 'GIP', 0, NULL, '£', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(40, 'Quetzales', 2, NULL, 'GTQ', 0, NULL, 'Q', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(41, 'Pounds', 2, NULL, 'GGP', 0, NULL, '£', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(42, 'Dollars', 2, NULL, 'GYD', 0, NULL, '$', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(43, 'Lempiras', 2, NULL, 'HNL', 0, NULL, 'L', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(44, 'Dollars', 2, NULL, 'HKD', 0, NULL, '$', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(45, 'Forint', 2, NULL, 'HUF', 0, NULL, 'Ft', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(46, 'Kronur', 2, NULL, 'ISK', 0, NULL, 'kr', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(47, 'Rupees', 2, NULL, 'INR', 0, NULL, 'Rp', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(48, 'Rupiahs', 2, NULL, 'IDR', 0, NULL, 'Rp', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(49, 'Rials', 2, NULL, 'IRR', 0, NULL, '﷼', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(50, 'Pounds', 2, NULL, 'IMP', 0, NULL, '£', '2019-04-03 11:05:38', '2019-04-03 11:05:38'),
(51, 'New Shekels', 2, NULL, 'ILS', 0, NULL, '₪', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(52, 'Dollars', 2, NULL, 'JMD', 0, NULL, 'J$', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(53, 'Yen', 2, NULL, 'JPY', 0, NULL, '¥', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(54, 'Pounds', 2, NULL, 'JEP', 0, NULL, '£', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(55, 'Tenge', 2, NULL, 'KZT', 0, NULL, 'лв', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(56, 'Won', 2, NULL, 'KPW', 0, NULL, '₩', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(57, 'Won', 2, NULL, 'KRW', 0, NULL, '₩', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(58, 'Soms', 2, NULL, 'KGS', 0, NULL, 'лв', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(59, 'Kips', 2, NULL, 'LAK', 0, NULL, '₭', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(60, 'Lati', 2, NULL, 'LVL', 0, NULL, 'Ls', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(61, 'Pounds', 2, NULL, 'LBP', 0, NULL, '£', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(62, 'Dollars', 2, NULL, 'LRD', 0, NULL, '$', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(63, 'Switzerland Francs', 2, NULL, 'CHF', 0, NULL, 'CHF', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(64, 'Litai', 2, NULL, 'LTL', 0, NULL, 'Lt', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(65, 'Denars', 2, NULL, 'MKD', 0, NULL, 'ден', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(66, 'Ringgits', 2, NULL, 'MYR', 0, NULL, 'RM', '2019-04-03 11:05:39', '2019-04-03 11:05:39'),
(67, 'Rupees', 2, NULL, 'MUR', 0, NULL, '₨', '2019-04-03 11:05:40', '2019-04-03 11:05:40'),
(68, 'Pesos', 2, NULL, 'MXN', 0, NULL, '$', '2019-04-03 11:05:40', '2019-04-03 11:05:40'),
(69, 'Tugriks', 2, NULL, 'MNT', 0, NULL, '₮', '2019-04-03 11:05:40', '2019-04-03 11:05:40'),
(70, 'Meticais', 2, NULL, 'MZN', 0, NULL, 'MT', '2019-04-03 11:05:40', '2019-04-03 11:05:40'),
(71, 'Dollars', 2, NULL, 'NAD', 0, NULL, '$', '2019-04-03 11:05:40', '2019-04-03 11:05:40'),
(72, 'Rupees', 2, NULL, 'NPR', 0, NULL, '₨', '2019-04-03 11:05:40', '2019-04-03 11:05:40'),
(73, 'Guilders', 2, NULL, 'ANG', 0, NULL, 'ƒ', '2019-04-03 11:05:40', '2019-04-03 11:05:40'),
(74, 'Dollars', 2, NULL, 'NZD', 0, NULL, '$', '2019-04-03 11:05:40', '2019-04-03 11:05:40'),
(75, 'Cordobas', 2, NULL, 'NIO', 0, NULL, 'C$', '2019-04-03 11:05:40', '2019-04-03 11:05:40'),
(76, 'Nairas', 2, NULL, 'NGN', 0, NULL, '₦', '2019-04-03 11:05:40', '2019-04-03 11:05:40'),
(77, 'Krone', 2, NULL, 'NOK', 0, NULL, 'kr', '2019-04-03 11:05:40', '2019-04-03 11:05:40'),
(78, 'Rials', 2, NULL, 'OMR', 0, NULL, '﷼', '2019-04-03 11:05:40', '2019-04-03 11:05:40'),
(79, 'Rupees', 2, NULL, 'PKR', 0, NULL, '₨', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(80, 'Balboa', 2, NULL, 'PAB', 0, NULL, 'B/.', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(81, 'Guarani', 2, NULL, 'PYG', 0, NULL, 'Gs', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(82, 'Nuevos Soles', 2, NULL, 'PEN', 0, NULL, 'S/.', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(83, 'Pesos', 2, NULL, 'PHP', 0, NULL, 'Php', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(84, 'Zlotych', 2, NULL, 'PLN', 0, NULL, 'zł', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(85, 'Rials', 2, NULL, 'QAR', 0, NULL, '﷼', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(86, 'New Lei', 2, NULL, 'RON', 0, NULL, 'lei', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(87, 'Rubles', 2, NULL, 'RUB', 0, NULL, 'руб', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(88, 'Pounds', 2, NULL, 'SHP', 0, NULL, '£', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(89, 'Riyals', 2, NULL, 'SAR', 0, NULL, '﷼', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(90, 'Dinars', 2, NULL, 'RSD', 0, NULL, 'Дин.', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(91, 'Rupees', 2, NULL, 'SCR', 0, NULL, '₨', '2019-04-03 11:05:41', '2019-04-03 11:05:41'),
(92, 'Dollars', 2, NULL, 'SGD', 0, NULL, '$', '2019-04-03 11:05:42', '2019-04-03 11:05:42'),
(93, 'Dollars', 2, NULL, 'SBD', 0, NULL, '$', '2019-04-03 11:05:42', '2019-04-03 11:05:42'),
(94, 'Shillings', 2, NULL, 'SOS', 0, NULL, 'S', '2019-04-03 11:05:42', '2019-04-03 11:05:42'),
(95, 'Rand', 2, NULL, 'ZAR', 0, NULL, 'R', '2019-04-03 11:05:42', '2019-04-03 11:05:42'),
(96, 'Rupees', 2, NULL, 'LKR', 0, NULL, '₨', '2019-04-03 11:05:42', '2019-04-03 11:05:42'),
(97, 'Kronor', 2, NULL, 'SEK', 0, NULL, 'kr', '2019-04-03 11:05:42', '2019-04-03 11:05:42'),
(98, 'Dollars', 2, NULL, 'SRD', 0, NULL, '$', '2019-04-03 11:05:42', '2019-04-03 11:05:42'),
(99, 'Pounds', 2, NULL, 'SYP', 0, NULL, '£', '2019-04-03 11:05:42', '2019-04-03 11:05:42'),
(100, 'New Dollars', 2, NULL, 'TWD', 0, NULL, 'NT$', '2019-04-03 11:05:42', '2019-04-03 11:05:42'),
(101, 'Baht', 2, NULL, 'THB', 0, NULL, '฿', '2019-04-03 11:05:42', '2019-04-03 11:05:42'),
(102, 'Dollars', 2, NULL, 'TTD', 0, NULL, 'TT$', '2019-04-03 11:05:42', '2019-04-03 11:05:42'),
(103, 'Lira', 2, NULL, 'TRY', 0, NULL, 'TL', '2019-04-03 11:05:42', '2019-04-03 11:05:42'),
(104, 'Liras', 2, NULL, 'TRL', 0, NULL, '£', '2019-04-03 11:05:43', '2019-04-03 11:05:43'),
(105, 'Dollars', 2, NULL, 'TVD', 0, NULL, '$', '2019-04-03 11:05:43', '2019-05-06 08:50:46'),
(106, 'Hryvnia', 2, NULL, 'UAH', 0, NULL, '₴', '2019-04-03 11:05:43', '2019-04-03 11:05:43'),
(107, 'Pesos', 2, NULL, 'UYU', 0, NULL, '$U', '2019-04-03 11:05:43', '2019-04-03 11:05:43'),
(108, 'Sums', 2, NULL, 'UZS', 0, NULL, 'лв', '2019-04-03 11:05:43', '2019-04-03 11:05:43'),
(109, 'Bolivares Fuertes', 2, NULL, 'VEF', 0, NULL, 'Bs', '2019-04-03 11:05:43', '2019-04-03 11:05:43'),
(110, 'Dong', 1, '1', 'VND', 1, NULL, '₫', '2019-04-03 11:05:43', '2019-06-05 19:59:29'),
(111, 'Rials', 2, NULL, 'YER', 0, NULL, '﷼', '2019-04-03 11:05:43', '2019-04-03 11:05:43'),
(112, 'Zimbabwe Dollars', 2, NULL, 'ZWD', 0, NULL, 'Z$', '2019-04-03 11:05:43', '2019-05-06 08:48:38'),
(114, 'Euro', 2, '100', '€', 0, NULL, '€', '2019-04-19 11:31:05', '2019-06-05 19:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `ap_detail_order`
--

CREATE TABLE `ap_detail_order` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_detail_order`
--

INSERT INTO `ap_detail_order` (`id`, `order_id`, `product_id`, `amount`, `total`) VALUES
(1, 1, 20, 2000, 2),
(2, 1, 21, 3000, 4),
(3, 2, 20, 1000, 5),
(4, 2, 21, 100000, 1),
(5, 2, 22, 2000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ap_exchange_currency`
--

CREATE TABLE `ap_exchange_currency` (
  `id` int(10) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sell` double(10,2) NOT NULL,
  `created_time` datetime DEFAULT current_timestamp(),
  `updated_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_exchange_currency`
--

INSERT INTO `ap_exchange_currency` (`id`, `type`, `sell`, `created_time`, `updated_time`) VALUES
(1, 'AUD', 16507.46, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(2, 'CAD', 17635.86, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(3, 'CHF', 23746.31, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(4, 'DKK', 3583.62, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(5, 'EUR', 26962.11, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(6, 'GBP', 29863.05, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(7, 'HKD', 3007.28, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(8, 'INR', 350.24, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(9, 'JPY', 217.41, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(10, 'KRW', 20.68, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(11, 'MYR', 5644.94, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(12, 'NOK', 2734.34, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(13, 'RUB', 399.28, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(14, 'SAR', 6470.64, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(15, 'SEK', 2513.16, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(16, 'SGD', 17235.00, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(17, 'THB', 762.86, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(18, 'USD', 23475.00, '2019-06-06 08:57:03', '2019-06-06 08:57:03'),
(19, 'CNY', 3500.00, '2019-06-06 08:57:11', '2019-06-06 08:57:11'),
(20, 'NZD', 0.00, '2019-06-06 08:57:11', '2019-06-06 08:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `ap_groups`
--

CREATE TABLE `ap_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `permission` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_groups`
--

INSERT INTO `ap_groups` (`id`, `name`, `description`, `permission`) VALUES
(1, 'Admin', 'Administrator', '{\"banner\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"groups\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"media\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"menus\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"newsletter\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"page\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"post\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"product\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"property\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"setting\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"users\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"video\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"}}'),
(2, 'Biên tập viên', 'Nhóm biên tập quản trị nội dung web', '{\"banner\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"groups\":{\"view\":\"1\"},\"media\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"menus\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"page\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"post\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"setting\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"import\":\"1\",\"export\":\"1\"},\"users\":{\"view\":\"1\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `ap_login_attempts`
--

CREATE TABLE `ap_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ap_log_action`
--

CREATE TABLE `ap_log_action` (
  `id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `created_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_log_action`
--

INSERT INTO `ap_log_action` (`id`, `action`, `note`, `uid`, `created_time`) VALUES
(1, 'room', 'Update room: 2', 1, '2019-04-08 02:28:48'),
(2, 'property', 'Update property: 3', 1, '2019-04-08 04:20:27'),
(3, 'property', 'Update property: 4', 1, '2019-04-08 04:20:30'),
(4, 'property', 'Update property: 5', 1, '2019-04-08 04:20:33'),
(5, 'banner', 'Sửa Banner có id là 2', 1, '2019-04-09 10:46:37'),
(6, 'room', 'Update room: 1', 1, '2019-04-09 02:00:41'),
(7, 'room', 'Update room: 2', 1, '2019-04-09 02:00:46'),
(8, 'room', 'Update room: 16', 1, '2019-04-10 04:52:39'),
(9, 'renter', 'Update renter: 1', 1, '2019-04-11 11:05:20'),
(10, 'users', 'Insert users: 0', 1, '2019-04-11 02:36:28'),
(11, 'users', 'Update users: 37', 37, '2019-04-11 02:53:43'),
(12, 'users', 'Insert users: 0', 37, '2019-04-11 03:26:42'),
(13, 'groups', 'Insert groups: 3', 37, '2019-04-11 05:15:57'),
(14, 'groups', 'Update groups: 3', 37, '2019-04-11 05:20:39'),
(15, 'groups', 'Update groups: 3', 37, '2019-04-11 05:20:51'),
(16, 'groups', 'Insert groups: 4', 37, '2019-04-11 05:25:49'),
(17, 'groups', 'Update groups: 4', 37, '2019-04-11 05:25:57'),
(18, 'groups', 'Update groups: 3', 37, '2019-04-11 05:25:57'),
(19, 'groups', 'Insert groups: 5', 37, '2019-04-11 05:26:11'),
(20, 'groups', 'Update groups: 5', 37, '2019-04-11 05:26:16'),
(21, 'groups', 'Insert groups: 6', 37, '2019-04-11 05:27:18'),
(22, 'groups', 'Insert groups: 7', 37, '2019-04-11 05:27:20'),
(23, 'groups', 'Insert groups: 8', 37, '2019-04-11 05:27:23'),
(24, 'groups', 'Insert groups: 9', 37, '2019-04-11 05:27:26'),
(25, 'groups', 'Insert groups: 10', 37, '2019-04-11 05:27:28'),
(26, 'groups', 'Insert groups: 11', 37, '2019-04-11 05:27:37'),
(27, 'groups', 'Insert groups: 12', 37, '2019-04-11 05:27:40'),
(28, 'groups', 'Insert groups: 13', 37, '2019-04-11 05:27:43'),
(29, 'groups', 'Insert groups: 14', 37, '2019-04-11 05:27:46'),
(30, 'groups', 'Update groups: 14', 37, '2019-04-11 05:28:06'),
(31, 'groups', 'Update groups: 6', 37, '2019-04-11 05:28:25'),
(32, 'groups', 'Update groups: 7', 37, '2019-04-11 05:28:25'),
(33, 'groups', 'Update groups: 8', 37, '2019-04-11 05:28:25'),
(34, 'groups', 'Update groups: 9', 37, '2019-04-11 05:28:25'),
(35, 'groups', 'Update groups: 10', 37, '2019-04-11 05:28:25'),
(36, 'groups', 'Update groups: 11', 37, '2019-04-11 05:28:25'),
(37, 'groups', 'Update groups: 12', 37, '2019-04-11 05:28:25'),
(38, 'groups', 'Update groups: 13', 37, '2019-04-11 05:28:25'),
(39, 'groups', 'Insert groups: 15', 37, '2019-04-11 05:50:44'),
(40, 'groups', 'Update groups: 15', 37, '2019-04-11 05:55:52'),
(41, 'groups', 'Update groups: 15', 37, '2019-04-11 05:56:52'),
(42, 'groups', 'Update groups: 15', 37, '2019-04-11 05:58:08'),
(43, 'users', 'Update users: 38', 1, '2019-04-12 01:47:19'),
(44, 'users', 'Update users: 38', 38, '2019-04-12 01:47:48'),
(45, 'users', 'delete users: 37', 38, '2019-04-12 01:48:12'),
(46, 'unit', 'Insert unit: 1', 1, '2019-04-12 01:56:52'),
(47, 'users', 'Update users: 36', 1, '2019-04-12 02:04:50'),
(48, 'users', 'Update users: 38', 1, '2019-04-12 02:04:55'),
(49, 'users', 'Update users: 38', 1, '2019-04-12 02:17:37'),
(50, 'users', 'Update users: 38', 38, '2019-04-12 02:18:07'),
(51, 'users', 'Insert users: 0', 38, '2019-04-12 02:19:13'),
(52, 'users', 'Insert users: 0', 38, '2019-04-12 02:19:47'),
(53, 'users', 'Insert users: 0', 38, '2019-04-12 02:19:55'),
(54, 'users', 'Insert users: 0', 38, '2019-04-12 02:20:07'),
(55, 'users', 'Insert users: 0', 38, '2019-04-12 02:20:17'),
(56, 'users', 'Insert users: 0', 38, '2019-04-12 02:20:26'),
(57, 'users', 'Insert users: 0', 38, '2019-04-12 02:20:36'),
(58, 'users', 'delete users: 45', 38, '2019-04-12 02:21:21'),
(59, 'users', 'delete users: 44', 38, '2019-04-12 02:21:21'),
(60, 'users', 'delete users: 43', 38, '2019-04-12 02:21:21'),
(61, 'users', 'delete users: 42', 38, '2019-04-12 02:21:21'),
(62, 'users', 'delete users: 41', 38, '2019-04-12 02:21:21'),
(63, 'users', 'delete users: 40', 38, '2019-04-12 02:21:21'),
(64, 'users', 'delete users: 39', 38, '2019-04-12 02:21:45'),
(65, 'account', 'Update account: 19', 1, '2019-04-12 02:40:51'),
(66, 'account', 'Update account: 19', 1, '2019-04-12 02:41:09'),
(67, 'account', 'Insert account: 23', 1, '2019-04-12 02:49:24'),
(68, 'account', 'Update account: 23', 1, '2019-04-12 02:52:36'),
(69, 'account', 'Update account: 23', 1, '2019-04-12 02:53:10'),
(70, 'account', 'Update account: 23', 1, '2019-04-12 02:53:22'),
(71, 'account', 'Insert account: 24', 1, '2019-04-12 02:54:17'),
(72, 'account', 'Update account: 24', 1, '2019-04-12 02:54:59'),
(73, 'account', 'Update account: 24', 1, '2019-04-12 02:55:43'),
(74, 'account', 'Update account: 24', 1, '2019-04-12 02:56:07'),
(75, 'account', 'Update account: 23', 1, '2019-04-12 02:56:45'),
(76, 'account', 'Update account: 23', 1, '2019-04-12 02:57:43'),
(77, 'account', 'Update account: 24', 1, '2019-04-12 03:15:31'),
(78, 'account', 'Update account: 24', 1, '2019-04-12 03:17:26'),
(79, 'account', 'Update account: 24', 1, '2019-04-12 03:22:03'),
(80, 'account', 'Insert account: 25', 1, '2019-04-12 03:32:08'),
(81, 'account', 'Insert account: 26', 1, '2019-04-12 03:40:13'),
(82, 'account', 'Insert account: 27', 1, '2019-04-12 03:40:41'),
(83, 'account', 'Insert account: 28', 1, '2019-04-12 03:41:13'),
(84, 'account', 'Insert account: 29', 1, '2019-04-12 03:41:57'),
(85, 'account', 'Update account: 29', 1, '2019-04-12 03:47:53'),
(86, 'account', 'delete account: 29', 1, '2019-04-12 03:54:10'),
(87, 'account', 'delete account: 28', 1, '2019-04-12 03:54:10'),
(88, 'account', 'delete account: 27', 1, '2019-04-12 03:54:10'),
(89, 'account', 'delete account: 26', 1, '2019-04-12 03:54:16'),
(90, 'property', 'Update property: 5', 1, '2019-04-16 09:18:56'),
(91, 'property', 'Insert property: 0', 1, '2019-04-16 09:19:18'),
(92, 'property', 'Insert property: 0', 1, '2019-04-16 09:21:03'),
(93, 'property', 'Update property: 9', 1, '2019-04-16 09:21:12'),
(94, 'property', 'Update property: 9', 1, '2019-04-16 09:21:21'),
(95, 'property', 'Insert property: 0', 1, '2019-04-16 09:22:48'),
(96, 'property', 'Insert property: 0', 1, '2019-04-16 09:22:53'),
(97, 'property', 'Insert property: 0', 1, '2019-04-16 09:23:54'),
(98, 'property', 'Insert property: 0', 1, '2019-04-16 09:24:09'),
(99, 'property', 'Insert property: 0', 1, '2019-04-16 09:24:14'),
(100, 'property', 'Insert property: 0', 1, '2019-04-16 09:24:19'),
(101, 'property', 'Update property: 15', 1, '2019-04-16 09:25:20'),
(102, 'property', 'Update property: 14', 1, '2019-04-16 09:25:20'),
(103, 'property', 'Update property: 13', 1, '2019-04-16 09:25:20'),
(104, 'property', 'Update property: 12', 1, '2019-04-16 09:25:25'),
(105, 'property', 'Update property: 5', 1, '2019-04-16 09:25:53'),
(106, 'property', 'Update property: 5', 1, '2019-04-16 09:26:22'),
(107, 'property', 'Update property: 10', 1, '2019-04-16 09:33:06'),
(108, 'property', 'Update property: 11', 1, '2019-04-16 09:35:02'),
(109, 'property', 'Insert property: 0', 1, '2019-04-16 09:35:47'),
(110, 'property', 'Update property: 11', 1, '2019-04-16 09:35:54'),
(111, 'property', 'Insert property: 0', 1, '2019-04-16 09:37:38'),
(112, 'property', 'Insert property: 0', 1, '2019-04-16 09:38:18'),
(113, 'property', 'Insert property: 0', 1, '2019-04-16 09:39:48'),
(114, 'property', 'Insert property: 0', 1, '2019-04-16 09:40:31'),
(115, 'property', 'Update property: 5', 1, '2019-04-16 09:44:25'),
(116, 'property', 'Update property: 4', 1, '2019-04-16 09:44:56'),
(117, 'property', 'Insert property: 0', 1, '2019-04-16 09:45:24'),
(118, 'property', 'Update property: 21', 1, '2019-04-16 09:49:13'),
(119, 'property', 'Update property: 5', 1, '2019-04-16 09:49:52'),
(120, 'property', 'Update property: 4', 1, '2019-04-16 09:49:57'),
(121, 'category', 'Insert category: 3', 1, '2019-04-16 09:52:21'),
(122, 'category', 'Insert category: 4', 1, '2019-04-16 09:54:07'),
(123, 'category', 'Insert category: 5', 1, '2019-04-16 09:55:39'),
(124, 'category', 'Insert category: 6', 1, '2019-04-16 09:57:05'),
(125, 'category', 'Insert category: 7', 1, '2019-04-16 09:59:33'),
(126, 'category', 'Insert category: 8', 1, '2019-04-16 10:00:32'),
(127, 'category', 'Update category: 8', 1, '2019-04-16 10:01:40'),
(128, 'category', 'Insert category: 9', 1, '2019-04-16 10:02:14'),
(129, 'category', 'Insert category: 10', 1, '2019-04-16 10:02:29'),
(130, 'category', 'Update category: 10', 1, '2019-04-16 10:02:34'),
(131, 'category', 'Update category: 9', 1, '2019-04-16 10:02:34'),
(132, 'category', 'Update category: 8', 1, '2019-04-16 10:02:40'),
(133, 'category', 'Insert category: 11', 1, '2019-04-16 10:02:59'),
(134, 'category', 'Insert category: 12', 1, '2019-04-16 10:03:11'),
(135, 'category', 'Insert category: 13', 1, '2019-04-16 10:03:22'),
(136, 'category', 'Insert category: 14', 1, '2019-04-16 10:03:33'),
(137, 'category', 'Insert category: 15', 1, '2019-04-16 10:03:49'),
(138, 'category', 'Update category: 15', 1, '2019-04-16 10:04:44'),
(139, 'category', 'Update category: 14', 1, '2019-04-16 10:04:44'),
(140, 'category', 'Update category: 13', 1, '2019-04-16 10:04:44'),
(141, 'category', 'Update category: 12', 1, '2019-04-16 10:04:44'),
(142, 'category', 'Update category: 11', 1, '2019-04-16 10:04:44'),
(143, 'category', 'Update category: 2', 1, '2019-04-16 10:05:44'),
(144, 'category', 'Update category: 2', 1, '2019-04-16 10:05:53'),
(145, 'category', 'Update category: 2', 1, '2019-04-16 10:06:05'),
(146, 'category', 'Update category: 2', 1, '2019-04-16 10:06:13'),
(147, 'property', 'Insert property: 0', 1, '2019-04-16 10:50:13'),
(148, 'property', 'Update property: 22', 1, '2019-04-16 10:50:21'),
(149, 'property', 'Insert property: 0', 1, '2019-04-16 10:52:38'),
(150, 'property', 'Update property: 23', 1, '2019-04-16 10:52:45'),
(151, 'property', 'Insert property: 0', 1, '2019-04-16 10:53:19'),
(152, 'property', 'Insert property: 0', 1, '2019-04-16 10:53:55'),
(153, 'property', 'Insert property: 0', 1, '2019-04-16 10:54:43'),
(154, 'property', 'Insert property: 0', 1, '2019-04-16 10:55:06'),
(155, 'category', 'Insert category: 16', 1, '2019-04-16 10:59:33'),
(156, 'room', 'Update room: 1', 1, '2019-04-16 11:04:56'),
(157, 'room', 'Update room: 2', 1, '2019-04-16 11:16:58'),
(158, 'room', 'Update room: 2', 1, '2019-04-16 11:17:25'),
(159, 'category', 'Insert category: 17', 1, '2019-04-16 11:29:42'),
(160, 'category', 'Update category: 17', 1, '2019-04-16 11:32:17'),
(161, 'category', 'Update category: 1', 1, '2019-04-16 11:33:17'),
(162, 'category', 'Update category: 1', 1, '2019-04-16 11:33:26'),
(163, 'category', 'Insert category: 18', 1, '2019-04-16 11:34:08'),
(164, 'category', 'Insert category: 19', 1, '2019-04-16 11:34:42'),
(165, 'category', 'Insert category: 20', 1, '2019-04-16 11:35:11'),
(166, 'post', 'Update post: 1', 1, '2019-04-16 11:37:35'),
(167, 'post', 'Insert post: 2', 1, '2019-04-16 11:39:12'),
(168, 'post', 'Insert post: 3', 1, '2019-04-16 11:40:15'),
(169, 'post', 'Insert post: 4', 1, '2019-04-16 11:40:53'),
(170, 'post', 'Insert post: 5', 1, '2019-04-16 11:41:38'),
(171, 'post', 'Update post: 1', 1, '2019-04-16 11:42:40'),
(172, 'account', 'Update account: 25', 1, '2019-04-16 02:11:41'),
(173, 'account', 'Insert account: 30', 1, '2019-04-16 02:29:32'),
(174, 'account', 'Insert account: 31', 1, '2019-04-16 02:58:17'),
(175, 'account', 'Update account: 31', 1, '2019-04-16 03:02:15'),
(176, 'account', 'Update account: 30', 1, '2019-04-16 03:02:36'),
(177, 'account', 'Update account: 31', 1, '2019-04-16 03:02:41'),
(178, 'account', 'Update account: 31', 1, '2019-04-16 03:03:01'),
(179, 'account', 'Update account: 31', 1, '2019-04-16 03:03:08'),
(180, 'account', 'Update account: 31', 1, '2019-04-16 03:03:14'),
(181, 'account', 'Update account: 25', 1, '2019-04-16 03:10:55'),
(182, 'account', 'Update account: 31', 1, '2019-04-16 03:11:29'),
(183, 'account', 'Update account: 31', 1, '2019-04-16 03:11:59'),
(184, 'account', 'Update account: 31', 1, '2019-04-16 03:12:31'),
(185, 'account', 'Update account: 31', 1, '2019-04-16 03:18:50'),
(186, 'account', 'Update account: 30', 1, '2019-04-16 03:20:48'),
(187, 'account', 'Update account: 30', 1, '2019-04-16 03:20:58'),
(188, 'account', 'Update account: 30', 1, '2019-04-16 03:21:23'),
(189, 'account', 'Update account: 30', 1, '2019-04-16 03:21:52'),
(190, 'category', 'Insert category: 21', 1, '2019-04-16 04:13:47'),
(191, 'category', 'Update category: 21', 1, '2019-04-16 04:14:46'),
(192, 'category', 'Insert category: 22', 1, '2019-04-16 04:15:17'),
(193, 'category', 'Insert category: 23', 1, '2019-04-16 04:15:33'),
(194, 'category', 'Update category: 23', 1, '2019-04-16 04:15:39'),
(195, 'category', 'Update category: 22', 1, '2019-04-16 04:15:39'),
(196, 'category', 'Update category: 21', 1, '2019-04-16 04:15:43'),
(197, 'category', 'Insert category: 24', 1, '2019-04-16 04:17:42'),
(198, 'category', 'Insert category: 25', 1, '2019-04-16 04:17:52'),
(199, 'category', 'Insert category: 26', 1, '2019-04-16 04:18:02'),
(200, 'category', 'Insert category: 27', 1, '2019-04-16 04:18:12'),
(201, 'category', 'Insert category: 28', 1, '2019-04-16 04:18:24'),
(202, 'category', 'Insert category: 29', 1, '2019-04-16 04:18:34'),
(203, 'category', 'Update category: 29', 1, '2019-04-16 04:19:30'),
(204, 'category', 'Update category: 28', 1, '2019-04-16 04:19:30'),
(205, 'category', 'Update category: 27', 1, '2019-04-16 04:19:30'),
(206, 'category', 'Update category: 26', 1, '2019-04-16 04:19:30'),
(207, 'category', 'Update category: 25', 1, '2019-04-16 04:19:30'),
(208, 'category', 'Update category: 24', 1, '2019-04-16 04:19:30'),
(209, 'post', 'Insert post: 6', 1, '2019-04-16 04:32:05'),
(210, 'post', 'Insert post: 7', 1, '2019-04-16 04:33:50'),
(211, 'post', 'Insert post: 8', 1, '2019-04-16 04:34:03'),
(212, 'post', 'Insert post: 9', 1, '2019-04-16 04:34:22'),
(213, 'post', 'Insert post: 10', 1, '2019-04-16 04:34:35'),
(214, 'post', 'Insert post: 11', 1, '2019-04-16 04:34:50'),
(215, 'post', 'Update post: 11', 1, '2019-04-16 04:36:09'),
(216, 'post', 'Update post: 10', 1, '2019-04-16 04:36:20'),
(217, 'post', 'Update post: 9', 1, '2019-04-16 04:36:31'),
(218, 'post', 'Update post: 8', 1, '2019-04-16 04:36:40'),
(219, 'post', 'Update post: 7', 1, '2019-04-16 04:36:40'),
(220, 'post', 'Update post: 6', 1, '2019-04-16 04:36:40'),
(221, 'message_system', 'Sửa message_system có id là 6', 1, '2019-04-16 05:08:29'),
(222, 'message_system', 'Sửa message_system có id là 6', 1, '2019-04-16 05:08:35'),
(223, 'message_system', 'Sửa message_system có id là 7', 1, '2019-04-16 05:21:19'),
(224, 'message_system', 'Sửa message_system có id là 8', 1, '2019-04-16 05:22:15'),
(225, 'message_system', 'Sửa message_system có id là 8', 1, '2019-04-16 05:22:24'),
(226, 'message_system', 'Sửa message_system có id là 9', 1, '2019-04-16 05:43:38'),
(227, 'message_system', 'Sửa message_system có id là 9', 1, '2019-04-16 05:59:07'),
(228, 'message_system', 'Sửa message_system có id là 10', 1, '2019-04-17 09:30:38'),
(229, 'page', 'Insert page: 0', 1, '2019-04-17 09:44:44'),
(230, 'page', 'Insert page: 0', 1, '2019-04-17 09:45:01'),
(231, 'page', 'Update page: 14', 1, '2019-04-17 09:45:10'),
(232, 'page', 'Update page: 13', 1, '2019-04-17 09:45:16'),
(233, 'page', 'Insert page: 0', 1, '2019-04-17 09:57:55'),
(234, 'page', 'Update page: 15', 1, '2019-04-17 09:58:14'),
(235, 'page', 'Update page: 15', 1, '2019-04-17 09:58:37'),
(236, 'groups', 'Insert groups: 16', 1, '2019-04-17 11:32:08'),
(237, 'groups', 'Update groups: 16', 1, '2019-04-17 11:32:26'),
(238, 'groups', 'Update groups: 16', 1, '2019-04-17 11:32:33'),
(239, 'groups', 'Insert groups: 17', 1, '2019-04-17 11:33:18'),
(240, 'groups', 'Insert groups: 18', 1, '2019-04-17 11:33:45'),
(241, 'users', 'Update users: 38', 1, '2019-04-17 11:41:12'),
(242, 'users', 'Update users: 38', 1, '2019-04-17 11:43:43'),
(243, 'users', 'Update users: 38', 1, '2019-04-17 11:43:51'),
(244, 'groups', 'Update groups: 18', 1, '2019-04-17 11:50:34'),
(245, 'users', 'Update users: 38', 1, '2019-04-17 11:51:03'),
(246, 'groups', 'Insert groups: 19', 1, '2019-04-17 11:52:32'),
(247, 'groups', 'Update groups: 19', 1, '2019-04-17 01:33:01'),
(248, 'users', 'Insert users: 0', 1, '2019-04-17 01:35:33'),
(249, 'account', 'Update account: 31', 1, '2019-04-17 01:47:20'),
(250, 'account', 'Update account: 31', 1, '2019-04-17 01:47:47'),
(251, 'account', 'Update account: 31', 1, '2019-04-17 01:48:03'),
(252, 'account', 'Update account: 31', 1, '2019-04-17 01:48:24'),
(253, 'account', 'Update account: 31', 1, '2019-04-17 01:48:31'),
(254, 'account', 'Update account: 31', 1, '2019-04-17 01:48:45'),
(255, 'account', 'Insert account: 45', 1, '2019-04-17 01:50:07'),
(256, 'account', 'delete account: 45', 1, '2019-04-17 02:10:28'),
(257, 'account', 'delete account: 31', 1, '2019-04-17 02:14:37'),
(258, 'account', 'delete account: 30', 1, '2019-04-17 02:14:37'),
(259, 'account', 'delete account: 25', 1, '2019-04-17 02:14:37'),
(260, 'account', 'delete account: 24', 1, '2019-04-17 02:14:37'),
(261, 'account', 'delete account: 23', 1, '2019-04-17 02:14:37'),
(262, 'account', 'Insert account: 46', 1, '2019-04-17 02:15:16'),
(263, 'contact', 'Update contact: 44', 1, '2019-04-17 03:03:08'),
(264, 'contact', 'Update contact: 41', 1, '2019-04-17 03:04:15'),
(265, 'contact', 'Update contact: 40', 1, '2019-04-17 03:04:15'),
(266, 'property', 'Insert property: 0', 1, '2019-04-18 03:08:39'),
(267, 'property', 'Update property: 28', 1, '2019-04-18 03:10:54'),
(268, 'property', 'Insert property: 0', 1, '2019-04-18 03:11:13'),
(269, 'property', 'Insert property: 0', 1, '2019-04-18 03:11:39'),
(270, 'property', 'Insert property: 0', 1, '2019-04-18 03:12:21'),
(271, 'property', 'Update property: 31', 1, '2019-04-18 03:12:36'),
(272, 'property', 'Insert property: 0', 1, '2019-04-18 03:13:53'),
(273, 'property', 'Update property: 32', 1, '2019-04-18 03:14:01'),
(274, 'property', 'Update property: 32', 1, '2019-04-18 03:16:43'),
(275, 'property', 'Update property: 30', 1, '2019-04-18 03:16:43'),
(276, 'property', 'Update property: 29', 1, '2019-04-18 03:16:48'),
(277, 'post', 'Thêm Banner có id là 8', 1, '2019-04-18 03:29:12'),
(278, 'post', 'Thêm Banner có id là 9', 1, '2019-04-18 03:34:23'),
(279, 'property', 'Insert property: 0', 1, '2019-04-18 03:40:55'),
(280, 'property', 'Insert property: 0', 1, '2019-04-18 03:46:16'),
(281, 'property', 'Insert property: 0', 1, '2019-04-18 03:46:24'),
(282, 'post', 'Thêm Banner có id là 10', 1, '2019-04-19 09:25:56'),
(283, 'post', 'Thêm Banner có id là 11', 1, '2019-04-19 09:27:27'),
(284, 'post', 'Thêm Banner có id là 12', 1, '2019-04-19 09:28:25'),
(285, 'post', 'Thêm Banner có id là 13', 1, '2019-04-19 09:48:32'),
(286, 'post', 'Thêm Banner có id là 14', 1, '2019-04-19 09:48:43'),
(287, 'post', 'Thêm Banner có id là 15', 1, '2019-04-19 09:52:27'),
(288, 'post', 'Thêm Banner có id là 16', 1, '2019-04-19 09:53:41'),
(289, 'property', 'Insert property: 0', 1, '2019-04-19 09:54:14'),
(290, 'post', 'Thêm Banner có id là 17', 1, '2019-04-19 09:55:53'),
(291, 'post', 'Thêm Banner có id là 18', 1, '2019-04-19 10:04:40'),
(292, 'property', 'Insert property: 0', 1, '2019-04-19 10:33:16'),
(293, 'property', 'Insert property: 0', 1, '2019-04-19 10:33:35'),
(294, 'property', 'Insert property: 0', 1, '2019-04-19 10:33:53'),
(295, 'property', 'Insert property: 0', 1, '2019-04-19 10:34:10'),
(296, 'property', 'Insert property: 0', 1, '2019-04-19 10:34:23'),
(297, 'property', 'Insert property: 0', 1, '2019-04-19 10:34:38'),
(298, 'property', 'Insert property: 0', 1, '2019-04-19 10:34:54'),
(299, 'property', 'Insert property: 0', 1, '2019-04-19 10:35:13'),
(300, 'property', 'Insert property: 0', 1, '2019-04-19 10:35:28'),
(301, 'property', 'Insert property: 0', 1, '2019-04-19 10:35:41'),
(302, 'property', 'Insert property: 0', 1, '2019-04-19 10:35:52'),
(303, 'property', 'Insert property: 0', 1, '2019-04-19 10:36:06'),
(304, 'property', 'Update property: 3', 1, '2019-04-19 10:37:37'),
(305, 'property', 'Insert property: 0', 1, '2019-04-19 10:38:14'),
(306, 'property', 'Insert property: 0', 1, '2019-04-19 10:38:42'),
(307, 'property', 'Update property: 5', 1, '2019-04-19 10:39:47'),
(308, 'property', 'Update property: 4', 1, '2019-04-19 10:39:47'),
(309, 'property', 'Update property: 3', 1, '2019-04-19 10:39:47'),
(310, 'property', 'Update property: 21', 1, '2019-04-19 10:39:59'),
(311, 'property', 'Update property: 20', 1, '2019-04-19 10:39:59'),
(312, 'property', 'Update property: 19', 1, '2019-04-19 10:39:59'),
(313, 'property', 'Update property: 18', 1, '2019-04-19 10:39:59'),
(314, 'property', 'Update property: 17', 1, '2019-04-19 10:39:59'),
(315, 'property', 'Update property: 16', 1, '2019-04-19 10:39:59'),
(316, 'property', 'Update property: 11', 1, '2019-04-19 10:39:59'),
(317, 'property', 'Update property: 10', 1, '2019-04-19 10:39:59'),
(318, 'property', 'Update property: 9', 1, '2019-04-19 10:39:59'),
(319, 'property', 'Update property: 8', 1, '2019-04-19 10:39:59'),
(320, 'property', 'Update property: 27', 1, '2019-04-19 10:40:32'),
(321, 'property', 'Update property: 26', 1, '2019-04-19 10:40:32'),
(322, 'property', 'Update property: 25', 1, '2019-04-19 10:40:32'),
(323, 'property', 'Update property: 24', 1, '2019-04-19 10:40:32'),
(324, 'property', 'Update property: 23', 1, '2019-04-19 10:40:32'),
(325, 'property', 'Update property: 22', 1, '2019-04-19 10:40:32'),
(326, 'property', 'Insert property: 0', 1, '2019-04-19 10:41:13'),
(327, 'property', 'Insert property: 0', 1, '2019-04-19 10:41:29'),
(328, 'property', 'Insert property: 0', 1, '2019-04-19 10:43:20'),
(329, 'property', 'Insert property: 0', 1, '2019-04-19 10:43:52'),
(330, 'property', 'Insert property: 0', 1, '2019-04-19 10:44:26'),
(331, 'property', 'Insert property: 0', 1, '2019-04-19 10:44:54'),
(332, 'property', 'Insert property: 0', 1, '2019-04-19 10:45:16'),
(333, 'property', 'Insert property: 0', 1, '2019-04-19 10:45:29'),
(334, 'property', 'Update property: 58', 1, '2019-04-19 10:45:35'),
(335, 'property', 'Insert property: 0', 1, '2019-04-19 10:46:08'),
(336, 'property', 'Insert property: 0', 1, '2019-04-19 10:46:30'),
(337, 'property', 'Insert property: 0', 1, '2019-04-19 10:46:45'),
(338, 'property', 'Insert property: 0', 1, '2019-04-19 10:47:16'),
(339, 'property', 'Insert property: 0', 1, '2019-04-19 10:47:41'),
(340, 'property', 'Insert property: 0', 1, '2019-04-19 10:48:46'),
(341, 'property', 'Insert property: 0', 1, '2019-04-19 10:49:20'),
(342, 'property', 'Insert property: 0', 1, '2019-04-19 10:49:56'),
(343, 'property', 'Insert property: 0', 1, '2019-04-19 10:50:19'),
(344, 'category', 'Update category: 5', 1, '2019-04-19 10:52:21'),
(345, 'category', 'Update category: 16', 1, '2019-04-19 10:53:21'),
(346, 'category', 'Update category: 16', 1, '2019-04-19 10:53:37'),
(347, 'category', 'Update category: 7', 1, '2019-04-19 10:53:56'),
(348, 'category', 'Update category: 6', 1, '2019-04-19 10:53:56'),
(349, 'category', 'Update category: 4', 1, '2019-04-19 10:53:56'),
(350, 'category', 'Update category: 2', 1, '2019-04-19 10:53:56'),
(351, 'category', 'Insert category: 30', 1, '2019-04-19 10:57:52'),
(352, 'category', 'Update category: 3', 1, '2019-04-19 10:58:34'),
(353, 'category', 'Update category: 5', 1, '2019-04-19 10:58:40'),
(354, 'category', 'Update category: 16', 1, '2019-04-19 10:58:47'),
(355, 'category', 'Update category: 30', 1, '2019-04-19 10:58:52'),
(356, 'post', 'Thêm Banner có id là 19', 1, '2019-04-19 11:01:16'),
(357, 'post', 'Thêm Banner có id là 20', 1, '2019-04-19 11:01:23'),
(358, 'post', 'Thêm Banner có id là 21', 1, '2019-04-19 11:01:30'),
(359, 'post', 'Thêm Banner có id là 22', 1, '2019-04-19 11:01:38'),
(360, 'post', 'Thêm Banner có id là 23', 1, '2019-04-19 11:01:48'),
(361, 'post', 'Thêm Banner có id là 24', 1, '2019-04-19 11:01:57'),
(362, 'currency', 'Insert currency: 113', 1, '2019-04-19 11:27:03'),
(363, 'currency', 'Insert currency: 114', 1, '2019-04-19 11:31:05'),
(364, 'currency', 'Update currency: 113', 1, '2019-04-19 11:31:46'),
(365, 'currency', 'Update currency: 113', 1, '2019-04-19 11:33:32'),
(366, 'currency', 'Update currency: 113', 1, '2019-04-19 11:34:22'),
(367, 'search', 'Update search: 9', 1, '2019-04-19 11:40:18'),
(368, 'search', 'Update search: 9', 1, '2019-04-19 11:52:26'),
(369, 'search', 'Update search: 9', 1, '2019-04-19 11:54:08'),
(370, 'search', 'Update search: 10', 1, '2019-04-19 11:54:08'),
(371, 'search', 'Update search: 11', 1, '2019-04-19 11:54:34'),
(372, 'search', 'Update search: 12', 1, '2019-04-19 11:54:38'),
(373, 'search', 'Update search: 13', 1, '2019-04-19 11:54:42'),
(374, 'search', 'Update search: 14', 1, '2019-04-19 11:54:42'),
(375, 'search', 'Update search: 15', 1, '2019-04-19 11:54:42'),
(376, 'search', 'Update search: 16', 1, '2019-04-19 11:54:42'),
(377, 'search', 'Update search: 17', 1, '2019-04-19 11:54:42'),
(378, 'search', 'Update search: 18', 1, '2019-04-19 11:54:42'),
(379, 'search', 'Update search: 19', 1, '2019-04-19 11:54:42'),
(380, 'property', 'Insert property: 0', 1, '2019-04-19 02:04:44'),
(381, 'property', 'Update property: 68', 1, '2019-04-19 02:04:55'),
(382, 'property', 'Update property: 7', 1, '2019-04-19 02:05:14'),
(383, 'property', 'Update property: 7', 1, '2019-04-19 02:05:33'),
(384, 'property', 'Update property: 7', 1, '2019-04-19 02:05:58'),
(385, 'property', 'Update property: 68', 1, '2019-04-19 02:09:24'),
(386, 'room', 'Update room: 2', 1, '2019-04-19 02:10:23'),
(387, 'room', 'Insert room: 17', 1, '2019-04-19 02:35:18'),
(388, 'room', 'Insert room: 18', 1, '2019-04-19 02:35:46'),
(389, 'room', 'Insert room: 19', 1, '2019-04-19 02:44:07'),
(390, 'room', 'Update room: 19', 1, '2019-04-19 02:44:31'),
(391, 'room', 'Update room: 19', 1, '2019-04-19 02:44:47'),
(392, 'room', 'Update room: 19', 1, '2019-04-19 02:46:42'),
(393, 'room', 'Update room: 18', 1, '2019-04-19 02:46:42'),
(394, 'room', 'Update room: 17', 1, '2019-04-19 02:46:45'),
(395, 'room', 'Insert room: 20', 1, '2019-04-19 02:47:25'),
(396, 'room', 'Update room: 2', 1, '2019-04-21 11:50:56'),
(397, 'room', 'Update room: 1', 1, '2019-04-21 11:52:18'),
(398, 'room', 'Update room: 1', 1, '2019-04-21 11:52:23'),
(399, 'room', 'Update room: 22', 46, '2019-04-22 09:58:38'),
(400, 'room', 'Update room: 22', 46, '2019-04-22 10:11:04'),
(401, 'room', 'Update room: 22', 46, '2019-04-22 10:11:22'),
(402, 'room', 'Update room: 22', 46, '2019-04-22 10:17:05'),
(403, 'room', 'Update room: 22', 46, '2019-04-22 10:17:33'),
(404, 'room', 'Insert room: 23', 46, '2019-04-22 10:22:54'),
(405, 'room', 'Update room: 23', 46, '2019-04-22 10:24:13'),
(406, 'room', 'Insert room: 24', 46, '2019-04-22 10:25:05'),
(407, 'room', 'Update room: 24', 46, '2019-04-22 10:26:05'),
(408, 'room', 'Update room: 24', 46, '2019-04-22 10:27:08'),
(409, 'room', 'Update room: 23', 46, '2019-04-22 10:27:28'),
(410, 'room', 'Insert room: 25', 46, '2019-04-22 10:29:24'),
(411, 'account', 'delete account: 46', 46, '2019-04-22 11:35:33'),
(412, 'users', 'Insert users: 0', 1, '2019-04-22 04:02:32'),
(413, 'users', 'delete users: 38', 1, '2019-04-22 04:02:46'),
(414, 'users', 'Update users: 46', 1, '2019-04-22 04:02:57'),
(415, 'search', 'Insert search: 23', 1, '2019-04-23 08:53:20'),
(416, 'users', 'Update users: 47', 1, '2019-04-23 08:54:21'),
(417, 'users', 'Insert users: 0', 1, '2019-04-23 08:59:56'),
(418, 'account', 'Insert account: 65', 1, '2019-04-23 09:03:24'),
(419, 'account', 'Update account: 65', 1, '2019-04-23 09:03:40'),
(420, 'users', 'Update users: 46', 1, '2019-04-23 09:30:28'),
(421, 'users', 'Insert users: 0', 46, '2019-04-23 09:34:16'),
(422, 'users', 'Insert users: 0', 46, '2019-04-23 09:35:44'),
(423, 'property', 'Insert property: 0', 46, '2019-04-23 10:27:05'),
(424, 'property', 'Insert property: 0', 46, '2019-04-23 10:28:21'),
(425, 'property', 'Insert property: 0', 46, '2019-04-23 10:29:05'),
(426, 'account', 'delete account: 65', 46, '2019-04-23 11:20:18'),
(427, 'account', 'delete account: 64', 46, '2019-04-23 11:20:18'),
(428, 'account', 'delete account: 63', 46, '2019-04-23 11:20:18'),
(429, 'account', 'delete account: 62', 46, '2019-04-23 11:20:18'),
(430, 'account', 'delete account: 61', 46, '2019-04-23 11:20:18'),
(431, 'account', 'delete account: 60', 46, '2019-04-23 11:20:18'),
(432, 'room', 'Update room: 28', 1, '2019-04-23 11:46:34'),
(433, 'account', 'Insert account: 66', 1, '2019-04-23 02:18:50'),
(434, 'account', 'delete account: 66', 1, '2019-04-23 02:20:12'),
(435, 'account', 'Insert account: 68', 1, '2019-04-23 02:27:55'),
(436, 'property', 'Update property: 67', 1, '2019-04-23 03:12:29'),
(437, 'property', 'Update property: 67', 1, '2019-04-23 03:26:02'),
(438, 'property', 'Update property: 57', 1, '2019-04-23 03:26:28'),
(439, 'property', 'Update property: 51', 1, '2019-04-23 03:26:42'),
(440, 'property', 'Update property: 53', 1, '2019-04-23 03:26:57'),
(441, 'property', 'Update property: 60', 1, '2019-04-23 03:28:32'),
(442, 'room', 'Update room: 20', 1, '2019-04-23 03:33:52'),
(443, 'room', 'Update room: 2', 1, '2019-04-23 03:33:57'),
(444, 'room', 'Update room: 2', 1, '2019-04-23 03:35:53'),
(445, 'account', 'Update account: 67', 1, '2019-04-23 04:24:36'),
(446, 'account', 'Update account: 68', 1, '2019-04-23 04:43:46'),
(447, 'room', 'Insert room: 29', 1, '2019-04-24 09:55:56'),
(448, 'room', 'Update room: 29', 1, '2019-04-24 09:56:43'),
(449, 'users', 'Insert users: 0', 1, '2019-04-24 10:31:48'),
(450, 'account', 'Update account: 70', 1, '2019-04-24 10:56:57'),
(451, 'account', 'delete account: 70', 1, '2019-04-24 10:59:44'),
(452, 'account', 'delete account: 72', 1, '2019-04-24 11:26:45'),
(453, 'account', 'Update account: 73', 1, '2019-04-24 11:33:44'),
(454, 'account', 'Update account: 73', 1, '2019-04-24 11:34:46'),
(455, 'account', 'Update account: 73', 1, '2019-04-24 11:34:59'),
(456, 'account', 'Update account: 73', 1, '2019-04-24 11:35:34'),
(457, 'account', 'delete account: 73', 1, '2019-04-24 11:37:47'),
(458, 'account', 'Insert account: 74', 1, '2019-04-24 11:39:04'),
(459, 'unit', 'Update unit: 1', 1, '2019-04-24 02:25:22'),
(460, 'unit', 'Insert unit: 2', 1, '2019-04-24 02:26:37'),
(461, 'account', 'delete account: 71', 1, '2019-04-24 02:34:17'),
(462, 'account', 'delete account: 69', 1, '2019-04-24 02:34:20'),
(463, 'account', 'Insert account: 75', 1, '2019-04-24 02:35:19'),
(464, 'account', 'delete account: 75', 1, '2019-04-24 02:36:32'),
(465, 'account', 'Insert account: 76', 1, '2019-04-24 02:38:36'),
(466, 'account', 'Update account: 77', 1, '2019-04-24 09:55:28'),
(467, 'account', 'Update account: 77', 1, '2019-04-24 09:55:32'),
(468, 'room', 'Insert room: 30', 1, '2019-04-25 10:17:05'),
(469, 'room', 'Update room: 30', 1, '2019-04-25 10:17:27'),
(470, 'property', 'Update property: 71', 1, '2019-04-25 10:57:04'),
(471, 'property', 'Update property: 70', 1, '2019-04-25 10:57:06'),
(472, 'property', 'Update property: 69', 1, '2019-04-25 10:57:09'),
(473, 'property', 'Update property: 36', 1, '2019-04-25 10:57:11'),
(474, 'property', 'Update property: 35', 1, '2019-04-25 10:57:14'),
(475, 'property', 'Update property: 34', 1, '2019-04-25 10:57:16'),
(476, 'property', 'Update property: 33', 1, '2019-04-25 10:57:18'),
(477, 'room', 'Update room: 30', 1, '2019-04-25 02:06:13'),
(478, 'room', 'Update room: 30', 1, '2019-04-25 02:25:30'),
(479, 'room', 'Update room: 30', 1, '2019-04-25 02:26:34'),
(480, 'room', 'Update room: 30', 1, '2019-04-25 02:29:53'),
(481, 'room', 'Update room: 30', 1, '2019-04-25 02:30:56'),
(482, 'property', 'Update property: 67', 1, '2019-04-25 02:44:01'),
(483, 'property', 'Update property: 57', 1, '2019-04-25 02:44:46'),
(484, 'property', 'Update property: 51', 1, '2019-04-25 02:45:12'),
(485, 'property', 'Update property: 53', 1, '2019-04-25 02:45:33'),
(486, 'property', 'Update property: 60', 1, '2019-04-25 02:45:52'),
(487, 'account', 'Update account: 68', 1, '2019-04-25 02:48:33'),
(488, 'account', 'Update account: 81', 1, '2019-04-25 02:51:41'),
(489, 'account', 'delete account: 81', 1, '2019-04-25 02:56:37'),
(490, 'account', 'Insert account: 82', 1, '2019-04-25 02:59:15'),
(491, 'account', 'Insert account: 83', 1, '2019-04-25 03:02:04'),
(492, 'account', 'Update account: 68', 1, '2019-04-25 04:35:29'),
(493, 'room', 'Update room: 30', 1, '2019-04-25 10:18:25'),
(494, 'account', 'Insert account: 84', 1, '2019-04-26 09:40:20'),
(495, 'account', 'delete account: 84', 1, '2019-04-26 09:40:46'),
(496, 'account', 'Insert account: 85', 1, '2019-04-26 09:42:38'),
(497, 'room', 'Update room: 30', 1, '2019-04-26 11:05:52'),
(498, 'room', 'Update room: 1', 1, '2019-04-26 11:06:08'),
(499, 'room', 'Update room: 2', 1, '2019-04-26 11:06:10'),
(500, 'room', 'Update room: 20', 1, '2019-04-26 11:06:13'),
(501, 'room', 'Update room: 22', 1, '2019-04-26 11:06:19'),
(502, 'room', 'Update room: 23', 1, '2019-04-26 11:06:22'),
(503, 'room', 'Update room: 24', 1, '2019-04-26 11:06:24'),
(504, 'room', 'Update room: 28', 1, '2019-04-26 11:06:35'),
(505, 'page', 'Update page: 12', 1, '2019-04-26 11:07:27'),
(506, 'page', 'Update page: 2', 1, '2019-04-26 11:07:30'),
(507, 'page', 'Update page: 7', 1, '2019-04-26 11:07:37'),
(508, 'page', 'Update page: 8', 1, '2019-04-26 11:07:40'),
(509, 'page', 'Update page: 9', 1, '2019-04-26 11:07:43'),
(510, 'page', 'Update page: 10', 1, '2019-04-26 11:07:46'),
(511, 'page', 'Update page: 11', 1, '2019-04-26 11:07:49'),
(512, 'page', 'Update page: 12', 1, '2019-04-26 11:07:54'),
(513, 'room', 'Update room: 31', 1, '2019-04-26 02:08:08'),
(514, 'room', 'Update room: 31', 1, '2019-04-26 02:08:33'),
(515, 'account', 'delete account: 85', 1, '2019-04-26 02:13:36'),
(516, 'account', 'Insert account: 88', 1, '2019-04-26 02:14:55'),
(517, 'users', 'Insert users: 0', 1, '2019-04-26 02:26:51'),
(518, 'account', 'delete account: 82', 1, '2019-04-26 09:46:07'),
(519, 'room', 'Update room: 30', 1, '2019-04-26 10:04:07'),
(520, 'room', 'Update room: 30', 1, '2019-04-26 10:06:08'),
(521, 'room', 'Update room: 32', 1, '2019-04-26 10:06:37'),
(522, 'room', 'Update room: 31', 1, '2019-04-26 10:06:39'),
(523, 'room', 'Insert room: 33', 1, '2019-04-26 10:24:53'),
(524, 'room', 'Insert room: 34', 1, '2019-04-26 11:45:43'),
(525, 'room', 'Update room: 34', 1, '2019-04-26 11:46:01'),
(526, 'message_system', 'Sửa message_system có id là 11', 1, '2019-04-27 10:25:59'),
(527, 'search', 'Update search: 20', 1, '2019-04-28 01:21:22'),
(528, 'search', 'Update search: 21', 1, '2019-04-28 01:21:25'),
(529, 'search', 'Update search: 23', 1, '2019-04-28 01:21:28'),
(530, 'search', 'Update search: 22', 1, '2019-04-28 01:21:31'),
(531, 'room', 'Update room: 38', 1, '2019-04-30 11:54:58'),
(532, 'room', 'Update room: 38', 1, '2019-04-30 11:56:52'),
(533, 'room', 'Update room: 38', 1, '2019-05-01 12:00:36'),
(534, 'room', 'Update room: 38', 1, '2019-05-01 12:00:49'),
(535, 'account', 'delete account: 105', 1, '2019-05-02 09:50:35'),
(536, 'account', 'Insert account: 106', 1, '2019-05-02 10:00:10'),
(537, 'account', 'delete account: 19', 1, '2019-05-02 11:04:39'),
(538, 'account', 'delete account: 20', 1, '2019-05-02 11:05:53'),
(539, 'account', 'delete account: 109', 1, '2019-05-02 11:58:13'),
(540, 'room', 'Update room: 33', 1, '2019-05-02 01:40:53'),
(541, 'room', 'Update room: 33', 1, '2019-05-02 01:43:22'),
(542, 'room', 'Update room: 33', 1, '2019-05-02 02:17:14'),
(543, 'room', 'Update room: 30', 1, '2019-05-02 02:18:09'),
(544, 'room', 'Update room: 30', 1, '2019-05-02 02:18:22'),
(545, 'room', 'Update room: 1', 1, '2019-05-02 02:19:28'),
(546, 'room', 'Update room: 2', 1, '2019-05-02 02:20:03'),
(547, 'room', 'Update room: 28', 1, '2019-05-02 02:21:04'),
(548, 'room', 'Update room: 33', 1, '2019-05-02 02:22:02'),
(549, 'room', 'Update room: 20', 1, '2019-05-02 02:22:34'),
(550, 'room', 'Update room: 1', 1, '2019-05-02 02:24:31'),
(551, 'room', 'Update room: 1', 1, '2019-05-02 02:30:55'),
(552, 'room', 'Update room: 2', 1, '2019-05-02 02:33:35'),
(553, 'room', 'Update room: 33', 1, '2019-05-02 02:39:56'),
(554, 'room', 'Update room: 20', 1, '2019-05-02 02:42:45'),
(555, 'room', 'Update room: 23', 1, '2019-05-02 02:45:19'),
(556, 'room', 'Update room: 24', 1, '2019-05-02 02:46:55'),
(557, 'room', 'Update room: 25', 1, '2019-05-02 02:47:57'),
(558, 'room', 'Update room: 29', 1, '2019-05-02 02:55:57'),
(559, 'room', 'Update room: 30', 1, '2019-05-02 03:02:20'),
(560, 'room', 'Update room: 29', 1, '2019-05-02 03:02:34'),
(561, 'room', 'Update room: 30', 1, '2019-05-02 03:20:11'),
(562, 'room', 'Update room: 34', 1, '2019-05-02 03:22:47'),
(563, 'room', 'Update room: 34', 1, '2019-05-02 05:15:04'),
(564, 'room', 'Update room: 34', 1, '2019-05-02 05:27:56'),
(565, 'room', 'Update room: 2', 1, '2019-05-02 05:43:49'),
(566, 'system_menu', 'Update system_menu: 1', 1, '2019-05-03 09:32:19'),
(567, 'system_menu', 'Update system_menu: 1', 1, '2019-05-03 09:32:36'),
(568, 'page', 'Update page: 10', 1, '2019-05-03 10:49:51'),
(569, 'room', 'Update room: 37', 1, '2019-05-03 02:11:36'),
(570, 'room', 'Update room: 36', 1, '2019-05-03 02:11:40'),
(571, 'room', 'Update room: 21', 1, '2019-05-03 02:12:17'),
(572, 'room', 'Update room: 28', 1, '2019-05-03 02:13:41'),
(573, 'room', 'Update room: 20', 1, '2019-05-03 02:18:02'),
(574, 'room', 'Update room: 39', 1, '2019-05-03 02:19:00'),
(575, 'room', 'Update room: 24', 1, '2019-05-03 02:22:50'),
(576, 'room', 'Update room: 24', 1, '2019-05-03 02:23:26'),
(577, 'room', 'Update room: 24', 1, '2019-05-03 02:23:59'),
(578, 'room', 'Update room: 24', 1, '2019-05-03 02:24:46'),
(579, 'room', 'Update room: 24', 1, '2019-05-03 02:28:31'),
(580, 'room', 'Update room: 34', 1, '2019-05-03 03:05:28'),
(581, 'room', 'Update room: 30', 1, '2019-05-03 03:06:34'),
(582, 'room', 'Update room: 30', 1, '2019-05-03 03:06:59'),
(583, 'room', 'Update room: 29', 1, '2019-05-03 03:07:14'),
(584, 'room', 'Update room: 25', 1, '2019-05-03 03:08:16'),
(585, 'room', 'Update room: 24', 1, '2019-05-03 03:08:42'),
(586, 'room', 'Update room: 23', 1, '2019-05-03 03:08:54'),
(587, 'room', 'Update room: 20', 1, '2019-05-03 03:09:13'),
(588, 'room', 'Update room: 2', 1, '2019-05-03 03:09:22'),
(589, 'room', 'Update room: 1', 1, '2019-05-03 03:09:34'),
(590, 'room', 'Update room: 34', 1, '2019-05-03 04:08:42'),
(591, 'room', 'Update room: 33', 1, '2019-05-03 04:09:14'),
(592, 'room', 'Update room: 30', 1, '2019-05-03 04:09:49'),
(593, 'room', 'Update room: 29', 1, '2019-05-03 04:10:30'),
(594, 'room', 'Update room: 28', 1, '2019-05-03 04:10:46'),
(595, 'room', 'Update room: 25', 1, '2019-05-03 04:11:10'),
(596, 'room', 'Update room: 24', 1, '2019-05-03 04:11:30'),
(597, 'room', 'Update room: 20', 1, '2019-05-03 04:11:54'),
(598, 'room', 'Update room: 2', 1, '2019-05-03 04:12:23'),
(599, 'room', 'Update room: 1', 1, '2019-05-03 04:12:50'),
(600, 'property', 'Insert property: 0', 1, '2019-05-03 04:23:53'),
(601, 'property', 'Insert property: 0', 1, '2019-05-03 04:30:10'),
(602, 'property', 'Insert property: 0', 1, '2019-05-03 04:30:53'),
(603, 'property', 'Insert property: 0', 1, '2019-05-03 04:35:34'),
(604, 'property', 'Update property: 75', 1, '2019-05-03 04:35:47'),
(605, 'property', 'Insert property: 0', 1, '2019-05-03 04:37:30'),
(606, 'property', 'Insert property: 0', 1, '2019-05-03 04:38:20'),
(607, 'property', 'Insert property: 0', 1, '2019-05-03 04:40:21'),
(608, 'room', 'Update room: 34', 1, '2019-05-03 04:43:07'),
(609, 'room', 'Update room: 33', 1, '2019-05-03 04:48:22'),
(610, 'property', 'Update property: 78', 1, '2019-05-03 04:48:36'),
(611, 'room', 'Update room: 30', 1, '2019-05-03 04:49:46'),
(612, 'room', 'Update room: 29', 1, '2019-05-03 04:50:42'),
(613, 'room', 'Update room: 28', 1, '2019-05-03 04:51:50'),
(614, 'room', 'Update room: 25', 1, '2019-05-03 04:52:49'),
(615, 'room', 'Update room: 24', 1, '2019-05-03 04:53:53'),
(616, 'room', 'Update room: 23', 1, '2019-05-03 04:55:24'),
(617, 'room', 'Update room: 20', 1, '2019-05-03 04:56:14'),
(618, 'room', 'Update room: 2', 1, '2019-05-03 04:57:26'),
(619, 'room', 'Update room: 1', 1, '2019-05-03 04:58:18'),
(620, 'property', 'Update property: 51', 1, '2019-05-03 05:01:22'),
(621, 'property', 'Update property: 60', 1, '2019-05-03 05:02:40'),
(622, 'property', 'Update property: 57', 1, '2019-05-03 05:02:51'),
(623, 'property', 'Update property: 53', 1, '2019-05-03 05:03:09'),
(624, 'room', 'Update room: 27', 1, '2019-05-03 05:07:28'),
(625, 'room', 'Update room: 35', 1, '2019-05-03 05:39:48'),
(626, 'room', 'Update room: 38', 1, '2019-05-03 05:43:30'),
(627, 'account', 'delete account: 110', 1, '2019-05-03 05:50:02'),
(628, 'account', 'Insert account: 115', 1, '2019-05-03 05:50:50'),
(629, 'account', 'delete account: 115', 1, '2019-05-03 05:54:29'),
(630, 'account', 'Update account: 116', 1, '2019-05-03 05:57:58'),
(631, 'users', 'Insert users: 0', 1, '2019-05-03 05:59:42'),
(632, 'users', 'delete users: 53', 1, '2019-05-03 05:59:54'),
(633, 'users', 'Insert users: 0', 1, '2019-05-03 06:00:40'),
(634, 'users', 'delete users: 54', 1, '2019-05-04 09:56:12'),
(635, 'users', 'Insert users: 0', 1, '2019-05-04 09:56:39'),
(636, 'users', 'Update users: ', 55, '2019-05-04 09:58:17'),
(637, 'account', 'delete account: 93', 1, '2019-05-04 03:49:50'),
(638, 'users', 'Update users: 55', 1, '2019-05-06 10:42:18'),
(639, 'users', 'Update users: 55', 1, '2019-05-06 10:43:22'),
(640, 'currency', 'Update currency: 114', 1, '2019-05-06 10:44:39'),
(641, 'currency', 'Update currency: 2', 1, '2019-05-06 10:46:14'),
(642, 'users', 'Insert users: 0', 1, '2019-05-06 10:57:47'),
(643, 'account', 'Update account: 68', 1, '2019-05-06 11:04:58'),
(644, 'account', 'Update account: 122', 1, '2019-05-06 01:50:11'),
(645, 'account', 'Insert account: 123', 1, '2019-05-06 01:57:40'),
(646, 'account', 'Update account: 123', 1, '2019-05-06 02:07:36'),
(647, 'account', 'Insert account: 124', 1, '2019-05-06 02:11:07'),
(648, 'category', 'Insert category: 31', 1, '2019-05-06 02:33:49'),
(649, 'account', 'Update account: 117', 1, '2019-05-06 02:37:08'),
(650, 'account', 'Update account: 117', 1, '2019-05-06 02:37:45'),
(651, 'account', 'Insert account: 125', 1, '2019-05-06 02:42:14'),
(652, 'search', 'Update search: 20', 1, '2019-05-06 02:43:22'),
(653, 'search', 'Update search: 21', 1, '2019-05-06 02:43:36'),
(654, 'search', 'Update search: 22', 1, '2019-05-06 02:44:25'),
(655, 'search', 'Update search: 23', 1, '2019-05-06 02:45:00'),
(656, 'account', 'Update account: 125', 1, '2019-05-06 02:45:36'),
(657, 'account', 'delete account: 125', 1, '2019-05-06 02:45:41'),
(658, 'search', 'Insert search: 24', 1, '2019-05-06 02:47:05'),
(659, 'search', 'Insert search: 25', 1, '2019-05-06 02:48:14'),
(660, 'renter', 'Update renter: 6', 1, '2019-05-06 02:48:31'),
(661, 'search', 'Update search: 20', 1, '2019-05-06 02:51:43'),
(662, 'search', 'Update search: 21', 1, '2019-05-06 02:51:57'),
(663, 'search', 'Update search: 22', 1, '2019-05-06 02:52:07'),
(664, 'search', 'Update search: 23', 1, '2019-05-06 02:52:10'),
(665, 'search', 'Update search: 24', 1, '2019-05-06 02:52:19'),
(666, 'search', 'Update search: 25', 1, '2019-05-06 02:52:37'),
(667, 'renter', 'Update renter: 7', 1, '2019-05-06 02:54:49'),
(668, 'category', 'Insert category: 32', 1, '2019-05-06 02:56:09'),
(669, 'category', 'Update category: 32', 1, '2019-05-06 02:56:13'),
(670, 'category', 'Update category: 31', 1, '2019-05-06 02:56:20'),
(671, 'contact', 'Update contact: 52', 1, '2019-05-06 03:06:33'),
(672, 'contact', 'Update contact: 53', 1, '2019-05-06 03:07:50'),
(673, 'message_system', 'Sửa message_system có id là 24', 1, '2019-05-06 03:12:39'),
(674, 'property', 'Insert property: 0', 1, '2019-05-06 03:19:06'),
(675, 'property', 'Insert property: 0', 1, '2019-05-06 03:19:51'),
(676, 'property', 'Update property: 80', 1, '2019-05-06 03:19:57'),
(677, 'property', 'Update property: 79', 1, '2019-05-06 03:20:15'),
(678, 'property', 'Update property: 79', 1, '2019-05-06 03:20:20'),
(679, 'post', 'Thêm Banner có id là 25', 1, '2019-05-06 03:21:14'),
(680, 'post', 'Thêm Banner có id là 26', 1, '2019-05-06 03:21:42'),
(681, 'page', 'Insert page: 0', 1, '2019-05-06 03:28:28'),
(682, 'page', 'Insert page: 0', 1, '2019-05-06 03:28:47'),
(683, 'page', 'Update page: 17', 1, '2019-05-06 03:28:53'),
(684, 'page', 'Update page: 16', 1, '2019-05-06 03:28:59'),
(685, 'search', 'Insert search: 26', 1, '2019-05-06 03:36:45'),
(686, 'search', 'Update search: 26', 1, '2019-05-06 03:37:05'),
(687, 'currency', 'Insert currency: 115', 1, '2019-05-06 03:42:23'),
(688, 'page', 'Update page: 10', 1, '2019-05-06 03:42:36'),
(689, 'currency', 'Insert currency: 116', 1, '2019-05-06 03:42:36'),
(690, 'currency', 'Update currency: 116', 1, '2019-05-06 03:42:51'),
(691, 'currency', 'Update currency: 115', 1, '2019-05-06 03:42:58'),
(692, 'page', 'Update page: 8', 1, '2019-05-06 03:43:50'),
(693, 'page', 'Update page: 8', 1, '2019-05-06 03:45:32'),
(694, 'category', 'Insert category: 33', 1, '2019-05-06 03:46:47'),
(695, 'category', 'Insert category: 34', 1, '2019-05-06 03:47:32'),
(696, 'category', 'Update category: 33', 1, '2019-05-06 03:47:39'),
(697, 'category', 'Update category: 34', 1, '2019-05-06 03:47:46'),
(698, 'property', 'Insert property: 0', 1, '2019-05-06 03:48:18'),
(699, 'page', 'Update page: 8', 1, '2019-05-06 03:48:25'),
(700, 'property', 'Insert property: 0', 1, '2019-05-06 03:48:28'),
(701, 'page', 'Update page: 10', 1, '2019-05-06 03:51:07'),
(702, 'page', 'Update page: 10', 1, '2019-05-06 03:51:56'),
(703, 'page', 'Update page: 8', 1, '2019-05-06 03:53:26'),
(704, 'page', 'Update page: 10', 1, '2019-05-06 03:53:51'),
(705, 'page', 'Update page: 11', 1, '2019-05-06 03:55:28'),
(706, 'property', 'Update property: 82', 1, '2019-05-06 03:57:08'),
(707, 'property', 'Update property: 81', 1, '2019-05-06 03:57:14'),
(708, 'page', 'Update page: 11', 1, '2019-05-06 03:57:31'),
(709, 'page', 'Update page: 9', 1, '2019-05-06 03:58:16'),
(710, 'page', 'Update page: 9', 1, '2019-05-06 04:00:22'),
(711, 'page', 'Update page: 9', 1, '2019-05-06 04:01:40'),
(712, 'property', 'Insert property: 0', 1, '2019-05-06 04:02:57'),
(713, 'property', 'Insert property: 0', 1, '2019-05-06 04:03:04'),
(714, 'property', 'Update property: 84', 1, '2019-05-06 04:04:35'),
(715, 'property', 'Update property: 83', 1, '2019-05-06 04:04:43'),
(716, 'page', 'Update page: 7', 1, '2019-05-06 04:05:38'),
(717, 'page', 'Update page: 7', 1, '2019-05-06 04:17:21'),
(718, 'room', 'Insert room: 42', 1, '2019-05-06 04:21:29'),
(719, 'room', 'Update room: 42', 1, '2019-05-06 04:24:29'),
(720, 'room', 'Update room: 42', 1, '2019-05-06 04:25:16'),
(721, 'page', 'Update page: 10', 1, '2019-05-06 04:37:43'),
(722, 'page', 'Update page: 10', 1, '2019-05-06 04:39:00'),
(723, 'room', 'Update room: 42', 1, '2019-05-06 04:48:50'),
(724, 'room', 'Update room: 42', 1, '2019-05-07 09:43:11'),
(725, 'users', 'delete users: 50', 1, '2019-05-07 10:46:14'),
(726, 'users', 'delete users: 47', 1, '2019-05-07 10:47:03'),
(727, 'users', 'delete users: 48', 1, '2019-05-07 10:47:05'),
(728, 'users', 'Update users: 46', 1, '2019-05-07 10:55:11'),
(729, 'account', 'Update account: 122', 1, '2019-05-07 10:57:12'),
(730, 'account', 'Update account: 121', 1, '2019-05-07 10:57:18'),
(731, 'account', 'Update account: 120', 1, '2019-05-07 10:57:24'),
(732, 'account', 'Update account: 119', 1, '2019-05-07 10:57:39'),
(733, 'account', 'Update account: 117', 1, '2019-05-07 10:57:52'),
(734, 'renter', 'Update renter: 8', 1, '2019-05-07 11:17:13'),
(735, 'room', 'Update room: 41', 1, '2019-05-07 11:28:06'),
(736, 'room', 'Update room: 40', 1, '2019-05-07 11:28:08'),
(737, 'room', 'Update room: 42', 1, '2019-05-07 11:28:22'),
(738, 'account', 'delete account: 126', 1, '2019-05-07 03:54:01'),
(739, 'account', 'delete account: 55', 1, '2019-05-07 03:54:30'),
(740, 'account', 'delete account: 54', 1, '2019-05-07 03:54:33'),
(741, 'account', 'delete account: 53', 1, '2019-05-07 03:54:35'),
(742, 'account', 'delete account: 52', 1, '2019-05-07 03:54:43'),
(743, 'account', 'delete account: 51', 1, '2019-05-07 03:54:44'),
(744, 'account', 'delete account: 50', 1, '2019-05-07 03:54:44'),
(745, 'account', 'delete account: 49', 1, '2019-05-07 03:54:52'),
(746, 'account', 'delete account: 48', 1, '2019-05-07 03:54:52'),
(747, 'account', 'delete account: 47', 1, '2019-05-07 03:54:52'),
(748, 'account', 'Update account: 120', 1, '2019-05-08 09:32:57'),
(749, 'contact', 'Update contact: 47', 1, '2019-05-08 09:42:55'),
(750, 'message_system', 'Sửa message_system có id là 21', 1, '2019-05-08 09:47:37'),
(751, 'message_system', 'Sửa message_system có id là 19', 1, '2019-05-08 09:47:48'),
(752, 'message_system', 'Sửa message_system có id là 18', 1, '2019-05-08 09:47:55'),
(753, 'message_system', 'Sửa message_system có id là 21', 1, '2019-05-08 09:48:13'),
(754, 'message_system', 'Sửa message_system có id là 19', 1, '2019-05-08 09:48:18'),
(755, 'message_system', 'Sửa message_system có id là 18', 1, '2019-05-08 09:48:24'),
(756, 'account', 'Update account: 107', 1, '2019-05-08 02:19:34'),
(757, 'room', 'Update room: 23', 1, '2019-05-08 03:24:15'),
(758, 'system_menu', 'Update system_menu: 19', 1, '2019-05-08 05:46:56'),
(759, 'system_menu', 'Update system_menu: 18', 1, '2019-05-08 05:47:01'),
(760, 'system_menu', 'Update system_menu: 10', 1, '2019-05-08 05:47:42'),
(761, 'system_menu', 'Update system_menu: 11', 1, '2019-05-08 05:48:01'),
(762, 'system_menu', 'Update system_menu: 12', 1, '2019-05-08 05:48:04'),
(763, 'account', 'Update account: 68', 1, '2019-05-09 09:35:47'),
(764, 'room', 'Update room: 46', 1, '2019-05-09 12:08:28'),
(765, 'room', 'Update room: 34', 1, '2019-05-09 01:50:20'),
(766, 'room', 'Update room: 34', 1, '2019-05-09 01:50:31'),
(767, 'room', 'Update room: 33', 1, '2019-05-09 01:51:06'),
(768, 'room', 'Update room: 30', 1, '2019-05-09 01:51:24'),
(769, 'room', 'Update room: 30', 1, '2019-05-09 01:51:30'),
(770, 'room', 'Update room: 25', 1, '2019-05-09 01:51:54'),
(771, 'room', 'Update room: 28', 1, '2019-05-09 01:52:08'),
(772, 'room', 'Update room: 24', 1, '2019-05-09 01:52:35'),
(773, 'room', 'Update room: 23', 1, '2019-05-09 01:52:50'),
(774, 'room', 'Update room: 20', 1, '2019-05-09 01:53:01'),
(775, 'room', 'Update room: 2', 1, '2019-05-09 01:53:11'),
(776, 'room', 'Update room: 1', 1, '2019-05-09 01:53:23'),
(777, 'review', 'Update review: 17', 1, '2019-05-09 02:32:05'),
(778, 'review', 'Update review: 14', 1, '2019-05-09 02:32:14'),
(779, 'page', 'Update page: 7', 1, '2019-05-09 03:08:21'),
(780, 'account', 'Insert account: 133', 1, '2019-05-09 03:40:01'),
(781, 'account', 'delete account: 133', 1, '2019-05-09 03:42:29'),
(782, 'room', 'Update room: 45', 1, '2019-05-09 03:56:29'),
(783, 'room', 'Update room: 44', 1, '2019-05-09 03:56:32'),
(784, 'room', 'Update room: 34', 1, '2019-05-09 03:56:56'),
(785, 'room', 'Update room: 33', 1, '2019-05-09 03:57:12'),
(786, 'room', 'Update room: 34', 1, '2019-05-09 03:57:24'),
(787, 'room', 'Update room: 34', 1, '2019-05-09 03:58:31'),
(788, 'room', 'Update room: 25', 1, '2019-05-09 04:08:23'),
(789, 'room', 'Update room: 25', 1, '2019-05-09 04:09:05'),
(790, 'message_system', 'Sửa message_system có id là 27', 1, '2019-05-09 04:11:03'),
(791, 'room', 'Update room: 2', 1, '2019-05-09 05:07:59'),
(792, 'account', 'Update account: 117', 1, '2019-05-09 05:38:01'),
(793, 'room', 'Update room: 24', 1, '2019-05-09 07:07:05'),
(794, 'users', 'Update users: ', 1, '2019-05-09 07:15:50'),
(795, 'renter', 'Update renter: 3', 1, '2019-05-09 09:22:05'),
(796, 'renter', 'Update renter: 2', 1, '2019-05-09 09:22:08');
INSERT INTO `ap_log_action` (`id`, `action`, `note`, `uid`, `created_time`) VALUES
(797, 'room', 'Update room: 2', 1, '2019-05-10 10:21:35'),
(798, 'users', 'delete users: 49', 1, '2019-05-10 10:30:10'),
(799, 'users', 'delete users: 46', 1, '2019-05-10 10:30:12'),
(800, 'users', 'delete users: 52', 1, '2019-05-10 10:30:17'),
(801, 'account', 'delete account: 117', 1, '2019-05-10 11:21:36'),
(802, 'room', 'Update room: 49', 1, '2019-05-10 11:50:53'),
(803, 'message_system', 'Sửa message_system có id là 33', 1, '2019-05-10 03:51:21'),
(804, 'message_system', 'Sửa message_system có id là 33', 1, '2019-05-10 03:51:39'),
(805, 'room', 'Update room: 34', 1, '2019-05-11 12:22:23'),
(806, 'room', 'Insert room: 52', 1, '2019-05-11 01:45:05'),
(807, 'room', 'Update room: 52', 1, '2019-05-11 01:49:32'),
(808, 'room', 'Update room: 52', 1, '2019-05-11 02:34:40'),
(809, 'room', 'Update room: 52', 1, '2019-05-11 02:36:48'),
(810, 'room', 'Update room: 52', 1, '2019-05-11 02:37:33'),
(811, 'room', 'Update room: 52', 1, '2019-05-11 02:37:48'),
(812, 'room', 'Update room: 52', 1, '2019-05-11 02:43:45'),
(813, 'property', 'Update property: 52', 1, '2019-05-11 05:31:25'),
(814, 'room', 'Update room: 34', 1, '2019-05-11 05:32:30'),
(815, 'room', 'Update room: 33', 1, '2019-05-11 05:33:26'),
(816, 'users', 'Update users: 56', 1, '2019-05-11 05:38:18'),
(817, 'property', 'Update property: 78', 56, '2019-05-11 05:39:10'),
(818, 'property', 'Update property: 77', 56, '2019-05-11 05:39:12'),
(819, 'property', 'Update property: 66', 56, '2019-05-11 05:40:04'),
(820, 'property', 'Update property: 65', 56, '2019-05-11 05:40:16'),
(821, 'property', 'Update property: 64', 56, '2019-05-11 05:40:54'),
(822, 'property', 'Update property: 63', 56, '2019-05-11 05:41:26'),
(823, 'property', 'Update property: 62', 56, '2019-05-11 05:41:47'),
(824, 'property', 'Update property: 59', 56, '2019-05-11 05:42:53'),
(825, 'property', 'Update property: 58', 56, '2019-05-11 05:43:02'),
(826, 'property', 'Update property: 56', 56, '2019-05-11 05:43:33'),
(827, 'property', 'Update property: 55', 56, '2019-05-11 05:43:45'),
(828, 'property', 'Update property: 48', 56, '2019-05-11 05:48:33'),
(829, 'property', 'Update property: 47', 56, '2019-05-11 05:48:44'),
(830, 'property', 'Update property: 46', 56, '2019-05-11 05:48:57'),
(831, 'property', 'Update property: 45', 56, '2019-05-11 05:49:24'),
(832, 'property', 'Update property: 44', 56, '2019-05-11 05:49:36'),
(833, 'property', 'Update property: 43', 56, '2019-05-11 05:49:51'),
(834, 'property', 'Update property: 42', 56, '2019-05-11 05:50:36'),
(835, 'property', 'Update property: 41', 56, '2019-05-11 05:50:46'),
(836, 'property', 'Update property: 40', 56, '2019-05-11 05:51:00'),
(837, 'property', 'Update property: 39', 56, '2019-05-11 05:51:15'),
(838, 'property', 'Update property: 38', 56, '2019-05-11 05:51:29'),
(839, 'property', 'Update property: 37', 56, '2019-05-11 05:51:38'),
(840, 'property', 'Update property: 49', 56, '2019-05-11 05:57:47'),
(841, 'property', 'Update property: 50', 56, '2019-05-11 05:58:17'),
(842, 'property', 'Update property: 54', 56, '2019-05-11 05:58:40'),
(843, 'property', 'Update property: 42', 56, '2019-05-11 05:58:59'),
(844, 'property', 'Update property: 51', 1, '2019-05-11 05:59:36'),
(845, 'property', 'Update property: 75', 1, '2019-05-11 06:00:22'),
(846, 'property', 'Update property: 74', 1, '2019-05-11 06:02:49'),
(847, 'property', 'Update property: 73', 1, '2019-05-11 06:03:10'),
(848, 'property', 'Update property: 61', 1, '2019-05-11 06:03:34'),
(849, 'property', 'Update property: 76', 56, '2019-05-11 11:39:42'),
(850, 'property', 'Update property: 72', 56, '2019-05-11 11:40:14'),
(851, 'property', 'Update property: 67', 56, '2019-05-11 11:40:44'),
(852, 'property', 'Update property: 61', 56, '2019-05-11 11:47:35'),
(853, 'property', 'Update property: 55', 56, '2019-05-11 11:48:17'),
(854, 'room', 'Update room: 34', 56, '2019-05-12 12:33:55'),
(855, 'room', 'Update room: 53', 1, '2019-05-12 12:45:38'),
(856, 'room', 'Insert room: 55', 56, '2019-05-13 10:52:06'),
(857, 'room', 'Update room: 55', 56, '2019-05-13 11:15:55'),
(858, 'room', 'Insert room: 56', 1, '2019-05-13 11:25:46'),
(859, 'room', 'Update room: 56', 1, '2019-05-13 11:32:39'),
(860, 'room', 'Update room: 55', 1, '2019-05-13 12:31:59'),
(861, 'room', 'Update room: 51', 1, '2019-05-13 12:32:12'),
(862, 'room', 'Update room: 57', 56, '2019-05-13 01:56:23'),
(863, 'room', 'Update room: 57', 56, '2019-05-13 01:56:36'),
(864, 'room', 'Update room: 56', 56, '2019-05-13 01:57:35'),
(865, 'room', 'Insert room: 58', 56, '2019-05-13 02:00:49'),
(866, 'room', 'Update room: 58', 56, '2019-05-13 02:01:44'),
(867, 'room', 'Update room: 49', 1, '2019-05-13 02:22:28'),
(868, 'room', 'Update room: 56', 1, '2019-05-13 02:29:50'),
(869, 'room', 'Update room: 56', 1, '2019-05-13 02:31:08'),
(870, 'room', 'Update room: 56', 1, '2019-05-13 02:47:26'),
(871, 'category', 'Insert category: 35', 56, '2019-05-13 02:58:28'),
(872, 'room', 'Update room: 56', 1, '2019-05-13 03:01:25'),
(873, 'category', 'Update category: 35', 56, '2019-05-13 03:01:31'),
(874, 'room', 'Update room: 56', 1, '2019-05-13 03:02:29'),
(875, 'room', 'Update room: 56', 1, '2019-05-13 03:03:26'),
(876, 'room', 'Update room: 58', 1, '2019-05-13 03:03:33'),
(877, 'room', 'Update room: 57', 1, '2019-05-13 03:03:40'),
(878, 'room', 'Update room: 55', 1, '2019-05-13 03:03:43'),
(879, 'room', 'Update room: 54', 1, '2019-05-13 03:03:46'),
(880, 'category', 'Update category: 30', 56, '2019-05-13 03:04:17'),
(881, 'category', 'Update category: 30', 56, '2019-05-13 03:05:27'),
(882, 'room', 'Update room: 52', 1, '2019-05-13 03:05:54'),
(883, 'room', 'Update room: 50', 1, '2019-05-13 03:06:01'),
(884, 'room', 'Update room: 48', 1, '2019-05-13 03:06:03'),
(885, 'room', 'Update room: 47', 1, '2019-05-13 03:06:05'),
(886, 'room', 'Update room: 43', 1, '2019-05-13 03:06:07'),
(887, 'room', 'Update room: 42', 1, '2019-05-13 03:06:11'),
(888, 'property', 'Insert property: 0', 56, '2019-05-13 03:09:59'),
(889, 'property', 'Update property: 85', 56, '2019-05-13 03:10:30'),
(890, 'room', 'Update room: 33', 56, '2019-05-13 03:10:54'),
(891, 'property', 'Insert property: 0', 56, '2019-05-13 03:11:48'),
(892, 'property', 'Update property: 86', 56, '2019-05-13 03:13:22'),
(893, 'property', 'Update property: 86', 56, '2019-05-13 03:14:45'),
(894, 'room', 'Update room: 34', 1, '2019-05-13 03:22:56'),
(895, 'room', 'Update room: 33', 1, '2019-05-13 03:25:57'),
(896, 'room', 'Update room: 30', 1, '2019-05-13 03:28:01'),
(897, 'room', 'Update room: 29', 1, '2019-05-13 03:29:52'),
(898, 'room', 'Update room: 26', 1, '2019-05-13 03:30:09'),
(899, 'room', 'Update room: 30', 1, '2019-05-13 03:30:32'),
(900, 'room', 'Update room: 28', 1, '2019-05-13 03:30:40'),
(901, 'room', 'Update room: 1', 1, '2019-05-13 03:32:10'),
(902, 'room', 'Update room: 1', 1, '2019-05-13 03:33:07'),
(903, 'room', 'Update room: 2', 1, '2019-05-13 03:34:37'),
(904, 'room', 'Update room: 20', 1, '2019-05-13 03:37:31'),
(905, 'room', 'Update room: 23', 1, '2019-05-13 03:39:09'),
(906, 'room', 'Update room: 24', 1, '2019-05-13 03:42:23'),
(907, 'room', 'Update room: 25', 1, '2019-05-13 03:45:22'),
(908, 'room', 'Update room: 1', 1, '2019-05-13 04:12:33'),
(909, 'room', 'Update room: 33', 1, '2019-05-13 04:17:02'),
(910, 'room', 'Update room: 30', 56, '2019-05-13 04:18:39'),
(911, 'room', 'Update room: 30', 1, '2019-05-13 04:21:33'),
(912, 'room', 'Update room: 56', 1, '2019-05-13 04:43:43'),
(913, 'room', 'Update room: 56', 1, '2019-05-13 04:45:24'),
(914, 'account', 'Update account: 139', 56, '2019-05-13 05:43:38'),
(915, 'account', 'Update account: 131', 56, '2019-05-13 05:44:03'),
(916, 'account', 'delete account: 32', 1, '2019-05-13 08:11:34'),
(917, 'review', 'Update review: 13', 1, '2019-05-13 08:25:29'),
(918, 'review', 'Update review: 14', 1, '2019-05-13 08:25:35'),
(919, 'review', 'Update review: 1', 1, '2019-05-13 08:25:44'),
(920, 'review', 'Update review: 19', 1, '2019-05-13 08:25:50'),
(921, 'category', 'Update category: 30', 1, '2019-05-14 12:36:09'),
(922, 'category', 'Update category: 16', 1, '2019-05-14 12:36:19'),
(923, 'category', 'Update category: 5', 1, '2019-05-14 12:36:25'),
(924, 'category', 'Update category: 3', 1, '2019-05-14 12:36:31'),
(925, 'property', 'Update property: 53', 56, '2019-05-14 09:00:20'),
(926, 'property', 'Update property: 57', 56, '2019-05-14 09:00:41'),
(927, 'property', 'Update property: 60', 56, '2019-05-14 09:01:02'),
(928, 'room', 'Update room: 25', 1, '2019-05-14 09:17:58'),
(929, 'room', 'Update room: 25', 1, '2019-05-14 09:18:18'),
(930, 'category', 'Update category: 16', 1, '2019-05-14 09:24:38'),
(931, 'account', 'Update account: 77', 1, '2019-05-14 09:35:12'),
(932, 'review', 'Update review: 40', 1, '2019-05-14 09:44:40'),
(933, 'review', 'Update review: 38', 1, '2019-05-14 09:44:43'),
(934, 'review', 'Update review: 37', 1, '2019-05-14 09:44:47'),
(935, 'review', 'Update review: 36', 1, '2019-05-14 09:44:52'),
(936, 'review', 'Update review: 35', 1, '2019-05-14 09:44:56'),
(937, 'review', 'Update review: 28', 1, '2019-05-14 09:45:00'),
(938, 'review', 'Update review: 27', 1, '2019-05-14 09:45:04'),
(939, 'review', 'Update review: 1', 1, '2019-05-14 09:45:11'),
(940, 'review', 'Update review: 18', 1, '2019-05-14 09:45:14'),
(941, 'review', 'Update review: 15', 1, '2019-05-14 09:45:17'),
(942, 'review', 'Update review: 14', 1, '2019-05-14 09:45:20'),
(943, 'review', 'Update review: 13', 1, '2019-05-14 09:45:23'),
(944, 'review', 'Update review: 21', 1, '2019-05-14 09:45:27'),
(945, 'review', 'Update review: 20', 1, '2019-05-14 09:45:30'),
(946, 'review', 'Update review: 19', 1, '2019-05-14 09:45:34'),
(947, 'room', 'Update room: 23', 1, '2019-05-14 09:48:36'),
(948, 'room', 'Update room: 2', 56, '2019-05-14 11:24:35'),
(949, 'room', 'Update room: 52', 56, '2019-05-14 11:39:37'),
(950, 'room', 'Update room: 62', 1, '2019-05-14 12:32:15'),
(951, 'room', 'Update room: 63', 1, '2019-05-14 12:32:18'),
(952, 'room', 'Update room: 64', 1, '2019-05-14 12:32:20'),
(953, 'room', 'Update room: 65', 1, '2019-05-14 12:32:23'),
(954, 'room', 'Update room: 66', 1, '2019-05-14 12:38:59'),
(955, 'room', 'Update room: 61', 56, '2019-05-14 12:44:02'),
(956, 'account', 'Update account: 135', 1, '2019-05-14 05:17:43'),
(957, 'room', 'Update room: 69', 56, '2019-05-15 09:51:16'),
(958, 'room', 'Update room: 68', 56, '2019-05-15 09:51:18'),
(959, 'room', 'Update room: 67', 56, '2019-05-15 09:51:20'),
(960, 'room', 'Update room: 60', 56, '2019-05-15 09:51:24'),
(961, 'room', 'Update room: 59', 56, '2019-05-15 09:51:27'),
(962, 'room', 'Update room: 25', 56, '2019-05-15 10:03:22'),
(963, 'account', 'Update account: 135', 56, '2019-05-15 11:06:09'),
(964, 'account', 'Update account: 135', 56, '2019-05-15 11:06:41'),
(965, 'account', 'Update account: 135', 56, '2019-05-15 11:06:58'),
(966, 'account', 'Update account: 135', 56, '2019-05-15 11:07:15'),
(967, 'account', 'delete account: 104', 56, '2019-05-15 11:51:52'),
(968, 'account', 'delete account: 104', 56, '2019-05-15 11:52:13'),
(969, 'account', 'delete account: 104', 56, '2019-05-15 11:57:47'),
(970, 'room', 'Update room: 24', 56, '2019-05-15 01:34:10'),
(971, 'room', 'Update room: 52', 56, '2019-05-15 04:26:20'),
(972, 'account', 'Update account: 135', 56, '2019-05-15 04:39:28'),
(973, 'account', 'Insert account: 142', 56, '2019-05-15 04:43:07'),
(974, 'account', 'Update account: 135', 56, '2019-05-15 04:52:29'),
(975, 'users', 'Insert users: 0', 56, '2019-05-16 04:11:02'),
(976, 'users', 'delete users: 57', 56, '2019-05-16 04:11:37'),
(977, 'account', 'delete account: 142', 56, '2019-05-16 05:18:23'),
(978, 'account', 'Update account: 135', 56, '2019-05-17 09:31:44'),
(979, 'contact', 'Update contact: 57', 56, '2019-05-17 01:57:25'),
(980, 'page', 'Update page: 7', 56, '2019-05-18 09:35:54'),
(981, 'page', 'Update page: 7', 56, '2019-05-18 09:45:33'),
(982, 'room', 'Update room: 72', 56, '2019-05-18 09:56:56'),
(983, 'room', 'Update room: 2', 56, '2019-05-18 09:57:52'),
(984, 'property', 'Update property: 61', 56, '2019-05-18 11:01:55'),
(985, 'room', 'Update room: 73', 56, '2019-05-18 01:53:47'),
(986, 'room', 'Update room: 74', 56, '2019-05-18 01:53:50'),
(987, 'room', 'Update room: 75', 56, '2019-05-18 01:53:52'),
(988, 'room', 'Update room: 76', 56, '2019-05-18 01:53:55'),
(989, 'room', 'Update room: 77', 56, '2019-05-18 01:53:58'),
(990, 'room', 'Update room: 71', 56, '2019-05-18 01:54:01'),
(991, 'message_system', 'Sửa message_system có id là 43', 56, '2019-05-18 02:25:35'),
(992, 'room', 'Update room: 2', 56, '2019-05-18 03:28:12'),
(993, 'system_menu', 'Update system_menu: 9', 1, '2019-05-18 04:39:05'),
(994, 'system_menu', 'Update system_menu: 20', 1, '2019-05-18 04:39:05'),
(995, 'system_menu', 'Update system_menu: 21', 1, '2019-05-18 04:39:05'),
(996, 'system_menu', 'Update system_menu: 24', 1, '2019-05-18 04:39:05'),
(997, 'system_menu', 'Update system_menu: 25', 1, '2019-05-18 04:39:05'),
(998, 'system_menu', 'Update system_menu: 26', 1, '2019-05-18 04:39:05'),
(999, 'system_menu', 'Update system_menu: 27', 1, '2019-05-18 04:39:05'),
(1000, 'system_menu', 'Update system_menu: 8', 1, '2019-05-18 04:39:16'),
(1001, 'system_menu', 'Update system_menu: 34', 1, '2019-05-18 04:39:16'),
(1002, 'system_menu', 'Update system_menu: 35', 1, '2019-05-18 04:39:16'),
(1003, 'users', 'Update users: ', 1, '2019-05-19 11:47:51'),
(1004, 'system_menu', 'Update system_menu: 7', 1, '2019-05-21 11:16:39'),
(1005, 'system_menu', 'Insert system_menu: 26', 1, '2019-05-21 11:27:25'),
(1006, 'system_menu', 'Insert system_menu: 27', 1, '2019-05-21 11:32:38'),
(1007, 'system_menu', 'Update system_menu: 17', 1, '2019-05-21 11:33:23'),
(1008, 'system_menu', 'Update system_menu: 27', 1, '2019-05-21 11:33:33'),
(1009, 'doc', 'Update doc: 2', 1, '2019-05-21 11:30:07'),
(1010, 'doc', 'Update doc: 2', 1, '2019-05-21 11:32:11'),
(1011, 'doc', 'Update doc: 2', 1, '2019-05-21 11:48:45'),
(1012, 'doc', 'Update doc: 2', 1, '2019-05-22 12:01:13'),
(1013, 'doc', 'Update doc: 2', 1, '2019-05-22 12:02:48'),
(1014, 'doc', 'Update doc: 2', 1, '2019-05-22 12:09:28'),
(1015, 'doc', 'Update doc: 2', 1, '2019-05-22 12:09:46'),
(1016, 'doc', 'Update doc: 2', 1, '2019-05-22 12:10:57'),
(1017, 'doc', 'Insert doc: 3', 1, '2019-05-22 12:20:09'),
(1018, 'doc', 'Update doc: 3', 1, '2019-05-22 12:54:49'),
(1019, 'doc', 'Update doc: 3', 1, '2019-05-22 12:55:21'),
(1020, 'system_menu', 'Insert system_menu: 28', 1, '2019-05-22 01:56:45'),
(1021, 'doc', 'Update doc: 2', 1, '2019-05-22 10:29:50'),
(1022, 'doc', 'Update doc: 2', 1, '2019-05-22 10:29:52'),
(1023, 'doc', 'Update doc: 2', 1, '2019-05-22 10:29:53'),
(1024, 'doc', 'Update doc: 2', 1, '2019-05-22 10:30:49'),
(1025, 'doc', 'Update doc: 2', 1, '2019-05-22 10:31:14'),
(1026, 'doc', 'Update doc: 2', 1, '2019-05-22 10:32:34'),
(1027, 'doc', 'Update doc: 2', 1, '2019-05-22 11:15:02'),
(1028, 'doc', 'Update doc: 2', 1, '2019-05-22 11:16:22'),
(1029, 'doc', 'Update doc: 1', 1, '2019-05-22 11:17:08'),
(1030, 'doc', 'Update doc: 2', 1, '2019-05-22 11:29:03'),
(1031, 'doc', 'Update doc: 2', 1, '2019-05-22 11:47:18'),
(1032, 'doc', 'Update doc: 2', 1, '2019-05-22 11:48:41'),
(1033, 'doc', 'Update doc: 2', 1, '2019-05-22 11:57:43'),
(1034, 'doc', 'Update doc: 2', 1, '2019-05-22 12:04:32'),
(1035, 'doc', 'Update doc: 2', 1, '2019-05-22 02:06:59'),
(1036, 'doc', 'Update doc: 2', 1, '2019-05-22 02:08:27'),
(1037, 'doc', 'Update doc: 2', 1, '2019-05-22 02:11:43'),
(1038, 'doc', 'Update doc: 2', 1, '2019-05-22 02:12:05'),
(1039, 'doc', 'Update doc: 2', 1, '2019-05-22 02:14:16'),
(1040, 'doc', 'Update doc: 2', 1, '2019-05-22 02:24:59'),
(1041, 'doc', 'Update doc: 2', 1, '2019-05-22 02:25:34'),
(1042, 'doc', 'Update doc: 2', 1, '2019-05-22 02:36:22'),
(1043, 'doc', 'Update doc: 2', 1, '2019-05-22 02:38:06'),
(1044, 'doc', 'Update doc: 2', 1, '2019-05-22 02:40:29'),
(1045, 'doc', 'Update doc: 2', 1, '2019-05-22 02:40:42'),
(1046, 'doc', 'Update doc: 2', 1, '2019-05-22 03:06:08'),
(1047, 'doc', 'Update doc: 2', 1, '2019-05-22 03:19:08'),
(1048, 'doc', 'Insert doc: 4', 1, '2019-05-22 03:48:07'),
(1049, 'doc', 'Update doc: 4', 1, '2019-05-22 04:00:20'),
(1050, 'doc', 'Update doc: 2', 1, '2019-05-22 04:00:53'),
(1051, 'doc', 'Update doc: 2', 1, '2019-05-22 04:15:26'),
(1052, 'doc', 'Update doc: 1', 1, '2019-05-22 04:18:41'),
(1053, 'doc', 'Insert doc: 5', 1, '2019-05-22 04:40:39'),
(1054, 'doc', 'Update doc: 5', 1, '2019-05-22 04:41:01'),
(1055, 'doc', 'Update doc: 5', 1, '2019-05-22 04:41:41'),
(1056, 'doc', 'Update doc: 5', 1, '2019-05-22 04:41:59'),
(1057, 'doc', 'Update doc: 2', 1, '2019-05-22 04:59:44'),
(1058, 'doc', 'Update doc: 2', 1, '2019-05-22 05:00:19'),
(1059, 'doc', 'Update doc: 5', 1, '2019-05-22 05:01:02'),
(1060, 'type_doc', 'Insert type_doc: 4', 1, '2019-05-23 03:56:37'),
(1061, 'doc', 'Update doc: 4', 1, '2019-05-23 03:57:54'),
(1062, 'doc', 'Update doc: 4', 1, '2019-05-23 03:58:28'),
(1063, 'doc', 'Update doc: 4', 1, '2019-05-23 04:01:35'),
(1064, 'doc', 'Update doc: 4', 1, '2019-05-23 04:01:56'),
(1065, 'doc', 'Update doc: 4', 1, '2019-05-23 04:06:47'),
(1066, 'type_doc', 'Insert type_doc: 5', 1, '2019-05-23 04:07:43'),
(1067, 'doc', 'Update doc: 1', 1, '2019-05-23 04:08:12'),
(1068, 'doc', 'Update doc: 1', 1, '2019-05-23 04:09:55'),
(1069, 'doc', 'Update doc: 5', 1, '2019-05-23 04:13:03'),
(1070, 'doc', 'Update doc: 5', 1, '2019-05-23 04:15:22'),
(1071, 'doc', 'Update doc: 2', 1, '2019-05-23 04:16:04'),
(1072, 'doc', 'Update doc: 2', 1, '2019-05-23 04:16:45'),
(1073, 'doc', 'Update doc: 2', 1, '2019-05-23 04:16:46'),
(1074, 'doc', 'Update doc: 1', 1, '2019-05-23 04:19:29'),
(1075, 'doc', 'Update doc: 1', 1, '2019-05-23 04:19:56'),
(1076, 'doc', 'Update doc: 1', 1, '2019-05-23 04:20:17'),
(1077, 'doc', 'Update doc: 1', 1, '2019-05-23 04:22:41'),
(1078, 'doc', 'Update doc: 1', 1, '2019-05-23 04:22:55'),
(1079, 'doc', 'Update doc: 1', 1, '2019-05-23 04:23:02'),
(1080, 'doc', 'Update doc: 1', 1, '2019-05-23 04:23:21'),
(1081, 'doc', 'Update doc: 5', 1, '2019-05-23 04:31:50'),
(1082, 'doc', 'Update doc: 5', 1, '2019-05-23 04:32:11'),
(1083, 'doc', 'Update doc: 5', 1, '2019-05-23 04:32:34'),
(1084, 'doc', 'Update doc: 2', 1, '2019-05-23 04:33:18'),
(1085, 'doc', 'Update doc: 2', 1, '2019-05-23 04:33:36'),
(1086, 'doc', 'Update doc: 2', 1, '2019-05-23 04:36:04'),
(1087, 'doc', 'Update doc: 2', 1, '2019-05-23 04:36:54'),
(1088, 'doc', 'Update doc: 2', 1, '2019-05-23 04:37:08'),
(1089, 'doc', 'Update doc: 2', 1, '2019-05-23 04:37:14'),
(1090, 'doc', 'Update doc: 2', 1, '2019-05-23 04:37:29'),
(1091, 'doc', 'Update doc: 5', 1, '2019-05-23 04:39:58'),
(1092, 'type_doc', 'Insert type_doc: 6', 1, '2019-05-23 04:45:27'),
(1093, 'doc', 'Insert doc: 6', 1, '2019-05-23 04:46:27'),
(1094, 'doc', 'Update doc: 6', 1, '2019-05-23 04:47:51'),
(1095, 'doc', 'Update doc: 5', 1, '2019-05-23 04:48:04'),
(1096, 'doc', 'Update doc: 2', 1, '2019-05-23 04:51:03'),
(1097, 'doc', 'Update doc: 2', 1, '2019-05-23 04:52:13'),
(1098, 'doc', 'Update doc: 2', 1, '2019-05-23 04:52:57'),
(1099, 'doc', 'Update doc: 2', 1, '2019-05-23 04:53:32'),
(1100, 'doc', 'Update doc: 2', 1, '2019-05-23 04:55:03'),
(1101, 'doc', 'Update doc: 2', 1, '2019-05-23 05:04:23'),
(1102, 'doc', 'Update doc: 2', 1, '2019-05-23 05:04:39'),
(1103, 'doc', 'Update doc: 2', 1, '2019-05-23 05:04:44'),
(1104, 'doc', 'Update doc: 2', 1, '2019-05-23 05:06:27'),
(1105, 'doc', 'Update doc: 2', 1, '2019-05-23 05:08:43'),
(1106, 'doc', 'Update doc: 2', 1, '2019-05-23 05:09:26'),
(1107, 'doc', 'Update doc: 2', 1, '2019-05-23 05:10:49'),
(1108, 'doc', 'Update doc: 2', 1, '2019-05-23 05:11:18'),
(1109, 'doc', 'Update doc: 6', 1, '2019-05-23 05:11:40'),
(1110, 'doc', 'Update doc: 5', 1, '2019-05-23 05:15:07'),
(1111, 'doc', 'Update doc: 5', 1, '2019-05-23 11:09:43'),
(1112, 'doc', 'Update doc: 5', 1, '2019-05-23 11:10:24'),
(1113, 'doc', 'Update doc: 5', 1, '2019-05-23 11:10:57'),
(1114, 'doc', 'Update doc: 5', 1, '2019-05-23 11:11:16'),
(1115, 'doc', 'Update doc: 5', 1, '2019-05-23 11:15:23'),
(1116, 'doc', 'Update doc: 2', 1, '2019-05-23 11:15:39'),
(1117, 'doc', 'Update doc: 6', 1, '2019-05-23 11:17:41'),
(1118, 'doc', 'Update doc: 6', 1, '2019-05-23 11:18:00'),
(1119, 'doc', 'Update doc: 5', 1, '2019-05-23 11:22:09'),
(1120, 'doc', 'Update doc: 2', 1, '2019-05-23 11:22:23'),
(1121, 'doc', 'Update doc: 5', 1, '2019-05-23 11:41:02'),
(1122, 'doc', 'Update doc: 5', 1, '2019-05-23 11:44:11'),
(1123, 'doc', 'Update doc: 5', 1, '2019-05-23 11:44:31'),
(1124, 'doc', 'Update doc: 5', 1, '2019-05-23 11:46:57'),
(1125, 'doc', 'Update doc: 5', 1, '2019-05-23 11:47:11'),
(1126, 'doc', 'Update doc: 5', 1, '2019-05-23 11:49:56'),
(1127, 'doc', 'Update doc: 2', 1, '2019-05-23 11:50:05'),
(1128, 'doc', 'Update doc: 5', 1, '2019-05-23 11:50:16'),
(1129, 'doc', 'Update doc: 5', 1, '2019-05-23 11:53:08'),
(1130, 'doc', 'Update doc: 2', 1, '2019-05-23 11:53:17'),
(1131, 'doc', 'Update doc: 5', 1, '2019-05-24 12:02:09'),
(1132, 'doc', 'Update doc: 2', 1, '2019-05-24 12:08:10'),
(1133, 'doc', 'Update doc: 2', 1, '2019-05-24 12:08:13'),
(1134, 'doc', 'Update doc: 6', 1, '2019-05-24 12:08:32'),
(1135, 'doc', 'Update doc: 6', 1, '2019-05-24 12:08:42'),
(1136, 'doc', 'Update doc: 6', 1, '2019-05-24 12:08:58'),
(1137, 'doc', 'Update doc: 6', 1, '2019-05-24 12:10:41'),
(1138, 'doc', 'Update doc: 6', 1, '2019-05-24 12:10:44'),
(1139, 'doc', 'Update doc: 6', 1, '2019-05-24 12:10:47'),
(1140, 'doc', 'Update doc: 6', 1, '2019-05-24 08:33:59'),
(1141, 'doc', 'Update doc: 6', 1, '2019-05-24 08:41:22'),
(1142, 'system_menu', 'Insert system_menu: 29', 1, '2019-05-24 08:47:22'),
(1143, 'system_menu', 'Insert system_menu: 30', 1, '2019-05-24 08:47:57'),
(1144, 'system_menu', 'Insert system_menu: 31', 1, '2019-05-24 08:48:18'),
(1145, 'system_menu', 'Update system_menu: 29', 1, '2019-05-24 08:50:11'),
(1146, 'system_menu', 'Insert system_menu: 32', 1, '2019-05-24 08:50:52'),
(1147, 'system_menu', 'Insert system_menu: 33', 1, '2019-05-24 08:51:45'),
(1148, 'system_menu', 'Update system_menu: 32', 1, '2019-05-24 08:52:02'),
(1149, 'system_menu', 'Update system_menu: 2', 1, '2019-05-24 08:57:21'),
(1150, 'system_menu', 'Update system_menu: 17', 1, '2019-05-24 08:58:10'),
(1151, 'system_menu', 'Insert system_menu: 34', 1, '2019-05-24 08:58:56'),
(1152, 'system_menu', 'Insert system_menu: 35', 1, '2019-05-24 08:59:18'),
(1153, 'system_menu', 'Insert system_menu: 36', 1, '2019-05-24 09:00:36'),
(1154, 'system_menu', 'Insert system_menu: 37', 1, '2019-05-24 09:01:44'),
(1155, 'system_menu', 'Insert system_menu: 38', 1, '2019-05-24 09:02:22'),
(1156, 'system_menu', 'Insert system_menu: 39', 1, '2019-05-24 09:02:25'),
(1157, 'system_menu', 'Insert system_menu: 40', 1, '2019-05-24 09:02:28'),
(1158, 'system_menu', 'Insert system_menu: 41', 1, '2019-05-24 09:02:32'),
(1159, 'system_menu', 'Insert system_menu: 42', 1, '2019-05-24 09:02:36'),
(1160, 'system_menu', 'Insert system_menu: 43', 1, '2019-05-24 09:02:39'),
(1161, 'system_menu', 'Insert system_menu: 44', 1, '2019-05-24 09:02:43'),
(1162, 'system_menu', 'Insert system_menu: 45', 1, '2019-05-24 09:02:51'),
(1163, 'system_menu', 'Update system_menu: 37', 1, '2019-05-24 09:03:29'),
(1164, 'system_menu', 'Insert system_menu: 46', 1, '2019-05-24 09:20:42'),
(1165, 'system_menu', 'Insert system_menu: 47', 1, '2019-05-24 09:21:46'),
(1166, 'system_menu', 'Insert system_menu: 48', 1, '2019-05-24 09:23:02'),
(1167, 'system_menu', 'Insert system_menu: 49', 1, '2019-05-24 09:24:46'),
(1168, 'system_menu', 'Update system_menu: 36', 1, '2019-05-24 09:25:18'),
(1169, 'system_menu', 'Update system_menu: 16', 1, '2019-05-24 09:26:38'),
(1170, 'system_menu', 'Update system_menu: 15', 1, '2019-05-24 09:26:46'),
(1171, 'system_menu', 'Update system_menu: 4', 1, '2019-05-24 09:27:27'),
(1172, 'system_menu', 'Update system_menu: 4', 1, '2019-05-24 09:29:46'),
(1173, 'system_menu', 'Insert system_menu: 51', 1, '2019-05-24 10:10:19'),
(1174, 'system_menu', 'Insert system_menu: 52', 1, '2019-05-24 10:31:58'),
(1175, 'system_menu', 'Insert system_menu: 53', 1, '2019-05-24 10:32:19'),
(1176, 'system_menu', 'Insert system_menu: 54', 1, '2019-05-24 10:33:17'),
(1177, 'system_menu', 'Insert system_menu: 55', 1, '2019-05-24 10:34:21'),
(1178, 'system_menu', 'Insert system_menu: 56', 1, '2019-05-24 10:35:16'),
(1179, 'system_menu', 'Insert system_menu: 57', 1, '2019-05-24 10:35:41'),
(1180, 'system_menu', 'Insert system_menu: 58', 1, '2019-05-24 10:35:58'),
(1181, 'system_menu', 'Insert system_menu: 59', 1, '2019-05-24 10:36:12'),
(1182, 'system_menu', 'Insert system_menu: 60', 1, '2019-05-24 10:36:23'),
(1183, 'type_doc', 'Update type_doc: 2', 1, '2019-05-24 10:38:24'),
(1184, 'type_doc', 'Update type_doc: 4', 1, '2019-05-24 10:38:31'),
(1185, 'type_doc', 'Update type_doc: 5', 1, '2019-05-24 10:38:38'),
(1186, 'type_doc', 'Update type_doc: 6', 1, '2019-05-24 10:38:47'),
(1187, 'type_doc', 'Insert type_doc: 7', 1, '2019-05-24 10:38:56'),
(1188, 'type_doc', 'Insert type_doc: 8', 1, '2019-05-24 10:39:05'),
(1189, 'type_doc', 'Insert type_doc: 9', 1, '2019-05-24 10:39:12'),
(1190, 'type_doc', 'Insert type_doc: 10', 1, '2019-05-24 10:39:20'),
(1191, 'type_doc', 'Insert type_doc: 11', 1, '2019-05-24 10:39:30'),
(1192, 'system_menu', 'Insert system_menu: 61', 1, '2019-05-24 10:41:25'),
(1193, 'users', 'Update users: ', 1, '2019-05-24 01:34:48'),
(1194, 'groups', 'Update groups: 18', 1, '2019-05-24 01:42:18'),
(1195, 'groups', 'Update groups: 17', 1, '2019-05-24 01:42:23'),
(1196, 'groups', 'Update groups: 16', 1, '2019-05-24 01:42:29'),
(1197, 'users', 'delete users: 56', 1, '2019-05-24 01:42:40'),
(1198, 'users', 'delete users: 55', 1, '2019-05-24 01:42:42'),
(1199, 'users', 'delete users: 51', 1, '2019-05-24 01:42:45'),
(1200, 'users', 'delete users: 36', 1, '2019-05-24 01:42:47'),
(1201, 'users', 'delete users: 34', 1, '2019-05-24 01:42:50'),
(1202, 'dm_chuc_vu', 'Insert dm_chuc_vu: 1', 1, '2019-05-29 09:10:00'),
(1203, 'dm_chuc_vu', 'Insert dm_chuc_vu: 2', 1, '2019-05-29 09:13:08'),
(1204, 'dm_chuc_vu', 'Insert dm_chuc_vu: 3', 1, '2019-05-29 09:13:17'),
(1205, 'dm_chuc_vu', 'Insert dm_chuc_vu: 4', 1, '2019-05-29 09:13:27'),
(1206, 'system_menu', 'Update system_menu: 30', 1, '2019-05-29 09:16:30'),
(1207, 'dm_don_vi_tinh', 'Insert dm_don_vi_tinh: 1', 1, '2019-05-29 09:32:36'),
(1208, 'dm_don_vi_tinh', 'Insert dm_don_vi_tinh: 2', 1, '2019-05-29 09:32:44'),
(1209, 'dm_ky_bao_cao', 'Insert dm_ky_bao_cao: 1', 1, '2019-05-29 09:41:29'),
(1210, 'dm_ky_bao_cao', 'Insert dm_ky_bao_cao: 2', 1, '2019-05-29 09:41:34'),
(1211, 'dm_ky_bao_cao', 'Insert dm_ky_bao_cao: 3', 1, '2019-05-29 09:41:41'),
(1212, 'dm_trinh_do', 'Insert dm_trinh_do: 1', 1, '2019-05-29 09:45:30'),
(1213, 'dm_trinh_do', 'Insert dm_trinh_do: 2', 1, '2019-05-29 09:45:37'),
(1214, 'dm_trinh_do', 'Update dm_trinh_do: 1', 1, '2019-05-29 09:46:04'),
(1215, 'dm_trinh_do', 'Update dm_trinh_do: 1', 1, '2019-05-29 09:46:27'),
(1216, 'dm_trinh_do', 'Update dm_trinh_do: 2', 1, '2019-05-29 09:46:38'),
(1217, 'dm_trinh_do', 'Insert dm_trinh_do: 3', 1, '2019-05-29 09:46:44'),
(1218, 'dm_trinh_do', 'Insert dm_trinh_do: 4', 1, '2019-05-29 09:46:50'),
(1219, 'dm_trinh_do', 'Insert dm_trinh_do: 5', 1, '2019-05-29 09:46:58'),
(1220, 'dm_don_vi_hc', 'Update dm_don_vi_hc: 97', 1, '2019-05-29 10:09:13'),
(1221, 'dm_ton_giao', 'Insert dm_ton_giao: 1', 1, '2019-05-29 11:48:51'),
(1222, 'dm_ton_giao', 'Insert dm_ton_giao: 2', 1, '2019-05-29 11:48:58'),
(1223, 'dm_chi_tieu', 'Insert dm_chi_tieu: 1', 1, '2019-05-29 11:51:45'),
(1224, 'dm_chi_tieu', 'Insert dm_chi_tieu: 2', 1, '2019-05-29 11:52:10'),
(1225, 'dm_chi_tieu', 'Insert dm_chi_tieu: 3', 1, '2019-05-29 11:52:20'),
(1226, 'dm_chi_tieu', 'Insert dm_chi_tieu: 4', 1, '2019-05-29 11:52:52'),
(1227, 'dm_chi_tieu', 'Insert dm_chi_tieu: 5', 1, '2019-05-29 02:22:58'),
(1228, 'dm_chi_tieu', 'Insert dm_chi_tieu: 6', 1, '2019-05-29 02:23:23'),
(1229, 'dm_chi_tieu', 'Insert dm_chi_tieu: 7', 1, '2019-05-29 02:23:48'),
(1230, 'dm_chi_tieu', 'Insert dm_chi_tieu: 8', 1, '2019-05-29 02:24:09'),
(1231, 'dm_chi_tieu', 'Insert dm_chi_tieu: 9', 1, '2019-05-29 02:24:26'),
(1232, 'dm_chi_tieu', 'Insert dm_chi_tieu: 10', 1, '2019-05-29 02:24:44'),
(1233, 'dm_chi_tieu', 'Insert dm_chi_tieu: 11', 1, '2019-05-29 02:24:56'),
(1234, 'dm_nhom_tuoi', 'Insert dm_nhom_tuoi: 1', 1, '2019-05-29 03:37:12'),
(1235, 'dm_nhom_tuoi', 'Insert dm_nhom_tuoi: 2', 1, '2019-05-29 03:37:23'),
(1236, 'dm_nhom_tuoi', 'Insert dm_nhom_tuoi: 3', 1, '2019-05-29 03:38:51'),
(1237, 'dm_nhom_tuoi', 'Insert dm_nhom_tuoi: 4', 1, '2019-05-29 03:39:11'),
(1238, 'dm_nhom_tuoi', 'Insert dm_nhom_tuoi: 5', 1, '2019-05-29 03:39:23'),
(1239, 'dm_nhom_tuoi', 'Insert dm_nhom_tuoi: 6', 1, '2019-05-29 03:39:39'),
(1240, 'loai_chi_tieu', 'Insert loai_chi_tieu: 7', 1, '2019-05-29 04:10:30'),
(1241, 'dm_trinh_do', 'Update dm_trinh_do: 2', 1, '2019-05-29 04:12:53'),
(1242, 'doc', 'Update doc: 1', 1, '2019-05-29 04:49:15'),
(1243, 'chi_tieu', 'Update chi_tieu: 00103', 1, '2019-05-30 01:08:08'),
(1244, 'chi_tieu', 'Update chi_tieu: 00102', 1, '2019-05-30 01:08:15'),
(1245, 'system_menu', 'Insert system_menu: 62', 1, '2019-05-30 09:14:45'),
(1246, 'system_menu', 'Insert system_menu: 63', 1, '2019-05-30 09:17:39'),
(1247, 'system_menu', 'Insert system_menu: 64', 1, '2019-05-30 09:18:29'),
(1248, 'system_menu', 'Update system_menu: 37', 1, '2019-05-30 09:25:23'),
(1249, 'system_menu', 'Update system_menu: 37', 1, '2019-05-30 09:26:01'),
(1250, 'doc_groups', 'Insert doc_groups: 1', 1, '2019-05-30 10:21:57'),
(1251, 'doc_groups', 'Insert doc_groups: 2', 1, '2019-05-30 10:22:09'),
(1252, 'system_menu', 'Insert system_menu: 65', 1, '2019-05-30 10:43:40'),
(1253, 'system_menu', 'Insert system_menu: 66', 1, '2019-05-30 10:44:56'),
(1254, 'system_menu', 'Insert system_menu: 67', 1, '2019-05-30 10:59:14'),
(1255, 'bieu_mau', 'Update bieu_mau: 0', 1, '2019-05-30 02:58:56'),
(1256, 'bieu_mau', 'Update bieu_mau: 0', 1, '2019-05-30 02:59:11'),
(1257, 'bieu_mau', 'Insert bieu_mau: 3', 1, '2019-05-30 03:06:24'),
(1258, 'bieu_mau', 'Insert bieu_mau: 4', 1, '2019-05-30 03:09:29'),
(1259, 'users', 'Insert users: 0', 1, '2019-05-30 03:22:00'),
(1260, 'users', 'Insert users: 0', 1, '2019-05-30 03:35:33'),
(1261, 'doc', 'Update doc: 5', 59, '2019-05-30 04:11:43'),
(1262, 'doc', 'Update doc: 5', 59, '2019-05-30 04:11:45'),
(1263, 'bieu_mau', 'Insert bieu_mau: 5', 1, '2019-05-30 04:40:56'),
(1264, 'chi_tieu', 'Update chi_tieu: 00105', 1, '2019-05-30 10:45:09'),
(1265, 'system_menu', 'Update system_menu: 37', 1, '2019-05-30 10:59:03'),
(1266, 'bao_cao', 'Insert bao_cao: 2', 1, '2019-05-31 12:56:02'),
(1267, 'bieu_mau', 'Insert bieu_mau: 6', 1, '2019-05-31 09:13:16'),
(1268, 'bieu_mau', 'Update bieu_mau: 6', 1, '2019-05-31 09:13:41'),
(1269, 'bieu_mau', 'Update bieu_mau: 6', 1, '2019-05-31 09:14:15'),
(1270, 'system_menu', 'Insert system_menu: 68', 1, '2019-05-31 05:19:01'),
(1271, 'system_menu', 'Delete system_menu: 68', 1, '2019-05-31 05:20:07'),
(1272, 'system_menu', 'Insert system_menu: 69', 1, '2019-05-31 05:20:30'),
(1273, 'system_menu', 'Insert system_menu: 70', 1, '2019-05-31 05:21:21'),
(1274, 'system_menu', 'Insert system_menu: 71', 1, '2019-05-31 05:22:07'),
(1275, 'system_menu', 'Delete system_menu: 69', 1, '2019-05-31 05:22:30'),
(1276, 'system_menu', 'Delete system_menu: 69', 1, '2019-05-31 05:22:30'),
(1277, 'system_menu', 'Delete system_menu: 69', 1, '2019-05-31 05:22:30'),
(1278, 'bao_cao', 'Insert bao_cao: 3', 1, '2019-05-31 05:26:05'),
(1279, 'bieu_mau', 'Update bieu_mau: 5', 1, '2019-05-31 05:26:50'),
(1280, 'bao_cao', 'Update bao_cao: 3', 1, '2019-05-31 05:27:08'),
(1281, 'system_menu', 'Delete system_menu: 37', 1, '2019-06-05 02:59:23'),
(1282, 'system_menu', 'Delete system_menu: 2', 1, '2019-06-05 03:01:00'),
(1283, 'system_menu', 'Delete system_menu: 2', 1, '2019-06-05 03:01:00'),
(1284, 'system_menu', 'Delete system_menu: 2', 1, '2019-06-05 03:01:00'),
(1285, 'system_menu', 'Delete system_menu: 2', 1, '2019-06-05 03:01:00'),
(1286, 'system_menu', 'Delete system_menu: 2', 1, '2019-06-05 03:01:00'),
(1287, 'system_menu', 'Delete system_menu: 2', 1, '2019-06-05 03:01:00'),
(1288, 'system_menu', 'Delete system_menu: 17', 1, '2019-06-05 03:01:03'),
(1289, 'system_menu', 'Delete system_menu: 17', 1, '2019-06-05 03:01:03'),
(1290, 'system_menu', 'Delete system_menu: 17', 1, '2019-06-05 03:01:03'),
(1291, 'system_menu', 'Delete system_menu: 17', 1, '2019-06-05 03:01:03'),
(1292, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1293, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1294, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1295, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1296, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1297, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1298, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1299, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1300, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1301, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1302, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1303, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1304, 'system_menu', 'Delete system_menu: 29', 1, '2019-06-05 03:01:05'),
(1305, 'system_menu', 'Delete system_menu: 36', 1, '2019-06-05 03:01:09'),
(1306, 'system_menu', 'Delete system_menu: 36', 1, '2019-06-05 03:01:09'),
(1307, 'system_menu', 'Delete system_menu: 36', 1, '2019-06-05 03:01:09'),
(1308, 'system_menu', 'Delete system_menu: 36', 1, '2019-06-05 03:01:09'),
(1309, 'system_menu', 'Delete system_menu: 36', 1, '2019-06-05 03:01:09'),
(1310, 'system_menu', 'Delete system_menu: 36', 1, '2019-06-05 03:01:09'),
(1311, 'system_menu', 'Delete system_menu: 62', 1, '2019-06-05 03:01:11'),
(1312, 'system_menu', 'Delete system_menu: 62', 1, '2019-06-05 03:01:11'),
(1313, 'system_menu', 'Delete system_menu: 62', 1, '2019-06-05 03:01:11'),
(1314, 'system_menu', 'Delete system_menu: 62', 1, '2019-06-05 03:01:11'),
(1315, 'system_menu', 'Delete system_menu: 65', 1, '2019-06-05 03:01:13'),
(1316, 'system_menu', 'Delete system_menu: 65', 1, '2019-06-05 03:01:13'),
(1317, 'system_menu', 'Delete system_menu: 65', 1, '2019-06-05 03:01:13'),
(1318, 'system_menu', 'Insert system_menu: 68', 1, '2019-06-05 03:02:06'),
(1319, 'system_menu', 'Update system_menu: ', 1, '2019-06-05 03:02:21'),
(1320, 'system_menu', 'Update system_menu: ', 1, '2019-06-05 03:02:25'),
(1321, 'system_menu', 'Insert system_menu: 69', 1, '2019-06-05 03:03:52'),
(1322, 'system_menu', 'Insert system_menu: 70', 1, '2019-06-05 03:04:40'),
(1323, 'system_menu', 'Insert system_menu: 71', 1, '2019-06-05 03:05:23'),
(1324, 'system_menu', 'Insert system_menu: 72', 1, '2019-06-05 03:06:00'),
(1325, 'category', 'Insert category: 108', 1, '2019-06-05 09:04:18'),
(1326, 'post', 'Insert post: 22', 1, '2019-06-05 09:05:36'),
(1327, 'exchange_currency', 'Insert exchange_currency: 21', 1, '2019-06-05 10:07:54'),
(1328, 'exchange_currency', 'Delete exchange_currency: 21', 1, '2019-06-05 10:10:15'),
(1329, 'exchange_currency', 'Insert exchange_currency: 22', 1, '2019-06-05 10:10:52'),
(1330, 'exchange_currency', 'Update exchange_currency: ', 1, '2019-06-05 10:23:48'),
(1331, 'exchange_currency', 'Update exchange_currency: 22', 1, '2019-06-05 10:25:15'),
(1332, 'exchange_currency', 'Update exchange_currency: 22', 1, '2019-06-05 10:25:21'),
(1333, 'exchange_currency', 'Update exchange_currency: 22', 1, '2019-06-05 10:25:36'),
(1334, 'exchange_currency', 'Insert exchange_currency: 23', 1, '2019-06-05 10:31:21'),
(1335, 'exchange_currency', 'Insert exchange_currency: 24', 1, '2019-06-05 10:35:57'),
(1336, 'exchange_currency', 'Insert exchange_currency: 1', 1, '2019-06-05 10:41:53'),
(1337, 'exchange_currency', 'Insert exchange_currency: 25', 1, '2019-06-05 10:41:53'),
(1338, 'exchange_currency', 'Delete exchange_currency: 25', 1, '2019-06-05 10:42:34'),
(1339, 'exchange_currency', 'Insert exchange_currency: 1', 1, '2019-06-05 10:42:48'),
(1340, 'exchange_currency', 'Delete exchange_currency: 24', 1, '2019-06-05 10:42:57'),
(1341, 'exchange_currency', 'Update exchange_currency: 20', 1, '2019-06-05 10:43:41'),
(1342, 'exchange_currency', 'Update exchange_currency: 20', 1, '2019-06-05 10:43:48'),
(1343, 'exchange_currency', 'Delete exchange_currency: 20', 1, '2019-06-05 10:51:39'),
(1344, 'exchange_currency', 'Delete exchange_currency: 21', 1, '2019-06-06 08:43:11'),
(1345, 'exchange_currency', 'Delete exchange_currency: 19', 1, '2019-06-06 08:43:11'),
(1346, 'exchange_currency', 'Delete exchange_currency: 18', 1, '2019-06-06 08:43:12'),
(1347, 'exchange_currency', 'Delete exchange_currency: 17', 1, '2019-06-06 08:43:12'),
(1348, 'exchange_currency', 'Delete exchange_currency: 16', 1, '2019-06-06 08:43:12'),
(1349, 'exchange_currency', 'Delete exchange_currency: 15', 1, '2019-06-06 08:43:12'),
(1350, 'exchange_currency', 'Delete exchange_currency: 14', 1, '2019-06-06 08:43:12'),
(1351, 'exchange_currency', 'Delete exchange_currency: 13', 1, '2019-06-06 08:43:12'),
(1352, 'exchange_currency', 'Delete exchange_currency: 12', 1, '2019-06-06 08:43:12'),
(1353, 'exchange_currency', 'Delete exchange_currency: 11', 1, '2019-06-06 08:43:12'),
(1354, 'exchange_currency', 'Delete exchange_currency: 10', 1, '2019-06-06 08:43:20'),
(1355, 'exchange_currency', 'Delete exchange_currency: 9', 1, '2019-06-06 08:43:20'),
(1356, 'exchange_currency', 'Delete exchange_currency: 8', 1, '2019-06-06 08:43:20'),
(1357, 'exchange_currency', 'Delete exchange_currency: 7', 1, '2019-06-06 08:43:20'),
(1358, 'exchange_currency', 'Delete exchange_currency: 6', 1, '2019-06-06 08:43:20'),
(1359, 'exchange_currency', 'Delete exchange_currency: 5', 1, '2019-06-06 08:43:21'),
(1360, 'exchange_currency', 'Delete exchange_currency: 4', 1, '2019-06-06 08:43:21'),
(1361, 'exchange_currency', 'Delete exchange_currency: 3', 1, '2019-06-06 08:43:21'),
(1362, 'exchange_currency', 'Delete exchange_currency: 2', 1, '2019-06-06 08:43:21'),
(1363, 'exchange_currency', 'Delete exchange_currency: 1', 1, '2019-06-06 08:43:21'),
(1364, 'exchange_currency', 'Delete exchange_currency: 41', 1, '2019-06-06 08:44:49'),
(1365, 'exchange_currency', 'Delete exchange_currency: 40', 1, '2019-06-06 08:44:49'),
(1366, 'exchange_currency', 'Delete exchange_currency: 39', 1, '2019-06-06 08:44:49'),
(1367, 'exchange_currency', 'Delete exchange_currency: 38', 1, '2019-06-06 08:44:50'),
(1368, 'exchange_currency', 'Delete exchange_currency: 37', 1, '2019-06-06 08:44:50'),
(1369, 'exchange_currency', 'Delete exchange_currency: 36', 1, '2019-06-06 08:44:50'),
(1370, 'exchange_currency', 'Delete exchange_currency: 35', 1, '2019-06-06 08:44:50'),
(1371, 'exchange_currency', 'Delete exchange_currency: 34', 1, '2019-06-06 08:44:50'),
(1372, 'exchange_currency', 'Delete exchange_currency: 33', 1, '2019-06-06 08:44:50'),
(1373, 'exchange_currency', 'Delete exchange_currency: 32', 1, '2019-06-06 08:44:50'),
(1374, 'exchange_currency', 'Delete exchange_currency: 31', 1, '2019-06-06 08:44:53'),
(1375, 'exchange_currency', 'Delete exchange_currency: 30', 1, '2019-06-06 08:44:53'),
(1376, 'exchange_currency', 'Delete exchange_currency: 29', 1, '2019-06-06 08:44:54'),
(1377, 'exchange_currency', 'Delete exchange_currency: 28', 1, '2019-06-06 08:44:54'),
(1378, 'exchange_currency', 'Delete exchange_currency: 27', 1, '2019-06-06 08:44:54'),
(1379, 'exchange_currency', 'Delete exchange_currency: 26', 1, '2019-06-06 08:44:54'),
(1380, 'exchange_currency', 'Delete exchange_currency: 25', 1, '2019-06-06 08:44:54'),
(1381, 'exchange_currency', 'Delete exchange_currency: 24', 1, '2019-06-06 08:44:54'),
(1382, 'exchange_currency', 'Delete exchange_currency: 23', 1, '2019-06-06 08:44:54'),
(1383, 'exchange_currency', 'Delete exchange_currency: 22', 1, '2019-06-06 08:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `ap_maker`
--

CREATE TABLE `ap_maker` (
  `id` int(11) NOT NULL,
  `name_maker` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_maker`
--

INSERT INTO `ap_maker` (`id`, `name_maker`) VALUES
(1, 'Thái Nguyên'),
(2, 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `ap_menus`
--

CREATE TABLE `ap_menus` (
  `id` int(4) NOT NULL,
  `title` varchar(75) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `icon` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#',
  `parent_id` int(2) NOT NULL DEFAULT 0,
  `order` tinyint(2) DEFAULT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` smallint(4) NOT NULL,
  `language_code` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_menus`
--

INSERT INTO `ap_menus` (`id`, `title`, `icon`, `link`, `parent_id`, `order`, `class`, `location_id`, `language_code`, `type`) VALUES
(1399, 'About us', '', 'about-us', 0, 1, '', 2, 'en', 'page'),
(1400, 'Products', '', 'products-cp1', 0, 2, '', 2, 'en', 'product'),
(1401, 'Catalogue', '', 'collection-cb33', 0, 3, '', 2, 'en', 'project'),
(1402, 'Showroom', '', 'showroom', 0, 4, '', 2, 'en', 'other'),
(1403, 'Company', '', 'company-c29', 0, 5, '', 2, 'en', 'post'),
(2255, 'Sản phẩm', '', 'san-pham-cp40', 0, 1, '', 1, 'en', 'product'),
(2256, 'Gạch ốp tường', NULL, 'gach-op-tuong-cp44', 2255, 1, '', 1, 'en', NULL),
(2257, 'Gạch lát nền', NULL, 'gach-lat-nen-cp43', 2255, 2, '', 1, 'en', NULL),
(2258, 'Gạch lát viền', NULL, 'gach-lat-vien-cp42', 2255, 3, '', 1, 'en', NULL),
(2259, 'Gạch ngoại thất', NULL, 'gach-ngoai-that-cp41', 2255, 4, '', 1, 'en', NULL),
(2260, 'Gạch DECOR', NULL, 'gach-decor-cp39', 2255, 5, '', 1, 'en', NULL),
(2261, 'Bộ sưu tập', '', 'bo-suu-tap-c33', 0, 2, '', 1, 'en', 'project'),
(2262, 'Gạch Euro title', NULL, 'gach-Eurotitle-c32', 2261, 1, '', 1, 'en', NULL),
(2263, 'Gạch hoa', NULL, 'gach-hoa-c31', 2261, 2, '', 1, 'en', NULL),
(2264, 'Gạch Uno', NULL, 'gach-uno-c30', 2261, 3, '', 1, 'en', NULL),
(2265, 'Gạch Signature', NULL, 'gach-signature-c16', 2261, 4, '', 1, 'en', NULL),
(2266, 'Showroom', '', 'showroom', 0, 3, '', 1, 'en', 'post'),
(2267, 'ngoại ngữ', '', 'ngoai-ngu-c47', 0, 4, '', 1, 'en', 'post'),
(2268, 'Công ty', '', 'cong-ty-c29', 0, 5, '', 1, 'en', 'video'),
(2269, 'Thông tin công ty', NULL, 'thong-tin-cong-ty-c25', 2268, 1, '', 1, 'en', NULL),
(2270, 'Sự kiện', NULL, 'su-kien-c26', 2268, 2, '', 1, 'en', NULL),
(2271, 'Thông tin cổ đông', NULL, 'thong-tin-co-dong-c27', 2268, 3, '', 1, 'en', NULL),
(2272, 'Profile', NULL, 'profile-c28', 2268, 4, '', 1, 'en', NULL),
(2273, 'E-Office', NULL, 'http://viglaceratienson.com:8080', 2268, 5, '', 1, 'en', NULL),
(2274, 'lập trình', NULL, 'lap-trinh-c46', 2268, 6, '', 1, 'en', NULL),
(2275, 'Liên hệ', '', 'lien-he', 0, 6, '', 1, 'en', 'page'),
(2571, 'giới thiệu', '', 'gioi-thieu', 0, 1, '', 2, 'vi', 'page'),
(2572, 'Điều khoản sử dụng', '', 'dieu-khoan-su-dung', 0, 2, '', 2, 'vi', 'page'),
(2573, 'Quy chế hoạt động', '', 'quy-che-hoat-dong', 0, 3, '', 2, 'vi', 'page'),
(2574, 'Chính sách bảo mật', '', 'chinh-sach-bao-mat', 0, 4, '', 2, 'vi', 'page'),
(2575, 'Tin tức', '', 'tin-tuc-c48', 0, 1, '', 3, 'vi', 'post'),
(2576, 'News', '', 'new-c48', 0, 1, '', 3, 'en', 'post'),
(2828, 'Trang chủ', '', 'home', 0, 1, '', 1, 'vi', ''),
(2829, 'Về chúng tôi', '', 'about', 0, 2, '', 1, 'vi', ''),
(2830, 'Sở hữ các thương hiệu', '', 'members', 0, 3, '', 1, 'vi', ''),
(2831, 'Thư viện', '', 'media_library', 0, 4, '', 1, 'vi', ''),
(2832, 'Tin tức', '', 'news', 0, 5, '', 1, 'vi', ''),
(2833, 'Liên hệ', '', 'contact', 0, 6, '', 1, 'vi', '');

-- --------------------------------------------------------

--
-- Table structure for table `ap_newsletter`
--

CREATE TABLE `ap_newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_newsletter`
--

INSERT INTO `ap_newsletter` (`id`, `email`, `created_time`) VALUES
(1, 'aa@gmail.com', '2018-05-23 10:57:07'),
(3, 'steven.mucian@gmail.com', '2018-05-23 11:39:54'),
(7, 'maianh.apecsoft@gmail.com', '2018-05-28 11:13:46'),
(8, 'maianh.crmviet@gmail.com', '2018-05-28 12:01:00'),
(9, 'askeyh3t@gmail.com', '2018-06-06 09:49:32'),
(10, 'lenganvcu96ht@gmail.com', '2018-07-30 01:23:59'),
(22, 'nguyenminhcuong2@luvina.net', '2019-02-14 19:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `ap_orders`
--

CREATE TABLE `ap_orders` (
  `id` int(11) NOT NULL,
  `date_create` date NOT NULL,
  `status` int(11) NOT NULL,
  `amount_total` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_orders`
--

INSERT INTO `ap_orders` (`id`, `date_create`, `status`, `amount_total`, `user_id`) VALUES
(1, '2019-12-09', 1, 16000, 1),
(2, '2019-12-10', 2, 115000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ap_page`
--

CREATE TABLE `ap_page` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `style` varchar(20) DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `is_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'trang thai',
  `file` varchar(255) DEFAULT NULL,
  `time_thanhlap` datetime NOT NULL,
  `displayed_time` datetime NOT NULL COMMENT 'ngay publish',
  `created_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'ngay tao',
  `updated_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngay sua',
  `album` text DEFAULT NULL,
  `block` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_page`
--

INSERT INTO `ap_page` (`id`, `category_id`, `style`, `thumbnail`, `banner`, `is_status`, `file`, `time_thanhlap`, `displayed_time`, `created_time`, `updated_time`, `album`, `block`) VALUES
(2, 0, 'contact', 'prf-banner.jpg', 'prf-banner.jpg', 1, NULL, '2019-06-05 19:19:45', '2019-06-05 19:20:34', '2019-01-07 14:46:38', '2019-12-16 14:51:14', NULL, NULL),
(7, 0, 'about', '', '', 1, NULL, '2019-06-12 19:19:50', '2019-06-05 19:20:37', '2019-01-24 11:25:55', '2019-12-16 14:51:22', NULL, NULL),
(8, 0, 'home', '', '', 1, NULL, '2019-06-05 19:20:01', '2019-06-05 19:20:39', '2019-01-24 11:26:20', '2019-12-16 15:33:49', NULL, NULL),
(9, 0, 'media_library', '', '', 1, NULL, '2019-06-05 19:20:05', '2019-06-05 19:20:41', '2019-01-24 11:26:37', '2019-12-16 15:58:13', NULL, NULL),
(10, 0, 'members', '', '', 1, NULL, '2019-06-05 19:20:09', '2019-06-05 19:20:42', '2019-01-24 11:26:55', '2019-12-16 15:34:22', NULL, NULL),
(11, 0, 'news', '', '', 1, NULL, '2019-06-05 19:20:12', '2019-06-05 19:20:45', '2019-02-17 16:30:08', '2019-12-16 15:34:29', NULL, NULL),
(12, 0, 'special', '', '', 1, NULL, '2019-06-05 19:20:29', '2019-06-05 19:20:50', '2019-02-25 14:48:21', '2019-06-05 19:20:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ap_page_translations`
--

CREATE TABLE `ap_page_translations` (
  `id` int(11) DEFAULT NULL,
  `language_code` varchar(5) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `file_timeline` varchar(255) DEFAULT NULL,
  `content_more` longtext DEFAULT NULL,
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_description` varchar(170) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_page_translations`
--

INSERT INTO `ap_page_translations` (`id`, `language_code`, `slug`, `title`, `description`, `content`, `file_timeline`, `content_more`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(2, 'vi', 'contact', ' dfv f v f', 'vsvs dvsv sd v sd d', 'ccdssdv dvfdv dfv', 'dsfs fe e ', 's fdef sfsdf', ' fwef sfdf sd', 'df sdfsdfsd f', 'd fsd fsd '),
(2, 'en', 'contact', ' dfv f v f', 'vsvs dvsv sd v sd d', 'ccdssdv dvfdv dfv', 'dsfs fe e ', 's fdef sfsdf', ' fwef sfdf sd', 'df sdfsdfsd f', 'd fsd fsd '),
(7, 'vi', 'about', 'g dfg', ' dfg fgd f ', 'd fgfd gd ', 's df sdf', 'sdfsd fs', 'sf d ffg', 'á fsfdg', 'sd ggs fdgd'),
(7, 'en', 'about', 'g dfg', ' dfg fgd f ', 'd fgfd gd ', 's df sdf', 'sdfsd fs', 'sf d ffg', 'á fsfdg', 'sd ggs fdgd'),
(8, 'en', 'home', 'g dfg', ' dfg fgd f ', 'd fgfd gd ', 's df sdf', 'sdfsd fs', 'sf d ffg', 'á fsfdg', 'sd ggs fdgd'),
(8, 'vi', 'home', 'g dfg', ' dfg fgd f ', 'd fgfd gd ', 's df sdf', 'sdfsd fs', 'sf d ffg', 'á fsfdg', 'sd ggs fdgd'),
(9, 'vi', 'media_library', 'g dfg', ' dfg fgd f ', 'd fgfd gd ', 's df sdf', 'sdfsd fs', 'sf d ffg', 'á fsfdg', 'sd ggs fdgd'),
(9, 'en', 'media_library', 'g dfg', ' dfg fgd f ', 'd fgfd gd ', 's df sdf', 'sdfsd fs', 'sf d ffg', 'á fsfdg', 'sd ggs fdgd'),
(10, 'en', 'members', 'g dfg', ' dfg fgd f ', 'd fgfd gd ', 's df sdf', 'sdfsd fs', 'sf d ffg', 'á fsfdg', 'sd ggs fdgd'),
(10, 'vi', 'members', 'g dfg', ' dfg fgd f ', 'd fgfd gd ', 's df sdf', 'sdfsd fs', 'sf d ffg', 'á fsfdg', 'sd ggs fdgd'),
(11, 'vi', 'news', ' df fg fg n', ' gg  n nvb', ' b d bdf b df ', 'd vdf b dfb ', 's sfb b ', '  cvb cv b', 'cv cv bc v', 'c v cv cv'),
(11, 'en', 'news', ' df fg fg n', ' gg  n nvb', ' b d bdf b df ', 'd vdf b dfb ', 's sfb b ', '  cvb cv b', 'cv cv bc v', 'c v cv cv');

-- --------------------------------------------------------

--
-- Table structure for table `ap_post`
--

CREATE TABLE `ap_post` (
  `id` int(11) NOT NULL,
  `id_crawler` int(11) DEFAULT NULL,
  `category_product` varchar(255) DEFAULT 'NULL' COMMENT 'List ID cate product',
  `thumbnail` varchar(255) NOT NULL,
  `album` text DEFAULT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  `is_status` tinyint(2) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'trang thai',
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `displayed_time` date NOT NULL COMMENT 'ngay publish',
  `program` tinyint(1) NOT NULL DEFAULT 0,
  `number` varchar(5) DEFAULT '1',
  `viewed` bigint(20) NOT NULL DEFAULT 0,
  `type` varchar(100) DEFAULT NULL COMMENT 'Partime/fulltime',
  `type_career` int(5) DEFAULT NULL COMMENT 'Loại hình làm việc',
  `level` varchar(50) DEFAULT NULL COMMENT 'Trình độ',
  `address` varchar(255) DEFAULT NULL COMMENT 'Địa điểm làm việc',
  `address_career` varchar(255) DEFAULT NULL COMMENT 'Chi nhánh',
  `expiration_time` date NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'ngay tao',
  `updated_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngay sua',
  `files` varchar(255) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_post`
--

INSERT INTO `ap_post` (`id`, `id_crawler`, `category_product`, `thumbnail`, `album`, `url_video`, `is_status`, `is_featured`, `displayed_time`, `program`, `number`, `viewed`, `type`, `type_career`, `level`, `address`, `address_career`, `expiration_time`, `created_time`, `updated_time`, `files`, `salary`, `time`) VALUES
(19, NULL, 'NULL', 'news-home4.jpg', NULL, '', 0, 0, '2019-06-05', 0, '1', 0, NULL, NULL, NULL, NULL, NULL, '2019-06-05', '2018-10-21 16:15:42', '2019-06-05 19:22:04', NULL, NULL, NULL),
(21, NULL, 'NULL', 'news-home4.jpg', NULL, '', 1, 0, '2019-06-05', 0, '1', 0, NULL, NULL, NULL, NULL, NULL, '2019-06-05', '2018-10-25 15:59:41', '2019-06-05 19:22:07', NULL, NULL, NULL),
(22, NULL, 'NULL', '', NULL, NULL, 1, 0, '0000-00-00', 0, '', 0, NULL, NULL, NULL, '', NULL, '0000-00-00', '2019-06-05 21:05:36', '2019-06-05 21:05:36', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ap_post_category`
--

CREATE TABLE `ap_post_category` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_post_category`
--

INSERT INTO `ap_post_category` (`post_id`, `category_id`) VALUES
(19, 48),
(21, 48),
(22, 49),
(22, 108),
(23, 49),
(24, 48),
(26, 48),
(27, 49),
(27, 107),
(33, 48),
(33, 49),
(34, 48),
(35, 48),
(35, 107),
(36, 48),
(38, 48),
(39, 107),
(40, 69),
(41, 67),
(42, 1),
(43, 1),
(43, 107);

-- --------------------------------------------------------

--
-- Table structure for table `ap_post_translations`
--

CREATE TABLE `ap_post_translations` (
  `id` int(11) DEFAULT NULL,
  `language_code` varchar(5) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `content_more` text DEFAULT NULL,
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_description` varchar(170) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_post_translations`
--

INSERT INTO `ap_post_translations` (`id`, `language_code`, `slug`, `title`, `description`, `content`, `content_more`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(22, 'vi', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaa', '<p>aaaaaaaaaaaaaaaaaaaaaaaa</p>', NULL, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaâaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaa'),
(22, 'en', 'aa', 'aaaaaa', 'aaaaa', '<p>aaaa</p>', NULL, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `ap_product`
--

CREATE TABLE `ap_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `_content` varchar(255) NOT NULL,
  `catalog` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `maker_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created` date NOT NULL,
  `total` int(11) NOT NULL,
  `created_time` date NOT NULL,
  `gift_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_product`
--

INSERT INTO `ap_product` (`id`, `name`, `_content`, `catalog`, `thumbnail`, `maker_id`, `price`, `created`, `total`, `created_time`, `gift_code`) VALUES
(20, 'Nhanh tay không hết', ' dg df h ghfg', 1, 'thumb/1553330187vh6wjm_simg_de2fe0_500x500_maxb.jpg', 1, 1000, '2019-12-15', 2, '0000-00-00', '100'),
(21, 'Khỏi phải chê', ' dg df g hg g', 2, 'thumb/1553349954wgdkee_simg_de2fe0_500x500_maxb.jpg', 2, 100000, '2019-12-15', 10, '0000-00-00', '200'),
(22, 'Hàng xin', ' D FG DF HG ', 3, 'thumb/1554778884asdas.jpg', 2, 2000, '2019-12-15', 6, '0000-00-00', '300');

-- --------------------------------------------------------

--
-- Table structure for table `ap_product_category`
--

CREATE TABLE `ap_product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ap_product_translations`
--

CREATE TABLE `ap_product_translations` (
  `id` int(11) NOT NULL,
  `language_code` varchar(5) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `content` longtext NOT NULL,
  `content_more` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_product_translations`
--

INSERT INTO `ap_product_translations` (`id`, `language_code`, `slug`, `title`, `description`, `content`, `content_more`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(20, 'vi', 'nhanh-tay-khong-het', 'Nhanh tay không hết', ' dg df h ghfg', '', '', 's dg d fg dh', 'df  h fg hhg j ', 'd h fg hf h '),
(20, 'en', 'd-fg-dg-hg-fghf', 'd fg dg hg fghf', 's dg f g gh f', '', '', 'sd f gd h fg', 'd fg dfh gf', ' fg df hf gh'),
(21, 'vi', 'khoi-phai-che', 'Khỏi phải chê', ' dg df g hg g', '', '', 'd f fg hfg', 'df f gh fg hf gh fg h g  hg n g', 'f bf g f'),
(21, 'en', 'd-f-gd-gh-fgh-f-hf', 'd f gd gh fgh f hf ', ' fb gf bfg n ', '', '', 'g  bfg nfn', ' d dfb g  gn f', ' b fg bf'),
(22, 'vi', 'hang-xin', 'Hàng xin', ' D FG DF HG ', '', '', 'A SF SFG D  D GDFG FD', ' SD DF GD G', 'SD G DF D H'),
(22, 'en', 'gdf-gh-gf-g-hf', '  GDF  GH GF G HF', '  e tte ỷ t ryy ', '', '', 'a f sg ẻ g erg e rr ge rg e r', 'SV S  DFB  B CV X', ' ZV X CV CB ');

-- --------------------------------------------------------

--
-- Table structure for table `ap_size`
--

CREATE TABLE `ap_size` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `text_size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_size`
--

INSERT INTO `ap_size` (`id`, `product_id`, `quantity`, `text_size`) VALUES
(25, 22, 6, 'M'),
(26, 21, 2, 'S'),
(27, 21, 8, 'XL'),
(28, 20, 2, 'S');

-- --------------------------------------------------------

--
-- Table structure for table `ap_status`
--

CREATE TABLE `ap_status` (
  `id` int(11) NOT NULL,
  `name_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_status`
--

INSERT INTO `ap_status` (`id`, `name_status`) VALUES
(1, 'Chờ sử lý'),
(2, 'Đã xác nhận'),
(3, 'Đã hủy đơn hàng');

-- --------------------------------------------------------

--
-- Table structure for table `ap_system_menu`
--

CREATE TABLE `ap_system_menu` (
  `id` int(10) NOT NULL,
  `text` varchar(75) NOT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `href` varchar(255) NOT NULL DEFAULT '#',
  `controller` varchar(30) DEFAULT NULL,
  `parent_id` int(4) NOT NULL DEFAULT 0,
  `class` varchar(255) DEFAULT NULL,
  `order` int(4) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_system_menu`
--

INSERT INTO `ap_system_menu` (`id`, `text`, `icon`, `href`, `controller`, `parent_id`, `class`, `order`, `target`) VALUES
(1, 'Bảng điều khiển', 'fa fa-dashboard', '#', NULL, 0, '', 30, NULL),
(68, 'Quản lý thành viên', 'fa fa-users', '#', NULL, 0, 'treeview', 29, '_self'),
(69, 'Danh sách nhóm', 'fa fa-users', 'groups', 'groups', 68, '', 0, '_self'),
(70, 'Danh sách thành viên', 'fa fa-user', 'users', 'users', 68, '', 0, '_self'),
(71, 'Quản lý khách hàng', 'fa fa-user', 'account', 'account', 68, '', 0, '_self'),
(72, 'Quản trị nội dung', 'fa fa-newspaper-o', '#', NULL, 0, 'treeview', 28, '_self'),
(73, 'Quản lý sản phẩm', 'fa fa-product-hunt', 'myproduct', 'myproduct', 0, NULL, NULL, NULL),
(74, 'Quản lý hóa đơn', 'fa fa-first-order', 'orders', 'orders', 0, NULL, NULL, NULL),
(75, 'Quản lý menu', 'fa fa-bars', 'menus', 'menus', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ap_users`
--

CREATE TABLE `ap_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_small` varchar(255) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_users`
--

INSERT INTO `ap_users` (`id`, `ip_address`, `username`, `last_name`, `first_name`, `full_name`, `email`, `phone`, `password`, `salt`, `thumbnail`, `thumbnail_small`, `company`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `active`, `address`, `last_login`, `updated_time`, `created_time`) VALUES
(1, '127.0.0.1', 'admin', 'admin', 'admin', 'Đinh Văn Khương', 'admin@gmail.com', '0973683037', '$2b$10$KGMmazsmWl7gR5KKPmiODeGgTCKgBjvfqjr5VhL6ZYmcE2uy8fOAO', '', 'author.jpg', NULL, 'Năm 1998', '', NULL, NULL, NULL, 1268889823, 1, NULL, 1576597777, '2019-01-31 17:30:53', '2017-12-17 00:49:09'),
(59, '14.177.235.179', 'vnpt', 'vnpt', 'vnpt', NULL, 'admin@vnpt.vn', '0970709700', '$2y$08$blG8UQvv0WiI.I87t6MsEeonWmBAG8m6Ry3ac/7E1vmd4/NnXgT12', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 1559205333, 1, NULL, 1559221690, NULL, NULL),
(60, '', 'abc', 'abc', 'abc', 'full name', 'abc@123', '0379749836', '$2b$10$KGMmazsmWl7gR5KKPmiODeGgTCKgBjvfqjr5VhL6ZYmcE2uy8fOAO', '123', '123', '123', '1234', '1231234', '123', 123, '1234', 0, 12, '123', 123, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ap_users_groups`
--

CREATE TABLE `ap_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ap_users_groups`
--

INSERT INTO `ap_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(214, 59, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ap_banner`
--
ALTER TABLE `ap_banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_banner_translations`
--
ALTER TABLE `ap_banner_translations`
  ADD UNIQUE KEY `ap_banner_translations_id_language_code_pk` (`id`,`language_code`) USING BTREE;

--
-- Indexes for table `ap_catalog`
--
ALTER TABLE `ap_catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_category`
--
ALTER TABLE `ap_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_category_translations`
--
ALTER TABLE `ap_category_translations`
  ADD UNIQUE KEY `ap_category_translations_id_language_code_pk` (`id`,`language_code`) USING BTREE;

--
-- Indexes for table `ap_contact`
--
ALTER TABLE `ap_contact`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_currency`
--
ALTER TABLE `ap_currency`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_detail_order`
--
ALTER TABLE `ap_detail_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `ap_exchange_currency`
--
ALTER TABLE `ap_exchange_currency`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_groups`
--
ALTER TABLE `ap_groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_login_attempts`
--
ALTER TABLE `ap_login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_log_action`
--
ALTER TABLE `ap_log_action`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_maker`
--
ALTER TABLE `ap_maker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_menus`
--
ALTER TABLE `ap_menus`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_newsletter`
--
ALTER TABLE `ap_newsletter`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `ap_newsletter_email_uindex` (`email`) USING BTREE;

--
-- Indexes for table `ap_orders`
--
ALTER TABLE `ap_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_page`
--
ALTER TABLE `ap_page`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_page_translations`
--
ALTER TABLE `ap_page_translations`
  ADD UNIQUE KEY `ap_page_translations_id_language_code_pk` (`id`,`language_code`) USING BTREE;

--
-- Indexes for table `ap_post`
--
ALTER TABLE `ap_post`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_post_category`
--
ALTER TABLE `ap_post_category`
  ADD PRIMARY KEY (`post_id`,`category_id`) USING BTREE;

--
-- Indexes for table `ap_post_translations`
--
ALTER TABLE `ap_post_translations`
  ADD UNIQUE KEY `ap_post_translations_id_language_code_pk` (`id`,`language_code`) USING BTREE;

--
-- Indexes for table `ap_product`
--
ALTER TABLE `ap_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_product_category`
--
ALTER TABLE `ap_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `ap_product_translations`
--
ALTER TABLE `ap_product_translations`
  ADD KEY `language_code` (`language_code`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ap_size`
--
ALTER TABLE `ap_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_status`
--
ALTER TABLE `ap_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_system_menu`
--
ALTER TABLE `ap_system_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_users`
--
ALTER TABLE `ap_users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ap_users_groups`
--
ALTER TABLE `ap_users_groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`) USING BTREE,
  ADD KEY `fk_users_groups_users1_idx` (`user_id`) USING BTREE,
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ap_banner`
--
ALTER TABLE `ap_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ap_catalog`
--
ALTER TABLE `ap_catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ap_category`
--
ALTER TABLE `ap_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `ap_contact`
--
ALTER TABLE `ap_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ap_currency`
--
ALTER TABLE `ap_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `ap_detail_order`
--
ALTER TABLE `ap_detail_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ap_exchange_currency`
--
ALTER TABLE `ap_exchange_currency`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ap_groups`
--
ALTER TABLE `ap_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ap_login_attempts`
--
ALTER TABLE `ap_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ap_log_action`
--
ALTER TABLE `ap_log_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1384;

--
-- AUTO_INCREMENT for table `ap_maker`
--
ALTER TABLE `ap_maker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ap_menus`
--
ALTER TABLE `ap_menus`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2834;

--
-- AUTO_INCREMENT for table `ap_newsletter`
--
ALTER TABLE `ap_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ap_orders`
--
ALTER TABLE `ap_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ap_page`
--
ALTER TABLE `ap_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ap_post`
--
ALTER TABLE `ap_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ap_product`
--
ALTER TABLE `ap_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ap_size`
--
ALTER TABLE `ap_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ap_status`
--
ALTER TABLE `ap_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ap_system_menu`
--
ALTER TABLE `ap_system_menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `ap_users`
--
ALTER TABLE `ap_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `ap_users_groups`
--
ALTER TABLE `ap_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ap_users_groups`
--
ALTER TABLE `ap_users_groups`
  ADD CONSTRAINT `ap_users_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `ap_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ap_users_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `ap_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
