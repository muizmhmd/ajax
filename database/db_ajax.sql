-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2019 at 12:24 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `drzchat`
--

CREATE TABLE `drzchat` (
  `nomor` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pesan` varchar(200) NOT NULL,
  `waktu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drzchat`
--

INSERT INTO `drzchat` (`nomor`, `nama`, `pesan`, `waktu`) VALUES
(163, 'Admin', 'Mail bergabung dalam chat', '15:10'),
(164, 'Mail', 'hallo', '15:10');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `message` text NOT NULL,
  `post_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `chat_id`, `user_id`, `username`, `message`, `post_time`) VALUES
(1, 1, 1, 'Nurmi', 'Halo apa kabar', '2019-11-13 13:56:05'),
(2, 1, 2, 'desrizal', 'kabar baik', '2019-11-13 00:00:00'),
(3, 1, 1, 'nurmi', 'lagi dimana', '2019-11-13 00:00:00'),
(4, 1, 2, 'desrizal', 'belitung', '2019-11-13 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drzchat`
--
ALTER TABLE `drzchat`
  ADD PRIMARY KEY (`nomor`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drzchat`
--
ALTER TABLE `drzchat`
  MODIFY `nomor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
