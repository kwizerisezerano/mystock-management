-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2023 at 10:18 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystock`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `buyerid` int(25) NOT NULL,
  `buyername` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `bdate` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`buyerid`, `buyername`, `pname`, `bdate`, `price`) VALUES
(1, 'david', 'MAC', '2023-07-24T11:17', '$700'),
(3, 'kwizera', 'frigo', '2023-07-25T22:21', '$700');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `marc` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `prce` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `name`, `marc`, `size`, `type`, `prce`) VALUES
(2, 'television', 'lifesgood', '20x40', 'flat tv', '$190'),
(6, 'MACBOOK', 'MAC', '200x400', 'laptop', '$300'),
(7, 'MACBOOK', 'MAC', '200x400', 'laptop', '$300');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `sellerid` int(30) NOT NULL,
  `sellername` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `sdate` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`sellerid`, `sellername`, `pname`, `sdate`, `price`) VALUES
(3, 'kwizera', 'MAC', '2023-07-24T10:53', '$500'),
(4, 'chriss', 'Mac book', '2023-07-03T22:14', '$700'),
(5, 'fredy', 'HP', '2023-07-24T22:16', '$100');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `stroreid` int(30) NOT NULL,
  `stockname` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `ingoing` varchar(255) NOT NULL,
  `ingoingdate` varchar(255) NOT NULL,
  `outgoing` varchar(255) NOT NULL,
  `outgoingdate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`stroreid`, `stockname`, `manager`, `ingoing`, `ingoingdate`, `outgoing`, `outgoingdate`) VALUES
(1, 'electronics', 'kwizera', 'HP', '2023-07-24T11:45', 'MAC', '2023-07-24T11:46'),
(2, 'machine', 'promise', 'dell', '2023-07-24T11:46', 'dell', '2023-07-17T11:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(30) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `fullname`, `username`, `email`, `status`, `password`) VALUES
(1, 'kwizera', 'kwizera', 'tabitakwizerisezerano@gmail.com', 'product', '12345678'),
(3, 'chris', 'chris', 'chris@gmail.com', 'product', '12345678'),
(4, 'christian', 'christian', 'christian@gmail.com', 'seller', '12345678'),
(5, 'christiane', 'christiane', 'christiane@gmail.com', 'store', '12345678'),
(6, 'christiani', 'christiani', 'christiani@gmail.com', 'buyer', '12345678'),
(7, 'lea', 'lea', 'lea@gmail.com', 'product', '12345678'),
(8, 'promise', 'promise', 'promise@gmail.com', 'product', '12345678'),
(9, 'mama', 'mama', 'mama@gmail.com', 'product', '12345678'),
(10, 'fredy nzwinimana', 'fredy', 'fredy@gmail.com', 'product', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`buyerid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`sellerid`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`stroreid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `buyerid` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `sellerid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `stroreid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
