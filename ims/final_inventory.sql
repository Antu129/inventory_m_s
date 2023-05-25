-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2023 at 09:47 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'antu', 'antu');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(3) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_desc` varchar(300) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `unit_price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_desc`, `unit`, `unit_price`) VALUES
(5, 'Edifier X3 to-u', 'True wireless ear buds', 'pcs', '2700'),
(11, 'Yamaha acoustic', 'acoustic  f310 guitar', 'pcs', '13500'),
(12, 'MacBook Air', '11 inch, 8-128gb', 'pcs', '90000'),
(15, 'OnePlus nord earbuds 2', 'yoyoyoyoyo', 'pcs', '3200'),
(16, 'Pushti Soyabean oil (5 lt)', 'one 5 liter ', 'pcs', '500'),
(17, 'Bashundhara Hand Tissue', 'choolo na abashundhara', 'box', '40');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_master`
--

CREATE TABLE `purchase_master` (
  `id` int(5) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `unit_price` varchar(20) NOT NULL,
  `quantity` decimal(20,0) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_master`
--

INSERT INTO `purchase_master` (`id`, `product_name`, `unit`, `unit_price`, `quantity`, `date`) VALUES
(19, 'MacBook Air', 'pcs', '90000', '100', '2022-08-12'),
(20, 'SkullCandy', 'pcs', '3000', '500', '2022-08-25'),
(21, 'SkullCandy', 'pcs', '3000', '41', '2022-08-25'),
(22, 'Edifier X3 to-u', 'pcs', '2700', '456', '2022-09-07'),
(23, 'Yamaha acoustic', 'pcs', '13500', '70', '2022-09-07'),
(24, 'Yamaha acoustic', 'pcs', '13500', '78', '2022-09-07'),
(25, 'SkullCandy', 'pcs', '3000', '34', '2022-05-11'),
(26, 'SkullCandy', 'pcs', '3100', '3', '2022-07-05'),
(27, 'A4tech Keyboard', 'pcs', '1400', '300', '2022-09-10'),
(28, 'Aghanoor', 'pcs', '3000', '200', '2022-09-13');

-- --------------------------------------------------------

--
-- Table structure for table `sale_detail`
--

CREATE TABLE `sale_detail` (
  `id` int(5) NOT NULL,
  `invoice_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `unit_price` decimal(20,0) NOT NULL,
  `quantity` decimal(20,0) NOT NULL,
  `total_price` decimal(20,0) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale_detail`
--

INSERT INTO `sale_detail` (`id`, `invoice_id`, `product_id`, `product_name`, `unit_price`, `quantity`, `total_price`, `date`) VALUES
(43, 39, 4, 'SkullCandy ', '3000', '45', '135000', '2022-09-07'),
(44, 39, 5, 'Edifier X3 to-u', '2700', '3', '8100', '2022-09-07'),
(45, 40, 11, 'Yamaha acoustic', '13500', '7', '94500', '2022-08-11'),
(46, 40, 5, 'Edifier X3 to-u', '2700', '4', '10800', '2022-08-11'),
(47, 41, 5, 'Edifier X3 to-u', '2700', '7', '18900', '2022-08-12'),
(48, 42, 11, 'Yamaha acoustic', '13500', '4', '54000', '2022-08-06'),
(49, 43, 12, 'MacBook Air', '90000', '3', '270000', '2022-09-07'),
(50, 44, 5, 'Edifier X3 to-u', '2700', '86', '232200', '2022-09-07'),
(51, 44, 12, 'MacBook Air', '90000', '7', '630000', '2022-09-07'),
(52, 45, 12, 'MacBook Air', '90000', '2', '180000', '2022-09-08'),
(53, 46, 5, 'Edifier X3 to-u', '2700', '12', '32400', '2022-05-10'),
(54, 47, 11, 'A4tech Keyboard', '1400', '3', '4200', '2022-09-10'),
(55, 47, 6, 'MacBook Air', '90000', '1', '90000', '2022-09-10'),
(56, 48, 12, 'Aghanoor', '3000', '199', '597000', '2022-09-05'),
(57, 48, 9, 'Yamaha acoustic', '13500', '5', '67500', '2022-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `sale_master`
--

CREATE TABLE `sale_master` (
  `id` int(5) NOT NULL,
  `invoice_number` varchar(20) NOT NULL,
  `invoice_date` date NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale_master`
--

INSERT INTO `sale_master` (`id`, `invoice_number`, `invoice_date`, `customer_name`, `customer_email`) VALUES
(39, '1292', '2022-09-07', 'Rezoanul Islam', '2017-2-60-129@std.ewubd.edu'),
(40, '10040', '2022-08-11', 'Ahsanul Brinto', 'aaba@aga.com'),
(41, '10041', '2022-08-12', 'Jannatul Afrin', 'antu@hshsh.ccfdasf'),
(42, '10042', '2022-08-06', 'Saim Nafi', 'nafi@gmail.com'),
(43, '10043', '2022-09-07', 'antudafd', 'antu@hshsh.ccfdasf'),
(44, '10044', '2022-09-07', 'Shorif Mahmood', 'aaba@aga.com'),
(45, '10045', '2022-09-08', 'Ahsanul Brinto', 'aaba@aga.com'),
(46, '10046', '2022-05-10', 'Jannatul Afrin', 'antu@hshsh.ccfdasf'),
(47, '10047', '2022-09-10', 'nafi', 'nafi@gm.com'),
(48, '10048', '2022-09-05', 'jannatul', 'ghchc@jhvv.com');

-- --------------------------------------------------------

--
-- Table structure for table `stock_master`
--

CREATE TABLE `stock_master` (
  `id` int(5) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `unit_price` varchar(20) NOT NULL,
  `quantity` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_master`
--

INSERT INTO `stock_master` (`id`, `product_name`, `unit`, `unit_price`, `quantity`) VALUES
(6, 'MacBook Air', 'pcs', '90000', '77'),
(7, 'SkullCandy', 'pcs', '3000', '389'),
(8, 'Edifier X3 to-u', 'pcs', '2700', '288'),
(9, 'Yamaha acoustic', 'pcs', '13500', '64'),
(10, 'SkullCandy', 'pcs', '3100', '3'),
(11, 'A4tech Keyboard', 'pcs', '1400', '297'),
(12, 'Aghanoor', 'pcs', '3000', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_master`
--
ALTER TABLE `purchase_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_master`
--
ALTER TABLE `sale_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_master`
--
ALTER TABLE `stock_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `purchase_master`
--
ALTER TABLE `purchase_master`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sale_master`
--
ALTER TABLE `sale_master`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `stock_master`
--
ALTER TABLE `stock_master`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
