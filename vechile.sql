-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2019 at 04:29 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vechile`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'cars', 'this section consist of many of cars', '2019-04-11 17:53:55', '0000-00-00 00:00:00'),
(2, 'buses', 'this section consists of many of buses', '2019-04-11 17:53:55', '0000-00-00 00:00:00'),
(3, 'motorcycles', 'this section consists of many cycles', '2019-04-11 18:01:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cycles`
--

CREATE TABLE `cycles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `color` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cycles`
--

INSERT INTO `cycles` (`id`, `name`, `price`, `color`, `type`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'lanos', 170, 'red', 'chevrolet', 1, '2019-04-11 18:16:24', '0000-00-00 00:00:00'),
(2, 'verna', 190, 'white', 'hyundai', 1, '2019-04-11 18:16:24', '0000-00-00 00:00:00'),
(3, 'c-180', 250, 'black', 'mercedes', 1, '2019-04-11 18:16:24', '0000-00-00 00:00:00'),
(4, 'cerato', 410, 'silver', 'kia', 1, '2019-04-11 18:16:24', '0000-00-00 00:00:00'),
(5, 'elantra', 290, 'red', 'hyndai', 1, '2019-04-11 18:16:24', '0000-00-00 00:00:00'),
(6, 'astra', 550, 'green', 'opel', 1, '2019-04-11 18:16:24', '0000-00-00 00:00:00'),
(7, 'Zebra', 900, 'white', 'honda', 2, '2019-04-11 20:02:47', '0000-00-00 00:00:00'),
(8, 'Living', 6000, 'red', 'mercedes', 2, '2019-04-11 20:02:52', '0000-00-00 00:00:00'),
(9, 'Ayatollah', 4000, 'black', 'hyundai', 2, '2019-04-11 19:58:47', '0000-00-00 00:00:00'),
(10, 'Blue', 3500, 'silver', 'chevrolet', 2, '2019-04-11 20:03:01', '0000-00-00 00:00:00'),
(11, 'Wild', 1500, 'blue', 'opel', 2, '2019-04-11 20:03:06', '0000-00-00 00:00:00'),
(12, 'Two', 7250, 'yellow', 'gelly', 2, '2019-04-11 20:03:10', '0000-00-00 00:00:00'),
(13, 'Thunderbolt', 500, 'silver', 'BSA', 3, '2019-04-11 20:06:13', '0000-00-00 00:00:00'),
(14, 'Venom', 600, 'black', 'Velocette', 3, '2019-04-11 20:06:44', '0000-00-00 00:00:00'),
(15, 'Spitfire', 200, 'red', 'BSA', 3, '2019-04-11 20:08:46', '0000-00-00 00:00:00'),
(16, 'Interceptor', 850, 'white', 'honda', 3, '2019-04-11 20:08:42', '0000-00-00 00:00:00'),
(17, 'Thunderbird', 450, 'yellow', 'Triumph', 3, '2019-04-11 20:08:34', '0000-00-00 00:00:00'),
(18, 'Ninja', 320, 'darkblue', 'Kawasaki', 3, '2019-04-11 20:07:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `group_id`, `created_at`, `updated_at`) VALUES
(2, 'mohamed_reda', 'mohamed.reda@yahoo.com', '$2y$10$wwTLTPtkmdlqCs.9FLHEWe/dKfgt8MPI5siZcd6dm35cZ74F7zDYK', '01007820852', 0, '2019-04-11 21:01:10', '2019-04-11 19:01:10'),
(3, 'Mohamed', 'Reda@yahoo.com', '$2y$10$/vZmcGs.x87ovZi3U1AyO.0Dakm19ji/aGFFj3sViuNXULnG1o7em', '01007820852', 0, '2019-04-14 09:48:14', '2019-04-14 07:48:14'),
(4, 'ahmed', 'ahmed@yahoo.com', '$2y$10$Ja0OYVW32n7yWBId1IlJkeWwDlIeHY1J/LVSrIvxT4mSKj/D/bFFe', '01234567890', 0, '2019-04-14 09:51:47', '2019-04-14 07:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_cycle`
--

CREATE TABLE `user_cycle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cycle_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_cycle`
--

INSERT INTO `user_cycle` (`id`, `user_id`, `cycle_id`, `created_at`) VALUES
(3, 4, 1, '2019-04-14 09:51:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cycles`
--
ALTER TABLE `cycles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cycle`
--
ALTER TABLE `user_cycle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cycle_id` (`cycle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cycles`
--
ALTER TABLE `cycles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_cycle`
--
ALTER TABLE `user_cycle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cycles`
--
ALTER TABLE `cycles`
  ADD CONSTRAINT `cycles_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_cycle`
--
ALTER TABLE `user_cycle`
  ADD CONSTRAINT `user_cycle_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_cycle_ibfk_2` FOREIGN KEY (`cycle_id`) REFERENCES `cycles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
