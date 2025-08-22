-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 06, 2020 at 12:33 PM
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
-- Table structure for table `sc_admin`
--

CREATE TABLE `sc_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_admin`
--

INSERT INTO `sc_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `sc_blockchain`
--

CREATE TABLE `sc_blockchain` (
  `id` int(11) NOT NULL default '0',
  `block_id` int(11) NOT NULL,
  `pre_hash` varchar(200) NOT NULL,
  `hash_value` varchar(200) NOT NULL,
  `sdata` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_blockchain`
--

INSERT INTO `sc_blockchain` (`id`, `block_id`, `pre_hash`, `hash_value`, `sdata`) VALUES
(1, 1, '00000000000000000000000000000000', '6f6a920938790a4b4e1f237b88dafd39', 'PID:1,Product:Britaniya,Company:company1,Manufacture:2020-01-20,Expire:2020-03-15,RegDate:23-01-2020'),
(2, 2, '6f6a920938790a4b4e1f237b88dafd39', 'ab18383f784e694d1d3402f435087e8c', 'PID:2,Product:5star,Company:company1,Manufacture:2020-01-08,Expire:2020-08-08,RegDate:23-01-2020'),
(3, 3, 'ab18383f784e694d1d3402f435087e8c', '83ca9824b01fee96f608db9c77a8d782', 'PID:3,Product:5star,Company:company1,Manufacture:2020-01-25,Expire:2020-05-25,RegDate:01-02-2020'),
(4, 4, '83ca9824b01fee96f608db9c77a8d782', 'b450795604c36943a8a560f756e42c13', '04-02-2020,Company:Company1,Manufacture:05-02-2020,Expiry:29-02-2020,Location:Chennai'),
(5, 1, 'b450795604c36943a8a560f756e42c13', '2873cf76a0c1e4fa8e95c8c14139f771', '12-02-2020,Supplier:supplier1,Location:Chennai,Transport:Lorry-KK Travel,TN 3242'),
(6, 1, '2873cf76a0c1e4fa8e95c8c14139f771', 'f061c86fe4afcb449054459e368920a2', '13-02-2020,Retailer:shop1,Supply from:supplier1,Location:Madurai,Transport:Lorry-MM Travel,TN 2245'),
(7, 1, 'f061c86fe4afcb449054459e368920a2', 'dd130af6e7e030acb14d14908b0d9669', '04-02-2020,Retailer:shop1,Sale to from:murugan,Product ID:1');

-- --------------------------------------------------------

--
-- Table structure for table `sc_cart`
--

CREATE TABLE `sc_cart` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `shop` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `rdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_cart`
--

INSERT INTO `sc_cart` (`id`, `uname`, `shop`, `pid`, `purchaseid`, `amount`, `status`, `rdate`) VALUES
(1, 'murugan', 'shop1', 1, 1, 20, 1, '09-12-2019'),
(2, 'murugan', 'shop1', 3, 2, 20, 1, '02-01-2020');

-- --------------------------------------------------------

--
-- Table structure for table `sc_category`
--

CREATE TABLE `sc_category` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_category`
--

INSERT INTO `sc_category` (`id`, `category`) VALUES
(3, 'Biscuit'),
(4, 'Chocolate'),
(2, 'Food Oil'),
(1, 'Food Powder'),
(5, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `sc_company`
--

CREATE TABLE `sc_company` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_company`
--

INSERT INTO `sc_company` (`id`, `name`, `address`, `mobile`, `email`, `uname`, `pass`, `rdate`) VALUES
(1, 'Aachi', 'Chennai', 9012388432, 'aachi@gmail.com', 'aachi', '1234', '05-12-2019'),
(2, 'Company1', 'Chennai', 9012388432, 'foodcom@gmail.com', 'company1', '1234', '22-01-2020');

-- --------------------------------------------------------

--
-- Table structure for table `sc_customer`
--

CREATE TABLE `sc_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `otp` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_customer`
--

