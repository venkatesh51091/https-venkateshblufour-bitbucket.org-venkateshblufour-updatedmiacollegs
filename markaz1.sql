-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql313.unaux.com
-- Generation Time: Oct 09, 2017 at 10:02 AM
-- Server version: 5.6.35-81.0
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `unaux_20188150_markaz1`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountants`
--

CREATE TABLE IF NOT EXISTS `accountants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `role`, `email`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(5, 'Admin', 'admin', 'tsmuhar@gmail.com', '501e9bca6072b0cf18d2b9c78bf101b4', 'yes', '2017-10-09 04:15:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `attendence_type`
--

CREATE TABLE IF NOT EXISTS `attendence_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `attendence_type`
--

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class="text text-success">P</b>', 'yes', '2016-06-23 23:41:37', '0000-00-00 00:00:00'),
(2, 'Late with excuse', '<b class="text text-warning">E</b>', 'yes', '2016-10-11 17:05:44', '0000-00-00 00:00:00'),
(3, 'Late', '<b class="text text-warning">L</b>', 'yes', '2016-06-23 23:42:28', '0000-00-00 00:00:00'),
(4, 'Absent', '<b class="text text-danger">A</b>', 'yes', '2016-10-11 17:05:40', '0000-00-00 00:00:00'),
(5, 'Holiday', 'H', 'yes', '2016-10-11 17:05:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE IF NOT EXISTS `book_issues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date NOT NULL,
  `is_returned` int(10) NOT NULL DEFAULT '0',
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 'Boy below 10', 'no', '2017-03-18 19:32:19', '0000-00-00 00:00:00'),
(17, 'Boys 10 to 15', 'no', '2017-05-16 02:27:26', '0000-00-00 00:00:00'),
(27, 'Girls below 10', 'no', '2017-05-16 02:27:36', '0000-00-00 00:00:00'),
(37, 'Girls 10 to 15', 'no', '2017-05-16 02:27:41', '0000-00-00 00:00:00'),
(47, 'Adults', 'no', '2017-05-16 02:27:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 'Brothers A Hadeeth', 'no', '2017-03-18 19:20:05', '0000-00-00 00:00:00'),
(17, 'Sisters A Hadeeth', 'no', '2017-03-18 19:20:12', '0000-00-00 00:00:00'),
(27, 'Young Adults', 'no', '2017-03-18 19:22:44', '0000-00-00 00:00:00'),
(37, 'Seerah', 'no', '2017-05-16 05:19:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE IF NOT EXISTS `class_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=88 ;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 7, 7, 'no', '2017-03-18 19:22:17', '0000-00-00 00:00:00'),
(17, 7, 17, 'no', '2017-03-18 19:22:22', '0000-00-00 00:00:00'),
(27, 17, 7, 'no', '2017-03-18 19:22:29', '0000-00-00 00:00:00'),
(37, 17, 17, 'no', '2017-03-18 19:22:32', '0000-00-00 00:00:00'),
(47, 27, 27, 'no', '2017-03-18 19:23:15', '0000-00-00 00:00:00'),
(57, 27, 37, 'no', '2017-03-18 19:23:19', '0000-00-00 00:00:00'),
(67, 27, 47, 'no', '2017-03-18 19:23:29', '0000-00-00 00:00:00'),
(77, 27, 57, 'no', '2017-03-18 19:23:32', '0000-00-00 00:00:00'),
(87, 37, 27, 'no', '2017-05-16 05:38:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `file` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `type`, `is_public`, `class_id`, `file`, `note`, `is_active`, `created_at`, `updated_at`, `date`) VALUES
(7, 'Madrasah Curriculum', 'Syllabus', 'No', 27, 'uploads/school_content/material/7.docx', 'Term 1 Week 1 2017', 'no', '2017-03-18 23:25:51', '0000-00-00 00:00:00', '2017-03-19'),
(17, 'Title', 'Study Material', 'Yes', 0, 'uploads/school_content/material/17.jpg', 'nione', 'no', '2017-05-15 07:34:32', '0000-00-00 00:00:00', '2017-05-24'),
(27, 'Week 1 Assignment', 'Assignments', 'No', 27, 'uploads/school_content/material/27.png', '', 'no', '2017-05-16 05:31:19', '0000-00-00 00:00:00', '1970-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE IF NOT EXISTS `email_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `is_active`, `created_at`) VALUES
(1, 'smtp', 'smtp.gmail.com', '587', 'xxxx', 'xxxx', 'tls', 'enabled', '2017-08-02 13:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE IF NOT EXISTS `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 'First Term Exam', 0, '', 'no', '2017-03-19 23:51:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE IF NOT EXISTS `exam_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendence` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `exam_schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `exam_schedule_id` (`exam_schedule_id`),
  KEY `student_id` (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE IF NOT EXISTS `exam_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `teacher_subject_id` (`teacher_subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `exp_head_id`, `name`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(7, 7, 'Water', '2017-03-17', 75.00, '', 'yes', 'no', '2017-03-18 19:56:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `expense_head`
--

CREATE TABLE IF NOT EXISTS `expense_head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `expense_head`
--

INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(7, 'Facilities', '', 'yes', 'no', '2017-03-18 19:55:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feecategory`
--

CREATE TABLE IF NOT EXISTS `feecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `feecategory`
--

INSERT INTO `feecategory` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Monthly Fees', 'no', '2016-08-24 01:31:23', '0000-00-00 00:00:00'),
(2, 'Academic Fees', 'no', '2016-08-24 01:31:23', '0000-00-00 00:00:00'),
(3, 'Extra Fees', 'no', '2016-08-24 01:31:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feemasters`
--

CREATE TABLE IF NOT EXISTS `feemasters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `feemasters`
--

INSERT INTO `feemasters` (`id`, `session_id`, `feetype_id`, `class_id`, `amount`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 11, 7, 27, 45.00, 'Monthly Fees', 'no', '2017-03-18 19:47:18', '0000-00-00 00:00:00'),
(19, 11, 7, 7, 200.00, 'monthly bros', 'no', '2017-05-02 04:21:32', '0000-00-00 00:00:00'),
(21, 11, 8, 7, -30.00, '', 'no', '2017-05-16 04:07:44', '0000-00-00 00:00:00'),
(22, 11, 7, 27, -5.00, '', 'no', '2017-05-16 04:06:31', '0000-00-00 00:00:00'),
(23, 11, 7, 27, -10.00, '', 'no', '2017-05-16 04:06:38', '0000-00-00 00:00:00'),
(24, 11, 8, 17, -20.00, '', 'no', '2017-05-16 04:07:52', '0000-00-00 00:00:00'),
(25, 11, 8, 17, -30.00, '', 'no', '2017-05-16 04:08:00', '0000-00-00 00:00:00'),
(26, 11, 7, 17, 150.00, 'Sisters Monthly fee', 'no', '2017-05-03 01:47:01', '0000-00-00 00:00:00'),
(27, 11, 8, 7, -20.00, '', 'no', '2017-05-16 04:07:36', '0000-00-00 00:00:00'),
(37, 11, 7, 37, 80.00, '', 'no', '2017-05-16 05:20:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fees_discounts`
--

CREATE TABLE IF NOT EXISTS `fees_discounts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `feetype`
--

CREATE TABLE IF NOT EXISTS `feetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `feetype`
--

INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES
(7, 1, 'Tuition Fees', '', 'no', '2017-03-18 19:46:57', '0000-00-00 00:00:00', ''),
(8, 1, '2nd Child Discount', '', 'no', '2017-05-03 01:34:25', '0000-00-00 00:00:00', ''),
(9, 1, '3rd Child Discount', '', 'no', '2017-05-03 01:34:52', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups`
--

CREATE TABLE IF NOT EXISTS `fee_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups_feetype`
--

CREATE TABLE IF NOT EXISTS `fee_groups_feetype` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fee_receipt_no`
--

CREATE TABLE IF NOT EXISTS `fee_receipt_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `fee_receipt_no`
--

INSERT INTO `fee_receipt_no` (`id`, `payment`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fee_session_groups`
--

CREATE TABLE IF NOT EXISTS `fee_session_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE IF NOT EXISTS `hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `intake` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_rooms`
--

CREATE TABLE IF NOT EXISTS `hostel_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT '0.00',
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=91 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Azerbaijan', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(2, 'Albanian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(3, 'Amharic', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(4, 'English', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(5, 'Arabic', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(7, 'Afrikaans', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(8, 'Basque', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(11, 'Bengali', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(13, 'Bosnian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(14, 'Welsh', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(15, 'Hungarian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(16, 'Vietnamese', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(17, 'Haitian (Creole)', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(18, 'Galician', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(19, 'Dutch', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(21, 'Greek', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(22, 'Georgian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(23, 'Gujarati', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(24, 'Danish', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(25, 'Hebrew', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(26, 'Yiddish', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(27, 'Indonesian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(28, 'Irish', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(29, 'Italian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(30, 'Icelandic', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(31, 'Spanish', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(33, 'Kannada', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(34, 'Catalan', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(36, 'Chinese', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(37, 'Korean', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(38, 'Xhosa', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(39, 'Latin', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(40, 'Latvian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(41, 'Lithuanian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(43, 'Malagasy', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(44, 'Malay', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(45, 'Malayalam', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(46, 'Maltese', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(47, 'Macedonian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(48, 'Maori', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(49, 'Marathi', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(51, 'Mongolian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(52, 'German', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(53, 'Nepali', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(54, 'Norwegian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(55, 'Punjabi', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(57, 'Persian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(59, 'Portuguese', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(60, 'Romanian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(61, 'Russian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(62, 'Cebuano', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(64, 'Sinhala', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(65, 'Slovakian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(66, 'Slovenian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(67, 'Swahili', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(68, 'Sundanese', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(70, 'Thai', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(71, 'Tagalog', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(72, 'Tamil', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(74, 'Telugu', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(75, 'Turkish', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(77, 'Uzbek', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(79, 'Urdu', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(80, 'Finnish', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(81, 'French', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(82, 'Hindi', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(84, 'Czech', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(85, 'Swedish', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(86, 'Scottish', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(87, 'Estonian', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(88, 'Esperanto', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(89, 'Javanese', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00'),
(90, 'Japanese', 'no', 'no', '2017-04-06 16:08:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lang_keys`
--

CREATE TABLE IF NOT EXISTS `lang_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=692 ;

--
-- Dumping data for table `lang_keys`
--

INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'session', 'no', '2016-03-09 16:24:39', '0000-00-00 00:00:00'),
(2, 'school_name', 'no', '2016-03-09 16:34:28', '0000-00-00 00:00:00'),
(3, 'email', 'no', '2016-03-09 16:34:48', '0000-00-00 00:00:00'),
(6, 'roll_no', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(7, 'first_name', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(8, 'last_name', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(9, 'class', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(10, 'section', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(11, 'admission_date', 'no', '2017-04-02 01:07:35', '0000-00-00 00:00:00'),
(12, 'mobile_no', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(13, 'date_of_birth', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(15, 'religion', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(16, 'category', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(17, 'current_address', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(18, 'permanent_address', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(23, 'bank_account_no', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(24, 'bank_name', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(25, 'ifsc_code', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(27, 'guardian_name', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(28, 'guardian_relation', 'no', '2016-03-12 19:13:05', '0000-00-00 00:00:00'),
(29, 'guardian_phone', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(30, 'guardian_address', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(31, 'select_image', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(32, 'import_excel', 'no', '2001-12-30 10:03:11', '0000-00-00 00:00:00'),
(33, 'export_format', 'no', '2001-12-30 10:03:11', '0000-00-00 00:00:00'),
(34, 'generate_pdf', 'no', '2001-12-30 10:03:11', '0000-00-00 00:00:00'),
(35, 'add_fees', 'no', '2016-06-24 13:34:31', '0000-00-00 00:00:00'),
(37, 'search', 'no', '2016-03-12 19:17:08', '0000-00-00 00:00:00'),
(39, 'fee_category', 'no', '2016-03-12 19:29:03', '0000-00-00 00:00:00'),
(40, 'fee_type', 'no', '2016-03-12 19:29:03', '0000-00-00 00:00:00'),
(43, 'add_fees_master', 'no', '2016-03-12 19:30:10', '0000-00-00 00:00:00'),
(44, 'fees_master_list', 'no', '2016-03-12 19:30:10', '0000-00-00 00:00:00'),
(45, 'add_fees_type', 'no', '2016-03-12 19:31:38', '0000-00-00 00:00:00'),
(46, 'fees_type_list', 'no', '2016-03-12 19:31:38', '0000-00-00 00:00:00'),
(48, 'edit', 'no', '2016-03-12 19:33:10', '0000-00-00 00:00:00'),
(50, 'category_list', 'no', '2016-03-12 19:34:32', '0000-00-00 00:00:00'),
(51, 'add_category', 'no', '2016-03-12 19:34:32', '0000-00-00 00:00:00'),
(52, 'session_list', 'no', '2016-03-12 19:35:15', '0000-00-00 00:00:00'),
(53, 'add_session', 'no', '2016-03-12 19:35:15', '0000-00-00 00:00:00'),
(54, 'class_list', 'no', '2016-03-12 19:35:53', '0000-00-00 00:00:00'),
(56, 'section_list', 'no', '2016-03-12 19:36:20', '0000-00-00 00:00:00'),
(57, 'add_section', 'no', '2016-03-12 19:36:20', '0000-00-00 00:00:00'),
(61, 'student', 'no', '2016-03-12 19:38:08', '0000-00-00 00:00:00'),
(63, 'language_list', 'no', '2016-03-12 19:39:44', '0000-00-00 00:00:00'),
(64, 'add_another_language', 'no', '2016-03-12 19:39:44', '0000-00-00 00:00:00'),
(65, 'created_at', 'no', '2016-03-12 20:15:20', '0000-00-00 00:00:00'),
(66, 'save', 'no', '2001-12-30 09:51:24', '0000-00-00 00:00:00'),
(68, 'select_logo', 'no', '2001-12-30 10:17:56', '0000-00-00 00:00:00'),
(69, 'school_logo', 'no', '2001-12-30 10:19:33', '0000-00-00 00:00:00'),
(70, 'manage', 'no', '2001-12-30 10:19:33', '0000-00-00 00:00:00'),
(72, 'edit_logo', 'no', '2001-12-30 10:23:28', '0000-00-00 00:00:00'),
(73, 'phone', 'no', '2001-12-30 10:30:49', '0000-00-00 00:00:00'),
(74, 'user_name', 'no', '2001-12-30 10:38:51', '0000-00-00 00:00:00'),
(76, 'sms_configuration', 'no', '2001-12-30 10:43:00', '0000-00-00 00:00:00'),
(77, 'sms_gateway_url', 'no', '2016-10-26 21:19:35', '0000-00-00 00:00:00'),
(78, 'status', 'no', '2001-12-30 10:43:52', '0000-00-00 00:00:00'),
(79, 'action', 'no', '2001-12-30 10:44:03', '0000-00-00 00:00:00'),
(80, 'change_status', 'no', '2001-12-30 10:45:19', '0000-00-00 00:00:00'),
(82, 'report', 'no', '2001-12-30 10:56:58', '0000-00-00 00:00:00'),
(84, 'select_criteria', 'no', '2001-12-30 10:57:36', '0000-00-00 00:00:00'),
(85, 'reset', 'no', '2001-12-30 10:58:39', '0000-00-00 00:00:00'),
(86, 'invoice_no', 'no', '2001-12-30 11:00:59', '0000-00-00 00:00:00'),
(87, 'fine', 'no', '2001-12-30 11:00:59', '0000-00-00 00:00:00'),
(88, 'type', 'no', '2001-12-30 11:01:20', '0000-00-00 00:00:00'),
(89, 'amount', 'no', '2001-12-30 11:01:20', '0000-00-00 00:00:00'),
(90, 'total', 'no', '2001-12-30 11:01:26', '0000-00-00 00:00:00'),
(91, 'discount', 'no', '2001-12-30 11:01:36', '0000-00-00 00:00:00'),
(92, 'balance_description', 'no', '2001-12-30 11:02:55', '0000-00-00 00:00:00'),
(94, 'no_search_record_found', 'no', '2001-12-30 11:06:37', '0000-00-00 00:00:00'),
(101, 'description', 'no', '2001-12-30 11:13:49', '0000-00-00 00:00:00'),
(102, 'fees_subtotal', 'no', '2001-12-30 11:14:34', '0000-00-00 00:00:00'),
(104, 'receipt_no', 'no', '2001-12-30 11:17:56', '0000-00-00 00:00:00'),
(106, 'grand_total', 'no', '2001-12-30 11:19:14', '0000-00-00 00:00:00'),
(107, 'deposit', 'no', '2001-12-30 11:26:50', '0000-00-00 00:00:00'),
(108, 'balance', 'no', '2001-12-30 11:26:50', '0000-00-00 00:00:00'),
(115, 'fee_master', 'no', '2001-12-30 13:06:09', '0000-00-00 00:00:00'),
(116, 'classes', 'no', '2001-12-30 13:06:44', '0000-00-00 00:00:00'),
(117, 'collection', 'no', '2001-12-30 13:07:14', '0000-00-00 00:00:00'),
(121, 'current_password', 'no', '2001-12-31 04:59:11', '0000-00-00 00:00:00'),
(122, 'new_password', 'no', '2001-12-31 04:59:11', '0000-00-00 00:00:00'),
(123, 'confirm_password', 'no', '2016-09-15 10:29:51', '0000-00-00 00:00:00'),
(125, 'date', 'no', '2016-04-07 16:17:39', '0000-00-00 00:00:00'),
(137, 'add_new_sms_configuration', 'no', '2001-12-31 06:39:13', '0000-00-00 00:00:00'),
(141, 'cancel', 'no', '2016-03-27 02:50:39', '0000-00-00 00:00:00'),
(142, 'exam_name', 'no', '2016-03-27 04:16:34', '0000-00-00 00:00:00'),
(143, 'subject_name', 'no', '2016-03-29 19:05:15', '0000-00-00 00:00:00'),
(144, 'subject_code', 'no', '2016-03-29 19:05:15', '0000-00-00 00:00:00'),
(145, 'grade_name', 'no', '2016-03-29 23:21:20', '0000-00-00 00:00:00'),
(147, 'percent', 'no', '2016-03-29 23:21:41', '0000-00-00 00:00:00'),
(149, 'percent_to', 'no', '2016-03-29 23:22:00', '0000-00-00 00:00:00'),
(150, 'note', 'no', '2016-03-29 23:22:00', '0000-00-00 00:00:00'),
(151, 'school_code', 'no', '2016-10-25 15:12:26', '0000-00-00 00:00:00'),
(152, 'sign_in', 'no', '2016-04-07 08:27:27', '0000-00-00 00:00:00'),
(153, 'name', 'no', '2016-04-07 16:16:19', '0000-00-00 00:00:00'),
(155, 'transport_fees', 'no', '2016-04-12 16:56:04', '0000-00-00 00:00:00'),
(156, 'fees_discount', 'no', '2016-04-12 17:33:36', '0000-00-00 00:00:00'),
(157, 'father_name', 'no', '2016-04-13 01:52:14', '0000-00-00 00:00:00'),
(158, 'father_phone', 'no', '2016-04-13 01:52:14', '0000-00-00 00:00:00'),
(159, 'father_occupation', 'no', '2016-04-13 01:52:45', '0000-00-00 00:00:00'),
(160, 'mother_name', 'no', '2016-04-13 01:52:45', '0000-00-00 00:00:00'),
(161, 'mother_phone', 'no', '2016-04-13 01:56:08', '0000-00-00 00:00:00'),
(162, 'mother_occupation', 'no', '2016-04-13 01:56:08', '0000-00-00 00:00:00'),
(163, 'guardian_occupation', 'no', '2016-04-13 02:09:51', '0000-00-00 00:00:00'),
(164, 'address', 'no', '2016-04-14 11:32:42', '0000-00-00 00:00:00'),
(165, 'language', 'no', '2016-04-14 11:33:38', '0000-00-00 00:00:00'),
(166, 'teacher_name', 'no', '2016-04-19 10:55:06', '0000-00-00 00:00:00'),
(167, 'password', 'no', '2016-04-19 10:55:06', '0000-00-00 00:00:00'),
(168, 'cast', 'no', '2016-04-19 11:26:10', '0000-00-00 00:00:00'),
(169, 'id', 'no', '2016-04-19 13:04:10', '0000-00-00 00:00:00'),
(170, 'admission_no', 'no', '2016-04-22 23:02:46', '0000-00-00 00:00:00'),
(171, 'enrollment_no', 'no', '2016-04-22 23:20:48', '0000-00-00 00:00:00'),
(180, 'total_paid_fees', 'no', '2016-04-23 00:09:01', '0000-00-00 00:00:00'),
(181, 'admission_discount', 'no', '2016-04-23 00:09:41', '0000-00-00 00:00:00'),
(182, 'total_balance', 'no', '2016-04-23 00:09:41', '0000-00-00 00:00:00'),
(183, 'student_name', 'no', '2016-04-24 02:37:56', '0000-00-00 00:00:00'),
(184, 'fees', 'no', '2016-04-24 02:44:06', '0000-00-00 00:00:00'),
(185, 'rte', 'no', '2016-04-24 04:43:46', '0000-00-00 00:00:00'),
(186, 'gender', 'no', '2016-04-24 13:17:59', '0000-00-00 00:00:00'),
(187, 'teacher_photo', 'no', '2016-04-29 04:56:01', '0000-00-00 00:00:00'),
(188, 'isbn', 'no', '2016-05-02 03:07:51', '0000-00-00 00:00:00'),
(189, 'publisher', 'no', '2016-10-23 08:28:28', '0000-00-00 00:00:00'),
(190, 'author', 'no', '2016-05-02 03:08:19', '0000-00-00 00:00:00'),
(191, 'qty', 'no', '2016-05-02 03:08:19', '0000-00-00 00:00:00'),
(192, 'bookprice', 'no', '2016-10-18 05:11:54', '0000-00-00 00:00:00'),
(193, 'postdate', 'no', '2016-05-02 03:08:38', '0000-00-00 00:00:00'),
(197, 'intake', 'no', '2016-05-05 01:06:45', '0000-00-00 00:00:00'),
(199, 'book_title', 'no', '2016-05-05 04:59:27', '0000-00-00 00:00:00'),
(201, 'no_of_vehicle', 'no', '2016-05-09 23:20:40', '0000-00-00 00:00:00'),
(202, 'fare', 'no', '2016-05-09 23:20:48', '0000-00-00 00:00:00'),
(203, 'content_type', 'no', '2016-05-10 12:24:51', '0000-00-00 00:00:00'),
(205, 'upload_date', 'no', '2016-05-10 12:25:21', '0000-00-00 00:00:00'),
(206, 'expenses', 'no', '2016-05-10 22:14:03', '0000-00-00 00:00:00'),
(207, 'student_information', 'no', '2016-05-10 22:24:31', '0000-00-00 00:00:00'),
(208, 'fees_collection', 'no', '2016-05-10 22:35:29', '0000-00-00 00:00:00'),
(210, 'examinations', 'no', '2016-05-10 23:03:55', '0000-00-00 00:00:00'),
(211, 'academics', 'no', '2016-05-10 23:17:28', '0000-00-00 00:00:00'),
(212, 'download_center', 'no', '2016-05-10 23:17:28', '0000-00-00 00:00:00'),
(214, 'library', 'no', '2016-05-10 23:34:05', '0000-00-00 00:00:00'),
(215, 'system_settings', 'no', '2016-05-10 23:38:32', '0000-00-00 00:00:00'),
(216, 'reports', 'no', '2016-05-10 23:51:38', '0000-00-00 00:00:00'),
(217, 'subject', 'no', '2016-05-13 03:22:44', '0000-00-00 00:00:00'),
(218, 'rack_no', 'no', '2016-05-13 03:22:44', '0000-00-00 00:00:00'),
(220, 'hostel', 'no', '2016-05-13 06:42:27', '0000-00-00 00:00:00'),
(221, 'hostel_name', 'no', '2016-05-13 06:48:07', '0000-00-00 00:00:00'),
(222, 'transport', 'no', '2016-05-13 06:51:25', '0000-00-00 00:00:00'),
(223, 'route_title', 'no', '2016-05-13 06:57:39', '0000-00-00 00:00:00'),
(225, 'date_to', 'no', '2016-05-13 09:36:18', '0000-00-00 00:00:00'),
(227, 'basic_information', 'no', '2016-05-13 09:57:25', '0000-00-00 00:00:00'),
(228, 'add', 'no', '2016-05-13 10:00:46', '0000-00-00 00:00:00'),
(229, 'list', 'no', '2016-05-13 10:03:14', '0000-00-00 00:00:00'),
(230, 'result', 'no', '2016-05-13 10:06:46', '0000-00-00 00:00:00'),
(231, 'pass', 'no', '2016-05-13 10:07:34', '0000-00-00 00:00:00'),
(232, 'fail', 'no', '2016-05-13 10:07:34', '0000-00-00 00:00:00'),
(233, 'continue', 'no', '2016-05-17 14:42:00', '0000-00-00 00:00:00'),
(234, 'leave', 'no', '2016-05-13 10:08:28', '0000-00-00 00:00:00'),
(235, 'exam_list', 'no', '2016-05-17 12:47:56', '0000-00-00 00:00:00'),
(236, 'exam', 'no', '2016-05-17 12:50:35', '0000-00-00 00:00:00'),
(237, 'start_time', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(238, 'end_time', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(239, 'room', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(240, 'full_mark', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(241, 'passing_marks', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(242, 'room_no', 'no', '2016-05-17 13:05:25', '0000-00-00 00:00:00'),
(245, 'promote', 'no', '2016-05-17 14:03:52', '0000-00-00 00:00:00'),
(246, 'content_title', 'no', '2016-05-18 21:50:20', '0000-00-00 00:00:00'),
(251, 'teacher_list', 'no', '2016-05-21 04:29:17', '0000-00-00 00:00:00'),
(252, 'compose_new_message', 'no', '2016-05-25 03:22:49', '0000-00-00 00:00:00'),
(253, 'notice', 'no', '2016-05-25 03:26:56', '0000-00-00 00:00:00'),
(254, 'notice_date', 'no', '2016-05-25 03:27:53', '0000-00-00 00:00:00'),
(255, 'publish_on', 'no', '2016-05-25 03:28:56', '0000-00-00 00:00:00'),
(256, 'message_to', 'no', '2016-05-25 03:30:54', '0000-00-00 00:00:00'),
(257, 'parent', 'no', '2016-05-25 03:33:55', '0000-00-00 00:00:00'),
(258, 'teacher', 'no', '2016-05-25 03:34:21', '0000-00-00 00:00:00'),
(259, 'no_record_found', 'no', '2016-05-25 03:47:21', '0000-00-00 00:00:00'),
(260, 'teacher_detail', 'no', '2016-05-25 05:22:21', '0000-00-00 00:00:00'),
(261, 'subject_list', 'no', '2016-05-25 06:03:17', '0000-00-00 00:00:00'),
(263, 'create_category', 'no', '2016-05-25 11:59:13', '0000-00-00 00:00:00'),
(264, 'title', 'no', '2016-05-26 01:01:44', '0000-00-00 00:00:00'),
(265, 'message', 'no', '2016-05-26 01:02:36', '0000-00-00 00:00:00'),
(266, 'send', 'no', '2016-05-26 01:43:32', '0000-00-00 00:00:00'),
(267, 'previous_school_details', 'no', '2016-05-26 05:53:02', '0000-00-00 00:00:00'),
(268, 'upload_documents', 'no', '2016-05-26 05:54:00', '0000-00-00 00:00:00'),
(270, 'miscellaneous_details', 'no', '2016-05-26 05:58:10', '0000-00-00 00:00:00'),
(272, 'edit_notification', 'no', '2016-05-26 07:22:03', '0000-00-00 00:00:00'),
(273, 'guardian_details', 'no', '2016-05-26 07:36:45', '0000-00-00 00:00:00'),
(274, 'payment_id', 'no', '2016-05-26 07:40:03', '0000-00-00 00:00:00'),
(275, 'change_password', 'no', '2016-05-26 07:45:33', '0000-00-00 00:00:00'),
(278, 'notifications', 'no', '2016-05-30 03:42:06', '0000-00-00 00:00:00'),
(279, 'visible_to_all', 'no', '2016-05-30 04:05:26', '0000-00-00 00:00:00'),
(280, 'visibility', 'no', '2016-05-30 04:06:16', '0000-00-00 00:00:00'),
(284, 'communicate', 'no', '2016-05-30 04:19:53', '0000-00-00 00:00:00'),
(285, 'notice_board', 'no', '2016-05-30 04:21:47', '0000-00-00 00:00:00'),
(286, 'publish_date', 'no', '2016-05-30 05:01:41', '0000-00-00 00:00:00'),
(287, 'father', 'no', '2016-06-01 03:21:38', '0000-00-00 00:00:00'),
(288, 'mother', 'no', '2016-06-01 03:21:47', '0000-00-00 00:00:00'),
(290, 'not_scheduled', 'no', '2016-06-07 13:50:48', '0000-00-00 00:00:00'),
(291, 'import_student', 'no', '2016-06-10 03:56:51', '0000-00-00 00:00:00'),
(292, 'dl_sample_import', 'no', '2016-06-10 04:03:13', '0000-00-00 00:00:00'),
(293, 'select_csv_file', 'no', '2016-06-10 04:10:49', '0000-00-00 00:00:00'),
(294, 'date_format', 'no', '2016-06-22 03:49:07', '0000-00-00 00:00:00'),
(295, 'currency', 'no', '2016-06-22 03:49:28', '0000-00-00 00:00:00'),
(296, 'currency_symbol', 'no', '2016-06-22 03:49:28', '0000-00-00 00:00:00'),
(297, 'profile', 'no', '2016-06-22 18:46:28', '0000-00-00 00:00:00'),
(298, 'save_attendance', 'no', '2016-06-22 18:56:58', '0000-00-00 00:00:00'),
(299, 'full_marks', 'no', '2016-06-24 06:10:24', '0000-00-00 00:00:00'),
(300, 'obtain_marks', 'no', '2016-06-24 06:10:24', '0000-00-00 00:00:00'),
(301, 'total_marks', 'no', '2016-06-24 06:18:37', '0000-00-00 00:00:00'),
(302, 'current', 'no', '2016-07-12 02:26:07', '0000-00-00 00:00:00'),
(303, 'admission', 'no', '2016-07-21 07:40:45', '0000-00-00 00:00:00'),
(305, 'sibling', 'no', '2016-08-07 02:32:13', '0000-00-00 00:00:00'),
(306, 'details', 'no', '2016-08-07 02:39:19', '0000-00-00 00:00:00'),
(309, 'identification', 'no', '2016-08-07 02:43:16', '0000-00-00 00:00:00'),
(310, 'no', 'no', '2016-08-07 02:45:33', '0000-00-00 00:00:00'),
(311, 'delete', 'no', '2016-08-07 03:28:55', '0000-00-00 00:00:00'),
(312, 'documents', 'no', '2016-08-07 03:33:52', '0000-00-00 00:00:00'),
(313, 'payment', 'no', '2016-08-07 03:36:56', '0000-00-00 00:00:00'),
(317, 'no_transaction_found', 'no', '2016-08-10 08:32:10', '0000-00-00 00:00:00'),
(318, 'transport_fees_details', 'no', '2016-08-10 08:35:57', '0000-00-00 00:00:00'),
(319, 'collect_fees', 'no', '2016-08-10 08:45:47', '0000-00-00 00:00:00'),
(320, 'balance_details', 'no', '2016-08-10 08:48:55', '0000-00-00 00:00:00'),
(321, 'download_pdf', 'no', '2016-08-10 09:05:40', '0000-00-00 00:00:00'),
(322, 'student_fees_report', 'no', '2016-08-10 09:23:18', '0000-00-00 00:00:00'),
(323, 'total_fees', 'no', '2016-08-10 09:26:53', '0000-00-00 00:00:00'),
(324, 'paid_fees', 'no', '2016-08-10 09:26:53', '0000-00-00 00:00:00'),
(325, 'student_detail', 'no', '2016-08-10 09:42:55', '0000-00-00 00:00:00'),
(327, 'gross_fees', 'no', '2016-08-10 09:45:26', '0000-00-00 00:00:00'),
(328, 'balance_fees', 'no', '2016-08-10 09:48:31', '0000-00-00 00:00:00'),
(329, 'print_selected', 'no', '2016-08-10 09:50:32', '0000-00-00 00:00:00'),
(330, 'collect_transport_fees', 'no', '2016-08-10 10:03:34', '0000-00-00 00:00:00'),
(331, 'no_transport_fees_found', 'no', '2016-08-10 10:05:30', '0000-00-00 00:00:00'),
(332, 'total_transport_fees', 'no', '2016-08-10 10:15:54', '0000-00-00 00:00:00'),
(333, 'class_section', 'no', '2016-08-10 10:19:24', '0000-00-00 00:00:00'),
(335, 'other_discount', 'no', '2016-08-10 10:38:43', '0000-00-00 00:00:00'),
(336, 'search_transaction', 'no', '2016-10-18 05:19:17', '0000-00-00 00:00:00'),
(337, 'fees_collection_details', 'no', '2016-08-10 10:48:09', '0000-00-00 00:00:00'),
(338, 'expense_id', 'no', '2016-08-10 10:54:24', '0000-00-00 00:00:00'),
(339, 'expense_head', 'no', '2016-08-10 10:51:43', '0000-00-00 00:00:00'),
(340, 'expense_detail', 'no', '2016-08-10 10:55:17', '0000-00-00 00:00:00'),
(341, 'add_expense', 'no', '2016-08-10 11:28:20', '0000-00-00 00:00:00'),
(342, 'edit_expense', 'no', '2016-08-10 11:33:33', '0000-00-00 00:00:00'),
(343, 'expense_list', 'no', '2016-08-10 11:37:48', '0000-00-00 00:00:00'),
(344, 'expense_head_list', 'no', '2016-08-10 11:45:58', '0000-00-00 00:00:00'),
(345, 'edit_expense_head', 'no', '2016-08-10 11:49:02', '0000-00-00 00:00:00'),
(347, 'add_expense_head', 'no', '2016-08-10 11:55:17', '0000-00-00 00:00:00'),
(348, 'attendance_already_submitted_you_can_edit_record', 'no', '2017-04-02 01:16:00', '0000-00-00 00:00:00'),
(349, 'attendance_already_submitted_as_holiday', 'no', '2017-04-02 01:16:00', '0000-00-00 00:00:00'),
(350, 'you_can_edit_record', 'no', '2016-08-10 23:11:54', '0000-00-00 00:00:00'),
(351, 'attendance_saved_successfully', 'no', '2017-04-02 01:16:00', '0000-00-00 00:00:00'),
(352, 'holiday', 'no', '2016-08-10 23:18:21', '0000-00-00 00:00:00'),
(353, 'mark_as_holiday', 'no', '2016-08-10 23:22:15', '0000-00-00 00:00:00'),
(354, 'no_attendance_prepare', 'no', '2016-08-10 23:42:18', '0000-00-00 00:00:00'),
(355, 'add_exam', 'no', '2016-08-11 00:09:04', '0000-00-00 00:00:00'),
(356, 'view_status', 'no', '2016-08-11 00:10:56', '0000-00-00 00:00:00'),
(357, 'marks_register_prepared', 'no', '2016-08-11 00:16:51', '0000-00-00 00:00:00'),
(358, 'exam_scheduled', 'no', '2016-08-11 00:16:51', '0000-00-00 00:00:00'),
(359, 'submit', 'no', '2016-08-11 00:30:47', '0000-00-00 00:00:00'),
(360, 'edit_grade', 'no', '2016-08-11 00:34:55', '0000-00-00 00:00:00'),
(361, 'add_grade', 'no', '2016-08-11 00:34:55', '0000-00-00 00:00:00'),
(362, 'percent_upto', 'no', '2016-08-11 00:36:04', '0000-00-00 00:00:00'),
(363, 'percent_from', 'no', '2016-08-11 00:36:04', '0000-00-00 00:00:00'),
(364, 'grade_list', 'no', '2016-08-11 00:39:49', '0000-00-00 00:00:00'),
(366, 'assign_subject', 'no', '2016-08-11 01:02:21', '0000-00-00 00:00:00'),
(368, 'edit_teacher', 'no', '2016-08-11 01:05:57', '0000-00-00 00:00:00'),
(369, 'add_teacher', 'no', '2016-08-11 01:22:14', '0000-00-00 00:00:00'),
(370, 'add_subject', 'no', '2016-08-11 01:30:48', '0000-00-00 00:00:00'),
(374, 'edit_subject', 'no', '2016-08-11 01:43:33', '0000-00-00 00:00:00'),
(375, 'edit_class', 'no', '2016-08-11 01:43:50', '0000-00-00 00:00:00'),
(377, 'edit_section', 'no', '2016-08-11 01:54:27', '0000-00-00 00:00:00'),
(378, 'upload_content', 'no', '2016-08-11 02:06:54', '0000-00-00 00:00:00'),
(380, 'content_list', 'no', '2016-08-11 02:30:03', '0000-00-00 00:00:00'),
(382, 'available_for_all_classes', 'no', '2016-10-23 07:26:48', '0000-00-00 00:00:00'),
(384, 'content_file', 'no', '2016-08-12 09:09:02', '0000-00-00 00:00:00'),
(385, 'available_for', 'no', '2016-08-12 09:09:02', '0000-00-00 00:00:00'),
(386, 'my_children', 'no', '2016-09-17 01:06:30', '0000-00-00 00:00:00'),
(387, 'assignment_list', 'no', '2016-08-12 09:15:21', '0000-00-00 00:00:00'),
(388, 'study_material_list', 'no', '2016-08-12 09:15:21', '0000-00-00 00:00:00'),
(389, 'syllabus_list', 'no', '2016-08-12 09:15:21', '0000-00-00 00:00:00'),
(390, 'other_download_list', 'no', '2016-08-12 09:15:21', '0000-00-00 00:00:00'),
(391, 'book_details', 'no', '2016-08-12 09:34:18', '0000-00-00 00:00:00'),
(392, 'edit_book', 'no', '2016-08-12 09:34:18', '0000-00-00 00:00:00'),
(393, 'book_list', 'no', '2016-08-12 09:36:33', '0000-00-00 00:00:00'),
(394, 'route_list', 'no', '2016-08-12 09:48:15', '0000-00-00 00:00:00'),
(395, 'create_route', 'no', '2016-08-12 09:48:15', '0000-00-00 00:00:00'),
(396, 'edit_route', 'no', '2016-08-12 09:48:15', '0000-00-00 00:00:00'),
(397, 'add_hostel', 'no', '2016-08-12 10:05:23', '0000-00-00 00:00:00'),
(398, 'edit_hostel', 'no', '2016-08-12 10:05:23', '0000-00-00 00:00:00'),
(399, 'hostel_list', 'no', '2016-08-12 10:05:23', '0000-00-00 00:00:00'),
(400, 'print', 'no', '2016-08-12 10:08:26', '0000-00-00 00:00:00'),
(401, 'room_type', 'no', '2016-08-12 10:13:23', '0000-00-00 00:00:00'),
(402, 'add_room_type', 'no', '2016-08-12 10:13:23', '0000-00-00 00:00:00'),
(403, 'room_type_list', 'no', '2016-08-12 10:13:23', '0000-00-00 00:00:00'),
(404, 'edit_room_type', 'no', '2016-08-12 10:13:23', '0000-00-00 00:00:00'),
(406, 'edit_message', 'no', '2016-08-12 10:28:45', '0000-00-00 00:00:00'),
(407, 'select', 'no', '2016-08-12 10:32:17', '0000-00-00 00:00:00'),
(408, 'general_settings', 'no', '2016-08-12 11:03:50', '0000-00-00 00:00:00'),
(410, 'session_start_month', 'no', '2016-08-12 11:04:48', '0000-00-00 00:00:00'),
(411, 'edit_session', 'no', '2016-08-12 11:17:13', '0000-00-00 00:00:00'),
(414, 'paypal_setting', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(415, 'paypal_username', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(416, 'paypal_password', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(417, 'paypal_signature', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(418, 'paypal_email', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(419, 'off', 'no', '2016-08-12 11:50:43', '0000-00-00 00:00:00'),
(420, 'on', 'no', '2016-08-12 11:50:43', '0000-00-00 00:00:00'),
(421, 'backup_history', 'no', '2016-08-12 11:59:15', '0000-00-00 00:00:00'),
(422, 'create_backup', 'no', '2016-08-12 11:59:15', '0000-00-00 00:00:00'),
(423, 'backup_files', 'no', '2016-10-25 15:47:36', '0000-00-00 00:00:00'),
(424, 'upload_from_local_directory', 'no', '2016-08-12 12:03:51', '0000-00-00 00:00:00'),
(427, 'restore', 'no', '2016-08-12 17:04:46', '0000-00-00 00:00:00'),
(429, 'class_fees_detail', 'no', '2016-08-12 17:37:20', '0000-00-00 00:00:00'),
(430, 'no_fees_found', 'no', '2016-08-12 17:38:56', '0000-00-00 00:00:00'),
(431, 'monthly_fees_collection', 'no', '2016-08-12 17:43:22', '0000-00-00 00:00:00'),
(432, 'monthly_expenses', 'no', '2016-08-12 17:43:22', '0000-00-00 00:00:00'),
(433, 'teachers', 'no', '2016-08-12 17:43:22', '0000-00-00 00:00:00'),
(434, 'students', 'no', '2016-08-12 17:43:22', '0000-00-00 00:00:00'),
(436, 'login_details', 'no', '2016-08-12 17:57:20', '0000-00-00 00:00:00'),
(437, 'academic_fees_detail', 'no', '2016-08-12 18:33:38', '0000-00-00 00:00:00'),
(438, 'document_list', 'no', '2016-08-12 18:42:01', '0000-00-00 00:00:00'),
(439, 'exam_timetable', 'no', '2016-08-12 19:00:36', '0000-00-00 00:00:00'),
(440, 'promote_in_session', 'no', '2016-08-12 19:51:51', '0000-00-00 00:00:00'),
(441, 'promote_students_in_next_session', 'no', '2016-08-12 19:51:51', '0000-00-00 00:00:00'),
(442, 'next_session_status', 'no', '2016-08-12 19:55:11', '0000-00-00 00:00:00'),
(443, 'no_result_prepare', 'no', '2016-08-12 12:26:40', '0000-00-00 00:00:00'),
(444, 'parent_guardian_detail', 'no', '2016-08-12 12:59:14', '0000-00-00 00:00:00'),
(445, 'add_more_details', 'no', '2016-08-12 13:01:21', '0000-00-00 00:00:00'),
(446, 'if_permanent_address_is_current_address', 'no', '2016-10-05 16:58:39', '0000-00-00 00:00:00'),
(447, 'address_details', 'no', '2016-08-12 13:07:38', '0000-00-00 00:00:00'),
(449, 'add_image', 'no', '2016-08-12 13:25:27', '0000-00-00 00:00:00'),
(450, 'payment_id_detail', 'no', '2016-08-12 13:33:44', '0000-00-00 00:00:00'),
(451, 'section_name', 'no', '2016-08-12 14:03:59', '0000-00-00 00:00:00'),
(452, 'fees_type', 'no', '2016-08-12 14:32:20', '0000-00-00 00:00:00'),
(453, 'edit_hostel_room', 'no', '2016-08-16 07:07:57', '0000-00-00 00:00:00'),
(454, 'room_no_name', 'no', '2016-08-16 07:11:43', '0000-00-00 00:00:00'),
(455, 'no_of_bed', 'no', '2016-08-16 07:11:43', '0000-00-00 00:00:00'),
(456, 'cost_per_bed', 'no', '2016-08-16 07:11:43', '0000-00-00 00:00:00'),
(457, 'hostel_room_list', 'no', '2016-08-16 07:11:43', '0000-00-00 00:00:00'),
(458, 'add_hostel_room', 'no', '2016-08-16 07:16:48', '0000-00-00 00:00:00'),
(459, 'mark_register', 'no', '2016-08-16 07:21:56', '0000-00-00 00:00:00'),
(462, 'fill_mark', 'no', '2016-08-16 07:32:20', '0000-00-00 00:00:00'),
(463, 'post_new_message', 'no', '2016-08-16 07:35:16', '0000-00-00 00:00:00'),
(464, 'by_date', 'no', '2016-08-16 07:41:44', '0000-00-00 00:00:00'),
(465, 'edit_category', 'no', '2016-08-16 07:50:25', '0000-00-00 00:00:00'),
(466, 'exam_not_allotted', 'no', '2016-10-23 07:23:46', '0000-00-00 00:00:00'),
(467, 'edit_exam', 'no', '2016-08-16 08:01:50', '0000-00-00 00:00:00'),
(468, 'add_class', 'no', '2016-08-16 08:06:27', '0000-00-00 00:00:00'),
(469, 'teacher_subject', 'no', '2016-08-16 09:48:06', '0000-00-00 00:00:00'),
(470, 'dd', 'no', '2016-08-16 23:05:12', '0000-00-00 00:00:00'),
(471, 'cash', 'no', '2016-08-16 23:05:12', '0000-00-00 00:00:00'),
(472, 'cheque', 'no', '2016-08-16 23:05:12', '0000-00-00 00:00:00'),
(473, 'revert', 'no', '2016-08-16 23:40:47', '0000-00-00 00:00:00'),
(474, 'view', 'no', '2016-08-17 01:16:56', '0000-00-00 00:00:00'),
(475, 'no_exam_prepare', 'no', '2016-10-23 08:00:25', '0000-00-00 00:00:00'),
(476, 'sms_setting', 'no', '2016-08-22 08:45:46', '0000-00-00 00:00:00'),
(477, 'smart_school', 'no', '2016-08-24 23:41:16', '0000-00-00 00:00:00'),
(478, 'user_login', 'no', '2016-08-25 00:16:22', '0000-00-00 00:00:00'),
(479, 'library_book', 'no', '2016-09-06 19:10:41', '0000-00-00 00:00:00'),
(480, 'transport_routes', 'no', '2016-09-06 19:14:00', '0000-00-00 00:00:00'),
(481, 'hostel_rooms', 'no', '2016-09-06 19:17:22', '0000-00-00 00:00:00'),
(482, 'exam_schedule', 'no', '2016-09-06 19:27:03', '0000-00-00 00:00:00'),
(483, 'subjects', 'no', '2016-09-06 19:35:20', '0000-00-00 00:00:00'),
(484, 'national_identification_no', 'no', '2016-09-15 04:00:04', '0000-00-00 00:00:00'),
(485, 'local_identification_no', 'no', '2016-09-15 04:01:16', '0000-00-00 00:00:00'),
(486, 'my_profile', 'no', '2016-09-15 08:44:58', '0000-00-00 00:00:00'),
(487, 'mode', 'no', '2016-09-15 08:47:39', '0000-00-00 00:00:00'),
(488, 'url', 'no', '2016-09-15 11:24:06', '0000-00-00 00:00:00'),
(489, 'month', 'no', '2016-09-15 11:37:30', '0000-00-00 00:00:00'),
(490, 'upload', 'no', '2016-09-15 11:46:34', '0000-00-00 00:00:00'),
(491, 'day', 'no', '2016-10-24 00:02:31', '0000-00-00 00:00:00'),
(492, 'class_timetable', 'no', '2016-10-05 16:40:38', '0000-00-00 00:00:00'),
(493, 'if_guardian_address_is_current_address', 'no', '2016-10-07 17:12:51', '0000-00-00 00:00:00'),
(494, 'admin_login', 'no', '2016-10-17 21:08:26', '0000-00-00 00:00:00'),
(495, 'date_from', 'no', '2016-10-19 06:07:28', '0000-00-00 00:00:00'),
(496, 'other', 'no', '2016-10-25 15:01:08', '0000-00-00 00:00:00'),
(497, 'search_by_keyword', 'no', '2016-10-25 15:55:46', '0000-00-00 00:00:00'),
(499, 'add_book', 'no', '2016-10-31 11:52:54', '0000-00-00 00:00:00'),
(500, 'edit_vehicle_on_route', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(501, 'assign_vehicle_on_route', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(502, 'vehicle_route_list', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(503, 'route', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(504, 'vehicle_routes', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(505, 'edit_vehicle', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(506, 'vehicle', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(507, 'vehicle_list', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(508, 'add_vehicle', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(509, 'driver_contact', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(510, 'driver_license', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(511, 'driver_name', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(512, 'vehicle_no', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(513, 'vehicle_model', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(514, 'logout', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(515, 'year_made', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(516, 'attendance', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(517, 'show', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(519, 'add_timetable', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(520, 'edit_setting', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(521, 'subject_type', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(522, 'view_detail', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(523, 'exam_status', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(524, 'books', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(525, 'report_card', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(526, 'library_books', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(527, 'no_vehicle_allotted_to_this_route', 'no', '2017-04-02 01:16:00', '0000-00-00 00:00:00'),
(528, 'Add/Edit', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(529, 'language_rtl_text_mode', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(530, 'clickatell_username', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(531, 'clickatell_password', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(532, 'clickatell_api_id', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(533, 'clickatell_sms_gateway', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(534, 'twilio_sms_gateway', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(535, 'custom_sms_gateway', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(536, 'twilio_account_sid', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(537, 'authentication_token', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(538, 'registered_phone_number', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(539, 'username', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(540, 'gateway_name', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(541, 'theory', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(542, 'practical', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(543, 'present', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(544, 'paid', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(545, 'yes', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(546, 'if_guardian_is', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(547, 'current_session', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(548, 'quick_links', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(549, 'student_details', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(550, 'student_admission', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(551, 'student_categories', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(552, 'promote_students', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(554, 'fees_master', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(555, 'search_fees_payment', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(556, 'search_due_fees', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(557, 'fees_statement', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(558, 'balance_fees_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(559, 'search_expense', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(560, 'student_attendance', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(561, 'attendance_by_date', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(562, 'attendance_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(563, 'marks_register', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(564, 'marks_grade', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(565, 'assign_subjects', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(566, 'sections', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(567, 'assignments', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(568, 'study_material', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(569, 'routes', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(570, 'vehicles', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(571, 'assign_vehicle', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(572, 'send_message', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(573, 'student_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(574, 'transaction_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(575, 'exam_marks_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(576, 'session_setting', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(577, 'backup / restore', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(578, 'languages', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(579, 'grade', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(580, 'percentage', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(581, 'fees_collection_&_expenses_for_session', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(582, 'fees_receipt', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(583, 'fees_category', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(584, 'fees_collection_&_expenses_for', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(585, 'library_-_books', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(586, 'transport_-_routes', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(587, 'hostel_-_rooms', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(588, 'search_by_name,_roll_no,_enroll_no,_national_identification_no,_local_identification_no_etc..', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(589, 'user_type', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(590, 'login_url', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(591, 'search_student', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(592, 'student_lists', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(593, 'detailed_view', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(595, 'active', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(596, 'syllabus', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(597, 'other_downloads', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(598, 'download', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(599, 'unpaid', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(600, 'enter_room_no', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(601, 'male', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(602, 'female', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(603, 'expense_result', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(604, 'view_schedule', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(605, 'pdf', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(606, 'not', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(607, 'scheduled', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(609, 'transaction_from', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(610, 'to', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(611, 'enabled', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(612, 'disabled', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(613, 'add_language', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(614, 'no_description', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(615, 'fees_category_list', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(616, 'add_fee_category', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(617, 'edit_fee_category', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(618, 'late_with_excuse', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(619, 'late', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(620, 'absent', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(621, 'issue_book', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(622, 'member_type', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(623, 'issue', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(624, 'book', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(625, 'members', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(626, 'library_card_no', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(627, 'return_date', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(628, 'member_id', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(629, 'book_issued', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(630, 'timezone', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(631, 'accountants', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(632, 'librarians', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(633, 'add_librarian', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(634, 'librarian_photo', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(635, 'librarian_list', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(636, 'edit_librarian', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(637, 'current_username', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(638, 'new_username', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(639, 'confirm_username', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(640, 'change_username', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(641, 'add_accountant', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(642, 'accountant_list', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(643, 'accountant_photo', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(644, 'edit_accountant', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(645, 'book_no', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(646, 'users', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(647, 'isbn_no', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(648, 'issue_return', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(649, 'add_student', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(650, 'books_issue_return', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(651, 'member_list', 'no', '2017-05-29 18:11:22', '0000-00-00 00:00:00'),
(652, 'issue_date', 'no', '2017-05-29 18:11:22', '0000-00-00 00:00:00'),
(653, 'surrender_membership', 'no', '2017-05-29 18:11:22', '0000-00-00 00:00:00'),
(654, 'fees_group', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(655, 'add_fees_group', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(656, 'fees_group_list', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(657, 'due_date', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(658, 'fees_code', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(659, 'fees_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(660, 'edit_fees_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(661, 'discount_code', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(662, 'fees_discount_list', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(663, 'add_fees_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(664, 'all', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(665, 'assign_fees_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(666, 'partial', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(667, 'applied', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(668, 'student_fees', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(669, 'confirmation', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(670, 'assign / view', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(671, 'edit_fees_group', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(672, 'edit_fees_type', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(673, 'edit_fees_master', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(674, 'apply_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(675, 'discount_of', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(676, 'add_member', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(677, 'email_setting', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(678, 'email_engine', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(679, 'smtp_username', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(680, 'smtp_password', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(681, 'smtp_server', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(682, 'smtp_port', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(683, 'smtp_security', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(684, 'assigned', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(685, 'admin_users', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(686, 'add_admin_user', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(687, 'admin_name', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(688, 'admin_email', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(689, 'admin_password', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(690, 'forgot_password', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(691, 'assign_fees_group', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lang_pharses`
--

CREATE TABLE IF NOT EXISTS `lang_pharses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) DEFAULT NULL,
  `key_id` int(11) DEFAULT NULL,
  `pharses` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `text` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `lang_id` (`lang_id`),
  KEY `key_id` (`key_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=74022 ;

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
(1006, 4, 468, 'Add Class', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
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
(1022, 4, 57, 'Add Section', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
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
(1079, 4, 9, 'Class', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1080, 4, 429, 'Class Fees Detail', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1081, 4, 54, 'Class List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1082, 4, 333, 'Class Section', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1083, 4, 492, 'Class Timetable', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1084, 4, 116, 'Classes', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
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
(1139, 4, 375, 'Edit Class', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
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
(1152, 4, 377, 'Edit Section', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
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
(1393, 4, 10, 'Section', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1394, 4, 56, 'Section List', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1395, 4, 451, 'Section Name', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
(1396, 4, 566, 'Sections', NULL, 'no', '2017-04-06 16:18:39', '0000-00-00 00:00:00'),
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
-- Table structure for table `libarary_members`
--

CREATE TABLE IF NOT EXISTS `libarary_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `librarians`
--

CREATE TABLE IF NOT EXISTS `librarians` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
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

CREATE TABLE IF NOT EXISTS `payment_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_signature` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_demo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `api_username`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'xxxxxx', 'xxxxxx', 'xxxxxx`', 'xxxxxx', '', 'no', '2016-10-19 08:26:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `read_notification`
--

CREATE TABLE IF NOT EXISTS `read_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) NOT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE IF NOT EXISTS `room_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `route_vehicles`
--

CREATE TABLE IF NOT EXISTS `route_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sch_settings`
--

CREATE TABLE IF NOT EXISTS `sch_settings` (
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `lang_id` (`lang_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sch_settings`
--

INSERT INTO `sch_settings` (`id`, `name`, `email`, `phone`, `address`, `lang_id`, `dise_code`, `date_format`, `currency`, `currency_symbol`, `is_rtl`, `timezone`, `session_id`, `start_month`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Markaz Imam Ahmad', 'support@blufour.com', '(02) 8712 9219', '230 Macquarie St, Liverpool, NSW 2170', 1, 'MIA', 'd-m-Y', 'AUD', '$', 'disabled', 'UTC', 11, '1', 'images.png', 'no', '2017-10-09 12:31:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 'Morning Batch', 'no', '2017-03-18 19:22:01', '0000-00-00 00:00:00'),
(17, 'Evening Batch', 'no', '2017-03-18 19:22:09', '0000-00-00 00:00:00'),
(27, 'Boys', 'no', '2017-03-18 19:30:03', '0000-00-00 00:00:00'),
(47, 'Girls', 'no', '2017-03-18 19:30:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `send_notification`
--

CREATE TABLE IF NOT EXISTS `send_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `send_notification`
--

INSERT INTO `send_notification` (`id`, `title`, `publish_date`, `date`, `message`, `visible_student`, `visible_teacher`, `visible_parent`, `created_by`, `created_id`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 'School Closed for Ramadan', '2017-05-14', '2017-05-14', '<p>School will be closed from 25 May to 25 June</p>', 'Yes', 'Yes', 'Yes', 'admin', 1, 'no', '2017-05-16 05:31:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES
(7, '2015-16', 'no', '2016-08-24 14:51:28', '0000-00-00 00:00:00'),
(11, '2016-17', 'no', '2016-08-24 14:56:19', '0000-00-00 00:00:00'),
(12, '2017-18', 'yes', '2017-10-09 02:39:44', '0000-00-00 00:00:00'),
(13, '2018-19', 'no', '2016-08-24 14:56:44', '0000-00-00 00:00:00'),
(14, '2019-20', 'no', '2016-08-24 14:56:55', '0000-00-00 00:00:00'),
(15, '2020-21', 'no', '2016-10-01 00:58:08', '0000-00-00 00:00:00'),
(16, '2021-22', 'no', '2016-10-01 00:58:20', '0000-00-00 00:00:00'),
(18, '2022-23', 'no', '2016-10-01 00:59:02', '0000-00-00 00:00:00'),
(19, '2023-24', 'no', '2016-10-01 00:59:10', '0000-00-00 00:00:00'),
(20, '2024-25', 'no', '2016-10-01 00:59:18', '0000-00-00 00:00:00'),
(21, '2025-26', 'no', '2016-10-01 01:00:10', '0000-00-00 00:00:00'),
(22, '2026-27', 'no', '2016-10-01 01:00:18', '0000-00-00 00:00:00'),
(23, '2027-28', 'no', '2016-10-01 01:00:24', '0000-00-00 00:00:00'),
(24, '2028-29', 'no', '2016-10-01 01:00:30', '0000-00-00 00:00:00'),
(25, '2029-30', 'no', '2016-10-01 01:00:37', '0000-00-00 00:00:00'),
(27, 'Term 1 2017', 'no', '2017-03-18 23:28:07', '0000-00-00 00:00:00'),
(37, 'Term 2 2017', 'no', '2017-03-18 23:28:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE IF NOT EXISTS `sms_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `api_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact` text COLLATE utf8_unicode_ci,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sms_config`
--

INSERT INTO `sms_config` (`id`, `type`, `name`, `api_id`, `contact`, `username`, `url`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(7, '', '', '', NULL, 'admin@afqs.com', 'http://pragmaticmarketing.com/AgilityRedirector.ht', 'password123', 'enabled', '2017-05-16 02:18:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=98 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES
(7, 1, '101656', '101', '2017-03-19', 'Mohammed', 'Salaam', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2017-02-26', 'Male', '', '', '7', '', '', NULL, NULL, NULL, 'father', 'Mohammed', '12345678', '', 'Fatima', '12345678', '', 'Mohammed', 'Father', '12345678', '', '', 'no', '', '2017-05-04 13:13:39', '0000-00-00 00:00:00'),
(17, 1, '10011', '1', '2017-03-19', 'Manal', 'Massri', 'No', 'uploads/student_images/no_image.png', '', 'manal@ictechnology.com.au', NULL, NULL, NULL, '', '', '1984-01-01', 'Female', '', '', '7', '', '', '', '', '', 'mother', 'Aref', '', '', 'Halima', '', '', 'Halima', 'Mother', '04031494707', '', '', 'no', '', '2017-05-04 06:29:59', '0000-00-00 00:00:00'),
(18, 3, '34684894', '141', '2017-04-26', 'krishanuu', 'Dass', 'No', 'uploads/student_images/18.jpg', '98489484', 'krishanu@technoexponent.com', NULL, NULL, NULL, '', '', '1988-06-14', 'Male', 'test address\r\ntest address2', 'test address\r\ntest address2', '', '', '', '', '', '', 'father', 'DAD', '987897984', 'govt', 'Mom', '3132155456', 'hw', 'DAD', 'Father', '987897984', 'govt', 'test address\r\ntest address2', 'no', '', '2017-04-28 14:03:48', '0000-00-00 00:00:00'),
(19, 2, '', '', '2017-04-26', 'saibal', 'roy', 'No', 'uploads/student_images/no_image.png', '', 'saibal@technoexponent.com', NULL, NULL, NULL, '', '', '1989-11-23', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-04-28 14:03:58', '0000-00-00 00:00:00'),
(20, 1, '9898811', '120', '2017-04-26', 'Sabeena', 'khatun', 'No', 'uploads/student_images/no_image.png', '', 'sabeena@test.com', NULL, NULL, NULL, '', '', '2000-02-01', 'Female', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-04-28 14:04:07', '0000-00-00 00:00:00'),
(21, 3, '', '', '2017-05-02', 'krish', 'Das', 'No', 'uploads/student_images/no_image.png', '', 'krishanu@technoexponent.com', NULL, NULL, NULL, '', '', '2017-05-30', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-02 11:30:26', '0000-00-00 00:00:00'),
(22, 3, '', '', '2017-05-02', 'saibb', 'roy', 'No', 'uploads/student_images/no_image.png', '', 'saibal@technoexponent.com', NULL, NULL, NULL, '', '', '1999-01-04', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-02 11:38:18', '0000-00-00 00:00:00'),
(23, 3, '9898811', '222', '2017-05-02', 'Pritam', 'Das', 'No', 'uploads/student_images/no_image.png', '', 'saibal@technoexponent.com', NULL, NULL, NULL, '', '', '1999-05-18', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-02 11:45:23', '0000-00-00 00:00:00'),
(24, 4, '', '', '2017-05-04', 'Abcd', 'Efgh', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2017-05-01', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-04 07:09:59', '0000-00-00 00:00:00'),
(25, 4, '', '', '2017-05-04', '1234', '56789', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2017-05-01', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-04 07:10:31', '0000-00-00 00:00:00'),
(26, 4, '561515', '', '2017-05-04', 'ss', 'Das', 'No', 'uploads/student_images/26.png', '', 'aas@technoexponent.com', NULL, NULL, NULL, '', '', '2008-12-29', 'Male', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-15 14:36:07', '0000-00-00 00:00:00'),
(27, 4, '88898', '898989', '2017-05-15', 'Hameedha', 'Z', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2017-05-02', 'Female', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-15 13:06:53', '0000-00-00 00:00:00'),
(37, 4, 'S6676', '', '2017-05-14', 'Hammed', 'A', 'No', 'uploads/student_images/no_image.png', '+61415327515', 'safade.billy@gmail.com', NULL, NULL, NULL, '123', '123', '2017-04-30', 'Male', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-15 13:08:42', '0000-00-00 00:00:00'),
(47, 4, 'U88898', '8989', '2017-05-15', 'Fat', 'Sa', 'No', 'uploads/student_images/no_image.png', '12321', '23', NULL, NULL, NULL, '123', '123', '2017-05-01', 'Female', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-15 14:34:27', '0000-00-00 00:00:00'),
(57, 7, 'S1001', '10', '2017-05-15', 'Ahmed', 'S', 'No', 'uploads/student_images/no_image.png', '+61415327551', 'mukthar.shiek@gmail.com', NULL, NULL, NULL, 'Public School', '2', '2017-05-02', 'Male', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-16 07:56:50', '0000-00-00 00:00:00'),
(67, 17, 'S10001', '1', '2017-05-16', 'Abdul', 'Malik', 'No', 'uploads/student_images/no_image.png', '', 'abdulmalik@mia.com.au', NULL, NULL, NULL, 'Bass Hill Public School', '3', '2017-05-01', 'Male', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-16 10:40:16', '0000-00-00 00:00:00'),
(77, 17, 'R99903', '8999', '2017-05-16', 'Abdul', 'Hammed', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, 'Bass Hill Public School', '5', '2017-04-30', 'Male', '', '', '17', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-16 10:41:27', '0000-00-00 00:00:00'),
(87, 17, 'H6778', '78', '2017-05-16', 'Zainab', 'R', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, 'Bass Hill Public School', '4', '2017-04-30', 'Female', '', '', '27', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-10-09 12:04:23', '0000-00-00 00:00:00'),
(97, 0, '3213213', '', '2017-10-09', 'testing', 'testing', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '1990-01-16', 'Male', '', '', '47', '', '', '', '', '', 'father', 'sss', '', '', 'sss', '', '', 'sss', 'Father', '123123213213213', '', '', 'yes', '', '2017-10-09 12:00:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students_old`
--

CREATE TABLE IF NOT EXISTS `students_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `student_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=88 ;

--
-- Dumping data for table `students_old`
--

INSERT INTO `students_old` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `is_active`, `previous_school`, `created_at`, `updated_at`, `student_parent_id`) VALUES
(7, '101656', '101', '2017-03-19', 'Mohammed', 'Salaam', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2017-02-26', 'Male', '', '', '7', '', '', NULL, NULL, NULL, 'father', 'Mohammed', '12345678', '', 'Fatima', '12345678', '', 'Mohammed', 'Father', '12345678', '', '', 'yes', '', '2017-10-09 11:28:15', '0000-00-00 00:00:00', 1),
(17, '10011', '1', '2017-03-19', 'Manal', 'Massri', 'No', 'uploads/student_images/no_image.png', '', 'manal@ictechnology.com.au', NULL, NULL, NULL, '', '', '1984-01-01', 'Female', '', '', '7', '', '', '', '', '', 'mother', 'Aref', '', '', 'Halima', '', '', 'Halima', 'Mother', '04031494707', '', '', 'no', '', '2017-05-04 00:59:59', '0000-00-00 00:00:00', 1),
(18, '34684894', '141', '2017-04-26', 'krishanuu', 'Dass', 'No', 'uploads/student_images/18.jpg', '98489484', 'krishanu@technoexponent.com', NULL, NULL, NULL, '', '', '1988-06-14', 'Male', 'test address\r\ntest address2', 'test address\r\ntest address2', '', '', '', '', '', '', 'father', 'DAD', '987897984', 'govt', 'Mom', '3132155456', 'hw', 'DAD', 'Father', '987897984', 'govt', 'test address\r\ntest address2', 'no', '', '2017-04-28 08:33:48', '0000-00-00 00:00:00', 3),
(19, '', '', '2017-04-26', 'saibal', 'roy', 'No', 'uploads/student_images/no_image.png', '', 'saibal@technoexponent.com', NULL, NULL, NULL, '', '', '1989-11-23', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-04-28 08:33:58', '0000-00-00 00:00:00', 2),
(20, '9898811', '120', '2017-04-26', 'Sabeena', 'khatun', 'No', 'uploads/student_images/no_image.png', '', 'sabeena@test.com', NULL, NULL, NULL, '', '', '2000-02-01', 'Female', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-04-28 08:34:07', '0000-00-00 00:00:00', 1),
(21, '', '', '2017-05-02', 'krish', 'Das', 'No', 'uploads/student_images/no_image.png', '', 'krishanu@technoexponent.com', NULL, NULL, NULL, '', '', '2017-05-30', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-02 06:00:26', '0000-00-00 00:00:00', 3),
(22, '', '', '2017-05-02', 'saibb', 'roy', 'No', 'uploads/student_images/no_image.png', '', 'saibal@technoexponent.com', NULL, NULL, NULL, '', '', '1999-01-04', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-02 06:08:18', '0000-00-00 00:00:00', 3),
(23, '9898811', '222', '2017-05-02', 'Pritam', 'Das', 'No', 'uploads/student_images/no_image.png', '', 'saibal@technoexponent.com', NULL, NULL, NULL, '', '', '1999-05-18', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-02 06:15:23', '0000-00-00 00:00:00', 3),
(24, '', '', '2017-05-04', 'Abcd', 'Efgh', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2017-05-01', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-04 01:39:59', '0000-00-00 00:00:00', 4),
(25, '', '', '2017-05-04', '1234', '56789', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2017-05-01', 'Male', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-04 01:40:31', '0000-00-00 00:00:00', 4),
(26, '561515', '', '2017-05-04', 'ss', 'Das', 'No', 'uploads/student_images/26.png', '', 'aas@technoexponent.com', NULL, NULL, NULL, '', '', '2008-12-29', 'Male', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-15 09:06:07', '0000-00-00 00:00:00', 4),
(27, '88898', '898989', '2017-05-15', 'Hameedha', 'Z', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2017-05-02', 'Female', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'no', '', '2017-05-15 07:36:53', '0000-00-00 00:00:00', 4),
(37, 'S6676', '', '2017-05-14', 'Hammed', 'A', 'No', 'uploads/student_images/no_image.png', '+61415327515', 'safade.billy@gmail.com', NULL, NULL, NULL, '123', '123', '2017-04-30', 'Male', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-15 07:38:42', '0000-00-00 00:00:00', 4),
(47, 'U88898', '8989', '2017-05-15', 'Fat', 'Sa', 'No', 'uploads/student_images/no_image.png', '12321', '23', NULL, NULL, NULL, '123', '123', '2017-05-01', 'Female', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-15 09:04:27', '0000-00-00 00:00:00', 4),
(57, 'S1001', '10', '2017-05-15', 'Ahmed', 'S', 'No', 'uploads/student_images/no_image.png', '+61415327551', 'mukthar.shiek@gmail.com', NULL, NULL, NULL, 'Public School', '2', '2017-05-02', 'Male', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-16 02:26:50', '0000-00-00 00:00:00', 7),
(67, 'S10001', '1', '2017-05-16', 'Abdul', 'Malik', 'No', 'uploads/student_images/no_image.png', '', 'abdulmalik@mia.com.au', NULL, NULL, NULL, 'Bass Hill Public School', '3', '2017-05-01', 'Male', '', '', '7', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-16 05:10:16', '0000-00-00 00:00:00', 17),
(77, 'R99903', '8999', '2017-05-16', 'Abdul', 'Hammed', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, 'Bass Hill Public School', '5', '2017-04-30', 'Male', '', '', '17', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-16 05:11:27', '0000-00-00 00:00:00', 17),
(87, 'H6778', '78', '2017-05-16', 'Zainab', 'R', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, 'Bass Hill Public School', '4', '2017-04-30', 'Female', '', '', '27', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'yes', '', '2017-05-16 05:12:04', '0000-00-00 00:00:00', 17);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendences`
--

CREATE TABLE IF NOT EXISTS `student_attendences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `attendence_type_id` (`attendence_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=198 ;

--
-- Dumping data for table `student_attendences`
--

INSERT INTO `student_attendences` (`id`, `student_session_id`, `date`, `attendence_type_id`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 17, '2017-03-19', 1, 'no', '2017-03-18 21:58:08', '0000-00-00 00:00:00'),
(17, 29, '2017-05-14', 4, 'no', '2017-05-15 09:07:15', '0000-00-00 00:00:00'),
(27, 30, '2017-05-14', 4, 'no', '2017-05-15 09:07:15', '0000-00-00 00:00:00'),
(37, 33, '2017-05-14', 2, 'no', '2017-05-15 09:07:15', '0000-00-00 00:00:00'),
(47, 35, '2017-05-14', 1, 'no', '2017-05-15 09:07:15', '0000-00-00 00:00:00'),
(57, 36, '2017-05-14', 1, 'no', '2017-05-15 09:07:15', '0000-00-00 00:00:00'),
(67, 37, '2017-05-14', 1, 'no', '2017-05-15 09:07:15', '0000-00-00 00:00:00'),
(77, 29, '2017-05-15', 1, 'no', '2017-05-15 09:07:24', '0000-00-00 00:00:00'),
(87, 30, '2017-05-15', 3, 'no', '2017-05-15 09:07:24', '0000-00-00 00:00:00'),
(97, 33, '2017-05-15', 1, 'no', '2017-05-15 09:07:24', '0000-00-00 00:00:00'),
(107, 35, '2017-05-15', 5, 'no', '2017-05-15 09:07:24', '0000-00-00 00:00:00'),
(117, 36, '2017-05-15', 1, 'no', '2017-05-15 09:07:24', '0000-00-00 00:00:00'),
(127, 37, '2017-05-15', 1, 'no', '2017-05-15 09:07:24', '0000-00-00 00:00:00'),
(137, 27, '2017-05-15', 4, 'no', '2017-05-15 09:08:32', '0000-00-00 00:00:00'),
(147, 29, '2017-05-16', 1, 'no', '2017-05-16 05:28:52', '0000-00-00 00:00:00'),
(157, 30, '2017-05-16', 1, 'no', '2017-05-16 05:28:52', '0000-00-00 00:00:00'),
(167, 33, '2017-05-16', 2, 'no', '2017-05-16 05:28:52', '0000-00-00 00:00:00'),
(177, 35, '2017-05-16', 1, 'no', '2017-05-16 05:28:52', '0000-00-00 00:00:00'),
(187, 36, '2017-05-16', 4, 'no', '2017-05-16 05:28:52', '0000-00-00 00:00:00'),
(197, 37, '2017-05-16', 3, 'no', '2017-05-16 05:28:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_doc`
--

CREATE TABLE IF NOT EXISTS `student_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE IF NOT EXISTS `student_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `student_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_deposite`
--

CREATE TABLE IF NOT EXISTS `student_fees_deposite` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `amount_detail` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_discounts`
--

CREATE TABLE IF NOT EXISTS `student_fees_discounts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_master`
--

CREATE TABLE IF NOT EXISTS `student_fees_master` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_parent`
--

CREATE TABLE IF NOT EXISTS `student_parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `student_parent`
--

INSERT INTO `student_parent` (`id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_email`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 'father', 'Thomas', '987897984', 'Business', 'Rosley', '3132155456', 'private', 'Thomas', NULL, 'Father', '987897984', 'Business', 'Arab\r\ntest address2', 'yes', '2017-04-28 07:48:46', '0000-00-00 00:00:00'),
(2, NULL, NULL, NULL, NULL, NULL, 'father', 'Kkkk', '767', 'Hgh', 'Hh', '66', 'Gh', 'Kkkk', NULL, 'Father', '767', 'Hgh', '', 'yes', '2017-04-27 14:25:30', '0000-00-00 00:00:00'),
(3, NULL, NULL, NULL, NULL, NULL, 'father', 'Abdul Khan', '987897984', 'govt employee', 'Arfa khan', '3132155456', 'house wife', 'Abdul Khan', NULL, 'Father', '987897984', 'govt employee', 'India', 'yes', '2017-04-28 14:01:06', '0000-00-00 00:00:00'),
(4, NULL, NULL, NULL, NULL, NULL, 'father', 'Rahul', '9804881521', 'govt employee', 'Simran', '9789787875', 'house wife', 'Rahul', 'santu@technoexponent.com', 'Father', '9804881521', 'govt employee', 'abc test..', 'yes', '2017-05-05 12:49:56', '0000-00-00 00:00:00'),
(7, NULL, NULL, NULL, NULL, NULL, 'mother', 'Abdul Gani', '+61415327551', 'Contractor', 'Mrs Gani', '+61415327551', 'Homemaker', 'Mrs Gani', 'mukthar.shiek@gmail.com', 'Mother', '+61415327551', 'Homemaker', '123 Market St, Condell Park, NSW 2200', 'yes', '2017-05-16 07:36:23', '0000-00-00 00:00:00'),
(17, NULL, NULL, NULL, NULL, NULL, 'mother', 'Mohammed K', '+61415327551', 'Contractor', 'Mrs Mohammed', '+61415327551', 'Homemaker', 'Mrs Mohammed', 'mukthar.shiek@gmail.com', 'Mother', '+61415327551', 'Homemaker', '709 Newberry Lane', 'yes', '2017-05-16 10:34:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_parent_fees`
--

CREATE TABLE IF NOT EXISTS `student_parent_fees` (
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

--
-- Dumping data for table `student_parent_fees`
--

INSERT INTO `student_parent_fees` (`id`, `student_parent_id`, `amount`, `amount_discount`, `amount_fine`, `final_amount`, `description`, `date`, `month`, `year`, `payment_mode`, `created_at`, `updated_at`) VALUES
(127, 1, 290.00, -30.00, 0.00, 320.00, NULL, 1494931586, 5, 2017, '', '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(137, 2, 200.00, 0.00, 0.00, 200.00, NULL, 1494931586, 5, 2017, '', '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(147, 3, 590.00, -20.00, 0.00, 610.00, NULL, 1494931586, 5, 2017, '', '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(157, 4, 600.00, 0.00, 0.00, 600.00, NULL, 1494931586, 5, 2017, '', '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(167, 7, -10.00, 0.00, 0.00, -10.00, NULL, 1494931586, 5, 2017, '', '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(177, 17, 130.00, 0.00, 0.00, 130.00, NULL, 1494931587, 5, 2017, '', '2017-05-16 05:16:27', '0000-00-00 00:00:00'),
(127, 1, 290.00, -30.00, 0.00, 320.00, NULL, 1494931586, 5, 2017, '', '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(137, 2, 200.00, 0.00, 0.00, 200.00, NULL, 1494931586, 5, 2017, '', '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(147, 3, 590.00, -20.00, 0.00, 610.00, NULL, 1494931586, 5, 2017, '', '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(157, 4, 600.00, 0.00, 0.00, 600.00, NULL, 1494931586, 5, 2017, '', '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(167, 7, -10.00, 0.00, 0.00, -10.00, NULL, 1494931586, 5, 2017, '', '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(177, 17, 130.00, 0.00, 0.00, 130.00, NULL, 1494931587, 5, 2017, '', '2017-05-16 05:16:27', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_session`
--

CREATE TABLE IF NOT EXISTS `student_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=79 ;

--
-- Dumping data for table `student_session`
--

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES
(17, 11, 7, 27, 27, 0, NULL, 0.00, 0.00, 'no', '2017-03-18 19:40:47', '0000-00-00 00:00:00'),
(27, 11, 17, 17, 7, 0, NULL, 0.00, 0.00, 'no', '2017-03-18 23:23:08', '0000-00-00 00:00:00'),
(28, 11, 0, 7, 7, 0, NULL, 0.00, 0.00, 'no', '2017-04-26 07:03:58', '0000-00-00 00:00:00'),
(29, 11, 18, 7, 7, 0, NULL, 0.00, 0.00, 'no', '2017-04-26 07:19:21', '0000-00-00 00:00:00'),
(30, 11, 19, 7, 7, 0, NULL, 0.00, 0.00, 'no', '2017-04-26 07:57:25', '0000-00-00 00:00:00'),
(31, 11, 20, 17, 17, 0, NULL, 0.00, 0.00, 'no', '2017-04-26 08:52:08', '0000-00-00 00:00:00'),
(32, 11, 21, 7, 17, 0, NULL, 0.00, 0.00, 'no', '2017-05-02 06:00:26', '0000-00-00 00:00:00'),
(33, 11, 22, 7, 7, 0, NULL, 0.00, 0.00, 'no', '2017-05-02 06:08:18', '0000-00-00 00:00:00'),
(34, 11, 23, 27, 27, 0, NULL, 0.00, 0.00, 'no', '2017-05-02 06:15:23', '0000-00-00 00:00:00'),
(35, 11, 24, 7, 7, 0, NULL, 0.00, 0.00, 'no', '2017-05-04 01:39:59', '0000-00-00 00:00:00'),
(36, 11, 25, 7, 7, 0, NULL, 0.00, 0.00, 'no', '2017-05-04 01:40:31', '0000-00-00 00:00:00'),
(37, 11, 26, 7, 7, 0, NULL, 0.00, 0.00, 'no', '2017-05-04 04:48:19', '0000-00-00 00:00:00'),
(47, 11, 57, 27, 27, 0, NULL, 0.00, 0.00, 'no', '2017-05-16 04:05:42', '0000-00-00 00:00:00'),
(57, 11, 67, 27, 27, 0, NULL, 0.00, 0.00, 'no', '2017-05-16 05:10:16', '0000-00-00 00:00:00'),
(67, 11, 77, 27, 27, 0, NULL, 0.00, 0.00, 'no', '2017-05-16 05:11:27', '0000-00-00 00:00:00'),
(77, 11, 87, 17, 7, 0, NULL, 0.00, 0.00, 'no', '2017-05-16 05:12:04', '0000-00-00 00:00:00'),
(78, 12, 97, 7, 7, 0, 0, 0.00, 0.00, 'no', '2017-10-09 11:59:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_sibling`
--

CREATE TABLE IF NOT EXISTS `student_sibling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_transport_fees`
--

CREATE TABLE IF NOT EXISTS `student_transport_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT '0000-00-00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_wise_fee`
--

CREATE TABLE IF NOT EXISTS `student_wise_fee` (
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

--
-- Dumping data for table `student_wise_fee`
--

INSERT INTO `student_wise_fee` (`id`, `parent_fee_id`, `student_id`, `feecategory_id`, `class_id`, `student_session_id`, `amount`, `amount_discount`, `net_amount`, `created_at`, `updated_at`) VALUES
(317, 127, 20, 1, 17, 11, 150.00, 0.00, 150.00, '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(327, 127, 17, 1, 17, 11, 150.00, -30.00, 180.00, '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(337, 127, 7, 1, 27, 11, -10.00, 0.00, -10.00, '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(347, 137, 19, 1, 7, 11, 200.00, 0.00, 200.00, '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(357, 147, 23, 1, 27, 11, -10.00, 0.00, -10.00, '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(367, 147, 22, 1, 7, 11, 200.00, -20.00, 220.00, '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(377, 147, 21, 1, 7, 11, 200.00, 0.00, 200.00, '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(387, 147, 18, 1, 7, 11, 200.00, 0.00, 200.00, '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(397, 157, 26, 1, 7, 11, 200.00, 0.00, 200.00, '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(407, 157, 25, 1, 7, 11, 200.00, 0.00, 200.00, '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(417, 157, 24, 1, 7, 11, 200.00, 0.00, 200.00, '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(427, 167, 57, 1, 27, 11, -10.00, 0.00, -10.00, '2017-05-16 05:16:26', '0000-00-00 00:00:00'),
(437, 177, 87, 1, 17, 11, 150.00, 0.00, 150.00, '2017-05-16 05:16:27', '0000-00-00 00:00:00'),
(447, 177, 77, 1, 27, 11, -10.00, 0.00, -10.00, '2017-05-16 05:16:27', '0000-00-00 00:00:00'),
(457, 177, 67, 1, 27, 11, -10.00, 0.00, -10.00, '2017-05-16 05:16:27', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=68 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(27, 'Fiqh 101', 'F101', 'Theory', 'no', '2017-03-18 19:25:44', '0000-00-00 00:00:00'),
(37, 'Fiqh 102', 'F102', 'Theory', 'no', '2017-03-18 19:25:51', '0000-00-00 00:00:00'),
(47, 'Quran Level 1', 'QL1', 'Theory', 'no', '2017-03-18 19:26:11', '0000-00-00 00:00:00'),
(57, 'Quran Level 2', 'QL2', 'Theory', 'no', '2017-03-18 19:26:21', '0000-00-00 00:00:00'),
(67, 'Memorization Level 1', 'QM01', 'Practical', 'no', '2017-03-18 19:26:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 'Ahmad', 'ahmad123@blufour.com', NULL, '', '2017-03-01', NULL, 'Male', '123', 'uploads/student_images/no_image.png', 'no', '2017-03-18 19:24:32', '0000-00-00 00:00:00'),
(17, 'Zainab', 'zainab123@blufour.com', NULL, '', '2017-03-08', NULL, 'Female', '123', 'uploads/student_images/no_image.png', 'no', '2017-03-18 19:24:57', '0000-00-00 00:00:00'),
(27, 'Abdul', 'abdul123@blufour.com', NULL, '', '2017-03-01', NULL, 'Male', '123', 'uploads/student_images/no_image.png', 'no', '2017-03-18 19:25:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE IF NOT EXISTS `teacher_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  KEY `session_id` (`session_id`),
  KEY `subject_id` (`subject_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `teacher_subjects`
--

INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 11, 47, 47, 7, NULL, 'no', '2017-03-18 19:26:55', '0000-00-00 00:00:00'),
(17, 11, 47, 67, 27, NULL, 'no', '2017-03-18 19:27:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE IF NOT EXISTS `timetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_subject_id` int(20) DEFAULT NULL,
  `day_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=138 ;

--
-- Dumping data for table `timetables`
--

INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 7, 'Monday', '05:00 PM', '06:00 PM', 'Room 1', 'no', '2017-03-18 19:29:26', '0000-00-00 00:00:00'),
(17, 7, 'Tuesday', '05:00 PM', '06:00 PM', 'Room 1', 'no', '2017-03-18 19:29:26', '0000-00-00 00:00:00'),
(27, 7, 'Wednesday', '', '', '', 'no', '2017-03-18 19:29:26', '0000-00-00 00:00:00'),
(37, 7, 'Thursday', '', '', '', 'no', '2017-03-18 19:29:26', '0000-00-00 00:00:00'),
(47, 7, 'Friday', '05:00 PM', '06:00 PM', 'Room 1', 'no', '2017-03-18 19:29:26', '0000-00-00 00:00:00'),
(57, 7, 'Saturday', '', '', '', 'no', '2017-03-18 19:29:26', '0000-00-00 00:00:00'),
(67, 7, 'Sunday', '', '', '', 'no', '2017-03-18 19:29:26', '0000-00-00 00:00:00'),
(77, 17, 'Monday', '06:00 PM', '07:00 AM', 'Room 2', 'no', '2017-03-18 19:31:05', '0000-00-00 00:00:00'),
(87, 17, 'Tuesday', '06:00 PM', '07:00 PM', 'Room 2', 'no', '2017-03-18 19:31:05', '0000-00-00 00:00:00'),
(97, 17, 'Wednesday', '', '', '', 'no', '2017-03-18 19:31:05', '0000-00-00 00:00:00'),
(107, 17, 'Thursday', '', '', '', 'no', '2017-03-18 19:31:05', '0000-00-00 00:00:00'),
(117, 17, 'Friday', '06:00 PM', '07:00 PM', 'Room 2', 'no', '2017-03-18 19:31:05', '0000-00-00 00:00:00'),
(127, 17, 'Saturday', '', '', '', 'no', '2017-03-18 19:31:05', '0000-00-00 00:00:00'),
(137, 17, 'Sunday', '', '', '', 'no', '2017-03-18 19:31:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

CREATE TABLE IF NOT EXISTS `transport_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `childs` text COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=251 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `is_active`, `created_at`, `updated_at`) VALUES
(7, 7, 'teacher7', 'sflhyk', '', 'teacher', 'yes', '2017-03-18 19:24:32', '0000-00-00 00:00:00'),
(17, 17, 'teacher17', '6xt1ca', '', 'teacher', 'yes', '2017-03-18 19:24:57', '0000-00-00 00:00:00'),
(27, 27, 'teacher27', 'lhniuh', '', 'teacher', 'yes', '2017-03-18 19:25:24', '0000-00-00 00:00:00'),
(37, 0, 'std0', '0s4gw3', '', 'student', 'yes', '2017-03-18 19:36:41', '0000-00-00 00:00:00'),
(47, 0, 'parent0', 'bhnz1o', '0', 'parent', 'yes', '2017-03-18 19:36:41', '0000-00-00 00:00:00'),
(57, 0, 'std0', 'kl0spq', '', 'student', 'yes', '2017-03-18 19:38:27', '0000-00-00 00:00:00'),
(67, 0, 'parent0', 'd4um74', '0', 'parent', 'yes', '2017-03-18 19:38:27', '0000-00-00 00:00:00'),
(77, 7, 'std7', 'o74voy', '', 'student', 'yes', '2017-03-18 19:40:47', '0000-00-00 00:00:00'),
(87, 7, 'parent7', '9rsegm', '7', 'parent', 'yes', '2017-03-18 19:40:47', '0000-00-00 00:00:00'),
(97, 17, 'std17', 'fgo3fb', '', 'student', 'yes', '2017-03-18 23:23:08', '0000-00-00 00:00:00'),
(107, 17, 'parent17', 'j4gcat', '17', 'parent', 'yes', '2017-03-18 23:23:08', '0000-00-00 00:00:00'),
(108, 0, 'std0', '9mniur', '', 'student', 'yes', '2017-04-26 07:03:58', '0000-00-00 00:00:00'),
(109, 0, 'parent0', '49wnk5', '0', 'parent', 'yes', '2017-04-26 07:03:58', '0000-00-00 00:00:00'),
(110, 18, 'std18', 'np903t', '', 'student', 'yes', '2017-04-26 07:19:22', '0000-00-00 00:00:00'),
(111, 18, 'parent18', 'rnkvo3', '18', 'parent', 'yes', '2017-04-26 07:19:22', '0000-00-00 00:00:00'),
(112, 0, 'std0', '6xt50j', '', 'student', 'yes', '2017-04-26 07:53:28', '0000-00-00 00:00:00'),
(113, 0, 'parent0', 'gwatgr', '0', 'parent', 'yes', '2017-04-26 07:53:28', '0000-00-00 00:00:00'),
(114, 0, 'std0', 'uo7eb0', '', 'student', 'yes', '2017-04-26 07:54:51', '0000-00-00 00:00:00'),
(115, 0, 'parent0', 'ivwsk9', '0', 'parent', 'yes', '2017-04-26 07:54:51', '0000-00-00 00:00:00'),
(116, 19, 'std19', 'fvcxeq', '', 'student', 'yes', '2017-04-26 07:57:25', '0000-00-00 00:00:00'),
(117, 19, 'parent19', 'n8g07z', '19', 'parent', 'yes', '2017-04-26 07:57:25', '0000-00-00 00:00:00'),
(118, 20, 'std20', 'e3yozy', '', 'student', 'yes', '2017-04-26 08:51:07', '0000-00-00 00:00:00'),
(119, 20, 'parent20', 'fcwdcd', '20', 'parent', 'yes', '2017-04-26 08:51:07', '0000-00-00 00:00:00'),
(120, 21, 'std21', 'skjt8r', '', 'student', 'yes', '2017-05-02 06:00:26', '0000-00-00 00:00:00'),
(121, 21, 'parent21', 'kr0ecy', '21', 'parent', 'yes', '2017-05-02 06:00:26', '0000-00-00 00:00:00'),
(122, 22, 'std22', 'nrtarq', '', 'student', 'yes', '2017-05-02 06:08:18', '0000-00-00 00:00:00'),
(123, 22, 'parent22', '9dap23', '22', 'parent', 'yes', '2017-05-02 06:08:18', '0000-00-00 00:00:00'),
(124, 23, 'std23', '37p322', '', 'student', 'yes', '2017-05-02 06:15:23', '0000-00-00 00:00:00'),
(125, 23, 'parent23', '22hr0o', '23', 'parent', 'yes', '2017-05-02 06:15:23', '0000-00-00 00:00:00'),
(126, 24, 'std24', 'bjy40t', '', 'student', 'yes', '2017-05-04 01:39:59', '0000-00-00 00:00:00'),
(127, 24, 'parent24', '8gtpvv', '24', 'parent', 'yes', '2017-05-04 01:39:59', '0000-00-00 00:00:00'),
(128, 25, 'std25', '4z3r59', '', 'student', 'yes', '2017-05-04 01:40:31', '0000-00-00 00:00:00'),
(129, 25, 'parent25', 'mzemiw', '25', 'parent', 'yes', '2017-05-04 01:40:31', '0000-00-00 00:00:00'),
(130, 26, 'std26', 'oaxzs5', '', 'student', 'yes', '2017-05-04 04:48:19', '0000-00-00 00:00:00'),
(131, 26, 'parent26', 'ypvkzy', '26', 'parent', 'yes', '2017-05-04 04:48:19', '0000-00-00 00:00:00'),
(137, 27, 'std27', 'vwxeuh', '', 'student', 'yes', '2017-05-15 07:36:53', '0000-00-00 00:00:00'),
(147, 27, 'parent27', 'ibhn41', '27', 'parent', 'yes', '2017-05-15 07:36:53', '0000-00-00 00:00:00'),
(157, 37, 'std37', '7f1raz', '', 'student', 'yes', '2017-05-15 07:38:42', '0000-00-00 00:00:00'),
(167, 37, 'parent37', 'wjzqha', '37', 'parent', 'yes', '2017-05-15 07:38:42', '0000-00-00 00:00:00'),
(177, 47, 'std47', 'hjkgmx', '', 'student', 'yes', '2017-05-15 09:04:27', '0000-00-00 00:00:00'),
(187, 47, 'parent47', 'gcxz5r', '47', 'parent', 'yes', '2017-05-15 09:04:27', '0000-00-00 00:00:00'),
(197, 7, 'parent7', 'dk9wnt', '', 'parent', 'yes', '2017-05-16 02:06:23', '0000-00-00 00:00:00'),
(207, 57, 'std57', 'b6dt1o', '', 'student', 'yes', '2017-05-16 02:26:50', '0000-00-00 00:00:00'),
(217, 17, 'parent17', 'kvojpl', '', 'parent', 'yes', '2017-05-16 05:04:12', '0000-00-00 00:00:00'),
(227, 67, 'std67', '38goak', '', 'student', 'yes', '2017-05-16 05:10:16', '0000-00-00 00:00:00'),
(237, 77, 'std77', 'hai1cx', '', 'student', 'yes', '2017-05-16 05:11:27', '0000-00-00 00:00:00'),
(247, 87, 'std87', 'uwspv6', '', 'student', 'yes', '2017-05-16 05:12:04', '0000-00-00 00:00:00'),
(248, 27, 'parent27', 'i3jjcx', '', 'parent', 'yes', '2017-10-09 06:27:50', '0000-00-00 00:00:00'),
(249, 97, 'std97', 'hvumfr', '', 'student', 'yes', '2017-10-09 11:59:03', '0000-00-00 00:00:00'),
(250, 97, 'parent97', 'q0cs2c', '97', 'parent', 'yes', '2017-10-09 11:59:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_routes`
--

CREATE TABLE IF NOT EXISTS `vehicle_routes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
