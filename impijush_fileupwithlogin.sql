-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 28, 2018 at 06:38 PM
-- Server version: 5.6.40
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `impijush_fileupwithlogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `doc_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `doc_name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`doc_id`, `id`, `doc_name`, `path`, `date`) VALUES
(15, 19, 'fvfdf', 'documents/Chapter23_Television.pdf', '2018-09-27 18:37:24'),
(19, 19, 'line code', 'documents/CH 13 Wired LANs Ethernet [Compatibility Mode].pdf', '2018-09-28 08:16:43'),
(27, 19, 'micro', 'documents/microprocessor_tutorial.pdf', '2018-09-28 15:40:32'),
(29, 22, 'Am Details', 'documents/AM and FM Details.pdf', '2018-09-28 18:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `company`, `country`, `details`, `image`, `role`) VALUES
(18, 'Fahad Khan', 'Fahad masood', 'admin@gmail.com', '84178d9f413295fe8f0bdabbc3f647c4', 'FasadConsultancy', 'Dubai', 'Hey, I am Fahad Khan\r\n\r\n', 'img/66e010c910.png', 0),
(19, 'Asaduzzaman', 'Asad', 'asad@gmail.com', '606bcaf6909880e57a56688cdef43473', 'TechAsad', 'Bangladesh', 'i am asad', 'img/d78a655924.png', 1),
(22, 'Rubel Hasan', 'rubel', 'rubel@gmail.com', 'a14752b512b5427c4e41e54015a09347', 'TechnoCrew', 'Bangladesh', 'i am rubel\r\n\r\n', 'img/4c1ab2ebf2.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
