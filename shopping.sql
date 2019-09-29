-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2019 at 05:39 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(5) NOT NULL,
  `owner` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `owner`, `time`) VALUES
(47, 'admin', '2019-09-28 15:55:36'),
(48, 'admin', '2019-09-28 15:55:38'),
(49, 'admin', '2019-09-28 15:55:43'),
(50, 'admin', '2019-09-28 16:14:27'),
(51, 'admin', '2019-09-28 16:14:31'),
(52, 'admin', '2019-09-28 16:18:45'),
(53, 'admin', '2019-09-28 16:18:49'),
(54, 'admin', '2019-09-28 16:35:35'),
(55, 'admin', '2019-09-28 16:35:36'),
(56, 'admin', '2019-09-28 16:35:40'),
(57, 'admin', '2019-09-28 16:46:30'),
(58, 'admin', '2019-09-28 16:46:30'),
(59, 'admin', '2019-09-28 16:46:34'),
(60, 'admin', '2019-09-28 16:49:13'),
(61, 'admin', '2019-09-28 16:49:17'),
(62, 'admin', '2019-09-28 16:50:48'),
(63, 'admin', '2019-09-28 16:50:51'),
(64, 'admin', '2019-09-28 17:36:41'),
(65, 'admin', '2019-09-28 17:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(5) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `p_name`, `image`, `price`, `quantity`) VALUES
(1, 'huawei gr5 2017', 'p_1.png', 2000, 5),
(2, 'iphone x ', 'p_2.png', 15800, 2),
(3, 'Google speaker ', 'p_3.png', 2500, 6),
(4, 'Macbook pro 2018', 'p_4.png', 48000, 3),
(6, 'iphone 6s', 'p_5.png', 7000, 7),
(7, 'Samsung A20 ', 'p_6.png', 2400, 8);

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `id` int(10) NOT NULL,
  `fk_product` int(5) NOT NULL,
  `fk_cart` int(5) NOT NULL,
  `amount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(5) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`) VALUES
(1, 'admin', 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart` (`fk_cart`),
  ADD KEY `fk_product` (`fk_product`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD CONSTRAINT `fk_cart` FOREIGN KEY (`fk_cart`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`fk_product`) REFERENCES `product` (`id_product`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
