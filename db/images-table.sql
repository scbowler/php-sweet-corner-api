-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2019 at 09:48 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `playground`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;