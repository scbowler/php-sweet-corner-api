-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2019 at 12:50 AM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `playground`
--
CREATE DATABASE IF NOT EXISTS `playground` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `playground`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 6, '2019-06-19 03:13:32', '2019-06-19 03:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `cart_id`, `product_id`, `quantity`, `updated_at`, `created_at`) VALUES
(1, 1, 2, 5, '2019-06-19 03:15:06', '2019-06-19 03:15:06'),
(2, 1, 3, 2, '2019-06-19 03:15:06', '2019-06-19 03:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `alt_text` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `file_path` varchar(250) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `alt_text`, `caption`, `file_path`, `updated_at`, `created_at`) VALUES
(1, 'This is image 1', 'Awesome image 1', 'images/cupcake1.jpg', '2019-06-14 20:24:11', '2019-06-14 20:24:11'),
(2, 'This is image 2', 'Awesome image 2', 'images/cupcake2.jpg', '2019-06-14 20:24:11', '2019-06-14 20:24:11'),
(3, 'This is image 3', 'Awesome image 3', 'images/cupcake3.jpg', '2019-06-14 20:24:11', '2019-06-14 20:24:11'),
(4, 'This is image 4', 'Awesome image 4', 'images/cupcake4.jpg', '2019-06-14 20:24:11', '2019-06-14 20:24:11'),
(5, 'This is image 5', 'Awesome image 5', 'images/cupcake5.jpg', '2019-06-14 20:24:11', '2019-06-14 20:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `cost` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `cost`, `image_id`, `updated_at`, `created_at`) VALUES
(1, 'Cupcake 1', 'This is cupcake 1', 200, 1, '2019-06-14 20:35:06', '2019-06-14 20:35:06'),
(2, 'Cupcake 2', 'This is cupcake 1', 250, 2, '2019-06-14 20:35:06', '2019-06-14 20:35:06'),
(3, 'Cupcake 3', 'This is cupcake 1', 300, 3, '2019-06-14 20:35:06', '2019-06-14 20:35:06'),
(4, 'Cupcake 4', 'This is cupcake 1', 275, 4, '2019-06-14 20:35:06', '2019-06-14 20:35:06'),
(5, 'Cupcake 5', 'This is cupcake 1', 325, 5, '2019-06-14 20:35:06', '2019-06-14 20:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `id`, `created_at`, `updated_at`) VALUES
('Kathy Bates', 'kathy@example.com', 'e38ad214943daad1d64c102faec29de4afe9da3d', 1, NULL, NULL),
('Fred Smith', 'fred@example.com', 'e38ad214943daad1d64c102faec29de4afe9da3d', 2, NULL, NULL),
('Ashley Holmes', 'ashley@example.com', 'e38ad214943daad1d64c102faec29de4afe9da3d', 3, NULL, NULL),
('Henry Dodge', 'henry@ford.com', 'e38ad214943daad1d64c102faec29de4afe9da3d', 4, NULL, NULL),
('Ambi Dodge', 'ambi@dodge.com', 'b6ad34b0b6b7e38f878a513b3f7927ebeb4cffb01aeb6d9fd9f9ad67fbc76517', 5, NULL, '2019-06-14 00:00:00'),
('Jake George', 'jake@test.com', 'e38ad214943daad1d64c102faec29de4afe9da3d', 6, '2019-06-12 00:00:00', '2019-06-12 00:00:00'),
('Test User', 'test@example.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e', 7, NULL, NULL),
('Test User', 'test@example.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e', 8, '2019-06-14 00:00:00', '2019-06-14 00:00:00'),
('John Jeff', 'john@example.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e', 9, '2019-06-14 00:00:00', '2019-06-14 00:00:00'),
('John Jeff', 'john@example.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e', 10, '2019-06-14 00:00:00', '2019-06-14 00:00:00'),
('Doug Smith', 'doug@example.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e', 11, '2019-06-20 00:00:00', '2019-06-20 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_id` (`image_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`);