INSERT INTO `sc_customer` (`id`, `name`, `address`, `mobile`, `email`, `uname`, `pass`, `otp`, `rdate`) VALUES
(1, 'Murugan', 'Trichy', 9912355321, 'murugan@gmail.com', 'murugan', '1234', '6930', '07-12-2019');

-- --------------------------------------------------------

--
-- Table structure for table `sc_product`
--

CREATE TABLE `sc_product` (
  `id` int(11) NOT NULL default '0',
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
  `customer` varchar(20) NOT NULL,
  `slocation` varchar(50) NOT NULL,
  `sdate` varchar(15) NOT NULL,
  `exp_st` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_product`
--

INSERT INTO `sc_product` (`id`, `category`, `product`, `company`, `price`, `psize`, `kg`, `description`, `location`, `mdate`, `edate`, `pcode`, `rdate`, `ttype`, `transport`, `tlocation`, `tdate`, `supplier`, `retailer`, `customer`, `slocation`, `sdate`, `exp_st`, `status`) VALUES
(1, 'Biscuit', 'Britaniya', 'company1', 20, 1, 'Packet', 'Britaniya', 'Madurai', '2020-01-20', '2020-03-15', '20010001', '23-01-2020', 'Lorry', 'MM Travel,TN 2245', 'Chennai', '04-02-2020', 'supplier1', 'shop1', '', 'Madurai', '04-02-2020', 0, 4),
(2, 'Chocolate', '5star', 'company1', 5, 1, 'Packet', '5star', 'Madurai', '2020-01-08', '2020-08-08', '20010002', '23-01-2020', '', '', '', '', '', '', '', '', '', 0, 0),
(3, 'Chocolate', '5star', 'company1', 20, 1, 'Packet', '5 star', 'Madurai', '2020-01-25', '2020-05-25', '20020003', '01-02-2020', 'Tata AC', 'SS Travel,TN 4521', 'Madurai', '01-02-2020', '', '', '', '', '', 0, 1),
(4, 'Biscuit', 'Good day', 'company1', 20, 1, 'Gram', 'Good day biscuit', 'Chennai', '05-02-2020', '29-02-2020', '20021474', '04-02-2020', '', '', '', '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sc_purchase`
--

CREATE TABLE `sc_purchase` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `shop` varchar(20) NOT NULL,
  `amount` double NOT NULL,
  `rdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_purchase`
--

INSERT INTO `sc_purchase` (`id`, `uname`, `shop`, `amount`, `rdate`) VALUES
(1, 'murugan', 'shop1', 20, '09-12-2019'),
(2, 'murugan', 'shop1', 20, '02-01-2020');

-- --------------------------------------------------------

--
-- Table structure for table `sc_shop`
--

CREATE TABLE `sc_shop` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_shop`
--

INSERT INTO `sc_shop` (`id`, `name`, `address`, `mobile`, `email`, `uname`, `pass`, `rdate`) VALUES
(1, 'Krishna Store', '434,Trichy', 9125437893, 'shop@gmail.com', 'shop1', '1234', '07-12-2019');

-- --------------------------------------------------------

--
-- Table structure for table `sc_supplier`
--

CREATE TABLE `sc_supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_supplier`
--

INSERT INTO `sc_supplier` (`id`, `name`, `address`, `mobile`, `email`, `uname`, `pass`, `rdate`) VALUES
(1, 'Raja', 'Trichy', 9012377511, 'supplier@gmail.com', 'supplier1', '1234', '07-12-2019');

-- --------------------------------------------------------

--
-- Table structure for table `sc_user`
--

CREATE TABLE `sc_user` (
  `id` int(11) NOT NULL,
  `utype` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pbkey` varchar(20) NOT NULL,
  `prkey` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `rdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_user`
--

INSERT INTO `sc_user` (`id`, `utype`, `name`, `address`, `mobile`, `email`, `uname`, `pbkey`, `prkey`, `status`, `rdate`) VALUES
(1, 'Manufacturer', 'company1', 'Chennai', 9012388432, 'raj@gmail.com', 'U1', 'f89412c1', '1bdc0ab4', 1, '04-02-2020');
