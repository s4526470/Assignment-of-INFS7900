-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 20, 2019 at 05:47 AM
-- Server version: 5.7.20
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `AGENCY`
--

CREATE TABLE `AGENCY` (
  `agencylicence` varchar(3) NOT NULL,
  `agencyname` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `phone` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AGENCY`
--

INSERT INTO `AGENCY` (`agencylicence`, `agencyname`, `website`, `phone`) VALUES
('A01', 'Trusted Real Estate', 'www.1.com', '00100'),
('A02', 'Cool Real Estate', 'www.2.com', '00200'),
('A03', 'Best Real Estate', 'www.3.com', '00300'),
('A04', 'Outstanding Real Estate', 'www.4.com', '00400'),
('A05', 'Super Real Estate', 'www.5.com', '00500'),
('A06', 'Excellent Real Estate', 'www.6.com', '00600'),
('A07', 'Unique Real Estate', 'www.7.com', '00700'),
('A08', 'New Real Estate', 'www.8.com', '00800');

-- --------------------------------------------------------

--
-- Table structure for table `AGENT`
--

CREATE TABLE `AGENT` (
  `agentlicence` varchar(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(7) DEFAULT NULL,
  `agency` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AGENT`
--

INSERT INTO `AGENT` (`agentlicence`, `name`, `email`, `mobile`, `agency`) VALUES
('A0001', 'Poh Ling', 'www.Poh Ling.com', '0000001', 'A01'),
('A0002', 'A Ling', 'www.A Ling.com', '0000002', 'A02'),
('A0003', 'B Ling', 'www.B Ling.com', '0000003', 'A03'),
('A0004', 'C Ling', 'www.C Ling.com', '0000004', 'A04'),
('A0005', 'D Ling', 'www.D Ling.com', '0000005', 'A05'),
('A0006', 'E Ling', 'www.E Ling.com', '0000006', 'A06'),
('A0007', 'F Ling', 'www.F Ling.com', '0000007', 'A07'),
('A0008', 'G Ling', 'www.G Ling.com', '0000008', 'A08');

-- --------------------------------------------------------

--
-- Table structure for table `BRANCH`
--

CREATE TABLE `BRANCH` (
  `agency` varchar(3) NOT NULL,
  `brsurburb` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRANCH`
--

INSERT INTO `BRANCH` (`agency`, `brsurburb`, `email`, `phone`) VALUES
('A01', 'Annandal', 'www.AnnandalA01.com', '00120'),
('A01', 'Camperdown', 'www.CapmerdownA01.com', '00110'),
('A02', 'Annandal', 'www.AnnandalA02.com', '00220'),
('A02', 'Camperdown', 'www.CapmerdownA02.com', '00210'),
('A03', 'Annandal', 'www.AnnandalA03.com', '00320'),
('A03', 'Camperdown', 'www.CapmerdownA03.com', '00310'),
('A04', 'Annandal', 'www.AnnandalA04.com', '00420'),
('A04', 'Camperdown', 'www.CapmerdownA04.com', '00410'),
('A05', 'Annandal', 'www.AnnandalA05.com', '00520'),
('A05', 'Camperdown', 'www.CapmerdownA05.com', '00510'),
('A06', 'Annandal', 'www.AnnandalA06.com', '00620'),
('A06', 'Camperdown', 'www.CapmerdownA06.com', '00610'),
('A07', 'Annandal', 'www.AnnandalA07.com', '00720'),
('A07', 'Camperdown', 'www.CapmerdownA07.com', '00710'),
('A08', 'Annandal', 'www.AnnandalA08.com', '00820'),
('A08', 'Camperdown', 'www.CapmerdownA08.com', '00810');

-- --------------------------------------------------------

--
-- Table structure for table `LISTING`
--

CREATE TABLE `LISTING` (
  `pid` varchar(2) NOT NULL,
  `agent` varchar(5) NOT NULL,
  `datelisted` date NOT NULL,
  `dateclose` date DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LISTING`
--

INSERT INTO `LISTING` (`pid`, `agent`, `datelisted`, `dateclose`, `type`, `price`) VALUES
('a2', 'A0003', '2014-10-05', '2014-10-30', 'rent', 50),
('a4', 'A0002', '2014-03-18', '2014-03-19', 'rent', 60),
('c2', 'A0001', '2017-01-01', '2017-01-03', 'sell', 12000),
('c5', 'A0002', '2014-04-02', '2014-07-11', 'sell', 30200),
('d1', 'A0001', '2014-01-03', '2014-01-05', 'sell', 20000),
('d2', 'A0004', '2018-08-04', '2018-08-24', 'sell', 25000),
('d3', 'A0004', '2018-08-05', '2018-08-24', 'sell', 22000),
('d4', 'A0005', '2018-08-04', '2018-08-24', 'sell', 20000),
('d5', 'A0006', '2018-08-04', '2018-08-24', 'sell', 30000),
('e2', 'A0007', '2014-02-12', '2015-01-01', 'sell', 30100),
('e4', 'A0008', '2016-01-01', '2016-04-01', 'sell', 12344),
('e5', 'A0004', '2018-01-02', '2018-03-20', 'rent', 220);

-- --------------------------------------------------------

--
-- Table structure for table `PROPERTY`
--

CREATE TABLE `PROPERTY` (
  `pid` varchar(2) NOT NULL,
  `stno` varchar(5) DEFAULT NULL,
  `stname` varchar(50) DEFAULT NULL,
  `sttype` varchar(50) DEFAULT NULL,
  `suburb` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `carspaces` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROPERTY`
--

INSERT INTO `PROPERTY` (`pid`, `stno`, `stname`, `sttype`, `suburb`, `state`, `postcode`, `carspaces`) VALUES
('a1', '001', 'Parramatta', 'Road', 'Camperdown', 'QLD', '301', 2),
('a2', '001', 'Pyrmont Bridge', 'Road', 'Camperdown', 'QLD', '302', 2),
('a3', '002', 'Parramatta', 'Road', 'Camperdown', 'QLD', '303', 2),
('a4', '002', 'Pyrmont Bridge', 'Road', 'Camperdown', 'QLD', '304', 2),
('a5', '003', 'Parramatta', 'Road', 'Camperdown', 'QLD', '305', 2),
('b1', '001', 'Asia', 'Avenue', 'Annandale', 'QLD', '306', 2),
('b2', '001', 'Africa', 'Avenue', 'Annandale', 'QLD', '307', 2),
('b3', '002', 'Asia', 'Avenue', 'Annandale', 'QLD', '308', 2),
('b4', '002', 'Africa', 'Avenue', 'Annandale', 'QLD', '309', 2),
('b5', '003', 'Asia', 'Avenue', 'Annandale', 'QLD', '310', 2),
('c1', '004', 'Parramatta', 'Road', 'Camperdown', 'QLD', '311', 2),
('c2', '003', 'Pyrmont Bridge', 'Road', 'Camperdown', 'QLD', '312', 2),
('c3', '003', 'Africa', 'Avenue', 'Annandale', 'QLD', '313', 2),
('c4', '004', 'Asia', 'Avenue', 'Annandale', 'QLD', '314', 2),
('c5', '004', 'Africa', 'Avenue', 'Annandale', 'QLD', '315', 2),
('d1', '005', 'Parramatta', 'Road', 'Camperdown', 'QLD', '316', 3),
('d2', '004', 'Pyrmont Bridge', 'Road', 'Camperdown', 'QLD', '317', 2),
('d3', '006', 'Parramatta', 'Road', 'Camperdown', 'QLD', '318', 2),
('d4', '005', 'Pyrmont Bridge', 'Road', 'Camperdown', 'QLD', '319', 7),
('d5', '007', 'Parramatta', 'Road', 'Camperdown', 'QLD', '320', 2),
('e1', '005', 'Asia', 'Avenue', 'Annandale', 'QLD', '321', 3),
('e2', '005', 'Africa', 'Avenue', 'Annandale', 'QLD', '322', 2),
('e3', '006', 'Asia', 'Avenue', 'Annandale', 'QLD', '323', 2),
('e4', '006', 'Africa', 'Avenue', 'Annandale', 'QLD', '324', 3),
('e5', '007', 'Asia', 'Avenue', 'Annandale', 'QLD', '325', 2);

-- --------------------------------------------------------

--
-- Table structure for table `SHAREDLISTING`
--

CREATE TABLE `SHAREDLISTING` (
  `unitno` varchar(5) NOT NULL,
  `pid` varchar(2) NOT NULL,
  `agent` varchar(5) NOT NULL,
  `sdatelisted` date NOT NULL,
  `dateclose` date DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SHAREDLISTING`
--

INSERT INTO `SHAREDLISTING` (`unitno`, `pid`, `agent`, `sdatelisted`, `dateclose`, `type`, `price`) VALUES
('un001', 'a1', 'A0005', '2016-10-03', NULL, 'rent', 230),
('un002', 'a3', 'A0006', '2016-04-12', NULL, 'rent', 230),
('un003', 'a5', 'A0002', '2015-07-13', NULL, 'rent', 230),
('un004', 'c1', 'A0004', '2018-09-02', '2018-09-11', 'rent', 210),
('un005', 'b1', 'A0007', '2016-02-04', '2016-08-03', 'sell', 15000),
('un006', 'b2', 'A0006', '2016-01-01', '2016-04-01', 'sell', 19000),
('un007', 'b3', 'A0004', '2018-01-09', '2018-11-09', 'rent', 100),
('un008', 'b4', 'A0008', '2013-01-02', '2013-07-09', 'rent', 100),
('un009', 'b5', 'A0008', '2015-01-02', '2015-08-09', 'rent', 100),
('un010', 'c3', 'A0003', '2014-05-02', '2014-09-09', 'rent', 200),
('un011', 'c4', 'A0003', '2016-10-11', '2016-12-11', 'rent', 100),
('un012', 'e1', 'A0001', '2018-02-01', '2018-03-01', 'rent', 110),
('un013', 'e3', 'A0005', '2014-02-07', '2014-03-08', 'rent', 190);

-- --------------------------------------------------------

--
-- Table structure for table `SHAREDPROPERTY`
--

CREATE TABLE `SHAREDPROPERTY` (
  `unitno` varchar(5) NOT NULL,
  `pid` varchar(2) NOT NULL,
  `proptype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SHAREDPROPERTY`
--

INSERT INTO `SHAREDPROPERTY` (`unitno`, `pid`, `proptype`) VALUES
('un001', 'a1', 'apartment'),
('un002', 'a3', 'apartment'),
('un003', 'a5', 'apartment'),
('un004', 'c1', 'apartment'),
('un005', 'b1', 'townhouse'),
('un006', 'b2', 'townhouse'),
('un007', 'b3', 'townhouse'),
('un008', 'b4', 'townhouse'),
('un009', 'b5', 'townhouse'),
('un010', 'c3', 'townhouse'),
('un011', 'c4', 'townhouse'),
('un012', 'e1', 'apartment'),
('un013', 'e3', 'apartment');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AGENCY`
--
ALTER TABLE `AGENCY`
  ADD PRIMARY KEY (`agencylicence`);

--
-- Indexes for table `AGENT`
--
ALTER TABLE `AGENT`
  ADD PRIMARY KEY (`agentlicence`),
  ADD KEY `agency` (`agency`);

--
-- Indexes for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD PRIMARY KEY (`agency`,`brsurburb`),
  ADD KEY `angency` (`agency`);

--
-- Indexes for table `LISTING`
--
ALTER TABLE `LISTING`
  ADD PRIMARY KEY (`pid`,`agent`,`datelisted`),
  ADD KEY `pid` (`pid`),
  ADD KEY `agent` (`agent`);

--
-- Indexes for table `PROPERTY`
--
ALTER TABLE `PROPERTY`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `SHAREDLISTING`
--
ALTER TABLE `SHAREDLISTING`
  ADD PRIMARY KEY (`unitno`,`pid`,`agent`,`sdatelisted`),
  ADD KEY `pid` (`pid`),
  ADD KEY `unitno` (`unitno`),
  ADD KEY `agent` (`agent`);

--
-- Indexes for table `SHAREDPROPERTY`
--
ALTER TABLE `SHAREDPROPERTY`
  ADD PRIMARY KEY (`unitno`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AGENT`
--
ALTER TABLE `AGENT`
  ADD CONSTRAINT `AGENT_ibfk_1` FOREIGN KEY (`agency`) REFERENCES `AGENCY` (`agencylicence`);

--
-- Constraints for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD CONSTRAINT `BRANCH_ibfk_1` FOREIGN KEY (`agency`) REFERENCES `AGENCY` (`agencylicence`);

--
-- Constraints for table `LISTING`
--
ALTER TABLE `LISTING`
  ADD CONSTRAINT `LISTING_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `PROPERTY` (`pid`),
  ADD CONSTRAINT `LISTING_ibfk_2` FOREIGN KEY (`agent`) REFERENCES `AGENT` (`agentlicence`);

--
-- Constraints for table `SHAREDLISTING`
--
ALTER TABLE `SHAREDLISTING`
  ADD CONSTRAINT `SHAREDLISTING_ibfk_1` FOREIGN KEY (`unitno`) REFERENCES `SHAREDPROPERTY` (`unitno`),
  ADD CONSTRAINT `SHAREDLISTING_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `SHAREDPROPERTY` (`pid`),
  ADD CONSTRAINT `SHAREDLISTING_ibfk_3` FOREIGN KEY (`agent`) REFERENCES `AGENT` (`agentlicence`);

--
-- Constraints for table `SHAREDPROPERTY`
--
ALTER TABLE `SHAREDPROPERTY`
  ADD CONSTRAINT `SHAREDPROPERTY_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `PROPERTY` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
