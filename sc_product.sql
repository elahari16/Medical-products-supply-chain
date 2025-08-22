-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 23, 2020 at 08:45 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `supply_chain`
--

-- --------------------------------------------------------

--
-- Table structure for table `sc_product`
--

CREATE TABLE `sc_product` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `product` varchar(40) NOT NULL,
  `company` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `psize` double NOT NULL,
  `kg` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `location` varchar(50) NOT NULL,
  `mdate` varchar(15) NOT NULL,
  `edate` varchar(15) NOT NULL,
  `pcode` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `ttype` varchar(20) NOT NULL,
  `transport` varchar(50) NOT NULL,
  `tlocation` varchar(30) NOT NULL,
  `tdate` varchar(15) NOT NULL,
  `supplier` varchar(20) NOT NULL,
  `retailer` varchar(20) NOT NULL,
  `slocation` varchar(50) NOT NULL,
  `sdate` varchar(15) NOT NULL,
  `exp_st` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_product`
--

INSERT INTO `sc_product` (`id`, `category`, `product`, `company`, `price`, `psize`, `kg`, `description`, `location`, `mdate`, `edate`, `pcode`, `rdate`, `ttype`, `transport`, `tlocation`, `tdate`, `supplier`, `retailer`, `slocation`, `sdate`, `exp_st`, `status`) VALUES
(1, 'Food Powder', 'Sambar Powder', 'aachi', 20, 100, 'Gram', 'Aachi Sambar Powder', '21, Adayar, Chennai', '02-12-2019', '02-07-2020', '19129391', '09-12-2019', 'Lorry', 'MM Travel,TN 2245', 'Madurai', '06-12-2019', 'supplier1', 'shop1', 'Trichy', '09-12-2019', 0, 5),
(2, 'Food Oil', 'Sunflower', 'aachi', 150, 1, 'Kilogram', 'Sunflower oil', 'Salem', '07-12-2019', '07-01-2020', '19123652', '09-12-2019', '', '', '', '', '', '', '', '', 0, 0),
(3, 'Biscuit', 'Britaniya', 'aachi', 20, 1, 'Packet', 'biscuit', 'Trichy', '24-12-2019', '23-03-2020', '20014383', '02-01-2020', 'Lorry', 'MM Travel,TN 2245', 'Madurai', '02-01-2020', 'supplier1', 'shop1', 'Trichy', '03-01-2020', 0, 5),
(4, 'Chocolate', '5star', 'company1', 10, 1, 'Packet', '5star', 'Chennai', '2020-01-22', '2020-03-22', '20010004', '22-01-2020', '', '', '', '', '', '', '', '', 0, 0),
(5, 'Biscuit', 'Fifty Fifty', 'company1', 10, 1, 'Packet', 'Fifty Fifty', 'Madurai', '2020-01-22', '2020-03-22', '20010005', '22-01-2020', '', '', '', '', '', '', '', '', 0, 0),
(6, 'Food Oil', 'Gold winner', 'company1', 200, 1, 'Kilogram', 'Gold winner', 'Salem', '2020-01-22', '2020-03-22', '20010006', '22-01-2020', '', '', '', '', '', '', '', '', 0, 0),
(7, 'Food Powder', 'Chicken masala', 'company1', 20, 1, 'Packet', 'chicken masala', 'Trichy', '2020-01-22', '2020-03-22', '20010007', '22-01-2020', '', '', '', '', '', '', '', '', 0, 0),
(8, 'Chocolate', 'Perk', 'company1', 5, 1, 'Packet', 'perk', 'Trichy', '2020-01-22', '2020-07-22', '20010008', '22-01-2020', '', '', '', '', '', '', '', '', 0, 0);
