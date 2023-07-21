-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2022 at 06:26 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dsadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE `goods` (
  `ID` int(10) NOT NULL,
  `Vendor` varchar(300) NOT NULL,
  `Category` varchar(300) NOT NULL,
  `Product` varchar(300) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `CostPrice` int(100) NOT NULL,
  `SellingPrice` int(100) NOT NULL,
  `Gross` int(100) NOT NULL,
  `Date` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`ID`, `Vendor`, `Category`, `Product`, `Quantity`, `CostPrice`, `SellingPrice`, `Gross`, `Date`) VALUES
(1, 'Junior', 'Beverages', 'Soda', 10, 4, 5, 40, '01-09-2022'),
(2, 'Junior', 'Beverages', 'Soda', 10, 4, 5, 40, '01-09-2022'),
(3, 'Junior', 'Beverages', 'Soda', 10, 4, 5, 40, '01-09-2022'),
(4, 'Junior', 'Beverages', 'Beer', 10, 9, 10, 90, '01-09-2022'),
(5, 'Junior', 'Beverages', 'Soda', 3000, 5, 6, 15000, '01-09-2022'),
(6, 'Kofi', 'Diary', 'Ice Cream', 3000, 5, 6, 15000, '01-09-2022'),
(7, 'Kofi', 'Dry/Baking Goods', 'Sugar', 35, 6, 8, 210, '01-09-2022'),
(8, 'kwame', 'Beverages', 'Soda', 4500, 4, 6, 18000, '01-09-2022'),
(9, 'kwame', 'Beverages', 'Soda', 3, 5, 5, 15, '01-09-2022');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductCode` int(10) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `Category` varchar(300) NOT NULL,
  `Quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductCode`, `Name`, `Category`, `Quantity`) VALUES
(1, 'Soda', 'Beverages', 497),
(2, 'Juice', 'Beverages', 5000),
(3, 'Coffee', 'Beverages', 5000),
(4, 'Tea', 'Beverages', 5000),
(5, 'Porridge', 'Beverages', 5000),
(6, 'Beer', 'Beverages', 5000),
(7, 'Energy Drink', 'Beverages', 5000),
(8, 'Sandwich loaves', 'Bread/Bakery', 5000),
(9, 'Dinner Rolls', 'Bread/Bakery', 5000),
(10, 'Tortillas', 'Bread/Bakery', 5000),
(11, 'Bagels', 'Bread/Bakery', 5000),
(12, 'Pita Bread', 'Bread/Bakery', 5000),
(13, 'Rye Bread', 'Bread/Bakery', 5000),
(14, 'Baguette', 'Bread/Bakery', 5000),
(15, 'Vegetable', 'Canned/Jarred Goods', 5000),
(16, 'Spaghetti Sauce', 'Canned/Jarred Goods', 5000),
(17, 'Ketchup', 'Canned/Jarred Goods', 5000),
(18, 'Sardine', 'Canned/Jarred Goods', 5000),
(19, 'Tuna', 'Canned/Jarred Goods', 5000),
(20, 'Tomato', 'Canned/Jarred Goods', 5000),
(21, 'Mackerel', 'Canned/Jarred Goods', 5000),
(22, 'Milk', 'Diary', 5000),
(23, 'Cheese', 'Diary', 5000),
(24, 'Yoghurt', 'Diary', 5000),
(25, 'Butter', 'Diary', 5000),
(26, 'Ice Cream', 'Diary', 2000),
(27, 'Custard', 'Diary', 5000),
(28, 'Cream', 'Diary', 5000),
(29, 'Cereals', 'Dry/Baking Goods', 5000),
(30, 'Flour', 'Dry/Baking Goods', 5000),
(31, 'Sugar', 'Dry/Baking Goods', 4965),
(32, 'Pasta', 'Dry/Baking Goods', 5000),
(33, 'Baking Powder', 'Dry/Baking Goods', 5000),
(34, 'Cocoa Powder', 'Dry/Baking Goods', 5000),
(35, 'Sweetener', 'Dry/Baking Goods', 5000),
(36, 'Peas', 'Frozen Foods', 5000),
(37, 'Sausage', 'Frozen Foods', 5000),
(38, 'Plain Chicken', 'Frozen Foods', 5000),
(39, 'Green Beans', 'Frozen Foods', 5000),
(40, 'Chips', 'Frozen Foods', 5000),
(41, 'Carrots', 'Frozen Foods', 5000),
(42, 'Ice lollies', 'Frozen Foods', 5000),
(43, 'Beef', 'Meat', 5000),
(44, 'Pork', 'Meat', 5000),
(45, 'Lunch Meat', 'Meat', 5000),
(46, 'Fish Fingers', 'Meat', 5000),
(47, 'Bacon', 'Meat', 5000),
(48, 'Ham', 'Meat', 5000),
(49, 'Mutton', 'Meat', 5000),
(50, 'Oranges', 'Produce', 5000),
(51, 'Mango', 'Produce', 5000),
(52, 'Banana', 'Produce', 5000),
(53, 'Cabbage', 'Produce', 5000),
(54, 'Onion', 'Produce', 5000),
(55, 'Ginger', 'Produce', 5000),
(56, 'Pepper', 'Produce', 5000),
(57, 'So Klin', 'Cleaners', 5000),
(58, 'Ariel', 'Cleaners', 5000),
(59, 'Sunlight', 'Cleaners', 5000),
(60, 'Vim', 'Cleaners', 5000),
(61, 'Kleesoft', 'Cleaners', 5000),
(62, 'Omo', 'Cleaners', 5000),
(63, 'Saba', 'Cleaners', 5000),
(64, 'Aluminium Foil', 'Paper Goods', 5000),
(65, 'Toilet Paper', 'Paper Goods', 5000),
(66, 'Paper Towel', 'Paper Goods', 5000),
(67, 'Sandwich Bag', 'Paper Goods', 5000),
(68, 'Paper Plate', 'Paper Goods', 5000),
(69, 'Berry Box', 'Paper Goods', 5000),
(70, 'Tissue paper', 'Paper Goods', 5000),
(71, 'Antiseptic', 'Personal Care', 5000),
(72, 'Hand Lotion', 'Personal Care', 5000),
(73, 'Perfume', 'Personal Care', 5000),
(74, 'Deodorant', 'Personal Care', 5000),
(75, 'Razor', 'Personal Care', 5000),
(76, 'Shaving creme', 'Personal Care', 5000),
(77, 'Hair Spray', 'Personal Care', 5000),
(80, 'Text', 'Meat', 233),
(82, 'Tstsdjs', 'Beverages', 224);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `VendorCode` varchar(10) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Phone` int(20) NOT NULL,
  `Address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`VendorCode`, `Name`, `Phone`, `Address`) VALUES
('982465a2d2', 'kwame', 234541354, 'University of Ghana'),
('c9f118b2fd', 'Kofi', 1234567890, 'First st'),
('e1f6d0aef6', 'Sly', 254356452, 'Ofankor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductCode`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`VendorCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `goods`
--
ALTER TABLE `goods`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductCode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
