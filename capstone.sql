-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2025 at 02:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `approvals`
--

CREATE TABLE `approvals` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_table` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `requested_by` varchar(100) DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `status` enum('pending','approved','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approvals`
--

INSERT INTO `approvals` (`id`, `type`, `item_id`, `item_table`, `description`, `data`, `requested_by`, `requested_at`, `status`) VALUES
(1, 'delete', 22, 'materials', 'Request to deduct 23 from material: baboy (Current Qty: 23)', '{\"id\":22,\"deleteQty\":23,\"currentQty\":23}', 'user', '2025-09-17 09:17:05', 'approved'),
(2, 'delete', 20, 'materials', 'Request to deduct 32 from material: Ahas (Current Qty: 32)', '{\"id\":20,\"deleteQty\":32,\"currentQty\":32}', 'user', '2025-09-17 09:22:10', 'approved'),
(3, 'delete', 21, 'materials', 'Request to deduct 23 from material: baboy (Current Qty: 23)', '{\"id\":21,\"deleteQty\":23,\"currentQty\":23}', 'user', '2025-09-17 11:38:24', 'approved'),
(4, 'delete', 19, 'materials', 'Request to deduct 32 from material: Ahas (Current Qty: 32)', '{\"id\":19,\"deleteQty\":32,\"currentQty\":32}', 'user', '2025-09-17 11:39:02', 'approved'),
(5, 'delete', 26, 'materials', 'Request to deduct 234 from material: rope (Current Qty: 234)', '{\"id\":26,\"deleteQty\":234,\"currentQty\":234}', 'user', '2025-09-17 11:49:32', 'approved'),
(6, 'delete', 25, 'materials', 'Request to deduct 24 from material: pako (Current Qty: 24)', '{\"id\":25,\"deleteQty\":24,\"currentQty\":24}', 'user', '2025-09-17 13:47:32', 'approved'),
(7, 'delete', 27, 'materials', 'Request to deduct 23 from material: flood control (Current Qty: 23)', '{\"id\":27,\"deleteQty\":23,\"currentQty\":23}', 'user', '2025-09-22 15:41:24', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `action` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `description`, `action`, `created_at`) VALUES
(1, 'Added supplier: ABC corp.', 'Add Supplier', '2025-09-17 09:01:42'),
(2, 'Added material:  (Qty: 32)', 'Add Material', '2025-09-17 09:03:38'),
(3, 'Added material: baboy (Qty: 23)', 'Add Material', '2025-09-17 09:06:02'),
(4, 'Added material: yusop (Qty: 32)', 'Add Material', '2025-09-17 11:40:00'),
(5, 'Added material: dog  food (Qty: 423)', 'Add Material', '2025-09-17 11:40:20'),
(6, 'Added material: pako (Qty: 24)', 'Add Material', '2025-09-17 11:41:34'),
(7, 'Added material: rope (Qty: 234)', 'Add Material', '2025-09-17 11:45:37'),
(8, 'Added supplier: sti', 'Add Supplier', '2025-09-17 13:30:17'),
(9, 'Added supplier: sti', 'Add Supplier', '2025-09-17 13:31:13'),
(10, 'Added purchase: Glass from sti (Qty: 500)', 'Add Purchase', '2025-09-17 13:31:50'),
(11, 'Added purchase: Glass from sti (Qty: 500)', 'Add Purchase', '2025-09-17 13:31:53'),
(12, 'Added material: flood control (Qty: 23)', 'Add Material', '2025-09-22 15:41:17'),
(13, 'Added purchase: nails from RMC Tools (Qty: 34)', 'Add Purchase', '2025-09-22 15:42:22'),
(14, 'Added purchase: nails from ABC corp. (Qty: 23)', 'Add Purchase', '2025-09-22 15:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `MaterialsName` varchar(50) NOT NULL,
  `Quantity` int(255) NOT NULL,
  `DateAdded` date NOT NULL,
  `FastMoving` tinyint(1) DEFAULT 0,
  `SlowMoving` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `MaterialsName`, `Quantity`, `DateAdded`, `FastMoving`, `SlowMoving`) VALUES
(5, 'ladder', 3, '2025-09-10', 1, 0),
(6, 'atay ng baboy', 8, '2025-09-10', 0, 1),
(8, 'flood control', 3, '2025-09-10', 0, 1),
(9, 'dafsdfas', 32, '2025-09-16', 0, 1),
(10, 'sdaffasg', 23, '2025-09-16', 1, 0),
(11, 'safsa', 534, '2025-09-16', 1, 0),
(12, 'asafagaa', 231, '2025-09-04', 0, 0),
(13, 'wqg', 12, '2025-09-16', 0, 1),
(14, 'sagasbs', 234, '2025-09-16', 1, 0),
(15, 'asagg', 32, '2025-09-16', 0, 1),
(16, 'asgsabasvcv', 23, '2025-09-16', 1, 0),
(17, 'sabassvg', 232, '2025-09-16', 1, 0),
(18, 'avxc', 23, '2025-09-16', 1, 0),
(23, 'yusop', 32, '2025-09-17', 1, 0),
(24, 'dog  food', 423, '2025-09-17', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `Product` varchar(1000) NOT NULL,
  `Supplier` varchar(100) NOT NULL,
  `Quantity` varchar(1000) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `Product`, `Supplier`, `Quantity`, `Date`) VALUES
