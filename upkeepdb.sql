-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2018 at 05:59 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upkeepdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `equip_typeId` int(11) DEFAULT NULL,
  `equip_bandId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `equip_band`
--

CREATE TABLE `equip_band` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `equip_type`
--

CREATE TABLE `equip_type` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `helper`
--

CREATE TABLE `helper` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `AddressId` int(11) DEFAULT NULL,
  `dob` date NOT NULL,
  `gender` varchar(30) NOT NULL,
  `Contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `id` int(11) NOT NULL,
  `area` varchar(200) NOT NULL,
  `Code` int(11) DEFAULT NULL,
  `UpzillaId` int(11) DEFAULT NULL,
  `DistrictId` int(11) DEFAULT NULL,
  `DivisionId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`id`, `area`, `Code`, `UpzillaId`, `DistrictId`, `DivisionId`) VALUES
(1, 'Adabor', 1207, 1, 1, 1),
(2, 'Dhanmondi', 1205, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cladmin`
--

CREATE TABLE `tbl_cladmin` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `AddressId` int(11) DEFAULT NULL,
  `dob` date NOT NULL,
  `gender` varchar(30) NOT NULL,
  `Contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cladmin`
--

INSERT INTO `tbl_cladmin` (`id`, `Name`, `Email`, `AddressId`, `dob`, `gender`, `Contact`) VALUES
(2, 'Omar Faruk', 'farukcse18@gmail.com', 2, '2018-03-22', 'Male', '01762994421'),
(3, 'debashon', 'debashonchakraborty@gmail.com', 1, '1994-10-25', 'Male', '01778200359');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`Id`, `Name`) VALUES
(1, 'Dhaka'),
(2, 'Manikgonj'),
(3, 'Lakshmipur'),
(4, 'Chadpur');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_division`
--

CREATE TABLE `tbl_division` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_division`
--

INSERT INTO `tbl_division` (`Id`, `Name`) VALUES
(1, 'Dhaka'),
(2, 'Chittagong');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_equiplocation`
--

CREATE TABLE `tbl_equiplocation` (
  `Id` int(11) NOT NULL,
  `Area` varchar(200) NOT NULL,
  `AddressId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_foreman`
--

CREATE TABLE `tbl_foreman` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `AddressId` int(11) DEFAULT NULL,
  `dob` date NOT NULL,
  `gender` varchar(30) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Image` varchar(50) DEFAULT NULL,
  `ScheduleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ph`
--

