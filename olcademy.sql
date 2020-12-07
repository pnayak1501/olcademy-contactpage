-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 06:50 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olcademy`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(50) NOT NULL,
  `query` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `name`, `subject`, `message`, `query`) VALUES
(9, 'pnayak1501@gmail.com', 'Prahlad Nayak', 'Bug', 'Helllo', 'Hello there!'),
(10, 'pnayak1501@gmail.com', 'Prahlad Nayak', 'Hey', 'Hello', 'Hey there! Really appreciate your work!'),
(11, 'pnayak1501@gmail.com', 'fesf', 'flsnlk', 'sklfnl', 'lnksfkd'),
(12, 'tejasvi.is18@bmsce.ac.in', 'tejus', 'scsc', 'knknkn', 'nknn,n,m '),
(13, 'tejasvi.is18@bmsce.ac.in', 'tejus', 'scsc', 'knknkn', 'nknn,n,m '),
(14, 'tejasvi.is18@bmsce.ac.in', 'tejus', 'scsc', 'knknkn', 'nknn,n,m '),
(15, 'pnayak1501@gmail.com', 'fslpk', 'lknmlknl', 'lknlklk', 'lnln'),
(16, 'pnayak1501@gmail.com', 'fslpk', 'lknmlknl', 'lknlklk', 'lnln'),
(17, 'lkj@jklm.com', 'Pratu', 'nlknl', 'nnlknlk', 'lknlknlnnklnnnlkn'),
(18, 'fdf@lkm', 'n,lkmm', 'lnlm', 'f', 'm.,.,,'),
(19, 'pnayak1501@gmail.com', 'ds', 'ds', 'ds', 'ds'),
(20, 'pnayak1501@gmail.com', 'Alva ', 'Olc', 'Biggest Bug', 'kjbkjkn'),
(21, 'dank1403@gmail.com', 'Dank', 'Hello', 'Nothing much', 'Hola Mundo'),
(22, 'pnayak1501@gmail.com', 'spdjp', 'dslklkm', 'sdl', 'void main(){\r\npublic staic void main(){\r\n__main()__:'),
(23, 'prahlad.is18@bmsce.ac.in', 'dojsopxklm', 'llk;k;', ';k;k;k;lk;kkmnkj x', 'void main(){\r\n\r\ndklajdak;lk{\r\n\r\n\r\nkdjsnkflkj{\r\n\r\ndfokdf{D\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
