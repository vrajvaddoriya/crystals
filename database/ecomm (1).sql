-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 12:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(15, 9, 50, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'crystal-rings', 'Rings'),
(2, 'crystal-pendants', 'Pendants'),
(3, 'crystal-earrings', 'Earring'),
(4, 'crystal-bracelets', 'Bracelets');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(50, 1, 'Labrodorite Ring', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'labrodorite-ring', 650, 'labrodorite-ring.webp', '2023-10-13', 1),
(51, 1, 'Aura Angel Ring', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'aura-angel-ring', 780, 'aura-angel-ring.webp', '0000-00-00', 0),
(52, 1, 'round ring', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'round-ring', 550, 'round-ring.jpg', '0000-00-00', 0),
(53, 1, 'pind Crystal ring', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'pind-crystal-ring', 950, 'pind-crystal-ring_1697081650.jpg', '0000-00-00', 0),
(54, 2, 'Prehnite Pendant', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'prehnite-pendant', 650, 'prehnite-pendant.webp', '0000-00-00', 0),
(55, 2, 'Aura Angel Pendant', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'aura-angel-pendant', 780, 'aura-angel-pendant_1697081790.webp', '0000-00-00', 0),
(56, 2, 'Green Aventurine Pendant', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'green-aventurine-pendant', 950, 'green-aventurine-pendant.webp', '0000-00-00', 0),
(57, 4, 'Earth and Wood Element Bracelet', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'earth-and-wood-element-bracelet', 550, 'earth-and-wood-element-bracelet.webp', '0000-00-00', 0),
(58, 4, 'Green Aventurine Bracelet', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'green-aventurine-bracelet', 950, 'green-aventurine-bracelet_1697081973.webp', '0000-00-00', 0),
(59, 4, 'Bracelet for love', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'bracelet-love', 2, 'bracelet-love.webp', '0000-00-00', 0),
(60, 3, 'whie Earing', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'whie-earing', 650, 'whie-earing.webp', '2023-10-14', 1),
(61, 3, 'blue and white earing', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'blue-and-white-earing', 550, 'blue-and-white-earing.webp', '0000-00-00', 0),
(62, 3, 'Green Aventurine earing', '<p><strong>Size: Adjustable</strong></p>\r\n\r\n<p><strong>Dimensions: LxB 2.5cmX2cm</strong><br />\r\n<strong>Weight 7gms</strong><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Metal: Brass</strong></p>\r\n', 'green-aventurine-earing', 550, 'green-aventurine-earing.webp', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'DP', 'Brand', '', '', 'DP Brand.jpeg', 1, '', '', '2018-05-01'),
(9, 'test@gmail.com', '$2y$10$BJ70dIe/3jUGRYk9KOYJhuzFf/hv6tWCwRxjbGr4DiL978grO5kly', 0, 'DP', 'brand', 'surat', '09092735719', 'DP Brand.jpeg', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(16, 'dp@gmail.com', '$2y$10$2HGxhB8VZIFno5UZvQJlXuzoWYxDHcl0wL2nQBcNBsSIzh74DZJTe', 0, 'dp', 'dp', 'dp', 'dp', 'DP Brand.jpeg', 1, '', '', '2023-10-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
