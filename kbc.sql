-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2019 at 03:57 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kbc`
--

-- --------------------------------------------------------

--
-- Table structure for table `kbc`
--

CREATE TABLE `kbc` (
  `id` int(11) NOT NULL,
  `option1` varchar(20) NOT NULL,
  `option2` varchar(20) NOT NULL,
  `option3` varchar(20) NOT NULL,
  `option4` varchar(20) NOT NULL,
  `question` varchar(255) NOT NULL,
  `correctanswer` varchar(20) NOT NULL,
  `Price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kbc`
--

INSERT INTO `kbc` (`id`, `option1`, `option2`, `option3`, `option4`, `question`, `correctanswer`, `Price`) VALUES
(1, 'Tamil', 'Hindi', 'Malayalam', 'Telugu', 'The language of Lakshadweep. a Union Territory of India, is', 'C', '1000'),
(2, 'Islam', 'Hinduism', 'Buddhism', 'Jainism', 'Bahubali festival is related to', 'D', '2000'),
(3, 'Water', 'Salt', 'Sugar', 'Blood', 'Which of these substances is composed of only two elements – hydrogen & oxygen', 'A', '5000'),
(4, 'Haathi', 'Baagh', 'Ghoda', 'Oont', 'The Trigger of gun is, colloquially, also known as what?', 'C', '5000'),
(5, 'PAN', 'CVV', 'PNR', 'Adhaar', 'Which of these numbers is normally required to verify a transaction, when shopping online using a debit or credit card?', 'B', '10000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kbc`
--
ALTER TABLE `kbc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kbc`
--
ALTER TABLE `kbc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
