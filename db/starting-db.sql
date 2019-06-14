-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2019 at 05:30 PM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `id`, `created_at`, `updated_at`) VALUES
('Kathy Bates', 'kathy@example.com', 'e38ad214943daad1d64c102faec29de4afe9da3d', 1, NULL, NULL),
('Fred Smith', 'fred@example.com', 'e38ad214943daad1d64c102faec29de4afe9da3d', 2, NULL, NULL),
('Ashley Holmes', 'ashley@example.com', 'e38ad214943daad1d64c102faec29de4afe9da3d', 3, NULL, NULL),
('Henry Dodge', 'henry@ford.com', 'e38ad214943daad1d64c102faec29de4afe9da3d', 4, NULL, NULL),
('Amber Ford', 'amber@ford.com', 'e38ad214943daad1d64c102faec29de4afe9da3d', 5, NULL, NULL),
('Jake George', 'jake@test.com', 'e38ad214943daad1d64c102faec29de4afe9da3d', 6, '2019-06-12', '2019-06-12'),
('Test User', 'test@example.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e', 7, NULL, NULL),
('Test User', 'test@example.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e', 8, '2019-06-14', '2019-06-14'),
('John Jeff', 'john@example.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e', 9, '2019-06-14', '2019-06-14'),
('John Jeff', 'john@example.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e', 10, '2019-06-14', '2019-06-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;