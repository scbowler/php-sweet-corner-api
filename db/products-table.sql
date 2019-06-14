-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2019 at 09:49 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `playground`
--

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
(2, 'Cupcake 1', 'This is cupcake 1', 200, 2, '2019-06-14 20:35:06', '2019-06-14 20:35:06'),
(3, 'Cupcake 1', 'This is cupcake 1', 200, 3, '2019-06-14 20:35:06', '2019-06-14 20:35:06'),
(4, 'Cupcake 1', 'This is cupcake 1', 200, 4, '2019-06-14 20:35:06', '2019-06-14 20:35:06'),
(5, 'Cupcake 1', 'This is cupcake 1', 200, 5, '2019-06-14 20:35:06', '2019-06-14 20:35:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;