-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Oct 11, 2017 at 08:17 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `markaz5`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountants`
--

CREATE TABLE `accountants` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` text,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
`id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `role`, `email`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(5, 'Admin', 'admin', 'schooladmin@mia.com', '5f00d0b7ae47f19ff12689dbfba79c78', 'yes', '2017-10-11 05:09:48', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `attendence_type`
--

CREATE TABLE `attendence_type` (
`id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendence_type`
--

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class="text text-success">P</b>', 'yes', '2016-06-24 04:11:37', '0000-00-00 00:00:00'),
(2, 'Late with excuse', '<b class="text text-warning">E</b>', 'yes', '2016-10-11 22:35:44', '0000-00-00 00:00:00'),
(3, 'Late', '<b class="text text-warning">L</b>', 'yes', '2016-06-24 04:12:28', '0000-00-00 00:00:00'),
(4, 'Absent', '<b class="text text-danger">A</b>', 'yes', '2016-10-11 22:35:40', '0000-00-00 00:00:00'),
(5, 'Holiday', 'H', 'yes', '2016-10-11 22:35:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
`id` int(11) NOT NULL,
  `book_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isbn_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rack_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `publish` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `available` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
`id` int(11) unsigned NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date NOT NULL,
  `is_returned` int(10) NOT NULL DEFAULT '0',
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
`id` int(11) NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 'Boy below 10', 'no', '2017-03-19 01:02:19', '0000-00-00 00:00:00'),
(17, 'Boys 10 to 15', 'no', '2017-05-16 06:57:26', '0000-00-00 00:00:00'),
(27, 'Girls below 10', 'no', '2017-05-16 06:57:36', '0000-00-00 00:00:00'),
(37, 'Girls 10 to 15', 'no', '2017-05-16 06:57:41', '0000-00-00 00:00:00'),
(47, 'Adults', 'no', '2017-05-16 06:57:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
`id` int(11) NOT NULL,
  `class` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES
(137, 'MIA Quran College', 'no', '2017-07-17 08:55:18', '0000-00-00 00:00:00'),
(147, 'MIA Islamic College', 'no', '2017-07-17 08:59:19', '0000-00-00 00:00:00'),
(157, 'MIA Arabic College', 'no', '2017-07-17 08:59:33', '0000-00-00 00:00:00'),
(167, 'MIA Madrasah', 'no', '2017-07-17 08:59:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE `class_sections` (
`id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=8388 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES
(5457, 137, 397, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5467, 137, 9657, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5477, 137, 9667, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5487, 137, 9677, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5497, 137, 9687, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5507, 137, 9697, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5517, 137, 9707, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5527, 137, 9717, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5537, 137, 9727, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5547, 137, 9737, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5557, 137, 9747, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5567, 137, 9757, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5577, 137, 9767, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5587, 137, 9777, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5597, 137, 9787, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5607, 137, 9797, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5617, 137, 9807, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5627, 137, 9817, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5637, 137, 9827, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5647, 137, 9837, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5657, 137, 407, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5667, 137, 9857, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5677, 137, 9867, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5687, 137, 9877, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5697, 137, 9887, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5707, 137, 9897, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5717, 137, 9907, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5727, 137, 9917, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5737, 137, 9927, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5747, 137, 9937, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5757, 137, 9947, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5767, 137, 9957, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5777, 137, 9967, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5787, 137, 9977, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5797, 137, 9987, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5807, 137, 9997, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5817, 137, 10007, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5827, 137, 10017, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5837, 137, 10027, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5847, 137, 10037, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5857, 137, 10047, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5867, 137, 10057, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5877, 137, 417, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5887, 137, 10077, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5897, 137, 10087, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5907, 137, 10097, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5917, 137, 10107, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5927, 137, 10117, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5937, 137, 10127, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5947, 137, 10137, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5957, 137, 10147, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5967, 137, 10157, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5977, 137, 10167, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5987, 137, 10177, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(5997, 137, 10187, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6007, 137, 10197, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6017, 137, 10207, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6027, 137, 10217, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6037, 137, 10227, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6047, 137, 10237, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6057, 137, 10247, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6067, 137, 10257, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6077, 137, 10267, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6087, 137, 10277, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6097, 137, 10287, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6107, 137, 10297, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6117, 137, 10307, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6127, 137, 10317, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6137, 137, 10327, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6147, 137, 10337, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6157, 137, 10347, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6167, 137, 10357, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6177, 137, 10367, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6187, 137, 10377, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6197, 137, 10387, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6207, 137, 10397, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6217, 137, 10407, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6227, 137, 10417, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6237, 137, 10427, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6247, 137, 10437, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6257, 137, 10447, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6267, 137, 10457, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6277, 137, 10467, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6287, 137, 10477, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6297, 137, 10487, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6307, 137, 10497, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6317, 137, 10507, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6327, 137, 10517, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6337, 137, 10527, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6347, 137, 10537, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6357, 137, 10547, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6367, 137, 10557, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6377, 137, 10567, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6387, 137, 10577, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6397, 137, 10587, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6407, 137, 10597, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6417, 137, 10607, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6427, 137, 10617, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6437, 137, 10627, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6447, 137, 10637, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6457, 137, 10647, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6467, 137, 10657, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6477, 137, 10667, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6487, 137, 10677, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6497, 137, 10687, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6507, 137, 10697, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6517, 137, 10707, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6527, 137, 10717, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6537, 137, 10727, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6547, 137, 10737, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6557, 137, 10747, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6567, 137, 10757, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6577, 137, 10767, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6587, 137, 10777, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6597, 137, 10787, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6607, 137, 10797, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6617, 137, 10807, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6627, 137, 10817, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6637, 137, 10827, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6647, 137, 10837, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6657, 137, 10847, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6667, 137, 10857, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6677, 137, 10867, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6687, 137, 10877, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6697, 137, 10887, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6707, 137, 10897, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6717, 137, 10907, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6727, 137, 10917, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6737, 137, 10927, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6747, 137, 10937, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6757, 137, 10947, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6767, 137, 10957, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6777, 137, 10967, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6787, 137, 10977, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6797, 137, 10987, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6807, 137, 10997, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6817, 137, 11007, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6827, 137, 11017, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6837, 137, 11027, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6847, 137, 11037, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6857, 137, 11047, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6867, 137, 11057, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6877, 137, 11067, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6887, 137, 11077, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6897, 137, 11087, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6907, 137, 11097, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6917, 137, 11107, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6927, 137, 11117, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6937, 137, 11127, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6947, 137, 11137, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6957, 137, 11147, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6967, 137, 11157, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6977, 137, 11167, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6987, 137, 11177, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(6997, 137, 11187, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(7007, 137, 11197, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(7017, 137, 11207, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(7027, 137, 11217, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(7037, 137, 11227, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(7047, 137, 11237, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(7057, 137, 11247, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(7067, 137, 11257, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(7077, 137, 427, 'no', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(7087, 147, 437, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7097, 147, 11287, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7107, 147, 11297, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7117, 147, 11307, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7127, 147, 11317, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7137, 147, 11327, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7147, 147, 11337, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7157, 147, 11347, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7167, 147, 11357, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7177, 147, 11367, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7187, 147, 11377, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7197, 147, 11387, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7207, 147, 447, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7217, 147, 11407, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7227, 147, 11417, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7237, 147, 11427, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7247, 147, 11437, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7257, 147, 11447, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7267, 147, 11457, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7277, 147, 11467, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7287, 147, 11477, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7297, 147, 11487, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7307, 147, 11497, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7317, 147, 11507, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7327, 147, 11517, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7337, 147, 11527, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7347, 147, 11537, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7357, 147, 11547, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7367, 147, 11557, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7377, 147, 11567, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7387, 147, 11577, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7397, 147, 11587, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7407, 147, 11597, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7417, 147, 11607, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7427, 147, 11617, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7437, 147, 11627, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7447, 147, 11637, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7457, 147, 11647, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7467, 147, 11657, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7477, 147, 11667, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7487, 147, 11677, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7497, 147, 11687, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7507, 147, 11697, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7517, 147, 11707, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7527, 147, 11717, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7537, 147, 11727, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7547, 147, 11737, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7557, 147, 11747, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7567, 147, 11757, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7577, 147, 11767, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7587, 147, 11777, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7597, 147, 11787, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7607, 147, 11797, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7617, 147, 11807, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7627, 147, 11817, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7637, 147, 11827, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7647, 147, 11837, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7657, 147, 11847, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7667, 147, 11857, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7677, 147, 11867, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7687, 147, 11877, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7697, 147, 11887, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7707, 147, 11897, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7717, 147, 11907, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7727, 147, 11917, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7737, 147, 11927, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7747, 147, 11937, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7757, 147, 11947, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7767, 147, 11957, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7777, 147, 11967, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7787, 147, 11977, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7797, 147, 11987, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7807, 147, 11997, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7817, 147, 12007, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7827, 147, 12017, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7837, 147, 12027, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7847, 147, 12037, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7857, 147, 12047, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7867, 147, 12057, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7877, 147, 12067, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7887, 147, 12077, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7897, 147, 12087, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7907, 147, 12097, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7917, 147, 12107, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7927, 147, 12117, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7937, 147, 12127, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7947, 147, 12137, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7957, 147, 12147, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7967, 147, 12157, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7977, 147, 12167, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7987, 147, 457, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(7997, 147, 12187, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(8007, 147, 12197, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(8017, 147, 12207, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(8027, 147, 12217, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(8037, 147, 12227, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(8047, 147, 12237, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(8057, 147, 12247, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(8067, 147, 12257, 'no', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(8077, 157, 467, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8087, 157, 12277, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8097, 157, 12287, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8107, 157, 12297, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8117, 157, 12307, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8127, 157, 12317, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8137, 157, 12327, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8147, 157, 12337, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8157, 157, 12347, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8167, 157, 12357, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8177, 157, 12367, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8187, 157, 12377, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8197, 157, 12387, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8207, 157, 12397, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8217, 157, 477, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8227, 157, 12417, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8237, 157, 12427, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8247, 157, 12437, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8257, 157, 12447, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8267, 157, 12457, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8277, 157, 12467, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8287, 157, 12477, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8297, 157, 12487, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8307, 157, 12497, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8317, 157, 12507, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8327, 157, 12517, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8337, 157, 12527, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8347, 157, 12537, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8357, 157, 12547, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8367, 157, 12557, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8377, 157, 12567, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(8387, 157, 12577, 'no', '2017-10-11 09:01:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
`id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `file` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `type`, `is_public`, `class_id`, `file`, `note`, `is_active`, `created_at`, `updated_at`, `date`) VALUES
(7, 'Madrasah Curriculum', 'Syllabus', 'No', 27, 'uploads/school_content/material/7.docx', 'Term 1 Week 1 2017', 'no', '2017-03-19 04:55:51', '0000-00-00 00:00:00', '2017-03-19'),
(17, 'Title', 'Study Material', 'Yes', 0, 'uploads/school_content/material/17.jpg', 'nione', 'no', '2017-05-15 12:04:32', '0000-00-00 00:00:00', '2017-05-24'),
(27, 'Week 1 Assignment', 'Assignments', 'No', 27, 'uploads/school_content/material/27.png', '', 'no', '2017-05-16 10:01:19', '0000-00-00 00:00:00', '1970-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
`id` int(11) unsigned NOT NULL,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `is_active`, `created_at`) VALUES
(1, 'smtp', 'smtp.gmail.com', '587', 'xxxx', 'xxxx', 'tls', 'enabled', '2017-08-02 18:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
`id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 'First Term Exam', 0, '', 'no', '2017-03-20 05:21:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
`id` int(11) NOT NULL,
  `attendence` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `exam_schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
`id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
`id` int(11) NOT NULL,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_head`
--

CREATE TABLE `expense_head` (
`id` int(11) NOT NULL,
  `exp_category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_head`
--

INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(7, 'Facilities', '', 'yes', 'no', '2017-03-19 01:25:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feecategory`
--

CREATE TABLE `feecategory` (
`id` int(11) NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feecategory`
--

INSERT INTO `feecategory` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Monthly Fees', 'no', '2016-08-24 06:01:23', '0000-00-00 00:00:00'),
(2, 'Academic Fees', 'no', '2016-08-24 06:01:23', '0000-00-00 00:00:00'),
(3, 'Extra Fees', 'no', '2016-08-24 06:01:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feemasters`
--

CREATE TABLE `feemasters` (
`id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feemasters`
--

INSERT INTO `feemasters` (`id`, `session_id`, `feetype_id`, `class_id`, `amount`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 11, 7, 27, 45.00, 'Monthly Fees', 'no', '2017-03-19 01:17:18', '0000-00-00 00:00:00'),
(19, 11, 7, 7, 200.00, 'monthly bros', 'no', '2017-05-02 08:51:32', '0000-00-00 00:00:00'),
(21, 11, 8, 7, -30.00, '', 'no', '2017-05-16 08:37:44', '0000-00-00 00:00:00'),
(22, 11, 7, 27, -5.00, '', 'no', '2017-05-16 08:36:31', '0000-00-00 00:00:00'),
(23, 11, 7, 27, -10.00, '', 'no', '2017-05-16 08:36:38', '0000-00-00 00:00:00'),
(24, 11, 8, 17, -20.00, '', 'no', '2017-05-16 08:37:52', '0000-00-00 00:00:00'),
(25, 11, 8, 17, -30.00, '', 'no', '2017-05-16 08:38:00', '0000-00-00 00:00:00'),
(26, 11, 7, 17, 150.00, 'Sisters Monthly fee', 'no', '2017-05-03 06:17:01', '0000-00-00 00:00:00'),
(27, 11, 8, 7, -20.00, '', 'no', '2017-05-16 08:37:36', '0000-00-00 00:00:00'),
(37, 11, 7, 37, 80.00, '', 'no', '2017-05-16 09:50:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fees_discounts`
--

CREATE TABLE `fees_discounts` (
`id` int(11) unsigned NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feetype`
--

CREATE TABLE `feetype` (
`id` int(11) NOT NULL,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feetype`
--

INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES
(7, 1, 'Tuition Fees', '', 'no', '2017-03-19 01:16:57', '0000-00-00 00:00:00', ''),
(8, 1, '2nd Child Discount', '', 'no', '2017-05-03 06:04:25', '0000-00-00 00:00:00', ''),
(9, 1, '3rd Child Discount', '', 'no', '2017-05-03 06:04:52', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups`
--

CREATE TABLE `fee_groups` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups_feetype`
--

CREATE TABLE `fee_groups_feetype` (
`id` int(11) unsigned NOT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fee_receipt_no`
--

CREATE TABLE `fee_receipt_no` (
`id` int(11) NOT NULL,
  `payment` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fee_session_groups`
--

CREATE TABLE `fee_session_groups` (
`id` int(11) unsigned NOT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
`id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
`id` int(11) NOT NULL,
  `hostel_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `intake` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_rooms`
--

CREATE TABLE `hostel_rooms` (
`id` int(11) NOT NULL,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT '0.00',
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
`id` int(11) NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Azerbaijan', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(2, 'Albanian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(3, 'Amharic', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(4, 'English', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(5, 'Arabic', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(7, 'Afrikaans', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(8, 'Basque', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(11, 'Bengali', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(13, 'Bosnian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(14, 'Welsh', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(15, 'Hungarian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(16, 'Vietnamese', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(17, 'Haitian (Creole)', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(18, 'Galician', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(19, 'Dutch', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(21, 'Greek', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(22, 'Georgian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(23, 'Gujarati', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(24, 'Danish', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(25, 'Hebrew', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(26, 'Yiddish', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(27, 'Indonesian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(28, 'Irish', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(29, 'Italian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(30, 'Icelandic', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(31, 'Spanish', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(33, 'Kannada', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(34, 'Catalan', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(36, 'Chinese', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(37, 'Korean', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(38, 'Xhosa', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(39, 'Latin', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(40, 'Latvian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(41, 'Lithuanian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(43, 'Malagasy', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(44, 'Malay', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(45, 'Malayalam', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(46, 'Maltese', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(47, 'Macedonian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(48, 'Maori', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(49, 'Marathi', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(51, 'Mongolian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(52, 'German', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(53, 'Nepali', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(54, 'Norwegian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(55, 'Punjabi', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(57, 'Persian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(59, 'Portuguese', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(60, 'Romanian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(61, 'Russian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(62, 'Cebuano', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(64, 'Sinhala', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(65, 'Slovakian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(66, 'Slovenian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(67, 'Swahili', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(68, 'Sundanese', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(70, 'Thai', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(71, 'Tagalog', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(72, 'Tamil', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(74, 'Telugu', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(75, 'Turkish', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(77, 'Uzbek', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(79, 'Urdu', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(80, 'Finnish', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(81, 'French', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(82, 'Hindi', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(84, 'Czech', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(85, 'Swedish', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(86, 'Scottish', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(87, 'Estonian', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(88, 'Esperanto', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(89, 'Javanese', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00'),
(90, 'Japanese', 'no', 'no', '2017-04-06 20:38:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lang_keys`
--

CREATE TABLE `lang_keys` (
`id` int(11) NOT NULL,
  `key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=692 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lang_keys`
--

INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'session', 'no', '2016-03-09 21:54:39', '0000-00-00 00:00:00'),
(2, 'school_name', 'no', '2016-03-09 22:04:28', '0000-00-00 00:00:00'),
(3, 'email', 'no', '2016-03-09 22:04:48', '0000-00-00 00:00:00'),
(6, 'roll_no', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(7, 'first_name', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(8, 'last_name', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(9, 'class', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(10, 'section', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(11, 'admission_date', 'no', '2017-04-02 05:37:35', '0000-00-00 00:00:00'),
(12, 'mobile_no', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(13, 'date_of_birth', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(15, 'religion', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(16, 'category', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(17, 'current_address', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(18, 'permanent_address', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(23, 'bank_account_no', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(24, 'bank_name', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(25, 'ifsc_code', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(27, 'guardian_name', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(28, 'guardian_relation', 'no', '2016-03-13 00:43:05', '0000-00-00 00:00:00'),
(29, 'guardian_phone', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(30, 'guardian_address', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(31, 'select_image', 'no', '2001-12-30 15:29:30', '0000-00-00 00:00:00'),
(32, 'import_excel', 'no', '2001-12-30 15:33:11', '0000-00-00 00:00:00'),
(33, 'export_format', 'no', '2001-12-30 15:33:11', '0000-00-00 00:00:00'),
(34, 'generate_pdf', 'no', '2001-12-30 15:33:11', '0000-00-00 00:00:00'),
(35, 'add_fees', 'no', '2016-06-24 18:04:31', '0000-00-00 00:00:00'),
(37, 'search', 'no', '2016-03-13 00:47:08', '0000-00-00 00:00:00'),
(39, 'fee_category', 'no', '2016-03-13 00:59:03', '0000-00-00 00:00:00'),
(40, 'fee_type', 'no', '2016-03-13 00:59:03', '0000-00-00 00:00:00'),
(43, 'add_fees_master', 'no', '2016-03-13 01:00:10', '0000-00-00 00:00:00'),
(44, 'fees_master_list', 'no', '2016-03-13 01:00:10', '0000-00-00 00:00:00'),
(45, 'add_fees_type', 'no', '2016-03-13 01:01:38', '0000-00-00 00:00:00'),
(46, 'fees_type_list', 'no', '2016-03-13 01:01:38', '0000-00-00 00:00:00'),
(48, 'edit', 'no', '2016-03-13 01:03:10', '0000-00-00 00:00:00'),
(50, 'category_list', 'no', '2016-03-13 01:04:32', '0000-00-00 00:00:00'),
(51, 'add_category', 'no', '2016-03-13 01:04:32', '0000-00-00 00:00:00'),
(52, 'session_list', 'no', '2016-03-13 01:05:15', '0000-00-00 00:00:00'),
(53, 'add_session', 'no', '2016-03-13 01:05:15', '0000-00-00 00:00:00'),
(54, 'class_list', 'no', '2016-03-13 01:05:53', '0000-00-00 00:00:00'),
(56, 'section_list', 'no', '2016-03-13 01:06:20', '0000-00-00 00:00:00'),
(57, 'add_section', 'no', '2016-03-13 01:06:20', '0000-00-00 00:00:00'),
(61, 'student', 'no', '2016-03-13 01:08:08', '0000-00-00 00:00:00'),
(63, 'language_list', 'no', '2016-03-13 01:09:44', '0000-00-00 00:00:00'),
(64, 'add_another_language', 'no', '2016-03-13 01:09:44', '0000-00-00 00:00:00'),
(65, 'created_at', 'no', '2016-03-13 01:45:20', '0000-00-00 00:00:00'),
(66, 'save', 'no', '2001-12-30 15:21:24', '0000-00-00 00:00:00'),
(68, 'select_logo', 'no', '2001-12-30 15:47:56', '0000-00-00 00:00:00'),
(69, 'school_logo', 'no', '2001-12-30 15:49:33', '0000-00-00 00:00:00'),
(70, 'manage', 'no', '2001-12-30 15:49:33', '0000-00-00 00:00:00'),
(72, 'edit_logo', 'no', '2001-12-30 15:53:28', '0000-00-00 00:00:00'),
(73, 'phone', 'no', '2001-12-30 16:00:49', '0000-00-00 00:00:00'),
(74, 'user_name', 'no', '2001-12-30 16:08:51', '0000-00-00 00:00:00'),
(76, 'sms_configuration', 'no', '2001-12-30 16:13:00', '0000-00-00 00:00:00'),
(77, 'sms_gateway_url', 'no', '2016-10-27 02:49:35', '0000-00-00 00:00:00'),
(78, 'status', 'no', '2001-12-30 16:13:52', '0000-00-00 00:00:00'),
(79, 'action', 'no', '2001-12-30 16:14:03', '0000-00-00 00:00:00'),
(80, 'change_status', 'no', '2001-12-30 16:15:19', '0000-00-00 00:00:00'),
(82, 'report', 'no', '2001-12-30 16:26:58', '0000-00-00 00:00:00'),
(84, 'select_criteria', 'no', '2001-12-30 16:27:36', '0000-00-00 00:00:00'),
(85, 'reset', 'no', '2001-12-30 16:28:39', '0000-00-00 00:00:00'),
(86, 'invoice_no', 'no', '2001-12-30 16:30:59', '0000-00-00 00:00:00'),
(87, 'fine', 'no', '2001-12-30 16:30:59', '0000-00-00 00:00:00'),
(88, 'type', 'no', '2001-12-30 16:31:20', '0000-00-00 00:00:00'),
(89, 'amount', 'no', '2001-12-30 16:31:20', '0000-00-00 00:00:00'),
(90, 'total', 'no', '2001-12-30 16:31:26', '0000-00-00 00:00:00'),
(91, 'discount', 'no', '2001-12-30 16:31:36', '0000-00-00 00:00:00'),
(92, 'balance_description', 'no', '2001-12-30 16:32:55', '0000-00-00 00:00:00'),
(94, 'no_search_record_found', 'no', '2001-12-30 16:36:37', '0000-00-00 00:00:00'),
(101, 'description', 'no', '2001-12-30 16:43:49', '0000-00-00 00:00:00'),
(102, 'fees_subtotal', 'no', '2001-12-30 16:44:34', '0000-00-00 00:00:00'),
(104, 'receipt_no', 'no', '2001-12-30 16:47:56', '0000-00-00 00:00:00'),
(106, 'grand_total', 'no', '2001-12-30 16:49:14', '0000-00-00 00:00:00'),
(107, 'deposit', 'no', '2001-12-30 16:56:50', '0000-00-00 00:00:00'),
(108, 'balance', 'no', '2001-12-30 16:56:50', '0000-00-00 00:00:00'),
(115, 'fee_master', 'no', '2001-12-30 18:36:09', '0000-00-00 00:00:00'),
(116, 'classes', 'no', '2001-12-30 18:36:44', '0000-00-00 00:00:00'),
(117, 'collection', 'no', '2001-12-30 18:37:14', '0000-00-00 00:00:00'),
(121, 'current_password', 'no', '2001-12-31 10:29:11', '0000-00-00 00:00:00'),
(122, 'new_password', 'no', '2001-12-31 10:29:11', '0000-00-00 00:00:00'),
(123, 'confirm_password', 'no', '2016-09-15 14:59:51', '0000-00-00 00:00:00'),
(125, 'date', 'no', '2016-04-07 20:47:39', '0000-00-00 00:00:00'),
(137, 'add_new_sms_configuration', 'no', '2001-12-31 12:09:13', '0000-00-00 00:00:00'),
(141, 'cancel', 'no', '2016-03-27 08:20:39', '0000-00-00 00:00:00'),
(142, 'exam_name', 'no', '2016-03-27 09:46:34', '0000-00-00 00:00:00'),
(143, 'subject_name', 'no', '2016-03-30 00:35:15', '0000-00-00 00:00:00'),
(144, 'subject_code', 'no', '2016-03-30 00:35:15', '0000-00-00 00:00:00'),
(145, 'grade_name', 'no', '2016-03-30 04:51:20', '0000-00-00 00:00:00'),
(147, 'percent', 'no', '2016-03-30 04:51:41', '0000-00-00 00:00:00'),
(149, 'percent_to', 'no', '2016-03-30 04:52:00', '0000-00-00 00:00:00'),
(150, 'note', 'no', '2016-03-30 04:52:00', '0000-00-00 00:00:00'),
(151, 'school_code', 'no', '2016-10-25 20:42:26', '0000-00-00 00:00:00'),
(152, 'sign_in', 'no', '2016-04-07 12:57:27', '0000-00-00 00:00:00'),
(153, 'name', 'no', '2016-04-07 20:46:19', '0000-00-00 00:00:00'),
(155, 'transport_fees', 'no', '2016-04-12 21:26:04', '0000-00-00 00:00:00'),
(156, 'fees_discount', 'no', '2016-04-12 22:03:36', '0000-00-00 00:00:00'),
(157, 'father_name', 'no', '2016-04-13 06:22:14', '0000-00-00 00:00:00'),
(158, 'father_phone', 'no', '2016-04-13 06:22:14', '0000-00-00 00:00:00'),
(159, 'father_occupation', 'no', '2016-04-13 06:22:45', '0000-00-00 00:00:00'),
(160, 'mother_name', 'no', '2016-04-13 06:22:45', '0000-00-00 00:00:00'),
(161, 'mother_phone', 'no', '2016-04-13 06:26:08', '0000-00-00 00:00:00'),
(162, 'mother_occupation', 'no', '2016-04-13 06:26:08', '0000-00-00 00:00:00'),
(163, 'guardian_occupation', 'no', '2016-04-13 06:39:51', '0000-00-00 00:00:00'),
(164, 'address', 'no', '2016-04-14 16:02:42', '0000-00-00 00:00:00'),
(165, 'language', 'no', '2016-04-14 16:03:38', '0000-00-00 00:00:00'),
(166, 'teacher_name', 'no', '2016-04-19 15:25:06', '0000-00-00 00:00:00'),
(167, 'password', 'no', '2016-04-19 15:25:06', '0000-00-00 00:00:00'),
(168, 'cast', 'no', '2016-04-19 15:56:10', '0000-00-00 00:00:00'),
(169, 'id', 'no', '2016-04-19 17:34:10', '0000-00-00 00:00:00'),
(170, 'admission_no', 'no', '2016-04-23 03:32:46', '0000-00-00 00:00:00'),
(171, 'enrollment_no', 'no', '2016-04-23 03:50:48', '0000-00-00 00:00:00'),
(180, 'total_paid_fees', 'no', '2016-04-23 04:39:01', '0000-00-00 00:00:00'),
(181, 'admission_discount', 'no', '2016-04-23 04:39:41', '0000-00-00 00:00:00'),
(182, 'total_balance', 'no', '2016-04-23 04:39:41', '0000-00-00 00:00:00'),
(183, 'student_name', 'no', '2016-04-24 07:07:56', '0000-00-00 00:00:00'),
(184, 'fees', 'no', '2016-04-24 07:14:06', '0000-00-00 00:00:00'),
(185, 'rte', 'no', '2016-04-24 09:13:46', '0000-00-00 00:00:00'),
(186, 'gender', 'no', '2016-04-24 17:47:59', '0000-00-00 00:00:00'),
(187, 'teacher_photo', 'no', '2016-04-29 09:26:01', '0000-00-00 00:00:00'),
(188, 'isbn', 'no', '2016-05-02 07:37:51', '0000-00-00 00:00:00'),
(189, 'publisher', 'no', '2016-10-23 13:58:28', '0000-00-00 00:00:00'),
(190, 'author', 'no', '2016-05-02 07:38:19', '0000-00-00 00:00:00'),
(191, 'qty', 'no', '2016-05-02 07:38:19', '0000-00-00 00:00:00'),
(192, 'bookprice', 'no', '2016-10-18 10:41:54', '0000-00-00 00:00:00'),
(193, 'postdate', 'no', '2016-05-02 07:38:38', '0000-00-00 00:00:00'),
(197, 'intake', 'no', '2016-05-05 05:36:45', '0000-00-00 00:00:00'),
(199, 'book_title', 'no', '2016-05-05 09:29:27', '0000-00-00 00:00:00'),
(201, 'no_of_vehicle', 'no', '2016-05-10 03:50:40', '0000-00-00 00:00:00'),
(202, 'fare', 'no', '2016-05-10 03:50:48', '0000-00-00 00:00:00'),
(203, 'content_type', 'no', '2016-05-10 16:54:51', '0000-00-00 00:00:00'),
(205, 'upload_date', 'no', '2016-05-10 16:55:21', '0000-00-00 00:00:00'),
(206, 'expenses', 'no', '2016-05-11 02:44:03', '0000-00-00 00:00:00'),
(207, 'student_information', 'no', '2016-05-11 02:54:31', '0000-00-00 00:00:00'),
(208, 'fees_collection', 'no', '2016-05-11 03:05:29', '0000-00-00 00:00:00'),
(210, 'examinations', 'no', '2016-05-11 03:33:55', '0000-00-00 00:00:00'),
(211, 'academics', 'no', '2016-05-11 03:47:28', '0000-00-00 00:00:00'),
(212, 'download_center', 'no', '2016-05-11 03:47:28', '0000-00-00 00:00:00'),
(214, 'library', 'no', '2016-05-11 04:04:05', '0000-00-00 00:00:00'),
(215, 'system_settings', 'no', '2016-05-11 04:08:32', '0000-00-00 00:00:00'),
(216, 'reports', 'no', '2016-05-11 04:21:38', '0000-00-00 00:00:00'),
(217, 'subject', 'no', '2016-05-13 07:52:44', '0000-00-00 00:00:00'),
(218, 'rack_no', 'no', '2016-05-13 07:52:44', '0000-00-00 00:00:00'),
(220, 'hostel', 'no', '2016-05-13 11:12:27', '0000-00-00 00:00:00'),
(221, 'hostel_name', 'no', '2016-05-13 11:18:07', '0000-00-00 00:00:00'),
(222, 'transport', 'no', '2016-05-13 11:21:25', '0000-00-00 00:00:00'),
(223, 'route_title', 'no', '2016-05-13 11:27:39', '0000-00-00 00:00:00'),
(225, 'date_to', 'no', '2016-05-13 14:06:18', '0000-00-00 00:00:00'),
(227, 'basic_information', 'no', '2016-05-13 14:27:25', '0000-00-00 00:00:00'),
(228, 'add', 'no', '2016-05-13 14:30:46', '0000-00-00 00:00:00'),
(229, 'list', 'no', '2016-05-13 14:33:14', '0000-00-00 00:00:00'),
(230, 'result', 'no', '2016-05-13 14:36:46', '0000-00-00 00:00:00'),
(231, 'pass', 'no', '2016-05-13 14:37:34', '0000-00-00 00:00:00'),
(232, 'fail', 'no', '2016-05-13 14:37:34', '0000-00-00 00:00:00'),
(233, 'continue', 'no', '2016-05-17 19:12:00', '0000-00-00 00:00:00'),
(234, 'leave', 'no', '2016-05-13 14:38:28', '0000-00-00 00:00:00'),
(235, 'exam_list', 'no', '2016-05-17 17:17:56', '0000-00-00 00:00:00'),
(236, 'exam', 'no', '2016-05-17 17:20:35', '0000-00-00 00:00:00'),
(237, 'start_time', 'no', '2016-05-17 17:25:08', '0000-00-00 00:00:00'),
(238, 'end_time', 'no', '2016-05-17 17:25:08', '0000-00-00 00:00:00'),
(239, 'room', 'no', '2016-05-17 17:25:08', '0000-00-00 00:00:00'),
(240, 'full_mark', 'no', '2016-05-17 17:25:08', '0000-00-00 00:00:00'),
(241, 'passing_marks', 'no', '2016-05-17 17:25:08', '0000-00-00 00:00:00'),
(242, 'room_no', 'no', '2016-05-17 17:35:25', '0000-00-00 00:00:00'),
(245, 'promote', 'no', '2016-05-17 18:33:52', '0000-00-00 00:00:00'),
(246, 'content_title', 'no', '2016-05-19 02:20:20', '0000-00-00 00:00:00'),
(251, 'teacher_list', 'no', '2016-05-21 08:59:17', '0000-00-00 00:00:00'),
(252, 'compose_new_message', 'no', '2016-05-25 07:52:49', '0000-00-00 00:00:00'),
(253, 'notice', 'no', '2016-05-25 07:56:56', '0000-00-00 00:00:00'),
(254, 'notice_date', 'no', '2016-05-25 07:57:53', '0000-00-00 00:00:00'),
(255, 'publish_on', 'no', '2016-05-25 07:58:56', '0000-00-00 00:00:00'),
(256, 'message_to', 'no', '2016-05-25 08:00:54', '0000-00-00 00:00:00'),
(257, 'parent', 'no', '2016-05-25 08:03:55', '0000-00-00 00:00:00'),
(258, 'teacher', 'no', '2016-05-25 08:04:21', '0000-00-00 00:00:00'),
(259, 'no_record_found', 'no', '2016-05-25 08:17:21', '0000-00-00 00:00:00'),
(260, 'teacher_detail', 'no', '2016-05-25 09:52:21', '0000-00-00 00:00:00'),
(261, 'subject_list', 'no', '2016-05-25 10:33:17', '0000-00-00 00:00:00'),
(263, 'create_category', 'no', '2016-05-25 16:29:13', '0000-00-00 00:00:00'),
(264, 'title', 'no', '2016-05-26 05:31:44', '0000-00-00 00:00:00'),
(265, 'message', 'no', '2016-05-26 05:32:36', '0000-00-00 00:00:00'),
(266, 'send', 'no', '2016-05-26 06:13:32', '0000-00-00 00:00:00'),
(267, 'previous_school_details', 'no', '2016-05-26 10:23:02', '0000-00-00 00:00:00'),
(268, 'upload_documents', 'no', '2016-05-26 10:24:00', '0000-00-00 00:00:00'),
(270, 'miscellaneous_details', 'no', '2016-05-26 10:28:10', '0000-00-00 00:00:00'),
(272, 'edit_notification', 'no', '2016-05-26 11:52:03', '0000-00-00 00:00:00'),
(273, 'guardian_details', 'no', '2016-05-26 12:06:45', '0000-00-00 00:00:00'),
(274, 'payment_id', 'no', '2016-05-26 12:10:03', '0000-00-00 00:00:00'),
(275, 'change_password', 'no', '2016-05-26 12:15:33', '0000-00-00 00:00:00'),
(278, 'notifications', 'no', '2016-05-30 08:12:06', '0000-00-00 00:00:00'),
(279, 'visible_to_all', 'no', '2016-05-30 08:35:26', '0000-00-00 00:00:00'),
(280, 'visibility', 'no', '2016-05-30 08:36:16', '0000-00-00 00:00:00'),
(284, 'communicate', 'no', '2016-05-30 08:49:53', '0000-00-00 00:00:00'),
(285, 'notice_board', 'no', '2016-05-30 08:51:47', '0000-00-00 00:00:00'),
(286, 'publish_date', 'no', '2016-05-30 09:31:41', '0000-00-00 00:00:00'),
(287, 'father', 'no', '2016-06-01 07:51:38', '0000-00-00 00:00:00'),
(288, 'mother', 'no', '2016-06-01 07:51:47', '0000-00-00 00:00:00'),
(290, 'not_scheduled', 'no', '2016-06-07 18:20:48', '0000-00-00 00:00:00'),
(291, 'import_student', 'no', '2016-06-10 08:26:51', '0000-00-00 00:00:00'),
(292, 'dl_sample_import', 'no', '2016-06-10 08:33:13', '0000-00-00 00:00:00'),
(293, 'select_csv_file', 'no', '2016-06-10 08:40:49', '0000-00-00 00:00:00'),
(294, 'date_format', 'no', '2016-06-22 08:19:07', '0000-00-00 00:00:00'),
(295, 'currency', 'no', '2016-06-22 08:19:28', '0000-00-00 00:00:00'),
(296, 'currency_symbol', 'no', '2016-06-22 08:19:28', '0000-00-00 00:00:00'),
(297, 'profile', 'no', '2016-06-22 23:16:28', '0000-00-00 00:00:00'),
(298, 'save_attendance', 'no', '2016-06-22 23:26:58', '0000-00-00 00:00:00'),
(299, 'full_marks', 'no', '2016-06-24 10:40:24', '0000-00-00 00:00:00'),
(300, 'obtain_marks', 'no', '2016-06-24 10:40:24', '0000-00-00 00:00:00'),
(301, 'total_marks', 'no', '2016-06-24 10:48:37', '0000-00-00 00:00:00'),
(302, 'current', 'no', '2016-07-12 06:56:07', '0000-00-00 00:00:00'),
(303, 'admission', 'no', '2016-07-21 12:10:45', '0000-00-00 00:00:00'),
(305, 'sibling', 'no', '2016-08-07 07:02:13', '0000-00-00 00:00:00'),
(306, 'details', 'no', '2016-08-07 07:09:19', '0000-00-00 00:00:00'),
(309, 'identification', 'no', '2016-08-07 07:13:16', '0000-00-00 00:00:00'),
(310, 'no', 'no', '2016-08-07 07:15:33', '0000-00-00 00:00:00'),
(311, 'delete', 'no', '2016-08-07 07:58:55', '0000-00-00 00:00:00'),
(312, 'documents', 'no', '2016-08-07 08:03:52', '0000-00-00 00:00:00'),
(313, 'payment', 'no', '2016-08-07 08:06:56', '0000-00-00 00:00:00'),
(317, 'no_transaction_found', 'no', '2016-08-10 13:02:10', '0000-00-00 00:00:00'),
(318, 'transport_fees_details', 'no', '2016-08-10 13:05:57', '0000-00-00 00:00:00'),
(319, 'collect_fees', 'no', '2016-08-10 13:15:47', '0000-00-00 00:00:00'),
(320, 'balance_details', 'no', '2016-08-10 13:18:55', '0000-00-00 00:00:00'),
(321, 'download_pdf', 'no', '2016-08-10 13:35:40', '0000-00-00 00:00:00'),
(322, 'student_fees_report', 'no', '2016-08-10 13:53:18', '0000-00-00 00:00:00'),
(323, 'total_fees', 'no', '2016-08-10 13:56:53', '0000-00-00 00:00:00'),
(324, 'paid_fees', 'no', '2016-08-10 13:56:53', '0000-00-00 00:00:00'),
(325, 'student_detail', 'no', '2016-08-10 14:12:55', '0000-00-00 00:00:00'),
(327, 'gross_fees', 'no', '2016-08-10 14:15:26', '0000-00-00 00:00:00'),
(328, 'balance_fees', 'no', '2016-08-10 14:18:31', '0000-00-00 00:00:00'),
(329, 'print_selected', 'no', '2016-08-10 14:20:32', '0000-00-00 00:00:00'),
(330, 'collect_transport_fees', 'no', '2016-08-10 14:33:34', '0000-00-00 00:00:00'),
(331, 'no_transport_fees_found', 'no', '2016-08-10 14:35:30', '0000-00-00 00:00:00'),
(332, 'total_transport_fees', 'no', '2016-08-10 14:45:54', '0000-00-00 00:00:00'),
(333, 'class_section', 'no', '2016-08-10 14:49:24', '0000-00-00 00:00:00'),
(335, 'other_discount', 'no', '2016-08-10 15:08:43', '0000-00-00 00:00:00'),
(336, 'search_transaction', 'no', '2016-10-18 10:49:17', '0000-00-00 00:00:00'),
(337, 'fees_collection_details', 'no', '2016-08-10 15:18:09', '0000-00-00 00:00:00'),
(338, 'expense_id', 'no', '2016-08-10 15:24:24', '0000-00-00 00:00:00'),
(339, 'expense_head', 'no', '2016-08-10 15:21:43', '0000-00-00 00:00:00'),
(340, 'expense_detail', 'no', '2016-08-10 15:25:17', '0000-00-00 00:00:00'),
(341, 'add_expense', 'no', '2016-08-10 15:58:20', '0000-00-00 00:00:00'),
(342, 'edit_expense', 'no', '2016-08-10 16:03:33', '0000-00-00 00:00:00'),
(343, 'expense_list', 'no', '2016-08-10 16:07:48', '0000-00-00 00:00:00'),
(344, 'expense_head_list', 'no', '2016-08-10 16:15:58', '0000-00-00 00:00:00'),
(345, 'edit_expense_head', 'no', '2016-08-10 16:19:02', '0000-00-00 00:00:00'),
(347, 'add_expense_head', 'no', '2016-08-10 16:25:17', '0000-00-00 00:00:00'),
(348, 'attendance_already_submitted_you_can_edit_record', 'no', '2017-04-02 05:46:00', '0000-00-00 00:00:00'),
(349, 'attendance_already_submitted_as_holiday', 'no', '2017-04-02 05:46:00', '0000-00-00 00:00:00'),
(350, 'you_can_edit_record', 'no', '2016-08-11 03:41:54', '0000-00-00 00:00:00'),
(351, 'attendance_saved_successfully', 'no', '2017-04-02 05:46:00', '0000-00-00 00:00:00'),
(352, 'holiday', 'no', '2016-08-11 03:48:21', '0000-00-00 00:00:00'),
(353, 'mark_as_holiday', 'no', '2016-08-11 03:52:15', '0000-00-00 00:00:00'),
(354, 'no_attendance_prepare', 'no', '2016-08-11 04:12:18', '0000-00-00 00:00:00'),
(355, 'add_exam', 'no', '2016-08-11 04:39:04', '0000-00-00 00:00:00'),
(356, 'view_status', 'no', '2016-08-11 04:40:56', '0000-00-00 00:00:00'),
(357, 'marks_register_prepared', 'no', '2016-08-11 04:46:51', '0000-00-00 00:00:00'),
(358, 'exam_scheduled', 'no', '2016-08-11 04:46:51', '0000-00-00 00:00:00'),
(359, 'submit', 'no', '2016-08-11 05:00:47', '0000-00-00 00:00:00'),
(360, 'edit_grade', 'no', '2016-08-11 05:04:55', '0000-00-00 00:00:00'),
(361, 'add_grade', 'no', '2016-08-11 05:04:55', '0000-00-00 00:00:00'),
(362, 'percent_upto', 'no', '2016-08-11 05:06:04', '0000-00-00 00:00:00'),
(363, 'percent_from', 'no', '2016-08-11 05:06:04', '0000-00-00 00:00:00'),
(364, 'grade_list', 'no', '2016-08-11 05:09:49', '0000-00-00 00:00:00'),
(366, 'assign_subject', 'no', '2016-08-11 05:32:21', '0000-00-00 00:00:00'),
(368, 'edit_teacher', 'no', '2016-08-11 05:35:57', '0000-00-00 00:00:00'),
(369, 'add_teacher', 'no', '2016-08-11 05:52:14', '0000-00-00 00:00:00'),
(370, 'add_subject', 'no', '2016-08-11 06:00:48', '0000-00-00 00:00:00'),
(374, 'edit_subject', 'no', '2016-08-11 06:13:33', '0000-00-00 00:00:00'),
(375, 'edit_class', 'no', '2016-08-11 06:13:50', '0000-00-00 00:00:00'),
(377, 'edit_section', 'no', '2016-08-11 06:24:27', '0000-00-00 00:00:00'),
(378, 'upload_content', 'no', '2016-08-11 06:36:54', '0000-00-00 00:00:00'),
(380, 'content_list', 'no', '2016-08-11 07:00:03', '0000-00-00 00:00:00'),
(382, 'available_for_all_classes', 'no', '2016-10-23 12:56:48', '0000-00-00 00:00:00'),
(384, 'content_file', 'no', '2016-08-12 13:39:02', '0000-00-00 00:00:00'),
(385, 'available_for', 'no', '2016-08-12 13:39:02', '0000-00-00 00:00:00'),
(386, 'my_children', 'no', '2016-09-17 05:36:30', '0000-00-00 00:00:00'),
(387, 'assignment_list', 'no', '2016-08-12 13:45:21', '0000-00-00 00:00:00'),
(388, 'study_material_list', 'no', '2016-08-12 13:45:21', '0000-00-00 00:00:00'),
(389, 'syllabus_list', 'no', '2016-08-12 13:45:21', '0000-00-00 00:00:00'),
(390, 'other_download_list', 'no', '2016-08-12 13:45:21', '0000-00-00 00:00:00'),
(391, 'book_details', 'no', '2016-08-12 14:04:18', '0000-00-00 00:00:00'),
(392, 'edit_book', 'no', '2016-08-12 14:04:18', '0000-00-00 00:00:00'),
(393, 'book_list', 'no', '2016-08-12 14:06:33', '0000-00-00 00:00:00'),
(394, 'route_list', 'no', '2016-08-12 14:18:15', '0000-00-00 00:00:00'),
(395, 'create_route', 'no', '2016-08-12 14:18:15', '0000-00-00 00:00:00'),
(396, 'edit_route', 'no', '2016-08-12 14:18:15', '0000-00-00 00:00:00'),
(397, 'add_hostel', 'no', '2016-08-12 14:35:23', '0000-00-00 00:00:00'),
(398, 'edit_hostel', 'no', '2016-08-12 14:35:23', '0000-00-00 00:00:00'),
(399, 'hostel_list', 'no', '2016-08-12 14:35:23', '0000-00-00 00:00:00'),
(400, 'print', 'no', '2016-08-12 14:38:26', '0000-00-00 00:00:00'),
(401, 'room_type', 'no', '2016-08-12 14:43:23', '0000-00-00 00:00:00'),
(402, 'add_room_type', 'no', '2016-08-12 14:43:23', '0000-00-00 00:00:00'),
(403, 'room_type_list', 'no', '2016-08-12 14:43:23', '0000-00-00 00:00:00'),
(404, 'edit_room_type', 'no', '2016-08-12 14:43:23', '0000-00-00 00:00:00'),
(406, 'edit_message', 'no', '2016-08-12 14:58:45', '0000-00-00 00:00:00'),
(407, 'select', 'no', '2016-08-12 15:02:17', '0000-00-00 00:00:00'),
(408, 'general_settings', 'no', '2016-08-12 15:33:50', '0000-00-00 00:00:00'),
(410, 'session_start_month', 'no', '2016-08-12 15:34:48', '0000-00-00 00:00:00'),
(411, 'edit_session', 'no', '2016-08-12 15:47:13', '0000-00-00 00:00:00'),
(414, 'paypal_setting', 'no', '2016-08-12 16:20:26', '0000-00-00 00:00:00'),
(415, 'paypal_username', 'no', '2016-08-12 16:20:26', '0000-00-00 00:00:00'),
(416, 'paypal_password', 'no', '2016-08-12 16:20:26', '0000-00-00 00:00:00'),
(417, 'paypal_signature', 'no', '2016-08-12 16:20:26', '0000-00-00 00:00:00'),
(418, 'paypal_email', 'no', '2016-08-12 16:20:26', '0000-00-00 00:00:00'),
(419, 'off', 'no', '2016-08-12 16:20:43', '0000-00-00 00:00:00'),
(420, 'on', 'no', '2016-08-12 16:20:43', '0000-00-00 00:00:00'),
(421, 'backup_history', 'no', '2016-08-12 16:29:15', '0000-00-00 00:00:00'),
(422, 'create_backup', 'no', '2016-08-12 16:29:15', '0000-00-00 00:00:00'),
(423, 'backup_files', 'no', '2016-10-25 21:17:36', '0000-00-00 00:00:00'),
(424, 'upload_from_local_directory', 'no', '2016-08-12 16:33:51', '0000-00-00 00:00:00'),
(427, 'restore', 'no', '2016-08-12 21:34:46', '0000-00-00 00:00:00'),
(429, 'class_fees_detail', 'no', '2016-08-12 22:07:20', '0000-00-00 00:00:00'),
(430, 'no_fees_found', 'no', '2016-08-12 22:08:56', '0000-00-00 00:00:00'),
(431, 'monthly_fees_collection', 'no', '2016-08-12 22:13:22', '0000-00-00 00:00:00'),
(432, 'monthly_expenses', 'no', '2016-08-12 22:13:22', '0000-00-00 00:00:00'),
(433, 'teachers', 'no', '2016-08-12 22:13:22', '0000-00-00 00:00:00'),
(434, 'students', 'no', '2016-08-12 22:13:22', '0000-00-00 00:00:00'),
(436, 'login_details', 'no', '2016-08-12 22:27:20', '0000-00-00 00:00:00'),
(437, 'academic_fees_detail', 'no', '2016-08-12 23:03:38', '0000-00-00 00:00:00'),
(438, 'document_list', 'no', '2016-08-12 23:12:01', '0000-00-00 00:00:00'),
(439, 'exam_timetable', 'no', '2016-08-12 23:30:36', '0000-00-00 00:00:00'),
(440, 'promote_in_session', 'no', '2016-08-13 00:21:51', '0000-00-00 00:00:00'),
(441, 'promote_students_in_next_session', 'no', '2016-08-13 00:21:51', '0000-00-00 00:00:00'),
(442, 'next_session_status', 'no', '2016-08-13 00:25:11', '0000-00-00 00:00:00'),
(443, 'no_result_prepare', 'no', '2016-08-12 16:56:40', '0000-00-00 00:00:00'),
(444, 'parent_guardian_detail', 'no', '2016-08-12 17:29:14', '0000-00-00 00:00:00'),
(445, 'add_more_details', 'no', '2016-08-12 17:31:21', '0000-00-00 00:00:00'),
(446, 'if_permanent_address_is_current_address', 'no', '2016-10-05 22:28:39', '0000-00-00 00:00:00'),
(447, 'address_details', 'no', '2016-08-12 17:37:38', '0000-00-00 00:00:00'),
(449, 'add_image', 'no', '2016-08-12 17:55:27', '0000-00-00 00:00:00'),
(450, 'payment_id_detail', 'no', '2016-08-12 18:03:44', '0000-00-00 00:00:00'),
(451, 'section_name', 'no', '2016-08-12 18:33:59', '0000-00-00 00:00:00'),
(452, 'fees_type', 'no', '2016-08-12 19:02:20', '0000-00-00 00:00:00'),
(453, 'edit_hostel_room', 'no', '2016-08-16 11:37:57', '0000-00-00 00:00:00'),
(454, 'room_no_name', 'no', '2016-08-16 11:41:43', '0000-00-00 00:00:00'),
(455, 'no_of_bed', 'no', '2016-08-16 11:41:43', '0000-00-00 00:00:00'),
(456, 'cost_per_bed', 'no', '2016-08-16 11:41:43', '0000-00-00 00:00:00'),
(457, 'hostel_room_list', 'no', '2016-08-16 11:41:43', '0000-00-00 00:00:00'),
(458, 'add_hostel_room', 'no', '2016-08-16 11:46:48', '0000-00-00 00:00:00'),
(459, 'mark_register', 'no', '2016-08-16 11:51:56', '0000-00-00 00:00:00'),
(462, 'fill_mark', 'no', '2016-08-16 12:02:20', '0000-00-00 00:00:00'),
(463, 'post_new_message', 'no', '2016-08-16 12:05:16', '0000-00-00 00:00:00'),
(464, 'by_date', 'no', '2016-08-16 12:11:44', '0000-00-00 00:00:00'),
(465, 'edit_category', 'no', '2016-08-16 12:20:25', '0000-00-00 00:00:00'),
(466, 'exam_not_allotted', 'no', '2016-10-23 12:53:46', '0000-00-00 00:00:00'),
(467, 'edit_exam', 'no', '2016-08-16 12:31:50', '0000-00-00 00:00:00'),
(468, 'add_class', 'no', '2016-08-16 12:36:27', '0000-00-00 00:00:00'),
(469, 'teacher_subject', 'no', '2016-08-16 14:18:06', '0000-00-00 00:00:00'),
(470, 'dd', 'no', '2016-08-17 03:35:12', '0000-00-00 00:00:00'),
(471, 'cash', 'no', '2016-08-17 03:35:12', '0000-00-00 00:00:00'),
(472, 'cheque', 'no', '2016-08-17 03:35:12', '0000-00-00 00:00:00'),
(473, 'revert', 'no', '2016-08-17 04:10:47', '0000-00-00 00:00:00'),
(474, 'view', 'no', '2016-08-17 05:46:56', '0000-00-00 00:00:00'),
(475, 'no_exam_prepare', 'no', '2016-10-23 13:30:25', '0000-00-00 00:00:00'),
(476, 'sms_setting', 'no', '2016-08-22 13:15:46', '0000-00-00 00:00:00'),
(477, 'smart_school', 'no', '2016-08-25 04:11:16', '0000-00-00 00:00:00'),
(478, 'user_login', 'no', '2016-08-25 04:46:22', '0000-00-00 00:00:00'),
(479, 'library_book', 'no', '2016-09-06 23:40:41', '0000-00-00 00:00:00'),
(480, 'transport_routes', 'no', '2016-09-06 23:44:00', '0000-00-00 00:00:00'),
(481, 'hostel_rooms', 'no', '2016-09-06 23:47:22', '0000-00-00 00:00:00'),
(482, 'exam_schedule', 'no', '2016-09-06 23:57:03', '0000-00-00 00:00:00'),
(483, 'subjects', 'no', '2016-09-07 00:05:20', '0000-00-00 00:00:00'),
(484, 'national_identification_no', 'no', '2016-09-15 08:30:04', '0000-00-00 00:00:00'),
(485, 'local_identification_no', 'no', '2016-09-15 08:31:16', '0000-00-00 00:00:00'),
(486, 'my_profile', 'no', '2016-09-15 13:14:58', '0000-00-00 00:00:00'),
(487, 'mode', 'no', '2016-09-15 13:17:39', '0000-00-00 00:00:00'),
(488, 'url', 'no', '2016-09-15 15:54:06', '0000-00-00 00:00:00'),
(489, 'month', 'no', '2016-09-15 16:07:30', '0000-00-00 00:00:00'),
(490, 'upload', 'no', '2016-09-15 16:16:34', '0000-00-00 00:00:00'),
(491, 'day', 'no', '2016-10-24 05:32:31', '0000-00-00 00:00:00'),
(492, 'class_timetable', 'no', '2016-10-05 22:10:38', '0000-00-00 00:00:00'),
(493, 'if_guardian_address_is_current_address', 'no', '2016-10-07 22:42:51', '0000-00-00 00:00:00'),
(494, 'admin_login', 'no', '2016-10-18 02:38:26', '0000-00-00 00:00:00'),
(495, 'date_from', 'no', '2016-10-19 11:37:28', '0000-00-00 00:00:00'),
(496, 'other', 'no', '2016-10-25 20:31:08', '0000-00-00 00:00:00'),
(497, 'search_by_keyword', 'no', '2016-10-25 21:25:46', '0000-00-00 00:00:00'),
(499, 'add_book', 'no', '2016-10-31 17:22:54', '0000-00-00 00:00:00'),
(500, 'edit_vehicle_on_route', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(501, 'assign_vehicle_on_route', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(502, 'vehicle_route_list', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(503, 'route', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(504, 'vehicle_routes', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(505, 'edit_vehicle', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(506, 'vehicle', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(507, 'vehicle_list', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(508, 'add_vehicle', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(509, 'driver_contact', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(510, 'driver_license', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(511, 'driver_name', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(512, 'vehicle_no', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(513, 'vehicle_model', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(514, 'logout', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(515, 'year_made', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(516, 'attendance', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(517, 'show', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(519, 'add_timetable', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(520, 'edit_setting', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(521, 'subject_type', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(522, 'view_detail', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(523, 'exam_status', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(524, 'books', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(525, 'report_card', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(526, 'library_books', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(527, 'no_vehicle_allotted_to_this_route', 'no', '2017-04-02 05:46:00', '0000-00-00 00:00:00'),
(528, 'Add/Edit', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(529, 'language_rtl_text_mode', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(530, 'clickatell_username', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(531, 'clickatell_password', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(532, 'clickatell_api_id', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(533, 'clickatell_sms_gateway', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(534, 'twilio_sms_gateway', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(535, 'custom_sms_gateway', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(536, 'twilio_account_sid', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(537, 'authentication_token', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(538, 'registered_phone_number', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(539, 'username', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(540, 'gateway_name', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(541, 'theory', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(542, 'practical', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(543, 'present', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(544, 'paid', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(545, 'yes', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(546, 'if_guardian_is', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(547, 'current_session', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(548, 'quick_links', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(549, 'student_details', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(550, 'student_admission', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(551, 'student_categories', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(552, 'promote_students', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(554, 'fees_master', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(555, 'search_fees_payment', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(556, 'search_due_fees', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(557, 'fees_statement', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(558, 'balance_fees_report', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(559, 'search_expense', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(560, 'student_attendance', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(561, 'attendance_by_date', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(562, 'attendance_report', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(563, 'marks_register', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(564, 'marks_grade', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(565, 'assign_subjects', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(566, 'sections', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(567, 'assignments', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(568, 'study_material', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(569, 'routes', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(570, 'vehicles', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(571, 'assign_vehicle', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(572, 'send_message', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(573, 'student_report', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(574, 'transaction_report', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(575, 'exam_marks_report', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(576, 'session_setting', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(577, 'backup / restore', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(578, 'languages', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(579, 'grade', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(580, 'percentage', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(581, 'fees_collection_&_expenses_for_session', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(582, 'fees_receipt', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(583, 'fees_category', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(584, 'fees_collection_&_expenses_for', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(585, 'library_-_books', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(586, 'transport_-_routes', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(587, 'hostel_-_rooms', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(588, 'search_by_name,_roll_no,_enroll_no,_national_identification_no,_local_identification_no_etc..', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(589, 'user_type', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(590, 'login_url', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(591, 'search_student', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(592, 'student_lists', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(593, 'detailed_view', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(595, 'active', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(596, 'syllabus', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(597, 'other_downloads', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(598, 'download', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(599, 'unpaid', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(600, 'enter_room_no', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(601, 'male', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(602, 'female', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(603, 'expense_result', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(604, 'view_schedule', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(605, 'pdf', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(606, 'not', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(607, 'scheduled', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(609, 'transaction_from', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(610, 'to', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(611, 'enabled', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(612, 'disabled', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(613, 'add_language', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(614, 'no_description', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(615, 'fees_category_list', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(616, 'add_fee_category', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(617, 'edit_fee_category', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(618, 'late_with_excuse', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(619, 'late', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(620, 'absent', 'no', '2017-04-02 04:09:09', '0000-00-00 00:00:00'),
(621, 'issue_book', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(622, 'member_type', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(623, 'issue', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(624, 'book', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(625, 'members', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(626, 'library_card_no', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(627, 'return_date', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(628, 'member_id', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(629, 'book_issued', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(630, 'timezone', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(631, 'accountants', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(632, 'librarians', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(633, 'add_librarian', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(634, 'librarian_photo', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(635, 'librarian_list', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(636, 'edit_librarian', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(637, 'current_username', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(638, 'new_username', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(639, 'confirm_username', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(640, 'change_username', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(641, 'add_accountant', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(642, 'accountant_list', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(643, 'accountant_photo', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(644, 'edit_accountant', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(645, 'book_no', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(646, 'users', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(647, 'isbn_no', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(648, 'issue_return', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(649, 'add_student', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(650, 'books_issue_return', 'no', '2017-05-19 21:33:58', '0000-00-00 00:00:00'),
(651, 'member_list', 'no', '2017-05-29 22:41:22', '0000-00-00 00:00:00'),
(652, 'issue_date', 'no', '2017-05-29 22:41:22', '0000-00-00 00:00:00'),
(653, 'surrender_membership', 'no', '2017-05-29 22:41:22', '0000-00-00 00:00:00'),
(654, 'fees_group', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(655, 'add_fees_group', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(656, 'fees_group_list', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(657, 'due_date', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(658, 'fees_code', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(659, 'fees_discount', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(660, 'edit_fees_discount', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(661, 'discount_code', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(662, 'fees_discount_list', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(663, 'add_fees_discount', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(664, 'all', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(665, 'assign_fees_discount', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(666, 'partial', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(667, 'applied', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(668, 'student_fees', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(669, 'confirmation', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(670, 'assign / view', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(671, 'edit_fees_group', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(672, 'edit_fees_type', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(673, 'edit_fees_master', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(674, 'apply_discount', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(675, 'discount_of', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(676, 'add_member', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(677, 'email_setting', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(678, 'email_engine', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(679, 'smtp_username', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(680, 'smtp_password', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(681, 'smtp_server', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(682, 'smtp_port', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(683, 'smtp_security', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(684, 'assigned', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(685, 'admin_users', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(686, 'add_admin_user', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(687, 'admin_name', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(688, 'admin_email', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(689, 'admin_password', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(690, 'forgot_password', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00'),
(691, 'assign_fees_group', 'no', '2017-08-02 18:19:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lang_pharses`
--

CREATE TABLE `lang_pharses` (
`id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `key_id` int(11) DEFAULT NULL,
  `pharses` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `text` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=74022 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lang_pharses`
--

INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES
(997, 4, 620, 'Absent', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(998, 4, 437, 'Academic Fees Detail', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(999, 4, 211, 'Academics', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1000, 4, 79, 'Action', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1001, 4, 595, 'Active', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1002, 4, 228, 'Add', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1003, 4, 64, 'Add Another Language', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1004, 4, 499, 'Add Book', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1005, 4, 51, 'Add Category', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1006, 4, 468, 'Add College', NULL, 'no', '2017-10-11 03:10:49', '0000-00-00 00:00:00'),
(1007, 4, 355, 'Add Exam', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1008, 4, 341, 'Add Expense', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1009, 4, 347, 'Add Expense Head', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1010, 4, 616, 'Add Fee Category', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1011, 4, 35, 'Add Fees', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1012, 4, 43, 'Add Fees Master', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1013, 4, 45, 'Add Fees Type', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1014, 4, 361, 'Add Grade', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1015, 4, 397, 'Add Hostel', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1016, 4, 458, 'Add Hostel Room', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1017, 4, 449, 'Add Image', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1018, 4, 613, 'Add Language', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1019, 4, 445, 'Add More Details', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1020, 4, 137, 'Add New SMS Configuration', NULL, 'no', '2017-04-10 14:10:03', '0000-00-00 00:00:00'),
(1021, 4, 402, 'Add Room Type', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1022, 4, 57, 'Add Class', NULL, 'no', '2017-10-11 03:14:20', '0000-00-00 00:00:00'),
(1023, 4, 53, 'Add Session', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1024, 4, 370, 'Add Subject', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1025, 4, 369, 'Add Teacher', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1026, 4, 519, 'Add Timetable', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1027, 4, 508, 'Add Vehicle', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1028, 4, 528, 'Add/Edit', NULL, 'no', '2017-04-10 14:10:22', '0000-00-00 00:00:00'),
(1029, 4, 164, 'Address', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1030, 4, 447, 'Address Details', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1031, 4, 494, 'Admin Login', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1032, 4, 303, 'Admission', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1033, 4, 11, 'Admission Date', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1034, 4, 181, 'Admission Discount', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1035, 4, 170, 'Admission Number', NULL, 'no', '2017-05-20 08:10:16', '0000-00-00 00:00:00'),
(1036, 4, 89, 'Amount', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1038, 4, 366, 'Assign Subject', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1039, 4, 565, 'Assign Subjects', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1040, 4, 571, 'Assign Vehicle', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1041, 4, 501, 'Assign Vehicle On Route', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1042, 4, 387, 'Assignment List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1043, 4, 567, 'Assignments', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1044, 4, 516, 'Attendance', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1045, 4, 349, 'Attendance Already Submitted As Holiday', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1046, 4, 348, 'Attendance Already Submitted You Can Edit Record', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1047, 4, 561, 'Attendance By Date', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1048, 4, 562, 'Attendance Report', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1049, 4, 351, 'Attendance Saved Successfully', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1050, 4, 537, 'Authentication Token', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1051, 4, 190, 'Author', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1052, 4, 385, 'Available For', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1053, 4, 382, 'Available For All Classes', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1054, 4, 577, 'Backup / Restore', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1055, 4, 423, 'Backup Files', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1056, 4, 421, 'Backup History', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1057, 4, 108, 'Balance', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1058, 4, 92, 'Balance Description', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1059, 4, 320, 'Balance Details', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1060, 4, 328, 'Balance Fees', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1061, 4, 558, 'Balance Fees Report', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1062, 4, 23, 'Bank Account Number', NULL, 'no', '2017-05-20 08:10:30', '0000-00-00 00:00:00'),
(1063, 4, 24, 'Bank Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1064, 4, 227, 'Basic Information', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1065, 4, 391, 'Book Details', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1066, 4, 393, 'Book List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1067, 4, 199, 'Book Title', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1068, 4, 192, 'Book Price', NULL, 'no', '2017-04-10 14:13:06', '0000-00-00 00:00:00'),
(1069, 4, 524, 'Books', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1070, 4, 464, 'By Date', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1071, 4, 141, 'Cancel', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1072, 4, 471, 'Cash', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1073, 4, 168, 'Cast', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1074, 4, 16, 'Category', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1075, 4, 50, 'Category List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1076, 4, 275, 'Change Password', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1077, 4, 80, 'Change Status', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1078, 4, 472, 'Cheque', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1079, 4, 9, 'College', NULL, 'no', '2017-10-11 03:12:38', '0000-00-00 00:00:00'),
(1080, 4, 429, 'Class Fees Detail', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1081, 4, 54, 'College List', NULL, 'no', '2017-10-11 03:11:11', '0000-00-00 00:00:00'),
(1082, 4, 333, 'College Class', NULL, 'no', '2017-10-11 03:21:31', '0000-00-00 00:00:00'),
(1083, 4, 492, 'College Timetable', NULL, 'no', '2017-10-11 03:11:42', '0000-00-00 00:00:00'),
(1084, 4, 116, 'Colleges', NULL, 'no', '2017-10-11 03:11:49', '0000-00-00 00:00:00'),
(1085, 4, 532, 'Clickatell Api Id', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1086, 4, 531, 'Clickatell Password', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1087, 4, 533, 'Clickatell SMS Gateway', NULL, 'no', '2017-04-10 14:14:20', '0000-00-00 00:00:00'),
(1088, 4, 530, 'Clickatell Username', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1089, 4, 319, 'Collect Fees', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1090, 4, 330, 'Collect Transport Fees', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1091, 4, 117, 'Collection', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1092, 4, 284, 'Communicate', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1093, 4, 252, 'Compose New Message', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1094, 4, 123, 'Confirm Password', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1095, 4, 384, 'Content File', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1096, 4, 380, 'Content List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1097, 4, 246, 'Content Title', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1098, 4, 203, 'Content Type', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1099, 4, 233, 'Continue', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1100, 4, 456, 'Cost Per Bed', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1101, 4, 422, 'Create Backup', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1102, 4, 263, 'Create Category', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1103, 4, 395, 'Create Route', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1104, 4, 65, 'Created At', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1105, 4, 295, 'Currency', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1106, 4, 296, 'Currency Symbol', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1107, 4, 302, 'Current', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1108, 4, 17, 'Current Address', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1109, 4, 121, 'Current Password', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1110, 4, 547, 'Current Session', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1111, 4, 535, 'Custom SMS Gateway', NULL, 'no', '2017-04-10 14:15:00', '0000-00-00 00:00:00'),
(1112, 4, 125, 'Date', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1113, 4, 294, 'Date Format', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1114, 4, 495, 'Date From', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1115, 4, 13, 'Date Of Birth', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1116, 4, 225, 'Date To', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1117, 4, 491, 'Day', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1118, 4, 470, 'DD', NULL, 'no', '2017-04-10 14:15:12', '0000-00-00 00:00:00'),
(1120, 4, 311, 'Delete', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1121, 4, 107, 'Deposit', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1122, 4, 101, 'Description', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1123, 4, 593, 'Detailed View', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1124, 4, 306, 'Details', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1125, 4, 612, 'Disabled', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1126, 4, 91, 'Discount', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1127, 4, 292, 'Download Sample Import File', NULL, 'no', '2017-04-10 14:16:06', '0000-00-00 00:00:00'),
(1128, 4, 438, 'Document List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1129, 4, 312, 'Documents', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1130, 4, 598, 'Download', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1131, 4, 212, 'Download Center', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1132, 4, 321, 'Download PDF', NULL, 'no', '2017-04-10 14:16:23', '0000-00-00 00:00:00'),
(1133, 4, 509, 'Driver Contact', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1134, 4, 510, 'Driver License', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1135, 4, 511, 'Driver Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1136, 4, 48, 'Edit', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1137, 4, 392, 'Edit Book', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1138, 4, 465, 'Edit Category', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1139, 4, 375, 'Edit College', NULL, 'no', '2017-10-11 03:12:07', '0000-00-00 00:00:00'),
(1140, 4, 467, 'Edit Exam', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1141, 4, 342, 'Edit Expense', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1142, 4, 345, 'Edit Expense Head', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1143, 4, 617, 'Edit Fee Category', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1144, 4, 360, 'Edit Grade', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1145, 4, 398, 'Edit Hostel', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1146, 4, 453, 'Edit Hostel Room', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1147, 4, 72, 'Edit Logo', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1148, 4, 406, 'Edit Message', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1149, 4, 272, 'Edit Notification', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1150, 4, 404, 'Edit Room Type', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1151, 4, 396, 'Edit Route', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1152, 4, 377, 'Edit Class', NULL, 'no', '2017-10-11 03:14:48', '0000-00-00 00:00:00'),
(1153, 4, 411, 'Edit Session', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1154, 4, 520, 'Edit Setting', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1155, 4, 374, 'Edit Subject', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1156, 4, 368, 'Edit Teacher', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1157, 4, 505, 'Edit Vehicle', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1158, 4, 500, 'Edit Vehicle On Route', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1159, 4, 3, 'Email', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1160, 4, 611, 'Enabled', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1161, 4, 238, 'End Time', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1162, 4, 171, 'Enrollment Number', NULL, 'no', '2017-05-20 08:10:51', '0000-00-00 00:00:00'),
(1163, 4, 600, 'Enter Room Number', NULL, 'no', '2017-05-20 08:11:06', '0000-00-00 00:00:00'),
(1164, 4, 236, 'Exam', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1165, 4, 235, 'Exam List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1166, 4, 575, 'Exam Marks Report', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1167, 4, 142, 'Exam Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1168, 4, 466, 'Exam Not Allotted', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1169, 4, 482, 'Exam Schedule', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1170, 4, 358, 'Exam Scheduled', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1171, 4, 523, 'Exam Status', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1172, 4, 439, 'Exam Timetable', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1173, 4, 210, 'Examinations', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1174, 4, 340, 'Expense Detail', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1175, 4, 339, 'Expense Head', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1176, 4, 344, 'Expense Head List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1177, 4, 338, 'Expense Id', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1178, 4, 343, 'Expense List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1179, 4, 603, 'Expense Result', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1180, 4, 206, 'Expenses', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1181, 4, 33, 'Export Format', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1182, 4, 232, 'Fail', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1183, 4, 202, 'Fare', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1184, 4, 287, 'Father', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1185, 4, 157, 'Father Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1186, 4, 159, 'Father Occupation', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1187, 4, 158, 'Father Phone', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1188, 4, 39, 'Fee Category', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1189, 4, 115, 'Fees Master', NULL, 'no', '2017-04-10 14:18:52', '0000-00-00 00:00:00'),
(1190, 4, 40, 'Fees Type', NULL, 'no', '2017-04-10 14:18:56', '0000-00-00 00:00:00'),
(1191, 4, 184, 'Fees', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1192, 4, 583, 'Fees Category', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1193, 4, 615, 'Fees Category List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1195, 4, 208, 'Fees Collection', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1196, 4, 584, 'Fees Collection & Expenses For', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1197, 4, 581, 'Fees Collection & Expenses For Session', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1198, 4, 337, 'Fees Collection Details', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1199, 4, 156, 'Fees Discount', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1200, 4, 554, 'Fees Master', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1201, 4, 44, 'Fees Master List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1202, 4, 582, 'Fees Receipt', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1203, 4, 557, 'Fees Statement', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1204, 4, 102, 'Fees Subtotal', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1205, 4, 452, 'Fees Type', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1206, 4, 46, 'Fees Type List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1207, 4, 602, 'Female', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1208, 4, 462, 'Fill Marks', NULL, 'no', '2017-08-02 01:10:58', '0000-00-00 00:00:00'),
(1209, 4, 87, 'Fine', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1210, 4, 7, 'First Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1211, 4, 240, 'Full Mark', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1212, 4, 299, 'Full Marks', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1213, 4, 540, 'Gateway Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1214, 4, 186, 'Gender', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1215, 4, 408, 'General Settings', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1216, 4, 34, 'Generate PDF', NULL, 'no', '2017-04-10 14:20:09', '0000-00-00 00:00:00'),
(1217, 4, 579, 'Grade', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1218, 4, 364, 'Grade List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1219, 4, 145, 'Grade Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1220, 4, 106, 'Grand Total', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1221, 4, 327, 'Gross Fees', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1222, 4, 30, 'Guardian Address', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1223, 4, 273, 'Guardian Details', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1224, 4, 27, 'Guardian Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1225, 4, 163, 'Guardian Occupation', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1226, 4, 29, 'Guardian Phone', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1227, 4, 28, 'Guardian Relation', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1228, 4, 352, 'Holiday', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1229, 4, 220, 'Hostel', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1230, 4, 587, 'Hostel - Rooms', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1231, 4, 399, 'Hostel List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1232, 4, 221, 'Hostel Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1233, 4, 457, 'Hostel Room List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1234, 4, 481, 'Hostel Rooms', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1235, 4, 169, 'Id', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1236, 4, 309, 'Identification', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1237, 4, 493, 'If Guardian Address is Current Address', NULL, 'no', '2017-04-10 14:20:50', '0000-00-00 00:00:00'),
(1238, 4, 546, 'If Guardian Is', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1239, 4, 446, 'If Permanent Address is Current Address', NULL, 'no', '2017-04-10 14:20:57', '0000-00-00 00:00:00'),
(1240, 4, 25, 'IFSC Code', NULL, 'no', '2017-04-10 14:21:18', '0000-00-00 00:00:00'),
(1241, 4, 32, 'Import Excel', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1242, 4, 291, 'Import Student', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1243, 4, 197, 'Intake', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1244, 4, 86, 'Invoice Number', NULL, 'no', '2017-05-20 08:11:26', '0000-00-00 00:00:00'),
(1245, 4, 188, 'ISBN', NULL, 'no', '2017-04-10 14:21:32', '0000-00-00 00:00:00'),
(1246, 4, 165, 'Language', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1247, 4, 63, 'Language List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1248, 4, 529, 'Language RTL Text Mode', NULL, 'no', '2017-04-10 14:21:53', '0000-00-00 00:00:00'),
(1249, 4, 578, 'Languages', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1250, 4, 8, 'Last Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1251, 4, 619, 'Late', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1252, 4, 618, 'Late With Excuse', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1253, 4, 234, 'Leave', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1254, 4, 214, 'Library', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1255, 4, 585, 'Library - Books', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1256, 4, 479, 'Library Book', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1257, 4, 526, 'Library Books', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1258, 4, 229, 'List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1259, 4, 485, 'Local Identification Number', NULL, 'no', '2017-05-20 08:11:34', '0000-00-00 00:00:00'),
(1260, 4, 436, 'Login Details', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1261, 4, 590, 'Login Url', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1262, 4, 514, 'Logout', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1263, 4, 601, 'Male', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1264, 4, 70, 'Manage', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1265, 4, 353, 'Mark As Holiday', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1266, 4, 459, 'Mark Register', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1267, 4, 564, 'Marks Grade', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1268, 4, 563, 'Marks Register', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1269, 4, 357, 'Marks Register Prepared', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1270, 4, 265, 'Message', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1271, 4, 256, 'Message To', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1272, 4, 270, 'Miscellaneous Details', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1273, 4, 12, 'Mobile Number', NULL, 'no', '2017-05-20 08:11:39', '0000-00-00 00:00:00'),
(1274, 4, 487, 'Mode', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1275, 4, 489, 'Month', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1276, 4, 432, 'Monthly Expenses', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1277, 4, 431, 'Monthly Fees Collection', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1278, 4, 288, 'Mother', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1279, 4, 160, 'Mother Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1280, 4, 162, 'Mother Occupation', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1281, 4, 161, 'Mother Phone', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1282, 4, 386, 'My Children', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1283, 4, 486, 'My Profile', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1284, 4, 153, 'Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1285, 4, 484, 'National Identification Number', NULL, 'no', '2017-05-20 08:11:44', '0000-00-00 00:00:00'),
(1286, 4, 122, 'New Password', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1287, 4, 442, 'Next Session Status', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1288, 4, 310, 'No', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1289, 4, 354, 'No Attendance Prepared', NULL, 'no', '2017-04-10 14:23:26', '0000-00-00 00:00:00'),
(1290, 4, 614, 'No Description', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1291, 4, 475, 'No Exam Prepared', NULL, 'no', '2017-04-10 14:23:35', '0000-00-00 00:00:00'),
(1292, 4, 430, 'No Fees Found', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1293, 4, 455, 'Number Of Bed', NULL, 'no', '2017-05-20 04:13:42', '0000-00-00 00:00:00'),
(1294, 4, 201, 'Number Of Vehicle', NULL, 'no', '2017-05-20 04:13:54', '0000-00-00 00:00:00'),
(1295, 4, 259, 'No Record Found', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1296, 4, 443, 'No Result Prepared', NULL, 'no', '2017-04-10 14:23:47', '0000-00-00 00:00:00'),
(1297, 4, 94, 'No Search Record Found', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1298, 4, 317, 'No Transaction Found', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1299, 4, 331, 'No Transport Fees Found', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1300, 4, 527, 'No vehicle allotted to this route', NULL, 'no', '2017-04-10 14:24:28', '0000-00-00 00:00:00'),
(1301, 4, 606, 'Not', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1302, 4, 290, 'Not Scheduled', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1303, 4, 150, 'Note', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1304, 4, 253, 'Notice', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1305, 4, 285, 'Notice Board', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1306, 4, 254, 'Notice Date', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1307, 4, 278, 'Notifications', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1308, 4, 300, 'Obtain Marks', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1309, 4, 419, 'Off', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1310, 4, 420, 'On', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1311, 4, 496, 'Other', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1312, 4, 335, 'Other Discount', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1313, 4, 390, 'Other Download List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1314, 4, 597, 'Other Downloads', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1315, 4, 544, 'Paid', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1316, 4, 324, 'Paid Fees', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1317, 4, 257, 'Parent', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1318, 4, 444, 'Parent Guardian Detail', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1319, 4, 231, 'Pass', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1320, 4, 241, 'Passing Marks', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1321, 4, 167, 'Password', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1322, 4, 313, 'Payment', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1323, 4, 274, 'Payment Id', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1324, 4, 450, 'Payment Id Detail', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1325, 4, 418, 'Paypal Email', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1326, 4, 416, 'Paypal Password', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1327, 4, 414, 'Paypal Setting', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1328, 4, 417, 'Paypal Signature', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1329, 4, 415, 'Paypal Username', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1330, 4, 605, 'PDF', NULL, 'no', '2017-04-10 14:25:16', '0000-00-00 00:00:00'),
(1331, 4, 147, 'Percent', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1332, 4, 363, 'Percent From', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1333, 4, 149, 'Percent To', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1334, 4, 362, 'Percent Upto', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1335, 4, 580, 'Percentage', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1336, 4, 18, 'Permanent Address', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1337, 4, 73, 'Phone', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1339, 4, 463, 'Post New Message', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1340, 4, 193, 'Post Date', NULL, 'no', '2017-04-10 14:25:57', '0000-00-00 00:00:00'),
(1341, 4, 542, 'Practical', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1342, 4, 543, 'Present', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1343, 4, 267, 'Previous School Details', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1344, 4, 400, 'Print', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1345, 4, 329, 'Print Selected', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1346, 4, 297, 'Profile', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1347, 4, 245, 'Promote', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1348, 4, 440, 'Promote In Session', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1349, 4, 552, 'Promote Students', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1350, 4, 441, 'Promote Students In Next Session', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1351, 4, 286, 'Publish Date', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1352, 4, 255, 'Publish On', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1353, 4, 189, 'Publisher', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1354, 4, 191, 'Qty', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1355, 4, 548, 'Quick Links', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1356, 4, 218, 'Rack Number', NULL, 'no', '2017-05-20 08:12:23', '0000-00-00 00:00:00'),
(1357, 4, 104, 'Receipt Number', NULL, 'no', '2017-05-20 08:12:19', '0000-00-00 00:00:00'),
(1358, 4, 538, 'Registered Phone Number', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1359, 4, 15, 'Religion', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1360, 4, 82, 'Report', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1361, 4, 525, 'Report Card', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1362, 4, 216, 'Reports', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1363, 4, 85, 'Reset', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1364, 4, 427, 'Restore', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1365, 4, 230, 'Result', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1366, 4, 473, 'Revert', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1367, 4, 6, 'Roll Number', NULL, 'no', '2017-05-20 08:12:27', '0000-00-00 00:00:00'),
(1368, 4, 239, 'Room', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1369, 4, 242, 'Room Number', NULL, 'no', '2017-05-20 08:12:33', '0000-00-00 00:00:00'),
(1370, 4, 454, 'Room Number / Name', NULL, 'no', '2017-05-20 04:15:35', '0000-00-00 00:00:00'),
(1371, 4, 401, 'Room Type', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1372, 4, 403, 'Room Type List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1373, 4, 503, 'Route', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1374, 4, 394, 'Route List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1375, 4, 223, 'Route Title', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1376, 4, 569, 'Routes', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1377, 4, 185, 'RTE', NULL, 'no', '2017-04-10 14:27:10', '0000-00-00 00:00:00'),
(1378, 4, 66, 'Save', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1379, 4, 298, 'Save Attendance', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1380, 4, 607, 'Scheduled', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1381, 4, 151, 'School Code', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1383, 4, 69, 'School Logo', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1384, 4, 2, 'School Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1385, 4, 37, 'Search', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1386, 4, 497, 'Search By Keyword', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1387, 4, 588, 'Search By Name, Roll Number, Enroll Number, National Id, Local Id Etc..', NULL, 'no', '2017-05-20 08:12:47', '0000-00-00 00:00:00'),
(1388, 4, 556, 'Search Due Fees', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1389, 4, 559, 'Search Expense', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1390, 4, 555, 'Search Fees Payment', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1391, 4, 591, 'Search Student', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1392, 4, 336, 'Search Transaction', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1393, 4, 10, 'Class', NULL, 'no', '2017-10-11 03:14:34', '0000-00-00 00:00:00'),
(1394, 4, 56, 'Class List', NULL, 'no', '2017-10-11 03:15:02', '0000-00-00 00:00:00'),
(1395, 4, 451, 'Class Name', NULL, 'no', '2017-10-11 03:18:35', '0000-00-00 00:00:00'),
(1396, 4, 566, 'Classes', NULL, 'no', '2017-10-11 03:15:16', '0000-00-00 00:00:00'),
(1397, 4, 407, 'Select', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1398, 4, 84, 'Select Criteria', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1399, 4, 293, 'Select CSV File', NULL, 'no', '2017-04-10 14:28:35', '0000-00-00 00:00:00'),
(1400, 4, 31, 'Select Image', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1401, 4, 68, 'Select Logo', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1402, 4, 266, 'Send', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1403, 4, 572, 'Send Message', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1404, 4, 1, 'Session', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1405, 4, 52, 'Session List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1406, 4, 576, 'Session Setting', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1407, 4, 410, 'Session Start Month', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1408, 4, 517, 'Show', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1409, 4, 305, 'Sibling', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1411, 4, 152, 'Sign In', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1412, 4, 477, 'Smart School', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1413, 4, 76, 'SMS Configuration', NULL, 'no', '2017-04-10 14:29:11', '0000-00-00 00:00:00'),
(1414, 4, 77, 'SMS Gateway URL', NULL, 'no', '2017-05-20 04:17:13', '0000-00-00 00:00:00'),
(1415, 4, 476, 'SMS Setting', NULL, 'no', '2017-04-10 14:29:22', '0000-00-00 00:00:00'),
(1416, 4, 237, 'Start Time', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1417, 4, 78, 'Status', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1418, 4, 61, 'Student', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1419, 4, 550, 'Student Admission', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1420, 4, 560, 'Student Attendance', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1421, 4, 551, 'Student Categories', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1422, 4, 325, 'Student Detail', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1423, 4, 549, 'Student Details', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1424, 4, 322, 'Student Fees Report', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1425, 4, 207, 'Student Information', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1426, 4, 592, 'Students List', NULL, 'no', '2017-04-10 14:29:55', '0000-00-00 00:00:00'),
(1427, 4, 183, 'Student Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1428, 4, 573, 'Student Report', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1429, 4, 434, 'Students', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1430, 4, 568, 'Study Material', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1431, 4, 388, 'Study Material List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1432, 4, 217, 'Subject', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1433, 4, 144, 'Subject Code', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1434, 4, 261, 'Subject List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1435, 4, 143, 'Subject Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1436, 4, 521, 'Subject Type', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1437, 4, 483, 'Subjects', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1438, 4, 359, 'Submit', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1439, 4, 596, 'Syllabus', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1440, 4, 389, 'Syllabus List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1441, 4, 215, 'System Settings', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1442, 4, 258, 'Teacher', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1443, 4, 260, 'Teacher Detail', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1444, 4, 251, 'Teacher List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1445, 4, 166, 'Teacher Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1446, 4, 187, 'Teacher Photo', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1447, 4, 469, 'Teacher Subject', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1448, 4, 433, 'Teachers', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1449, 4, 541, 'Theory', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1450, 4, 264, 'Title', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1451, 4, 610, 'To', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1452, 4, 90, 'Total', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1453, 4, 182, 'Total Balance', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1454, 4, 323, 'Total Fees', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1455, 4, 301, 'Total Marks', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1456, 4, 180, 'Total Paid Fees', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1457, 4, 332, 'Total Transport Fees', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1458, 4, 609, 'Transaction From', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1459, 4, 574, 'Transaction Report', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1460, 4, 222, 'Transport', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1461, 4, 586, 'Transport - Routes', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1462, 4, 155, 'Transport Fees', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1463, 4, 318, 'Transport Fees Details', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1464, 4, 480, 'Transport Routes', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1465, 4, 536, 'Twilio Account SID', NULL, 'no', '2017-04-10 14:31:04', '0000-00-00 00:00:00'),
(1466, 4, 534, 'Twilio SMS Gateway', NULL, 'no', '2017-04-10 14:31:10', '0000-00-00 00:00:00'),
(1467, 4, 88, 'Type', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1468, 4, 599, 'Unpaid', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1469, 4, 490, 'Upload', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1470, 4, 378, 'Upload Content', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1471, 4, 205, 'Upload Date', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1472, 4, 268, 'Upload Documents', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1473, 4, 424, 'Upload From Local Directory', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1474, 4, 488, 'URL', NULL, 'no', '2017-04-10 14:31:27', '0000-00-00 00:00:00'),
(1475, 4, 478, 'User Login', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1476, 4, 74, 'User Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1477, 4, 589, 'User Type', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1478, 4, 539, 'Username', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1479, 4, 506, 'Vehicle', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1480, 4, 507, 'Vehicle List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1481, 4, 513, 'Vehicle Model', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1482, 4, 512, 'Vehicle Number', NULL, 'no', '2017-05-20 08:12:56', '0000-00-00 00:00:00'),
(1483, 4, 502, 'Vehicle Route List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1484, 4, 504, 'Vehicle Routes', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1485, 4, 570, 'Vehicles', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1486, 4, 474, 'View', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1487, 4, 522, 'View Detail', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1488, 4, 604, 'View Schedule', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1489, 4, 356, 'View Status', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1490, 4, 280, 'Visibility', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1491, 4, 279, 'Visible To All', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1492, 4, 515, 'Year Made', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1493, 4, 545, 'Yes', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1494, 4, 350, 'You Can Edit Record', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(36671, 4, 642, 'Accountant List', NULL, 'no', '2017-05-20 04:03:47', '0000-00-00 00:00:00'),
(36672, 4, 643, 'Accountant Photo', NULL, 'no', '2017-05-20 04:03:56', '0000-00-00 00:00:00'),
(36673, 4, 631, 'Accountants', NULL, 'no', '2017-05-20 04:04:03', '0000-00-00 00:00:00'),
(36674, 4, 641, 'Add Accountant', NULL, 'no', '2017-05-20 04:04:14', '0000-00-00 00:00:00'),
(36675, 4, 633, 'Add Librarian', NULL, 'no', '2017-05-20 04:04:40', '0000-00-00 00:00:00'),
(36677, 4, 649, 'Add Student', NULL, 'no', '2017-05-20 04:05:41', '0000-00-00 00:00:00'),
(36678, 4, 624, 'Book', NULL, 'no', '2017-05-20 04:06:04', '0000-00-00 00:00:00'),
(36679, 4, 629, 'Book Issued', NULL, 'no', '2017-05-20 04:06:13', '0000-00-00 00:00:00'),
(36680, 4, 645, 'Book Number', NULL, 'no', '2017-05-20 04:06:30', '0000-00-00 00:00:00'),
(36681, 4, 650, 'Books Issue Retun', NULL, 'no', '2017-05-20 04:06:49', '0000-00-00 00:00:00'),
(36682, 4, 640, 'Change Username', NULL, 'no', '2017-05-20 04:07:05', '0000-00-00 00:00:00'),
(36683, 4, 639, 'Confirm Username', NULL, 'no', '2017-05-20 04:07:39', '0000-00-00 00:00:00'),
(36684, 4, 637, 'Current Username', NULL, 'no', '2017-05-20 04:08:06', '0000-00-00 00:00:00'),
(36685, 4, 644, 'Edit Accountant', NULL, 'no', '2017-05-20 04:08:44', '0000-00-00 00:00:00'),
(36686, 4, 636, 'Edit Librarian', NULL, 'no', '2017-05-20 04:09:30', '0000-00-00 00:00:00'),
(36687, 4, 647, 'ISBN Number', NULL, 'no', '2017-05-20 04:10:25', '0000-00-00 00:00:00'),
(36688, 4, 623, 'Issue', NULL, 'no', '2017-05-20 04:10:30', '0000-00-00 00:00:00'),
(36689, 4, 621, 'Issue Book', NULL, 'no', '2017-05-20 04:10:40', '0000-00-00 00:00:00'),
(36690, 4, 648, 'Issue Return', NULL, 'no', '2017-05-20 05:05:21', '0000-00-00 00:00:00'),
(36691, 4, 635, 'Librarian List', NULL, 'no', '2017-05-20 04:11:31', '0000-00-00 00:00:00'),
(36692, 4, 634, 'Librarian Photo', NULL, 'no', '2017-05-20 04:11:38', '0000-00-00 00:00:00'),
(36693, 4, 632, 'Librarian', NULL, 'no', '2017-05-20 04:11:42', '0000-00-00 00:00:00'),
(36694, 4, 632, 'Librarians', NULL, 'no', '2017-05-20 04:11:45', '0000-00-00 00:00:00'),
(36695, 4, 632, 'Librarians', NULL, 'no', '2017-05-20 04:11:48', '0000-00-00 00:00:00'),
(36696, 4, 626, 'Library Card Number', NULL, 'no', '2017-05-20 04:12:23', '0000-00-00 00:00:00'),
(36697, 4, 628, 'Member Id', NULL, 'no', '2017-05-20 04:12:53', '0000-00-00 00:00:00'),
(36698, 4, 622, 'Member Type', NULL, 'no', '2017-05-20 04:13:01', '0000-00-00 00:00:00'),
(36699, 4, 625, 'Members', NULL, 'no', '2017-05-20 04:13:06', '0000-00-00 00:00:00'),
(36700, 4, 638, 'New Username', NULL, 'no', '2017-05-20 04:13:23', '0000-00-00 00:00:00'),
(36701, 4, 627, 'Return Date', NULL, 'no', '2017-05-20 04:15:06', '0000-00-00 00:00:00'),
(36702, 4, 630, 'Timezone', NULL, 'no', '2017-05-20 04:17:48', '0000-00-00 00:00:00'),
(36703, 4, 646, 'Users', NULL, 'no', '2017-05-20 04:18:21', '0000-00-00 00:00:00'),
(73979, 4, 653, 'Surrender Membership', NULL, 'no', '2017-05-29 18:26:46', '0000-00-00 00:00:00'),
(73980, 4, 651, 'Members List', NULL, 'no', '2017-05-29 18:27:05', '0000-00-00 00:00:00'),
(73981, 4, 651, 'Members List', NULL, 'no', '2017-05-29 18:27:18', '0000-00-00 00:00:00'),
(73982, 4, 652, 'Issue Date', NULL, 'no', '2017-05-29 18:27:35', '0000-00-00 00:00:00'),
(73983, 4, 686, 'Add Admin User', NULL, 'no', '2017-08-02 01:04:51', '0000-00-00 00:00:00'),
(73984, 4, 655, 'Add Fees Group', NULL, 'no', '2017-08-02 01:05:14', '0000-00-00 00:00:00'),
(73985, 4, 663, 'Add Fees Discount', NULL, 'no', '2017-08-02 01:05:27', '0000-00-00 00:00:00'),
(73986, 4, 676, 'Add Member', NULL, 'no', '2017-08-02 01:05:40', '0000-00-00 00:00:00'),
(73987, 4, 688, 'Admin Email', NULL, 'no', '2017-08-02 01:05:53', '0000-00-00 00:00:00'),
(73988, 4, 687, 'Admin Name', NULL, 'no', '2017-08-02 01:06:04', '0000-00-00 00:00:00'),
(73989, 4, 689, 'Admin Password', NULL, 'no', '2017-08-02 01:06:11', '0000-00-00 00:00:00'),
(73990, 4, 685, 'Admin Users', NULL, 'no', '2017-08-02 01:06:22', '0000-00-00 00:00:00'),
(73991, 4, 664, 'All', NULL, 'no', '2017-08-02 01:06:28', '0000-00-00 00:00:00'),
(73992, 4, 667, 'Applied', NULL, 'no', '2017-08-02 01:06:37', '0000-00-00 00:00:00'),
(73993, 4, 674, 'Apply Discount', NULL, 'no', '2017-08-02 01:06:48', '0000-00-00 00:00:00'),
(73994, 4, 670, 'Assign / View', NULL, 'no', '2017-08-02 01:07:03', '0000-00-00 00:00:00'),
(73995, 4, 665, 'Assign Fees Discount', NULL, 'no', '2017-08-02 01:07:16', '0000-00-00 00:00:00'),
(73996, 4, 684, 'Assigned', NULL, 'no', '2017-08-02 01:07:29', '0000-00-00 00:00:00'),
(73997, 4, 669, 'Confirmation', NULL, 'no', '2017-08-02 01:07:42', '0000-00-00 00:00:00'),
(73998, 4, 661, 'Discount Code', NULL, 'no', '2017-08-02 01:07:54', '0000-00-00 00:00:00'),
(73999, 4, 675, 'Discount of', NULL, 'no', '2017-08-02 01:08:03', '0000-00-00 00:00:00'),
(74000, 4, 657, 'Due Date', NULL, 'no', '2017-08-02 01:08:12', '0000-00-00 00:00:00'),
(74001, 4, 660, 'Edit Fees Discount', NULL, 'no', '2017-08-02 01:08:24', '0000-00-00 00:00:00'),
(74002, 4, 671, 'Edit Fees Group', NULL, 'no', '2017-08-02 01:08:35', '0000-00-00 00:00:00'),
(74003, 4, 673, 'Edit Fees Master', NULL, 'no', '2017-08-02 01:08:44', '0000-00-00 00:00:00'),
(74004, 4, 672, 'Edit Fees Type', NULL, 'no', '2017-08-02 01:08:53', '0000-00-00 00:00:00'),
(74005, 4, 678, 'Email Engine', NULL, 'no', '2017-08-02 01:09:02', '0000-00-00 00:00:00'),
(74006, 4, 677, 'Email Setting', NULL, 'no', '2017-08-02 01:09:11', '0000-00-00 00:00:00'),
(74007, 4, 658, 'Fees Code', NULL, 'no', '2017-08-02 01:09:20', '0000-00-00 00:00:00'),
(74008, 4, 659, 'Fees Discount', NULL, 'no', '2017-08-02 01:09:43', '0000-00-00 00:00:00'),
(74009, 4, 662, 'Fees Discount List', NULL, 'no', '2017-08-02 01:10:20', '0000-00-00 00:00:00'),
(74010, 4, 654, 'Fees Group', NULL, 'no', '2017-08-02 01:10:28', '0000-00-00 00:00:00'),
(74011, 4, 656, 'Fees Group List', NULL, 'no', '2017-08-02 01:10:37', '0000-00-00 00:00:00'),
(74012, 4, 690, 'Forgot Password', NULL, 'no', '2017-08-02 01:10:49', '0000-00-00 00:00:00'),
(74013, 4, 690, 'Forgot Password', NULL, 'no', '2017-08-02 01:11:10', '0000-00-00 00:00:00'),
(74014, 4, 666, 'Partial', NULL, 'no', '2017-08-02 01:11:25', '0000-00-00 00:00:00'),
(74015, 4, 680, 'SMTP Password', NULL, 'no', '2017-08-02 01:11:42', '0000-00-00 00:00:00'),
(74016, 4, 682, 'SMTP Port', NULL, 'no', '2017-08-02 01:11:50', '0000-00-00 00:00:00'),
(74017, 4, 683, 'SMTP Security', NULL, 'no', '2017-08-02 01:12:01', '0000-00-00 00:00:00'),
(74018, 4, 681, 'SMTP Server', NULL, 'no', '2017-08-02 01:12:09', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES
(74019, 4, 679, 'SMTP Username', NULL, 'no', '2017-08-02 01:12:17', '0000-00-00 00:00:00'),
(74020, 4, 668, 'Student Fees', NULL, 'no', '2017-08-02 01:12:25', '0000-00-00 00:00:00'),
(74021, 4, 691, 'Assign Fees Group', NULL, 'no', '2017-08-02 01:12:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lang_pharses_old`
--

CREATE TABLE `lang_pharses_old` (
  `id` int(11) NOT NULL DEFAULT '0',
  `lang_id` int(11) DEFAULT NULL,
  `key_id` int(11) DEFAULT NULL,
  `pharses` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `text` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lang_pharses_old`
--

INSERT INTO `lang_pharses_old` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES
(997, 4, 620, 'Absent', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(998, 4, 437, 'Academic Fees Detail', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(999, 4, 211, 'Academics', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1000, 4, 79, 'Action', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1001, 4, 595, 'Active', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1002, 4, 228, 'Add', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1003, 4, 64, 'Add Another Language', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1004, 4, 499, 'Add Book', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1005, 4, 51, 'Add Category', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1006, 4, 468, 'Add Class', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1007, 4, 355, 'Add Exam', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1008, 4, 341, 'Add Expense', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1009, 4, 347, 'Add Expense Head', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1010, 4, 616, 'Add Fee Category', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1011, 4, 35, 'Add Fees', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1012, 4, 43, 'Add Fees Master', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1013, 4, 45, 'Add Fees Type', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1014, 4, 361, 'Add Grade', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1015, 4, 397, 'Add Hostel', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1016, 4, 458, 'Add Hostel Room', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1017, 4, 449, 'Add Image', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1018, 4, 613, 'Add Language', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1019, 4, 445, 'Add More Details', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1020, 4, 137, 'Add New SMS Configuration', NULL, 'no', '2017-04-10 18:40:03', '0000-00-00 00:00:00'),
(1021, 4, 402, 'Add Room Type', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1022, 4, 57, 'Add Section', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1023, 4, 53, 'Add Session', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1024, 4, 370, 'Add Subject', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1025, 4, 369, 'Add Teacher', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1026, 4, 519, 'Add Timetable', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1027, 4, 508, 'Add Vehicle', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1028, 4, 528, 'Add/Edit', NULL, 'no', '2017-04-10 18:40:22', '0000-00-00 00:00:00'),
(1029, 4, 164, 'Address', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1030, 4, 447, 'Address Details', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1031, 4, 494, 'Admin Login', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1032, 4, 303, 'Admission', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1033, 4, 11, 'Admission Date', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1034, 4, 181, 'Admission Discount', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1035, 4, 170, 'Admission Number', NULL, 'no', '2017-05-20 12:40:16', '0000-00-00 00:00:00'),
(1036, 4, 89, 'Amount', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1038, 4, 366, 'Assign Subject', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1039, 4, 565, 'Assign Subjects', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1040, 4, 571, 'Assign Vehicle', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1041, 4, 501, 'Assign Vehicle On Route', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1042, 4, 387, 'Assignment List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1043, 4, 567, 'Assignments', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1044, 4, 516, 'Attendance', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1045, 4, 349, 'Attendance Already Submitted As Holiday', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1046, 4, 348, 'Attendance Already Submitted You Can Edit Record', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1047, 4, 561, 'Attendance By Date', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1048, 4, 562, 'Attendance Report', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1049, 4, 351, 'Attendance Saved Successfully', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1050, 4, 537, 'Authentication Token', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1051, 4, 190, 'Author', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1052, 4, 385, 'Available For', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1053, 4, 382, 'Available For All Classes', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1054, 4, 577, 'Backup / Restore', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1055, 4, 423, 'Backup Files', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1056, 4, 421, 'Backup History', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1057, 4, 108, 'Balance', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1058, 4, 92, 'Balance Description', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1059, 4, 320, 'Balance Details', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1060, 4, 328, 'Balance Fees', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1061, 4, 558, 'Balance Fees Report', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1062, 4, 23, 'Bank Account Number', NULL, 'no', '2017-05-20 12:40:30', '0000-00-00 00:00:00'),
(1063, 4, 24, 'Bank Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1064, 4, 227, 'Basic Information', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1065, 4, 391, 'Book Details', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1066, 4, 393, 'Book List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1067, 4, 199, 'Book Title', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1068, 4, 192, 'Book Price', NULL, 'no', '2017-04-10 18:43:06', '0000-00-00 00:00:00'),
(1069, 4, 524, 'Books', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1070, 4, 464, 'By Date', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1071, 4, 141, 'Cancel', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1072, 4, 471, 'Cash', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1073, 4, 168, 'Cast', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1074, 4, 16, 'Category', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1075, 4, 50, 'Category List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1076, 4, 275, 'Change Password', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1077, 4, 80, 'Change Status', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1078, 4, 472, 'Cheque', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1079, 4, 9, 'Class', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1080, 4, 429, 'Class Fees Detail', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1081, 4, 54, 'Class List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1082, 4, 333, 'Class Section', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1083, 4, 492, 'Class Timetable', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1084, 4, 116, 'Classes', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1085, 4, 532, 'Clickatell Api Id', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1086, 4, 531, 'Clickatell Password', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1087, 4, 533, 'Clickatell SMS Gateway', NULL, 'no', '2017-04-10 18:44:20', '0000-00-00 00:00:00'),
(1088, 4, 530, 'Clickatell Username', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1089, 4, 319, 'Collect Fees', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1090, 4, 330, 'Collect Transport Fees', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1091, 4, 117, 'Collection', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1092, 4, 284, 'Communicate', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1093, 4, 252, 'Compose New Message', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1094, 4, 123, 'Confirm Password', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1095, 4, 384, 'Content File', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1096, 4, 380, 'Content List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1097, 4, 246, 'Content Title', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1098, 4, 203, 'Content Type', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1099, 4, 233, 'Continue', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1100, 4, 456, 'Cost Per Bed', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1101, 4, 422, 'Create Backup', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1102, 4, 263, 'Create Category', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1103, 4, 395, 'Create Route', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1104, 4, 65, 'Created At', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1105, 4, 295, 'Currency', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1106, 4, 296, 'Currency Symbol', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1107, 4, 302, 'Current', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1108, 4, 17, 'Current Address', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1109, 4, 121, 'Current Password', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1110, 4, 547, 'Current Session', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1111, 4, 535, 'Custom SMS Gateway', NULL, 'no', '2017-04-10 18:45:00', '0000-00-00 00:00:00'),
(1112, 4, 125, 'Date', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1113, 4, 294, 'Date Format', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1114, 4, 495, 'Date From', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1115, 4, 13, 'Date Of Birth', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1116, 4, 225, 'Date To', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1117, 4, 491, 'Day', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1118, 4, 470, 'DD', NULL, 'no', '2017-04-10 18:45:12', '0000-00-00 00:00:00'),
(1120, 4, 311, 'Delete', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1121, 4, 107, 'Deposit', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1122, 4, 101, 'Description', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1123, 4, 593, 'Detailed View', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1124, 4, 306, 'Details', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1125, 4, 612, 'Disabled', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1126, 4, 91, 'Discount', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1127, 4, 292, 'Download Sample Import File', NULL, 'no', '2017-04-10 18:46:06', '0000-00-00 00:00:00'),
(1128, 4, 438, 'Document List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1129, 4, 312, 'Documents', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1130, 4, 598, 'Download', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1131, 4, 212, 'Download Center', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1132, 4, 321, 'Download PDF', NULL, 'no', '2017-04-10 18:46:23', '0000-00-00 00:00:00'),
(1133, 4, 509, 'Driver Contact', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1134, 4, 510, 'Driver License', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1135, 4, 511, 'Driver Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1136, 4, 48, 'Edit', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1137, 4, 392, 'Edit Book', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1138, 4, 465, 'Edit Category', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1139, 4, 375, 'Edit Class', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1140, 4, 467, 'Edit Exam', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1141, 4, 342, 'Edit Expense', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1142, 4, 345, 'Edit Expense Head', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1143, 4, 617, 'Edit Fee Category', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1144, 4, 360, 'Edit Grade', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1145, 4, 398, 'Edit Hostel', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1146, 4, 453, 'Edit Hostel Room', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1147, 4, 72, 'Edit Logo', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1148, 4, 406, 'Edit Message', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1149, 4, 272, 'Edit Notification', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1150, 4, 404, 'Edit Room Type', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1151, 4, 396, 'Edit Route', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1152, 4, 377, 'Edit Section', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1153, 4, 411, 'Edit Session', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1154, 4, 520, 'Edit Setting', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1155, 4, 374, 'Edit Subject', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1156, 4, 368, 'Edit Teacher', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1157, 4, 505, 'Edit Vehicle', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1158, 4, 500, 'Edit Vehicle On Route', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1159, 4, 3, 'Email', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1160, 4, 611, 'Enabled', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1161, 4, 238, 'End Time', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1162, 4, 171, 'Enrollment Number', NULL, 'no', '2017-05-20 12:40:51', '0000-00-00 00:00:00'),
(1163, 4, 600, 'Enter Room Number', NULL, 'no', '2017-05-20 12:41:06', '0000-00-00 00:00:00'),
(1164, 4, 236, 'Exam', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1165, 4, 235, 'Exam List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1166, 4, 575, 'Exam Marks Report', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1167, 4, 142, 'Exam Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1168, 4, 466, 'Exam Not Allotted', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1169, 4, 482, 'Exam Schedule', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1170, 4, 358, 'Exam Scheduled', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1171, 4, 523, 'Exam Status', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1172, 4, 439, 'Exam Timetable', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1173, 4, 210, 'Examinations', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1174, 4, 340, 'Expense Detail', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1175, 4, 339, 'Expense Head', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1176, 4, 344, 'Expense Head List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1177, 4, 338, 'Expense Id', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1178, 4, 343, 'Expense List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1179, 4, 603, 'Expense Result', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1180, 4, 206, 'Expenses', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1181, 4, 33, 'Export Format', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1182, 4, 232, 'Fail', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1183, 4, 202, 'Fare', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1184, 4, 287, 'Father', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1185, 4, 157, 'Father Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1186, 4, 159, 'Father Occupation', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1187, 4, 158, 'Father Phone', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1188, 4, 39, 'Fee Category', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1189, 4, 115, 'Fees Master', NULL, 'no', '2017-04-10 18:48:52', '0000-00-00 00:00:00'),
(1190, 4, 40, 'Fees Type', NULL, 'no', '2017-04-10 18:48:56', '0000-00-00 00:00:00'),
(1191, 4, 184, 'Fees', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1192, 4, 583, 'Fees Category', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1193, 4, 615, 'Fees Category List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1195, 4, 208, 'Fees Collection', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1196, 4, 584, 'Fees Collection & Expenses For', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1197, 4, 581, 'Fees Collection & Expenses For Session', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1198, 4, 337, 'Fees Collection Details', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1199, 4, 156, 'Fees Discount', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1200, 4, 554, 'Fees Master', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1201, 4, 44, 'Fees Master List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1202, 4, 582, 'Fees Receipt', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1203, 4, 557, 'Fees Statement', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1204, 4, 102, 'Fees Subtotal', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1205, 4, 452, 'Fees Type', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1206, 4, 46, 'Fees Type List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1207, 4, 602, 'Female', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1208, 4, 462, 'Fill Marks', NULL, 'no', '2017-08-02 05:40:58', '0000-00-00 00:00:00'),
(1209, 4, 87, 'Fine', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1210, 4, 7, 'First Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1211, 4, 240, 'Full Mark', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1212, 4, 299, 'Full Marks', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1213, 4, 540, 'Gateway Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1214, 4, 186, 'Gender', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1215, 4, 408, 'General Settings', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1216, 4, 34, 'Generate PDF', NULL, 'no', '2017-04-10 18:50:09', '0000-00-00 00:00:00'),
(1217, 4, 579, 'Grade', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1218, 4, 364, 'Grade List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1219, 4, 145, 'Grade Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1220, 4, 106, 'Grand Total', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1221, 4, 327, 'Gross Fees', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1222, 4, 30, 'Guardian Address', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1223, 4, 273, 'Guardian Details', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1224, 4, 27, 'Guardian Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1225, 4, 163, 'Guardian Occupation', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1226, 4, 29, 'Guardian Phone', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1227, 4, 28, 'Guardian Relation', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1228, 4, 352, 'Holiday', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1229, 4, 220, 'Hostel', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1230, 4, 587, 'Hostel - Rooms', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1231, 4, 399, 'Hostel List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1232, 4, 221, 'Hostel Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1233, 4, 457, 'Hostel Room List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1234, 4, 481, 'Hostel Rooms', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1235, 4, 169, 'Id', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1236, 4, 309, 'Identification', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1237, 4, 493, 'If Guardian Address is Current Address', NULL, 'no', '2017-04-10 18:50:50', '0000-00-00 00:00:00'),
(1238, 4, 546, 'If Guardian Is', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1239, 4, 446, 'If Permanent Address is Current Address', NULL, 'no', '2017-04-10 18:50:57', '0000-00-00 00:00:00'),
(1240, 4, 25, 'IFSC Code', NULL, 'no', '2017-04-10 18:51:18', '0000-00-00 00:00:00'),
(1241, 4, 32, 'Import Excel', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1242, 4, 291, 'Import Student', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1243, 4, 197, 'Intake', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1244, 4, 86, 'Invoice Number', NULL, 'no', '2017-05-20 12:41:26', '0000-00-00 00:00:00'),
(1245, 4, 188, 'ISBN', NULL, 'no', '2017-04-10 18:51:32', '0000-00-00 00:00:00'),
(1246, 4, 165, 'Language', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1247, 4, 63, 'Language List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1248, 4, 529, 'Language RTL Text Mode', NULL, 'no', '2017-04-10 18:51:53', '0000-00-00 00:00:00'),
(1249, 4, 578, 'Languages', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1250, 4, 8, 'Last Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1251, 4, 619, 'Late', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1252, 4, 618, 'Late With Excuse', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1253, 4, 234, 'Leave', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1254, 4, 214, 'Library', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1255, 4, 585, 'Library - Books', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1256, 4, 479, 'Library Book', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1257, 4, 526, 'Library Books', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1258, 4, 229, 'List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1259, 4, 485, 'Local Identification Number', NULL, 'no', '2017-05-20 12:41:34', '0000-00-00 00:00:00'),
(1260, 4, 436, 'Login Details', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1261, 4, 590, 'Login Url', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1262, 4, 514, 'Logout', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1263, 4, 601, 'Male', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1264, 4, 70, 'Manage', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1265, 4, 353, 'Mark As Holiday', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1266, 4, 459, 'Mark Register', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1267, 4, 564, 'Marks Grade', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1268, 4, 563, 'Marks Register', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1269, 4, 357, 'Marks Register Prepared', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1270, 4, 265, 'Message', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1271, 4, 256, 'Message To', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1272, 4, 270, 'Miscellaneous Details', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1273, 4, 12, 'Mobile Number', NULL, 'no', '2017-05-20 12:41:39', '0000-00-00 00:00:00'),
(1274, 4, 487, 'Mode', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1275, 4, 489, 'Month', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1276, 4, 432, 'Monthly Expenses', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1277, 4, 431, 'Monthly Fees Collection', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1278, 4, 288, 'Mother', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1279, 4, 160, 'Mother Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1280, 4, 162, 'Mother Occupation', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1281, 4, 161, 'Mother Phone', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1282, 4, 386, 'My Children', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1283, 4, 486, 'My Profile', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1284, 4, 153, 'Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1285, 4, 484, 'National Identification Number', NULL, 'no', '2017-05-20 12:41:44', '0000-00-00 00:00:00'),
(1286, 4, 122, 'New Password', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1287, 4, 442, 'Next Session Status', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1288, 4, 310, 'No', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1289, 4, 354, 'No Attendance Prepared', NULL, 'no', '2017-04-10 18:53:26', '0000-00-00 00:00:00'),
(1290, 4, 614, 'No Description', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1291, 4, 475, 'No Exam Prepared', NULL, 'no', '2017-04-10 18:53:35', '0000-00-00 00:00:00'),
(1292, 4, 430, 'No Fees Found', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1293, 4, 455, 'Number Of Bed', NULL, 'no', '2017-05-20 08:43:42', '0000-00-00 00:00:00'),
(1294, 4, 201, 'Number Of Vehicle', NULL, 'no', '2017-05-20 08:43:54', '0000-00-00 00:00:00'),
(1295, 4, 259, 'No Record Found', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1296, 4, 443, 'No Result Prepared', NULL, 'no', '2017-04-10 18:53:47', '0000-00-00 00:00:00'),
(1297, 4, 94, 'No Search Record Found', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1298, 4, 317, 'No Transaction Found', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1299, 4, 331, 'No Transport Fees Found', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1300, 4, 527, 'No vehicle allotted to this route', NULL, 'no', '2017-04-10 18:54:28', '0000-00-00 00:00:00'),
(1301, 4, 606, 'Not', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1302, 4, 290, 'Not Scheduled', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1303, 4, 150, 'Note', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1304, 4, 253, 'Notice', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1305, 4, 285, 'Notice Board', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1306, 4, 254, 'Notice Date', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1307, 4, 278, 'Notifications', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1308, 4, 300, 'Obtain Marks', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1309, 4, 419, 'Off', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1310, 4, 420, 'On', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1311, 4, 496, 'Other', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1312, 4, 335, 'Other Discount', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1313, 4, 390, 'Other Download List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1314, 4, 597, 'Other Downloads', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1315, 4, 544, 'Paid', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1316, 4, 324, 'Paid Fees', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1317, 4, 257, 'Parent', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1318, 4, 444, 'Parent Guardian Detail', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1319, 4, 231, 'Pass', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1320, 4, 241, 'Passing Marks', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1321, 4, 167, 'Password', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1322, 4, 313, 'Payment', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1323, 4, 274, 'Payment Id', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1324, 4, 450, 'Payment Id Detail', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1325, 4, 418, 'Paypal Email', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1326, 4, 416, 'Paypal Password', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1327, 4, 414, 'Paypal Setting', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1328, 4, 417, 'Paypal Signature', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1329, 4, 415, 'Paypal Username', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1330, 4, 605, 'PDF', NULL, 'no', '2017-04-10 18:55:16', '0000-00-00 00:00:00'),
(1331, 4, 147, 'Percent', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1332, 4, 363, 'Percent From', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1333, 4, 149, 'Percent To', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1334, 4, 362, 'Percent Upto', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1335, 4, 580, 'Percentage', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1336, 4, 18, 'Permanent Address', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1337, 4, 73, 'Phone', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1339, 4, 463, 'Post New Message', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1340, 4, 193, 'Post Date', NULL, 'no', '2017-04-10 18:55:57', '0000-00-00 00:00:00'),
(1341, 4, 542, 'Practical', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1342, 4, 543, 'Present', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1343, 4, 267, 'Previous School Details', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1344, 4, 400, 'Print', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1345, 4, 329, 'Print Selected', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1346, 4, 297, 'Profile', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1347, 4, 245, 'Promote', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1348, 4, 440, 'Promote In Session', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1349, 4, 552, 'Promote Students', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1350, 4, 441, 'Promote Students In Next Session', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1351, 4, 286, 'Publish Date', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1352, 4, 255, 'Publish On', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1353, 4, 189, 'Publisher', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1354, 4, 191, 'Qty', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1355, 4, 548, 'Quick Links', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1356, 4, 218, 'Rack Number', NULL, 'no', '2017-05-20 12:42:23', '0000-00-00 00:00:00'),
(1357, 4, 104, 'Receipt Number', NULL, 'no', '2017-05-20 12:42:19', '0000-00-00 00:00:00'),
(1358, 4, 538, 'Registered Phone Number', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1359, 4, 15, 'Religion', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1360, 4, 82, 'Report', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1361, 4, 525, 'Report Card', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1362, 4, 216, 'Reports', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1363, 4, 85, 'Reset', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1364, 4, 427, 'Restore', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1365, 4, 230, 'Result', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1366, 4, 473, 'Revert', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1367, 4, 6, 'Roll Number', NULL, 'no', '2017-05-20 12:42:27', '0000-00-00 00:00:00'),
(1368, 4, 239, 'Room', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1369, 4, 242, 'Room Number', NULL, 'no', '2017-05-20 12:42:33', '0000-00-00 00:00:00'),
(1370, 4, 454, 'Room Number / Name', NULL, 'no', '2017-05-20 08:45:35', '0000-00-00 00:00:00'),
(1371, 4, 401, 'Room Type', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1372, 4, 403, 'Room Type List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1373, 4, 503, 'Route', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1374, 4, 394, 'Route List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1375, 4, 223, 'Route Title', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1376, 4, 569, 'Routes', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1377, 4, 185, 'RTE', NULL, 'no', '2017-04-10 18:57:10', '0000-00-00 00:00:00'),
(1378, 4, 66, 'Save', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1379, 4, 298, 'Save Attendance', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1380, 4, 607, 'Scheduled', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1381, 4, 151, 'School Code', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1383, 4, 69, 'School Logo', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1384, 4, 2, 'School Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1385, 4, 37, 'Search', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1386, 4, 497, 'Search By Keyword', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1387, 4, 588, 'Search By Name, Roll Number, Enroll Number, National Id, Local Id Etc..', NULL, 'no', '2017-05-20 12:42:47', '0000-00-00 00:00:00'),
(1388, 4, 556, 'Search Due Fees', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1389, 4, 559, 'Search Expense', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1390, 4, 555, 'Search Fees Payment', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1391, 4, 591, 'Search Student', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1392, 4, 336, 'Search Transaction', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1393, 4, 10, 'Section', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1394, 4, 56, 'Section List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1395, 4, 451, 'Section Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1396, 4, 566, 'Sections', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1397, 4, 407, 'Select', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1398, 4, 84, 'Select Criteria', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1399, 4, 293, 'Select CSV File', NULL, 'no', '2017-04-10 18:58:35', '0000-00-00 00:00:00'),
(1400, 4, 31, 'Select Image', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1401, 4, 68, 'Select Logo', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1402, 4, 266, 'Send', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1403, 4, 572, 'Send Message', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1404, 4, 1, 'Session', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1405, 4, 52, 'Session List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1406, 4, 576, 'Session Setting', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1407, 4, 410, 'Session Start Month', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1408, 4, 517, 'Show', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1409, 4, 305, 'Sibling', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1411, 4, 152, 'Sign In', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1412, 4, 477, 'Smart School', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1413, 4, 76, 'SMS Configuration', NULL, 'no', '2017-04-10 18:59:11', '0000-00-00 00:00:00'),
(1414, 4, 77, 'SMS Gateway URL', NULL, 'no', '2017-05-20 08:47:13', '0000-00-00 00:00:00'),
(1415, 4, 476, 'SMS Setting', NULL, 'no', '2017-04-10 18:59:22', '0000-00-00 00:00:00'),
(1416, 4, 237, 'Start Time', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1417, 4, 78, 'Status', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1418, 4, 61, 'Student', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1419, 4, 550, 'Student Admission', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1420, 4, 560, 'Student Attendance', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1421, 4, 551, 'Student Categories', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1422, 4, 325, 'Student Detail', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1423, 4, 549, 'Student Details', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1424, 4, 322, 'Student Fees Report', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1425, 4, 207, 'Student Information', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1426, 4, 592, 'Students List', NULL, 'no', '2017-04-10 18:59:55', '0000-00-00 00:00:00'),
(1427, 4, 183, 'Student Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1428, 4, 573, 'Student Report', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1429, 4, 434, 'Students', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1430, 4, 568, 'Study Material', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1431, 4, 388, 'Study Material List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1432, 4, 217, 'Subject', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1433, 4, 144, 'Subject Code', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1434, 4, 261, 'Subject List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1435, 4, 143, 'Subject Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1436, 4, 521, 'Subject Type', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1437, 4, 483, 'Subjects', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1438, 4, 359, 'Submit', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1439, 4, 596, 'Syllabus', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1440, 4, 389, 'Syllabus List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1441, 4, 215, 'System Settings', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1442, 4, 258, 'Teacher', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1443, 4, 260, 'Teacher Detail', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1444, 4, 251, 'Teacher List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1445, 4, 166, 'Teacher Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1446, 4, 187, 'Teacher Photo', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1447, 4, 469, 'Teacher Subject', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1448, 4, 433, 'Teachers', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1449, 4, 541, 'Theory', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1450, 4, 264, 'Title', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1451, 4, 610, 'To', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1452, 4, 90, 'Total', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1453, 4, 182, 'Total Balance', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1454, 4, 323, 'Total Fees', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1455, 4, 301, 'Total Marks', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1456, 4, 180, 'Total Paid Fees', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1457, 4, 332, 'Total Transport Fees', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1458, 4, 609, 'Transaction From', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1459, 4, 574, 'Transaction Report', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1460, 4, 222, 'Transport', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1461, 4, 586, 'Transport - Routes', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1462, 4, 155, 'Transport Fees', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1463, 4, 318, 'Transport Fees Details', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1464, 4, 480, 'Transport Routes', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1465, 4, 536, 'Twilio Account SID', NULL, 'no', '2017-04-10 19:01:04', '0000-00-00 00:00:00'),
(1466, 4, 534, 'Twilio SMS Gateway', NULL, 'no', '2017-04-10 19:01:10', '0000-00-00 00:00:00'),
(1467, 4, 88, 'Type', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1468, 4, 599, 'Unpaid', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1469, 4, 490, 'Upload', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1470, 4, 378, 'Upload Content', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1471, 4, 205, 'Upload Date', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1472, 4, 268, 'Upload Documents', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1473, 4, 424, 'Upload From Local Directory', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1474, 4, 488, 'URL', NULL, 'no', '2017-04-10 19:01:27', '0000-00-00 00:00:00'),
(1475, 4, 478, 'User Login', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1476, 4, 74, 'User Name', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1477, 4, 589, 'User Type', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1478, 4, 539, 'Username', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1479, 4, 506, 'Vehicle', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1480, 4, 507, 'Vehicle List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1481, 4, 513, 'Vehicle Model', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1482, 4, 512, 'Vehicle Number', NULL, 'no', '2017-05-20 12:42:56', '0000-00-00 00:00:00'),
(1483, 4, 502, 'Vehicle Route List', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1484, 4, 504, 'Vehicle Routes', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1485, 4, 570, 'Vehicles', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1486, 4, 474, 'View', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1487, 4, 522, 'View Detail', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1488, 4, 604, 'View Schedule', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1489, 4, 356, 'View Status', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1490, 4, 280, 'Visibility', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1491, 4, 279, 'Visible To All', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1492, 4, 515, 'Year Made', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1493, 4, 545, 'Yes', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(1494, 4, 350, 'You Can Edit Record', NULL, 'no', '2017-04-06 20:48:39', '0000-00-00 00:00:00'),
(36671, 4, 642, 'Accountant List', NULL, 'no', '2017-05-20 08:33:47', '0000-00-00 00:00:00'),
(36672, 4, 643, 'Accountant Photo', NULL, 'no', '2017-05-20 08:33:56', '0000-00-00 00:00:00'),
(36673, 4, 631, 'Accountants', NULL, 'no', '2017-05-20 08:34:03', '0000-00-00 00:00:00'),
(36674, 4, 641, 'Add Accountant', NULL, 'no', '2017-05-20 08:34:14', '0000-00-00 00:00:00'),
(36675, 4, 633, 'Add Librarian', NULL, 'no', '2017-05-20 08:34:40', '0000-00-00 00:00:00'),
(36677, 4, 649, 'Add Student', NULL, 'no', '2017-05-20 08:35:41', '0000-00-00 00:00:00'),
(36678, 4, 624, 'Book', NULL, 'no', '2017-05-20 08:36:04', '0000-00-00 00:00:00'),
(36679, 4, 629, 'Book Issued', NULL, 'no', '2017-05-20 08:36:13', '0000-00-00 00:00:00'),
(36680, 4, 645, 'Book Number', NULL, 'no', '2017-05-20 08:36:30', '0000-00-00 00:00:00'),
(36681, 4, 650, 'Books Issue Retun', NULL, 'no', '2017-05-20 08:36:49', '0000-00-00 00:00:00'),
(36682, 4, 640, 'Change Username', NULL, 'no', '2017-05-20 08:37:05', '0000-00-00 00:00:00'),
(36683, 4, 639, 'Confirm Username', NULL, 'no', '2017-05-20 08:37:39', '0000-00-00 00:00:00'),
(36684, 4, 637, 'Current Username', NULL, 'no', '2017-05-20 08:38:06', '0000-00-00 00:00:00'),
(36685, 4, 644, 'Edit Accountant', NULL, 'no', '2017-05-20 08:38:44', '0000-00-00 00:00:00'),
(36686, 4, 636, 'Edit Librarian', NULL, 'no', '2017-05-20 08:39:30', '0000-00-00 00:00:00'),
(36687, 4, 647, 'ISBN Number', NULL, 'no', '2017-05-20 08:40:25', '0000-00-00 00:00:00'),
(36688, 4, 623, 'Issue', NULL, 'no', '2017-05-20 08:40:30', '0000-00-00 00:00:00'),
(36689, 4, 621, 'Issue Book', NULL, 'no', '2017-05-20 08:40:40', '0000-00-00 00:00:00'),
(36690, 4, 648, 'Issue Return', NULL, 'no', '2017-05-20 09:35:21', '0000-00-00 00:00:00'),
(36691, 4, 635, 'Librarian List', NULL, 'no', '2017-05-20 08:41:31', '0000-00-00 00:00:00'),
(36692, 4, 634, 'Librarian Photo', NULL, 'no', '2017-05-20 08:41:38', '0000-00-00 00:00:00'),
(36693, 4, 632, 'Librarian', NULL, 'no', '2017-05-20 08:41:42', '0000-00-00 00:00:00'),
(36694, 4, 632, 'Librarians', NULL, 'no', '2017-05-20 08:41:45', '0000-00-00 00:00:00'),
(36695, 4, 632, 'Librarians', NULL, 'no', '2017-05-20 08:41:48', '0000-00-00 00:00:00'),
(36696, 4, 626, 'Library Card Number', NULL, 'no', '2017-05-20 08:42:23', '0000-00-00 00:00:00'),
(36697, 4, 628, 'Member Id', NULL, 'no', '2017-05-20 08:42:53', '0000-00-00 00:00:00'),
(36698, 4, 622, 'Member Type', NULL, 'no', '2017-05-20 08:43:01', '0000-00-00 00:00:00'),
(36699, 4, 625, 'Members', NULL, 'no', '2017-05-20 08:43:06', '0000-00-00 00:00:00'),
(36700, 4, 638, 'New Username', NULL, 'no', '2017-05-20 08:43:23', '0000-00-00 00:00:00'),
(36701, 4, 627, 'Return Date', NULL, 'no', '2017-05-20 08:45:06', '0000-00-00 00:00:00'),
(36702, 4, 630, 'Timezone', NULL, 'no', '2017-05-20 08:47:48', '0000-00-00 00:00:00'),
(36703, 4, 646, 'Users', NULL, 'no', '2017-05-20 08:48:21', '0000-00-00 00:00:00'),
(73979, 4, 653, 'Surrender Membership', NULL, 'no', '2017-05-29 22:56:46', '0000-00-00 00:00:00'),
(73980, 4, 651, 'Members List', NULL, 'no', '2017-05-29 22:57:05', '0000-00-00 00:00:00'),
(73981, 4, 651, 'Members List', NULL, 'no', '2017-05-29 22:57:18', '0000-00-00 00:00:00'),
(73982, 4, 652, 'Issue Date', NULL, 'no', '2017-05-29 22:57:35', '0000-00-00 00:00:00'),
(73983, 4, 686, 'Add Admin User', NULL, 'no', '2017-08-02 05:34:51', '0000-00-00 00:00:00'),
(73984, 4, 655, 'Add Fees Group', NULL, 'no', '2017-08-02 05:35:14', '0000-00-00 00:00:00'),
(73985, 4, 663, 'Add Fees Discount', NULL, 'no', '2017-08-02 05:35:27', '0000-00-00 00:00:00'),
(73986, 4, 676, 'Add Member', NULL, 'no', '2017-08-02 05:35:40', '0000-00-00 00:00:00'),
(73987, 4, 688, 'Admin Email', NULL, 'no', '2017-08-02 05:35:53', '0000-00-00 00:00:00'),
(73988, 4, 687, 'Admin Name', NULL, 'no', '2017-08-02 05:36:04', '0000-00-00 00:00:00'),
(73989, 4, 689, 'Admin Password', NULL, 'no', '2017-08-02 05:36:11', '0000-00-00 00:00:00'),
(73990, 4, 685, 'Admin Users', NULL, 'no', '2017-08-02 05:36:22', '0000-00-00 00:00:00'),
(73991, 4, 664, 'All', NULL, 'no', '2017-08-02 05:36:28', '0000-00-00 00:00:00'),
(73992, 4, 667, 'Applied', NULL, 'no', '2017-08-02 05:36:37', '0000-00-00 00:00:00'),
(73993, 4, 674, 'Apply Discount', NULL, 'no', '2017-08-02 05:36:48', '0000-00-00 00:00:00'),
(73994, 4, 670, 'Assign / View', NULL, 'no', '2017-08-02 05:37:03', '0000-00-00 00:00:00'),
(73995, 4, 665, 'Assign Fees Discount', NULL, 'no', '2017-08-02 05:37:16', '0000-00-00 00:00:00'),
(73996, 4, 684, 'Assigned', NULL, 'no', '2017-08-02 05:37:29', '0000-00-00 00:00:00'),
(73997, 4, 669, 'Confirmation', NULL, 'no', '2017-08-02 05:37:42', '0000-00-00 00:00:00'),
(73998, 4, 661, 'Discount Code', NULL, 'no', '2017-08-02 05:37:54', '0000-00-00 00:00:00'),
(73999, 4, 675, 'Discount of', NULL, 'no', '2017-08-02 05:38:03', '0000-00-00 00:00:00'),
(74000, 4, 657, 'Due Date', NULL, 'no', '2017-08-02 05:38:12', '0000-00-00 00:00:00'),
(74001, 4, 660, 'Edit Fees Discount', NULL, 'no', '2017-08-02 05:38:24', '0000-00-00 00:00:00'),
(74002, 4, 671, 'Edit Fees Group', NULL, 'no', '2017-08-02 05:38:35', '0000-00-00 00:00:00'),
(74003, 4, 673, 'Edit Fees Master', NULL, 'no', '2017-08-02 05:38:44', '0000-00-00 00:00:00'),
(74004, 4, 672, 'Edit Fees Type', NULL, 'no', '2017-08-02 05:38:53', '0000-00-00 00:00:00'),
(74005, 4, 678, 'Email Engine', NULL, 'no', '2017-08-02 05:39:02', '0000-00-00 00:00:00'),
(74006, 4, 677, 'Email Setting', NULL, 'no', '2017-08-02 05:39:11', '0000-00-00 00:00:00'),
(74007, 4, 658, 'Fees Code', NULL, 'no', '2017-08-02 05:39:20', '0000-00-00 00:00:00'),
(74008, 4, 659, 'Fees Discount', NULL, 'no', '2017-08-02 05:39:43', '0000-00-00 00:00:00'),
(74009, 4, 662, 'Fees Discount List', NULL, 'no', '2017-08-02 05:40:20', '0000-00-00 00:00:00'),
(74010, 4, 654, 'Fees Group', NULL, 'no', '2017-08-02 05:40:28', '0000-00-00 00:00:00'),
(74011, 4, 656, 'Fees Group List', NULL, 'no', '2017-08-02 05:40:37', '0000-00-00 00:00:00'),
(74012, 4, 690, 'Forgot Password', NULL, 'no', '2017-08-02 05:40:49', '0000-00-00 00:00:00'),
(74013, 4, 690, 'Forgot Password', NULL, 'no', '2017-08-02 05:41:10', '0000-00-00 00:00:00'),
(74014, 4, 666, 'Partial', NULL, 'no', '2017-08-02 05:41:25', '0000-00-00 00:00:00'),
(74015, 4, 680, 'SMTP Password', NULL, 'no', '2017-08-02 05:41:42', '0000-00-00 00:00:00'),
(74016, 4, 682, 'SMTP Port', NULL, 'no', '2017-08-02 05:41:50', '0000-00-00 00:00:00'),
(74017, 4, 683, 'SMTP Security', NULL, 'no', '2017-08-02 05:42:01', '0000-00-00 00:00:00'),
(74018, 4, 681, 'SMTP Server', NULL, 'no', '2017-08-02 05:42:09', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses_old` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES
(74019, 4, 679, 'SMTP Username', NULL, 'no', '2017-08-02 05:42:17', '0000-00-00 00:00:00'),
(74020, 4, 668, 'Student Fees', NULL, 'no', '2017-08-02 05:42:25', '0000-00-00 00:00:00'),
(74021, 4, 691, 'Assign Fees Group', NULL, 'no', '2017-08-02 05:42:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `libarary_members`
--

CREATE TABLE `libarary_members` (
`id` int(11) unsigned NOT NULL,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `librarians`
--

CREATE TABLE `librarians` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` text,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mia_arabic`
--

CREATE TABLE `mia_arabic` (
  `id` int(11) DEFAULT NULL,
  `class` text,
  `subject` text,
  `firstname` text,
  `lastname` text,
  `studentid` text,
  `teacher` text,
  `dob` text,
  `gender` text,
  `address` text,
  `city` text,
  `phone1` text,
  `phone2` text,
  `email` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mia_arabic`
--

INSERT INTO `mia_arabic` (`id`, `class`, `subject`, `firstname`, `lastname`, `studentid`, `teacher`, `dob`, `gender`, `address`, `city`, `phone1`, `phone2`, `email`) VALUES
(1, 'Adult Male Arabic Class', 'Brothers Class', 'Billal Minaoui', 'Billal Minaoui', 'Student ID', 'Abu Ishaaq', '', 'Male', '', '', '+61435837161', '', 'bella.h.92@hotmail.com'),
(2, 'Adult Male Arabic Class', 'Brothers Class', 'Feroz Sattar', 'Feroz Sattar', 'S000142', 'Abu Ishaaq', '', 'Male', '', '', '+61422401781', '', 'feroz.sattar1@gmail.com'),
(3, 'Adult Male Arabic Class', 'Brothers Class', 'Hadi Naghi', 'Hadi Naghi', 'S000146', 'Abu Ishaaq', '', 'Male', '', '', '+61450616065', '', ''),
(4, 'Adult Male Arabic Class', 'Brothers Class', 'Javed Bin Kalam', 'Javed Bin Kalam', 'S000144', 'Abu Ishaaq', '', 'Male', '', '', '+61414138910', '', 'javed.binkalam@gmail.com'),
(5, 'Adult Male Arabic Class', 'Brothers Class', 'Kashif Ghous', 'Kashif Ghous', 'S000139', 'Abu Ishaaq', '', 'Male', '', '', '+61412875167', '', 'mkgg4n@gmail.com'),
(6, 'Adult Male Arabic Class', 'Brothers Class', 'Khaled Abbas', 'Khaled Abbas', 'S000137', 'Abu Ishaaq', '', 'Male', '', '', '+61466058022', '', 'abbasonline@gmail.com'),
(7, 'Adult Male Arabic Class', 'Brothers Class', 'Khaled Minaoui', 'Khaled Minaoui', 'S000141', 'Abu Ishaaq', '', 'Male', '', '', '+61452483321', '', 'minaoui73@gmail.com'),
(8, 'Adult Male Arabic Class', 'Brothers Class', 'Mohamad Kayal', 'Mohamad Kayal', 'S000138', 'Abu Ishaaq', '', 'Male', '', '', '+61414266339 ', '', 'Mohamad85k@gmail.com'),
(9, 'Adult Male Arabic Class', 'Brothers Class', 'Mohamed Jafran Anzar ', 'Mohamed Jafran Anzar ', 'S000147', 'Abu Ishaaq', '', 'Male', '', '', '+61490682679 ', '', 'jafanz@outlook.com'),
(10, 'Adult Male Arabic Class', 'Brothers Class', 'Omar AbuMahmoud', 'Omar AbuMahmoud', 'S000148', 'Abu Ishaaq', '', 'Male', '', '', '+61405464646', '', 'omarabumahmoud@hotmail.com'),
(11, 'Adult Male Arabic Class', 'Brothers Class', 'Raihan Iqbal', 'Raihan Iqbal', 'S000140', 'Abu Ishaaq', '', 'Male', '', '', '+61421736086', '', 'raihan.iqbal@gmail.com'),
(12, 'Adult Male Arabic Class', 'Brothers Class', 'Rashid Mohamed', 'Rashid Mohamed', 'S000150', 'Abu Ishaaq', '', 'Male', '', '', '+61412787706', '', 'krashid@live.com'),
(13, 'Adult Male Arabic Class', 'Brothers Class', 'Wassim El Saddik', 'Wassim El Saddik', 'S000143', 'Abu Ishaaq', '', 'Male', '', '', '+61406008411', '', 'Wassim_jumex@outlook.com'),
(14, 'Adult Male Arabic Class', 'Brothers Class', 'Zahi Naghi', 'Zahi Naghi', 'S000149', 'Abu Ishaaq', '', 'Male', '', '', '+61450670864', '', ''),
(15, 'Adult Female Arabic Class', 'Sisters Class', 'Amina Touma', 'Amina Touma', 'S000145', 'Muhammad AlBizry', '', 'Female', '', '', '+61490405697', '', ''),
(16, 'Adult Female Arabic Class', 'Sisters Class', 'Ayesha Shipman', 'Ayesha Shipman', 'S000124', 'Abu Ishaaq', '', 'Female', '', '', '+61434681799', '', ''),
(17, 'Adult Female Arabic Class', 'Sisters Class', 'Aziza Elsaddik', 'Aziza Elsaddik', 'S000136', 'Manal', '', 'Female', '', '', '+61450848988', '', 'azizaa.e@hotmail.com'),
(18, 'Adult Female Arabic Class', 'Sisters Class', 'Fatma Arja', 'Fatma Arja', 'S000055', 'Abu Ishaaq', '', 'Female', '', '', '', '', ''),
(19, 'Adult Female Arabic Class', 'Sisters Class', 'Hakimah Muslim', 'Hakimah Muslim', 'S000132', 'Abu Ishaaq', '', 'Female', '', '', '+61410 044 938', '', 'hakimah007@yahoo.com'),
(20, 'Adult Female Arabic Class', 'Sisters Class', 'Hasna Woodbury', 'Hasna Woodbury', 'S000101', 'Manal', '', 'Female', 'Emergency Contact, Rosie Fouglas, 0449193200.', '', '+61470625368', '', 'hasna.ilim@gmail.com'),
(21, 'Adult Female Arabic Class', 'Sisters Class', 'Joumana Rifai', 'Joumana Rifai', 'S000088', 'Abu Ishaaq', '', 'Female', '', '', '+61458080645', '', 'js4whair@gmail.com'),
(22, 'Adult Female Arabic Class', 'Sisters Class', 'Manel Aassar', 'Manel Aassar', 'S000054', 'Muhammad AlBizry', '', 'Female', '', '', '+61490050977', '', 'elkadri1@hotmail.com'),
(23, 'Adult Female Arabic Class', 'Sisters Class', 'Marita Davies', 'Marita Davies', 'S000095', 'Manal', '', 'Female', 'Emergency Contact:, Abu Adnan.', '', '+610423226186', '', 'marita_nsw_au@yahoo.com'),
(24, 'Adult Female Arabic Class', 'Sisters Class', 'Monira jebin', 'Monira jebin', 'S000069', 'Manal', '02/15/1964', 'Female', '', '', '+61425303318', '', 'mjebin@gmail.com'),
(25, 'Adult Female Arabic Class', 'Sisters Class', 'Nemat Jneidi', 'Nemat Jneidi', 'S000084', 'Abu Ishaaq', '', 'Female', '', '', '+610424444384', '', 'nematj92@hotmail.com'),
(26, 'Adult Female Arabic Class', 'Sisters Class', 'Nurshafinah Binte Mohd Isa', 'Nurshafinah Binte Mohd Isa', 'S000125', 'Muhammad AlBizry', '', 'Female', '', '', '+61411570627', '', 'rocketrascal@gmail.com'),
(27, 'Adult Female Arabic Class', 'Sisters Class', 'Refah Amin ', 'Refah Amin ', 'S000130', 'Muhammad AlBizry', '', 'Female', '', '', '+610435011565', '', 'refahamin99@gmail.com'),
(28, 'Adult Female Arabic Class', 'Sisters Class', 'Ronia Kadri', 'Ronia Kadri', 'S000126', 'Manal', '', 'Female', '', '', '+61410969912', '', 'elkadri1@hotmail.com'),
(29, 'Adult Female Arabic Class', 'Sisters Class', 'Sagal Ahmed', 'Sagal Ahmed', 'S000094', 'Muhammad AlBizry', '', 'Female', '', '', '+610403452433', '', 'sagalahmed299@gmail.com'),
(30, 'Adult Female Arabic Class', 'Sisters Class', 'Souheir Ayad', 'Souheir Ayad', 'S000127', 'Abu Ishaaq', '', 'Female', '', '', '+413773228', '', ''),
(31, 'Adult Female Arabic Class', 'Sisters Class', 'Wafa Kodat', 'Wafa Kodat', 'S000133', 'Abu Ishaaq', '12/11/1992', 'Female', '', '', '+61414412337', '', 'wafa1@live.com.au'),
(0, '', '', '', '', 'S000151', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mia_islam`
--

CREATE TABLE `mia_islam` (
  `id` int(11) DEFAULT NULL,
  `class` text,
  `subject` text,
  `firstname` text,
  `lastname` text,
  `studentid` text,
  `teacher` text,
  `dob` text,
  `gender` text,
  `address` text,
  `city` text,
  `phone1` text,
  `phone2` text,
  `email` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mia_islam`
--

INSERT INTO `mia_islam` (`id`, `class`, `subject`, `firstname`, `lastname`, `studentid`, `teacher`, `dob`, `gender`, `address`, `city`, `phone1`, `phone2`, `email`) VALUES
(1, 'Adult Sisters Islamic Studies', 'Advanced Islamic Studies  Sisters', 'Anthea Costi', 'Anthea Costi', 'S000137', 'Abu Adnan', '05/15/1972', 'Female', '87 Jocelyn St.', '', '+61405437500', '', 'antheacos@gmail.com'),
(2, 'Adult Sisters Islamic Studies', 'Advanced Islamic Studies  Sisters', 'Bibi Meher', 'Bibi Meher', 'S000090', 'Abu Adnan', '', 'Female', '37 Norman Ave.', '', '+61403060975', '', 'saba_shuja@hotmail.com'),
(3, 'Adult Sisters Islamic Studies', 'Advanced Islamic Studies  Sisters', 'Ghaysa hijazi', 'Ghaysa hijazi', 'S000131', 'Abu Adnan', '10/18/1990', 'Female', '212 river ave.', '', '+61431531031', '', 'ghaysahijazi@gmail.com'),
(4, 'Adult Sisters Islamic Studies', 'Advanced Islamic Studies  Sisters', 'Halima Zraika', 'Halima Zraika', 'S000394', 'Abu Adnan', '01/12/1985', 'Female', '4 Sherrard Ave.', 'Elizabeth Hills', '+61405418822', '', 'halima.k8378@gmail.com'),
(5, 'Adult Sisters Islamic Studies', 'Advanced Islamic Studies  Sisters', 'Hannan Raad', 'Hannan Raad', 'S000396', 'Abu Adnan', '10/01/1987', 'Female', '39 Coonabarabran Cres.', 'Hoxton Park', '+61410699696', '', 'h.a.raad27@gmail.com'),
(6, 'Adult Sisters Islamic Studies', 'Advanced Islamic Studies  Sisters', 'Lorraine Ejje', 'Lorraine Ejje', 'S000107', 'Abu Adnan', '', 'Female', '13 Southdown St.', '', '+61424652095', '', 'lorraine24@live.com.au'),
(7, 'Adult Sisters Islamic Studies', 'Advanced Islamic Studies  Sisters', 'Manal Massri', 'Manal Massri', 'S000215', 'Abu Adnan', '01/01/1984', 'Female', '7 Mckell Ave.', 'Casula', '+61431494707', '', 'manal@itmanage.com.au'),
(8, 'Adult Sisters Islamic Studies', 'Advanced Islamic Studies  Sisters', 'Nemat Jneidi', 'Nemat Jneidi', 'S000110', 'Abu Adnan', '', 'Female', '3/2 Westmoreland Rd.', '', '+61424444384', '', 'nematj92@hotmail.com'),
(9, 'Adult Sisters Islamic Studies', 'Advanced Islamic Studies  Sisters', 'Nisreen Haidar', 'Nisreen Haidar', 'S000109', 'Abu Adnan', '', 'Female', '22 Passefield St.', '', '+61404623641', '', 'nisreen1216@hotmail.com'),
(10, 'Adult Sisters Islamic Studies', 'Advanced Islamic Studies  Sisters', 'Razan Dannoun', 'Razan Dannoun', 'S000410', 'Abu Adnan', '', 'Female', '', '', '+61421656149', '', 'dr_hafda@hotmail.com'),
(11, 'Adult Sisters Islamic Studies', 'Advanced Islamic Studies  Sisters', 'Riham Abdelhalim', 'Riham Abdelhalim', 'S000119', 'Abu Adnan', '', 'Female', '31 Columbine Ave.', '', '+61424196646', '', 'reez4islam@hotmail.com'),
(12, 'Adult Sisters Islamic Studies', 'Advanced Islamic Studies  Sisters', 'Umm Omar', 'Umm Omar', 'S000118', 'Abu Adnan', '03/30/1978', 'Female', '73A Clarence Street.', '', '+61490405697', '', 'umm_omar2@hotmail.com'),
(13, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Abdullah Shaikh', 'Abdullah Shaikh', 'S000364', 'Abu Ishaaq', '', 'Male', '', '', '+614357278177', '', 'abdullah_shaikh123@hotmail.com'),
(14, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Abdulrahman Nemra', 'Abdulrahman Nemra', 'S000366', 'Abu Ishaaq', '', 'Male', '', '', '+61432688067', '', 'a.nemra@hotmail.com'),
(15, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Ahmad Alameddine', 'Ahmad Alameddine', 'S000351', 'Abu Ishaaq', '', 'Male', '', '', '+61451969653', '', 'tyresexcel5811@hotmail.com'),
(16, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Ahmed Alameddine', 'Ahmed Alameddine', 'S000339', 'Abu Ishaaq', '', 'Male', '', '', '+61488467117', '', ''),
(17, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Ahmed Zreika', 'Ahmed Zreika', 'S000400', 'Abu Ishaaq', '', 'Male', '', '', '+61450402109', '', 'ahmedd_zreika@hotmail.com'),
(18, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Dawud Brian ', 'Dawud Brian ', 'S000346', 'Abu Ishaaq', '', 'Male', '', '', '+61412591122', '', 'dawoodlechef@gmail.com'),
(19, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Deb Aili', 'Deb Aili', 'S000341', 'Abu Ishaaq', '', 'Male', '', '', '+61451502119', '', 'hd.telecomm@gmail.com'),
(20, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Emad Issa', 'Emad Issa', 'S000415', 'Abu Ishaaq', '', 'Male', '', '', '+61430148316', '', 'e.issa1991@live.com'),
(21, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Fadi Assaad', 'Fadi Assaad', 'S000362', 'Abu Ishaaq', '', 'Male', '', '', '+61414529354', '', 'fadi_assaad@hotmail.com'),
(22, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Fahad Shaikh', 'Fahad Shaikh', 'S000354', 'Abu Ishaaq', '', 'Male', '', '', '+61430519944', '', ''),
(23, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Haidar Sakhra', 'Haidar Sakhra', 'S000342', 'Abu Ishaaq', '', 'Male', '', '', '+61431754419', '', 'haider_sakhra143@hotmail.com'),
(24, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Hesham Sahib', 'Hesham Sahib', 'S000353', 'Abu Ishaaq', '', 'Male', '', '', '+61410367567', '', 'heshaam_s@hotmail.com'),
(25, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Imran Katieh', 'Imran Katieh', 'S000347', 'Abu Ishaaq', '', 'Male', '', '', '+61478189821', '', 'imrankatieh@gmail.com'),
(26, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Javed Kalam', 'Javed Kalam', 'S000361', 'Abu Ishaaq', '', 'Male', '', '', '+61414138910', '', 'javed.binkalam@gmail.com'),
(27, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Khaled Abbas', 'Khaled Abbas', 'S000367', 'Abu Ishaaq', '', 'Male', '', '', '+61466058022', '', 'abbasonline@gmail.com'),
(28, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Kheireddine Melhem', 'Kheireddine Melhem', 'S000365', 'Abu Ishaaq', '', 'Male', '', '', '+61430302812', '', 'kheiro.m@hotmail.com'),
(29, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Mahmoud Daher', 'Mahmoud Daher', 'S000412', 'Abu Ishaaq', '', 'Male', '', '', '+61435503585', '', 'm.daher1996@gmail.com'),
(30, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Milad Sidiqui', 'Milad Sidiqui', 'S000355', 'Abu Ishaaq', '', 'Male', '', '', '+61450003942', '', 'miladmsidiqui@gmail.com'),
(31, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Mohamed Abdelaziz', 'Mohamed Abdelaziz', 'S000409', 'Abu Ishaaq', '', 'Male', '', '', '+61416866654', '', 'm.n.abdelaziz@hotmail.com'),
(32, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Mohamed Hawi', 'Mohamed Hawi', 'S000340', 'Abu Ishaaq', '', 'Male', '', '', '+61423930952', '', ''),
(33, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Mohammed Arja', 'Mohammed Arja', 'S000349', 'Abu Ishaaq', '', 'Male', '', '', '+61412521846', '', 'mohammedarja@gmail.com'),
(34, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Mohammed Malas', 'Mohammed Malas', 'S000352', 'Abu Ishaaq', '', 'Male', '', '', '+61414338001', '', 'moemalas@hotmail.com'),
(35, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Mohammed Muhieddine', 'Mohammed Muhieddine', 'S000356', 'Abu Ishaaq', '', 'Male', '', '', '+61432111476', '', 'mohammed.muhieddine@live.com'),
(36, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Mohammed Shaheed', 'Mohammed Shaheed', 'S000398', 'Abu Ishaaq', '', 'Male', '', '', '', '', ''),
(37, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Mustafa Jabbar', 'Mustafa Jabbar', 'S000369', 'Abu Ishaaq', '', 'Male', '', '', '+61416660786', '', 'mustafa.jabbar90@hotmail.com'),
(38, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Omar Muhieddine', 'Omar Muhieddine', 'S000343', 'Abu Ishaaq', '', 'Male', '', '', '+61450046627', '', 'omar.zfda@gmail.com'),
(39, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Rabee Alisabri', 'Rabee Alisabri', 'S000368', 'Abu Ishaaq', '', 'Male', '', '', '+61414445743', '', 'rabee.alisabri@gmail.com'),
(40, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Rashid Mohamed', 'Rashid Mohamed', 'S000399', 'Abu Ishaaq', '', 'Male', '', '', '+61412787706', '', 'krashid@live.com'),
(41, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Robert Todoroski', 'Robert Todoroski', 'S000363', 'Abu Ishaaq', '', 'Male', '', '', '+61414196902', '', 'roberttodoroski@hotmail.com'),
(42, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Saiyd Jamal', 'Saiyd Jamal', 'S000358', 'Abu Ishaaq', '', 'Male', '', '', '+61435064544', '', 'saiyd.jamal@outlook.com'),
(43, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Samir Kataieh', 'Samir Kataieh', 'S000350', 'Abu Ishaaq', '', 'Male', '', '', '+61424658880', '', 'bandsmotors@hotmail.com'),
(44, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Yusuf Mhaiche', 'Yusuf Mhaiche', 'S000359', 'Abu Ishaaq', '', 'Male', '', '', '+61421792594', '', 'yussuf91@hotmail.com'),
(45, 'Adult Brothers Islamic Studies', 'Brothers Class A', 'Ziad Mashkoor', 'Ziad Mashkoor', 'S000344', '', '', 'Male', '', '', '+61440191014', '', 'ziadmashkoor@gmail.com'),
(46, 'Adult Brothers Islamic Studies', 'Brothers Class B', 'Iqtidar Ahmed', 'Iqtidar Ahmed', 'S000323', 'Muhammad alBizry', '02/21/1997', 'Male', '', '', '+61481143115', '', 'iqtidar.ahmed.education@gmail.com'),
(47, 'Adult Brothers Islamic Studies', 'Brothers Class B', 'Jalal Kamoun', 'Jalal Kamoun', 'S000254', 'Abu Adnan', '', 'Male', '', '', '+61410 867 007', '', 'jalal_kamoun@hotmail.com'),
(48, 'Adult Brothers Islamic Studies', 'Brothers Class B', 'Mahardhika Syarif Hidayatullah', 'Mahardhika Syarif Hidayatullah', 'S000245', 'Muhammad alBizry', '', 'Male', '', '', '+61409823952', '', 'dhikash1997@gmail.com'),
(49, 'Adult Brothers Islamic Studies', 'Brothers Class B', 'Mahmoud ElKhatib', 'Mahmoud ElKhatib', 'S000043', 'Abu Adnan', '07/09/1991', 'N/A', '501 Guildford rd.', '', '+61401442073', '', 'Moey_khatib@hotmail.com'),
(50, 'Adult Brothers Islamic Studies', 'Brothers Class B', 'Shamim Babu', 'Shamim Babu', 'S000328', '', '', 'Male', '', '', '+61422807627', '', 'babumunni@yahoo.com'),
(51, 'Adult Brothers Islamic Studies', 'Brothers Class B', 'Yasin Ashley', 'Yasin Ashley', 'S000262', '', '', 'Male', '', '', '+61404 172 132', '', 'yasin_ashley@hotmail.com'),
(52, 'Adult Brothers Islamic Studies', 'Brothers Class B', 'Yusuf Gelder', 'Yusuf Gelder', 'S000264', '', '', 'Male', '', '', '+61447396633', '', 'yusuf.gelder97@hotmail.com'),
(53, 'Adult Brothers Islamic Studies', 'Brothers Class B', 'Zak Chahal', 'Zak Chahal', 'S000318', '', '', 'Male', '', '', '+61401 189 472', '', 'zakareya905@gmail.com'),
(54, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Amar Kabbara', 'Amar Kabbara', 'S000277', 'Abu Ishaaq', '', 'N/A', '', '', '+61424112008', '', 'zaatar.hassan@gmail.com'),
(55, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Aminata Wleh', 'Aminata Wleh', 'S000278', 'Abu Ishaaq', '', 'N/A', '', '', '+61432687501', '', 'i.mfofiemj@yahoo.com.au'),
(56, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Carly McQualter', 'Carly McQualter', 'S000280', 'Abu Ishaaq', '', 'N/A', '', '', '+61409 814 511', '', 'carly.mcqualter@bigpond.com'),
(57, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Emma Ramlawie', 'Emma Ramlawie', 'S000283', 'Abu Ishaaq', '', 'N/A', '', '', '+61414 869 425', '', 'emaarab@hotmail.com'),
(58, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Hakimah Muslim', 'Hakimah Muslim', 'S000286', 'Abu Ishaaq', '', 'N/A', '', '', '+61410 044 938', '', 'kimm07@icloud.com'),
(59, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Hasina Kamel', 'Hasina Kamel', 'S000327', 'Muhammad alBizry', '', 'Female', '', '', '+61470666493', '', 'hasinakamel@yahoo.com.au'),
(60, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Hasna bint A. Woodbury', 'Hasna bint A. Woodbury', 'S000192', 'Abu Ishaaq', '', 'Female', '6 Pine Rd.', 'Auburn', '+610470625368', '', 'hasna.ilim@gmail.com'),
(61, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Mardhiah Abedine', 'Mardhiah Abedine', 'S000292', 'Abu Ishaaq', '', 'N/A', '', '', '+61416800550', '', 'mardhiahz@gmail.com'),
(62, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Nada Jamus', 'Nada Jamus', 'S000295', 'Abu Ishaaq', '', 'N/A', '', '', '+61406646196', '', 'Nadush7_7@hotmail.com'),
(63, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Nazira Nazreen El Samman', 'Nazira Nazreen El Samman', 'S000296', 'Abu Ishaaq', '', 'N/A', '', '', '+61415131953', '', 'nazirahelsamman@gmail.com'),
(64, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Ramatulai Daramy', 'Ramatulai Daramy', 'S000312', 'Abu Ishaaq', '07/11/1989', 'Female', '1/3 Araluen Ave.', 'St marys', '+610402487557', '', 'ramatulaidaramy@hotmail.com'),
(65, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Refah Amin', 'Refah Amin', 'S000298', 'Abu Ishaaq', '', 'N/A', '', '', '+61416634308', '', 'refahamin99@gmail.com'),
(66, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Sagal Ahmed', 'Sagal Ahmed', 'S000338', 'Abu Ishaaq', '', 'Female', '', '', '+61403452433', '', 'sagalahmed299@gmail.com'),
(67, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Umm Ibrahim ', 'Umm Ibrahim ', 'S000302', 'Abu Ishaaq', '', 'N/A', '', '', '+61404953950', '', 'ummibrahim@wasimah.com.au'),
(68, 'Adult Sisters Islamic Studies', 'Sisters Class C', 'Yonca Temel', 'Yonca Temel', 'S000303', 'Muhammad alBizry', '', 'N/A', '', '', '+61406 177 027', '', 'al.ghuraba@hotmail.com'),
(69, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Aber Kataieh', 'Aber Kataieh', 'S000275', 'Abdullah Chabou', '', 'N/A', '', '', '+61405800724', '', 'aber_k@hotmail.com'),
(70, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Amina Ibrahim', 'Amina Ibrahim', 'S000372', 'Abdullah Chabou', '11/08/1996', 'Female', 'U3 836 Hume Hwy.', 'Bass Hill', '+61450959659', '', 'ameenaibrahim95@gmail.com'),
(71, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Aqsa Khalid', 'Aqsa Khalid', 'S000373', 'Abdullah Chabou', '08/10/1988', 'Female', '4/20 Villawood St.', 'Lakemba', '+61', '', 'shmalik25@hotmail.com'),
(72, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Aseyah Shipman', 'Aseyah Shipman', 'S000374', 'Abdullah Chabou', '03/06/1973', 'Female', '33a Binna Burra St.', 'Villawood', '+61434681799', '', 'new_aseyah@hotmail.com'),
(73, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Aysha Sian', 'Aysha Sian', 'S000375', 'Abdullah Chabou', '07/11/1997', 'Female', '3 Polya St.', 'Horsley park', '+61414760708', '', 'Aysharickard.11@gmail.com'),
(74, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Fawzie Abdallah', 'Fawzie Abdallah', 'S000377', 'Abdullah Chabou', '05/01/1996', 'Female', '31 Lyndley St.', 'Busby', '+61478163551', '', 'fawzie.abdallah@hotmail.com'),
(75, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Hannan Mzakzak', 'Hannan Mzakzak', 'S000379', 'Abdullah Chabou', '03/11/1993', 'Female', '64 Siemens Cres.', 'Emerton', '+61481261247', '', 'hanan.mzakzak@hotmail.com'),
(76, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Heba Sukkarieh', 'Heba Sukkarieh', 'S000380', 'Abdullah Chabou', '05/07/1990', 'Female', '4 Gwandalan Rd.', 'Edensor Pk', '+61414329200', '', 'heba.sukkarieh@hotmail.com'),
(77, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Iram Sirguroh', 'Iram Sirguroh', 'S000393', 'Abdullah Chabou', '04/10/1986', 'Female', '8 Akron Pl.', 'Toongabbi', '+61405216409', '', 'iram.sirguroh@gmail.com'),
(78, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Jasmin Akhter', 'Jasmin Akhter', 'S000416', 'Manal', '', 'Female', '', '', '+61411425898', '', ''),
(79, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Joumana Fawal', 'Joumana Fawal', 'S000417', 'Manal', '', 'Female', '', '', '+61431215064', '', ''),
(80, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Liliya Aziz', 'Liliya Aziz', 'S000419', 'Abdullah Chabou', '10/12/1970', 'Female', '', '', '+61432849604', '', 'Llaziz7@hotmail.com'),
(81, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Mia Hamzi', 'Mia Hamzi', 'S000382', 'Abdullah Chabou', '03/02/1985', 'Male', '1/119  123 Alan St.', 'Yagoona', '+61405551666', '', 'miahamzi@gmail.com'),
(82, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Mosca Shir Khan', 'Mosca Shir Khan', 'S000418', 'Abdullah Chabou', '03/23/1994', 'Female', '', '', '+61488031098', '', 'mosca_skhan@hotmail.com'),
(83, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Rebecka Chlela', 'Rebecka Chlela', 'S000383', 'Abdullah Chabou', '07/11/1993', 'Female', '126 johnston Rd.', 'Bass Hill', '+61449960017', '', 'chlelaa92@gmail.com'),
(84, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Samahe Mohamed', 'Samahe Mohamed', 'S000384', 'Abdullah Chabou', '', 'Female', '48 Fraser Ave.', 'Kellyville', '+61466841633', '', 'samahe.94@hotmail.com'),
(85, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Sarah Awad', 'Sarah Awad', 'S000385', 'Abdullah Chabou', '05/09/1995', 'Female', 'U6/221 Old kent Rd.', 'Greenacre', '+61451002055', '', 'Sarah.awad1@hotmail.com'),
(86, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Sarah Charafeddine', 'Sarah Charafeddine', 'S000391', 'Abdullah Chabou', '02/12/1990', 'Female', '21 Quest Ave.', 'Carramar', '+61450902180', '', 'sarahcharafedd@gmail.com'),
(87, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Sarah Woodbury', 'Sarah Woodbury', 'S000392', 'Abdullah Chabou', '10/01/1989', 'Female', '7 New St.', 'Auburn', '+61470625368', '', 'locochocko89@gmail.com'),
(88, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Suzan Hamdache', 'Suzan Hamdache', 'S000386', 'Abdullah Chabou', '06/11/1973', 'Female', '11 Bolinda St.', 'Busby', '+61410128967', '', 'suzanhamdache@icloud.com'),
(89, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Tracy Menzies', 'Tracy Menzies', 'S000388', 'Abdullah Chabou', '11/08/1962', 'Female', '21 Sherriff St.', 'Ashcroft', '+61401970415', '', 'tracey2033@hotmail.com'),
(90, 'Adult Sisters Islamic Studies', 'Sisters Class D', 'Zoe Allouche', 'Zoe Allouche', 'S000390', 'Abdullah Chabou', '03/10/2001', 'Female', '90 Mitchelle St.', 'Carramar', '+61478062477', '', 'zoeallouche1996@gmail.com'),
(91, 'Adult Sisters Short Courses', 'Sisters Short Courses', 'Fatma Arja', 'Fatma Arja', 'S000067', 'Abu Ishaaq', '', 'Female', '26 Yalta St.', '', '+61404082809', '', 'ffa45@hotmail.com'),
(92, 'Adult Sisters Short Courses', 'Sisters Short Courses', 'Kareema Alamudi', 'Kareema Alamudi', 'S000411', 'Abu Ishaaq', '04/03/1985', 'Female', '', '', '+61402195853', '', 'karima_alamudi@hotmail.com'),
(93, 'Adult Sisters Short Courses', 'Sisters Short Courses', 'Kristy Lee Cilidonio', 'Kristy Lee Cilidonio', 'S000403', 'Abu Ishaaq', '', 'Female', '', '', '+610424842812', '', 'krriisstyy@gmail.com'),
(94, 'Adult Sisters Short Courses', 'Sisters Short Courses', 'Marufa Yeasmin', 'Marufa Yeasmin', 'S000405', 'Abu Ishaaq', '', 'Female', '', '', '+61425155107', '', 'marufa_021@yahoo.com'),
(95, 'Adult Sisters Short Courses', 'Sisters Short Courses', 'Maysa Kanj', 'Maysa Kanj', 'S000406', 'Abu Ishaaq', '', 'Female', '', '', '+61451146875', '', 'Muslimahkay@gmail.com'),
(96, 'Adult Sisters Short Courses', 'Sisters Short Courses', 'Nasrine Awad', 'Nasrine Awad', 'S000404', 'Abu Ishaaq', '10/23/1992', 'Female', '', '', '+61402703878', '', 'nasrine.a@hotmail.com'),
(97, 'Adult Sisters Short Courses', 'Sisters Short Courses', 'Ronia Hadier', 'Ronia Hadier', 'S000407', 'Abu Ishaaq', '12/15/1990', 'Female', '', '', '+61424954991', '', 'ranianet90@hotmail.com'),
(98, 'Adult Sisters Short Courses', 'Sisters Short Courses', 'Wafa Kodat', 'Wafa Kodat', 'S000414', 'Abu Ishaaq', '', 'Female', '', '', '+61414412337', '', ''),
(99, 'Adult Sisters Short Courses', 'Sisters Short Courses', 'Zaynab Emam', 'Zaynab Emam', 'S000408', 'Abu Ishaaq', '07/04/1991', 'Female', '', '', '+61450650950', '', 'zaynab.emam@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mia_quran`
--

CREATE TABLE `mia_quran` (
  `id` int(11) DEFAULT NULL,
  `class` text,
  `subject` text,
  `firstname` text,
  `lastname` text,
  `studentid` text,
  `teacher` text,
  `dob` datetime DEFAULT NULL,
  `gender` text,
  `address` text,
  `city` text,
  `phone1` text,
  `phone2` text,
  `email` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mia_quran`
--

INSERT INTO `mia_quran` (`id`, `class`, `subject`, `firstname`, `lastname`, `studentid`, `teacher`, `dob`, `gender`, `address`, `city`, `phone1`, `phone2`, `email`) VALUES
(1, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Abdullah AlShehri', 'Abdullah AlShehri', 'S000372', 'Saumiah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61423 876 923', ''),
(2, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Ahmad Tasabehji', 'Ahmad Tasabehji', 'S000545', 'Saumiah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61426859556', ''),
(3, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Aiesha Tizani', 'Aiesha Tizani', 'S000012', 'Saumiah', '0000-00-00 00:00:00', 'N/A', '', '', '', '+61401 474 740', ''),
(4, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Ali Rima', 'Ali Rima', 'S000392', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61406811502', 'georgettem84@hotmail.com'),
(5, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Ali Teffaha', 'Ali Teffaha', 'S000544', 'Saumiah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61416500600', ''),
(6, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Amel Jarrah', 'Amel Jarrah', 'S000370', 'Saumiah', '0000-00-00 00:00:00', 'Female', '', '', '+61404789777', '+61414662800', ''),
(7, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Aya Jarrah', 'Aya Jarrah', 'S000371', 'Saumiah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61404 789 777', ''),
(8, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Diana Elmasri', 'Diana Elmasri', 'S000595', 'Saumiah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61405299666', ''),
(9, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Hijjaz Abdulrahman', 'Hijjaz Abdulrahman', 'S000349', 'Saumiah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61410044938', ''),
(10, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Ibrahim Rima', 'Ibrahim Rima', 'S000457', 'Saumiah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61424808598', ''),
(11, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Ismaeel Raad', 'Ismaeel Raad', 'S000013', '', '0000-00-00 00:00:00', 'N/A', '39 Coonabarabran Crescent.', 'Hoxton Park', '', '+61410 699 696', ''),
(12, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Israa Rima', 'Israa Rima', 'S000459', 'Saumiah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61424808598', ''),
(13, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Mariam Al Azzauui', 'Mariam Al Azzauui', 'S000585', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61469831413', ''),
(14, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Mariam Elkassir', 'Mariam Elkassir', 'S000309', 'Saumiah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61415926665', ''),
(15, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Mohammed Almahameed', 'Mohammed Almahameed', 'S000414', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61402135904', ''),
(16, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Mountaha Kobaitri', 'Mountaha Kobaitri', 'S000510', 'Saumiah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61487423240', ''),
(17, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Safiah Kammoun', 'Safiah Kammoun', 'S000219', 'Saumiah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61403053619', ''),
(18, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Sahil Oowise', 'Sahil Oowise', 'S000590', 'Saumiah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61478360235', ''),
(19, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Tayyibah Sayeed', 'Tayyibah Sayeed', 'S000383', 'Saumiah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61433772505', ''),
(20, 'Children Quran College Classes', 'Childrens QRME Level 2', 'Zaid Almahameed', 'Zaid Almahameed', 'S000416', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61402135904', ''),
(21, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Aadiat Shamim', 'Aadiat Shamim', 'S000062', 'Sheikh Saad', '0000-00-00 00:00:00', 'N/A', '2 Ancura Court.', 'Wattlegrove', '', '+61422807627', ''),
(22, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Abdullah Rifai', 'Abdullah Rifai', 'S000529', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61424196646', ''),
(23, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Abdulrahman Hamad', 'Abdulrahman Hamad', 'S000172', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61451979955', ''),
(24, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Abu Bakr Abdelaziz', 'Abu Bakr Abdelaziz', 'S000525', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61435397197', ''),
(25, 'Adult Males Quran College Classes', 'Advanced Memorization', 'AbuBakr Alam', 'AbuBakr Alam', 'S000050', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'N/A', '29a Speed St.', 'Liverpool ', '0433 350 980', '', ''),
(26, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Abubakr Shaheer', 'Abubakr Shaheer', 'S000523', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61431641945', ''),
(27, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Adnaan Ali', 'Adnaan Ali', 'S000164', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61430337939', ''),
(28, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Ahmad Ali', 'Ahmad Ali', 'S000260', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61430337939', ''),
(29, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Amatullah Rifai', 'Amatullah Rifai', 'S000530', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61424196646', ''),
(30, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Danyaal Zafar', 'Danyaal Zafar', 'S000080', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'N/A', '5 Medley Ave.', 'Liverpool ', '', '+61422 560 982', ''),
(31, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Gabriel Marjan', 'Gabriel Marjan', 'S000548', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61405018747', ''),
(32, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Hadi Naghi', 'Hadi Naghi', 'S000067', 'Sheikh Saad', '0000-00-00 00:00:00', 'N/A', '', '', '', '+61420431711', ''),
(33, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Haldun Bajramovic', 'Haldun Bajramovic', 'S000399', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61411 117 112', ''),
(34, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Iqtidar ahmed', 'Iqtidar ahmed', 'S000528', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61481143115', ''),
(35, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Khalid Khalak', 'Khalid Khalak', 'S000405', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61426823007', ''),
(36, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Mohamed Anas Hamad', 'Mohamed Anas Hamad', 'S000171', 'Sheikh Saad', '0000-00-00 00:00:00', 'Male', '', '', '', '+61451979955', ''),
(37, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Mohammed Shaheer', 'Mohammed Shaheer', 'S000522', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61431641945', ''),
(38, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Muhammad AlKhateeb', 'Muhammad AlKhateeb', 'S000591', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61403490202', ''),
(39, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Munira AlKhateeb', 'Munira AlKhateeb', 'S000592', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61403490202', ''),
(40, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Mustafa AlKhateeb', 'Mustafa AlKhateeb', 'S000593', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61403490202', ''),
(41, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Noureldin Abdelaziz', 'Noureldin Abdelaziz', 'S000524', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61435397197', ''),
(42, 'Adult Males Quran College Classes', 'Advanced Memorization', 'Zahi Naghi', 'Zahi Naghi', 'S000068', 'Sheikh Saad', '0000-00-00 00:00:00', 'N/A', '', '', '', '+61415 457 777', ''),
(43, 'Adult Female Quran College Classes', 'Advanced Sisters Memorisation', 'Ghazala Wahab', 'Ghazala Wahab', 'S000520', 'Sadiqah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61414437864', 'ghazala@dr.com'),
(44, 'Adult Female Quran College Classes', 'Advanced Sisters Memorisation', 'Jasmine Akhter', 'Jasmine Akhter', 'S000209', '', '0000-00-00 00:00:00', 'Female', '', '', '', '+61422807627', ''),
(45, 'Adult Males Quran College Classes', 'Beginner Adult Males Class', 'Ahmed Elzir', 'Ahmed Elzir', 'S000560', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61404257835', ''),
(46, 'Adult Males Quran College Classes', 'Beginner Adult Males Class', 'Ali Elzir', 'Ali Elzir', 'S000558', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61404257835', ''),
(47, 'Adult Males Quran College Classes', 'Beginner Adult Males Class', 'Amir Elzir', 'Amir Elzir', 'S000561', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61404257835', ''),
(48, 'Adult Males Quran College Classes', 'Beginner Adult Males Class', 'Ayman Elzir ', 'Ayman Elzir ', 'S000559', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61404257835', ''),
(49, 'Adult Males Quran College Classes', 'Beginner Adult Males Class', 'Omar Kataieh', 'Omar Kataieh', 'S000517', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61420588509', ''),
(50, 'Adult Males Quran College Classes', 'Beginner Adults Males Quran Reading Class A', 'Amir Khan', 'Amir Khan', 'S000563', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61413376790', ''),
(51, 'Adult Males Quran College Classes', 'Beginner Adults Males Quran Reading Class A', 'Ezadin Ismail', 'Ezadin Ismail', 'S000562', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61405477458', ''),
(52, 'Adult Males Quran College Classes', 'Beginner Adults Males Quran Reading Class A', 'Kashif Ghous', 'Kashif Ghous', 'S000521', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61412875167', ''),
(53, 'Adult Males Quran College Classes', 'Beginner Adults Males Quran Reading Class A', 'Khaled Najjar', 'Khaled Najjar', 'S000092', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'N/A', '9 Flanagan Ave.', 'Moorebank', '', '+61422 333 112', ''),
(54, 'Adult Males Quran College Classes', 'Beginner Adults Males Quran Reading Class A', 'Mohammad Meqdad Munayem', 'Mohammad Meqdad Munayem', 'S000550', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61425325075', ''),
(55, 'Adult Males Quran College Classes', 'Beginner Adults Males Quran Reading Class B', 'Ali Muhieddine', 'Ali Muhieddine', 'S000491', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61432111476', ''),
(56, 'Adult Males Quran College Classes', 'Beginner Adults Males Quran Reading Class B', 'Mohammad Houda', 'Mohammad Houda', 'S000474', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61424712212', ''),
(57, 'Adult Female Quran College Classes', 'Beginner Sisters Tajwid Morning Class', 'Joy Pese', 'Joy Pese', 'S000042', 'Khadijah Machlouche', '0000-00-00 00:00:00', 'N/A', '79 Townview Road.', 'Mt Pritchard', '', '+61474911349', 'byjoy_@outlook.com.au'),
(58, 'Adult Female Quran College Classes', 'Beginner Sisters Tajwid Morning Class', 'Manal Hassan', 'Manal Hassan', 'S000578', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61426545444', 'mahr5610@gmail.com'),
(59, 'Adult Female Quran College Classes', 'Beginner Sisters Tajwid Morning Class', 'Mariam Ayad', 'Mariam Ayad', 'S000574', 'Khadijah Machlouche', '0000-00-00 00:00:00', 'Female', '', '', '', '+61415483350', 'mariam.ayad@hotmail.com'),
(60, 'Adult Female Quran College Classes', 'Beginner Sisters Tajwid Morning Class', 'Nasreen Banu Syeda', 'Nasreen Banu Syeda', 'S000410', 'Umm AbdulHameed', '0000-00-00 00:00:00', 'Female', '', '', '', '+61402137340 ', 'samsyeda786@hotmail.com'),
(61, 'Adult Female Quran College Classes', 'Beginner Sisters Tajwid Morning Class', 'Nur Jehan Basha', 'Nur Jehan Basha', 'S000597', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61405725067', ''),
(62, 'Adult Female Quran College Classes', 'Beginner Sisters Tajwid Morning Class', 'Saumiah Albaf', 'Saumiah Albaf', 'S000443', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61404669921', 'saumiahalbaf@gmail.com'),
(63, 'Adult Female Quran College Classes', 'Beginner Sisters Tajwid Morning Class', 'Sue Rifai', 'Sue Rifai', 'S000598', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61414777331', ''),
(64, 'Adult Female Quran College Classes', 'Beginner Sisters Tajwid Morning Class', 'Suzana Radosavljevic', 'Suzana Radosavljevic', 'S000577', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61415220084', 'Suzana.rad@hotmail.com'),
(65, 'Adult Female Quran College Classes', 'Beginner Sisters Tajwid Morning Class', 'Tracey Menzies', 'Tracey Menzies', 'S000572', 'Khadijah Machlouche', '0000-00-00 00:00:00', 'Male', '', '', '', '+61401970415', 'tracey2033@hotmail.com'),
(66, 'Adult Female Quran College Classes', 'Beginner Sisters Tajwid Morning Class', 'Veronica Abu Zaid', 'Veronica Abu Zaid', 'S000487', 'Safa Hamdache', '0000-00-00 00:00:00', 'Female', '', '', '', '+61424 656 879', ''),
(67, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'AbdulQadir AlBayati', 'AbdulQadir AlBayati', 'S000140', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61410 007 213', ''),
(68, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Abdulrahman Jasm ', 'Abdulrahman Jasm ', 'S000334', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61 478 180 188', ''),
(69, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Ahmad Alboushama', 'Ahmad Alboushama', 'S000028', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'N/A', '3/810 Charles St.', 'Liverpool ', '', '+61470 233 785', ''),
(70, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Badr Rima', 'Badr Rima', 'S000458', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61424808598', ''),
(71, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Emad Teffaha', 'Emad Teffaha', 'S000546', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61 416 500 600', ''),
(72, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Ibrahim Jalloh', 'Ibrahim Jalloh', 'S000547', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61422374670', ''),
(73, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Issa Ghazzaoui', 'Issa Ghazzaoui', 'S000485', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61406277799', ''),
(74, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Mouhamed Hussein', 'Mouhamed Hussein', 'S000031', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'N/A', '32 Raine Ave.', 'Liverpool ', '', '+61404 281 341', ''),
(75, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Muhammad Raad', 'Muhammad Raad', 'S000051', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'N/A', '39 Coonabarabran Crescent.', 'Hoxton Park', '', '+61410 699 696', ''),
(76, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Rania Islam', 'Rania Islam', 'S000243', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61434283944', ''),
(77, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Shayan Oowise', 'Shayan Oowise', 'S000588', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61478360235', ''),
(78, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Wajih ElSayed', 'Wajih ElSayed', 'S000473', 'Mahmoud Coshnow', '0000-00-00 00:00:00', 'Male', '', '', '', '+61416087033', ''),
(79, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Zeyad AlDulaimi', 'Zeyad AlDulaimi', 'S000332', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61434 487 592', ''),
(80, 'Children Quran College Classes', 'Children Beginners Reading Quran', 'Ziad Arja', 'Ziad Arja', 'S000428', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61404082809', ''),
(81, 'Children Quran College Classes', 'Children QRME Level 2', 'Alyssar Elmasri', 'Alyssar Elmasri', 'S000596', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61405299666', ''),
(82, 'Children Quran College Classes', 'Children QRME Level 2', 'Jayda Molhem', 'Jayda Molhem', 'S000022', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'N/A', '33 William St.', 'Lurnea', '', '+61405523733', ''),
(83, 'Children Quran College Classes', 'Children QRME Level 2', 'Raghad Mosbah', 'Raghad Mosbah', 'S000543', 'Saumiah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61435838403', ''),
(84, 'Children Quran College Classes', 'Children QRME Level 4', 'Aamina Tizani', 'Aamina Tizani', 'S000011', 'Saumiah', '0000-00-00 00:00:00', 'N/A', '', '', '', '+61401 474 740', ''),
(85, 'Children Quran College Classes', 'Children QRME Level 4', 'Afsheen Shakhawat', 'Afsheen Shakhawat', 'S000139', 'Saumiah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61425 268 130', ''),
(86, 'Children Quran College Classes', 'Children QRME Level 4', 'Ahmed AlBayati', 'Ahmed AlBayati', 'S000141', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61410 007 213', ''),
(87, 'Children Quran College Classes', 'Children QRME Level 4', 'Aiysha Rima', 'Aiysha Rima', 'S000472', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61416828081', ''),
(88, 'Children Quran College Classes', 'Children QRME Level 4', 'Anas Shamim', 'Anas Shamim', 'S000204', 'Saumiah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61422807627', ''),
(89, 'Children Quran College Classes', 'Children QRME Level 4', 'Belal Hussein', 'Belal Hussein', 'S000020', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'N/A', '32 Raine Ave.', 'Liverpool ', '', '+61404 281 341', 'zhamdache@icloud.com'),
(90, 'Children Quran College Classes', 'Children QRME Level 4', 'Firdous Arja', 'Firdous Arja', 'S000429', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61404082809', ''),
(91, 'Children Quran College Classes', 'Children QRME Level 4', 'Jueyrie Ubaydullah', 'Jueyrie Ubaydullah', 'S000319', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61469 932 257', ''),
(92, 'Children Quran College Classes', 'Children QRME Level 4', 'Marwan Elkassir', 'Marwan Elkassir', 'S000308', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61415 926 665', ''),
(93, 'Children Quran College Classes', 'Children QRME Level 4', 'Rawya Teffaha', 'Rawya Teffaha', 'S000526', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61416500600', ''),
(94, 'Children Quran College Classes', 'Children QRME Level 4', 'Saniya Mahmoud', 'Saniya Mahmoud', 'S000365', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61415 937 166', ''),
(95, 'Children Quran College Classes', 'Children QRME Level 4', 'Sheik Ubaydullah', 'Sheik Ubaydullah', 'S000008', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'N/A', '1/5559 Goulburn St.', 'Liverpool ', '', '+61469 932 257', ''),
(96, 'Children Quran College Classes', 'Children QRME Level 4', 'Simra Hussein', 'Simra Hussein', 'S000513', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61452481976', 'shmalik25@hotmail.com'),
(97, 'Children Quran College Classes', 'Children QRME Level 4', 'Subhan Shouaib ', 'Subhan Shouaib ', 'S000432', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61403262881', ''),
(98, 'Children Quran College Classes', 'Children QRME Level 4', 'Yousef Rima', 'Yousef Rima', 'S000394', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61406811502', ''),
(99, 'Children Quran College Classes', 'Children QRME Level 4', 'Zayaan Maleek', 'Zayaan Maleek', 'S000023', 'Sheikh Abu Obaidah', '0000-00-00 00:00:00', 'N/A', '16 Mccubbin Place.', 'Casula', '', '+61418 389 389', ''),
(100, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Aashfi Shakhawat', 'Aashfi Shakhawat', 'S000135', 'Aisha Raad', '0000-00-00 00:00:00', 'Female', '', '', '', '+61425 268 130', ''),
(101, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Afraaz Siddiqui', 'Afraaz Siddiqui', 'S000198', 'Aisha Raad', '0000-00-00 00:00:00', 'Male', '', '', '', '+61412492246', 'moona@nticon.com.au'),
(102, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Ayeza Siddiqui', 'Ayeza Siddiqui', 'S000200', 'Aisha Raad', '0000-00-00 00:00:00', 'Female', '', '', '', '+61412492246', 'moona@nticon.com.au'),
(103, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Farhan Anjum', 'Farhan Anjum', 'S000331', 'Aisha Raad', '0000-00-00 00:00:00', 'Male', '', '', '', '+61413 595 562', ''),
(104, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Lubaina Zia', 'Lubaina Zia', 'S000583', 'Aisha Raad', '0000-00-00 00:00:00', 'Female', '', '', '', '+61432171096', 'mzia1@hotmail.com'),
(105, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Lujain Maleek', 'Lujain Maleek', 'S000061', 'Sheikh Saad', '0000-00-00 00:00:00', 'N/A', '16 Mccubbin Place.', 'Casula', '', '+61469 578 803', ''),
(106, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Maymoonah Jalloh', 'Maymoonah Jalloh', 'S000533', 'Aisha Raad', '0000-00-00 00:00:00', 'Female', '', '', '', '+61422374670', ''),
(107, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Rayhaan Amputch', 'Rayhaan Amputch', 'S000267', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61415590483', 'k.amputch@outlook.com'),
(108, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Rayyaan Amputch', 'Rayyaan Amputch', 'S000266', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61415590483', 'k.amputch@outlook.com'),
(109, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Rayyan Islam', 'Rayyan Islam', 'S000242', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61434283944', ''),
(110, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Rema AlShehri', 'Rema AlShehri', 'S000373', 'Aisha Raad', '0000-00-00 00:00:00', 'Female', '', '', '', '+61423 876 923', ''),
(111, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Shajarat Shamim', 'Shajarat Shamim', 'S000119', 'Aisha Raad', '0000-00-00 00:00:00', 'N/A', '2 Ancura Court.', 'Wattlegrove', '', '+61422 807 627', ''),
(112, 'Children Quran College Classes', 'Childrens Intermediate Memorisation', 'Zaineb Khalak', 'Zaineb Khalak', 'S000261', 'Aisha Raad', '0000-00-00 00:00:00', 'Female', '', '', '', '+61426823007', 'skhalak@yahoo.com'),
(113, 'Children Quran College Classes', 'Childrens QRME 1A', 'Adam AlDhaibi', 'Adam AlDhaibi', 'S000565', 'Sumayah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61424155014', ''),
(114, 'Children Quran College Classes', 'Childrens QRME 1A', 'Alyssa AlDhaibi', 'Alyssa AlDhaibi', 'S000566', 'Sumayah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61424155014', ''),
(115, 'Children Quran College Classes', 'Childrens QRME 1A', 'Amelia Umme Mahek', 'Amelia Umme Mahek', 'S000466', 'Sumayah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61406521798', ''),
(116, 'Children Quran College Classes', 'Childrens QRME 1A', 'Asiyah Wehbe', 'Asiyah Wehbe', 'S000539', 'Sumayah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61404219493', ''),
(117, 'Children Quran College Classes', 'Childrens QRME 1A', 'Ayda AlDhaibi', 'Ayda AlDhaibi', 'S000564', 'Sumayah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61424155014', ''),
(118, 'Children Quran College Classes', 'Childrens QRME 1A', 'Daneya Mohammad', 'Daneya Mohammad', 'S000315', 'Sumayah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61469 357 593', ''),
(119, 'Children Quran College Classes', 'Childrens QRME 1A', 'Faria Bint Mahboob', 'Faria Bint Mahboob', 'S000587', 'Sumayah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61449666199', ''),
(120, 'Children Quran College Classes', 'Childrens QRME 1A', 'Fawaz Assaad', 'Fawaz Assaad', 'S000542', 'Sumayah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61432809677', ''),
(121, 'Children Quran College Classes', 'Childrens QRME 1A', 'Mohammed Mahmoudurahman', 'Mohammed Mahmoudurahman', 'S000586', 'Sumayah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61449666199', ''),
(122, 'Children Quran College Classes', 'Childrens QRME 1A', 'Mustafa Al Azzauui', 'Mustafa Al Azzauui', 'S000584', 'Sumayah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61469831413', ''),
(123, 'Children Quran College Classes', 'Childrens QRME 1A', 'Rehana Saifullah', 'Rehana Saifullah', 'S000552', 'Sumayah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61470258490', ''),
(124, 'Children Quran College Classes', 'Childrens QRME 1A', 'Rohana Saifullah', 'Rohana Saifullah', 'S000553', 'Sumayah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61470258490', ''),
(125, 'Children Quran College Classes', 'Childrens QRME 1A', 'Suhayb Umayr Siddiqui', 'Suhayb Umayr Siddiqui', 'S000469', 'Sumayah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61488222071', ''),
(126, 'Children Quran College Classes', 'Childrens QRME 1A', 'Tasneem Ayoubi', 'Tasneem Ayoubi', 'S000320', 'Sumayah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61469 862 737', ''),
(127, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Abdulrahman AbdulRashid', 'Abdulrahman AbdulRashid', 'S000532', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Male', '', '', '', '+61469862102', ''),
(128, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Ahmed Jalloh', 'Ahmed Jalloh', 'S000505', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Male', '', '', '', '+61422374670', ''),
(129, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Arooba Sultana', 'Arooba Sultana', 'S000512', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Female', '', '', '', '+61435786556', ''),
(130, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Awwab Hussein', 'Awwab Hussein', 'S000514', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Male', '', '', '', '+61452481976', ''),
(131, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Dana Almahameed', 'Dana Almahameed', 'S000415', '', '0000-00-00 00:00:00', 'Male', '', '', '', '+61402135904', ''),
(132, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Hassan Alboushama', 'Hassan Alboushama', 'S000007', 'Umm Hijjaz', '0000-00-00 00:00:00', 'N/A', '3/810 Charles St.', 'Liverpool ', '', '+61470 233 785', ''),
(133, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Ibrahim Rifai', 'Ibrahim Rifai', 'S000515', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Male', '', '', '', '+61424196646', ''),
(134, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Ismaeel Jalloh', 'Ismaeel Jalloh', 'S000504', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Male', '', '', '', '+61422374670', ''),
(135, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Khadeejah AlHawari', 'Khadeejah AlHawari', 'S000506', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Female', '', '', '', '+61466838270', 'send_it_through@hotmail.com'),
(136, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Maha Youssef Badreddine', 'Maha Youssef Badreddine', 'S000503', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Female', '', '', '', '+61404669921', ''),
(137, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Nabeel Abdul', 'Nabeel Abdul', 'S000502', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Male', '', '', '', '+61416526077', ''),
(138, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Nabeelah Abdul', 'Nabeelah Abdul', 'S000501', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Female', '', '', '', '+61416526077', ''),
(139, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Omar Husseini', 'Omar Husseini', 'S000380', 'Sumayah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61405814061', ''),
(140, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Rufiul Kader', 'Rufiul Kader', 'S000511', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Male', '', '', '', '+61451921509', ''),
(141, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Safiyyah Abdulrahman', 'Safiyyah Abdulrahman', 'S000531', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Female', '', '', '', '+61410044938', ''),
(142, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Soliman Husseini', 'Soliman Husseini', 'S000381', 'Sumayah', '0000-00-00 00:00:00', 'Male', '', '', '', '+61405814061', ''),
(143, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Tasneem Zia', 'Tasneem Zia', 'S000507', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Female', '', '', '', '+61432 171 091', 'mzia1@hotmail.com'),
(144, 'Children Quran College Classes', 'Childrens QRME Level 1B', 'Tassnim Rima', 'Tassnim Rima', 'S000471', 'Umm Hijjaz', '0000-00-00 00:00:00', 'Female', '', '', '', '+61416828081', ''),
(145, 'Children Quran College Classes', 'Sisters Reading Quran ', 'Amanee Kammoun', 'Amanee Kammoun', 'S000218', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61403053619', ''),
(146, 'Children Quran College Classes', 'Sisters Reading Quran ', 'Badia Rima', 'Badia Rima', 'S000460', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61424808598', ''),
(147, 'Children Quran College Classes', 'Sisters Reading Quran ', 'Fateema Rima', 'Fateema Rima', 'S000393', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61406811502', ''),
(148, 'Children Quran College Classes', 'Sisters Reading Quran ', 'Leila Elmasri', 'Leila Elmasri', 'S000580', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61405299666', ''),
(149, 'Children Quran College Classes', 'Sisters Reading Quran ', 'Nadine Rima', 'Nadine Rima', 'S000461', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61424808598', ''),
(150, 'Children Quran College Classes', 'Sisters Reading Quran ', 'Nahidah AlDulaimi', 'Nahidah AlDulaimi', 'S000333', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Male', '', '', '', '+61434 481 592', ''),
(151, 'Children Quran College Classes', 'Sisters Reading Quran ', 'Safa Sayeed', 'Safa Sayeed', 'S000534', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61433417477', ''),
(152, 'Children Quran College Classes', 'Sisters Reading Quran ', 'Salma Syeda', 'Salma Syeda', 'S000188', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61425268127', 'shakhawat07@yahoo.com.au'),
(153, 'Children Quran College Classes', 'Sisters Reading Quran ', 'Sharmin Khan', 'Sharmin Khan', 'S000594', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61434283944', ''),
(154, 'Children Quran College Classes', 'Sisters Reading Quran ', 'Shazneen Oowise', 'Shazneen Oowise', 'S000589', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Female', '', '', '', '+61478360235', ''),
(155, 'Children Quran College Classes', 'Sisters Reading Quran ', 'Sumayyah Abdulrahman', 'Sumayyah Abdulrahman', 'S000350', 'Amal Shahrouk', '0000-00-00 00:00:00', 'Male', '', '', '', '+61410 044 938', ''),
(156, 'Adult Female Quran College Classes', 'Tajwid Sisters Evening Class', 'Abir AlBayati', 'Abir AlBayati', 'S000444', 'Sadiqah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61410 007 213', ''),
(157, 'Adult Female Quran College Classes', 'Tajwid Sisters Evening Class', 'Aqsa Sajjad', 'Aqsa Sajjad', 'S000537', 'Sadiqah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61452481976', ''),
(158, 'Adult Female Quran College Classes', 'Tajwid Sisters Evening Class', 'Faria Ahsan', 'Faria Ahsan', 'S000536', 'Sadiqah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61403710095', ''),
(159, 'Adult Female Quran College Classes', 'Tajwid Sisters Evening Class', 'Fatima Arja', 'Fatima Arja', 'S000431', 'Sadiqah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61404082809', ''),
(160, 'Adult Female Quran College Classes', 'Tajwid Sisters Evening Class', 'Omul Kulthom Ayoub', 'Omul Kulthom Ayoub', 'S000379', 'Sadiqah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61469862737', ''),
(161, 'Adult Female Quran College Classes', 'Tajwid Sisters Evening Class', 'Rawand Abuawwad', 'Rawand Abuawwad', 'S000535', 'Sadiqah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61450506135', ''),
(162, 'Adult Female Quran College Classes', 'Tajwid Sisters Evening Class', 'Souheir Ayad', 'Souheir Ayad', 'S000498', 'Sadiqah', '0000-00-00 00:00:00', 'Female', '', '', '', '+61413773228', ''),
(0, '', '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
`id` int(11) NOT NULL,
  `api_username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_signature` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_demo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `api_username`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'xxxxxx', 'xxxxxx', 'xxxxxx`', 'xxxxxx', '', 'no', '2016-10-19 13:56:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `read_notification`
--

CREATE TABLE `read_notification` (
`id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) NOT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
`id` int(11) NOT NULL,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `route_vehicles`
--

CREATE TABLE `route_vehicles` (
`id` int(11) NOT NULL,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sch_settings`
--

CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `lang_id` int(11) DEFAULT NULL,
  `dise_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_format` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `currency_symbol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_rtl` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'UTC',
  `session_id` int(11) DEFAULT NULL,
  `start_month` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sch_settings`
--

INSERT INTO `sch_settings` (`id`, `name`, `email`, `phone`, `address`, `lang_id`, `dise_code`, `date_format`, `currency`, `currency_symbol`, `is_rtl`, `timezone`, `session_id`, `start_month`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Markaz Imam Ahmad', 'support@blufour.com', '(02) 8712 9219', '230 Macquarie St, Liverpool, NSW 2170', 1, 'MIA', 'd-m-Y', 'AUD', '$', 'disabled', 'UTC', 11, '1', 'images.png', 'no', '2017-10-09 18:01:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
`id` int(11) NOT NULL,
  `section` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=478 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES
(397, 'Children Quran College Classes', 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(407, 'Adult Males Quran College Classes', 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(417, 'Adult Female Quran College Classes', 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(437, 'Adult Sisters Islamic Studies', 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(447, 'Adult Brothers Islamic Studies', 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(457, 'Adult Sisters Short Courses', 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(467, 'Adult Male Arabic Class', 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(477, 'Adult Female Arabic Class', 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `send_notification`
--

CREATE TABLE `send_notification` (
`id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `visible_student` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `visible_teacher` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `created_by` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `send_notification`
--

INSERT INTO `send_notification` (`id`, `title`, `publish_date`, `date`, `message`, `visible_student`, `visible_teacher`, `visible_parent`, `created_by`, `created_id`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 'School Closed for Ramadan', '2017-05-14', '2017-05-14', '<p>School will be closed from 25 May to 25 June</p>', 'Yes', 'Yes', 'Yes', 'admin', 1, 'no', '2017-05-16 10:01:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
`id` int(11) NOT NULL,
  `session` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES
(7, '2015-16', 'no', '2016-08-24 19:21:28', '0000-00-00 00:00:00'),
(11, '2016-17', 'no', '2016-08-24 19:26:19', '0000-00-00 00:00:00'),
(12, '2017-18', 'yes', '2017-10-09 08:09:44', '0000-00-00 00:00:00'),
(13, '2018-19', 'no', '2016-08-24 19:26:44', '0000-00-00 00:00:00'),
(14, '2019-20', 'no', '2016-08-24 19:26:55', '0000-00-00 00:00:00'),
(15, '2020-21', 'no', '2016-10-01 05:28:08', '0000-00-00 00:00:00'),
(16, '2021-22', 'no', '2016-10-01 05:28:20', '0000-00-00 00:00:00'),
(18, '2022-23', 'no', '2016-10-01 05:29:02', '0000-00-00 00:00:00'),
(19, '2023-24', 'no', '2016-10-01 05:29:10', '0000-00-00 00:00:00'),
(20, '2024-25', 'no', '2016-10-01 05:29:18', '0000-00-00 00:00:00'),
(21, '2025-26', 'no', '2016-10-01 05:30:10', '0000-00-00 00:00:00'),
(22, '2026-27', 'no', '2016-10-01 05:30:18', '0000-00-00 00:00:00'),
(23, '2027-28', 'no', '2016-10-01 05:30:24', '0000-00-00 00:00:00'),
(24, '2028-29', 'no', '2016-10-01 05:30:30', '0000-00-00 00:00:00'),
(25, '2029-30', 'no', '2016-10-01 05:30:37', '0000-00-00 00:00:00'),
(27, 'Term 1 2017', 'no', '2017-03-19 04:58:07', '0000-00-00 00:00:00'),
(37, 'Term 2 2017', 'no', '2017-03-19 04:58:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE `sms_config` (
`id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `api_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact` text COLLATE utf8_unicode_ci,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sms_config`
--

INSERT INTO `sms_config` (`id`, `type`, `name`, `api_id`, `contact`, `username`, `url`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(7, '', '', '', NULL, 'admin@afqs.com', 'http://pragmaticmarketing.com/AgilityRedirector.ht', 'password123', 'enabled', '2017-05-16 06:48:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
`id` int(11) NOT NULL,
  `student_parent_id` int(11) NOT NULL,
  `admission_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roll_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rte` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobileno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_address` text COLLATE utf8_unicode_ci,
  `permanent_address` text COLLATE utf8_unicode_ci,
  `category_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adhar_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `samagra_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_is` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_address` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `previous_school` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=12608 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES
(9677, 9647, 'S000372', 'S000372', NULL, 'Abdullah AlShehri', 'Abdullah AlShehri', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9687, 9657, 'S000545', 'S000545', NULL, 'Ahmad Tasabehji', 'Ahmad Tasabehji', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9697, 9667, 'S000012', 'S000012', NULL, 'Aiesha Tizani', 'Aiesha Tizani', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9707, 9677, 'S000392', 'S000392', NULL, 'Ali Rima', 'Ali Rima', 'No', 'uploads/student_images/no_image.png', '', 'georgettem84@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9717, 9687, 'S000544', 'S000544', NULL, 'Ali Teffaha', 'Ali Teffaha', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9727, 9697, 'S000370', 'S000370', NULL, 'Amel Jarrah', 'Amel Jarrah', 'No', 'uploads/student_images/no_image.png', '+61404789777', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9737, 9707, 'S000371', 'S000371', NULL, 'Aya Jarrah', 'Aya Jarrah', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9747, 9717, 'S000595', 'S000595', NULL, 'Diana Elmasri', 'Diana Elmasri', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9757, 9727, 'S000349', 'S000349', NULL, 'Hijjaz Abdulrahman', 'Hijjaz Abdulrahman', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9767, 9737, 'S000457', 'S000457', NULL, 'Ibrahim Rima', 'Ibrahim Rima', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9777, 9747, 'S000013', 'S000013', NULL, 'Ismaeel Raad', 'Ismaeel Raad', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9787, 9757, 'S000459', 'S000459', NULL, 'Israa Rima', 'Israa Rima', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9797, 9767, 'S000585', 'S000585', NULL, 'Mariam Al Azzauui', 'Mariam Al Azzauui', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9807, 9777, 'S000309', 'S000309', NULL, 'Mariam Elkassir', 'Mariam Elkassir', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9817, 9787, 'S000414', 'S000414', NULL, 'Mohammed Almahameed', 'Mohammed Almahameed', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9827, 9797, 'S000510', 'S000510', NULL, 'Mountaha Kobaitri', 'Mountaha Kobaitri', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9837, 9807, 'S000219', 'S000219', NULL, 'Safiah Kammoun', 'Safiah Kammoun', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9847, 9817, 'S000590', 'S000590', NULL, 'Sahil Oowise', 'Sahil Oowise', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9857, 9827, 'S000383', 'S000383', NULL, 'Tayyibah Sayeed', 'Tayyibah Sayeed', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9867, 9837, 'S000416', 'S000416', NULL, 'Zaid Almahameed', 'Zaid Almahameed', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9877, 9847, 'S000062', 'S000062', NULL, 'Aadiat Shamim', 'Aadiat Shamim', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9887, 9857, 'S000529', 'S000529', NULL, 'Abdullah Rifai', 'Abdullah Rifai', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9897, 9867, 'S000172', 'S000172', NULL, 'Abdulrahman Hamad', 'Abdulrahman Hamad', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9907, 9877, 'S000525', 'S000525', NULL, 'Abu Bakr Abdelaziz', 'Abu Bakr Abdelaziz', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9917, 9887, 'S000050', 'S000050', NULL, 'AbuBakr Alam', 'AbuBakr Alam', 'No', 'uploads/student_images/no_image.png', '0433 350 980', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9927, 9897, 'S000523', 'S000523', NULL, 'Abubakr Shaheer', 'Abubakr Shaheer', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9937, 9907, 'S000164', 'S000164', NULL, 'Adnaan Ali', 'Adnaan Ali', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9947, 9917, 'S000260', 'S000260', NULL, 'Ahmad Ali', 'Ahmad Ali', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9957, 9927, 'S000530', 'S000530', NULL, 'Amatullah Rifai', 'Amatullah Rifai', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9967, 9937, 'S000080', 'S000080', NULL, 'Danyaal Zafar', 'Danyaal Zafar', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9977, 9947, 'S000548', 'S000548', NULL, 'Gabriel Marjan', 'Gabriel Marjan', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9987, 9957, 'S000067', 'S000067', NULL, 'Hadi Naghi', 'Hadi Naghi', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9997, 9967, 'S000399', 'S000399', NULL, 'Haldun Bajramovic', 'Haldun Bajramovic', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10007, 9977, 'S000528', 'S000528', NULL, 'Iqtidar ahmed', 'Iqtidar ahmed', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10017, 9987, 'S000405', 'S000405', NULL, 'Khalid Khalak', 'Khalid Khalak', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10027, 9997, 'S000171', 'S000171', NULL, 'Mohamed Anas Hamad', 'Mohamed Anas Hamad', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10037, 10007, 'S000522', 'S000522', NULL, 'Mohammed Shaheer', 'Mohammed Shaheer', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10047, 10017, 'S000591', 'S000591', NULL, 'Muhammad AlKhateeb', 'Muhammad AlKhateeb', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10057, 10027, 'S000592', 'S000592', NULL, 'Munira AlKhateeb', 'Munira AlKhateeb', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10067, 10037, 'S000593', 'S000593', NULL, 'Mustafa AlKhateeb', 'Mustafa AlKhateeb', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10077, 10047, 'S000524', 'S000524', NULL, 'Noureldin Abdelaziz', 'Noureldin Abdelaziz', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10087, 10057, 'S000068', 'S000068', NULL, 'Zahi Naghi', 'Zahi Naghi', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10097, 10067, 'S000520', 'S000520', NULL, 'Ghazala Wahab', 'Ghazala Wahab', 'No', 'uploads/student_images/no_image.png', '', 'ghazala@dr.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10107, 10077, 'S000209', 'S000209', NULL, 'Jasmine Akhter', 'Jasmine Akhter', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10117, 10087, 'S000560', 'S000560', NULL, 'Ahmed Elzir', 'Ahmed Elzir', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10127, 10097, 'S000558', 'S000558', NULL, 'Ali Elzir', 'Ali Elzir', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10137, 10107, 'S000561', 'S000561', NULL, 'Amir Elzir', 'Amir Elzir', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10147, 10117, 'S000559', 'S000559', NULL, 'Ayman Elzir ', 'Ayman Elzir ', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10157, 10127, 'S000517', 'S000517', NULL, 'Omar Kataieh', 'Omar Kataieh', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10167, 10137, 'S000563', 'S000563', NULL, 'Amir Khan', 'Amir Khan', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10177, 10147, 'S000562', 'S000562', NULL, 'Ezadin Ismail', 'Ezadin Ismail', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10187, 10157, 'S000521', 'S000521', NULL, 'Kashif Ghous', 'Kashif Ghous', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10197, 10167, 'S000092', 'S000092', NULL, 'Khaled Najjar', 'Khaled Najjar', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10207, 10177, 'S000550', 'S000550', NULL, 'Mohammad Meqdad Munayem', 'Mohammad Meqdad Munayem', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10217, 10187, 'S000491', 'S000491', NULL, 'Ali Muhieddine', 'Ali Muhieddine', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10227, 10197, 'S000474', 'S000474', NULL, 'Mohammad Houda', 'Mohammad Houda', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10237, 10207, 'S000042', 'S000042', NULL, 'Joy Pese', 'Joy Pese', 'No', 'uploads/student_images/no_image.png', '', 'byjoy_@outlook.com.au', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10247, 10217, 'S000578', 'S000578', NULL, 'Manal Hassan', 'Manal Hassan', 'No', 'uploads/student_images/no_image.png', '', 'mahr5610@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10257, 10227, 'S000574', 'S000574', NULL, 'Mariam Ayad', 'Mariam Ayad', 'No', 'uploads/student_images/no_image.png', '', 'mariam.ayad@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10267, 10237, 'S000410', 'S000410', NULL, 'Nasreen Banu Syeda', 'Nasreen Banu Syeda', 'No', 'uploads/student_images/no_image.png', '', 'samsyeda786@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10277, 10247, 'S000597', 'S000597', NULL, 'Nur Jehan Basha', 'Nur Jehan Basha', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10287, 10257, 'S000443', 'S000443', NULL, 'Saumiah Albaf', 'Saumiah Albaf', 'No', 'uploads/student_images/no_image.png', '', 'saumiahalbaf@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10297, 10267, 'S000598', 'S000598', NULL, 'Sue Rifai', 'Sue Rifai', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10307, 10277, 'S000577', 'S000577', NULL, 'Suzana Radosavljevic', 'Suzana Radosavljevic', 'No', 'uploads/student_images/no_image.png', '', 'Suzana.rad@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10317, 10287, 'S000572', 'S000572', NULL, 'Tracey Menzies', 'Tracey Menzies', 'No', 'uploads/student_images/no_image.png', '', 'tracey2033@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10327, 10297, 'S000487', 'S000487', NULL, 'Veronica Abu Zaid', 'Veronica Abu Zaid', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10337, 10307, 'S000140', 'S000140', NULL, 'AbdulQadir AlBayati', 'AbdulQadir AlBayati', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10347, 10317, 'S000334', 'S000334', NULL, 'Abdulrahman Jasm ', 'Abdulrahman Jasm ', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10357, 10327, 'S000028', 'S000028', NULL, 'Ahmad Alboushama', 'Ahmad Alboushama', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10367, 10337, 'S000458', 'S000458', NULL, 'Badr Rima', 'Badr Rima', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10377, 10347, 'S000546', 'S000546', NULL, 'Emad Teffaha', 'Emad Teffaha', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10387, 10357, 'S000547', 'S000547', NULL, 'Ibrahim Jalloh', 'Ibrahim Jalloh', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10397, 10367, 'S000485', 'S000485', NULL, 'Issa Ghazzaoui', 'Issa Ghazzaoui', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10407, 10377, 'S000031', 'S000031', NULL, 'Mouhamed Hussein', 'Mouhamed Hussein', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10417, 10387, 'S000051', 'S000051', NULL, 'Muhammad Raad', 'Muhammad Raad', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10427, 10397, 'S000243', 'S000243', NULL, 'Rania Islam', 'Rania Islam', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10437, 10407, 'S000588', 'S000588', NULL, 'Shayan Oowise', 'Shayan Oowise', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10447, 10417, 'S000473', 'S000473', NULL, 'Wajih ElSayed', 'Wajih ElSayed', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10457, 10427, 'S000332', 'S000332', NULL, 'Zeyad AlDulaimi', 'Zeyad AlDulaimi', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10467, 10437, 'S000428', 'S000428', NULL, 'Ziad Arja', 'Ziad Arja', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10477, 10447, 'S000596', 'S000596', NULL, 'Alyssar Elmasri', 'Alyssar Elmasri', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10487, 10457, 'S000022', 'S000022', NULL, 'Jayda Molhem', 'Jayda Molhem', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10497, 10467, 'S000543', 'S000543', NULL, 'Raghad Mosbah', 'Raghad Mosbah', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10507, 10477, 'S000011', 'S000011', NULL, 'Aamina Tizani', 'Aamina Tizani', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10517, 10487, 'S000139', 'S000139', NULL, 'Afsheen Shakhawat', 'Afsheen Shakhawat', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10527, 10497, 'S000141', 'S000141', NULL, 'Ahmed AlBayati', 'Ahmed AlBayati', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10537, 10507, 'S000472', 'S000472', NULL, 'Aiysha Rima', 'Aiysha Rima', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10547, 10517, 'S000204', 'S000204', NULL, 'Anas Shamim', 'Anas Shamim', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10557, 10527, 'S000020', 'S000020', NULL, 'Belal Hussein', 'Belal Hussein', 'No', 'uploads/student_images/no_image.png', '', 'zhamdache@icloud.com', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10567, 10537, 'S000429', 'S000429', NULL, 'Firdous Arja', 'Firdous Arja', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10577, 10547, 'S000319', 'S000319', NULL, 'Jueyrie Ubaydullah', 'Jueyrie Ubaydullah', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10587, 10557, 'S000308', 'S000308', NULL, 'Marwan Elkassir', 'Marwan Elkassir', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10597, 10567, 'S000526', 'S000526', NULL, 'Rawya Teffaha', 'Rawya Teffaha', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10607, 10577, 'S000365', 'S000365', NULL, 'Saniya Mahmoud', 'Saniya Mahmoud', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10617, 10587, 'S000008', 'S000008', NULL, 'Sheik Ubaydullah', 'Sheik Ubaydullah', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10627, 10597, 'S000513', 'S000513', NULL, 'Simra Hussein', 'Simra Hussein', 'No', 'uploads/student_images/no_image.png', '', 'shmalik25@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10637, 10607, 'S000432', 'S000432', NULL, 'Subhan Shouaib ', 'Subhan Shouaib ', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10647, 10617, 'S000394', 'S000394', NULL, 'Yousef Rima', 'Yousef Rima', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10657, 10627, 'S000023', 'S000023', NULL, 'Zayaan Maleek', 'Zayaan Maleek', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10667, 10637, 'S000135', 'S000135', NULL, 'Aashfi Shakhawat', 'Aashfi Shakhawat', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10677, 10647, 'S000198', 'S000198', NULL, 'Afraaz Siddiqui', 'Afraaz Siddiqui', 'No', 'uploads/student_images/no_image.png', '', 'moona@nticon.com.au', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10687, 10657, 'S000200', 'S000200', NULL, 'Ayeza Siddiqui', 'Ayeza Siddiqui', 'No', 'uploads/student_images/no_image.png', '', 'moona@nticon.com.au', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10697, 10667, 'S000331', 'S000331', NULL, 'Farhan Anjum', 'Farhan Anjum', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10707, 10677, 'S000583', 'S000583', NULL, 'Lubaina Zia', 'Lubaina Zia', 'No', 'uploads/student_images/no_image.png', '', 'mzia1@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10717, 10687, 'S000061', 'S000061', NULL, 'Lujain Maleek', 'Lujain Maleek', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10727, 10697, 'S000533', 'S000533', NULL, 'Maymoonah Jalloh', 'Maymoonah Jalloh', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10737, 10707, 'S000267', 'S000267', NULL, 'Rayhaan Amputch', 'Rayhaan Amputch', 'No', 'uploads/student_images/no_image.png', '', 'k.amputch@outlook.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10747, 10717, 'S000266', 'S000266', NULL, 'Rayyaan Amputch', 'Rayyaan Amputch', 'No', 'uploads/student_images/no_image.png', '', 'k.amputch@outlook.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10757, 10727, 'S000242', 'S000242', NULL, 'Rayyan Islam', 'Rayyan Islam', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10767, 10737, 'S000373', 'S000373', NULL, 'Rema AlShehri', 'Rema AlShehri', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10777, 10747, 'S000119', 'S000119', NULL, 'Shajarat Shamim', 'Shajarat Shamim', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10787, 10757, 'S000261', 'S000261', NULL, 'Zaineb Khalak', 'Zaineb Khalak', 'No', 'uploads/student_images/no_image.png', '', 'skhalak@yahoo.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10797, 10767, 'S000565', 'S000565', NULL, 'Adam AlDhaibi', 'Adam AlDhaibi', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10807, 10777, 'S000566', 'S000566', NULL, 'Alyssa AlDhaibi', 'Alyssa AlDhaibi', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10817, 10787, 'S000466', 'S000466', NULL, 'Amelia Umme Mahek', 'Amelia Umme Mahek', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10827, 10797, 'S000539', 'S000539', NULL, 'Asiyah Wehbe', 'Asiyah Wehbe', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10837, 10807, 'S000564', 'S000564', NULL, 'Ayda AlDhaibi', 'Ayda AlDhaibi', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10847, 10817, 'S000315', 'S000315', NULL, 'Daneya Mohammad', 'Daneya Mohammad', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10857, 10827, 'S000587', 'S000587', NULL, 'Faria Bint Mahboob', 'Faria Bint Mahboob', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10867, 10837, 'S000542', 'S000542', NULL, 'Fawaz Assaad', 'Fawaz Assaad', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10877, 10847, 'S000586', 'S000586', NULL, 'Mohammed Mahmoudurahman', 'Mohammed Mahmoudurahman', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10887, 10857, 'S000584', 'S000584', NULL, 'Mustafa Al Azzauui', 'Mustafa Al Azzauui', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10897, 10867, 'S000552', 'S000552', NULL, 'Rehana Saifullah', 'Rehana Saifullah', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10907, 10877, 'S000553', 'S000553', NULL, 'Rohana Saifullah', 'Rohana Saifullah', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10917, 10887, 'S000469', 'S000469', NULL, 'Suhayb Umayr Siddiqui', 'Suhayb Umayr Siddiqui', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10927, 10897, 'S000320', 'S000320', NULL, 'Tasneem Ayoubi', 'Tasneem Ayoubi', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10937, 10907, 'S000532', 'S000532', NULL, 'Abdulrahman AbdulRashid', 'Abdulrahman AbdulRashid', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10947, 10917, 'S000505', 'S000505', NULL, 'Ahmed Jalloh', 'Ahmed Jalloh', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10957, 10927, 'S000512', 'S000512', NULL, 'Arooba Sultana', 'Arooba Sultana', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10967, 10937, 'S000514', 'S000514', NULL, 'Awwab Hussein', 'Awwab Hussein', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10977, 10947, 'S000415', 'S000415', NULL, 'Dana Almahameed', 'Dana Almahameed', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10987, 10957, 'S000007', 'S000007', NULL, 'Hassan Alboushama', 'Hassan Alboushama', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10997, 10967, 'S000515', 'S000515', NULL, 'Ibrahim Rifai', 'Ibrahim Rifai', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11007, 10977, 'S000504', 'S000504', NULL, 'Ismaeel Jalloh', 'Ismaeel Jalloh', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11017, 10987, 'S000506', 'S000506', NULL, 'Khadeejah AlHawari', 'Khadeejah AlHawari', 'No', 'uploads/student_images/no_image.png', '', 'send_it_through@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11027, 10997, 'S000503', 'S000503', NULL, 'Maha Youssef Badreddine', 'Maha Youssef Badreddine', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11037, 11007, 'S000502', 'S000502', NULL, 'Nabeel Abdul', 'Nabeel Abdul', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11047, 11017, 'S000501', 'S000501', NULL, 'Nabeelah Abdul', 'Nabeelah Abdul', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11057, 11027, 'S000380', 'S000380', NULL, 'Omar Husseini', 'Omar Husseini', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11067, 11037, 'S000511', 'S000511', NULL, 'Rufiul Kader', 'Rufiul Kader', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11077, 11047, 'S000531', 'S000531', NULL, 'Safiyyah Abdulrahman', 'Safiyyah Abdulrahman', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `student_parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES
(11087, 11057, 'S000381', 'S000381', NULL, 'Soliman Husseini', 'Soliman Husseini', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11097, 11067, 'S000507', 'S000507', NULL, 'Tasneem Zia', 'Tasneem Zia', 'No', 'uploads/student_images/no_image.png', '', 'mzia1@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11107, 11077, 'S000471', 'S000471', NULL, 'Tassnim Rima', 'Tassnim Rima', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11117, 11087, 'S000218', 'S000218', NULL, 'Amanee Kammoun', 'Amanee Kammoun', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11127, 11097, 'S000460', 'S000460', NULL, 'Badia Rima', 'Badia Rima', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11137, 11107, 'S000393', 'S000393', NULL, 'Fateema Rima', 'Fateema Rima', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11147, 11117, 'S000580', 'S000580', NULL, 'Leila Elmasri', 'Leila Elmasri', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11157, 11127, 'S000461', 'S000461', NULL, 'Nadine Rima', 'Nadine Rima', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11167, 11137, 'S000333', 'S000333', NULL, 'Nahidah AlDulaimi', 'Nahidah AlDulaimi', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11177, 11147, 'S000534', 'S000534', NULL, 'Safa Sayeed', 'Safa Sayeed', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11187, 11157, 'S000188', 'S000188', NULL, 'Salma Syeda', 'Salma Syeda', 'No', 'uploads/student_images/no_image.png', '', 'shakhawat07@yahoo.com.au', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11197, 11167, 'S000594', 'S000594', NULL, 'Sharmin Khan', 'Sharmin Khan', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11207, 11177, 'S000589', 'S000589', NULL, 'Shazneen Oowise', 'Shazneen Oowise', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11217, 11187, 'S000350', 'S000350', NULL, 'Sumayyah Abdulrahman', 'Sumayyah Abdulrahman', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11227, 11197, 'S000444', 'S000444', NULL, 'Abir AlBayati', 'Abir AlBayati', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11237, 11207, 'S000537', 'S000537', NULL, 'Aqsa Sajjad', 'Aqsa Sajjad', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11247, 11217, 'S000536', 'S000536', NULL, 'Faria Ahsan', 'Faria Ahsan', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11257, 11227, 'S000431', 'S000431', NULL, 'Fatima Arja', 'Fatima Arja', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11267, 11237, 'S000379', 'S000379', NULL, 'Omul Kulthom Ayoub', 'Omul Kulthom Ayoub', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11277, 11247, 'S000535', 'S000535', NULL, 'Rawand Abuawwad', 'Rawand Abuawwad', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11287, 11257, 'S000498', 'S000498', NULL, 'Souheir Ayad', 'Souheir Ayad', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11297, 11267, '', '', NULL, '', '', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11307, 11277, 'S000137', 'S000137', NULL, 'Anthea Costi', 'Anthea Costi', 'No', 'uploads/student_images/no_image.png', '+61405437500', 'antheacos@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11317, 11287, 'S000090', 'S000090', NULL, 'Bibi Meher', 'Bibi Meher', 'No', 'uploads/student_images/no_image.png', '+61403060975', 'saba_shuja@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11327, 11297, 'S000131', 'S000131', NULL, 'Ghaysa hijazi', 'Ghaysa hijazi', 'No', 'uploads/student_images/no_image.png', '+61431531031', 'ghaysahijazi@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11337, 11307, 'S000394', 'S000394', NULL, 'Halima Zraika', 'Halima Zraika', 'No', 'uploads/student_images/no_image.png', '+61405418822', 'halima.k8378@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11347, 11317, 'S000396', 'S000396', NULL, 'Hannan Raad', 'Hannan Raad', 'No', 'uploads/student_images/no_image.png', '+61410699696', 'h.a.raad27@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11357, 11327, 'S000107', 'S000107', NULL, 'Lorraine Ejje', 'Lorraine Ejje', 'No', 'uploads/student_images/no_image.png', '+61424652095', 'lorraine24@live.com.au', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11367, 11337, 'S000215', 'S000215', NULL, 'Manal Massri', 'Manal Massri', 'No', 'uploads/student_images/no_image.png', '+61431494707', 'manal@itmanage.com.au', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11377, 11347, 'S000110', 'S000110', NULL, 'Nemat Jneidi', 'Nemat Jneidi', 'No', 'uploads/student_images/no_image.png', '+61424444384', 'nematj92@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11387, 11357, 'S000109', 'S000109', NULL, 'Nisreen Haidar', 'Nisreen Haidar', 'No', 'uploads/student_images/no_image.png', '+61404623641', 'nisreen1216@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11397, 11367, 'S000410', 'S000410', NULL, 'Razan Dannoun', 'Razan Dannoun', 'No', 'uploads/student_images/no_image.png', '+61421656149', 'dr_hafda@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11407, 11377, 'S000119', 'S000119', NULL, 'Riham Abdelhalim', 'Riham Abdelhalim', 'No', 'uploads/student_images/no_image.png', '+61424196646', 'reez4islam@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11417, 11387, 'S000118', 'S000118', NULL, 'Umm Omar', 'Umm Omar', 'No', 'uploads/student_images/no_image.png', '+61490405697', 'umm_omar2@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11427, 11397, 'S000364', 'S000364', NULL, 'Abdullah Shaikh', 'Abdullah Shaikh', 'No', 'uploads/student_images/no_image.png', '+614357278177', 'abdullah_shaikh123@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11437, 11407, 'S000366', 'S000366', NULL, 'Abdulrahman Nemra', 'Abdulrahman Nemra', 'No', 'uploads/student_images/no_image.png', '+61432688067', 'a.nemra@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11447, 11417, 'S000351', 'S000351', NULL, 'Ahmad Alameddine', 'Ahmad Alameddine', 'No', 'uploads/student_images/no_image.png', '+61451969653', 'tyresexcel5811@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11457, 11427, 'S000339', 'S000339', NULL, 'Ahmed Alameddine', 'Ahmed Alameddine', 'No', 'uploads/student_images/no_image.png', '+61488467117', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11467, 11437, 'S000400', 'S000400', NULL, 'Ahmed Zreika', 'Ahmed Zreika', 'No', 'uploads/student_images/no_image.png', '+61450402109', 'ahmedd_zreika@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11477, 11447, 'S000346', 'S000346', NULL, 'Dawud Brian ', 'Dawud Brian ', 'No', 'uploads/student_images/no_image.png', '+61412591122', 'dawoodlechef@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11487, 11457, 'S000341', 'S000341', NULL, 'Deb Aili', 'Deb Aili', 'No', 'uploads/student_images/no_image.png', '+61451502119', 'hd.telecomm@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11497, 11467, 'S000415', 'S000415', NULL, 'Emad Issa', 'Emad Issa', 'No', 'uploads/student_images/no_image.png', '+61430148316', 'e.issa1991@live.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11507, 11477, 'S000362', 'S000362', NULL, 'Fadi Assaad', 'Fadi Assaad', 'No', 'uploads/student_images/no_image.png', '+61414529354', 'fadi_assaad@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11517, 11487, 'S000354', 'S000354', NULL, 'Fahad Shaikh', 'Fahad Shaikh', 'No', 'uploads/student_images/no_image.png', '+61430519944', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11527, 11497, 'S000342', 'S000342', NULL, 'Haidar Sakhra', 'Haidar Sakhra', 'No', 'uploads/student_images/no_image.png', '+61431754419', 'haider_sakhra143@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11537, 11507, 'S000353', 'S000353', NULL, 'Hesham Sahib', 'Hesham Sahib', 'No', 'uploads/student_images/no_image.png', '+61410367567', 'heshaam_s@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11547, 11517, 'S000347', 'S000347', NULL, 'Imran Katieh', 'Imran Katieh', 'No', 'uploads/student_images/no_image.png', '+61478189821', 'imrankatieh@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11557, 11527, 'S000361', 'S000361', NULL, 'Javed Kalam', 'Javed Kalam', 'No', 'uploads/student_images/no_image.png', '+61414138910', 'javed.binkalam@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11567, 11537, 'S000367', 'S000367', NULL, 'Khaled Abbas', 'Khaled Abbas', 'No', 'uploads/student_images/no_image.png', '+61466058022', 'abbasonline@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11577, 11547, 'S000365', 'S000365', NULL, 'Kheireddine Melhem', 'Kheireddine Melhem', 'No', 'uploads/student_images/no_image.png', '+61430302812', 'kheiro.m@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11587, 11557, 'S000412', 'S000412', NULL, 'Mahmoud Daher', 'Mahmoud Daher', 'No', 'uploads/student_images/no_image.png', '+61435503585', 'm.daher1996@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11597, 11567, 'S000355', 'S000355', NULL, 'Milad Sidiqui', 'Milad Sidiqui', 'No', 'uploads/student_images/no_image.png', '+61450003942', 'miladmsidiqui@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11607, 11577, 'S000409', 'S000409', NULL, 'Mohamed Abdelaziz', 'Mohamed Abdelaziz', 'No', 'uploads/student_images/no_image.png', '+61416866654', 'm.n.abdelaziz@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11617, 11587, 'S000340', 'S000340', NULL, 'Mohamed Hawi', 'Mohamed Hawi', 'No', 'uploads/student_images/no_image.png', '+61423930952', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11627, 11597, 'S000349', 'S000349', NULL, 'Mohammed Arja', 'Mohammed Arja', 'No', 'uploads/student_images/no_image.png', '+61412521846', 'mohammedarja@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11637, 11607, 'S000352', 'S000352', NULL, 'Mohammed Malas', 'Mohammed Malas', 'No', 'uploads/student_images/no_image.png', '+61414338001', 'moemalas@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11647, 11617, 'S000356', 'S000356', NULL, 'Mohammed Muhieddine', 'Mohammed Muhieddine', 'No', 'uploads/student_images/no_image.png', '+61432111476', 'mohammed.muhieddine@live.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11657, 11627, 'S000398', 'S000398', NULL, 'Mohammed Shaheed', 'Mohammed Shaheed', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11667, 11637, 'S000369', 'S000369', NULL, 'Mustafa Jabbar', 'Mustafa Jabbar', 'No', 'uploads/student_images/no_image.png', '+61416660786', 'mustafa.jabbar90@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11677, 11647, 'S000343', 'S000343', NULL, 'Omar Muhieddine', 'Omar Muhieddine', 'No', 'uploads/student_images/no_image.png', '+61450046627', 'omar.zfda@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11687, 11657, 'S000368', 'S000368', NULL, 'Rabee Alisabri', 'Rabee Alisabri', 'No', 'uploads/student_images/no_image.png', '+61414445743', 'rabee.alisabri@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11697, 11667, 'S000399', 'S000399', NULL, 'Rashid Mohamed', 'Rashid Mohamed', 'No', 'uploads/student_images/no_image.png', '+61412787706', 'krashid@live.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11707, 11677, 'S000363', 'S000363', NULL, 'Robert Todoroski', 'Robert Todoroski', 'No', 'uploads/student_images/no_image.png', '+61414196902', 'roberttodoroski@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11717, 11687, 'S000358', 'S000358', NULL, 'Saiyd Jamal', 'Saiyd Jamal', 'No', 'uploads/student_images/no_image.png', '+61435064544', 'saiyd.jamal@outlook.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11727, 11697, 'S000350', 'S000350', NULL, 'Samir Kataieh', 'Samir Kataieh', 'No', 'uploads/student_images/no_image.png', '+61424658880', 'bandsmotors@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11737, 11707, 'S000359', 'S000359', NULL, 'Yusuf Mhaiche', 'Yusuf Mhaiche', 'No', 'uploads/student_images/no_image.png', '+61421792594', 'yussuf91@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11747, 11717, 'S000344', 'S000344', NULL, 'Ziad Mashkoor', 'Ziad Mashkoor', 'No', 'uploads/student_images/no_image.png', '+61440191014', 'ziadmashkoor@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11757, 11727, 'S000323', 'S000323', NULL, 'Iqtidar Ahmed', 'Iqtidar Ahmed', 'No', 'uploads/student_images/no_image.png', '+61481143115', 'iqtidar.ahmed.education@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11767, 11737, 'S000254', 'S000254', NULL, 'Jalal Kamoun', 'Jalal Kamoun', 'No', 'uploads/student_images/no_image.png', '+61410 867 007', 'jalal_kamoun@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11777, 11747, 'S000245', 'S000245', NULL, 'Mahardhika Syarif Hidayatullah', 'Mahardhika Syarif Hidayatullah', 'No', 'uploads/student_images/no_image.png', '+61409823952', 'dhikash1997@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11787, 11757, 'S000043', 'S000043', NULL, 'Mahmoud ElKhatib', 'Mahmoud ElKhatib', 'No', 'uploads/student_images/no_image.png', '+61401442073', 'Moey_khatib@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11797, 11767, 'S000328', 'S000328', NULL, 'Shamim Babu', 'Shamim Babu', 'No', 'uploads/student_images/no_image.png', '+61422807627', 'babumunni@yahoo.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11807, 11777, 'S000262', 'S000262', NULL, 'Yasin Ashley', 'Yasin Ashley', 'No', 'uploads/student_images/no_image.png', '+61404 172 132', 'yasin_ashley@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11817, 11787, 'S000264', 'S000264', NULL, 'Yusuf Gelder', 'Yusuf Gelder', 'No', 'uploads/student_images/no_image.png', '+61447396633', 'yusuf.gelder97@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11827, 11797, 'S000318', 'S000318', NULL, 'Zak Chahal', 'Zak Chahal', 'No', 'uploads/student_images/no_image.png', '+61401 189 472', 'zakareya905@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11837, 11807, 'S000277', 'S000277', NULL, 'Amar Kabbara', 'Amar Kabbara', 'No', 'uploads/student_images/no_image.png', '+61424112008', 'zaatar.hassan@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11847, 11817, 'S000278', 'S000278', NULL, 'Aminata Wleh', 'Aminata Wleh', 'No', 'uploads/student_images/no_image.png', '+61432687501', 'i.mfofiemj@yahoo.com.au', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11857, 11827, 'S000280', 'S000280', NULL, 'Carly McQualter', 'Carly McQualter', 'No', 'uploads/student_images/no_image.png', '+61409 814 511', 'carly.mcqualter@bigpond.com', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11867, 11837, 'S000283', 'S000283', NULL, 'Emma Ramlawie', 'Emma Ramlawie', 'No', 'uploads/student_images/no_image.png', '+61414 869 425', 'emaarab@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11877, 11847, 'S000286', 'S000286', NULL, 'Hakimah Muslim', 'Hakimah Muslim', 'No', 'uploads/student_images/no_image.png', '+61410 044 938', 'kimm07@icloud.com', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11887, 11857, 'S000327', 'S000327', NULL, 'Hasina Kamel', 'Hasina Kamel', 'No', 'uploads/student_images/no_image.png', '+61470666493', 'hasinakamel@yahoo.com.au', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11897, 11867, 'S000192', 'S000192', NULL, 'Hasna bint A. Woodbury', 'Hasna bint A. Woodbury', 'No', 'uploads/student_images/no_image.png', '+610470625368', 'hasna.ilim@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11907, 11877, 'S000292', 'S000292', NULL, 'Mardhiah Abedine', 'Mardhiah Abedine', 'No', 'uploads/student_images/no_image.png', '+61416800550', 'mardhiahz@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11917, 11887, 'S000295', 'S000295', NULL, 'Nada Jamus', 'Nada Jamus', 'No', 'uploads/student_images/no_image.png', '+61406646196', 'Nadush7_7@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11927, 11897, 'S000296', 'S000296', NULL, 'Nazira Nazreen El Samman', 'Nazira Nazreen El Samman', 'No', 'uploads/student_images/no_image.png', '+61415131953', 'nazirahelsamman@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11937, 11907, 'S000312', 'S000312', NULL, 'Ramatulai Daramy', 'Ramatulai Daramy', 'No', 'uploads/student_images/no_image.png', '+610402487557', 'ramatulaidaramy@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11947, 11917, 'S000298', 'S000298', NULL, 'Refah Amin', 'Refah Amin', 'No', 'uploads/student_images/no_image.png', '+61416634308', 'refahamin99@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11957, 11927, 'S000338', 'S000338', NULL, 'Sagal Ahmed', 'Sagal Ahmed', 'No', 'uploads/student_images/no_image.png', '+61403452433', 'sagalahmed299@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11967, 11937, 'S000302', 'S000302', NULL, 'Umm Ibrahim ', 'Umm Ibrahim ', 'No', 'uploads/student_images/no_image.png', '+61404953950', 'ummibrahim@wasimah.com.au', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11977, 11947, 'S000303', 'S000303', NULL, 'Yonca Temel', 'Yonca Temel', 'No', 'uploads/student_images/no_image.png', '+61406 177 027', 'al.ghuraba@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11987, 11957, 'S000275', 'S000275', NULL, 'Aber Kataieh', 'Aber Kataieh', 'No', 'uploads/student_images/no_image.png', '+61405800724', 'aber_k@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11997, 11967, 'S000372', 'S000372', NULL, 'Amina Ibrahim', 'Amina Ibrahim', 'No', 'uploads/student_images/no_image.png', '+61450959659', 'ameenaibrahim95@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12007, 11977, 'S000373', 'S000373', NULL, 'Aqsa Khalid', 'Aqsa Khalid', 'No', 'uploads/student_images/no_image.png', '+61', 'shmalik25@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12017, 11987, 'S000374', 'S000374', NULL, 'Aseyah Shipman', 'Aseyah Shipman', 'No', 'uploads/student_images/no_image.png', '+61434681799', 'new_aseyah@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12027, 11997, 'S000375', 'S000375', NULL, 'Aysha Sian', 'Aysha Sian', 'No', 'uploads/student_images/no_image.png', '+61414760708', 'Aysharickard.11@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12037, 12007, 'S000377', 'S000377', NULL, 'Fawzie Abdallah', 'Fawzie Abdallah', 'No', 'uploads/student_images/no_image.png', '+61478163551', 'fawzie.abdallah@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12047, 12017, 'S000379', 'S000379', NULL, 'Hannan Mzakzak', 'Hannan Mzakzak', 'No', 'uploads/student_images/no_image.png', '+61481261247', 'hanan.mzakzak@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12057, 12027, 'S000380', 'S000380', NULL, 'Heba Sukkarieh', 'Heba Sukkarieh', 'No', 'uploads/student_images/no_image.png', '+61414329200', 'heba.sukkarieh@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12067, 12037, 'S000393', 'S000393', NULL, 'Iram Sirguroh', 'Iram Sirguroh', 'No', 'uploads/student_images/no_image.png', '+61405216409', 'iram.sirguroh@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12077, 12047, 'S000416', 'S000416', NULL, 'Jasmin Akhter', 'Jasmin Akhter', 'No', 'uploads/student_images/no_image.png', '+61411425898', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12087, 12057, 'S000417', 'S000417', NULL, 'Joumana Fawal', 'Joumana Fawal', 'No', 'uploads/student_images/no_image.png', '+61431215064', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12097, 12067, 'S000419', 'S000419', NULL, 'Liliya Aziz', 'Liliya Aziz', 'No', 'uploads/student_images/no_image.png', '+61432849604', 'Llaziz7@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12107, 12077, 'S000382', 'S000382', NULL, 'Mia Hamzi', 'Mia Hamzi', 'No', 'uploads/student_images/no_image.png', '+61405551666', 'miahamzi@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12117, 12087, 'S000418', 'S000418', NULL, 'Mosca Shir Khan', 'Mosca Shir Khan', 'No', 'uploads/student_images/no_image.png', '+61488031098', 'mosca_skhan@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12127, 12097, 'S000383', 'S000383', NULL, 'Rebecka Chlela', 'Rebecka Chlela', 'No', 'uploads/student_images/no_image.png', '+61449960017', 'chlelaa92@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12137, 12107, 'S000384', 'S000384', NULL, 'Samahe Mohamed', 'Samahe Mohamed', 'No', 'uploads/student_images/no_image.png', '+61466841633', 'samahe.94@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12147, 12117, 'S000385', 'S000385', NULL, 'Sarah Awad', 'Sarah Awad', 'No', 'uploads/student_images/no_image.png', '+61451002055', 'Sarah.awad1@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12157, 12127, 'S000391', 'S000391', NULL, 'Sarah Charafeddine', 'Sarah Charafeddine', 'No', 'uploads/student_images/no_image.png', '+61450902180', 'sarahcharafedd@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12167, 12137, 'S000392', 'S000392', NULL, 'Sarah Woodbury', 'Sarah Woodbury', 'No', 'uploads/student_images/no_image.png', '+61470625368', 'locochocko89@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12177, 12147, 'S000386', 'S000386', NULL, 'Suzan Hamdache', 'Suzan Hamdache', 'No', 'uploads/student_images/no_image.png', '+61410128967', 'suzanhamdache@icloud.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12187, 12157, 'S000388', 'S000388', NULL, 'Tracy Menzies', 'Tracy Menzies', 'No', 'uploads/student_images/no_image.png', '+61401970415', 'tracey2033@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12197, 12167, 'S000390', 'S000390', NULL, 'Zoe Allouche', 'Zoe Allouche', 'No', 'uploads/student_images/no_image.png', '+61478062477', 'zoeallouche1996@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12207, 12177, 'S000067', 'S000067', NULL, 'Fatma Arja', 'Fatma Arja', 'No', 'uploads/student_images/no_image.png', '+61404082809', 'ffa45@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12217, 12187, 'S000411', 'S000411', NULL, 'Kareema Alamudi', 'Kareema Alamudi', 'No', 'uploads/student_images/no_image.png', '+61402195853', 'karima_alamudi@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12227, 12197, 'S000403', 'S000403', NULL, 'Kristy Lee Cilidonio', 'Kristy Lee Cilidonio', 'No', 'uploads/student_images/no_image.png', '+610424842812', 'krriisstyy@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12237, 12207, 'S000405', 'S000405', NULL, 'Marufa Yeasmin', 'Marufa Yeasmin', 'No', 'uploads/student_images/no_image.png', '+61425155107', 'marufa_021@yahoo.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12247, 12217, 'S000406', 'S000406', NULL, 'Maysa Kanj', 'Maysa Kanj', 'No', 'uploads/student_images/no_image.png', '+61451146875', 'Muslimahkay@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12257, 12227, 'S000404', 'S000404', NULL, 'Nasrine Awad', 'Nasrine Awad', 'No', 'uploads/student_images/no_image.png', '+61402703878', 'nasrine.a@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12267, 12237, 'S000407', 'S000407', NULL, 'Ronia Hadier', 'Ronia Hadier', 'No', 'uploads/student_images/no_image.png', '+61424954991', 'ranianet90@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12277, 12247, 'S000414', 'S000414', NULL, 'Wafa Kodat', 'Wafa Kodat', 'No', 'uploads/student_images/no_image.png', '+61414412337', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12287, 12257, 'S000408', 'S000408', NULL, 'Zaynab Emam', 'Zaynab Emam', 'No', 'uploads/student_images/no_image.png', '+61450650950', 'zaynab.emam@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12297, 12267, 'Student ID', 'Student ID', NULL, 'Billal Minaoui', 'Billal Minaoui', 'No', 'uploads/student_images/no_image.png', '+61435837161', 'bella.h.92@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12307, 12277, 'S000142', 'S000142', NULL, 'Feroz Sattar', 'Feroz Sattar', 'No', 'uploads/student_images/no_image.png', '+61422401781', 'feroz.sattar1@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12317, 12287, 'S000146', 'S000146', NULL, 'Hadi Naghi', 'Hadi Naghi', 'No', 'uploads/student_images/no_image.png', '+61450616065', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12327, 12297, 'S000144', 'S000144', NULL, 'Javed Bin Kalam', 'Javed Bin Kalam', 'No', 'uploads/student_images/no_image.png', '+61414138910', 'javed.binkalam@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12337, 12307, 'S000139', 'S000139', NULL, 'Kashif Ghous', 'Kashif Ghous', 'No', 'uploads/student_images/no_image.png', '+61412875167', 'mkgg4n@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12347, 12317, 'S000137', 'S000137', NULL, 'Khaled Abbas', 'Khaled Abbas', 'No', 'uploads/student_images/no_image.png', '+61466058022', 'abbasonline@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12357, 12327, 'S000141', 'S000141', NULL, 'Khaled Minaoui', 'Khaled Minaoui', 'No', 'uploads/student_images/no_image.png', '+61452483321', 'minaoui73@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12367, 12337, 'S000138', 'S000138', NULL, 'Mohamad Kayal', 'Mohamad Kayal', 'No', 'uploads/student_images/no_image.png', '+61414266339 ', 'Mohamad85k@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12377, 12347, 'S000147', 'S000147', NULL, 'Mohamed Jafran Anzar ', 'Mohamed Jafran Anzar ', 'No', 'uploads/student_images/no_image.png', '+61490682679 ', 'jafanz@outlook.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12387, 12357, 'S000148', 'S000148', NULL, 'Omar AbuMahmoud', 'Omar AbuMahmoud', 'No', 'uploads/student_images/no_image.png', '+61405464646', 'omarabumahmoud@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12397, 12367, 'S000140', 'S000140', NULL, 'Raihan Iqbal', 'Raihan Iqbal', 'No', 'uploads/student_images/no_image.png', '+61421736086', 'raihan.iqbal@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00');
INSERT INTO `students` (`id`, `student_parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES
(12407, 12377, 'S000150', 'S000150', NULL, 'Rashid Mohamed', 'Rashid Mohamed', 'No', 'uploads/student_images/no_image.png', '+61412787706', 'krashid@live.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12417, 12387, 'S000143', 'S000143', NULL, 'Wassim El Saddik', 'Wassim El Saddik', 'No', 'uploads/student_images/no_image.png', '+61406008411', 'Wassim_jumex@outlook.com', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12427, 12397, 'S000149', 'S000149', NULL, 'Zahi Naghi', 'Zahi Naghi', 'No', 'uploads/student_images/no_image.png', '+61450670864', '', NULL, NULL, NULL, NULL, '', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12437, 12407, 'S000145', 'S000145', NULL, 'Amina Touma', 'Amina Touma', 'No', 'uploads/student_images/no_image.png', '+61490405697', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12447, 12417, 'S000124', 'S000124', NULL, 'Ayesha Shipman', 'Ayesha Shipman', 'No', 'uploads/student_images/no_image.png', '+61434681799', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12457, 12427, 'S000136', 'S000136', NULL, 'Aziza Elsaddik', 'Aziza Elsaddik', 'No', 'uploads/student_images/no_image.png', '+61450848988', 'azizaa.e@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12467, 12437, 'S000055', 'S000055', NULL, 'Fatma Arja', 'Fatma Arja', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12477, 12447, 'S000132', 'S000132', NULL, 'Hakimah Muslim', 'Hakimah Muslim', 'No', 'uploads/student_images/no_image.png', '+61410 044 938', 'hakimah007@yahoo.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12487, 12457, 'S000101', 'S000101', NULL, 'Hasna Woodbury', 'Hasna Woodbury', 'No', 'uploads/student_images/no_image.png', '+61470625368', 'hasna.ilim@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12497, 12467, 'S000088', 'S000088', NULL, 'Joumana Rifai', 'Joumana Rifai', 'No', 'uploads/student_images/no_image.png', '+61458080645', 'js4whair@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12507, 12477, 'S000054', 'S000054', NULL, 'Manel Aassar', 'Manel Aassar', 'No', 'uploads/student_images/no_image.png', '+61490050977', 'elkadri1@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12517, 12487, 'S000095', 'S000095', NULL, 'Marita Davies', 'Marita Davies', 'No', 'uploads/student_images/no_image.png', '+610423226186', 'marita_nsw_au@yahoo.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12527, 12497, 'S000069', 'S000069', NULL, 'Monira jebin', 'Monira jebin', 'No', 'uploads/student_images/no_image.png', '+61425303318', 'mjebin@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12537, 12507, 'S000084', 'S000084', NULL, 'Nemat Jneidi', 'Nemat Jneidi', 'No', 'uploads/student_images/no_image.png', '+610424444384', 'nematj92@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12547, 12517, 'S000125', 'S000125', NULL, 'Nurshafinah Binte Mohd Isa', 'Nurshafinah Binte Mohd Isa', 'No', 'uploads/student_images/no_image.png', '+61411570627', 'rocketrascal@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12557, 12527, 'S000130', 'S000130', NULL, 'Refah Amin ', 'Refah Amin ', 'No', 'uploads/student_images/no_image.png', '+610435011565', 'refahamin99@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12567, 12537, 'S000126', 'S000126', NULL, 'Ronia Kadri', 'Ronia Kadri', 'No', 'uploads/student_images/no_image.png', '+61410969912', 'elkadri1@hotmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12577, 12547, 'S000094', 'S000094', NULL, 'Sagal Ahmed', 'Sagal Ahmed', 'No', 'uploads/student_images/no_image.png', '+610403452433', 'sagalahmed299@gmail.com', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12587, 12557, 'S000127', 'S000127', NULL, 'Souheir Ayad', 'Souheir Ayad', 'No', 'uploads/student_images/no_image.png', '+413773228', '', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12597, 12567, 'S000133', 'S000133', NULL, 'Wafa Kodat', 'Wafa Kodat', 'No', 'uploads/student_images/no_image.png', '+61414412337', 'wafa1@live.com.au', NULL, NULL, NULL, NULL, '', NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12607, 12577, 'S000151', 'S000151', NULL, '', '', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', NULL, '2017-10-11 09:01:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students_old`
--

CREATE TABLE `students_old` (
`id` int(11) NOT NULL,
  `admission_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roll_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rte` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobileno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_address` text COLLATE utf8_unicode_ci,
  `permanent_address` text COLLATE utf8_unicode_ci,
  `category_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adhar_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `samagra_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_is` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_address` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `previous_school` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `student_parent_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students_old`
--

INSERT INTO `students_old` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `is_active`, `previous_school`, `created_at`, `updated_at`, `student_parent_id`) VALUES
(7, '101656', '101', '2017-03-19', 'Mohammed', 'Salaam', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2017-02-26', 'Male', '', '', '7', '', '', NULL, NULL, NULL, 'father', 'Mohammed', '12345678', '', 'Fatima', '12345678', '', 'Mohammed', 'Father', '12345678', '', '', 'yes', '', '2017-10-09 16:58:15', '0000-00-00 00:00:00', 1),
(17, '10011', '1', '2017-03-19', 'Manal', 'Massri', 'No', 'uploads/student_images/no_image.png', '', 'manal@ictechnology.com.au', NULL, NULL, NULL, '', '', '1984-01-01', 'Female', '', '', '7', '', '', '', '', '', 'mother', 'Aref', '', '', 'Halima', '', '', 'Halima', 'Mother', '04031494707', '', '', 'no', '', '2017-05-04 05:29:59', '0000-00-00 00:00:00', 1),
(18, '34684894', '141', '2017-04-26', 'krishanuu', 'Dass', 'No', 'uploads/student_images/18.jpg', '98489484', 'krishanu@technoexponent.com', NULL, NULL, NULL, '', '', '1988-06-14', 'Male', 'test address\r\ntest address2', 'test address\r\ntest address2', '', '', '', '', '', '', 'father', 'DAD', '987897984', 'govt', 'Mom', '3132155456', 'hw', 'DAD', 'Father', '987897984', 'govt', 'test address\r\ntest address2', 'no', '', '2017-04-28 13:03:48', '0000-00-00 00:00:00', 3),
(19, '', '', '2017-04-26', 'saibal', 'roy', 'No', 'uploads/student_images/no_image.png', '', 'saibal@technoexponent.com', NULL, NULL, NULL, '', '', '1989-11-23', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-04-28 13:03:58', '0000-00-00 00:00:00', 2),
(20, '9898811', '120', '2017-04-26', 'Sabeena', 'khatun', 'No', 'uploads/student_images/no_image.png', '', 'sabeena@test.com', NULL, NULL, NULL, '', '', '2000-02-01', 'Female', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-04-28 13:04:07', '0000-00-00 00:00:00', 1),
(21, '', '', '2017-05-02', 'krish', 'Das', 'No', 'uploads/student_images/no_image.png', '', 'krishanu@technoexponent.com', NULL, NULL, NULL, '', '', '2017-05-30', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-02 10:30:26', '0000-00-00 00:00:00', 3),
(22, '', '', '2017-05-02', 'saibb', 'roy', 'No', 'uploads/student_images/no_image.png', '', 'saibal@technoexponent.com', NULL, NULL, NULL, '', '', '1999-01-04', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-02 10:38:18', '0000-00-00 00:00:00', 3),
(23, '9898811', '222', '2017-05-02', 'Pritam', 'Das', 'No', 'uploads/student_images/no_image.png', '', 'saibal@technoexponent.com', NULL, NULL, NULL, '', '', '1999-05-18', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-02 10:45:23', '0000-00-00 00:00:00', 3),
(24, '', '', '2017-05-04', 'Abcd', 'Efgh', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2017-05-01', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-04 06:09:59', '0000-00-00 00:00:00', 4),
(25, '', '', '2017-05-04', '1234', '56789', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2017-05-01', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-04 06:10:31', '0000-00-00 00:00:00', 4),
(26, '561515', '', '2017-05-04', 'ss', 'Das', 'No', 'uploads/student_images/26.png', '', 'aas@technoexponent.com', NULL, NULL, NULL, '', '', '2008-12-29', 'Male', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-15 13:36:07', '0000-00-00 00:00:00', 4),
(27, '88898', '898989', '2017-05-15', 'Hameedha', 'Z', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2017-05-02', 'Female', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-15 12:06:53', '0000-00-00 00:00:00', 4),
(37, 'S6676', '', '2017-05-14', 'Hammed', 'A', 'No', 'uploads/student_images/no_image.png', '+61415327515', 'safade.billy@gmail.com', NULL, NULL, NULL, '123', '123', '2017-04-30', 'Male', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-15 12:08:42', '0000-00-00 00:00:00', 4),
(47, 'U88898', '8989', '2017-05-15', 'Fat', 'Sa', 'No', 'uploads/student_images/no_image.png', '12321', '23', NULL, NULL, NULL, '123', '123', '2017-05-01', 'Female', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-15 13:34:27', '0000-00-00 00:00:00', 4),
(57, 'S1001', '10', '2017-05-15', 'Ahmed', 'S', 'No', 'uploads/student_images/no_image.png', '+61415327551', 'mukthar.shiek@gmail.com', NULL, NULL, NULL, 'Public School', '2', '2017-05-02', 'Male', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-16 06:56:50', '0000-00-00 00:00:00', 7),
(67, 'S10001', '1', '2017-05-16', 'Abdul', 'Malik', 'No', 'uploads/student_images/no_image.png', '', 'abdulmalik@mia.com.au', NULL, NULL, NULL, 'Bass Hill Public School', '3', '2017-05-01', 'Male', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-16 09:40:16', '0000-00-00 00:00:00', 17),
(77, 'R99903', '8999', '2017-05-16', 'Abdul', 'Hammed', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, 'Bass Hill Public School', '5', '2017-04-30', 'Male', '', '', '17', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-16 09:41:27', '0000-00-00 00:00:00', 17),
(87, 'H6778', '78', '2017-05-16', 'Zainab', 'R', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, 'Bass Hill Public School', '4', '2017-04-30', 'Female', '', '', '27', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-16 09:42:04', '0000-00-00 00:00:00', 17);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendences`
--

CREATE TABLE `student_attendences` (
`id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_doc`
--

CREATE TABLE `student_doc` (
`id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
`id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `feemaster_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT '0000-00-00',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `student_parent_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_deposite`
--

CREATE TABLE `student_fees_deposite` (
`id` int(11) unsigned NOT NULL,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `amount_detail` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_discounts`
--

CREATE TABLE `student_fees_discounts` (
`id` int(11) unsigned NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_master`
--

CREATE TABLE `student_fees_master` (
`id` int(11) unsigned NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_import`
--

CREATE TABLE `student_import` (
`id` int(11) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `college` varchar(45) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `fathername` varchar(45) DEFAULT NULL,
  `mothername` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_parent`
--

CREATE TABLE `student_parent` (
`id` int(11) NOT NULL,
  `adhar_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `samagra_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_is` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_address` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=12578 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_parent`
--

INSERT INTO `student_parent` (`id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_email`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `is_active`, `created_at`, `updated_at`) VALUES
(9647, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Abdullah AlShehri', '', NULL, 'Mom of Abdullah AlShehri', '+61423 876 923', NULL, 'Dad of Abdullah AlShehri', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9657, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ahmad Tasabehji', '', NULL, 'Mom of Ahmad Tasabehji', '+61426859556', NULL, 'Dad of Ahmad Tasabehji', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9667, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aiesha Tizani', '', NULL, 'Mom of Aiesha Tizani', '+61401 474 740', NULL, 'Dad of Aiesha Tizani', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9677, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ali Rima', '', NULL, 'Mom of Ali Rima', '+61406811502', NULL, 'Dad of Ali Rima', 'georgettem84@hotmail.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9687, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ali Teffaha', '', NULL, 'Mom of Ali Teffaha', '+61416500600', NULL, 'Dad of Ali Teffaha', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9697, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Amel Jarrah', '+61404789777', NULL, 'Mom of Amel Jarrah', '+61414662800', NULL, 'Dad of Amel Jarrah', '', NULL, '+61404789777', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9707, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aya Jarrah', '', NULL, 'Mom of Aya Jarrah', '+61404 789 777', NULL, 'Dad of Aya Jarrah', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9717, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Diana Elmasri', '', NULL, 'Mom of Diana Elmasri', '+61405299666', NULL, 'Dad of Diana Elmasri', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9727, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Hijjaz Abdulrahman', '', NULL, 'Mom of Hijjaz Abdulrahman', '+61410044938', NULL, 'Dad of Hijjaz Abdulrahman', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9737, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ibrahim Rima', '', NULL, 'Mom of Ibrahim Rima', '+61424808598', NULL, 'Dad of Ibrahim Rima', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9747, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ismaeel Raad', '', NULL, 'Mom of Ismaeel Raad', '+61410 699 696', NULL, 'Dad of Ismaeel Raad', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9757, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Israa Rima', '', NULL, 'Mom of Israa Rima', '+61424808598', NULL, 'Dad of Israa Rima', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9767, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mariam Al Azzauui', '', NULL, 'Mom of Mariam Al Azzauui', '+61469831413', NULL, 'Dad of Mariam Al Azzauui', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9777, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mariam Elkassir', '', NULL, 'Mom of Mariam Elkassir', '+61415926665', NULL, 'Dad of Mariam Elkassir', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9787, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohammed Almahameed', '', NULL, 'Mom of Mohammed Almahameed', '+61402135904', NULL, 'Dad of Mohammed Almahameed', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9797, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mountaha Kobaitri', '', NULL, 'Mom of Mountaha Kobaitri', '+61487423240', NULL, 'Dad of Mountaha Kobaitri', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9807, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Safiah Kammoun', '', NULL, 'Mom of Safiah Kammoun', '+61403053619', NULL, 'Dad of Safiah Kammoun', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9817, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Sahil Oowise', '', NULL, 'Mom of Sahil Oowise', '+61478360235', NULL, 'Dad of Sahil Oowise', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9827, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Tayyibah Sayeed', '', NULL, 'Mom of Tayyibah Sayeed', '+61433772505', NULL, 'Dad of Tayyibah Sayeed', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9837, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Zaid Almahameed', '', NULL, 'Mom of Zaid Almahameed', '+61402135904', NULL, 'Dad of Zaid Almahameed', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9847, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aadiat Shamim', '', NULL, 'Mom of Aadiat Shamim', '+61422807627', NULL, 'Dad of Aadiat Shamim', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9857, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Abdullah Rifai', '', NULL, 'Mom of Abdullah Rifai', '+61424196646', NULL, 'Dad of Abdullah Rifai', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9867, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Abdulrahman Hamad', '', NULL, 'Mom of Abdulrahman Hamad', '+61451979955', NULL, 'Dad of Abdulrahman Hamad', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9877, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Abu Bakr Abdelaziz', '', NULL, 'Mom of Abu Bakr Abdelaziz', '+61435397197', NULL, 'Dad of Abu Bakr Abdelaziz', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9887, NULL, NULL, NULL, NULL, NULL, '', 'Dad of AbuBakr Alam', '0433 350 980', NULL, 'Mom of AbuBakr Alam', '', NULL, 'Dad of AbuBakr Alam', '', NULL, '0433 350 980', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9897, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Abubakr Shaheer', '', NULL, 'Mom of Abubakr Shaheer', '+61431641945', NULL, 'Dad of Abubakr Shaheer', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9907, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Adnaan Ali', '', NULL, 'Mom of Adnaan Ali', '+61430337939', NULL, 'Dad of Adnaan Ali', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9917, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ahmad Ali', '', NULL, 'Mom of Ahmad Ali', '+61430337939', NULL, 'Dad of Ahmad Ali', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9927, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Amatullah Rifai', '', NULL, 'Mom of Amatullah Rifai', '+61424196646', NULL, 'Dad of Amatullah Rifai', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9937, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Danyaal Zafar', '', NULL, 'Mom of Danyaal Zafar', '+61422 560 982', NULL, 'Dad of Danyaal Zafar', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9947, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Gabriel Marjan', '', NULL, 'Mom of Gabriel Marjan', '+61405018747', NULL, 'Dad of Gabriel Marjan', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9957, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Hadi Naghi', '', NULL, 'Mom of Hadi Naghi', '+61420431711', NULL, 'Dad of Hadi Naghi', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9967, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Haldun Bajramovic', '', NULL, 'Mom of Haldun Bajramovic', '+61411 117 112', NULL, 'Dad of Haldun Bajramovic', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9977, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Iqtidar ahmed', '', NULL, 'Mom of Iqtidar ahmed', '+61481143115', NULL, 'Dad of Iqtidar ahmed', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9987, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Khalid Khalak', '', NULL, 'Mom of Khalid Khalak', '+61426823007', NULL, 'Dad of Khalid Khalak', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9997, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohamed Anas Hamad', '', NULL, 'Mom of Mohamed Anas Hamad', '+61451979955', NULL, 'Dad of Mohamed Anas Hamad', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10007, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohammed Shaheer', '', NULL, 'Mom of Mohammed Shaheer', '+61431641945', NULL, 'Dad of Mohammed Shaheer', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10017, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Muhammad AlKhateeb', '', NULL, 'Mom of Muhammad AlKhateeb', '+61403490202', NULL, 'Dad of Muhammad AlKhateeb', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10027, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Munira AlKhateeb', '', NULL, 'Mom of Munira AlKhateeb', '+61403490202', NULL, 'Dad of Munira AlKhateeb', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10037, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mustafa AlKhateeb', '', NULL, 'Mom of Mustafa AlKhateeb', '+61403490202', NULL, 'Dad of Mustafa AlKhateeb', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10047, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Noureldin Abdelaziz', '', NULL, 'Mom of Noureldin Abdelaziz', '+61435397197', NULL, 'Dad of Noureldin Abdelaziz', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10057, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Zahi Naghi', '', NULL, 'Mom of Zahi Naghi', '+61415 457 777', NULL, 'Dad of Zahi Naghi', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10067, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ghazala Wahab', '', NULL, 'Mom of Ghazala Wahab', '+61414437864', NULL, 'Dad of Ghazala Wahab', 'ghazala@dr.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10077, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Jasmine Akhter', '', NULL, 'Mom of Jasmine Akhter', '+61422807627', NULL, 'Dad of Jasmine Akhter', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10087, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ahmed Elzir', '', NULL, 'Mom of Ahmed Elzir', '+61404257835', NULL, 'Dad of Ahmed Elzir', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10097, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ali Elzir', '', NULL, 'Mom of Ali Elzir', '+61404257835', NULL, 'Dad of Ali Elzir', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10107, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Amir Elzir', '', NULL, 'Mom of Amir Elzir', '+61404257835', NULL, 'Dad of Amir Elzir', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10117, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ayman Elzir ', '', NULL, 'Mom of Ayman Elzir ', '+61404257835', NULL, 'Dad of Ayman Elzir ', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10127, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Omar Kataieh', '', NULL, 'Mom of Omar Kataieh', '+61420588509', NULL, 'Dad of Omar Kataieh', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10137, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Amir Khan', '', NULL, 'Mom of Amir Khan', '+61413376790', NULL, 'Dad of Amir Khan', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10147, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ezadin Ismail', '', NULL, 'Mom of Ezadin Ismail', '+61405477458', NULL, 'Dad of Ezadin Ismail', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10157, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Kashif Ghous', '', NULL, 'Mom of Kashif Ghous', '+61412875167', NULL, 'Dad of Kashif Ghous', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10167, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Khaled Najjar', '', NULL, 'Mom of Khaled Najjar', '+61422 333 112', NULL, 'Dad of Khaled Najjar', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10177, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohammad Meqdad Munayem', '', NULL, 'Mom of Mohammad Meqdad Munayem', '+61425325075', NULL, 'Dad of Mohammad Meqdad Munayem', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10187, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ali Muhieddine', '', NULL, 'Mom of Ali Muhieddine', '+61432111476', NULL, 'Dad of Ali Muhieddine', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10197, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohammad Houda', '', NULL, 'Mom of Mohammad Houda', '+61424712212', NULL, 'Dad of Mohammad Houda', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10207, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Joy Pese', '', NULL, 'Mom of Joy Pese', '+61474911349', NULL, 'Dad of Joy Pese', 'byjoy_@outlook.com.au', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10217, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Manal Hassan', '', NULL, 'Mom of Manal Hassan', '+61426545444', NULL, 'Dad of Manal Hassan', 'mahr5610@gmail.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10227, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mariam Ayad', '', NULL, 'Mom of Mariam Ayad', '+61415483350', NULL, 'Dad of Mariam Ayad', 'mariam.ayad@hotmail.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10237, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nasreen Banu Syeda', '', NULL, 'Mom of Nasreen Banu Syeda', '+61402137340 ', NULL, 'Dad of Nasreen Banu Syeda', 'samsyeda786@hotmail.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10247, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nur Jehan Basha', '', NULL, 'Mom of Nur Jehan Basha', '+61405725067', NULL, 'Dad of Nur Jehan Basha', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10257, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Saumiah Albaf', '', NULL, 'Mom of Saumiah Albaf', '+61404669921', NULL, 'Dad of Saumiah Albaf', 'saumiahalbaf@gmail.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10267, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Sue Rifai', '', NULL, 'Mom of Sue Rifai', '+61414777331', NULL, 'Dad of Sue Rifai', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10277, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Suzana Radosavljevic', '', NULL, 'Mom of Suzana Radosavljevic', '+61415220084', NULL, 'Dad of Suzana Radosavljevic', 'Suzana.rad@hotmail.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10287, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Tracey Menzies', '', NULL, 'Mom of Tracey Menzies', '+61401970415', NULL, 'Dad of Tracey Menzies', 'tracey2033@hotmail.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10297, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Veronica Abu Zaid', '', NULL, 'Mom of Veronica Abu Zaid', '+61424 656 879', NULL, 'Dad of Veronica Abu Zaid', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10307, NULL, NULL, NULL, NULL, NULL, '', 'Dad of AbdulQadir AlBayati', '', NULL, 'Mom of AbdulQadir AlBayati', '+61410 007 213', NULL, 'Dad of AbdulQadir AlBayati', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10317, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Abdulrahman Jasm ', '', NULL, 'Mom of Abdulrahman Jasm ', '+61 478 180 188', NULL, 'Dad of Abdulrahman Jasm ', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10327, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ahmad Alboushama', '', NULL, 'Mom of Ahmad Alboushama', '+61470 233 785', NULL, 'Dad of Ahmad Alboushama', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10337, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Badr Rima', '', NULL, 'Mom of Badr Rima', '+61424808598', NULL, 'Dad of Badr Rima', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10347, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Emad Teffaha', '', NULL, 'Mom of Emad Teffaha', '+61 416 500 600', NULL, 'Dad of Emad Teffaha', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10357, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ibrahim Jalloh', '', NULL, 'Mom of Ibrahim Jalloh', '+61422374670', NULL, 'Dad of Ibrahim Jalloh', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10367, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Issa Ghazzaoui', '', NULL, 'Mom of Issa Ghazzaoui', '+61406277799', NULL, 'Dad of Issa Ghazzaoui', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10377, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mouhamed Hussein', '', NULL, 'Mom of Mouhamed Hussein', '+61404 281 341', NULL, 'Dad of Mouhamed Hussein', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10387, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Muhammad Raad', '', NULL, 'Mom of Muhammad Raad', '+61410 699 696', NULL, 'Dad of Muhammad Raad', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10397, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rania Islam', '', NULL, 'Mom of Rania Islam', '+61434283944', NULL, 'Dad of Rania Islam', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10407, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Shayan Oowise', '', NULL, 'Mom of Shayan Oowise', '+61478360235', NULL, 'Dad of Shayan Oowise', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10417, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Wajih ElSayed', '', NULL, 'Mom of Wajih ElSayed', '+61416087033', NULL, 'Dad of Wajih ElSayed', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10427, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Zeyad AlDulaimi', '', NULL, 'Mom of Zeyad AlDulaimi', '+61434 487 592', NULL, 'Dad of Zeyad AlDulaimi', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10437, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ziad Arja', '', NULL, 'Mom of Ziad Arja', '+61404082809', NULL, 'Dad of Ziad Arja', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10447, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Alyssar Elmasri', '', NULL, 'Mom of Alyssar Elmasri', '+61405299666', NULL, 'Dad of Alyssar Elmasri', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10457, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Jayda Molhem', '', NULL, 'Mom of Jayda Molhem', '+61405523733', NULL, 'Dad of Jayda Molhem', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10467, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Raghad Mosbah', '', NULL, 'Mom of Raghad Mosbah', '+61435838403', NULL, 'Dad of Raghad Mosbah', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10477, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aamina Tizani', '', NULL, 'Mom of Aamina Tizani', '+61401 474 740', NULL, 'Dad of Aamina Tizani', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10487, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Afsheen Shakhawat', '', NULL, 'Mom of Afsheen Shakhawat', '+61425 268 130', NULL, 'Dad of Afsheen Shakhawat', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10497, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ahmed AlBayati', '', NULL, 'Mom of Ahmed AlBayati', '+61410 007 213', NULL, 'Dad of Ahmed AlBayati', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10507, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aiysha Rima', '', NULL, 'Mom of Aiysha Rima', '+61416828081', NULL, 'Dad of Aiysha Rima', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10517, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Anas Shamim', '', NULL, 'Mom of Anas Shamim', '+61422807627', NULL, 'Dad of Anas Shamim', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10527, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Belal Hussein', '', NULL, 'Mom of Belal Hussein', '+61404 281 341', NULL, 'Dad of Belal Hussein', 'zhamdache@icloud.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10537, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Firdous Arja', '', NULL, 'Mom of Firdous Arja', '+61404082809', NULL, 'Dad of Firdous Arja', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10547, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Jueyrie Ubaydullah', '', NULL, 'Mom of Jueyrie Ubaydullah', '+61469 932 257', NULL, 'Dad of Jueyrie Ubaydullah', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10557, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Marwan Elkassir', '', NULL, 'Mom of Marwan Elkassir', '+61415 926 665', NULL, 'Dad of Marwan Elkassir', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10567, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rawya Teffaha', '', NULL, 'Mom of Rawya Teffaha', '+61416500600', NULL, 'Dad of Rawya Teffaha', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10577, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Saniya Mahmoud', '', NULL, 'Mom of Saniya Mahmoud', '+61415 937 166', NULL, 'Dad of Saniya Mahmoud', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10587, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Sheik Ubaydullah', '', NULL, 'Mom of Sheik Ubaydullah', '+61469 932 257', NULL, 'Dad of Sheik Ubaydullah', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10597, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Simra Hussein', '', NULL, 'Mom of Simra Hussein', '+61452481976', NULL, 'Dad of Simra Hussein', 'shmalik25@hotmail.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10607, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Subhan Shouaib ', '', NULL, 'Mom of Subhan Shouaib ', '+61403262881', NULL, 'Dad of Subhan Shouaib ', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10617, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Yousef Rima', '', NULL, 'Mom of Yousef Rima', '+61406811502', NULL, 'Dad of Yousef Rima', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10627, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Zayaan Maleek', '', NULL, 'Mom of Zayaan Maleek', '+61418 389 389', NULL, 'Dad of Zayaan Maleek', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10637, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aashfi Shakhawat', '', NULL, 'Mom of Aashfi Shakhawat', '+61425 268 130', NULL, 'Dad of Aashfi Shakhawat', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10647, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Afraaz Siddiqui', '', NULL, 'Mom of Afraaz Siddiqui', '+61412492246', NULL, 'Dad of Afraaz Siddiqui', 'moona@nticon.com.au', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10657, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ayeza Siddiqui', '', NULL, 'Mom of Ayeza Siddiqui', '+61412492246', NULL, 'Dad of Ayeza Siddiqui', 'moona@nticon.com.au', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10667, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Farhan Anjum', '', NULL, 'Mom of Farhan Anjum', '+61413 595 562', NULL, 'Dad of Farhan Anjum', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10677, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Lubaina Zia', '', NULL, 'Mom of Lubaina Zia', '+61432171096', NULL, 'Dad of Lubaina Zia', 'mzia1@hotmail.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10687, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Lujain Maleek', '', NULL, 'Mom of Lujain Maleek', '+61469 578 803', NULL, 'Dad of Lujain Maleek', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10697, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Maymoonah Jalloh', '', NULL, 'Mom of Maymoonah Jalloh', '+61422374670', NULL, 'Dad of Maymoonah Jalloh', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10707, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rayhaan Amputch', '', NULL, 'Mom of Rayhaan Amputch', '+61415590483', NULL, 'Dad of Rayhaan Amputch', 'k.amputch@outlook.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10717, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rayyaan Amputch', '', NULL, 'Mom of Rayyaan Amputch', '+61415590483', NULL, 'Dad of Rayyaan Amputch', 'k.amputch@outlook.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10727, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rayyan Islam', '', NULL, 'Mom of Rayyan Islam', '+61434283944', NULL, 'Dad of Rayyan Islam', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10737, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rema AlShehri', '', NULL, 'Mom of Rema AlShehri', '+61423 876 923', NULL, 'Dad of Rema AlShehri', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10747, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Shajarat Shamim', '', NULL, 'Mom of Shajarat Shamim', '+61422 807 627', NULL, 'Dad of Shajarat Shamim', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10757, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Zaineb Khalak', '', NULL, 'Mom of Zaineb Khalak', '+61426823007', NULL, 'Dad of Zaineb Khalak', 'skhalak@yahoo.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10767, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Adam AlDhaibi', '', NULL, 'Mom of Adam AlDhaibi', '+61424155014', NULL, 'Dad of Adam AlDhaibi', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10777, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Alyssa AlDhaibi', '', NULL, 'Mom of Alyssa AlDhaibi', '+61424155014', NULL, 'Dad of Alyssa AlDhaibi', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10787, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Amelia Umme Mahek', '', NULL, 'Mom of Amelia Umme Mahek', '+61406521798', NULL, 'Dad of Amelia Umme Mahek', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10797, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Asiyah Wehbe', '', NULL, 'Mom of Asiyah Wehbe', '+61404219493', NULL, 'Dad of Asiyah Wehbe', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10807, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ayda AlDhaibi', '', NULL, 'Mom of Ayda AlDhaibi', '+61424155014', NULL, 'Dad of Ayda AlDhaibi', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10817, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Daneya Mohammad', '', NULL, 'Mom of Daneya Mohammad', '+61469 357 593', NULL, 'Dad of Daneya Mohammad', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10827, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Faria Bint Mahboob', '', NULL, 'Mom of Faria Bint Mahboob', '+61449666199', NULL, 'Dad of Faria Bint Mahboob', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10837, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Fawaz Assaad', '', NULL, 'Mom of Fawaz Assaad', '+61432809677', NULL, 'Dad of Fawaz Assaad', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10847, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohammed Mahmoudurahman', '', NULL, 'Mom of Mohammed Mahmoudurahman', '+61449666199', NULL, 'Dad of Mohammed Mahmoudurahman', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10857, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mustafa Al Azzauui', '', NULL, 'Mom of Mustafa Al Azzauui', '+61469831413', NULL, 'Dad of Mustafa Al Azzauui', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10867, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rehana Saifullah', '', NULL, 'Mom of Rehana Saifullah', '+61470258490', NULL, 'Dad of Rehana Saifullah', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10877, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rohana Saifullah', '', NULL, 'Mom of Rohana Saifullah', '+61470258490', NULL, 'Dad of Rohana Saifullah', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10887, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Suhayb Umayr Siddiqui', '', NULL, 'Mom of Suhayb Umayr Siddiqui', '+61488222071', NULL, 'Dad of Suhayb Umayr Siddiqui', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10897, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Tasneem Ayoubi', '', NULL, 'Mom of Tasneem Ayoubi', '+61469 862 737', NULL, 'Dad of Tasneem Ayoubi', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10907, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Abdulrahman AbdulRashid', '', NULL, 'Mom of Abdulrahman AbdulRashid', '+61469862102', NULL, 'Dad of Abdulrahman AbdulRashid', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10917, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ahmed Jalloh', '', NULL, 'Mom of Ahmed Jalloh', '+61422374670', NULL, 'Dad of Ahmed Jalloh', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10927, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Arooba Sultana', '', NULL, 'Mom of Arooba Sultana', '+61435786556', NULL, 'Dad of Arooba Sultana', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10937, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Awwab Hussein', '', NULL, 'Mom of Awwab Hussein', '+61452481976', NULL, 'Dad of Awwab Hussein', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10947, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Dana Almahameed', '', NULL, 'Mom of Dana Almahameed', '+61402135904', NULL, 'Dad of Dana Almahameed', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10957, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Hassan Alboushama', '', NULL, 'Mom of Hassan Alboushama', '+61470 233 785', NULL, 'Dad of Hassan Alboushama', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10967, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ibrahim Rifai', '', NULL, 'Mom of Ibrahim Rifai', '+61424196646', NULL, 'Dad of Ibrahim Rifai', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10977, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ismaeel Jalloh', '', NULL, 'Mom of Ismaeel Jalloh', '+61422374670', NULL, 'Dad of Ismaeel Jalloh', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10987, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Khadeejah AlHawari', '', NULL, 'Mom of Khadeejah AlHawari', '+61466838270', NULL, 'Dad of Khadeejah AlHawari', 'send_it_through@hotmail.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10997, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Maha Youssef Badreddine', '', NULL, 'Mom of Maha Youssef Badreddine', '+61404669921', NULL, 'Dad of Maha Youssef Badreddine', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11007, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nabeel Abdul', '', NULL, 'Mom of Nabeel Abdul', '+61416526077', NULL, 'Dad of Nabeel Abdul', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11017, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nabeelah Abdul', '', NULL, 'Mom of Nabeelah Abdul', '+61416526077', NULL, 'Dad of Nabeelah Abdul', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11027, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Omar Husseini', '', NULL, 'Mom of Omar Husseini', '+61405814061', NULL, 'Dad of Omar Husseini', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11037, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rufiul Kader', '', NULL, 'Mom of Rufiul Kader', '+61451921509', NULL, 'Dad of Rufiul Kader', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11047, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Safiyyah Abdulrahman', '', NULL, 'Mom of Safiyyah Abdulrahman', '+61410044938', NULL, 'Dad of Safiyyah Abdulrahman', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11057, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Soliman Husseini', '', NULL, 'Mom of Soliman Husseini', '+61405814061', NULL, 'Dad of Soliman Husseini', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11067, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Tasneem Zia', '', NULL, 'Mom of Tasneem Zia', '+61432 171 091', NULL, 'Dad of Tasneem Zia', 'mzia1@hotmail.com', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11077, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Tassnim Rima', '', NULL, 'Mom of Tassnim Rima', '+61416828081', NULL, 'Dad of Tassnim Rima', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11087, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Amanee Kammoun', '', NULL, 'Mom of Amanee Kammoun', '+61403053619', NULL, 'Dad of Amanee Kammoun', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11097, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Badia Rima', '', NULL, 'Mom of Badia Rima', '+61424808598', NULL, 'Dad of Badia Rima', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11107, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Fateema Rima', '', NULL, 'Mom of Fateema Rima', '+61406811502', NULL, 'Dad of Fateema Rima', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11117, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Leila Elmasri', '', NULL, 'Mom of Leila Elmasri', '+61405299666', NULL, 'Dad of Leila Elmasri', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11127, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nadine Rima', '', NULL, 'Mom of Nadine Rima', '+61424808598', NULL, 'Dad of Nadine Rima', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11137, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nahidah AlDulaimi', '', NULL, 'Mom of Nahidah AlDulaimi', '+61434 481 592', NULL, 'Dad of Nahidah AlDulaimi', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11147, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Safa Sayeed', '', NULL, 'Mom of Safa Sayeed', '+61433417477', NULL, 'Dad of Safa Sayeed', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11157, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Salma Syeda', '', NULL, 'Mom of Salma Syeda', '+61425268127', NULL, 'Dad of Salma Syeda', 'shakhawat07@yahoo.com.au', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11167, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Sharmin Khan', '', NULL, 'Mom of Sharmin Khan', '+61434283944', NULL, 'Dad of Sharmin Khan', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11177, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Shazneen Oowise', '', NULL, 'Mom of Shazneen Oowise', '+61478360235', NULL, 'Dad of Shazneen Oowise', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11187, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Sumayyah Abdulrahman', '', NULL, 'Mom of Sumayyah Abdulrahman', '+61410 044 938', NULL, 'Dad of Sumayyah Abdulrahman', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11197, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Abir AlBayati', '', NULL, 'Mom of Abir AlBayati', '+61410 007 213', NULL, 'Dad of Abir AlBayati', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11207, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aqsa Sajjad', '', NULL, 'Mom of Aqsa Sajjad', '+61452481976', NULL, 'Dad of Aqsa Sajjad', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11217, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Faria Ahsan', '', NULL, 'Mom of Faria Ahsan', '+61403710095', NULL, 'Dad of Faria Ahsan', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11227, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Fatima Arja', '', NULL, 'Mom of Fatima Arja', '+61404082809', NULL, 'Dad of Fatima Arja', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11237, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Omul Kulthom Ayoub', '', NULL, 'Mom of Omul Kulthom Ayoub', '+61469862737', NULL, 'Dad of Omul Kulthom Ayoub', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11247, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rawand Abuawwad', '', NULL, 'Mom of Rawand Abuawwad', '+61450506135', NULL, 'Dad of Rawand Abuawwad', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11257, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Souheir Ayad', '', NULL, 'Mom of Souheir Ayad', '+61413773228', NULL, 'Dad of Souheir Ayad', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11267, NULL, NULL, NULL, NULL, NULL, '', 'Dad of ', '', NULL, 'Mom of ', '', NULL, 'Dad of ', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11277, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Anthea Costi', '+61405437500', NULL, 'Mom of Anthea Costi', '', NULL, 'Dad of Anthea Costi', 'antheacos@gmail.com', NULL, '+61405437500', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11287, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Bibi Meher', '+61403060975', NULL, 'Mom of Bibi Meher', '', NULL, 'Dad of Bibi Meher', 'saba_shuja@hotmail.com', NULL, '+61403060975', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11297, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ghaysa hijazi', '+61431531031', NULL, 'Mom of Ghaysa hijazi', '', NULL, 'Dad of Ghaysa hijazi', 'ghaysahijazi@gmail.com', NULL, '+61431531031', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11307, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Halima Zraika', '+61405418822', NULL, 'Mom of Halima Zraika', '', NULL, 'Dad of Halima Zraika', 'halima.k8378@gmail.com', NULL, '+61405418822', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11317, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Hannan Raad', '+61410699696', NULL, 'Mom of Hannan Raad', '', NULL, 'Dad of Hannan Raad', 'h.a.raad27@gmail.com', NULL, '+61410699696', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11327, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Lorraine Ejje', '+61424652095', NULL, 'Mom of Lorraine Ejje', '', NULL, 'Dad of Lorraine Ejje', 'lorraine24@live.com.au', NULL, '+61424652095', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11337, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Manal Massri', '+61431494707', NULL, 'Mom of Manal Massri', '', NULL, 'Dad of Manal Massri', 'manal@itmanage.com.au', NULL, '+61431494707', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11347, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nemat Jneidi', '+61424444384', NULL, 'Mom of Nemat Jneidi', '', NULL, 'Dad of Nemat Jneidi', 'nematj92@hotmail.com', NULL, '+61424444384', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11357, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nisreen Haidar', '+61404623641', NULL, 'Mom of Nisreen Haidar', '', NULL, 'Dad of Nisreen Haidar', 'nisreen1216@hotmail.com', NULL, '+61404623641', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11367, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Razan Dannoun', '+61421656149', NULL, 'Mom of Razan Dannoun', '', NULL, 'Dad of Razan Dannoun', 'dr_hafda@hotmail.com', NULL, '+61421656149', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11377, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Riham Abdelhalim', '+61424196646', NULL, 'Mom of Riham Abdelhalim', '', NULL, 'Dad of Riham Abdelhalim', 'reez4islam@hotmail.com', NULL, '+61424196646', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11387, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Umm Omar', '+61490405697', NULL, 'Mom of Umm Omar', '', NULL, 'Dad of Umm Omar', 'umm_omar2@hotmail.com', NULL, '+61490405697', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11397, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Abdullah Shaikh', '+614357278177', NULL, 'Mom of Abdullah Shaikh', '', NULL, 'Dad of Abdullah Shaikh', 'abdullah_shaikh123@hotmail.com', NULL, '+614357278177', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11407, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Abdulrahman Nemra', '+61432688067', NULL, 'Mom of Abdulrahman Nemra', '', NULL, 'Dad of Abdulrahman Nemra', 'a.nemra@hotmail.com', NULL, '+61432688067', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11417, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ahmad Alameddine', '+61451969653', NULL, 'Mom of Ahmad Alameddine', '', NULL, 'Dad of Ahmad Alameddine', 'tyresexcel5811@hotmail.com', NULL, '+61451969653', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11427, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ahmed Alameddine', '+61488467117', NULL, 'Mom of Ahmed Alameddine', '', NULL, 'Dad of Ahmed Alameddine', '', NULL, '+61488467117', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11437, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ahmed Zreika', '+61450402109', NULL, 'Mom of Ahmed Zreika', '', NULL, 'Dad of Ahmed Zreika', 'ahmedd_zreika@hotmail.com', NULL, '+61450402109', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11447, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Dawud Brian ', '+61412591122', NULL, 'Mom of Dawud Brian ', '', NULL, 'Dad of Dawud Brian ', 'dawoodlechef@gmail.com', NULL, '+61412591122', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11457, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Deb Aili', '+61451502119', NULL, 'Mom of Deb Aili', '', NULL, 'Dad of Deb Aili', 'hd.telecomm@gmail.com', NULL, '+61451502119', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11467, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Emad Issa', '+61430148316', NULL, 'Mom of Emad Issa', '', NULL, 'Dad of Emad Issa', 'e.issa1991@live.com', NULL, '+61430148316', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11477, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Fadi Assaad', '+61414529354', NULL, 'Mom of Fadi Assaad', '', NULL, 'Dad of Fadi Assaad', 'fadi_assaad@hotmail.com', NULL, '+61414529354', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11487, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Fahad Shaikh', '+61430519944', NULL, 'Mom of Fahad Shaikh', '', NULL, 'Dad of Fahad Shaikh', '', NULL, '+61430519944', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11497, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Haidar Sakhra', '+61431754419', NULL, 'Mom of Haidar Sakhra', '', NULL, 'Dad of Haidar Sakhra', 'haider_sakhra143@hotmail.com', NULL, '+61431754419', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11507, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Hesham Sahib', '+61410367567', NULL, 'Mom of Hesham Sahib', '', NULL, 'Dad of Hesham Sahib', 'heshaam_s@hotmail.com', NULL, '+61410367567', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11517, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Imran Katieh', '+61478189821', NULL, 'Mom of Imran Katieh', '', NULL, 'Dad of Imran Katieh', 'imrankatieh@gmail.com', NULL, '+61478189821', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11527, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Javed Kalam', '+61414138910', NULL, 'Mom of Javed Kalam', '', NULL, 'Dad of Javed Kalam', 'javed.binkalam@gmail.com', NULL, '+61414138910', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11537, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Khaled Abbas', '+61466058022', NULL, 'Mom of Khaled Abbas', '', NULL, 'Dad of Khaled Abbas', 'abbasonline@gmail.com', NULL, '+61466058022', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11547, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Kheireddine Melhem', '+61430302812', NULL, 'Mom of Kheireddine Melhem', '', NULL, 'Dad of Kheireddine Melhem', 'kheiro.m@hotmail.com', NULL, '+61430302812', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11557, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mahmoud Daher', '+61435503585', NULL, 'Mom of Mahmoud Daher', '', NULL, 'Dad of Mahmoud Daher', 'm.daher1996@gmail.com', NULL, '+61435503585', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11567, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Milad Sidiqui', '+61450003942', NULL, 'Mom of Milad Sidiqui', '', NULL, 'Dad of Milad Sidiqui', 'miladmsidiqui@gmail.com', NULL, '+61450003942', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11577, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohamed Abdelaziz', '+61416866654', NULL, 'Mom of Mohamed Abdelaziz', '', NULL, 'Dad of Mohamed Abdelaziz', 'm.n.abdelaziz@hotmail.com', NULL, '+61416866654', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11587, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohamed Hawi', '+61423930952', NULL, 'Mom of Mohamed Hawi', '', NULL, 'Dad of Mohamed Hawi', '', NULL, '+61423930952', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11597, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohammed Arja', '+61412521846', NULL, 'Mom of Mohammed Arja', '', NULL, 'Dad of Mohammed Arja', 'mohammedarja@gmail.com', NULL, '+61412521846', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11607, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohammed Malas', '+61414338001', NULL, 'Mom of Mohammed Malas', '', NULL, 'Dad of Mohammed Malas', 'moemalas@hotmail.com', NULL, '+61414338001', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11617, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohammed Muhieddine', '+61432111476', NULL, 'Mom of Mohammed Muhieddine', '', NULL, 'Dad of Mohammed Muhieddine', 'mohammed.muhieddine@live.com', NULL, '+61432111476', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11627, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohammed Shaheed', '', NULL, 'Mom of Mohammed Shaheed', '', NULL, 'Dad of Mohammed Shaheed', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11637, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mustafa Jabbar', '+61416660786', NULL, 'Mom of Mustafa Jabbar', '', NULL, 'Dad of Mustafa Jabbar', 'mustafa.jabbar90@hotmail.com', NULL, '+61416660786', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11647, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Omar Muhieddine', '+61450046627', NULL, 'Mom of Omar Muhieddine', '', NULL, 'Dad of Omar Muhieddine', 'omar.zfda@gmail.com', NULL, '+61450046627', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11657, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rabee Alisabri', '+61414445743', NULL, 'Mom of Rabee Alisabri', '', NULL, 'Dad of Rabee Alisabri', 'rabee.alisabri@gmail.com', NULL, '+61414445743', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11667, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rashid Mohamed', '+61412787706', NULL, 'Mom of Rashid Mohamed', '', NULL, 'Dad of Rashid Mohamed', 'krashid@live.com', NULL, '+61412787706', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11677, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Robert Todoroski', '+61414196902', NULL, 'Mom of Robert Todoroski', '', NULL, 'Dad of Robert Todoroski', 'roberttodoroski@hotmail.com', NULL, '+61414196902', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11687, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Saiyd Jamal', '+61435064544', NULL, 'Mom of Saiyd Jamal', '', NULL, 'Dad of Saiyd Jamal', 'saiyd.jamal@outlook.com', NULL, '+61435064544', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11697, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Samir Kataieh', '+61424658880', NULL, 'Mom of Samir Kataieh', '', NULL, 'Dad of Samir Kataieh', 'bandsmotors@hotmail.com', NULL, '+61424658880', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11707, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Yusuf Mhaiche', '+61421792594', NULL, 'Mom of Yusuf Mhaiche', '', NULL, 'Dad of Yusuf Mhaiche', 'yussuf91@hotmail.com', NULL, '+61421792594', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11717, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ziad Mashkoor', '+61440191014', NULL, 'Mom of Ziad Mashkoor', '', NULL, 'Dad of Ziad Mashkoor', 'ziadmashkoor@gmail.com', NULL, '+61440191014', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11727, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Iqtidar Ahmed', '+61481143115', NULL, 'Mom of Iqtidar Ahmed', '', NULL, 'Dad of Iqtidar Ahmed', 'iqtidar.ahmed.education@gmail.com', NULL, '+61481143115', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11737, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Jalal Kamoun', '+61410 867 007', NULL, 'Mom of Jalal Kamoun', '', NULL, 'Dad of Jalal Kamoun', 'jalal_kamoun@hotmail.com', NULL, '+61410 867 007', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11747, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mahardhika Syarif Hidayatullah', '+61409823952', NULL, 'Mom of Mahardhika Syarif Hidayatullah', '', NULL, 'Dad of Mahardhika Syarif Hidayatullah', 'dhikash1997@gmail.com', NULL, '+61409823952', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00');
INSERT INTO `student_parent` (`id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_email`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `is_active`, `created_at`, `updated_at`) VALUES
(11757, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mahmoud ElKhatib', '+61401442073', NULL, 'Mom of Mahmoud ElKhatib', '', NULL, 'Dad of Mahmoud ElKhatib', 'Moey_khatib@hotmail.com', NULL, '+61401442073', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11767, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Shamim Babu', '+61422807627', NULL, 'Mom of Shamim Babu', '', NULL, 'Dad of Shamim Babu', 'babumunni@yahoo.com', NULL, '+61422807627', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11777, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Yasin Ashley', '+61404 172 132', NULL, 'Mom of Yasin Ashley', '', NULL, 'Dad of Yasin Ashley', 'yasin_ashley@hotmail.com', NULL, '+61404 172 132', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11787, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Yusuf Gelder', '+61447396633', NULL, 'Mom of Yusuf Gelder', '', NULL, 'Dad of Yusuf Gelder', 'yusuf.gelder97@hotmail.com', NULL, '+61447396633', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11797, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Zak Chahal', '+61401 189 472', NULL, 'Mom of Zak Chahal', '', NULL, 'Dad of Zak Chahal', 'zakareya905@gmail.com', NULL, '+61401 189 472', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11807, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Amar Kabbara', '+61424112008', NULL, 'Mom of Amar Kabbara', '', NULL, 'Dad of Amar Kabbara', 'zaatar.hassan@gmail.com', NULL, '+61424112008', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11817, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aminata Wleh', '+61432687501', NULL, 'Mom of Aminata Wleh', '', NULL, 'Dad of Aminata Wleh', 'i.mfofiemj@yahoo.com.au', NULL, '+61432687501', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11827, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Carly McQualter', '+61409 814 511', NULL, 'Mom of Carly McQualter', '', NULL, 'Dad of Carly McQualter', 'carly.mcqualter@bigpond.com', NULL, '+61409 814 511', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11837, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Emma Ramlawie', '+61414 869 425', NULL, 'Mom of Emma Ramlawie', '', NULL, 'Dad of Emma Ramlawie', 'emaarab@hotmail.com', NULL, '+61414 869 425', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11847, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Hakimah Muslim', '+61410 044 938', NULL, 'Mom of Hakimah Muslim', '', NULL, 'Dad of Hakimah Muslim', 'kimm07@icloud.com', NULL, '+61410 044 938', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11857, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Hasina Kamel', '+61470666493', NULL, 'Mom of Hasina Kamel', '', NULL, 'Dad of Hasina Kamel', 'hasinakamel@yahoo.com.au', NULL, '+61470666493', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11867, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Hasna bint A. Woodbury', '+610470625368', NULL, 'Mom of Hasna bint A. Woodbury', '', NULL, 'Dad of Hasna bint A. Woodbury', 'hasna.ilim@gmail.com', NULL, '+610470625368', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11877, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mardhiah Abedine', '+61416800550', NULL, 'Mom of Mardhiah Abedine', '', NULL, 'Dad of Mardhiah Abedine', 'mardhiahz@gmail.com', NULL, '+61416800550', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11887, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nada Jamus', '+61406646196', NULL, 'Mom of Nada Jamus', '', NULL, 'Dad of Nada Jamus', 'Nadush7_7@hotmail.com', NULL, '+61406646196', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11897, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nazira Nazreen El Samman', '+61415131953', NULL, 'Mom of Nazira Nazreen El Samman', '', NULL, 'Dad of Nazira Nazreen El Samman', 'nazirahelsamman@gmail.com', NULL, '+61415131953', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11907, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ramatulai Daramy', '+610402487557', NULL, 'Mom of Ramatulai Daramy', '', NULL, 'Dad of Ramatulai Daramy', 'ramatulaidaramy@hotmail.com', NULL, '+610402487557', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11917, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Refah Amin', '+61416634308', NULL, 'Mom of Refah Amin', '', NULL, 'Dad of Refah Amin', 'refahamin99@gmail.com', NULL, '+61416634308', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11927, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Sagal Ahmed', '+61403452433', NULL, 'Mom of Sagal Ahmed', '', NULL, 'Dad of Sagal Ahmed', 'sagalahmed299@gmail.com', NULL, '+61403452433', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11937, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Umm Ibrahim ', '+61404953950', NULL, 'Mom of Umm Ibrahim ', '', NULL, 'Dad of Umm Ibrahim ', 'ummibrahim@wasimah.com.au', NULL, '+61404953950', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11947, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Yonca Temel', '+61406 177 027', NULL, 'Mom of Yonca Temel', '', NULL, 'Dad of Yonca Temel', 'al.ghuraba@hotmail.com', NULL, '+61406 177 027', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11957, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aber Kataieh', '+61405800724', NULL, 'Mom of Aber Kataieh', '', NULL, 'Dad of Aber Kataieh', 'aber_k@hotmail.com', NULL, '+61405800724', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11967, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Amina Ibrahim', '+61450959659', NULL, 'Mom of Amina Ibrahim', '', NULL, 'Dad of Amina Ibrahim', 'ameenaibrahim95@gmail.com', NULL, '+61450959659', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11977, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aqsa Khalid', '+61', NULL, 'Mom of Aqsa Khalid', '', NULL, 'Dad of Aqsa Khalid', 'shmalik25@hotmail.com', NULL, '+61', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11987, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aseyah Shipman', '+61434681799', NULL, 'Mom of Aseyah Shipman', '', NULL, 'Dad of Aseyah Shipman', 'new_aseyah@hotmail.com', NULL, '+61434681799', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11997, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aysha Sian', '+61414760708', NULL, 'Mom of Aysha Sian', '', NULL, 'Dad of Aysha Sian', 'Aysharickard.11@gmail.com', NULL, '+61414760708', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12007, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Fawzie Abdallah', '+61478163551', NULL, 'Mom of Fawzie Abdallah', '', NULL, 'Dad of Fawzie Abdallah', 'fawzie.abdallah@hotmail.com', NULL, '+61478163551', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12017, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Hannan Mzakzak', '+61481261247', NULL, 'Mom of Hannan Mzakzak', '', NULL, 'Dad of Hannan Mzakzak', 'hanan.mzakzak@hotmail.com', NULL, '+61481261247', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12027, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Heba Sukkarieh', '+61414329200', NULL, 'Mom of Heba Sukkarieh', '', NULL, 'Dad of Heba Sukkarieh', 'heba.sukkarieh@hotmail.com', NULL, '+61414329200', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12037, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Iram Sirguroh', '+61405216409', NULL, 'Mom of Iram Sirguroh', '', NULL, 'Dad of Iram Sirguroh', 'iram.sirguroh@gmail.com', NULL, '+61405216409', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12047, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Jasmin Akhter', '+61411425898', NULL, 'Mom of Jasmin Akhter', '', NULL, 'Dad of Jasmin Akhter', '', NULL, '+61411425898', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12057, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Joumana Fawal', '+61431215064', NULL, 'Mom of Joumana Fawal', '', NULL, 'Dad of Joumana Fawal', '', NULL, '+61431215064', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12067, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Liliya Aziz', '+61432849604', NULL, 'Mom of Liliya Aziz', '', NULL, 'Dad of Liliya Aziz', 'Llaziz7@hotmail.com', NULL, '+61432849604', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12077, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mia Hamzi', '+61405551666', NULL, 'Mom of Mia Hamzi', '', NULL, 'Dad of Mia Hamzi', 'miahamzi@gmail.com', NULL, '+61405551666', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12087, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mosca Shir Khan', '+61488031098', NULL, 'Mom of Mosca Shir Khan', '', NULL, 'Dad of Mosca Shir Khan', 'mosca_skhan@hotmail.com', NULL, '+61488031098', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12097, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rebecka Chlela', '+61449960017', NULL, 'Mom of Rebecka Chlela', '', NULL, 'Dad of Rebecka Chlela', 'chlelaa92@gmail.com', NULL, '+61449960017', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12107, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Samahe Mohamed', '+61466841633', NULL, 'Mom of Samahe Mohamed', '', NULL, 'Dad of Samahe Mohamed', 'samahe.94@hotmail.com', NULL, '+61466841633', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12117, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Sarah Awad', '+61451002055', NULL, 'Mom of Sarah Awad', '', NULL, 'Dad of Sarah Awad', 'Sarah.awad1@hotmail.com', NULL, '+61451002055', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12127, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Sarah Charafeddine', '+61450902180', NULL, 'Mom of Sarah Charafeddine', '', NULL, 'Dad of Sarah Charafeddine', 'sarahcharafedd@gmail.com', NULL, '+61450902180', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12137, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Sarah Woodbury', '+61470625368', NULL, 'Mom of Sarah Woodbury', '', NULL, 'Dad of Sarah Woodbury', 'locochocko89@gmail.com', NULL, '+61470625368', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12147, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Suzan Hamdache', '+61410128967', NULL, 'Mom of Suzan Hamdache', '', NULL, 'Dad of Suzan Hamdache', 'suzanhamdache@icloud.com', NULL, '+61410128967', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12157, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Tracy Menzies', '+61401970415', NULL, 'Mom of Tracy Menzies', '', NULL, 'Dad of Tracy Menzies', 'tracey2033@hotmail.com', NULL, '+61401970415', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12167, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Zoe Allouche', '+61478062477', NULL, 'Mom of Zoe Allouche', '', NULL, 'Dad of Zoe Allouche', 'zoeallouche1996@gmail.com', NULL, '+61478062477', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12177, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Fatma Arja', '+61404082809', NULL, 'Mom of Fatma Arja', '', NULL, 'Dad of Fatma Arja', 'ffa45@hotmail.com', NULL, '+61404082809', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12187, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Kareema Alamudi', '+61402195853', NULL, 'Mom of Kareema Alamudi', '', NULL, 'Dad of Kareema Alamudi', 'karima_alamudi@hotmail.com', NULL, '+61402195853', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12197, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Kristy Lee Cilidonio', '+610424842812', NULL, 'Mom of Kristy Lee Cilidonio', '', NULL, 'Dad of Kristy Lee Cilidonio', 'krriisstyy@gmail.com', NULL, '+610424842812', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12207, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Marufa Yeasmin', '+61425155107', NULL, 'Mom of Marufa Yeasmin', '', NULL, 'Dad of Marufa Yeasmin', 'marufa_021@yahoo.com', NULL, '+61425155107', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12217, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Maysa Kanj', '+61451146875', NULL, 'Mom of Maysa Kanj', '', NULL, 'Dad of Maysa Kanj', 'Muslimahkay@gmail.com', NULL, '+61451146875', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12227, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nasrine Awad', '+61402703878', NULL, 'Mom of Nasrine Awad', '', NULL, 'Dad of Nasrine Awad', 'nasrine.a@hotmail.com', NULL, '+61402703878', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12237, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ronia Hadier', '+61424954991', NULL, 'Mom of Ronia Hadier', '', NULL, 'Dad of Ronia Hadier', 'ranianet90@hotmail.com', NULL, '+61424954991', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12247, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Wafa Kodat', '+61414412337', NULL, 'Mom of Wafa Kodat', '', NULL, 'Dad of Wafa Kodat', '', NULL, '+61414412337', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12257, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Zaynab Emam', '+61450650950', NULL, 'Mom of Zaynab Emam', '', NULL, 'Dad of Zaynab Emam', 'zaynab.emam@hotmail.com', NULL, '+61450650950', '', NULL, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12267, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Billal Minaoui', '+61435837161', NULL, 'Mom of Billal Minaoui', '', NULL, 'Dad of Billal Minaoui', 'bella.h.92@hotmail.com', NULL, '+61435837161', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12277, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Feroz Sattar', '+61422401781', NULL, 'Mom of Feroz Sattar', '', NULL, 'Dad of Feroz Sattar', 'feroz.sattar1@gmail.com', NULL, '+61422401781', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12287, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Hadi Naghi', '+61450616065', NULL, 'Mom of Hadi Naghi', '', NULL, 'Dad of Hadi Naghi', '', NULL, '+61450616065', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12297, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Javed Bin Kalam', '+61414138910', NULL, 'Mom of Javed Bin Kalam', '', NULL, 'Dad of Javed Bin Kalam', 'javed.binkalam@gmail.com', NULL, '+61414138910', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12307, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Kashif Ghous', '+61412875167', NULL, 'Mom of Kashif Ghous', '', NULL, 'Dad of Kashif Ghous', 'mkgg4n@gmail.com', NULL, '+61412875167', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12317, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Khaled Abbas', '+61466058022', NULL, 'Mom of Khaled Abbas', '', NULL, 'Dad of Khaled Abbas', 'abbasonline@gmail.com', NULL, '+61466058022', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12327, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Khaled Minaoui', '+61452483321', NULL, 'Mom of Khaled Minaoui', '', NULL, 'Dad of Khaled Minaoui', 'minaoui73@gmail.com', NULL, '+61452483321', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12337, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohamad Kayal', '+61414266339 ', NULL, 'Mom of Mohamad Kayal', '', NULL, 'Dad of Mohamad Kayal', 'Mohamad85k@gmail.com', NULL, '+61414266339 ', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12347, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Mohamed Jafran Anzar ', '+61490682679 ', NULL, 'Mom of Mohamed Jafran Anzar ', '', NULL, 'Dad of Mohamed Jafran Anzar ', 'jafanz@outlook.com', NULL, '+61490682679 ', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12357, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Omar AbuMahmoud', '+61405464646', NULL, 'Mom of Omar AbuMahmoud', '', NULL, 'Dad of Omar AbuMahmoud', 'omarabumahmoud@hotmail.com', NULL, '+61405464646', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12367, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Raihan Iqbal', '+61421736086', NULL, 'Mom of Raihan Iqbal', '', NULL, 'Dad of Raihan Iqbal', 'raihan.iqbal@gmail.com', NULL, '+61421736086', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12377, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Rashid Mohamed', '+61412787706', NULL, 'Mom of Rashid Mohamed', '', NULL, 'Dad of Rashid Mohamed', 'krashid@live.com', NULL, '+61412787706', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12387, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Wassim El Saddik', '+61406008411', NULL, 'Mom of Wassim El Saddik', '', NULL, 'Dad of Wassim El Saddik', 'Wassim_jumex@outlook.com', NULL, '+61406008411', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12397, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Zahi Naghi', '+61450670864', NULL, 'Mom of Zahi Naghi', '', NULL, 'Dad of Zahi Naghi', '', NULL, '+61450670864', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12407, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Amina Touma', '+61490405697', NULL, 'Mom of Amina Touma', '', NULL, 'Dad of Amina Touma', '', NULL, '+61490405697', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12417, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ayesha Shipman', '+61434681799', NULL, 'Mom of Ayesha Shipman', '', NULL, 'Dad of Ayesha Shipman', '', NULL, '+61434681799', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12427, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Aziza Elsaddik', '+61450848988', NULL, 'Mom of Aziza Elsaddik', '', NULL, 'Dad of Aziza Elsaddik', 'azizaa.e@hotmail.com', NULL, '+61450848988', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12437, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Fatma Arja', '', NULL, 'Mom of Fatma Arja', '', NULL, 'Dad of Fatma Arja', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12447, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Hakimah Muslim', '+61410 044 938', NULL, 'Mom of Hakimah Muslim', '', NULL, 'Dad of Hakimah Muslim', 'hakimah007@yahoo.com', NULL, '+61410 044 938', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12457, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Hasna Woodbury', '+61470625368', NULL, 'Mom of Hasna Woodbury', '', NULL, 'Dad of Hasna Woodbury', 'hasna.ilim@gmail.com', NULL, '+61470625368', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12467, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Joumana Rifai', '+61458080645', NULL, 'Mom of Joumana Rifai', '', NULL, 'Dad of Joumana Rifai', 'js4whair@gmail.com', NULL, '+61458080645', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12477, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Manel Aassar', '+61490050977', NULL, 'Mom of Manel Aassar', '', NULL, 'Dad of Manel Aassar', 'elkadri1@hotmail.com', NULL, '+61490050977', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12487, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Marita Davies', '+610423226186', NULL, 'Mom of Marita Davies', '', NULL, 'Dad of Marita Davies', 'marita_nsw_au@yahoo.com', NULL, '+610423226186', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12497, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Monira jebin', '+61425303318', NULL, 'Mom of Monira jebin', '', NULL, 'Dad of Monira jebin', 'mjebin@gmail.com', NULL, '+61425303318', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12507, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nemat Jneidi', '+610424444384', NULL, 'Mom of Nemat Jneidi', '', NULL, 'Dad of Nemat Jneidi', 'nematj92@hotmail.com', NULL, '+610424444384', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12517, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Nurshafinah Binte Mohd Isa', '+61411570627', NULL, 'Mom of Nurshafinah Binte Mohd Isa', '', NULL, 'Dad of Nurshafinah Binte Mohd Isa', 'rocketrascal@gmail.com', NULL, '+61411570627', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12527, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Refah Amin ', '+610435011565', NULL, 'Mom of Refah Amin ', '', NULL, 'Dad of Refah Amin ', 'refahamin99@gmail.com', NULL, '+610435011565', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12537, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Ronia Kadri', '+61410969912', NULL, 'Mom of Ronia Kadri', '', NULL, 'Dad of Ronia Kadri', 'elkadri1@hotmail.com', NULL, '+61410969912', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12547, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Sagal Ahmed', '+610403452433', NULL, 'Mom of Sagal Ahmed', '', NULL, 'Dad of Sagal Ahmed', 'sagalahmed299@gmail.com', NULL, '+610403452433', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12557, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Souheir Ayad', '+413773228', NULL, 'Mom of Souheir Ayad', '', NULL, 'Dad of Souheir Ayad', '', NULL, '+413773228', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12567, NULL, NULL, NULL, NULL, NULL, '', 'Dad of Wafa Kodat', '+61414412337', NULL, 'Mom of Wafa Kodat', '', NULL, 'Dad of Wafa Kodat', 'wafa1@live.com.au', NULL, '+61414412337', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12577, NULL, NULL, NULL, NULL, NULL, '', 'Dad of ', '', NULL, 'Mom of ', '', NULL, 'Dad of ', '', NULL, '', '', NULL, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_parent_fees`
--

CREATE TABLE `student_parent_fees` (
  `id` int(11) NOT NULL,
  `student_parent_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `final_amount` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` int(11) DEFAULT NULL,
  `month` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_session`
--

CREATE TABLE `student_session` (
`id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `vehroute_id` int(10) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT '0.00',
  `fees_discount` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=12588 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_session`
--

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES
(9657, 11, 9677, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9667, 11, 9687, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9677, 11, 9697, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9687, 11, 9707, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9697, 11, 9717, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9707, 11, 9727, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9717, 11, 9737, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9727, 11, 9747, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9737, 11, 9757, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9747, 11, 9767, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9757, 11, 9777, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9767, 11, 9787, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9777, 11, 9797, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9787, 11, 9807, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9797, 11, 9817, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9807, 11, 9827, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9817, 11, 9837, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9827, 11, 9847, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9837, 11, 9857, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9847, 11, 9867, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9857, 11, 9877, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9867, 11, 9887, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9877, 11, 9897, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9887, 11, 9907, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9897, 11, 9917, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9907, 11, 9927, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9917, 11, 9937, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9927, 11, 9947, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9937, 11, 9957, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9947, 11, 9967, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9957, 11, 9977, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9967, 11, 9987, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9977, 11, 9997, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9987, 11, 10007, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(9997, 11, 10017, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10007, 11, 10027, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10017, 11, 10037, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10027, 11, 10047, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10037, 11, 10057, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10047, 11, 10067, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10057, 11, 10077, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10067, 11, 10087, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10077, 11, 10097, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10087, 11, 10107, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10097, 11, 10117, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10107, 11, 10127, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10117, 11, 10137, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10127, 11, 10147, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10137, 11, 10157, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10147, 11, 10167, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10157, 11, 10177, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10167, 11, 10187, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10177, 11, 10197, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10187, 11, 10207, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10197, 11, 10217, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10207, 11, 10227, 137, 407, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10217, 11, 10237, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10227, 11, 10247, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10237, 11, 10257, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10247, 11, 10267, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10257, 11, 10277, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10267, 11, 10287, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10277, 11, 10297, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10287, 11, 10307, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10297, 11, 10317, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10307, 11, 10327, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10317, 11, 10337, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10327, 11, 10347, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10337, 11, 10357, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10347, 11, 10367, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10357, 11, 10377, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10367, 11, 10387, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10377, 11, 10397, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10387, 11, 10407, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10397, 11, 10417, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10407, 11, 10427, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10417, 11, 10437, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10427, 11, 10447, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10437, 11, 10457, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10447, 11, 10467, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10457, 11, 10477, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10467, 11, 10487, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10477, 11, 10497, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10487, 11, 10507, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10497, 11, 10517, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10507, 11, 10527, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10517, 11, 10537, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10527, 11, 10547, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10537, 11, 10557, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10547, 11, 10567, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10557, 11, 10577, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10567, 11, 10587, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10577, 11, 10597, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10587, 11, 10607, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10597, 11, 10617, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10607, 11, 10627, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10617, 11, 10637, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10627, 11, 10647, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10637, 11, 10657, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10647, 11, 10667, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10657, 11, 10677, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10667, 11, 10687, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10677, 11, 10697, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10687, 11, 10707, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10697, 11, 10717, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10707, 11, 10727, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10717, 11, 10737, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10727, 11, 10747, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10737, 11, 10757, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10747, 11, 10767, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10757, 11, 10777, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10767, 11, 10787, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10777, 11, 10797, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10787, 11, 10807, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10797, 11, 10817, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10807, 11, 10827, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10817, 11, 10837, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10827, 11, 10847, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10837, 11, 10857, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10847, 11, 10867, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10857, 11, 10877, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10867, 11, 10887, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10877, 11, 10897, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10887, 11, 10907, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10897, 11, 10917, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10907, 11, 10927, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10917, 11, 10937, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10927, 11, 10947, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10937, 11, 10957, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10947, 11, 10967, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10957, 11, 10977, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10967, 11, 10987, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10977, 11, 10997, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10987, 11, 11007, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(10997, 11, 11017, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11007, 11, 11027, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11017, 11, 11037, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11027, 11, 11047, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11037, 11, 11057, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11047, 11, 11067, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11057, 11, 11077, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11067, 11, 11087, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11077, 11, 11097, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11087, 11, 11107, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11097, 11, 11117, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11107, 11, 11127, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11117, 11, 11137, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11127, 11, 11147, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11137, 11, 11157, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11147, 11, 11167, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11157, 11, 11177, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11167, 11, 11187, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11177, 11, 11197, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11187, 11, 11207, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11197, 11, 11217, 137, 397, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11207, 11, 11227, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11217, 11, 11237, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11227, 11, 11247, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11237, 11, 11257, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11247, 11, 11267, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11257, 11, 11277, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11267, 11, 11287, 137, 417, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11277, 11, 11297, 137, 427, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:07', '0000-00-00 00:00:00'),
(11287, 11, 11307, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11297, 11, 11317, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11307, 11, 11327, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11317, 11, 11337, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11327, 11, 11347, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11337, 11, 11357, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11347, 11, 11367, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11357, 11, 11377, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11367, 11, 11387, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11377, 11, 11397, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11387, 11, 11407, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11397, 11, 11417, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11407, 11, 11427, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11417, 11, 11437, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11427, 11, 11447, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11437, 11, 11457, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11447, 11, 11467, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11457, 11, 11477, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11467, 11, 11487, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11477, 11, 11497, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11487, 11, 11507, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11497, 11, 11517, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11507, 11, 11527, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11517, 11, 11537, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11527, 11, 11547, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11537, 11, 11557, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11547, 11, 11567, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11557, 11, 11577, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11567, 11, 11587, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11577, 11, 11597, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11587, 11, 11607, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11597, 11, 11617, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11607, 11, 11627, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11617, 11, 11637, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11627, 11, 11647, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11637, 11, 11657, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11647, 11, 11667, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11657, 11, 11677, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11667, 11, 11687, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11677, 11, 11697, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11687, 11, 11707, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11697, 11, 11717, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11707, 11, 11727, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11717, 11, 11737, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11727, 11, 11747, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11737, 11, 11757, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11747, 11, 11767, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11757, 11, 11777, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11767, 11, 11787, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11777, 11, 11797, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11787, 11, 11807, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11797, 11, 11817, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11807, 11, 11827, 147, 447, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11817, 11, 11837, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11827, 11, 11847, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11837, 11, 11857, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11847, 11, 11867, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11857, 11, 11877, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11867, 11, 11887, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11877, 11, 11897, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11887, 11, 11907, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11897, 11, 11917, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11907, 11, 11927, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11917, 11, 11937, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11927, 11, 11947, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11937, 11, 11957, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11947, 11, 11967, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11957, 11, 11977, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11967, 11, 11987, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11977, 11, 11997, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11987, 11, 12007, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(11997, 11, 12017, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12007, 11, 12027, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12017, 11, 12037, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12027, 11, 12047, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12037, 11, 12057, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12047, 11, 12067, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12057, 11, 12077, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12067, 11, 12087, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12077, 11, 12097, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12087, 11, 12107, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12097, 11, 12117, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12107, 11, 12127, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12117, 11, 12137, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12127, 11, 12147, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12137, 11, 12157, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12147, 11, 12167, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12157, 11, 12177, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12167, 11, 12187, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12177, 11, 12197, 147, 437, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12187, 11, 12207, 147, 457, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12197, 11, 12217, 147, 457, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12207, 11, 12227, 147, 457, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12217, 11, 12237, 147, 457, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12227, 11, 12247, 147, 457, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12237, 11, 12257, 147, 457, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12247, 11, 12267, 147, 457, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12257, 11, 12277, 147, 457, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12267, 11, 12287, 147, 457, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:49', '0000-00-00 00:00:00'),
(12277, 11, 12297, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12287, 11, 12307, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12297, 11, 12317, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12307, 11, 12327, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12317, 11, 12337, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12327, 11, 12347, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12337, 11, 12357, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12347, 11, 12367, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12357, 11, 12377, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12367, 11, 12387, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12377, 11, 12397, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12387, 11, 12407, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12397, 11, 12417, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12407, 11, 12427, 157, 467, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12417, 11, 12437, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12427, 11, 12447, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12437, 11, 12457, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12447, 11, 12467, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12457, 11, 12477, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12467, 11, 12487, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12477, 11, 12497, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12487, 11, 12507, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12497, 11, 12517, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12507, 11, 12527, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12517, 11, 12537, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12527, 11, 12547, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12537, 11, 12557, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12547, 11, 12567, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12557, 11, 12577, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12567, 11, 12587, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12577, 11, 12597, 157, 477, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00'),
(12587, 11, 12607, 157, 427, 0, NULL, 0.00, 0.00, 'yes', '2017-10-11 09:01:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_sibling`
--

CREATE TABLE `student_sibling` (
`id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_transport_fees`
--

CREATE TABLE `student_transport_fees` (
`id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT '0000-00-00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_wise_fee`
--

CREATE TABLE `student_wise_fee` (
  `id` int(11) NOT NULL,
  `parent_fee_id` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL DEFAULT '0',
  `feecategory_id` int(11) NOT NULL DEFAULT '0',
  `class_id` int(11) NOT NULL DEFAULT '0',
  `student_session_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `net_amount` float(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
`id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=728 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(117, 'Quran Recitation Made Easy Level 1A', 'QRME L1A', 'Theory', 'no', '2017-09-06 13:51:20', '0000-00-00 00:00:00'),
(127, 'Aqeedah 101', 'AQD101', 'Theory', 'no', '2017-08-23 12:05:09', '0000-00-00 00:00:00'),
(137, 'Aqeedah 201', 'AQD201', 'Theory', 'no', '2017-07-17 08:56:01', '0000-00-00 00:00:00'),
(147, 'Aqeedah 301', 'AQD301', 'Theory', 'no', '2017-08-23 12:03:48', '0000-00-00 00:00:00'),
(157, 'Aqeedah 401', 'AQD401', 'Theory', 'no', '2017-08-23 12:03:56', '0000-00-00 00:00:00'),
(167, 'Fiqh 101', 'FQH101', 'Theory', 'no', '2017-08-23 12:04:37', '0000-00-00 00:00:00'),
(177, 'Fiqh 201', 'FQH201', 'Theory', 'no', '2017-08-23 12:04:44', '0000-00-00 00:00:00'),
(187, 'Fiqh 301', 'FQH301', 'Theory', 'no', '2017-08-23 12:04:54', '0000-00-00 00:00:00'),
(197, 'Fiqh 401', 'FQH401', 'Theory', 'no', '2017-08-23 12:05:01', '0000-00-00 00:00:00'),
(207, 'Quran Sciences 101', 'QRN101', 'Theory', 'no', '2017-08-23 12:05:44', '0000-00-00 00:00:00'),
(217, 'Quran Sciences 201', 'QRN201', 'Theory', 'no', '2017-08-23 12:05:53', '0000-00-00 00:00:00'),
(227, 'Quran Sciences 301', 'QRN301', 'Theory', 'no', '2017-08-23 12:05:59', '0000-00-00 00:00:00'),
(237, 'Quran Sciences 401', 'QRN401', 'Theory', 'no', '2017-08-23 12:06:05', '0000-00-00 00:00:00'),
(247, 'Hadeeth 101', 'HAD101', 'Theory', 'no', '2017-08-23 12:06:17', '0000-00-00 00:00:00'),
(257, 'Hadeeth 201', 'HAD201', 'Theory', 'no', '2017-08-23 12:06:23', '0000-00-00 00:00:00'),
(267, 'Hadeeth 301', 'HAD301', 'Theory', 'no', '2017-08-23 12:06:29', '0000-00-00 00:00:00'),
(277, 'Hadeeth 401', 'HAD401', 'Theory', 'no', '2017-08-23 12:06:34', '0000-00-00 00:00:00'),
(287, 'Seerah 101', 'SER101', 'Theory', 'no', '2017-08-23 12:06:44', '0000-00-00 00:00:00'),
(297, 'Seerah 201', 'SER201', 'Theory', 'no', '2017-08-23 12:06:49', '0000-00-00 00:00:00'),
(307, 'Seerah 301', 'SER301', 'Theory', 'no', '2017-08-23 12:06:54', '0000-00-00 00:00:00'),
(317, 'Seerah 401', 'SER401', 'Theory', 'no', '2017-08-23 12:07:00', '0000-00-00 00:00:00'),
(327, 'Quran Recitation Made Easy Level 1B', 'QRME L1B', 'Theory', 'no', '2017-09-06 13:51:15', '0000-00-00 00:00:00'),
(337, 'Quran Recitation Made Easy Level 4', 'QRME L4', 'Theory', 'no', '2017-09-06 13:51:38', '0000-00-00 00:00:00'),
(347, 'Quran Recitation Made Easy Level 2', 'QRME L2', 'Theory', 'no', '2017-09-06 13:57:21', '0000-00-00 00:00:00'),
(357, 'Intermediate Memorisation', 'INTMEM', 'Theory', 'no', '2017-09-06 13:57:38', '0000-00-00 00:00:00'),
(367, 'Beginner Quran Reading A', 'BEGQRA', 'Theory', 'no', '2017-09-06 13:58:03', '0000-00-00 00:00:00'),
(377, 'Beginner Quran Reading B', 'BEGQRB', 'Theory', 'no', '2017-09-06 13:58:10', '0000-00-00 00:00:00'),
(387, 'Advanced Memorisation', 'ADVMEM', 'Theory', 'no', '2017-09-06 13:58:32', '0000-00-00 00:00:00'),
(397, 'Beginner Males Quran Reading Class A', 'BEGMQRA', 'Theory', 'no', '2017-09-06 13:58:54', '0000-00-00 00:00:00'),
(407, 'Beginner Males Quran Reading Class B', 'BEGMQRB', 'Theory', 'no', '2017-09-06 13:59:12', '0000-00-00 00:00:00'),
(417, 'Beginner Male Class', 'BEGMALE', 'Theory', 'no', '2017-09-06 14:00:11', '0000-00-00 00:00:00'),
(427, 'Beginner Quran Reading Sisters', 'BEGQRSIS', 'Theory', 'no', '2017-09-06 14:00:54', '0000-00-00 00:00:00'),
(437, 'Tajweed Sisters', 'TAJSIS', 'Theory', 'no', '2017-09-06 14:01:08', '0000-00-00 00:00:00'),
(447, 'Beginner Tajwid Sisters - Morning', 'BEGTAJSIS', 'Theory', 'no', '2017-09-06 14:01:31', '0000-00-00 00:00:00'),
(457, 'Beginner Sisters Class - Morning', 'BEGSIS', 'Theory', 'no', '2017-09-06 14:01:55', '0000-00-00 00:00:00'),
(467, 'Linguistic Tafseer', 'LINTAF', 'Theory', 'no', '2017-09-06 14:30:33', '0000-00-00 00:00:00'),
(477, 'Al-Arabiyyatu Bayna Yadayk', 'ARB', 'Theory', 'no', '2017-09-06 14:30:52', '0000-00-00 00:00:00'),
(497, 'Islamic Studies Kindy - Madrasah', 'ISLKIN', 'Theory', 'no', '2017-09-06 14:48:01', '0000-00-00 00:00:00'),
(507, 'Islamic Studies Grade 1 - Madrasah', 'ISLG1', 'Theory', 'no', '2017-09-06 14:48:12', '0000-00-00 00:00:00'),
(517, 'Islamic Studies Grade 2 - Madrasah', 'ISLG2', 'Theory', 'no', '2017-09-06 14:48:23', '0000-00-00 00:00:00'),
(527, 'Islamic Studies Grade 3 - Madrasah', 'ISLG3', 'Theory', 'no', '2017-09-06 14:48:34', '0000-00-00 00:00:00'),
(537, 'Islamic Studies Grade 4G - Madrasah', 'ISLG4G', 'Theory', 'no', '2017-09-06 14:49:17', '0000-00-00 00:00:00'),
(547, 'Islamic Studies Grade 4B - Madrasah', 'ISLG4B', 'Theory', 'no', '2017-09-06 14:49:10', '0000-00-00 00:00:00'),
(557, 'Islamic Studies Grade 5G - Madrasah', 'ISLG5G', 'Theory', 'no', '2017-09-06 14:49:36', '0000-00-00 00:00:00'),
(567, 'Islamic Studies Grade 5B - Madrasah', 'ISLG5B', 'Theory', 'no', '2017-09-06 14:49:49', '0000-00-00 00:00:00'),
(577, 'Islamic Studies Grade 7G - Madrasah', 'ISLG7G', 'Theory', 'no', '2017-09-06 14:50:06', '0000-00-00 00:00:00'),
(587, 'Islamic Studies Grade 7B - Madrasah', 'ISLG7B', 'Theory', 'no', '2017-09-06 14:50:16', '0000-00-00 00:00:00'),
(597, 'Islamic Studies Grade 10B - Madrasah', 'ISLG10B', 'Theory', 'no', '2017-09-06 14:50:30', '0000-00-00 00:00:00'),
(607, 'KQ Quran Class - Madrasah', 'KQMAD', 'Theory', 'no', '2017-09-08 13:20:46', '0000-00-00 00:00:00'),
(617, 'KQB Quran Class - Madrasah', 'KQBMAD', 'Theory', 'no', '2017-09-08 13:21:04', '0000-00-00 00:00:00'),
(627, '1Q Quran Class - Madrasah', '1QMAD', 'Theory', 'no', '2017-09-08 13:21:16', '0000-00-00 00:00:00'),
(637, '1QB Quran Class - Madrasah', '1QBMAD', 'Theory', 'no', '2017-09-08 13:21:32', '0000-00-00 00:00:00'),
(647, '2Q Quran Class - Madrasah', '2QMAD', 'Theory', 'no', '2017-09-08 13:21:43', '0000-00-00 00:00:00'),
(657, '2QB Quran Class - Madrasah', '2QBMAD', 'Theory', 'no', '2017-09-08 13:21:56', '0000-00-00 00:00:00'),
(667, '3Q Quran Class - Madrasah', '3QMAD', 'Theory', 'no', '2017-09-08 13:22:08', '0000-00-00 00:00:00'),
(677, '4Q Quran Class - Madrasah', '4QMAD', 'Theory', 'no', '2017-09-08 13:22:23', '0000-00-00 00:00:00'),
(687, 'Level 1 Quran Class Boys - Madrasah', 'L1MAD', 'Theory', 'no', '2017-09-08 13:22:45', '0000-00-00 00:00:00'),
(697, 'Level 2 Quran Class Boys - Madrasah', 'L2MAD', 'Theory', 'no', '2017-09-08 13:22:57', '0000-00-00 00:00:00'),
(707, 'Level 3 Quran Class Boys - Madrasah', 'L3MAD', 'Theory', 'no', '2017-09-08 13:23:06', '0000-00-00 00:00:00'),
(717, 'Level 4 Quran Class Boys - Madrasah', 'L4MAD', 'Theory', 'no', '2017-09-08 13:23:16', '0000-00-00 00:00:00'),
(727, 'Level 5 Quran Class Boys - Madrasah', 'L5MAD', 'Theory', 'no', '2017-09-08 13:23:38', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
`id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=268 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(47, 'Sheikh Abu Adnan', 'abuadnan@markaz1.com', NULL, '', '2017-07-30', NULL, 'Male', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-08-23 12:00:05', '0000-00-00 00:00:00'),
(57, 'Sheikh Abu Ishaaq', 'abuishaaq@markaz1.com', NULL, '', '2017-07-31', NULL, 'Male', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-08-23 12:00:11', '0000-00-00 00:00:00'),
(67, 'Ustadh Muhammad al-Bizry', 'albizry@markaz1.com', NULL, '', '2017-07-31', NULL, 'Male', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-08-23 12:00:16', '0000-00-00 00:00:00'),
(77, 'Sheikh Abdullah Chabou', 'chabou@markaz1.com', NULL, '', '2017-07-31', NULL, 'Male', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-08-23 12:00:21', '0000-00-00 00:00:00'),
(87, 'Saumiah Albaf', 'Saumiah@markaz1.com', NULL, '', '2017-07-31', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-08-23 12:00:26', '0000-00-00 00:00:00'),
(97, 'Sheikh Abu Obaidah', 'obaidah@markaz1.com', NULL, '', '2017-07-31', NULL, 'Male', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-07-17 07:00:23', '0000-00-00 00:00:00'),
(107, 'Amal Alsamad', 'amal@markaz1.com', NULL, '', '2017-08-23', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-08-23 12:00:53', '0000-00-00 00:00:00'),
(117, 'Aisha Raad', 'aisha@markaz1.com', NULL, '', '2017-08-23', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-08-23 12:01:09', '0000-00-00 00:00:00'),
(127, 'Mahmoud Coshnow', '12345678', NULL, '', '2017-08-23', NULL, 'Male', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-08-23 12:01:23', '0000-00-00 00:00:00'),
(137, 'Danyaal Zafar', 'danyaal@markaz1.com', NULL, '', '2017-08-23', NULL, 'Male', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-08-23 12:01:33', '0000-00-00 00:00:00'),
(147, 'Saadiqa Davids', 'saadiqa@markaz1.com', NULL, '', '2017-08-23', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-08-23 12:02:02', '0000-00-00 00:00:00'),
(157, 'Hakimah Muslim', 'hakimah@markaz1.com', NULL, '', '2017-08-23', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-08-23 12:02:15', '0000-00-00 00:00:00'),
(167, 'Labib Ahmad', 'labib@markaz1.com', NULL, '', '2017-09-01', NULL, 'Male', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-09-06 14:42:37', '0000-00-00 00:00:00'),
(177, 'Ragda Sadaddin', 'ragda@markaz1.com', NULL, '', '2017-09-01', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-09-08 13:08:02', '0000-00-00 00:00:00'),
(187, 'Hadi Naghi', 'hadi@markaz1.com', NULL, '', '2017-09-01', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-09-08 13:08:44', '0000-00-00 00:00:00'),
(197, 'Zahi Naghi', 'zahi@markaz1.com', NULL, '', '2017-09-01', NULL, 'Male', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-09-08 13:09:38', '0000-00-00 00:00:00'),
(207, 'Rema Naghi', 'rema@markaz1.com', NULL, '', '2017-09-01', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-09-08 13:10:11', '0000-00-00 00:00:00'),
(217, 'Nazira El-Samman', 'nazira@markaz1.com', NULL, '', '2017-09-01', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-09-08 13:10:43', '0000-00-00 00:00:00'),
(227, 'Souhair Iyad', 'souhair@markaz1.com', NULL, '', '2017-09-01', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-09-08 13:13:13', '0000-00-00 00:00:00'),
(237, 'Halima Zraika', 'halima@markaz1.com', NULL, '', '2017-09-01', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-09-08 13:13:34', '0000-00-00 00:00:00'),
(247, 'Ahmed Sabouni', 'ahmed@markaz1.com', NULL, '', '2017-09-01', NULL, 'Male', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-09-08 13:13:49', '0000-00-00 00:00:00'),
(257, 'Rabita Israt', 'rabita@markaz1.com', NULL, '', '2017-09-01', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-09-08 13:14:18', '0000-00-00 00:00:00'),
(267, 'Rana Assafiri', 'rana@markaz.com', NULL, '', '2017-09-01', NULL, 'Female', '12345678', 'uploads/student_images/no_image.png', 'no', '2017-09-08 13:14:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE `teacher_subjects` (
`id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=1748 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_subjects`
--

INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(47, 11, 97, 87, 47, NULL, 'no', '2017-07-17 07:01:41', '0000-00-00 00:00:00'),
(57, 11, 107, 87, 47, NULL, 'no', '2017-07-17 07:02:21', '0000-00-00 00:00:00'),
(67, 11, 117, 107, 87, NULL, 'no', '2017-07-17 07:02:53', '0000-00-00 00:00:00'),
(77, 11, 157, 117, 87, NULL, 'no', '2017-09-06 14:03:35', '0000-00-00 00:00:00'),
(97, 11, 177, 127, 57, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(107, 11, 177, 137, 57, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(117, 11, 177, 147, 57, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(127, 11, 177, 157, 57, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(137, 11, 177, 167, 57, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(147, 11, 177, 177, 57, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(157, 11, 177, 187, 57, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(167, 11, 177, 197, 57, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(177, 11, 177, 207, 67, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(187, 11, 177, 217, 67, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(197, 11, 177, 227, 47, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(207, 11, 177, 237, 47, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(217, 11, 177, 247, 57, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(227, 11, 177, 257, 57, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(237, 11, 177, 267, 47, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(247, 11, 177, 277, 47, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(257, 11, 177, 287, 67, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(267, 11, 177, 297, 67, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(277, 11, 177, 307, 57, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(287, 11, 177, 317, 57, NULL, 'no', '2017-08-23 12:10:36', '0000-00-00 00:00:00'),
(297, 11, 157, 327, 157, NULL, 'no', '2017-09-06 14:03:35', '0000-00-00 00:00:00'),
(307, 11, 157, 347, 87, NULL, 'no', '2017-09-06 14:03:35', '0000-00-00 00:00:00'),
(317, 11, 157, 337, 97, NULL, 'no', '2017-09-06 14:03:35', '0000-00-00 00:00:00'),
(327, 11, 157, 357, 117, NULL, 'no', '2017-09-06 14:03:35', '0000-00-00 00:00:00'),
(337, 11, 157, 367, 127, NULL, 'no', '2017-09-06 14:03:35', '0000-00-00 00:00:00'),
(347, 11, 157, 377, 137, NULL, 'no', '2017-09-06 14:03:35', '0000-00-00 00:00:00'),
(357, 11, 187, 437, 147, NULL, 'no', '2017-09-06 14:05:40', '0000-00-00 00:00:00'),
(367, 11, 187, 427, 107, NULL, 'no', '2017-09-06 14:05:40', '0000-00-00 00:00:00'),
(377, 11, 187, 447, 107, NULL, 'no', '2017-09-06 14:05:40', '0000-00-00 00:00:00'),
(387, 11, 187, 457, 107, NULL, 'no', '2017-09-06 14:05:40', '0000-00-00 00:00:00'),
(397, 11, 197, 397, 97, NULL, 'no', '2017-09-06 14:07:11', '0000-00-00 00:00:00'),
(407, 11, 197, 407, 137, NULL, 'no', '2017-09-06 14:07:11', '0000-00-00 00:00:00'),
(417, 11, 197, 417, 127, NULL, 'no', '2017-09-06 14:07:11', '0000-00-00 00:00:00'),
(427, 11, 197, 387, 97, NULL, 'no', '2017-09-06 14:07:11', '0000-00-00 00:00:00'),
(437, 11, 207, 127, 57, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(447, 11, 207, 137, 57, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(457, 11, 207, 147, 57, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(467, 11, 207, 157, 57, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(477, 11, 207, 167, 57, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(487, 11, 207, 177, 57, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(497, 11, 207, 187, 57, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(507, 11, 207, 197, 57, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(517, 11, 207, 207, 77, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(527, 11, 207, 217, 77, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(537, 11, 207, 227, 77, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(547, 11, 207, 237, 77, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(557, 11, 207, 247, 77, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(567, 11, 207, 257, 77, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(577, 11, 207, 267, 57, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(587, 11, 207, 277, 57, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(597, 11, 207, 287, 77, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(607, 11, 207, 297, 77, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(617, 11, 207, 307, 77, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(627, 11, 207, 317, 77, NULL, 'no', '2017-09-06 14:11:24', '0000-00-00 00:00:00'),
(637, 11, 227, 467, 57, NULL, 'no', '2017-09-06 14:31:16', '0000-00-00 00:00:00'),
(647, 11, 227, 477, 57, NULL, 'no', '2017-09-06 14:31:16', '0000-00-00 00:00:00'),
(667, 11, 237, 597, 167, NULL, 'no', '2017-09-06 14:51:01', '0000-00-00 00:00:00'),
(677, 11, 237, 567, 137, NULL, 'no', '2017-09-06 14:52:10', '0000-00-00 00:00:00'),
(687, 11, 237, 587, 127, NULL, 'no', '2017-09-06 14:52:10', '0000-00-00 00:00:00'),
(697, 11, 237, 497, 177, NULL, 'no', '2017-09-08 13:19:55', '0000-00-00 00:00:00'),
(707, 11, 237, 507, 217, NULL, 'no', '2017-09-08 13:19:55', '0000-00-00 00:00:00'),
(717, 11, 237, 517, 87, NULL, 'no', '2017-09-08 13:19:55', '0000-00-00 00:00:00'),
(727, 11, 237, 527, 227, NULL, 'no', '2017-09-08 13:19:55', '0000-00-00 00:00:00'),
(737, 11, 237, 537, 237, NULL, 'no', '2017-09-08 13:19:55', '0000-00-00 00:00:00'),
(747, 11, 237, 547, 247, NULL, 'no', '2017-09-08 13:19:55', '0000-00-00 00:00:00'),
(757, 11, 237, 557, 257, NULL, 'no', '2017-09-08 13:19:55', '0000-00-00 00:00:00'),
(767, 11, 237, 577, 267, NULL, 'no', '2017-09-08 13:19:55', '0000-00-00 00:00:00'),
(787, 11, 247, 687, 247, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(797, 11, 247, 697, 137, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(807, 11, 247, 707, 127, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(817, 11, 247, 717, 197, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(827, 11, 247, 727, 167, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(837, 11, 247, 607, 227, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(847, 11, 247, 617, 217, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(857, 11, 247, 627, 177, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(867, 11, 247, 637, 87, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(877, 11, 247, 647, 267, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(887, 11, 247, 657, 187, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(897, 11, 247, 667, 207, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(907, 11, 247, 677, 117, NULL, 'no', '2017-09-08 13:27:54', '0000-00-00 00:00:00'),
(917, 11, 267, 117, 47, NULL, 'no', '2017-09-25 14:40:09', '0000-00-00 00:00:00'),
(927, 11, 267, 0, 0, NULL, 'no', '2017-09-25 14:40:09', '0000-00-00 00:00:00'),
(937, 11, 407, 117, 87, NULL, 'no', '2017-09-27 14:22:54', '0000-00-00 00:00:00'),
(947, 11, 407, 327, 157, NULL, 'no', '2017-09-27 14:22:54', '0000-00-00 00:00:00'),
(957, 11, 407, 337, 97, NULL, 'no', '2017-09-27 14:22:54', '0000-00-00 00:00:00'),
(967, 11, 407, 347, 87, NULL, 'no', '2017-09-27 14:22:54', '0000-00-00 00:00:00'),
(977, 11, 407, 357, 117, NULL, 'no', '2017-09-27 14:22:54', '0000-00-00 00:00:00'),
(987, 11, 407, 367, 127, NULL, 'no', '2017-09-27 14:22:54', '0000-00-00 00:00:00'),
(997, 11, 407, 377, 137, NULL, 'no', '2017-09-27 14:22:54', '0000-00-00 00:00:00'),
(1007, 11, 407, 427, 107, NULL, 'no', '2017-09-27 14:22:54', '0000-00-00 00:00:00'),
(1017, 11, 417, 387, 97, NULL, 'no', '2017-09-27 14:23:50', '0000-00-00 00:00:00'),
(1027, 11, 417, 397, 97, NULL, 'no', '2017-09-27 14:23:50', '0000-00-00 00:00:00'),
(1037, 11, 417, 407, 137, NULL, 'no', '2017-09-27 14:23:50', '0000-00-00 00:00:00'),
(1047, 11, 417, 417, 127, NULL, 'no', '2017-09-27 14:23:50', '0000-00-00 00:00:00'),
(1057, 11, 437, 437, 147, NULL, 'no', '2017-09-27 14:24:29', '0000-00-00 00:00:00'),
(1067, 11, 437, 447, 107, NULL, 'no', '2017-09-27 14:24:29', '0000-00-00 00:00:00'),
(1077, 11, 437, 457, 107, NULL, 'no', '2017-09-27 14:24:29', '0000-00-00 00:00:00'),
(1087, 11, 427, 127, 57, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1097, 11, 427, 137, 57, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1107, 11, 427, 147, 57, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1117, 11, 427, 157, 57, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1127, 11, 427, 167, 57, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1137, 11, 427, 177, 57, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1147, 11, 427, 187, 57, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1157, 11, 427, 197, 57, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1167, 11, 427, 207, 67, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1177, 11, 427, 217, 67, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1187, 11, 427, 227, 47, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1197, 11, 427, 237, 47, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1207, 11, 427, 287, 67, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1217, 11, 427, 297, 67, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1227, 11, 427, 307, 57, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1237, 11, 427, 317, 57, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1247, 11, 427, 247, 57, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1257, 11, 427, 257, 57, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1267, 11, 427, 267, 47, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1277, 11, 427, 277, 47, NULL, 'no', '2017-09-27 14:27:14', '0000-00-00 00:00:00'),
(1287, 11, 447, 127, 57, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1297, 11, 447, 137, 57, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1307, 11, 447, 147, 57, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1317, 11, 447, 157, 57, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1327, 11, 447, 167, 57, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1337, 11, 447, 177, 57, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1347, 11, 447, 187, 57, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1357, 11, 447, 197, 57, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1367, 11, 447, 207, 77, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1377, 11, 447, 217, 77, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1387, 11, 447, 227, 77, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1397, 11, 447, 237, 77, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1407, 11, 447, 247, 77, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1417, 11, 447, 257, 77, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1427, 11, 447, 267, 57, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1437, 11, 447, 277, 57, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1447, 11, 447, 287, 77, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1457, 11, 447, 297, 77, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1467, 11, 447, 307, 77, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1477, 11, 447, 317, 77, NULL, 'no', '2017-09-27 14:32:05', '0000-00-00 00:00:00'),
(1487, 11, 457, 497, 177, NULL, 'no', '2017-09-27 14:36:11', '0000-00-00 00:00:00'),
(1497, 11, 457, 507, 217, NULL, 'no', '2017-09-27 14:36:11', '0000-00-00 00:00:00'),
(1507, 11, 457, 517, 87, NULL, 'no', '2017-09-27 14:36:11', '0000-00-00 00:00:00'),
(1517, 11, 457, 527, 227, NULL, 'no', '2017-09-27 14:36:11', '0000-00-00 00:00:00'),
(1527, 11, 457, 537, 237, NULL, 'no', '2017-09-27 14:36:11', '0000-00-00 00:00:00'),
(1537, 11, 457, 547, 247, NULL, 'no', '2017-09-27 14:36:11', '0000-00-00 00:00:00'),
(1547, 11, 457, 557, 257, NULL, 'no', '2017-09-27 14:36:11', '0000-00-00 00:00:00'),
(1557, 11, 457, 567, 137, NULL, 'no', '2017-09-27 14:36:11', '0000-00-00 00:00:00'),
(1567, 11, 457, 577, 267, NULL, 'no', '2017-09-27 14:36:11', '0000-00-00 00:00:00'),
(1577, 11, 457, 587, 127, NULL, 'no', '2017-09-27 14:36:11', '0000-00-00 00:00:00'),
(1587, 11, 457, 597, 167, NULL, 'no', '2017-09-27 14:36:11', '0000-00-00 00:00:00'),
(1597, 11, 467, 607, 227, NULL, 'no', '2017-09-27 14:39:03', '0000-00-00 00:00:00'),
(1607, 11, 467, 617, 217, NULL, 'no', '2017-09-27 14:39:03', '0000-00-00 00:00:00'),
(1617, 11, 467, 627, 87, NULL, 'no', '2017-09-27 14:39:03', '0000-00-00 00:00:00'),
(1627, 11, 467, 647, 267, NULL, 'no', '2017-09-27 14:39:03', '0000-00-00 00:00:00'),
(1637, 11, 467, 657, 187, NULL, 'no', '2017-09-27 14:39:03', '0000-00-00 00:00:00'),
(1647, 11, 467, 667, 207, NULL, 'no', '2017-09-27 14:39:03', '0000-00-00 00:00:00'),
(1657, 11, 467, 677, 117, NULL, 'no', '2017-09-27 14:39:03', '0000-00-00 00:00:00'),
(1667, 11, 467, 687, 247, NULL, 'no', '2017-09-27 14:39:03', '0000-00-00 00:00:00'),
(1677, 11, 467, 697, 137, NULL, 'no', '2017-09-27 14:39:03', '0000-00-00 00:00:00'),
(1687, 11, 467, 707, 127, NULL, 'no', '2017-09-27 14:39:03', '0000-00-00 00:00:00'),
(1697, 11, 467, 717, 197, NULL, 'no', '2017-09-27 14:39:03', '0000-00-00 00:00:00'),
(1707, 11, 467, 727, 167, NULL, 'no', '2017-09-27 14:39:03', '0000-00-00 00:00:00'),
(1717, 11, 477, 477, 57, NULL, 'no', '2017-09-27 14:41:04', '0000-00-00 00:00:00'),
(1727, 11, 487, 477, 57, NULL, 'no', '2017-09-27 14:41:29', '0000-00-00 00:00:00'),
(1737, 11, 487, 467, 57, NULL, 'no', '2017-09-27 14:41:29', '0000-00-00 00:00:00'),
(1747, 11, 477, 467, 57, NULL, 'no', '2017-09-27 14:41:42', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE `timetables` (
`id` int(11) NOT NULL,
  `teacher_subject_id` int(20) DEFAULT NULL,
  `day_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timetables`
--

INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 7, 'Monday', '05:00 PM', '06:00 PM', 'Room 1', 'no', '2017-03-19 00:59:26', '0000-00-00 00:00:00'),
(17, 7, 'Tuesday', '05:00 PM', '06:00 PM', 'Room 1', 'no', '2017-03-19 00:59:26', '0000-00-00 00:00:00'),
(27, 7, 'Wednesday', '', '', '', 'no', '2017-03-19 00:59:26', '0000-00-00 00:00:00'),
(37, 7, 'Thursday', '', '', '', 'no', '2017-03-19 00:59:26', '0000-00-00 00:00:00'),
(47, 7, 'Friday', '05:00 PM', '06:00 PM', 'Room 1', 'no', '2017-03-19 00:59:26', '0000-00-00 00:00:00'),
(57, 7, 'Saturday', '', '', '', 'no', '2017-03-19 00:59:26', '0000-00-00 00:00:00'),
(67, 7, 'Sunday', '', '', '', 'no', '2017-03-19 00:59:26', '0000-00-00 00:00:00'),
(77, 17, 'Monday', '06:00 PM', '07:00 AM', 'Room 2', 'no', '2017-03-19 01:01:05', '0000-00-00 00:00:00'),
(87, 17, 'Tuesday', '06:00 PM', '07:00 PM', 'Room 2', 'no', '2017-03-19 01:01:05', '0000-00-00 00:00:00'),
(97, 17, 'Wednesday', '', '', '', 'no', '2017-03-19 01:01:05', '0000-00-00 00:00:00'),
(107, 17, 'Thursday', '', '', '', 'no', '2017-03-19 01:01:05', '0000-00-00 00:00:00'),
(117, 17, 'Friday', '06:00 PM', '07:00 PM', 'Room 2', 'no', '2017-03-19 01:01:05', '0000-00-00 00:00:00'),
(127, 17, 'Saturday', '', '', '', 'no', '2017-03-19 01:01:05', '0000-00-00 00:00:00'),
(137, 17, 'Sunday', '', '', '', 'no', '2017-03-19 01:01:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

CREATE TABLE `transport_route` (
`id` int(11) NOT NULL,
  `route_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
`id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `childs` text COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=288 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 7, 'teacher7', 'sflhyk', '', 'teacher', 'yes', '2017-03-19 00:54:32', '0000-00-00 00:00:00'),
(17, 17, 'teacher17', '6xt1ca', '', 'teacher', 'yes', '2017-03-19 00:54:57', '0000-00-00 00:00:00'),
(27, 27, 'teacher27', 'lhniuh', '', 'teacher', 'yes', '2017-03-19 00:55:24', '0000-00-00 00:00:00'),
(37, 0, 'std0', '0s4gw3', '', 'student', 'yes', '2017-03-19 01:06:41', '0000-00-00 00:00:00'),
(47, 0, 'parent0', 'bhnz1o', '0', 'parent', 'yes', '2017-03-19 01:06:41', '0000-00-00 00:00:00'),
(57, 0, 'std0', 'kl0spq', '', 'student', 'yes', '2017-03-19 01:08:27', '0000-00-00 00:00:00'),
(67, 0, 'parent0', 'd4um74', '0', 'parent', 'yes', '2017-03-19 01:08:27', '0000-00-00 00:00:00'),
(77, 7, 'std7', 'o74voy', '', 'student', 'yes', '2017-03-19 01:10:47', '0000-00-00 00:00:00'),
(87, 7, 'parent7', '9rsegm', '7', 'parent', 'yes', '2017-03-19 01:10:47', '0000-00-00 00:00:00'),
(97, 17, 'std17', 'fgo3fb', '', 'student', 'yes', '2017-03-19 04:53:08', '0000-00-00 00:00:00'),
(107, 17, 'parent17', 'j4gcat', '17', 'parent', 'yes', '2017-03-19 04:53:08', '0000-00-00 00:00:00'),
(108, 0, 'std0', '9mniur', '', 'student', 'yes', '2017-04-26 11:33:58', '0000-00-00 00:00:00'),
(109, 0, 'parent0', '49wnk5', '0', 'parent', 'yes', '2017-04-26 11:33:58', '0000-00-00 00:00:00'),
(110, 18, 'std18', 'np903t', '', 'student', 'yes', '2017-04-26 11:49:22', '0000-00-00 00:00:00'),
(111, 18, 'parent18', 'rnkvo3', '18', 'parent', 'yes', '2017-04-26 11:49:22', '0000-00-00 00:00:00'),
(112, 0, 'std0', '6xt50j', '', 'student', 'yes', '2017-04-26 12:23:28', '0000-00-00 00:00:00'),
(113, 0, 'parent0', 'gwatgr', '0', 'parent', 'yes', '2017-04-26 12:23:28', '0000-00-00 00:00:00'),
(114, 0, 'std0', 'uo7eb0', '', 'student', 'yes', '2017-04-26 12:24:51', '0000-00-00 00:00:00'),
(115, 0, 'parent0', 'ivwsk9', '0', 'parent', 'yes', '2017-04-26 12:24:51', '0000-00-00 00:00:00'),
(116, 19, 'std19', 'fvcxeq', '', 'student', 'yes', '2017-04-26 12:27:25', '0000-00-00 00:00:00'),
(117, 19, 'parent19', 'n8g07z', '19', 'parent', 'yes', '2017-04-26 12:27:25', '0000-00-00 00:00:00'),
(118, 20, 'std20', 'e3yozy', '', 'student', 'yes', '2017-04-26 13:21:07', '0000-00-00 00:00:00'),
(119, 20, 'parent20', 'fcwdcd', '20', 'parent', 'yes', '2017-04-26 13:21:07', '0000-00-00 00:00:00'),
(120, 21, 'std21', 'skjt8r', '', 'student', 'yes', '2017-05-02 10:30:26', '0000-00-00 00:00:00'),
(121, 21, 'parent21', 'kr0ecy', '21', 'parent', 'yes', '2017-05-02 10:30:26', '0000-00-00 00:00:00'),
(122, 22, 'std22', 'nrtarq', '', 'student', 'yes', '2017-05-02 10:38:18', '0000-00-00 00:00:00'),
(123, 22, 'parent22', '9dap23', '22', 'parent', 'yes', '2017-05-02 10:38:18', '0000-00-00 00:00:00'),
(124, 23, 'std23', '37p322', '', 'student', 'yes', '2017-05-02 10:45:23', '0000-00-00 00:00:00'),
(125, 23, 'parent23', '22hr0o', '23', 'parent', 'yes', '2017-05-02 10:45:23', '0000-00-00 00:00:00'),
(126, 24, 'std24', 'bjy40t', '', 'student', 'yes', '2017-05-04 06:09:59', '0000-00-00 00:00:00'),
(127, 24, 'parent24', '8gtpvv', '24', 'parent', 'yes', '2017-05-04 06:09:59', '0000-00-00 00:00:00'),
(128, 25, 'std25', '4z3r59', '', 'student', 'yes', '2017-05-04 06:10:31', '0000-00-00 00:00:00'),
(129, 25, 'parent25', 'mzemiw', '25', 'parent', 'yes', '2017-05-04 06:10:31', '0000-00-00 00:00:00'),
(130, 26, 'std26', 'oaxzs5', '', 'student', 'yes', '2017-05-04 09:18:19', '0000-00-00 00:00:00'),
(131, 26, 'parent26', 'ypvkzy', '26', 'parent', 'yes', '2017-05-04 09:18:19', '0000-00-00 00:00:00'),
(137, 27, 'std27', 'vwxeuh', '', 'student', 'yes', '2017-05-15 12:06:53', '0000-00-00 00:00:00'),
(147, 27, 'parent27', 'ibhn41', '27', 'parent', 'yes', '2017-05-15 12:06:53', '0000-00-00 00:00:00'),
(157, 37, 'std37', '7f1raz', '', 'student', 'yes', '2017-05-15 12:08:42', '0000-00-00 00:00:00'),
(167, 37, 'parent37', 'wjzqha', '37', 'parent', 'yes', '2017-05-15 12:08:42', '0000-00-00 00:00:00'),
(177, 47, 'std47', 'hjkgmx', '', 'student', 'yes', '2017-05-15 13:34:27', '0000-00-00 00:00:00'),
(187, 47, 'parent47', 'gcxz5r', '47', 'parent', 'yes', '2017-05-15 13:34:27', '0000-00-00 00:00:00'),
(197, 7, 'parent7', 'dk9wnt', '', 'parent', 'yes', '2017-05-16 06:36:23', '0000-00-00 00:00:00'),
(207, 57, 'std57', 'b6dt1o', '', 'student', 'yes', '2017-05-16 06:56:50', '0000-00-00 00:00:00'),
(217, 17, 'parent17', 'kvojpl', '', 'parent', 'yes', '2017-05-16 09:34:12', '0000-00-00 00:00:00'),
(227, 67, 'std67', '38goak', '', 'student', 'yes', '2017-05-16 09:40:16', '0000-00-00 00:00:00'),
(237, 77, 'std77', 'hai1cx', '', 'student', 'yes', '2017-05-16 09:41:27', '0000-00-00 00:00:00'),
(247, 87, 'std87', 'uwspv6', '', 'student', 'yes', '2017-05-16 09:42:04', '0000-00-00 00:00:00'),
(248, 27, 'parent27', 'i3jjcx', '', 'parent', 'yes', '2017-10-09 11:57:50', '0000-00-00 00:00:00'),
(249, 97, 'std97', 'hvumfr', '', 'student', 'yes', '2017-10-09 17:29:03', '0000-00-00 00:00:00'),
(250, 97, 'parent97', 'q0cs2c', '97', 'parent', 'yes', '2017-10-09 17:29:03', '0000-00-00 00:00:00'),
(257, 3057, 'std3057', '52xev2', '', 'student', 'yes', '2017-10-11 05:58:05', '0000-00-00 00:00:00'),
(267, 3057, 'parent3057', 'eqo7z9', '3057', 'parent', 'yes', '2017-10-11 05:58:05', '0000-00-00 00:00:00'),
(277, 3107, 'std3107', 'vcn4b0', '', 'student', 'yes', '2017-10-11 08:17:12', '0000-00-00 00:00:00'),
(287, 3107, 'parent3107', 'zucxkl', '3107', 'parent', 'yes', '2017-10-11 08:17:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
`id` int(10) unsigned NOT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_routes`
--

CREATE TABLE `vehicle_routes` (
`id` int(11) unsigned NOT NULL,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountants`
--
ALTER TABLE `accountants`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendence_type`
--
ALTER TABLE `attendence_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `sec_classunit` (`section_id`,`class_id`), ADD KEY `class_id` (`class_id`), ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
 ADD PRIMARY KEY (`id`), ADD KEY `exam_schedule_id` (`exam_schedule_id`), ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
 ADD PRIMARY KEY (`id`), ADD KEY `teacher_subject_id` (`teacher_subject_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_head`
--
ALTER TABLE `expense_head`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feecategory`
--
ALTER TABLE `feecategory`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feemasters`
--
ALTER TABLE `feemasters`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feetype`
--
ALTER TABLE `feetype`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups`
--
ALTER TABLE `fee_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lang_keys`
--
ALTER TABLE `lang_keys`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lang_pharses`
--
ALTER TABLE `lang_pharses`
 ADD PRIMARY KEY (`id`), ADD KEY `lang_id` (`lang_id`), ADD KEY `key_id` (`key_id`);

--
-- Indexes for table `libarary_members`
--
ALTER TABLE `libarary_members`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarians`
--
ALTER TABLE `librarians`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `read_notification`
--
ALTER TABLE `read_notification`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route_vehicles`
--
ALTER TABLE `route_vehicles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sch_settings`
--
ALTER TABLE `sch_settings`
 ADD PRIMARY KEY (`id`), ADD KEY `lang_id` (`lang_id`), ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `section_UNIQUE` (`section`);

--
-- Indexes for table `send_notification`
--
ALTER TABLE `send_notification`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_config`
--
ALTER TABLE `sms_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_old`
--
ALTER TABLE `students_old`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendences`
--
ALTER TABLE `student_attendences`
 ADD PRIMARY KEY (`id`), ADD KEY `student_session_id` (`student_session_id`), ADD KEY `attendence_type_id` (`attendence_type_id`);

--
-- Indexes for table `student_doc`
--
ALTER TABLE `student_doc`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_import`
--
ALTER TABLE `student_import`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_parent`
--
ALTER TABLE `student_parent`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_session`
--
ALTER TABLE `student_session`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_sibling`
--
ALTER TABLE `student_sibling`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
 ADD PRIMARY KEY (`id`), ADD KEY `class_section_id` (`class_section_id`), ADD KEY `session_id` (`session_id`), ADD KEY `subject_id` (`subject_id`), ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_route`
--
ALTER TABLE `transport_route`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountants`
--
ALTER TABLE `accountants`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `attendence_type`
--
ALTER TABLE `attendence_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8388;
--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `expense_head`
--
ALTER TABLE `expense_head`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `feecategory`
--
ALTER TABLE `feecategory`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `feemasters`
--
ALTER TABLE `feemasters`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feetype`
--
ALTER TABLE `feetype`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `fee_groups`
--
ALTER TABLE `fee_groups`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `lang_keys`
--
ALTER TABLE `lang_keys`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=692;
--
-- AUTO_INCREMENT for table `lang_pharses`
--
ALTER TABLE `lang_pharses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74022;
--
-- AUTO_INCREMENT for table `libarary_members`
--
ALTER TABLE `libarary_members`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `librarians`
--
ALTER TABLE `librarians`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `read_notification`
--
ALTER TABLE `read_notification`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `route_vehicles`
--
ALTER TABLE `route_vehicles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=478;
--
-- AUTO_INCREMENT for table `send_notification`
--
ALTER TABLE `send_notification`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `sms_config`
--
ALTER TABLE `sms_config`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12608;
--
-- AUTO_INCREMENT for table `students_old`
--
ALTER TABLE `students_old`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `student_attendences`
--
ALTER TABLE `student_attendences`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=198;
--
-- AUTO_INCREMENT for table `student_doc`
--
ALTER TABLE `student_doc`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_import`
--
ALTER TABLE `student_import`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_parent`
--
ALTER TABLE `student_parent`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12578;
--
-- AUTO_INCREMENT for table `student_session`
--
ALTER TABLE `student_session`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12588;
--
-- AUTO_INCREMENT for table `student_sibling`
--
ALTER TABLE `student_sibling`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=728;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=268;
--
-- AUTO_INCREMENT for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1748;
--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `transport_route`
--
ALTER TABLE `transport_route`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=288;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
