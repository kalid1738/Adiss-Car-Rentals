-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 08:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentalp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(1, 'Toyota Vitz 2003 series', 'A78456', 'assets/img/cars/car1.JPG', 40, 26, 500, 350, 'yes'),
(2, 'Toyota Rava4 2014', 'B57392', 'assets/img/cars/car2.jpg', 50, 32, 700, 550, 'yes'),
(3, 'BMW 6-Series', 'B67204', 'assets/img/cars/car3.png', 54, 35, 1000, 800, 'no'),
(4, 'Toyota V8 2020', 'A89032', 'assets/img/cars/car4.jpg', 60, 40, 1400, 1000, 'yes'),
(6, 'Toyota Platz', 'A16743', 'assets/img/cars/car5.jpg', 45, 30, 700, 500, 'yes'),
(7, 'Toyota Pickup Truck', 'A63792', 'assets/img/cars/car6.png', 48, 34, 800, 650, 'yes'),
(8, 'Vitara 2019 R-series', 'A43867', 'assets/img/cars/car7.png', 45, 31, 750, 600, 'yes'),
(9, 'Kia 2018', 'A98345', 'assets/img/cars/car8.jpg', 40, 26, 600, 550, 'yes'),
(10, 'Toyota Starex 2020', 'A70082', 'assets/img/cars/car9.jpg', 55, 37, 820, 649, 'yes'),
(11, 'Hyundai Creta', 'B89974', 'assets/img/cars/car10.png', 45, 30, 700, 500, 'yes'),
(12, 'Ford F150', 'A10098', 'assets/img/cars/car11.jpg', 65, 45, 1500, 1200, 'yes'),
(13, 'Toyota Hylux 2018', 'B23658', 'assets/img/cars/car12.jpg', 52, 33, 1200, 1000, 'yes'),
(14, 'Hyundai Elantra 2021', 'A09045', 'assets/img/cars/car13.jpg', 55, 37, 1450, 1250, 'yes'),
(15, 'Bmw miwi3 ', 'A45653', 'assets/img/cars/car14.jpg', 47, 30, 800, 590, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(2, 'amare'),
(7, 'amare'),
(8, 'amare'),
(12, 'amare'),
(15, 'amare'),
(4, 'haile'),
(9, 'haile'),
(10, 'haile'),
(13, 'haile'),
(1, 'kalid'),
(3, 'kalid'),
(6, 'kalid'),
(11, 'kalid'),
(14, 'kalid');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('amare', 'Amare Tesfie', '0906855989', 'amare@gmail.com', 'Adiss Abeba', 'amare'),
('haile', 'Hailemariam Tefera', '0946208130', 'haile@gmail.com', 'Adiss Abeba', 'haile'),
('kalid', 'Kalid Mohammed', '0945474210', 'kalid@gmail.com', 'Adiss Abeba', 'kalid');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('amare', 'Amare tesfie', '0906855989', 'amare@gmail.com', 'Addis Abeba', 'amare'),
('haile', 'Hailemariam Tefera', '0946208130', 'haile@gmail.com', 'Addis Abeba', 'haile'),
('kalid', 'Kalid Mohammed', '0945474210', 'kalid@gmail.com', 'Addis Abeba', 'kalid'),
('minte', 'Mintesinot dejene', '4786378459', 'minte@gmail.com', 'aa', 'minte1212');

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE `rentedcars` (
  `id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681261, 'amare', 3, '2022-05-31', '2022-05-31', '2022-06-01', NULL, 1000, 'days', NULL, NULL, NULL, 'NR'),
(574681262, 'amare', 6, '2022-05-31', '2022-06-02', '2022-06-10', NULL, 45, 'km', NULL, NULL, NULL, 'NR'),
(574681264, 'minte', 12, '2022-05-31', '2022-06-01', '2022-06-09', NULL, 1500, 'days', NULL, NULL, NULL, 'NR'),
(574681268, 'amare', 9, '2022-05-31', '2022-05-31', '2022-06-10', NULL, 550, 'days', NULL, NULL, NULL, 'NR'),
(574681269, 'amare', 9, '2022-05-31', '2022-05-31', '2022-06-10', NULL, 550, 'days', NULL, NULL, NULL, 'NR'),
(574681270, 'kalid', 10, '2022-05-31', '2022-06-09', '2022-06-25', NULL, 820, 'days', NULL, NULL, NULL, 'NR'),
(574681271, 'kalid', 3, '2022-05-31', '2022-05-31', '2022-06-02', NULL, 1000, 'days', NULL, NULL, NULL, 'NR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_username` (`customer_username`),
  ADD KEY `car_id` (`car_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574681272;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
  ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
  ADD CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
