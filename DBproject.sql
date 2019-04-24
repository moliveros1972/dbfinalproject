-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 24, 2019 at 01:28 AM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.2.15-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DBproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `Classes`
--

CREATE TABLE `Classes` (
  `StudentId` int(10) NOT NULL,
  `ClassCode` varchar(7) NOT NULL,
  `Grade` varchar(3) NOT NULL,
  `DateStarted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Classes`
--

INSERT INTO `Classes` (`StudentId`, `ClassCode`, `Grade`, `DateStarted`) VALUES
(1, 'HIS1000', '63', '2019-01-07'),
(1, 'SNC1000', '82', '2019-01-07'),
(2, 'HUM1000', '88', '2018-12-02'),
(2, 'HUM2000', '84', '2019-02-28'),
(3, 'MAT3000', '75', '2019-01-08'),
(3, 'SNC3000', '95', '2019-03-04'),
(6, 'MAT3000', '79', '2019-01-08'),
(6, 'SNC1000', '88', '2019-01-07'),
(7, 'HUM1000', '73', '2018-12-02'),
(7, 'MAT3000', '98', '2019-01-08'),
(10, 'HUM1000', '92', '2018-12-02'),
(10, 'HUM2000', '84', '2019-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE `Courses` (
  `ClassCode` varchar(7) NOT NULL,
  `ClassName` varchar(80) NOT NULL,
  `Description` varchar(80) NOT NULL,
  `DateStarted` date NOT NULL,
  `Professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`ClassCode`, `ClassName`, `Description`, `DateStarted`, `Professor`) VALUES
('HIS1000', 'World History', 'Description goes here.', '2019-01-07', 4),
('HUM1000', 'Psychology', 'Description goes here.', '2018-12-02', 2),
('HUM2000', 'Philosophy', 'Description goes here.', '2019-02-28', 2),
('MAT2000', 'Algebra', 'Description goes here.', '2019-04-01', 1),
('MAT3000', 'Calculus', 'Description goes here.', '2019-01-08', 1),
('SNC1000', 'Biology', 'Description goes here.', '2019-01-07', 1),
('SNC3000', 'Anatomy', 'Description goes here.', '2019-03-04', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Professors`
--

CREATE TABLE `Professors` (
  `FacultyId` int(11) NOT NULL,
  `ProfessorName` varchar(80) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Tenure` tinyint(1) NOT NULL,
  `DateStartedWork` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Professors`
--

INSERT INTO `Professors` (`FacultyId`, `ProfessorName`, `Department`, `Tenure`, `DateStartedWork`) VALUES
(1, 'Mr. Green', 'Science', 0, '2016-07-04'),
(2, 'Mrs. Peacock', 'Humanities', 0, '2015-09-14'),
(3, 'Dr. Mustard', 'Journalism', 1, '1986-02-05'),
(4, 'Dr. White', 'History', 1, '1984-10-05'),
(5, 'Dr. Scarlett', 'Medicine', 0, '2017-07-03'),
(6, 'Mr. Plum', 'Political Science', 0, '2014-04-14'),
(7, 'Mr. Blue', 'Theater/Drama', 0, '2014-01-05'),
(8, 'Mr. Salvi', 'Information Technology', 1, '1969-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--

CREATE TABLE `Students` (
  `StudentID` int(11) NOT NULL,
  `StudentName` varchar(80) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `DateRegister` date NOT NULL,
  `Status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Students`
--

INSERT INTO `Students` (`StudentID`, `StudentName`, `DateOfBirth`, `DateRegister`, `Status`) VALUES
(1, 'Roberto Espinoza', '1995-10-17', '1995-10-17', 'E'),
(2, 'Dylan Montana', '1989-07-19', '2018-11-23', 'E'),
(3, 'Mauricio Soprano', '1972-11-12', '2018-11-05', 'E'),
(4, 'Ibis Fonte', '2000-08-13', '2018-10-12', 'G'),
(5, 'Noah Barlow', '2001-01-20', '2018-12-03', 'D'),
(6, 'Cristina Smith', '1999-07-17', '2018-10-01', 'E'),
(7, 'Hector Diaz', '1997-10-14', '2018-10-08', 'E'),
(8, 'Manolo Muerto', '1997-12-05', '2018-10-15', 'D'),
(9, 'Gina Rodriguez', '2000-02-28', '2018-12-03', 'L'),
(10, 'Alex Moreno', '1996-04-08', '2018-02-05', 'E');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Classes`
--
ALTER TABLE `Classes`
  ADD PRIMARY KEY (`StudentId`,`ClassCode`);

--
-- Indexes for table `Courses`
--
ALTER TABLE `Courses`
  ADD PRIMARY KEY (`ClassCode`),
  ADD KEY `Professor` (`Professor`);

--
-- Indexes for table `Professors`
--
ALTER TABLE `Professors`
  ADD PRIMARY KEY (`FacultyId`);

--
-- Indexes for table `Students`
--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `Status` (`Status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Professors`
--
ALTER TABLE `Professors`
  MODIFY `FacultyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Students`
--
ALTER TABLE `Students`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