(1, '1/2 aluminum', 'RMC Tools', '50', '2025-09-17'),
(2, 'nails', 'RMC Tools', '500', '2025-09-17'),
(3, 'Glass', 'sti', '500', '2025-09-17'),
(4, 'Glass', 'sti', '500', '2025-09-17'),
(5, 'Glass', 'sti', '500', '2025-09-17'),
(6, 'Glass', 'sti', '500', '2025-09-17'),
(7, 'nails', 'RMC Tools', '34', '2025-09-22'),
(8, 'nails', 'RMC Tools', '34', '2025-09-22'),
(9, 'nails', 'ABC corp.', '23', '2025-09-22'),
(10, 'nails', 'ABC corp.', '23', '2025-09-22'),
(11, 'nails', 'ABC corp.', '23', '2025-09-22'),
(12, 'tao', 'RMC Tools', '231', '2025-09-22');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `Name`, `Email`, `role`, `password`) VALUES
(18, 'Karl', 'karl@gmail.com', 'Admin', '123'),
(20, 'amer', 'amer@gmail.com', 'Project Mngr.', '123'),
(21, 'Yusoph', 'yusoph@gmail.com', 'Inventory Mngr.', '123');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `SiteName` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(1000) NOT NULL,
  `Notes` varchar(1000) NOT NULL,
  `materials` varchar(1000) NOT NULL,
  `tools` varchar(1000) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `SiteName`, `date`, `location`, `Notes`, `materials`, `tools`, `status`) VALUES
(1, 'lores site', '0000-00-00', 'antipolo', 'bahay ko', '', '', 'P'),
(2, 'cainta', '2025-09-30', 'sit', 'cainta ortigas', '', '', 'P'),
(3, 'lores site 2', '2025-09-27', 'antipolo', 'asda', '', '', 'P'),
(4, 'sumulong', '2025-09-16', 'sit', 'asd', '', '', 'P'),
(5, 'lores site 3', '0000-00-00', '', '', '', '', 'P'),
(6, 'lores site 4', '2025-09-16', 'antipolo', 'asdgagawet', '', '', 'P'),
(7, 'schilling', '2025-09-16', 'antipolo', 'asgddgdgasdd', '5:5,8:5', '3:5', 'P'),
(8, 'asd', '2025-09-20', 'sadsadsadasdasdasdasdsad', 'sad', '6:2', '4:24', 'P'),
(9, 'sad', '2025-09-16', 'sad', 'asf', '5:1,6:1,8:1', '3:1,4:1', 'P'),
(10, 'test', '2025-09-16', 'asg', 'saghags', '5:1,6:1,8:1', '3:1,4:1', 'P'),
(11, '', '0000-00-00', '', '', '', '', 'P'),
(12, '', '0000-00-00', '', '', '', '', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `site_materials`
--

CREATE TABLE `site_materials` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site_materials`
--

INSERT INTO `site_materials` (`id`, `site_id`, `material_id`, `quantity`) VALUES
(1, 10, 5, 1),
(2, 10, 6, 1),
(3, 10, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_tools`
--

CREATE TABLE `site_tools` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site_tools`
--

INSERT INTO `site_tools` (`id`, `site_id`, `tool_id`, `quantity`) VALUES
(1, 10, 3, 1),
(2, 10, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `Name`, `Address`, `Email`, `Contact`) VALUES
(1, 'RMC Tools', 'antipolo', 'test123@gmail.com', '09151584452'),
(2, 'ABC corp.', 'Silang', 'test123@gmail.com', '09151584452'),
(3, 'sti', 'antipolo', 'test123@gmail.com', '09151584452'),
(4, 'sti', 'antipolo', 'test123@gmail.com', '09151584452');

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `id` int(11) NOT NULL,
  `ToolsName` varchar(50) NOT NULL,
  `Quantity` int(255) NOT NULL,
  `DateAdded` date NOT NULL,
  `FastMoving` tinyint(1) NOT NULL DEFAULT 0,
  `SlowMoving` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`id`, `ToolsName`, `Quantity`, `DateAdded`, `FastMoving`, `SlowMoving`) VALUES
(3, 'ladder', 3, '2025-09-10', 0, 1),
(4, 'nails', 8, '2025-09-10', 1, 0),
(5, '', 0, '0000-00-00', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approvals`
--
ALTER TABLE `approvals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_materials`
--
ALTER TABLE `site_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `site_tools`
--
ALTER TABLE `site_tools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `tool_id` (`tool_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approvals`
--
ALTER TABLE `approvals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `site_materials`
--
ALTER TABLE `site_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_tools`
--
ALTER TABLE `site_tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `site_materials`
--
ALTER TABLE `site_materials`
  ADD CONSTRAINT `site_materials_ibfk_1` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`),
  ADD CONSTRAINT `site_materials_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`);

--
-- Constraints for table `site_tools`
--
ALTER TABLE `site_tools`
  ADD CONSTRAINT `site_tools_ibfk_1` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`),
  ADD CONSTRAINT `site_tools_ibfk_2` FOREIGN KEY (`tool_id`) REFERENCES `tools` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
