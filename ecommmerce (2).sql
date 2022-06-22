-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 22, 2022 at 06:47 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommmerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `promotional_message` varchar(255) DEFAULT NULL,
  `html_banner` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `is_draft` tinyint(1) DEFAULT NULL,
  `soft_delete` tinyint(1) DEFAULT NULL,
  `max_display` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `picture`, `link`, `promotional_message`, `html_banner`, `is_active`, `is_draft`, `soft_delete`, `max_display`, `created_at`, `modified_at`) VALUES
(10, 'fdsafds sf  sda fdsa fdsa', 'IMG_1655796878_colorcode.jpg', NULL, 'dsf dsf dfdsdsa sf  sdf dsasa', NULL, 0, NULL, NULL, NULL, '2022-06-21 13:27:00', '2022-06-22 05:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_draft` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `soft_delete` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `is_draft`, `is_active`, `soft_delete`, `created_at`, `modified_at`) VALUES
(1, 'powerbank', NULL, NULL, NULL, '2022-06-16 10:14:00', NULL),
(2, 'earbuds', NULL, NULL, NULL, '2022-06-16 10:14:00', NULL),
(3, 'speaker', NULL, NULL, NULL, '2022-06-16 12:17:00', NULL),
(5, 'Bluetooth tws', NULL, NULL, NULL, '2022-06-19 09:21:00', NULL),
(6, 'watch', NULL, NULL, NULL, '2022-06-19 09:31:00', NULL),
(7, 'wireless nackband', NULL, NULL, NULL, '2022-06-21 09:27:00', '2022-06-21 09:51:00'),
(8, 'fdsfdsadsaf', NULL, 1, NULL, '2022-06-21 11:02:00', NULL),
(9, 'fdsafdsfadsafdsafsaf', NULL, NULL, NULL, '2022-06-21 11:02:00', NULL),
(10, 'fdsafdsaf sdafdsaf adsfas', NULL, NULL, NULL, '2022-06-21 11:04:00', NULL),
(11, 'fdsfdsa dsaf fdsa dsa fsd', NULL, 1, NULL, '2022-06-21 11:06:00', NULL),
(12, 'fsdaf  sdaf ds sd f fd', NULL, NULL, NULL, '2022-06-21 11:07:00', NULL),
(13, 'fdsa dsafads dsa fdsa dsf', NULL, 0, NULL, '2022-06-21 11:10:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `lebel_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `short_description` text,
  `description` varchar(255) DEFAULT NULL,
  `total_sales` int(11) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `is_new` tinyint(4) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `special_price` float DEFAULT NULL,
  `soft_delete` tinyint(1) DEFAULT NULL,
  `is_draft` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `modified_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `brand_id`, `lebel_id`, `title`, `picture`, `short_description`, `description`, `total_sales`, `product_type`, `is_new`, `cost`, `price`, `special_price`, `soft_delete`, `is_draft`, `is_active`, `modified_at`, `created_at`) VALUES
(32, NULL, NULL, 'this is a new productoijlklkj', 'IMG_1655875080_babyimages.jpg', 'this is basus powerbank short description', 'this is the decription of basus 10000mah powerbank  this is the decription of basus 10000mah powerbank  this is the decription of basus 10000mah powerbank  ', NULL, 'earbuds', NULL, NULL, 587, NULL, NULL, NULL, 1, NULL, NULL),
(33, NULL, NULL, 'another product title', 'IMG_1655877181_codeimage.jpg', 'short descriptionfdsfa', 'logn description', NULL, 'wireless nackband', NULL, NULL, 587, NULL, NULL, NULL, 0, NULL, NULL),
(34, NULL, NULL, 'fds afsadfs dsaf ds', 'IMG_1655876761_colorcode.jpg', ' fdsfdsa fdsf dsfds afsd dsa', 'f dsafdsa dsafdsaf dfdsa dsfds dsaf dsafs', NULL, 'Bluetooth tws', NULL, NULL, 587, NULL, NULL, NULL, 1, NULL, NULL),
(35, NULL, NULL, 'fjdskfjsdaf f ldsfjakdsfs da', 'IMG_1655877330_colorpop.jpg', 'fsdafdsa fsd fdsaf dsaf dsaf ds', 'd saf dsaf dsafdsa sdaf dfadf dsasdf a', NULL, 'powerbank', NULL, NULL, 587, NULL, NULL, NULL, 1, NULL, NULL),
(36, NULL, NULL, 'fdsafdsa dsa', 'IMG_1655879326_Screenshot (1).png', ' fdsaf dsaf dsa', ' fdsafd sfdsafd s', NULL, 'earbuds', NULL, NULL, 87, NULL, NULL, NULL, 1, NULL, '2022-06-22 06:28:46'),
(37, NULL, NULL, 'this is new product dsa sad fdsaf', 'IMG_1655879554_bby.png', 'fdsads fadf sda ds ds fsdf dsfa', 'fdsa dsaf dsasa fds', NULL, 'earbuds', NULL, NULL, 87587, NULL, NULL, NULL, 1, NULL, '2022-06-22 06:31:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