CREATE TABLE `tbl_ph` (
  `Id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Reason` varchar(200) NOT NULL,
  `Day` varchar(25) NOT NULL,
  `Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ph`
--

INSERT INTO `tbl_ph` (`Id`, `Date`, `Reason`, `Day`, `Type`) VALUES
(4, '2018-02-21', 'Shaheed Day &amp; International Mother Language Day', 'Wednessday', 'Mandatory'),
(5, '2018-03-17', 'Sheikh Mujibur Rahman\'s Birthday', 'Satarday', 'Mandatory'),
(6, '2018-03-26', 'Independence Day', 'Monday', 'Mandatory'),
(7, '2018-04-14', 'Pohela Boishakh (Bengali New Year)', 'Saturday', 'Mandatory'),
(8, '2018-04-29', 'Buddha Purnima', 'Sunday', 'Mandatory'),
(9, '2018-05-01', 'May Day', 'Tuesday', 'Mandatory'),
(10, '2018-05-02', 'Shab-e-Barat', 'Wednesday', 'Volantory'),
(11, '2018-06-12', 'Shab-e-Qadr', 'Tuesday', 'Volantory'),
(12, '2018-06-15', 'Jamatul Bida', 'Friday', 'Mandatory'),
(13, '2018-06-16', 'Eid-ul-Fitr', 'Saturday', 'Mandatory'),
(14, '2018-06-15', 'Eve of Eid-ul-Fitr', 'Friday', 'Volantory'),
(15, '2018-06-17', 'Following day of Eid-ul-Fitr', 'Sunday', 'Volantory'),
(16, '2018-08-15', 'National Mourning Day', 'Wednesday', 'Mandatory'),
(17, '2018-08-21', 'Eve of Eid-ul-Adha', 'Tuesday', 'Volantory'),
(18, '2018-08-22', 'Eid-ul-Adha', 'Wednesday', 'Mandatory'),
(19, '2018-08-23', 'Following day of Eid-ul-Adha', 'Thursday', 'Volantory'),
(20, '2018-09-02', 'Shuba Janmashtami', 'Sunday', 'Mandatory'),
(21, '2018-09-21', 'Ashura', 'Friday', 'Mandatory'),
(22, '2018-10-19', 'Durga Puja (Vijaya Dashami)', 'Friday', 'Mandatory'),
(23, '2018-11-21', 'Eid-e-Milad un-Nabi', 'Wednesday', 'Mandatory'),
(24, '2018-12-16', 'Victory Day', 'Sunday', 'Mandatory'),
(25, '2018-12-25', 'Christmas Day', 'Tuesday', 'Mandatory'),
(27, '2017-02-21', 'Shaheed Day &amp; International Mother Language Day', 'Tuesday', 'Mandatory'),
(28, '2017-03-17', 'Sheikh Mujibur Rahman\'s Birthday', 'Friday', 'Mandatory'),
(29, '2017-03-26', 'Independence Day', 'Sunday', 'Mandatory'),
(30, '2017-04-14', 'Pohela Boishakh (Bengali New Year)', 'Friday', 'Mandatory'),
(31, '2017-05-01', 'May Day', 'Monday', 'Mandatory'),
(32, '2017-05-10', 'Buddha Purnima', 'Wednesday', 'Mandatory'),
(33, '2017-05-12', 'Shab-e-Barat', 'Friday', 'Mandatory'),
(34, '2017-06-23', 'Shab-e-Qadr', 'Friday', 'Volantory'),
(35, '2017-06-25', 'Eid-ul-Fitr Day1', 'Sunday', 'Mandatory'),
(36, '2017-06-26', 'Eid-ul-Fitr Day2', 'Monday', 'Mandatory'),
(37, '2017-06-27', 'Eid-ul-Fitr Day3', 'Tuesday', 'Mandatory'),
(38, '2017-08-14', 'Shuba Janmashtami', 'Monday', 'Mandatory'),
(39, '2017-08-15', 'National Mourning Day', 'Tuesday', 'Mandatory'),
(40, '2017-09-01', 'Eid-ul-Adha Day1', 'Friday', 'Mandatory'),
(41, '2017-09-02', 'Eid-ul-Adha Day2', 'Saturday', 'Mandatory'),
(42, '2017-09-03', 'Eid-ul-Adha Day3', 'Sunday', 'Mandatory'),
(43, '2017-09-30', 'Durga Puja (Vijaya Dashami)', 'Saturday', 'Mandatory'),
(44, '2017-10-01', 'Ashura', 'Sunday', 'Mandatory'),
(45, '2017-12-01', 'Eid-e-Milad un-Nabi', 'Friday', 'Mandatory'),
(46, '2017-12-16', 'Victory Day', 'Saturday', 'Mandatory'),
(47, '2017-12-25', 'Christmas Day', 'Monday', 'Mandatory');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule`
--

CREATE TABLE `tbl_schedule` (
  `Id` int(11) NOT NULL,
  `Service_In_time` time NOT NULL,
  `Service_Out_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supadmin`
--

CREATE TABLE `tbl_supadmin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `AddressId` int(11) DEFAULT NULL,
  `dob` date NOT NULL,
  `Contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teamleader`
--

CREATE TABLE `tbl_teamleader` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `AddressId` int(11) DEFAULT NULL,
  `Designation` varchar(50) NOT NULL,
  `TeamId` int(11) DEFAULT NULL,
  `Contact` varchar(20) NOT NULL,
  `Image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upzilla`
--

CREATE TABLE `tbl_upzilla` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DistrictId` int(11) DEFAULT NULL,
  `DivisionId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_upzilla`
--

INSERT INTO `tbl_upzilla` (`Id`, `Name`, `DistrictId`, `DivisionId`) VALUES
(1, 'Mohammadpur', 1, 1),
(2, 'Lakshmipur', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Member` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `equip_typeId` (`equip_typeId`),
  ADD KEY `equip_bandId` (`equip_bandId`);

--
-- Indexes for table `equip_band`
--
ALTER TABLE `equip_band`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `equip_type`
--
ALTER TABLE `equip_type`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `helper`
--
ALTER TABLE `helper`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AddressId` (`AddressId`);

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UpzillaId` (`UpzillaId`),
  ADD KEY `DistrictId` (`DistrictId`),
  ADD KEY `DivisionId` (`DivisionId`);

--
-- Indexes for table `tbl_cladmin`
--
ALTER TABLE `tbl_cladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AddressId` (`AddressId`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_division`
--
ALTER TABLE `tbl_division`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_equiplocation`
--
ALTER TABLE `tbl_equiplocation`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AddressId` (`AddressId`);

--
-- Indexes for table `tbl_foreman`
--
ALTER TABLE `tbl_foreman`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AddressId` (`AddressId`),
  ADD KEY `ScheduleId` (`ScheduleId`);

--
-- Indexes for table `tbl_ph`
--
ALTER TABLE `tbl_ph`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_supadmin`
--
ALTER TABLE `tbl_supadmin`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AddressId` (`AddressId`);

--
-- Indexes for table `tbl_teamleader`
--
ALTER TABLE `tbl_teamleader`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AddressId` (`AddressId`),
  ADD KEY `TeamId` (`TeamId`);

--
-- Indexes for table `tbl_upzilla`
--
ALTER TABLE `tbl_upzilla`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `DistrictId` (`DistrictId`),
  ADD KEY `DivisionId` (`DivisionId`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equip_band`
--
ALTER TABLE `equip_band`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equip_type`
--
ALTER TABLE `equip_type`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `helper`
--
ALTER TABLE `helper`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_cladmin`
--
ALTER TABLE `tbl_cladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_division`
--
ALTER TABLE `tbl_division`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_equiplocation`
--
ALTER TABLE `tbl_equiplocation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_foreman`
--
ALTER TABLE `tbl_foreman`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_ph`
--
ALTER TABLE `tbl_ph`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_supadmin`
--
ALTER TABLE `tbl_supadmin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_teamleader`
--
ALTER TABLE `tbl_teamleader`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_upzilla`
--
ALTER TABLE `tbl_upzilla`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `equipment`
--
ALTER TABLE `equipment`
  ADD CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`equip_typeId`) REFERENCES `equip_type` (`Id`),
  ADD CONSTRAINT `equipment_ibfk_2` FOREIGN KEY (`equip_bandId`) REFERENCES `equip_band` (`Id`);

--
-- Constraints for table `helper`
--
ALTER TABLE `helper`
  ADD CONSTRAINT `helper_ibfk_1` FOREIGN KEY (`AddressId`) REFERENCES `tbl_address` (`Id`);

--
-- Constraints for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD CONSTRAINT `tbl_address_ibfk_1` FOREIGN KEY (`UpzillaId`) REFERENCES `tbl_upzilla` (`Id`),
  ADD CONSTRAINT `tbl_address_ibfk_2` FOREIGN KEY (`DistrictId`) REFERENCES `tbl_district` (`Id`),
  ADD CONSTRAINT `tbl_address_ibfk_3` FOREIGN KEY (`DivisionId`) REFERENCES `tbl_district` (`Id`);

--
-- Constraints for table `tbl_cladmin`
--
ALTER TABLE `tbl_cladmin`
  ADD CONSTRAINT `tbl_cladmin_ibfk_1` FOREIGN KEY (`AddressId`) REFERENCES `tbl_address` (`Id`);

--
-- Constraints for table `tbl_equiplocation`
--
ALTER TABLE `tbl_equiplocation`
  ADD CONSTRAINT `tbl_equiplocation_ibfk_1` FOREIGN KEY (`AddressId`) REFERENCES `tbl_address` (`Id`);

--
-- Constraints for table `tbl_foreman`
--
ALTER TABLE `tbl_foreman`
  ADD CONSTRAINT `tbl_foreman_ibfk_1` FOREIGN KEY (`AddressId`) REFERENCES `tbl_address` (`Id`),
  ADD CONSTRAINT `tbl_foreman_ibfk_2` FOREIGN KEY (`ScheduleId`) REFERENCES `tbl_schedule` (`Id`);

--
-- Constraints for table `tbl_supadmin`
--
ALTER TABLE `tbl_supadmin`
  ADD CONSTRAINT `tbl_supadmin_ibfk_1` FOREIGN KEY (`AddressId`) REFERENCES `tbl_address` (`Id`);

--
-- Constraints for table `tbl_teamleader`
--
ALTER TABLE `tbl_teamleader`
  ADD CONSTRAINT `tbl_teamleader_ibfk_1` FOREIGN KEY (`AddressId`) REFERENCES `tbl_address` (`Id`),
  ADD CONSTRAINT `tbl_teamleader_ibfk_2` FOREIGN KEY (`TeamId`) REFERENCES `team` (`Id`);

--
-- Constraints for table `tbl_upzilla`
--
ALTER TABLE `tbl_upzilla`
  ADD CONSTRAINT `tbl_upzilla_ibfk_1` FOREIGN KEY (`DistrictId`) REFERENCES `tbl_district` (`Id`),
  ADD CONSTRAINT `tbl_upzilla_ibfk_2` FOREIGN KEY (`DivisionId`) REFERENCES `tbl_division` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
