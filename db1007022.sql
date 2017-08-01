-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2015 at 01:34 PM
-- Server version: 5.5.34-0ubuntu0.12.04.1
-- PHP Version: 5.3.10-1ubuntu3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db1007022`
--

-- --------------------------------------------------------

--
-- Table structure for table `Calls`
--

CREATE TABLE IF NOT EXISTS `Calls` (
  `call_id` int(5) NOT NULL AUTO_INCREMENT,
  `Call_status` int(1) NOT NULL DEFAULT '0',
  `Call_dtime` date NOT NULL,
  `call_time` varchar(30) DEFAULT NULL,
  `OWNSTU` int(7) NOT NULL,
  `Staff_ID` varchar(8) NOT NULL,
  PRIMARY KEY (`call_id`),
  UNIQUE KEY `call_id` (`call_id`),
  KEY `fks` (`OWNSTU`),
  KEY `fks2` (`Staff_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50057 ;

-- --------------------------------------------------------

--
-- Table structure for table `graduate`
--

CREATE TABLE IF NOT EXISTS `graduate` (
  `TIMESTMP` varchar(30) NOT NULL,
  `Student_RECID` int(5) NOT NULL,
  `Student_UKPRN` int(8) NOT NULL,
  `PIN` int(8) DEFAULT NULL,
  `OWNSTU` int(7) NOT NULL,
  `Student_STATUS` tinyint(4) DEFAULT NULL,
  `INCOMPLETE_SURVEY` varchar(1) DEFAULT NULL,
  `FNAMES` varchar(10) NOT NULL,
  `SURNAME` varchar(10) NOT NULL,
  `ADDRESS1` varchar(20) NOT NULL,
  `ADDRESS2` varchar(20) DEFAULT NULL,
  `ADDRESS3` varchar(20) DEFAULT NULL,
  `TOWNCITY` varchar(20) NOT NULL,
  `COUNTY` varchar(20) NOT NULL,
  `POSTCODE` varchar(9) NOT NULL,
  `COUNTRY` varchar(50) NOT NULL,
  `TELEPHONE` varchar(12) DEFAULT NULL,
  `EMAIL_ID` varchar(30) DEFAULT NULL,
  `COURSE_STUDIED` varchar(40) NOT NULL,
  `Student_ALLACT1` tinyint(4) DEFAULT NULL,
  `Student_ALLACT2` tinyint(4) DEFAULT NULL,
  `Student_ALLACT3` tinyint(4) DEFAULT NULL,
  `Student_ALLACT4` tinyint(4) DEFAULT NULL,
  `Student_ALLACT5` tinyint(4) DEFAULT NULL,
  `Student_ALLACT6` tinyint(4) DEFAULT NULL,
  `Student_ALLACT7` tinyint(4) DEFAULT NULL,
  `Student_ALLACT8` tinyint(4) DEFAULT NULL,
  `Student_MIMPACT` tinyint(4) DEFAULT NULL,
  `Employment_JOBSNO` int(7) DEFAULT NULL,
  `Employment_JOBTITLE` varchar(20) DEFAULT NULL,
  `Employment_JOBDUTIES` varchar(50) DEFAULT NULL,
  `Employment_EMPBASIS` tinyint(4) DEFAULT NULL,
  `Employment_SALARY` int(5) DEFAULT NULL,
  `Employment_EMPUNPAID` varchar(1) DEFAULT NULL,
  `Employment_PTHOURS` int(2) DEFAULT NULL,
  `Employment_ESTEARN` int(5) DEFAULT NULL,
  `Employment_EMPNAME` varchar(20) DEFAULT NULL,
  `Employment_MAKEDO` varchar(20) DEFAULT NULL,
  `Employment_EMPPLACE` varchar(20) DEFAULT NULL,
  `Employment_EMPPCODE` varchar(9) DEFAULT NULL,
  `Employment_EMPCOUNTRY` varchar(20) DEFAULT NULL,
  `Employment_QUALREQ` int(2) DEFAULT NULL,
  `Employment_EMPIMP` tinyint(4) DEFAULT NULL,
  `Employment_JOBRSNALL1` tinyint(4) DEFAULT NULL,
  `Employment_JOBRSNALL2` tinyint(4) DEFAULT NULL,
  `Employment_JOBRSNALL3` tinyint(4) DEFAULT NULL,
  `Employment_JOBRSNALL4` tinyint(4) DEFAULT NULL,
  `Employment_JOBRSNALL5` tinyint(4) DEFAULT NULL,
  `Employment_JOBRSNALL6` tinyint(4) DEFAULT NULL,
  `Employment_JOBRSNALL7` tinyint(4) DEFAULT NULL,
  `Employment_JOBRSNALL8` tinyint(4) DEFAULT NULL,
  `Employment_JOBRSNALL9` tinyint(4) DEFAULT NULL,
  `Employment_JOBRSNMAIN` tinyint(4) DEFAULT NULL,
  `Employment_JOBFOUND` tinyint(4) DEFAULT NULL,
  `Employment_PREVEM` tinyint(4) DEFAULT NULL,
  `Employment_PREVWORK1` tinyint(4) DEFAULT NULL,
  `Employment_PREVWORK2` tinyint(4) DEFAULT NULL,
  `Employment_PREVWORK3` tinyint(4) DEFAULT NULL,
  `Employment_PREVWORK4` tinyint(4) DEFAULT NULL,
  `Employment_PREVWORK5` tinyint(4) DEFAULT NULL,
  `Employment_PREVWORK6` tinyint(4) DEFAULT NULL,
  `Employment_PREVWORK7` tinyint(4) DEFAULT NULL,
  `NONQTS` tinyint(4) DEFAULT NULL,
  `Teaching_EMPLDTEACH` tinyint(4) DEFAULT NULL,
  `Teaching_GTCSTIS` tinyint(4) DEFAULT NULL,
  `Teaching_TEACHFUND` tinyint(4) DEFAULT NULL,
  `Teaching_TEACHPHS` tinyint(4) DEFAULT NULL,
  `Teaching_SEEKTEACH` tinyint(4) DEFAULT NULL,
  `Study_COURSENAME` varchar(20) DEFAULT NULL,
  `Study_SUBJECT` varchar(20) DEFAULT NULL,
  `Study_UCNAME` varchar(20) DEFAULT NULL,
  `Study_STUDYFUND` tinyint(4) DEFAULT NULL,
  `Student_HEWORKEXP` tinyint(4) DEFAULT NULL,
  `Student_HESTUDYEXP` tinyint(4) DEFAULT NULL,
  `Student_HEBUSNEXP` tinyint(4) DEFAULT NULL,
  `FOLLOWUP` tinyint(4) DEFAULT NULL,
  `APRJAN` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`OWNSTU`),
  UNIQUE KEY `OWNSTU` (`OWNSTU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `QNo` varchar(3) NOT NULL,
  `QName` varchar(255) NOT NULL,
  `QOpt1` varchar(255) DEFAULT NULL,
  `QOpt2` varchar(255) DEFAULT NULL,
  `QOpt3` varchar(255) DEFAULT NULL,
  `QOpt4` varchar(255) DEFAULT NULL,
  `QOpt5` varchar(255) DEFAULT NULL,
  `QOpt6` varchar(255) DEFAULT NULL,
  `QOpt7` varchar(255) DEFAULT NULL,
  `QOpt8` varchar(255) DEFAULT NULL,
  `QOpt9` varchar(255) DEFAULT NULL,
  `QOpt10` varchar(255) DEFAULT NULL,
  `QSection` varchar(1) NOT NULL,
  PRIMARY KEY (`QNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `Staff_ID` varchar(8) NOT NULL,
  `Staff_Fname` varchar(10) NOT NULL,
  `Staff_Sname` varchar(10) NOT NULL,
  `Staff_pass` varchar(8) NOT NULL,
  `Staff_job` varchar(10) NOT NULL,
  `Staff_sal` int(5) NOT NULL,
  `Staff_Cno` varchar(12) NOT NULL,
  `Staff_hiredate` date NOT NULL,
  `Staff_leavedate` date DEFAULT NULL,
  `Staff_Ltlog` datetime DEFAULT NULL,
  `Staff_NoCs` int(2) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`),
  UNIQUE KEY `Staff_ID` (`Staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Calls`
--
ALTER TABLE `Calls`
  ADD CONSTRAINT `fk` FOREIGN KEY (`OWNSTU`) REFERENCES `graduate` (`OWNSTU`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk2` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`) ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
