-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 10:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Benson', '2024-02-27', 100000, 3),
(2, 'Josephine', '2023-01-15', 95000, 1),
(3, 'Brian', '2022-03-10', 85000, 1),
(4, 'Cynthia', '2021-07-22', 82000, 2),
(5, 'David', '2020-11-05', 90000, 3),
(6, 'Emily', '2019-06-18', 70000, 2),
(7, 'Frank', '2024-01-02', 85000, 1),
(8, 'Grace', '2023-09-14', 68000, 2),
(9, 'Henry', '2022-12-01', 85000, 1),
(10, 'Irene', '2021-04-27', 72000, 3),
(11, 'James', '2020-08-19', 95000, 2),
(12, 'Kevin', '2019-10-11', 85000, 1),
(13, 'Linda', '2023-02-25', 78000, 3),
(14, 'Michael', '2022-05-30', 102000, 2),
(15, 'Nancy', '2021-09-07', 85000, 1),
(16, 'Oscar', '2020-01-20', 85000, 3),
(17, 'Paula', '2019-12-15', 73000, 2),
(18, 'Quincy', '2024-02-01', 58000, 3),
(19, 'Rachel', '2023-06-09', 85000, 1),
(20, 'Steve', '2022-07-17', 92000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `freshproduce`
--

CREATE TABLE `freshproduce` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `expiry` date NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `freshproduce`
--

INSERT INTO `freshproduce` (`id`, `name`, `category`, `weight`, `unit`, `expiry`, `price`, `stock`, `photo`) VALUES
(1, 'Tomatoes', 'vegetables', 2.50, 'kg', '2026-03-10', 150.00, 40, 'freshproduce.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `packagedfood`
--

CREATE TABLE `packagedfood` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `expiry` date NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packagedfood`
--

INSERT INTO `packagedfood` (`id`, `name`, `brand`, `weight`, `unit`, `expiry`, `price`, `stock`, `photo`) VALUES
(1, 'Cornflakes', 'Kelloggs', 500.00, 'g', '2026-08-15', 450.00, 25, 'cornflakes.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `freshproduce`
--
ALTER TABLE `freshproduce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packagedfood`
--
ALTER TABLE `packagedfood`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `freshproduce`
--
ALTER TABLE `freshproduce`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `packagedfood`
--
ALTER TABLE `packagedfood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
