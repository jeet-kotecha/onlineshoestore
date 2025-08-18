-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:
-- Generation Time: Jul 20, 2025 at 09:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoebuzz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `email`, `message`) VALUES
(1, '', ''),
(2, '', ''),
(3, '', ''),
(4, '', ''),
(5, '', ''),
(6, '', ''),
(7, '', ''),
(8, '', ''),
(9, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `mi` varchar(1) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `firstname`, `mi`, `lastname`, `address`, `country`, `pincode`, `mobile`,`email`, `password`) VALUES
(1, 'TestF', 'M', 'Test', 'Test Address 1', 'Test Country', '3620', '9898989898','test@gmail.com', 'test123');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_size` varchar(50) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_size`, `product_image`, `brand`, `category`) VALUES
(1,'adidas Men Street Icon M','1,800','10','m1.jpg','Adidas','Men'),
(2,'Nike Mens Court Vision Low Next Nature Shoes','1,999','10','m2.jpg','Nike','Men'),
(3,'Adidas Mens Comfort Stride Walking Shoes','2,499','9','m3.jpg','Adidas','Men'),
(4,'adidas Men ADVANTAGE BASE','1,799','9','m4.jpg','Adidas','Men'),
(5,'X-Ray 2 Square Superior Comfort Sneakers','4,377','10','m5.jpg','Puma','Men'),
(6,'PUMA Club Kayzer Suede Sneakers','3,899','11','m6.jpg','Puma','Men'),
(7,'Questblitz Mid Mens Running Shoes','6,499','9','m7.jpg','Puma','Men'),
(8,'Nike Dunk Low Retro SE','10,795','11','m8.jpg','Nike','Men'),
(9,'Nike Air Max TL 2.5','16,995','10','m9.jpg','Nike','Men'),
(10,'VL COURT BASE Sneakers For Women','2,299','7','w1.jpg','Adidas','Women'),
(11,'All Day Active Sneakers','1,999','6','w2.jpg','Puma','Women'),
(12,'Womens Road Running Shoes','2,999','7','w3.jpg','Adidas','Women'),
(14,'Darter Pro Fade Womens Extreme Lightweight Running Shoes','4,549','8','w4.jpg','Puma','Women'),
(16,'Carina Slim Perf Womens Sneakers ','2,919','7','w5.jpg','Puma','Women'),
(15,'Carina Slim Perf Womens Sneakers ','2,999','8','w6.jpg','Puma','Women'),
(17,'Air Jordan 1 Brooklyn Low Womens Shoes','14,999','6','w7.jpg','Nike','Women'),
(18,'Nike Structure 26 Womens Road Running Shoes','11,885','7','w8.jpg','Nike','Women'),
(19,'Nike Air Force 1 Low Womens Shoes','11,999','7','w9.jpg','Nike','Women'),
(20,'Adidas Kids Samba OG Shoes','1299','6','k1.jpg','Adidas','Kids'),
(21,'Nike Court Borough Low Recraft Older Kids Shoes','999','5','k2.jpg','Nike','Kids'),
(22,'Puma Kids Softride Enzo Evo Slip-On Sneakers','1499','7','k3.jpg','Puma','Kids'),
(23,'Kids Nike Court Borough Low Recraft Shoes Size','999','6','k4.jpg','Nike','Kids'),
(24,'Adidas Kids Credulo 2.0 Running Shoes','1699','5','k5.jpg','Adidas','Kids'),
(25,'Adidas Kids Vertago 3.0 Running Shoes','1899','7','k6.jpg','Adidas','Kids'),
(26,'Puma Boys & Girls Lace Running Shoes','2499','6','k7.jpg','Puma','Kids'),
(27,'PUMA Evolve Run Mesh Youth Sneakers','2299','5','k8.jpg','Puma','Kids'),
(28,'Nike Air Force 1','3499','7','k9.jpg','Nike','Kids'),
(29,'Nike Field General','8,695','10','m10.jpg','Nike','Men'),
(30,'Chuck Taylor All Star Madison Crafted Laces','4499','7','w10.jpg','Reebok','Women'),
(31,'Chuck 70 Roses','7,499','8','w11.jpg','Reebok','Women'),
(32,'Chuck Taylor All Star Lugged Heel Loafer Platform Leather','6,999','6','w12.jpg','Reebok','Women'),
(33,'VL COURT BASE Sneakers For Women','2,299','7','w1.jpg','Adidas','feature'),
(34,'Darter Pro Fade Womens Extreme Lightweight Running Shoes','4,549','8','w4.jpg','Puma','feature'),
(35,'Air Jordan 1 Brooklyn Low Womens Shoes','14,999','6','w7.jpg','Nike','feature'),
(36,'Chuck 70 Roses','7,499','8','w11.jpg','Reebok','feature'),
(37,'Adidas Kids Samba OG Shoes','1299','6','k1.jpg','Adidas','feature'),
(38,'Adidas Kids Credulo 2.0 Running Shoes','1699','5','k5.jpg','Adidas','feature'),
(39,'Puma Boys & Girls Lace Running Shoes','2499','6','k7.jpg','Puma','feature'),
(40,'Nike Air Force 1','3499','7','k9.jpg','Nike','feature'),
(41,'adidas Men Street Icon M','1,800','10','m1.jpg','Adidas','feature'),
(42,'Nike Mens Court Vision Low Next Nature Shoes','1,999','10','m2.jpg','Nike','feature'),
(43,'Questblitz Mid Mens Running Shoes','6,499','9','m7.jpg','Puma','feature'),
(44,'Nike Field General','8,695','10','m10.jpg','Nike','feature');



-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `product_id`, `qty`) VALUES
(1,1,20),
(2,2,20),
(3,3,20),
(4,4,20),
(5,5,20),
(6,6,20),
(7,7,20),
(8,8,20),
(9,9,20),
(10,10,20),
(11,11,20),
(12,12,20),
(13,13,20),
(14,14,20),
(15,15,20),
(16,16,20),
(17,17,20),
(18,18,20),
(19,19,20),
(20,20,20),
(21,21,20),
(22,22,20),
(23,23,20),
(24,24,20),
(25,25,20),
(26,26,20),
(27,27,20),
(28,28,20),
(29,29,20),
(30,30,20),
(31,31,20),
(32,32,20),
(33,33,20),
(34,34,20),
(35,35,20),
(36,36,20),
(37,37,20),
(38,38,20),
(39,39,20),
(40,40,20),
(41,41,20),
(42,42,20),
(43,43,20),
(44,44,20);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_stat` varchar(100) NOT NULL,
  `order_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `customerid`, `amount`, `order_stat`, `order_date`) VALUES
(315, 1, 0, 'ON HOLD', 'Jul 20, 2025'),
(2348, 1, 18000, 'ON HOLD', 'Jul 19, 2025');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `transacton_detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction_detail`
--

INSERT INTO `transaction_detail` (`transacton_detail_id`, `product_id`, `order_qty`, `transaction_id`) VALUES
(1, 11, 1, 2348);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`transacton_detail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `transacton_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;