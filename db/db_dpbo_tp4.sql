-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 04:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dpbo_tp4`
--

-- --------------------------------------------------------

--
-- Table structure for table `cult`
--

CREATE TABLE `cult` (
  `id` int(11) NOT NULL,
  `name` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cult`
--

INSERT INTO `cult` (`id`, `name`) VALUES
(7, 'Film'),
(8, 'Musik'),
(9, 'Game'),
(10, 'Buku'),
(11, 'Artis'),
(12, 'Anime'),
(13, 'Manga'),
(14, 'Manhwa');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(254) DEFAULT NULL,
  `join_date` date DEFAULT curdate(),
  `cult_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `phone`, `join_date`, `cult_id`) VALUES
(9, 'Gojo Satoru', 'gojo@gmail.com', '85890550284', '2003-11-21', 12),
(10, 'Harry', 'Hawrypotah@Gmail.com', '5454354354', '2002-11-11', 7),
(11, 'Taylor', 'swift@gmail.com', '54842126548', '1998-10-12', 8),
(12, 'tereliye', 'tereliye@gmail.com', '125487966', '2000-05-27', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cult`
--
ALTER TABLE `cult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cult_id` (`cult_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cult`
--
ALTER TABLE `cult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `fk_cult_id` FOREIGN KEY (`cult_id`) REFERENCES `cult` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
