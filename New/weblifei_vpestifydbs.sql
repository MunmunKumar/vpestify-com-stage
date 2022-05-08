-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 08, 2020 at 11:28 AM
-- Server version: 5.6.42-84.2
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weblifei_vpestifydbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicyear`
--

CREATE TABLE `academicyear` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `orders` int(11) NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academicyear`
--

INSERT INTO `academicyear` (`id`, `pid`, `mid`, `name`, `adddate`, `editdate`, `orders`, `status`) VALUES
(1, 2, 1, '2019-2020', '2019-11-15', '0000-00-00', 0, 'Enable'),
(2, 2, 1, '2020-2021', '2019-11-15', '0000-00-00', 0, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `achievers`
--

CREATE TABLE `achievers` (
  `achie_id` int(11) NOT NULL,
  `achie_pid` int(11) NOT NULL DEFAULT '0',
  `achie_user_id` int(11) NOT NULL,
  `achie_title` varchar(150) NOT NULL,
  `achie_name` varchar(100) NOT NULL,
  `achie_text` varchar(1000) NOT NULL,
  `achie_type` varchar(255) NOT NULL,
  `achie_image` varchar(100) NOT NULL,
  `achie_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `achie_catalog_url` varchar(100) NOT NULL,
  `achie_skype` varchar(100) NOT NULL,
  `achie_fb_link` varchar(100) NOT NULL,
  `achie_ytd_link` varchar(100) NOT NULL,
  `achie_gp_link` varchar(100) NOT NULL,
  `achie_twt_link` varchar(100) NOT NULL,
  `achie_linkedin_link` varchar(100) NOT NULL,
  `achie_instagram_link` varchar(100) NOT NULL,
  `achie_pinterest_link` varchar(100) NOT NULL,
  `achie_others_link` varchar(100) NOT NULL,
  `achie_status` enum('Enable','Disable','Block') NOT NULL,
  `achie_position` int(11) NOT NULL,
  `achie_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_pid` int(11) NOT NULL,
  `admin_uid` int(11) NOT NULL,
  `admin_role` enum('SuperAdmin','Admin','User','Nill') NOT NULL DEFAULT 'Nill',
  `admin_email` varchar(100) NOT NULL,
  `admin_user_name` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_password_token` varchar(100) NOT NULL,
  `admin_password_token_time` datetime NOT NULL,
  `admin_security_code` varchar(20) NOT NULL,
  `admin_url` varchar(500) NOT NULL,
  `admin_theme` varchar(100) NOT NULL,
  `admin_theme_css` varchar(100) NOT NULL,
  `admin_wallet_balance` float(10,2) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_c_name` varchar(100) NOT NULL,
  `admin_mobile` varchar(50) NOT NULL,
  `admin_address` varchar(255) NOT NULL,
  `admin_c_tel1` int(20) NOT NULL,
  `admin_c_tel2` varchar(20) NOT NULL,
  `admin_country` int(11) NOT NULL,
  `admin_state` int(11) NOT NULL,
  `admin_city` int(11) NOT NULL,
  `admin_pincode` varchar(20) NOT NULL,
  `admin_customer_support_no` varchar(50) NOT NULL,
  `admin_whatsapp_number` varchar(10) NOT NULL,
  `admin_landline_no` varchar(50) NOT NULL,
  `admin_fax_no` varchar(50) NOT NULL,
  `admin_establishment_year` varchar(50) NOT NULL,
  `admin_working_hours` varchar(50) NOT NULL,
  `admin_website` varchar(100) NOT NULL,
  `admin_facebook_link` varchar(100) NOT NULL,
  `admin_fwitter_link` varchar(100) NOT NULL,
  `admin_linkedin_link` varchar(100) NOT NULL,
  `admin_youtube_link` varchar(100) NOT NULL,
  `admin_google_link` varchar(100) NOT NULL,
  `admin_instagram_link` varchar(100) NOT NULL,
  `admin_pinterest_link` varchar(100) NOT NULL,
  `admin_others_link` varchar(100) NOT NULL,
  `admin_live_chat` varchar(100) NOT NULL,
  `admin_visitor_counter` varchar(100) NOT NULL,
  `admin_language_converter` varchar(100) NOT NULL,
  `admin_google_map` varchar(100) NOT NULL,
  `admin_blog_url` varchar(100) NOT NULL,
  `admin_domain_name` varchar(100) NOT NULL,
  `admin_domain_activation_date` date NOT NULL,
  `admin_domain_expiry_date` date NOT NULL,
  `admin_membership_activation_date` date NOT NULL,
  `admin_membership_expiry_date` date NOT NULL,
  `admin_usertype` enum('Admin','Company','Executive') NOT NULL,
  `admin_adddate` date NOT NULL,
  `admin_editdate` date NOT NULL,
  `admin_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_pid`, `admin_uid`, `admin_role`, `admin_email`, `admin_user_name`, `admin_password`, `admin_password_token`, `admin_password_token_time`, `admin_security_code`, `admin_url`, `admin_theme`, `admin_theme_css`, `admin_wallet_balance`, `admin_name`, `admin_c_name`, `admin_mobile`, `admin_address`, `admin_c_tel1`, `admin_c_tel2`, `admin_country`, `admin_state`, `admin_city`, `admin_pincode`, `admin_customer_support_no`, `admin_whatsapp_number`, `admin_landline_no`, `admin_fax_no`, `admin_establishment_year`, `admin_working_hours`, `admin_website`, `admin_facebook_link`, `admin_fwitter_link`, `admin_linkedin_link`, `admin_youtube_link`, `admin_google_link`, `admin_instagram_link`, `admin_pinterest_link`, `admin_others_link`, `admin_live_chat`, `admin_visitor_counter`, `admin_language_converter`, `admin_google_map`, `admin_blog_url`, `admin_domain_name`, `admin_domain_activation_date`, `admin_domain_expiry_date`, `admin_membership_activation_date`, `admin_membership_expiry_date`, `admin_usertype`, `admin_adddate`, `admin_editdate`, `admin_status`) VALUES
(1, 0, 0, 'SuperAdmin', 'guptashalini.destech@gmail.com', 'vpestify', 'vpestify@', '11fa1a01c892fa7d3f42abfc55ae8f11', '2018-09-29 14:22:28', '', '', '', '', 0.00, '', '', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', 'Active'),
(2, 1, 0, 'Admin', 'bacd@gmail.com', '', '123456', '', '0000-00-00 00:00:00', '', '', '', '', 0.00, 'ABCD School', '1', '2', '3', 0, '', 0, 2, 1571, '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Admin', '2019-11-13', '2019-11-13', 'Active'),
(3, 2, 0, 'Nill', 'ravikumars@gmail.com', '', '123456', '', '0000-00-00 00:00:00', '', '', '', '', 0.00, 'Uttam nagar', '', '', 'erqwereqt', 0, '', 0, 2, 9, '1122005', 'rtwertwer', 'twertwer', 'twertwer', '', '', 'rtwert', 'ertwert', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Admin', '2019-12-11', '0000-00-00', 'Active'),
(4, 2, 0, 'Nill', 'ravikumarss@gmail.com', '', '123456', '', '0000-00-00 00:00:00', '', '', '', '', 0.00, 'Uttam nagar', '', '', 'erqwereqt', 0, '', 0, 2, 0, '1122005', 'rtwertwer', 'twertwer', 'twertwer', '', '', 'rtwert', 'ertwert', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Admin', '2019-12-11', '0000-00-00', 'Active'),
(5, 2, 0, 'Nill', 'abkbarali@gmail.com', '', '123456', '', '0000-00-00 00:00:00', '', '', '', '', 0.00, 'Uttam nagar', '', '', 'erqwereqt', 0, '', 0, 2, 0, '1122005', 'rtwertwer', 'twertwer', 'twertwer', '', '', 'rtwert', 'ertwert', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Admin', '2019-12-11', '0000-00-00', 'Active'),
(6, 2, 0, 'Nill', 'newschool@gmail.com', '', '123456', '', '0000-00-00 00:00:00', '', '', '', '', 0.00, 'Weblife Pvt Ltd', 'Sameer', '8510952095', 'Uttam Nagar', 0, '', 0, 2, 9, '110059', '9811962026', '9811962026', '9811962026', '9811962026', '1988', '20', 'www.yahoo.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Admin', '2019-12-18', '0000-00-00', 'Active'),
(7, 1, 0, 'Nill', 'newschools@gmail.com', '', '123456', '', '0000-00-00 00:00:00', '', '', '', '', 0.00, 'Weblife Pvt Ltd', '', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Admin', '2019-12-18', '0000-00-00', 'Active'),
(8, 1, 0, 'Nill', 'newschools2@gmail.com', '', '123456', '', '0000-00-00 00:00:00', '', '', '', '', 0.00, 'Weblife Pvt Ltd', '', '', '', 0, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Admin', '2019-12-18', '0000-00-00', 'Active'),
(9, 1, 0, 'Admin', 'newschools3@gmail.com', '', '123456', '', '0000-00-00 00:00:00', '', 'sarja-test-school', '', '', 0.00, 'sadasfa', 'dsafasd', 'fsadfsadfsd', 'fasdfasd', 0, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Admin', '2019-12-24', '2019-12-27', 'Active'),
(10, 9, 1, 'User', 'abcdeghybhgg@gmail.com', '', '123456', '', '0000-00-00 00:00:00', '', '', '', '', 700.00, '', 'Izhar Hussain', '8923556530', 'Near Water Tank Vill. & Post Asoura', 0, '', 0, 32, 0, '245101', '', '', '8923556530', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Admin', '2020-01-21', '0000-00-00', 'Active'),
(11, 9, 9, 'User', 'rajbala@gmail.com', '', '123456', '', '0000-00-00 00:00:00', '', '', '', '', 0.00, '', 'sxdsa', '98119645241', 'wqdw few', 0, '', 0, 1, 0, '110059', '', '', '54515451', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Admin', '2020-01-21', '0000-00-00', 'Active'),
(12, 9, 1, 'User', 'rajbala@gmail.com', '', '123456', '', '0000-00-00 00:00:00', '', '', '', '', 0.00, '', 'sxdsa', '98119645241', 'wqdw few', 0, '', 0, 1, 1, '110059', '', '', '54515451', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Admin', '2020-01-21', '0000-00-00', 'Active'),
(13, 1, 0, 'Admin', 'weblifedeveloper@gmail.com', '', '123456', '', '0000-00-00 00:00:00', '', 'weblifedeveloper', '', '', 0.00, 'weblife', 'Farid', '9811964523', 'WZ B 39, Uttam Nagar', 0, '', 0, 2, 1580, '121004', '9811964523', '9811964523', '9811964523', '9811964523', '1988', '9Am to 6PM', 'www.yahoo.com', 'aasd', 'dsaddf', 'dsfdsf', 'dsfsdf', 'dsfasdf', 'sdafsadf', 'sdafsda', 'fsadfsdf', 'dfasd', 'dfdsd', 'fdsfasdf', 'sadfdas', 'dsfsda', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Admin', '2020-01-23', '0000-00-00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `adid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `ad_ref_no` varchar(100) NOT NULL,
  `course_academic_year` int(11) NOT NULL,
  `ad_stu_course` int(11) NOT NULL,
  `ad_stu_courseduration` int(11) NOT NULL,
  `ad_stu_coursefees` float(10,2) NOT NULL,
  `ad_stu_discount_per` float(10,2) NOT NULL,
  `ad_stu_discount_amount` float(10,2) NOT NULL,
  `ad_stu_net_coursefees` float(10,2) NOT NULL,
  `ad_stu_courseinstallment` int(11) NOT NULL,
  `ad_stu_coursetotalmarks` float(10,2) NOT NULL,
  `ad_stu_coursepassingmarks` float(10,2) NOT NULL,
  `ad_stud_course_start_date` date NOT NULL,
  `ad_stud_status` enum('Enable','Disable','Completed','Block') NOT NULL DEFAULT 'Enable',
  `ad_stud_add_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admitcards`
--

CREATE TABLE `admitcards` (
  `adcd_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `adcd_admsn_id` int(11) NOT NULL,
  `adcd_std_id` int(11) NOT NULL,
  `adcd_cid` int(11) NOT NULL,
  `adcd_examid` int(11) NOT NULL,
  `allsubjecttheoreticalobtainedmarks` float(10,2) NOT NULL,
  `allsubjectpracticalobtainedmarks` float(10,2) NOT NULL,
  `allsubjectprojectobtainedmarks` float(10,2) NOT NULL,
  `allsubjectobtainedmarks` float(10,2) NOT NULL,
  `marksadddate` datetime NOT NULL,
  `adcd_status` enum('Enable','Disable','Completed') NOT NULL DEFAULT 'Enable',
  `adcd_add_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `adults`
--

CREATE TABLE `adults` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ratings` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `position` int(11) NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `adv_id` int(11) NOT NULL,
  `adv_user_id` int(11) NOT NULL,
  `adv_name` varchar(100) NOT NULL,
  `adv_image` varchar(100) NOT NULL,
  `adv_status` enum('Enable','Disable','Block') NOT NULL,
  `adv_created` date NOT NULL,
  `adv_updated` date NOT NULL,
  `adv_expired` date NOT NULL,
  `adv_url` varchar(100) NOT NULL,
  `adv_position` int(11) NOT NULL,
  `adv_display` enum('Home','None') NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `bank_logo` varchar(100) NOT NULL,
  `bank_account_name` varchar(200) NOT NULL,
  `bank_branch_name` varchar(200) NOT NULL,
  `bank_account_number` varchar(200) NOT NULL,
  `bank_ifsc_code` varchar(200) NOT NULL,
  `bank_upi` varchar(100) NOT NULL,
  `bank_status` enum('Enable','Disable','Block') NOT NULL,
  `bank_position` int(11) NOT NULL,
  `bank_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banner_id` int(11) NOT NULL,
  `banner_pid` int(11) NOT NULL,
  `banner_mid` int(11) NOT NULL,
  `banner_user_id` int(11) NOT NULL,
  `banner_title` varchar(150) NOT NULL,
  `banner_content` varchar(500) NOT NULL,
  `banner_content_line1` varchar(500) NOT NULL,
  `banner_content_line2` varchar(500) NOT NULL,
  `banner_content_line3` varchar(100) NOT NULL,
  `banner_content_line4` varchar(100) NOT NULL,
  `banner_content_line5` varchar(100) NOT NULL,
  `banner_url` varchar(100) NOT NULL,
  `banner_image` varchar(100) NOT NULL,
  `banner_brand_image` varchar(100) NOT NULL,
  `banner_place` int(11) NOT NULL,
  `banner_start_date` date NOT NULL,
  `banner_end_date` date NOT NULL,
  `banner_status` enum('Enable','Disable','Block') NOT NULL,
  `banner_position` int(11) NOT NULL,
  `banner_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banner_id`, `banner_pid`, `banner_mid`, `banner_user_id`, `banner_title`, `banner_content`, `banner_content_line1`, `banner_content_line2`, `banner_content_line3`, `banner_content_line4`, `banner_content_line5`, `banner_url`, `banner_image`, `banner_brand_image`, `banner_place`, `banner_start_date`, `banner_end_date`, `banner_status`, `banner_position`, `banner_add_date`) VALUES
(1, 0, 0, 1, 'vpestify', '', '', '', '', '', '', '', 'ae44a4f90cfa71aaf0df1d2f68482bb6.jpg', '', 0, '0000-00-00', '0000-00-00', 'Enable', 0, '2020-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL,
  `batch_name` varchar(100) NOT NULL,
  `batch_course` varchar(100) NOT NULL,
  `batch_date` date NOT NULL,
  `batch_time` varchar(100) NOT NULL,
  `batch_address` varbinary(500) NOT NULL,
  `batch_location_map` varchar(500) NOT NULL,
  `batch_contact_no` varchar(50) NOT NULL,
  `batch_email` varchar(100) NOT NULL,
  `batch_description` longtext NOT NULL,
  `batch_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `batch_status` enum('Enable','Disable','Block') NOT NULL,
  `batch_position` int(11) NOT NULL,
  `batch_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ratings` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `position` int(11) NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beforelogins`
--

CREATE TABLE `beforelogins` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `compname` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `purposetoregister` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Disable',
  `created` date NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_type` varchar(20) NOT NULL,
  `blog_name` varchar(100) NOT NULL,
  `blog_meta_title` varchar(300) NOT NULL,
  `blog_meta_keyword` varchar(300) NOT NULL,
  `blog_meta_description` varchar(300) NOT NULL,
  `blog_heading` varchar(200) NOT NULL,
  `blog_image` varchar(100) NOT NULL,
  `blog_video` varchar(100) NOT NULL,
  `blog_country` varchar(100) NOT NULL,
  `blog_map` varchar(500) NOT NULL,
  `blog_small_content` varchar(1000) NOT NULL,
  `blog_full_content` longtext NOT NULL,
  `blog_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `blog_status` enum('Enable','Disable','Block') NOT NULL,
  `blog_position` int(11) NOT NULL,
  `blog_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE `bloodgroup` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `orders` int(11) NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`id`, `pid`, `mid`, `name`, `adddate`, `editdate`, `orders`, `status`) VALUES
(1, 6, 2, 'A', '2019-12-18', '0000-00-00', 0, 'Enable'),
(2, 6, 2, 'B', '2019-12-18', '0000-00-00', 0, 'Enable'),
(3, 6, 2, 'AB', '2019-12-18', '0000-00-00', 0, 'Enable'),
(4, 6, 2, 'O', '2019-12-18', '0000-00-00', 0, 'Enable'),
(5, 6, 2, 'A+', '2019-12-18', '0000-00-00', 0, 'Enable'),
(6, 6, 2, 'O+', '2019-12-18', '0000-00-00', 0, 'Enable'),
(7, 6, 2, 'B+', '2019-12-18', '0000-00-00', 0, 'Enable'),
(8, 6, 2, 'AB+', '2019-12-18', '0000-00-00', 0, 'Enable'),
(9, 6, 2, 'A-', '2019-12-18', '0000-00-00', 0, 'Enable'),
(10, 6, 2, 'O-', '2019-12-18', '0000-00-00', 0, 'Enable'),
(11, 6, 2, 'B-', '2019-12-18', '0000-00-00', 0, 'Enable'),
(12, 6, 2, 'AB-', '2019-12-18', '0000-00-00', 0, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `bookingenquiries`
--

CREATE TABLE `bookingenquiries` (
  `booking_id` int(11) NOT NULL,
  `booking_user_id` int(11) NOT NULL,
  `booking_name` varchar(100) NOT NULL,
  `booking_subject` varchar(100) NOT NULL,
  `booking_checkin` varchar(100) NOT NULL,
  `booking_checkout` varchar(100) NOT NULL,
  `booking_adults` varchar(100) NOT NULL,
  `booking_children` varchar(100) NOT NULL,
  `booking_email` varchar(100) NOT NULL,
  `booking_roomtype` varchar(100) NOT NULL,
  `booking_address` varchar(255) NOT NULL,
  `booking_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branche_id` int(11) NOT NULL,
  `branche_pid` int(11) NOT NULL,
  `branche_name` varchar(100) NOT NULL,
  `branche_address` varchar(200) NOT NULL,
  `branche_city` varchar(100) NOT NULL,
  `branche_state` varchar(100) NOT NULL,
  `branche_pincode` varchar(20) NOT NULL,
  `branche_email` varchar(100) NOT NULL,
  `branche_contact` varchar(100) NOT NULL,
  `branche_map` varchar(500) NOT NULL,
  `branche_coupon` int(11) NOT NULL,
  `branche_image` varchar(100) NOT NULL,
  `branche_amount` float(10,2) NOT NULL,
  `branche_duration` varchar(100) NOT NULL,
  `branche_small_description` varchar(500) NOT NULL,
  `branche_full_description` longtext NOT NULL,
  `branche_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `branche_adddate` date NOT NULL,
  `branche_editdate` date NOT NULL,
  `branche_status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable',
  `branche_position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branche_id`, `branche_pid`, `branche_name`, `branche_address`, `branche_city`, `branche_state`, `branche_pincode`, `branche_email`, `branche_contact`, `branche_map`, `branche_coupon`, `branche_image`, `branche_amount`, `branche_duration`, `branche_small_description`, `branche_full_description`, `branche_is_home`, `branche_adddate`, `branche_editdate`, `branche_status`, `branche_position`) VALUES
(1, 0, 'The Byke Grassfield Club', 'K-107, Kishan Nagar, Grassfield Club Lane, Janpath, Shyam Nagar,', 'Jaipur', 'Rajasthan', '203030', 'theangelspa111@gmail.com', '+91 7232067111, +91 9549420111', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14233.386537659026!2d75.757951!3d26.892492!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x97bf3c0ff9e80d94!2sGrass+Field+Club+P+Ltd!5e0!3m2!1sen!2sin!4v1559546082009!5m2!1sen!2sin', 0, '', 0.00, '', '', '', 'No', '0000-00-00', '0000-00-00', 'Enable', 0),
(2, 0, 'Hotel Raj Plaza, Jaipur', '17,18, Hotel Raj Plaza, 3rd Floor, near Vivek Vihar Metro Station, Jaipur', 'Jaipur', 'Rajasthan', '203030', 'theangelspa111@gmail.com', '+91 7232067111, +91 9549420111', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14233.983427035542!2d75.768083!3d26.887754000000005!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xef64df79fb499e6f!2sHotel+Raj+Plaza!5e0!3m2!1sen!2sin!4v1559546266108!5m2!1sen!2sin', 0, '', 0.00, '', '', '', 'No', '0000-00-00', '0000-00-00', 'Enable', 0),
(3, 0, 'The Park Classic, Jaipur', 'B-13b, 10b Scheme, Ridhi Sidhi Circle, Gopalpura Bypass Jaipur-302018', 'Jaipur', 'Rajasthan', '203030', 'theangelspa111@gmail.com', '+91 7232067111, +91 9549420111', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14235.870458454452!2d75.776975!3d26.87277!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2f158ba0039a45a1!2sThe+Park+Classic!5e0!3m2!1sen!2sin!4v1559546318071!5m2!1sen!2sin', 0, '', 0.00, '', '', '', 'No', '0000-00-00', '0000-00-00', 'Enable', 0),
(4, 0, 'Zone By The Park, Jaipur', 'D-65A, Madho Singh Road, Sindhi Colony, Bani Park, Jaipur, Rajasthan 302016', 'Jaipur', 'Rajasthan', '302016', 'theangelspa111@gmail.com', '+91 7232067111, +91 9549420111', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d56913.04442386812!2d75.79371700000002!3d26.933145!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1f87f1cdec8518d5!2sZone+By+The+Park!5e0!3m2!1sen!2sin!4v1559546363154!5m2!1sen!2sin', 0, '', 0.00, '', '', '', 'No', '0000-00-00', '0000-00-00', 'Enable', 0);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_pid` int(11) NOT NULL DEFAULT '0',
  `brand_user_id` int(11) NOT NULL,
  `brand_title` varchar(150) NOT NULL,
  `brand_text` varchar(1000) NOT NULL,
  `brand_url` varchar(255) NOT NULL,
  `brand_image` varchar(100) NOT NULL,
  `brand_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `brand_status` enum('Enable','Disable','Block') NOT NULL,
  `brand_position` int(11) NOT NULL,
  `brand_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `caste`
--

CREATE TABLE `caste` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `orders` int(11) NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catalouge`
--

CREATE TABLE `catalouge` (
  `catalouge_id` int(11) NOT NULL,
  `catalouge_pid` int(11) NOT NULL,
  `catalouge_user_id` int(11) NOT NULL,
  `catalouge_title` varchar(200) NOT NULL,
  `catalouge_image` varchar(100) NOT NULL,
  `catalouge_hindi_title` varchar(200) NOT NULL,
  `catalouge_hindi_image` varchar(100) NOT NULL,
  `catalouge_text` varchar(1000) NOT NULL,
  `catalouge_status` enum('Enable','Disable','Block') NOT NULL,
  `catalouge_position` int(11) NOT NULL,
  `catalouge_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(11) NOT NULL,
  `cate_pid` int(11) NOT NULL DEFAULT '0',
  `cate_user_id` int(11) NOT NULL,
  `cate_url` varchar(100) NOT NULL,
  `cate_name` varchar(100) NOT NULL,
  `cate_code` varchar(100) NOT NULL,
  `cate_title` varchar(55) NOT NULL,
  `cate_meta_keyword` varchar(300) NOT NULL,
  `cate_meta_description` varchar(155) NOT NULL,
  `cate_image` varchar(100) NOT NULL,
  `cate_full_desciption` longtext NOT NULL,
  `cat_display_as` enum('Yes','No') NOT NULL DEFAULT 'No',
  `cate_display` int(11) NOT NULL,
  `cate_order` int(11) NOT NULL,
  `cate_created` datetime NOT NULL,
  `cate_modified` datetime NOT NULL,
  `cate_status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `certf_id` int(11) NOT NULL,
  `certf_pid` int(11) NOT NULL DEFAULT '0',
  `certf_user_id` int(11) NOT NULL,
  `certf_title` varchar(150) NOT NULL,
  `certf_text` varchar(1000) NOT NULL,
  `certf_url` varchar(255) NOT NULL,
  `certf_image` varchar(100) NOT NULL,
  `certf_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `certf_status` enum('Enable','Disable','Block') NOT NULL,
  `certf_position` int(11) NOT NULL,
  `certf_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `childs`
--

CREATE TABLE `childs` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ratings` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `position` int(11) NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable',
  `adddate` date NOT NULL,
  `editdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `pid`, `country_id`, `name`, `status`, `adddate`, `editdate`) VALUES
(1, 1, 0, 'Faridabad', 'Enable', '2011-07-18', '0000-00-00'),
(2, 1, 0, 'Palwal', 'Enable', '2011-07-18', '0000-00-00'),
(3, 1, 0, 'Gurgaon', 'Enable', '2011-07-18', '0000-00-00'),
(7, 11, 0, 'West Kaming', 'Enable', '2011-09-20', '0000-00-00'),
(689, 3, 99, 'Ferozepur', 'Enable', '0000-00-00', '0000-00-00'),
(9, 2, 0, 'New Delhi', 'Enable', '2011-09-20', '0000-00-00'),
(10, 2, 0, 'Old Delhi', 'Enable', '2011-09-20', '0000-00-00'),
(11, 5, 0, 'Patna', 'Enable', '2011-09-20', '0000-00-00'),
(12, 5, 0, 'Gaya', 'Enable', '2011-09-20', '0000-00-00'),
(13, 5, 0, 'Bhagalpur', 'Enable', '2011-09-20', '0000-00-00'),
(14, 5, 0, 'Muzaffarpur', 'Enable', '2011-09-20', '0000-00-00'),
(15, 5, 0, 'Darbhanga', 'Enable', '2011-09-20', '0000-00-00'),
(16, 5, 0, 'Biharsarif', 'Enable', '2011-09-20', '0000-00-00'),
(17, 5, 0, 'Nalanda', 'Enable', '2011-09-20', '0000-00-00'),
(18, 5, 0, 'Arrah', 'Enable', '2011-09-20', '0000-00-00'),
(19, 5, 0, 'Bhojpur', 'Enable', '2011-09-20', '0000-00-00'),
(20, 5, 0, 'Munger', 'Enable', '2011-09-20', '0000-00-00'),
(21, 5, 0, 'Chhapra', 'Enable', '2011-09-20', '0000-00-00'),
(22, 5, 0, '	Saran', 'Enable', '2011-09-20', '0000-00-00'),
(23, 5, 0, 'Katihar', 'Enable', '2011-09-20', '0000-00-00'),
(24, 5, 0, 'Purnia', 'Enable', '2011-09-20', '0000-00-00'),
(25, 5, 0, 'Danapur', 'Enable', '2011-09-20', '0000-00-00'),
(26, 5, 0, 'Sasaram', 'Enable', '2011-09-20', '0000-00-00'),
(27, 5, 0, 'Rohtas', 'Enable', '2011-09-20', '0000-00-00'),
(28, 5, 0, 'Dehri', 'Enable', '2011-09-20', '0000-00-00'),
(29, 1, 0, 'Ambala', 'Enable', '2011-09-20', '0000-00-00'),
(30, 1, 0, 'Kaithal', 'Enable', '2011-09-20', '0000-00-00'),
(31, 1, 0, 'Kurukshetra', 'Enable', '2011-09-20', '0000-00-00'),
(32, 1, 0, 'Panchkula', 'Enable', '2011-09-20', '0000-00-00'),
(33, 1, 0, 'Yamuna Nagar', 'Enable', '2011-09-20', '0000-00-00'),
(34, 1, 0, 'Mahendragarh', 'Enable', '2011-09-20', '0000-00-00'),
(35, 1, 0, 'Mewat ', 'Enable', '2011-09-20', '0000-00-00'),
(36, 1, 0, 'Rewari ', 'Enable', '2011-09-20', '0000-00-00'),
(37, 1, 0, 'Bhiwani', 'Enable', '2011-09-20', '0000-00-00'),
(38, 1, 0, 'Fatehabad', 'Enable', '2011-09-20', '0000-00-00'),
(39, 1, 0, 'Hisar', 'Enable', '2011-09-20', '0000-00-00'),
(40, 1, 0, 'Jind', 'Enable', '2011-09-20', '0000-00-00'),
(41, 1, 0, 'Sirsa', 'Enable', '2011-09-20', '0000-00-00'),
(42, 1, 0, 'Jhajjar', 'Enable', '2011-09-20', '0000-00-00'),
(43, 1, 0, 'Karnal', 'Enable', '2011-09-20', '0000-00-00'),
(44, 1, 0, 'Panipat', 'Enable', '2011-09-20', '0000-00-00'),
(45, 1, 0, 'Rohtak', 'Enable', '2011-09-20', '0000-00-00'),
(46, 1, 0, 'Sonipat', 'Enable', '2011-09-20', '0000-00-00'),
(47, 32, 0, 'Allahabad', 'Enable', '2011-09-20', '0000-00-00'),
(48, 32, 0, 'Varanasi', 'Enable', '2011-09-20', '0000-00-00'),
(49, 32, 0, 'Kanpur', 'Enable', '2011-09-20', '0000-00-00'),
(50, 32, 0, 'Lucknow', 'Enable', '2011-09-20', '0000-00-00'),
(82, 18, 0, 'Ranchi', 'Enable', '2011-09-20', '0000-00-00'),
(52, 18, 0, 'Chatra', 'Enable', '2011-09-20', '0000-00-00'),
(53, 18, 0, 'Hazari Bagh', 'Enable', '2011-09-20', '0000-00-00'),
(54, 28, 0, 'Alwar', 'Enable', '2011-09-20', '0000-00-00'),
(55, 28, 0, 'Behror', 'Enable', '2011-09-20', '0000-00-00'),
(56, 28, 0, 'Bharatpur', 'Enable', '2011-09-20', '0000-00-00'),
(57, 28, 0, 'Bhiwadi', 'Enable', '2011-09-20', '0000-00-00'),
(58, 28, 0, 'Dhaulpur', 'Enable', '2011-09-20', '0000-00-00'),
(59, 28, 0, 'Hanuman garh', 'Enable', '2011-09-20', '0000-00-00'),
(60, 28, 0, 'Sopur', 'Enable', '2011-09-20', '0000-00-00'),
(61, 32, 0, 'Agra', 'Enable', '2011-09-20', '0000-00-00'),
(62, 32, 0, 'Meerut', 'Enable', '2011-09-20', '0000-00-00'),
(63, 32, 0, 'Gorakhpur', 'Enable', '2011-09-20', '0000-00-00'),
(64, 32, 0, 'Aligarh', 'Enable', '2011-09-20', '0000-00-00'),
(65, 32, 0, 'Bareilly', 'Enable', '2011-09-20', '0000-00-00'),
(66, 32, 0, 'Ghaziabad', 'Enable', '2011-09-20', '0000-00-00'),
(67, 32, 0, 'Noida', 'Enable', '2011-09-20', '0000-00-00'),
(68, 32, 0, 'Kushinagar', 'Enable', '2011-09-20', '0000-00-00'),
(69, 3, 0, 'Amritsar', 'Enable', '2011-09-20', '0000-00-00'),
(70, 3, 0, 'Bathinda', 'Enable', '2011-09-20', '0000-00-00'),
(71, 3, 0, 'Gurdaspur', 'Enable', '2011-09-20', '0000-00-00'),
(72, 3, 0, 'Kapurthala', 'Enable', '2011-09-20', '0000-00-00'),
(73, 3, 0, 'Jalandhar', 'Enable', '2011-09-20', '0000-00-00'),
(74, 3, 0, 'Ludhiana', 'Enable', '2011-09-20', '0000-00-00'),
(75, 3, 0, 'Mohali', 'Enable', '2011-09-20', '0000-00-00'),
(76, 3, 0, 'Pathankot', 'Enable', '2011-09-20', '0000-00-00'),
(77, 3, 0, 'Hoshiarpur', 'Enable', '2011-09-20', '0000-00-00'),
(78, 21, 0, 'Bhopal', 'Enable', '2011-09-20', '0000-00-00'),
(79, 21, 0, 'Indore', 'Enable', '2011-09-20', '0000-00-00'),
(80, 21, 0, 'Jabalpur', 'Enable', '2011-09-20', '0000-00-00'),
(81, 21, 0, 'Gwalior', 'Enable', '2011-09-20', '0000-00-00'),
(83, 18, 0, 'Jamshedpur', 'Enable', '2011-09-20', '0000-00-00'),
(586, 22, 99, 'Thane', 'Enable', '0000-00-00', '0000-00-00'),
(585, 32, 99, 'Sitapur', 'Enable', '0000-00-00', '0000-00-00'),
(562, 1, 99, 'Agroha', 'Enable', '0000-00-00', '0000-00-00'),
(88, 34, 99, 'Murshidabad', 'Enable', '0000-00-00', '0000-00-00'),
(89, 34, 99, 'Durgapur', 'Enable', '0000-00-00', '0000-00-00'),
(90, 34, 99, 'Shantiniketan', 'Enable', '0000-00-00', '0000-00-00'),
(91, 34, 99, 'Bardhaman', 'Enable', '0000-00-00', '0000-00-00'),
(92, 34, 99, 'Badhagachhi', 'Enable', '0000-00-00', '0000-00-00'),
(93, 34, 99, 'Fatellapur', 'Enable', '0000-00-00', '0000-00-00'),
(94, 34, 99, 'Gairkata', 'Enable', '0000-00-00', '0000-00-00'),
(95, 34, 99, 'Garulia', 'Enable', '0000-00-00', '0000-00-00'),
(96, 34, 99, 'Jhalda', 'Enable', '0000-00-00', '0000-00-00'),
(97, 34, 99, 'Kajora', 'Enable', '0000-00-00', '0000-00-00'),
(98, 34, 99, 'Kaugachhi', 'Enable', '0000-00-00', '0000-00-00'),
(99, 34, 99, 'Matabhanga', 'Enable', '0000-00-00', '0000-00-00'),
(100, 34, 99, 'Mahiari', 'Enable', '0000-00-00', '0000-00-00'),
(101, 34, 99, 'Kanyanagar', 'Enable', '0000-00-00', '0000-00-00'),
(102, 34, 99, 'Konnagar', 'Enable', '0000-00-00', '0000-00-00'),
(103, 34, 99, 'Khodarampur', 'Enable', '0000-00-00', '0000-00-00'),
(104, 34, 99, 'Baruipur', 'Enable', '0000-00-00', '0000-00-00'),
(105, 34, 99, 'Beldanga', 'Enable', '0000-00-00', '0000-00-00'),
(106, 34, 99, 'Bilpahari', 'Enable', '0000-00-00', '0000-00-00'),
(107, 34, 99, 'Chandrakona', 'Enable', '0000-00-00', '0000-00-00'),
(108, 34, 99, 'Char Brahmanagar', 'Enable', '0000-00-00', '0000-00-00'),
(109, 34, 99, 'Coppers Camp', 'Enable', '0000-00-00', '0000-00-00'),
(110, 34, 99, 'Dakshin Jhapardaha', 'Enable', '0000-00-00', '0000-00-00'),
(111, 34, 99, 'Chhora', 'Enable', '0000-00-00', '0000-00-00'),
(112, 34, 99, 'Dhuilya', 'Enable', '0000-00-00', '0000-00-00'),
(113, 34, 99, 'Dinhata', 'Enable', '0000-00-00', '0000-00-00'),
(114, 34, 99, 'Nabadwip', 'Enable', '0000-00-00', '0000-00-00'),
(115, 34, 99, 'Barrackpur', 'Enable', '0000-00-00', '0000-00-00'),
(116, 34, 99, 'Eksara', 'Enable', '0000-00-00', '0000-00-00'),
(117, 34, 99, 'Goaljan', 'Enable', '0000-00-00', '0000-00-00'),
(118, 34, 99, 'Gopinathpur', 'Enable', '0000-00-00', '0000-00-00'),
(119, 34, 99, 'Haldibari', 'Enable', '0000-00-00', '0000-00-00'),
(120, 34, 99, 'Barrackpur Cantonment', 'Enable', '0000-00-00', '0000-00-00'),
(121, 34, 99, 'Harharia Chak', 'Enable', '0000-00-00', '0000-00-00'),
(122, 34, 99, 'Kendua', 'Enable', '0000-00-00', '0000-00-00'),
(123, 34, 99, 'Mayapur', 'Enable', '0000-00-00', '0000-00-00'),
(124, 34, 99, 'Chandannagar', 'Enable', '0000-00-00', '0000-00-00'),
(125, 34, 99, 'Jalpaiguri', 'Enable', '0000-00-00', '0000-00-00'),
(126, 34, 99, 'Siliguri', 'Enable', '0000-00-00', '0000-00-00'),
(127, 34, 99, 'Bishnupur', 'Enable', '0000-00-00', '0000-00-00'),
(128, 34, 99, 'Baduria', 'Enable', '0000-00-00', '0000-00-00'),
(129, 34, 99, 'Gabberia', 'Enable', '0000-00-00', '0000-00-00'),
(130, 34, 99, 'Garalgachha', 'Enable', '0000-00-00', '0000-00-00'),
(131, 34, 99, 'Jafarpur', 'Enable', '0000-00-00', '0000-00-00'),
(132, 34, 99, 'Jhorhat', 'Enable', '0000-00-00', '0000-00-00'),
(133, 34, 99, 'Madanpur', 'Enable', '0000-00-00', '0000-00-00'),
(134, 34, 99, 'Khagrabari', 'Enable', '0000-00-00', '0000-00-00'),
(135, 34, 99, 'Mekhliganj', 'Enable', '0000-00-00', '0000-00-00'),
(136, 34, 99, 'Khantora', 'Enable', '0000-00-00', '0000-00-00'),
(137, 34, 99, 'Kasim Bazar', 'Enable', '0000-00-00', '0000-00-00'),
(138, 34, 99, 'Kshidirpur', 'Enable', '0000-00-00', '0000-00-00'),
(139, 34, 99, 'Barijhati', 'Enable', '0000-00-00', '0000-00-00'),
(140, 34, 99, 'Uttarpara', 'Enable', '0000-00-00', '0000-00-00'),
(141, 34, 99, 'Beldubi', 'Enable', '0000-00-00', '0000-00-00'),
(142, 34, 99, 'Bowali', 'Enable', '0000-00-00', '0000-00-00'),
(143, 34, 99, 'Chapari', 'Enable', '0000-00-00', '0000-00-00'),
(144, 34, 99, 'Char Maijdia', 'Enable', '0000-00-00', '0000-00-00'),
(145, 34, 99, 'Dainhat', 'Enable', '0000-00-00', '0000-00-00'),
(146, 34, 99, 'Dalkhola', 'Enable', '0000-00-00', '0000-00-00'),
(147, 34, 99, 'Deuli', 'Enable', '0000-00-00', '0000-00-00'),
(148, 34, 99, 'Dhupguri', 'Enable', '0000-00-00', '0000-00-00'),
(149, 34, 99, 'Domjur', 'Enable', '0000-00-00', '0000-00-00'),
(150, 34, 99, 'Banupur', 'Enable', '0000-00-00', '0000-00-00'),
(151, 34, 99, 'Farakka Barage Township', 'Enable', '0000-00-00', '0000-00-00'),
(152, 34, 99, 'Gayespur', 'Enable', '0000-00-00', '0000-00-00'),
(153, 34, 99, 'Goasafat', 'Enable', '0000-00-00', '0000-00-00'),
(154, 34, 99, 'Guma', 'Enable', '0000-00-00', '0000-00-00'),
(155, 34, 99, 'Chandannagore', 'Enable', '0000-00-00', '0000-00-00'),
(156, 34, 99, 'Tamluk', 'Enable', '0000-00-00', '0000-00-00'),
(157, 34, 99, 'Ichhapur Defence Estate', 'Enable', '0000-00-00', '0000-00-00'),
(158, 34, 99, 'Kalara', 'Enable', '0000-00-00', '0000-00-00'),
(159, 34, 99, 'Chunchura Town', 'Enable', '0000-00-00', '0000-00-00'),
(160, 34, 99, 'Krishnanagar', 'Enable', '0000-00-00', '0000-00-00'),
(161, 34, 99, 'Asansol', 'Enable', '0000-00-00', '0000-00-00'),
(162, 34, 99, 'Kharimala Khagrabari', 'Enable', '0000-00-00', '0000-00-00'),
(163, 34, 99, 'Bagnan', 'Enable', '0000-00-00', '0000-00-00'),
(164, 34, 99, 'Cooch Behar', 'Enable', '0000-00-00', '0000-00-00'),
(165, 34, 99, 'Garshyamnagar', 'Enable', '0000-00-00', '0000-00-00'),
(166, 34, 99, 'Jagadanandapur', 'Enable', '0000-00-00', '0000-00-00'),
(167, 34, 99, 'Kachu Pukur', 'Enable', '0000-00-00', '0000-00-00'),
(168, 34, 99, 'Mainaguri', 'Enable', '0000-00-00', '0000-00-00'),
(169, 34, 99, 'Maslandapur', 'Enable', '0000-00-00', '0000-00-00'),
(170, 34, 99, 'Kunustara', 'Enable', '0000-00-00', '0000-00-00'),
(171, 34, 99, 'Kantlia', 'Enable', '0000-00-00', '0000-00-00'),
(172, 34, 99, 'Konardihi', 'Enable', '0000-00-00', '0000-00-00'),
(173, 34, 99, 'Kshirpai', 'Enable', '0000-00-00', '0000-00-00'),
(174, 34, 99, 'Barjora', 'Enable', '0000-00-00', '0000-00-00'),
(175, 34, 99, 'Begampur', 'Enable', '0000-00-00', '0000-00-00'),
(176, 34, 99, 'Beliatore', 'Enable', '0000-00-00', '0000-00-00'),
(177, 34, 99, 'Chandpur', 'Enable', '0000-00-00', '0000-00-00'),
(178, 34, 99, 'Chapui', 'Enable', '0000-00-00', '0000-00-00'),
(179, 34, 99, 'Chata Kalikapur', 'Enable', '0000-00-00', '0000-00-00'),
(180, 34, 99, 'Dakshin Baguan', 'Enable', '0000-00-00', '0000-00-00'),
(181, 34, 99, 'Dalurband', 'Enable', '0000-00-00', '0000-00-00'),
(182, 34, 99, 'Dhulian', 'Enable', '0000-00-00', '0000-00-00'),
(183, 34, 99, 'Dhusaripara', 'Enable', '0000-00-00', '0000-00-00'),
(184, 34, 99, 'Dubrajpur', 'Enable', '0000-00-00', '0000-00-00'),
(185, 34, 99, 'Dafahat', 'Enable', '0000-00-00', '0000-00-00'),
(186, 34, 99, 'Durllabhganj', 'Enable', '0000-00-00', '0000-00-00'),
(187, 34, 99, 'Ghorsala', 'Enable', '0000-00-00', '0000-00-00'),
(188, 34, 99, 'Gora Bazar', 'Enable', '0000-00-00', '0000-00-00'),
(189, 34, 99, 'Guskara', 'Enable', '0000-00-00', '0000-00-00'),
(190, 34, 99, 'Bara Bamonia', 'Enable', '0000-00-00', '0000-00-00'),
(191, 34, 99, 'Egra', 'Enable', '0000-00-00', '0000-00-00'),
(192, 34, 99, 'Harishpur', 'Enable', '0000-00-00', '0000-00-00'),
(193, 34, 99, 'Howrah', 'Enable', '0000-00-00', '0000-00-00'),
(194, 33, 99, 'Badrinathpuri', 'Enable', '0000-00-00', '0000-00-00'),
(195, 33, 99, 'Barkot', 'Enable', '0000-00-00', '0000-00-00'),
(196, 33, 99, 'Gadarpur', 'Enable', '0000-00-00', '0000-00-00'),
(197, 33, 99, 'Kela Khera', 'Enable', '0000-00-00', '0000-00-00'),
(198, 33, 99, 'Kichha', 'Enable', '0000-00-00', '0000-00-00'),
(199, 33, 99, 'Dineshpur', 'Enable', '0000-00-00', '0000-00-00'),
(200, 33, 99, 'Dharchula Dehat', 'Enable', '0000-00-00', '0000-00-00'),
(201, 33, 99, 'Bageshwar', 'Enable', '0000-00-00', '0000-00-00'),
(202, 33, 99, 'Pithoragarh', 'Enable', '0000-00-00', '0000-00-00'),
(203, 33, 99, 'Nagla', 'Enable', '0000-00-00', '0000-00-00'),
(204, 33, 99, 'Bugyal', 'Enable', '0000-00-00', '0000-00-00'),
(205, 33, 99, 'Almora', 'Enable', '0000-00-00', '0000-00-00'),
(206, 33, 99, 'Khatima', 'Enable', '0000-00-00', '0000-00-00'),
(207, 33, 99, 'Kachnal Gosain', 'Enable', '0000-00-00', '0000-00-00'),
(208, 33, 99, 'Manglaur', 'Enable', '0000-00-00', '0000-00-00'),
(209, 33, 99, 'Dev Prayag', 'Enable', '0000-00-00', '0000-00-00'),
(210, 33, 99, 'Dogadda', 'Enable', '0000-00-00', '0000-00-00'),
(211, 33, 99, 'Dwarahat', 'Enable', '0000-00-00', '0000-00-00'),
(212, 33, 99, 'Champawat', 'Enable', '0000-00-00', '0000-00-00'),
(213, 33, 99, 'Kaladungi', 'Enable', '0000-00-00', '0000-00-00'),
(214, 33, 99, 'Baijnath', 'Enable', '0000-00-00', '0000-00-00'),
(215, 33, 99, 'Uttarakashi', 'Enable', '0000-00-00', '0000-00-00'),
(216, 33, 99, 'Askot', 'Enable', '0000-00-00', '0000-00-00'),
(217, 33, 99, 'Laksar', 'Enable', '0000-00-00', '0000-00-00'),
(218, 33, 99, 'Kashirampur', 'Enable', '0000-00-00', '0000-00-00'),
(219, 33, 99, 'Didihat', 'Enable', '0000-00-00', '0000-00-00'),
(220, 33, 99, 'Doiwala', 'Enable', '0000-00-00', '0000-00-00'),
(221, 33, 99, 'Gochar', 'Enable', '0000-00-00', '0000-00-00'),
(222, 33, 99, 'Pauri', 'Enable', '0000-00-00', '0000-00-00'),
(223, 33, 99, 'Narendra Nagar', 'Enable', '0000-00-00', '0000-00-00'),
(224, 33, 99, 'Naraini', 'Enable', '0000-00-00', '0000-00-00'),
(225, 32, 99, 'Bisokhar', 'Enable', '0000-00-00', '0000-00-00'),
(226, 32, 99, 'Bisauli', 'Enable', '0000-00-00', '0000-00-00'),
(227, 32, 99, 'Barhalganj', 'Enable', '0000-00-00', '0000-00-00'),
(228, 32, 99, 'Barua Sagar', 'Enable', '0000-00-00', '0000-00-00'),
(229, 32, 99, 'Etawah', 'Enable', '0000-00-00', '0000-00-00'),
(230, 32, 99, 'Sankasya', 'Enable', '0000-00-00', '0000-00-00'),
(231, 32, 99, 'Azamgarh', 'Enable', '0000-00-00', '0000-00-00'),
(232, 32, 99, 'Kausambi', 'Enable', '0000-00-00', '0000-00-00'),
(233, 32, 99, 'Mathura', 'Enable', '0000-00-00', '0000-00-00'),
(234, 32, 99, 'Erich', 'Enable', '0000-00-00', '0000-00-00'),
(235, 32, 99, 'Fatehganj Purvi', 'Enable', '0000-00-00', '0000-00-00'),
(236, 32, 99, 'Gajraula', 'Enable', '0000-00-00', '0000-00-00'),
(237, 32, 99, 'Baragaon', 'Enable', '0000-00-00', '0000-00-00'),
(238, 32, 99, 'Gangoh', 'Enable', '0000-00-00', '0000-00-00'),
(239, 32, 99, 'Garautha', 'Enable', '0000-00-00', '0000-00-00'),
(240, 32, 99, 'Hasanpur', 'Enable', '0000-00-00', '0000-00-00'),
(241, 32, 99, 'Jewar', 'Enable', '0000-00-00', '0000-00-00'),
(242, 32, 99, 'Jhinjhak', 'Enable', '0000-00-00', '0000-00-00'),
(243, 32, 99, 'Jiyanpur', 'Enable', '0000-00-00', '0000-00-00'),
(244, 32, 99, 'Kachhauna Patseni', 'Enable', '0000-00-00', '0000-00-00'),
(245, 32, 99, 'Laharpur', 'Enable', '0000-00-00', '0000-00-00'),
(246, 32, 99, 'Kadipur', 'Enable', '0000-00-00', '0000-00-00'),
(247, 32, 99, 'Kairana', 'Enable', '0000-00-00', '0000-00-00'),
(248, 32, 99, 'Khaga', 'Enable', '0000-00-00', '0000-00-00'),
(249, 32, 99, 'Manjhanpur', 'Enable', '0000-00-00', '0000-00-00'),
(250, 32, 99, 'Marehra', 'Enable', '0000-00-00', '0000-00-00'),
(251, 32, 99, 'Maunath Bhanjan', 'Enable', '0000-00-00', '0000-00-00'),
(252, 32, 99, 'Kunwargaon', 'Enable', '0000-00-00', '0000-00-00'),
(253, 32, 99, 'Mehdawal', 'Enable', '0000-00-00', '0000-00-00'),
(254, 32, 99, 'Milak', 'Enable', '0000-00-00', '0000-00-00'),
(255, 32, 99, 'Mahroni', 'Enable', '0000-00-00', '0000-00-00'),
(256, 32, 99, 'Muradnagar', 'Enable', '0000-00-00', '0000-00-00'),
(257, 32, 99, 'Khekada', 'Enable', '0000-00-00', '0000-00-00'),
(258, 32, 99, 'Karari', 'Enable', '0000-00-00', '0000-00-00'),
(259, 32, 99, 'Katariya', 'Enable', '0000-00-00', '0000-00-00'),
(260, 32, 99, 'Kiratpur', 'Enable', '0000-00-00', '0000-00-00'),
(261, 32, 99, 'Koeripur', 'Enable', '0000-00-00', '0000-00-00'),
(262, 32, 99, 'Koraon', 'Enable', '0000-00-00', '0000-00-00'),
(263, 32, 99, 'Khudaganj', 'Enable', '0000-00-00', '0000-00-00'),
(264, 32, 99, 'Behta Hajipur', 'Enable', '0000-00-00', '0000-00-00'),
(265, 32, 99, 'Chaumuhan', 'Enable', '0000-00-00', '0000-00-00'),
(266, 32, 99, 'Chhutmalpur', 'Enable', '0000-00-00', '0000-00-00'),
(267, 32, 99, 'Daurala', 'Enable', '0000-00-00', '0000-00-00'),
(268, 32, 99, 'Dhaura Tanda', 'Enable', '0000-00-00', '0000-00-00'),
(269, 32, 99, 'Dibai', 'Enable', '0000-00-00', '0000-00-00'),
(270, 32, 99, 'Dohrighat', 'Enable', '0000-00-00', '0000-00-00'),
(271, 32, 99, 'Ekdil', 'Enable', '0000-00-00', '0000-00-00'),
(272, 32, 99, 'Gausganj', 'Enable', '0000-00-00', '0000-00-00'),
(273, 32, 99, 'Ghatampur', 'Enable', '0000-00-00', '0000-00-00'),
(274, 32, 99, 'Ghosia Bazar', 'Enable', '0000-00-00', '0000-00-00'),
(275, 32, 99, 'Gohand', 'Enable', '0000-00-00', '0000-00-00'),
(276, 32, 99, 'Haldaur', 'Enable', '0000-00-00', '0000-00-00'),
(277, 32, 99, 'Gosaiganj', 'Enable', '0000-00-00', '0000-00-00'),
(278, 32, 99, 'Gunnaur', 'Enable', '0000-00-00', '0000-00-00'),
(279, 32, 99, 'Harduaganj', 'Enable', '0000-00-00', '0000-00-00'),
(280, 32, 99, 'Gulaothi', 'Enable', '0000-00-00', '0000-00-00'),
(281, 32, 99, 'Iglas', 'Enable', '0000-00-00', '0000-00-00'),
(282, 32, 99, 'Khutar', 'Enable', '0000-00-00', '0000-00-00'),
(283, 32, 99, 'Kakrala', 'Enable', '0000-00-00', '0000-00-00'),
(284, 32, 99, 'Naraura', 'Enable', '0000-00-00', '0000-00-00'),
(285, 32, 99, 'Budaun', 'Enable', '0000-00-00', '0000-00-00'),
(286, 32, 99, 'Budhana', 'Enable', '0000-00-00', '0000-00-00'),
(287, 32, 99, 'Biswan', 'Enable', '0000-00-00', '0000-00-00'),
(288, 32, 99, 'Begumabad Budhana', 'Enable', '0000-00-00', '0000-00-00'),
(289, 32, 99, 'Barhani Bazar', 'Enable', '0000-00-00', '0000-00-00'),
(290, 32, 99, 'Barware', 'Enable', '0000-00-00', '0000-00-00'),
(291, 32, 99, 'Sarnath', 'Enable', '0000-00-00', '0000-00-00'),
(292, 32, 99, 'Jhansi', 'Enable', '0000-00-00', '0000-00-00'),
(293, 32, 99, 'Bansi', 'Enable', '0000-00-00', '0000-00-00'),
(294, 32, 99, 'Faizganj', 'Enable', '0000-00-00', '0000-00-00'),
(295, 32, 99, 'Fatehganj Pashchimi', 'Enable', '0000-00-00', '0000-00-00'),
(296, 32, 99, 'Gangaghat', 'Enable', '0000-00-00', '0000-00-00'),
(297, 32, 99, 'Ganj Dundwara', 'Enable', '0000-00-00', '0000-00-00'),
(298, 32, 99, 'Islamnagar', 'Enable', '0000-00-00', '0000-00-00'),
(299, 32, 99, 'Harraiya', 'Enable', '0000-00-00', '0000-00-00'),
(300, 32, 99, 'Jhabrera', 'Enable', '0000-00-00', '0000-00-00'),
(301, 32, 99, 'Jhinjhana', 'Enable', '0000-00-00', '0000-00-00'),
(302, 32, 99, 'Jhusi Kohna', 'Enable', '0000-00-00', '0000-00-00'),
(303, 32, 99, 'Kachhla', 'Enable', '0000-00-00', '0000-00-00'),
(304, 32, 99, 'Lakhna', 'Enable', '0000-00-00', '0000-00-00'),
(305, 32, 99, 'Kailashpur', 'Enable', '0000-00-00', '0000-00-00'),
(306, 32, 99, 'Kauriaganj', 'Enable', '0000-00-00', '0000-00-00'),
(307, 32, 99, 'Khailar', 'Enable', '0000-00-00', '0000-00-00'),
(308, 32, 99, 'Mankapur', 'Enable', '0000-00-00', '0000-00-00'),
(309, 32, 99, 'Kundarki', 'Enable', '0000-00-00', '0000-00-00'),
(310, 32, 99, 'Maudaha', 'Enable', '0000-00-00', '0000-00-00'),
(311, 32, 99, 'Mawana', 'Enable', '0000-00-00', '0000-00-00'),
(312, 32, 99, 'Mehnagar', 'Enable', '0000-00-00', '0000-00-00'),
(313, 32, 99, 'Kuraoli', 'Enable', '0000-00-00', '0000-00-00'),
(314, 32, 99, 'Maholi', 'Enable', '0000-00-00', '0000-00-00'),
(315, 32, 99, 'Kusmara', 'Enable', '0000-00-00', '0000-00-00'),
(316, 32, 99, 'Kheragarh', 'Enable', '0000-00-00', '0000-00-00'),
(317, 32, 99, 'Karhal', 'Enable', '0000-00-00', '0000-00-00'),
(318, 32, 99, 'Katghar Lalganj', 'Enable', '0000-00-00', '0000-00-00'),
(319, 32, 99, 'Kirtinagar', 'Enable', '0000-00-00', '0000-00-00'),
(320, 32, 99, 'Kopaganj', 'Enable', '0000-00-00', '0000-00-00'),
(321, 32, 99, 'Kotwa', 'Enable', '0000-00-00', '0000-00-00'),
(322, 32, 99, 'Nehtaur', 'Enable', '0000-00-00', '0000-00-00'),
(323, 32, 99, 'Bugrasi', 'Enable', '0000-00-00', '0000-00-00'),
(324, 32, 99, 'Chhaprauli', 'Enable', '0000-00-00', '0000-00-00'),
(325, 32, 99, 'Dasna', 'Enable', '0000-00-00', '0000-00-00'),
(326, 32, 99, 'Deoria', 'Enable', '0000-00-00', '0000-00-00'),
(327, 32, 99, 'Dhaurehra', 'Enable', '0000-00-00', '0000-00-00'),
(328, 32, 99, 'Dibiyapur', 'Enable', '0000-00-00', '0000-00-00'),
(329, 32, 99, 'Dostpur', 'Enable', '0000-00-00', '0000-00-00'),
(330, 32, 99, 'Gawan', 'Enable', '0000-00-00', '0000-00-00'),
(331, 32, 99, 'Ghazipur', 'Enable', '0000-00-00', '0000-00-00'),
(332, 32, 99, 'Ghosi', 'Enable', '0000-00-00', '0000-00-00'),
(333, 32, 99, 'Ghorawal', 'Enable', '0000-00-00', '0000-00-00'),
(334, 32, 99, 'Hafizpur', 'Enable', '0000-00-00', '0000-00-00'),
(335, 32, 99, 'Gularia Bhindara', 'Enable', '0000-00-00', '0000-00-00'),
(336, 32, 99, 'Gopiganj', 'Enable', '0000-00-00', '0000-00-00'),
(337, 32, 99, 'Gursahaiganj', 'Enable', '0000-00-00', '0000-00-00'),
(338, 32, 99, 'Ibrahimpur', 'Enable', '0000-00-00', '0000-00-00'),
(339, 32, 99, 'Gulariya', 'Enable', '0000-00-00', '0000-00-00'),
(340, 32, 99, 'Iltifatganj Bazar', 'Enable', '0000-00-00', '0000-00-00'),
(341, 32, 99, 'Kakgaina', 'Enable', '0000-00-00', '0000-00-00'),
(342, 32, 99, 'Nanpara', 'Enable', '0000-00-00', '0000-00-00'),
(343, 32, 99, 'Dayal Bagh', 'Enable', '0000-00-00', '0000-00-00'),
(344, 32, 99, 'Nandgaon', 'Enable', '0000-00-00', '0000-00-00'),
(345, 32, 99, 'Bisharatganj', 'Enable', '0000-00-00', '0000-00-00'),
(346, 32, 99, 'Bisalpur', 'Enable', '0000-00-00', '0000-00-00'),
(347, 32, 99, 'Bela Pratapgarh', 'Enable', '0000-00-00', '0000-00-00'),
(348, 32, 99, 'Barkhera', 'Enable', '0000-00-00', '0000-00-00'),
(349, 32, 99, 'Anupshahr', 'Enable', '0000-00-00', '0000-00-00'),
(350, 32, 99, 'Balarampur', 'Enable', '0000-00-00', '0000-00-00'),
(351, 32, 99, 'Bahraich', 'Enable', '0000-00-00', '0000-00-00'),
(352, 32, 99, 'Kapilavastu', 'Enable', '0000-00-00', '0000-00-00'),
(353, 32, 99, 'Dadri', 'Enable', '0000-00-00', '0000-00-00'),
(354, 32, 99, 'Dalmau', 'Enable', '0000-00-00', '0000-00-00'),
(355, 32, 99, 'Chunar', 'Enable', '0000-00-00', '0000-00-00'),
(356, 32, 99, 'Etmadur', 'Enable', '0000-00-00', '0000-00-00'),
(357, 32, 99, 'Fatehgarh', 'Enable', '0000-00-00', '0000-00-00'),
(358, 32, 99, 'Fatehpur Chaurasia', 'Enable', '0000-00-00', '0000-00-00'),
(359, 32, 99, 'Gangapur', 'Enable', '0000-00-00', '0000-00-00'),
(360, 32, 99, 'Ganj Muradabad', 'Enable', '0000-00-00', '0000-00-00'),
(361, 32, 99, 'Itaunja', 'Enable', '0000-00-00', '0000-00-00'),
(362, 32, 99, 'Hasayan', 'Enable', '0000-00-00', '0000-00-00'),
(363, 32, 99, 'Jhalu', 'Enable', '0000-00-00', '0000-00-00'),
(364, 32, 99, 'Kabrai', 'Enable', '0000-00-00', '0000-00-00'),
(365, 32, 99, 'Jhusi', 'Enable', '0000-00-00', '0000-00-00'),
(366, 32, 99, 'Kachhwa', 'Enable', '0000-00-00', '0000-00-00'),
(367, 32, 99, 'Kadaura', 'Enable', '0000-00-00', '0000-00-00'),
(368, 32, 99, 'Lalitpur', 'Enable', '0000-00-00', '0000-00-00'),
(369, 32, 99, 'Malihabad', 'Enable', '0000-00-00', '0000-00-00'),
(370, 32, 99, 'Khair', 'Enable', '0000-00-00', '0000-00-00'),
(371, 32, 99, 'Mariahu', 'Enable', '0000-00-00', '0000-00-00'),
(372, 32, 99, 'Mataundh', 'Enable', '0000-00-00', '0000-00-00'),
(373, 32, 99, 'Mau Aima', 'Enable', '0000-00-00', '0000-00-00'),
(374, 32, 99, 'Maurawan', 'Enable', '0000-00-00', '0000-00-00'),
(375, 32, 99, 'Miranpur', 'Enable', '0000-00-00', '0000-00-00'),
(376, 32, 99, 'Kurthi Jafarpur', 'Enable', '0000-00-00', '0000-00-00'),
(377, 32, 99, 'Musafirkhana', 'Enable', '0000-00-00', '0000-00-00'),
(378, 32, 99, 'Kharela', 'Enable', '0000-00-00', '0000-00-00'),
(379, 32, 99, 'Kaptanganj', 'Enable', '0000-00-00', '0000-00-00'),
(380, 32, 99, 'Kasganj', 'Enable', '0000-00-00', '0000-00-00'),
(381, 32, 99, 'Kiraoli', 'Enable', '0000-00-00', '0000-00-00'),
(382, 32, 99, 'Kishni', 'Enable', '0000-00-00', '0000-00-00'),
(383, 32, 99, 'Kosi Kalan', 'Enable', '0000-00-00', '0000-00-00'),
(384, 32, 99, 'Kheta Sarai', 'Enable', '0000-00-00', '0000-00-00'),
(385, 32, 99, 'Behat', 'Enable', '0000-00-00', '0000-00-00'),
(386, 32, 99, 'Charthaval', 'Enable', '0000-00-00', '0000-00-00'),
(387, 32, 99, 'Chhibramau', 'Enable', '0000-00-00', '0000-00-00'),
(388, 32, 99, 'Dataganj', 'Enable', '0000-00-00', '0000-00-00'),
(389, 32, 99, 'Deoranian', 'Enable', '0000-00-00', '0000-00-00'),
(390, 32, 99, 'Dharoti Khurd', 'Enable', '0000-00-00', '0000-00-00'),
(391, 32, 99, 'Doghat', 'Enable', '0000-00-00', '0000-00-00'),
(392, 32, 99, 'Duddhi', 'Enable', '0000-00-00', '0000-00-00'),
(393, 32, 99, 'Gaura Barhaj', 'Enable', '0000-00-00', '0000-00-00'),
(394, 32, 99, 'Ghiraur', 'Enable', '0000-00-00', '0000-00-00'),
(395, 32, 99, 'Gola Gokarannath', 'Enable', '0000-00-00', '0000-00-00'),
(396, 32, 99, 'Ghughuli', 'Enable', '0000-00-00', '0000-00-00'),
(397, 32, 99, 'Haidergarh', 'Enable', '0000-00-00', '0000-00-00'),
(398, 32, 99, 'Gopamau', 'Enable', '0000-00-00', '0000-00-00'),
(399, 32, 99, 'Gursarai', 'Enable', '0000-00-00', '0000-00-00'),
(400, 32, 99, 'Dulhipur', 'Enable', '0000-00-00', '0000-00-00'),
(401, 32, 99, 'Hariharpur', 'Enable', '0000-00-00', '0000-00-00'),
(402, 32, 99, 'Khadda', 'Enable', '0000-00-00', '0000-00-00'),
(403, 32, 99, 'Kakod', 'Enable', '0000-00-00', '0000-00-00'),
(404, 32, 99, 'Hargaon', 'Enable', '0000-00-00', '0000-00-00'),
(405, 32, 99, 'Deogarh', 'Enable', '0000-00-00', '0000-00-00'),
(406, 32, 99, 'Gokul', 'Enable', '0000-00-00', '0000-00-00'),
(407, 32, 99, 'Muzaffarnagar', 'Enable', '0000-00-00', '0000-00-00'),
(408, 32, 99, 'Shamli', 'Enable', '0000-00-00', '0000-00-00'),
(409, 32, 99, 'Saharanpur', 'Enable', '0000-00-00', '0000-00-00'),
(410, 31, 99, 'Kumarghat', 'Enable', '0000-00-00', '0000-00-00'),
(411, 31, 99, 'Unakoti', 'Enable', '0000-00-00', '0000-00-00'),
(412, 31, 99, 'Dharmanagar', 'Enable', '0000-00-00', '0000-00-00'),
(413, 31, 99, 'Badharghat', 'Enable', '0000-00-00', '0000-00-00'),
(414, 31, 99, 'Gakulnagar', 'Enable', '0000-00-00', '0000-00-00'),
(415, 31, 99, 'Kunjaban', 'Enable', '0000-00-00', '0000-00-00'),
(416, 31, 99, 'Udaipur', 'Enable', '0000-00-00', '0000-00-00'),
(417, 31, 99, 'Jogendranagar', 'Enable', '0000-00-00', '0000-00-00'),
(418, 28, 99, 'Niwai', 'Enable', '0000-00-00', '0000-00-00'),
(419, 28, 99, 'Bari Sadri', 'Enable', '0000-00-00', '0000-00-00'),
(420, 28, 99, 'Bayana', 'Enable', '0000-00-00', '0000-00-00'),
(421, 28, 99, 'Bikaner', 'Enable', '0000-00-00', '0000-00-00'),
(422, 28, 99, 'Deeg', 'Enable', '0000-00-00', '0000-00-00'),
(423, 28, 99, 'Kiranipura', 'Enable', '0000-00-00', '0000-00-00'),
(424, 28, 99, 'Nimbahera', 'Enable', '0000-00-00', '0000-00-00'),
(425, 28, 99, 'Khairthal', 'Enable', '0000-00-00', '0000-00-00'),
(426, 28, 99, 'Manohar Thana', 'Enable', '0000-00-00', '0000-00-00'),
(427, 28, 99, 'Dholpur', 'Enable', '0000-00-00', '0000-00-00'),
(428, 28, 99, 'Laxmangarh', 'Enable', '0000-00-00', '0000-00-00'),
(429, 28, 99, 'Mewar', 'Enable', '0000-00-00', '0000-00-00'),
(430, 28, 99, 'Eklingji', 'Enable', '0000-00-00', '0000-00-00'),
(431, 28, 99, 'Kumbhkot', 'Enable', '0000-00-00', '0000-00-00'),
(432, 28, 99, 'Udaipur.', 'Enable', '0000-00-00', '0000-00-00'),
(433, 28, 99, 'Nainwa', 'Enable', '0000-00-00', '0000-00-00'),
(434, 28, 99, 'Kherliganj', 'Enable', '0000-00-00', '0000-00-00'),
(435, 28, 99, 'Chhoti Sadri', 'Enable', '0000-00-00', '0000-00-00'),
(436, 28, 99, 'Hanumangarh', 'Enable', '0000-00-00', '0000-00-00'),
(437, 28, 99, 'Fatehpur', 'Enable', '0000-00-00', '0000-00-00'),
(438, 28, 99, 'Jodhpur', 'Enable', '0000-00-00', '0000-00-00'),
(439, 28, 99, 'Kota', 'Enable', '0000-00-00', '0000-00-00'),
(440, 28, 99, 'History Of Deeg', 'Enable', '0000-00-00', '0000-00-00'),
(441, 28, 99, 'Nohar', 'Enable', '0000-00-00', '0000-00-00'),
(442, 28, 99, 'Banswara', 'Enable', '0000-00-00', '0000-00-00'),
(443, 28, 99, 'Basni Belima', 'Enable', '0000-00-00', '0000-00-00'),
(444, 28, 99, 'Barmer', 'Enable', '0000-00-00', '0000-00-00'),
(445, 28, 99, 'Fatehnagar', 'Enable', '0000-00-00', '0000-00-00'),
(446, 28, 99, 'Ladnu', 'Enable', '0000-00-00', '0000-00-00'),
(447, 28, 99, 'Dhariawad', 'Enable', '0000-00-00', '0000-00-00'),
(448, 28, 99, 'Kuchaman', 'Enable', '0000-00-00', '0000-00-00'),
(449, 28, 99, 'Mukandgarh', 'Enable', '0000-00-00', '0000-00-00'),
(450, 28, 99, 'Kherli', 'Enable', '0000-00-00', '0000-00-00'),
(451, 28, 99, 'Merta', 'Enable', '0000-00-00', '0000-00-00'),
(452, 28, 99, 'Chhipabarod', 'Enable', '0000-00-00', '0000-00-00'),
(453, 28, 99, 'Kaprain', 'Enable', '0000-00-00', '0000-00-00'),
(454, 28, 99, 'Malpura', 'Enable', '0000-00-00', '0000-00-00'),
(455, 28, 99, 'Ajmer', 'Enable', '0000-00-00', '0000-00-00'),
(456, 28, 99, 'Jobner', 'Enable', '0000-00-00', '0000-00-00'),
(457, 28, 99, 'Kapasan', 'Enable', '0000-00-00', '0000-00-00'),
(458, 28, 99, 'Sriganganagar', 'Enable', '0000-00-00', '0000-00-00'),
(459, 28, 99, 'Gulabpura', 'Enable', '0000-00-00', '0000-00-00'),
(460, 28, 99, 'Nawalgarh', 'Enable', '0000-00-00', '0000-00-00'),
(461, 28, 99, 'Sanganer', 'Enable', '0000-00-00', '0000-00-00'),
(462, 28, 99, 'Jaisalmer', 'Enable', '0000-00-00', '0000-00-00'),
(463, 28, 99, 'Bundi', 'Enable', '0000-00-00', '0000-00-00'),
(464, 28, 99, 'Amber', 'Enable', '0000-00-00', '0000-00-00'),
(465, 28, 99, 'Chittorgarh City', 'Enable', '0000-00-00', '0000-00-00'),
(466, 28, 99, 'Alwar City', 'Enable', '0000-00-00', '0000-00-00'),
(467, 28, 99, 'Chhapar', 'Enable', '0000-00-00', '0000-00-00'),
(468, 28, 99, 'Kekri', 'Enable', '0000-00-00', '0000-00-00'),
(469, 28, 99, 'Mandalgarh', 'Enable', '0000-00-00', '0000-00-00'),
(470, 28, 99, 'Kaithoon', 'Enable', '0000-00-00', '0000-00-00'),
(471, 28, 99, 'Lakheri', 'Enable', '0000-00-00', '0000-00-00'),
(472, 28, 99, 'Osian', 'Enable', '0000-00-00', '0000-00-00'),
(473, 28, 99, 'Kuchera', 'Enable', '0000-00-00', '0000-00-00'),
(474, 28, 99, 'Beejoliya Kalan', 'Enable', '0000-00-00', '0000-00-00'),
(475, 28, 99, 'Jhalawar', 'Enable', '0000-00-00', '0000-00-00'),
(476, 28, 99, 'Kherwara Chhaoni', 'Enable', '0000-00-00', '0000-00-00'),
(477, 28, 99, 'Neem - Ka - Thana', 'Enable', '0000-00-00', '0000-00-00'),
(478, 28, 99, 'Lalsot', 'Enable', '0000-00-00', '0000-00-00'),
(479, 28, 99, 'Kishangarh Renwal', 'Enable', '0000-00-00', '0000-00-00'),
(480, 28, 99, 'Goredi Chancha', 'Enable', '0000-00-00', '0000-00-00'),
(481, 28, 99, 'Mandawa', 'Enable', '0000-00-00', '0000-00-00'),
(482, 28, 99, 'Pushkar', 'Enable', '0000-00-00', '0000-00-00'),
(483, 28, 99, 'Dhundhar', 'Enable', '0000-00-00', '0000-00-00'),
(484, 28, 99, 'Shekhawati Region', 'Enable', '0000-00-00', '0000-00-00'),
(485, 27, 99, 'Chandipur', 'Enable', '0000-00-00', '0000-00-00'),
(486, 27, 99, 'Konark', 'Enable', '0000-00-00', '0000-00-00'),
(487, 27, 99, 'Phulabani', 'Enable', '0000-00-00', '0000-00-00'),
(488, 27, 99, 'Similipal', 'Enable', '0000-00-00', '0000-00-00'),
(489, 27, 99, 'Boudh', 'Enable', '0000-00-00', '0000-00-00'),
(490, 27, 99, 'Barapali', 'Enable', '0000-00-00', '0000-00-00'),
(491, 27, 99, 'Balangir', 'Enable', '0000-00-00', '0000-00-00'),
(492, 27, 99, 'Jeypore', 'Enable', '0000-00-00', '0000-00-00'),
(493, 27, 99, 'Kavisuryanagar', 'Enable', '0000-00-00', '0000-00-00'),
(494, 27, 99, 'Karanjia', 'Enable', '0000-00-00', '0000-00-00'),
(495, 27, 99, 'Belagachhia', 'Enable', '0000-00-00', '0000-00-00'),
(496, 27, 99, 'Chandili', 'Enable', '0000-00-00', '0000-00-00'),
(497, 27, 99, 'Daitari', 'Enable', '0000-00-00', '0000-00-00'),
(498, 27, 99, 'Digapahandi', 'Enable', '0000-00-00', '0000-00-00'),
(499, 27, 99, 'Gunupur', 'Enable', '0000-00-00', '0000-00-00'),
(500, 27, 99, 'Nimapada', 'Enable', '0000-00-00', '0000-00-00'),
(501, 27, 99, 'Bhawanipatna', 'Enable', '0000-00-00', '0000-00-00'),
(502, 27, 99, 'Koraput', 'Enable', '0000-00-00', '0000-00-00'),
(503, 27, 99, 'Puri', 'Enable', '0000-00-00', '0000-00-00'),
(504, 27, 99, 'Baripada', 'Enable', '0000-00-00', '0000-00-00'),
(505, 27, 99, 'Basudebpur', 'Enable', '0000-00-00', '0000-00-00'),
(506, 27, 99, 'Deogarh.', 'Enable', '0000-00-00', '0000-00-00'),
(507, 27, 99, 'Barbil', 'Enable', '0000-00-00', '0000-00-00'),
(508, 27, 99, 'Khariar', 'Enable', '0000-00-00', '0000-00-00'),
(509, 27, 99, 'Jhumpura', 'Enable', '0000-00-00', '0000-00-00'),
(510, 27, 99, 'Kantabanji', 'Enable', '0000-00-00', '0000-00-00'),
(511, 27, 99, 'Kashinagara', 'Enable', '0000-00-00', '0000-00-00'),
(512, 27, 99, 'Brajarajnagar', 'Enable', '0000-00-00', '0000-00-00'),
(513, 27, 99, 'Byasanagar', 'Enable', '0000-00-00', '0000-00-00'),
(514, 27, 99, 'Chikiti', 'Enable', '0000-00-00', '0000-00-00'),
(515, 27, 99, 'Dhenkanal', 'Enable', '0000-00-00', '0000-00-00'),
(516, 27, 99, 'Fertilizer Corporation of India Township', 'Enable', '0000-00-00', '0000-00-00'),
(517, 27, 99, 'Patnagarh', 'Enable', '0000-00-00', '0000-00-00'),
(518, 27, 99, 'Gopalpur On Sea', 'Enable', '0000-00-00', '0000-00-00'),
(519, 27, 99, 'Malkangiri', 'Enable', '0000-00-00', '0000-00-00'),
(520, 27, 99, 'Raurkela', 'Enable', '0000-00-00', '0000-00-00'),
(521, 27, 99, 'Talcher', 'Enable', '0000-00-00', '0000-00-00'),
(522, 27, 99, 'Bargarh', 'Enable', '0000-00-00', '0000-00-00'),
(523, 27, 99, 'Cuttack', 'Enable', '0000-00-00', '0000-00-00'),
(524, 27, 99, 'G.Udayagiri', 'Enable', '0000-00-00', '0000-00-00'),
(525, 27, 99, 'Joda', 'Enable', '0000-00-00', '0000-00-00'),
(526, 27, 99, 'Kantilo', 'Enable', '0000-00-00', '0000-00-00'),
(527, 27, 99, 'Kodala', 'Enable', '0000-00-00', '0000-00-00'),
(528, 27, 99, 'Buguda', 'Enable', '0000-00-00', '0000-00-00'),
(529, 27, 99, 'Charibatia', 'Enable', '0000-00-00', '0000-00-00'),
(530, 27, 99, 'Deracolliery Township', 'Enable', '0000-00-00', '0000-00-00'),
(531, 27, 99, 'Ghantapada', 'Enable', '0000-00-00', '0000-00-00'),
(532, 27, 99, 'Kalahandi', 'Enable', '0000-00-00', '0000-00-00'),
(533, 27, 99, 'Berhampur', 'Enable', '0000-00-00', '0000-00-00'),
(534, 29, 99, 'Mangan', 'Enable', '0000-00-00', '0000-00-00'),
(535, 29, 99, 'Rabdentse', 'Enable', '0000-00-00', '0000-00-00'),
(536, 29, 99, 'Namchi', 'Enable', '0000-00-00', '0000-00-00'),
(537, 29, 99, 'Ghezing', 'Enable', '0000-00-00', '0000-00-00'),
(538, 26, 99, 'Mokokchung', 'Enable', '0000-00-00', '0000-00-00'),
(539, 26, 99, 'Mon', 'Enable', '0000-00-00', '0000-00-00'),
(540, 26, 99, 'Wokha', 'Enable', '0000-00-00', '0000-00-00'),
(541, 25, 99, 'Lawngtlai', 'Enable', '0000-00-00', '0000-00-00'),
(542, 25, 99, 'Khawhai', 'Enable', '0000-00-00', '0000-00-00'),
(543, 25, 99, 'Lunglei', 'Enable', '0000-00-00', '0000-00-00'),
(544, 25, 99, 'Khawzawl', 'Enable', '0000-00-00', '0000-00-00'),
(545, 25, 99, 'Mamit', 'Enable', '0000-00-00', '0000-00-00'),
(546, 24, 99, 'Baghmara', 'Enable', '0000-00-00', '0000-00-00'),
(547, 24, 99, 'Cherrapunji', 'Enable', '0000-00-00', '0000-00-00'),
(548, 24, 99, 'Cherrapunjee', 'Enable', '0000-00-00', '0000-00-00'),
(549, 24, 99, 'Nongthymmai', 'Enable', '0000-00-00', '0000-00-00'),
(550, 24, 99, 'Mairang', 'Enable', '0000-00-00', '0000-00-00'),
(551, 23, 99, 'Ningthoukhong', 'Enable', '0000-00-00', '0000-00-00'),
(552, 23, 99, 'Moirang', 'Enable', '0000-00-00', '0000-00-00'),
(553, 23, 99, 'Jiribam', 'Enable', '0000-00-00', '0000-00-00'),
(554, 23, 99, 'Nambol', 'Enable', '0000-00-00', '0000-00-00'),
(555, 23, 99, 'Moreh', 'Enable', '0000-00-00', '0000-00-00'),
(556, 23, 99, 'Bishnupur.', 'Enable', '0000-00-00', '0000-00-00'),
(557, 23, 99, 'Mayang Imphal', 'Enable', '0000-00-00', '0000-00-00'),
(558, 23, 99, 'Naoriya Pakhanglakpa', 'Enable', '0000-00-00', '0000-00-00'),
(559, 23, 99, 'Churachandpur', 'Enable', '0000-00-00', '0000-00-00'),
(560, 23, 99, 'Ukhrul', 'Enable', '0000-00-00', '0000-00-00'),
(561, 23, 99, 'Khongman', 'Enable', '0000-00-00', '0000-00-00'),
(563, 1, 99, 'Ganaur', 'Enable', '0000-00-00', '0000-00-00'),
(564, 1, 99, 'Mandi Dabwali', 'Enable', '0000-00-00', '0000-00-00'),
(565, 1, 99, 'Kardhan', 'Enable', '0000-00-00', '0000-00-00'),
(566, 1, 99, 'Buria', 'Enable', '0000-00-00', '0000-00-00'),
(567, 1, 99, 'Gohana', 'Enable', '0000-00-00', '0000-00-00'),
(568, 1, 99, 'Kalan Wali', 'Enable', '0000-00-00', '0000-00-00'),
(569, 1, 99, 'Narnaund', 'Enable', '0000-00-00', '0000-00-00'),
(570, 1, 99, 'Babiyal', 'Enable', '0000-00-00', '0000-00-00'),
(571, 1, 99, 'Chhachhrauli', 'Enable', '0000-00-00', '0000-00-00'),
(572, 1, 99, 'Hassanpur', 'Enable', '0000-00-00', '0000-00-00'),
(573, 1, 99, 'Mustafabad', 'Enable', '0000-00-00', '0000-00-00'),
(574, 1, 99, 'Barwala', 'Enable', '0000-00-00', '0000-00-00'),
(575, 1, 99, 'Dharuhera', 'Enable', '0000-00-00', '0000-00-00'),
(576, 1, 99, 'Haileymandi', 'Enable', '0000-00-00', '0000-00-00'),
(577, 1, 99, 'Kalayat', 'Enable', '0000-00-00', '0000-00-00'),
(578, 1, 99, 'Narnaul', 'Enable', '0000-00-00', '0000-00-00'),
(579, 1, 99, 'Farrukhnagar', 'Enable', '0000-00-00', '0000-00-00'),
(580, 1, 99, 'Ladwa', 'Enable', '0000-00-00', '0000-00-00'),
(581, 1, 99, 'Kansepur', 'Enable', '0000-00-00', '0000-00-00'),
(582, 1, 99, 'Bawani Khera', 'Enable', '0000-00-00', '0000-00-00'),
(583, 1, 99, 'Gharaunda', 'Enable', '0000-00-00', '0000-00-00'),
(584, 1, 99, 'Naraingarh', 'Enable', '0000-00-00', '0000-00-00'),
(587, 22, 99, 'Birwadi', 'Enable', '0000-00-00', '0000-00-00'),
(588, 22, 99, 'Akola', 'Enable', '0000-00-00', '0000-00-00'),
(589, 22, 99, 'Faizpur', 'Enable', '0000-00-00', '0000-00-00'),
(590, 22, 99, 'Ganeshpur', 'Enable', '0000-00-00', '0000-00-00'),
(591, 22, 99, 'Kabnur', 'Enable', '0000-00-00', '0000-00-00'),
(592, 22, 99, 'Maindargi', 'Enable', '0000-00-00', '0000-00-00'),
(593, 22, 99, 'Mangalvedhe', 'Enable', '0000-00-00', '0000-00-00'),
(594, 22, 99, 'Morshi', 'Enable', '0000-00-00', '0000-00-00'),
(595, 22, 99, 'Satara', 'Enable', '0000-00-00', '0000-00-00'),
(596, 22, 99, 'Kondumal', 'Enable', '0000-00-00', '0000-00-00'),
(597, 22, 99, 'Kopharad', 'Enable', '0000-00-00', '0000-00-00'),
(598, 22, 99, 'Beed', 'Enable', '0000-00-00', '0000-00-00'),
(599, 22, 99, 'Chandur bazaar', 'Enable', '0000-00-00', '0000-00-00'),
(600, 22, 99, 'Chicholi', 'Enable', '0000-00-00', '0000-00-00'),
(601, 22, 99, 'Dattapur Dhamangaon', 'Enable', '0000-00-00', '0000-00-00'),
(602, 22, 99, 'Daulatabad', 'Enable', '0000-00-00', '0000-00-00'),
(603, 22, 99, 'Deoli', 'Enable', '0000-00-00', '0000-00-00'),
(604, 22, 99, 'Devgarh', 'Enable', '0000-00-00', '0000-00-00'),
(605, 22, 99, 'Dhatau', 'Enable', '0000-00-00', '0000-00-00'),
(606, 22, 99, 'Dombivli', 'Enable', '0000-00-00', '0000-00-00'),
(607, 22, 99, 'Ulhasnagar', 'Enable', '0000-00-00', '0000-00-00'),
(608, 22, 99, 'Borivali', 'Enable', '0000-00-00', '0000-00-00'),
(609, 22, 99, 'Eklahare', 'Enable', '0000-00-00', '0000-00-00'),
(610, 22, 99, 'Ghoti Budruk', 'Enable', '0000-00-00', '0000-00-00'),
(611, 22, 99, 'Godoli', 'Enable', '0000-00-00', '0000-00-00'),
(612, 22, 99, 'Gevrai', 'Enable', '0000-00-00', '0000-00-00'),
(613, 22, 99, 'Kalamnuri', 'Enable', '0000-00-00', '0000-00-00'),
(614, 22, 99, 'Nagardeole', 'Enable', '0000-00-00', '0000-00-00'),
(615, 22, 99, 'Nilanga', 'Enable', '0000-00-00', '0000-00-00'),
(616, 22, 99, 'Tourist places around Murud', 'Enable', '0000-00-00', '0000-00-00'),
(617, 22, 99, 'Kalameshwar', 'Enable', '0000-00-00', '0000-00-00'),
(618, 22, 99, 'Dhule', 'Enable', '0000-00-00', '0000-00-00'),
(619, 22, 99, 'Murud', 'Enable', '0000-00-00', '0000-00-00'),
(620, 22, 99, 'Bhushangad', 'Enable', '0000-00-00', '0000-00-00'),
(621, 22, 99, 'Paithan', 'Enable', '0000-00-00', '0000-00-00'),
(622, 22, 99, 'Ambejogai', 'Enable', '0000-00-00', '0000-00-00'),
(623, 22, 99, 'Kusgaon Budruk', 'Enable', '0000-00-00', '0000-00-00'),
(624, 22, 99, 'Gadchiroli', 'Enable', '0000-00-00', '0000-00-00'),
(625, 22, 99, 'Gangakhed', 'Enable', '0000-00-00', '0000-00-00'),
(626, 22, 99, 'Jintur', 'Enable', '0000-00-00', '0000-00-00'),
(627, 22, 99, 'Malkapur', 'Enable', '0000-00-00', '0000-00-00'),
(628, 22, 99, 'Kundalwadi', 'Enable', '0000-00-00', '0000-00-00'),
(629, 22, 99, 'Kurduvadi', 'Enable', '0000-00-00', '0000-00-00'),
(630, 22, 99, 'Katai', 'Enable', '0000-00-00', '0000-00-00'),
(631, 22, 99, 'Kodoli', 'Enable', '0000-00-00', '0000-00-00'),
(632, 22, 99, 'Kherdi', 'Enable', '0000-00-00', '0000-00-00'),
(633, 22, 99, 'Budhgaon', 'Enable', '0000-00-00', '0000-00-00'),
(634, 22, 99, 'Chandur', 'Enable', '0000-00-00', '0000-00-00'),
(635, 22, 99, 'Sangli', 'Enable', '0000-00-00', '0000-00-00'),
(636, 22, 99, 'Darwha', 'Enable', '0000-00-00', '0000-00-00'),
(637, 22, 99, 'Davlameti', 'Enable', '0000-00-00', '0000-00-00'),
(638, 22, 99, 'Desaiganj', 'Enable', '0000-00-00', '0000-00-00'),
(639, 22, 99, 'Deolali Pravara', 'Enable', '0000-00-00', '0000-00-00'),
(640, 22, 99, 'Dharur', 'Enable', '0000-00-00', '0000-00-00'),
(641, 22, 99, 'Dudhani', 'Enable', '0000-00-00', '0000-00-00'),
(642, 22, 99, 'Virar', 'Enable', '0000-00-00', '0000-00-00'),
(643, 22, 99, 'Bhiwandi', 'Enable', '0000-00-00', '0000-00-00'),
(644, 22, 99, 'Ghatanji', 'Enable', '0000-00-00', '0000-00-00'),
(645, 22, 99, 'Ghugus', 'Enable', '0000-00-00', '0000-00-00'),
(646, 22, 99, 'Hadgaon', 'Enable', '0000-00-00', '0000-00-00'),
(647, 22, 99, 'Indapur', 'Enable', '0000-00-00', '0000-00-00'),
(648, 22, 99, 'Narkhed', 'Enable', '0000-00-00', '0000-00-00'),
(649, 22, 99, 'Nagothana', 'Enable', '0000-00-00', '0000-00-00'),
(650, 22, 99, 'Nildoh', 'Enable', '0000-00-00', '0000-00-00'),
(651, 22, 99, 'Murud-Janjira', 'Enable', '0000-00-00', '0000-00-00'),
(652, 22, 99, 'Aurangabad', 'Enable', '0000-00-00', '0000-00-00'),
(653, 22, 99, 'Karli', 'Enable', '0000-00-00', '0000-00-00'),
(654, 22, 99, 'Brahmapuri', 'Enable', '0000-00-00', '0000-00-00'),
(655, 22, 99, 'Ambarnath', 'Enable', '0000-00-00', '0000-00-00'),
(656, 22, 99, 'Erandol', 'Enable', '0000-00-00', '0000-00-00'),
(657, 22, 99, 'Gadhinglaj', 'Enable', '0000-00-00', '0000-00-00'),
(658, 22, 99, 'Gangapur.', 'Enable', '0000-00-00', '0000-00-00'),
(659, 22, 99, 'Katkar', 'Enable', '0000-00-00', '0000-00-00'),
(660, 22, 99, 'Malvan', 'Enable', '0000-00-00', '0000-00-00'),
(661, 22, 99, 'Mhasla', 'Enable', '0000-00-00', '0000-00-00'),
(662, 22, 99, 'Karanja', 'Enable', '0000-00-00', '0000-00-00'),
(663, 22, 99, 'Kinwat', 'Enable', '0000-00-00', '0000-00-00'),
(664, 22, 99, 'Korochi', 'Enable', '0000-00-00', '0000-00-00'),
(665, 22, 99, 'Kolhapur', 'Enable', '0000-00-00', '0000-00-00'),
(666, 22, 99, 'Buldhana', 'Enable', '0000-00-00', '0000-00-00'),
(667, 22, 99, 'Shegaon', 'Enable', '0000-00-00', '0000-00-00'),
(668, 22, 99, 'Chikhli', 'Enable', '0000-00-00', '0000-00-00'),
(669, 22, 99, 'Daryapur', 'Enable', '0000-00-00', '0000-00-00'),
(670, 22, 99, 'Deglur', 'Enable', '0000-00-00', '0000-00-00'),
(671, 22, 99, 'Deulgaon Raja', 'Enable', '0000-00-00', '0000-00-00'),
(672, 22, 99, 'Deori', 'Enable', '0000-00-00', '0000-00-00'),
(673, 22, 99, 'Digdoh', 'Enable', '0000-00-00', '0000-00-00'),
(674, 22, 99, 'Dombivili', 'Enable', '0000-00-00', '0000-00-00'),
(675, 22, 99, 'Dharangaon', 'Enable', '0000-00-00', '0000-00-00'),
(676, 22, 99, 'Dharmabad', 'Enable', '0000-00-00', '0000-00-00'),
(677, 22, 99, 'Gondia', 'Enable', '0000-00-00', '0000-00-00'),
(678, 22, 99, 'Ghulewadi', 'Enable', '0000-00-00', '0000-00-00'),
(679, 22, 99, 'Ichalkaranji', 'Enable', '0000-00-00', '0000-00-00'),
(680, 22, 99, 'Kalambe Turf Thane', 'Enable', '0000-00-00', '0000-00-00'),
(681, 22, 99, 'Nashik', 'Enable', '0000-00-00', '0000-00-00'),
(682, 22, 99, 'Nagpur', 'Enable', '0000-00-00', '0000-00-00'),
(683, 22, 99, 'Alibaug', 'Enable', '0000-00-00', '0000-00-00'),
(684, 22, 99, 'Bordi', 'Enable', '0000-00-00', '0000-00-00'),
(685, 22, 99, 'Jalgaon', 'Enable', '0000-00-00', '0000-00-00'),
(686, 22, 99, 'Mumbai', 'Enable', '0000-00-00', '0000-00-00'),
(687, 22, 99, 'Nanded', 'Enable', '0000-00-00', '0000-00-00'),
(688, 22, 99, 'Ahmednagar', 'Enable', '0000-00-00', '0000-00-00'),
(690, 3, 99, 'Barnala', 'Enable', '0000-00-00', '0000-00-00'),
(691, 3, 99, 'Ahmedgarh', 'Enable', '0000-00-00', '0000-00-00'),
(692, 3, 99, 'Badhni Kalan', 'Enable', '0000-00-00', '0000-00-00'),
(693, 3, 99, 'Gardhiwala', 'Enable', '0000-00-00', '0000-00-00'),
(694, 3, 99, 'Makhu', 'Enable', '0000-00-00', '0000-00-00'),
(695, 3, 99, 'Moonak', 'Enable', '0000-00-00', '0000-00-00'),
(696, 3, 99, 'Khem Karan', 'Enable', '0000-00-00', '0000-00-00'),
(697, 3, 99, 'Nehon', 'Enable', '0000-00-00', '0000-00-00'),
(698, 3, 99, 'Doraha', 'Enable', '0000-00-00', '0000-00-00'),
(699, 3, 99, 'Dharamkot', 'Enable', '0000-00-00', '0000-00-00'),
(700, 3, 99, 'Ghanaur', 'Enable', '0000-00-00', '0000-00-00'),
(701, 3, 99, 'Guru Har Sahai', 'Enable', '0000-00-00', '0000-00-00'),
(702, 3, 99, 'Malerkotla', 'Enable', '0000-00-00', '0000-00-00'),
(703, 3, 99, 'Anandpur Sahib', 'Enable', '0000-00-00', '0000-00-00'),
(704, 3, 99, 'Patiala', 'Enable', '0000-00-00', '0000-00-00'),
(705, 3, 99, 'Beas', 'Enable', '0000-00-00', '0000-00-00'),
(706, 3, 99, 'Bassi Pathana', 'Enable', '0000-00-00', '0000-00-00'),
(707, 3, 99, 'Jalandara', 'Enable', '0000-00-00', '0000-00-00'),
(708, 3, 99, 'Faridkot', 'Enable', '0000-00-00', '0000-00-00'),
(709, 3, 99, 'Fatehgarh Churian', 'Enable', '0000-00-00', '0000-00-00'),
(710, 3, 99, 'Garhshanker', 'Enable', '0000-00-00', '0000-00-00'),
(711, 3, 99, 'Malout', 'Enable', '0000-00-00', '0000-00-00'),
(712, 3, 99, 'Muktsar', 'Enable', '0000-00-00', '0000-00-00'),
(713, 3, 99, 'Kot Fatta', 'Enable', '0000-00-00', '0000-00-00'),
(714, 3, 99, 'Budha Theh', 'Enable', '0000-00-00', '0000-00-00'),
(715, 3, 99, 'Dasuya', 'Enable', '0000-00-00', '0000-00-00'),
(716, 3, 99, 'Dhilwan', 'Enable', '0000-00-00', '0000-00-00'),
(717, 3, 99, 'Gidderbaha', 'Enable', '0000-00-00', '0000-00-00'),
(718, 3, 99, 'Batala', 'Enable', '0000-00-00', '0000-00-00'),
(719, 3, 99, 'Fazilka', 'Enable', '0000-00-00', '0000-00-00'),
(720, 3, 99, 'Taxila', 'Enable', '0000-00-00', '0000-00-00'),
(721, 3, 99, 'Bariwala', 'Enable', '0000-00-00', '0000-00-00'),
(722, 3, 99, 'Amloh', 'Enable', '0000-00-00', '0000-00-00'),
(723, 3, 99, 'Firozpur', 'Enable', '0000-00-00', '0000-00-00'),
(724, 3, 99, 'Abohar', 'Enable', '0000-00-00', '0000-00-00'),
(725, 3, 99, 'Firozpur Cantonment', 'Enable', '0000-00-00', '0000-00-00'),
(726, 3, 99, 'Lehragaga', 'Enable', '0000-00-00', '0000-00-00'),
(727, 3, 99, 'Khanauri', 'Enable', '0000-00-00', '0000-00-00'),
(728, 3, 99, 'Mukerian', 'Enable', '0000-00-00', '0000-00-00'),
(729, 3, 99, 'Kot Kapura', 'Enable', '0000-00-00', '0000-00-00'),
(730, 3, 99, 'Budhlada', 'Enable', '0000-00-00', '0000-00-00'),
(731, 3, 99, 'Dera Bassi', 'Enable', '0000-00-00', '0000-00-00'),
(732, 3, 99, 'Ghagga', 'Enable', '0000-00-00', '0000-00-00'),
(733, 3, 99, 'Goraya', 'Enable', '0000-00-00', '0000-00-00'),
(734, 3, 99, 'Dirba', 'Enable', '0000-00-00', '0000-00-00'),
(735, 3, 99, 'Chandigarh', 'Enable', '0000-00-00', '0000-00-00'),
(736, 4, 99, 'Bhuj', 'Enable', '0000-00-00', '0000-00-00'),
(737, 4, 99, 'Bavla', 'Enable', '0000-00-00', '0000-00-00'),
(738, 4, 99, 'Dholavira', 'Enable', '0000-00-00', '0000-00-00'),
(739, 4, 99, 'Anand', 'Enable', '0000-00-00', '0000-00-00'),
(740, 4, 99, 'Damnagar', 'Enable', '0000-00-00', '0000-00-00'),
(741, 4, 99, 'Dahegam', 'Enable', '0000-00-00', '0000-00-00'),
(742, 4, 99, 'Chandkheda', 'Enable', '0000-00-00', '0000-00-00'),
(743, 4, 99, 'Vallabhi', 'Enable', '0000-00-00', '0000-00-00'),
(744, 4, 99, 'Vadodara', 'Enable', '0000-00-00', '0000-00-00'),
(745, 4, 99, 'Gariadhar', 'Enable', '0000-00-00', '0000-00-00'),
(746, 4, 99, 'Kadodara', 'Enable', '0000-00-00', '0000-00-00'),
(747, 4, 99, 'Mithapur', 'Enable', '0000-00-00', '0000-00-00'),
(748, 4, 99, 'Kanodar', 'Enable', '0000-00-00', '0000-00-00'),
(749, 4, 99, 'Kodinar', 'Enable', '0000-00-00', '0000-00-00'),
(750, 4, 0, 'Dhola', 'Enable', '0000-00-00', '0000-00-00'),
(751, 4, 0, 'Dhrol', 'Enable', '0000-00-00', '0000-00-00'),
(752, 4, 0, 'Ghogha', 'Enable', '0000-00-00', '0000-00-00'),
(753, 4, 0, 'Ichchhapor', 'Enable', '0000-00-00', '0000-00-00'),
(754, 4, 0, 'Kalavad', 'Enable', '0000-00-00', '0000-00-00'),
(755, 4, 0, 'Jamnagar', 'Enable', '0000-00-00', '0000-00-00'),
(756, 4, 0, 'Navsari', 'Enable', '0000-00-00', '0000-00-00'),
(757, 4, 0, 'Patan', 'Enable', '0000-00-00', '0000-00-00'),
(758, 5, 99, 'Nirmali', 'Enable', '0000-00-00', '0000-00-00'),
(759, 4, 0, 'Halol', 'Enable', '0000-00-00', '0000-00-00'),
(760, 5, 99, 'Kishanganj', 'Enable', '0000-00-00', '0000-00-00'),
(761, 5, 99, 'Magadha', 'Enable', '0000-00-00', '0000-00-00'),
(762, 5, 99, 'Bagaha', 'Enable', '0000-00-00', '0000-00-00'),
(763, 5, 99, 'Barbigha', 'Enable', '0000-00-00', '0000-00-00'),
(764, 4, 0, 'Boriavi', 'Enable', '0000-00-00', '0000-00-00'),
(765, 5, 99, 'Jogbani', 'Enable', '0000-00-00', '0000-00-00'),
(766, 5, 99, 'Mairwa', 'Enable', '0000-00-00', '0000-00-00'),
(767, 5, 99, 'Manihari', 'Enable', '0000-00-00', '0000-00-00'),
(768, 5, 99, 'Mirganj', 'Enable', '0000-00-00', '0000-00-00'),
(769, 5, 99, 'Kanti', 'Enable', '0000-00-00', '0000-00-00'),
(770, 4, 0, 'Bagasara', 'Enable', '0000-00-00', '0000-00-00'),
(771, 5, 99, 'Buxar', 'Enable', '0000-00-00', '0000-00-00'),
(772, 4, 0, 'Lothal', 'Enable', '0000-00-00', '0000-00-00'),
(773, 5, 99, 'Ghogardiha', 'Enable', '0000-00-00', '0000-00-00'),
(774, 4, 0, 'Chhatral INA', 'Enable', '0000-00-00', '0000-00-00'),
(775, 5, 99, 'Dinapur Cantonment', 'Enable', '0000-00-00', '0000-00-00'),
(776, 4, 0, 'Hajira INA', 'Enable', '0000-00-00', '0000-00-00'),
(777, 4, 0, 'Chanod', 'Enable', '0000-00-00', '0000-00-00'),
(778, 5, 99, 'Aurangabad.', 'Enable', '0000-00-00', '0000-00-00'),
(779, 5, 99, 'Nirsa', 'Enable', '0000-00-00', '0000-00-00'),
(780, 4, 0, 'Chhota Udaipur', 'Enable', '0000-00-00', '0000-00-00'),
(781, 5, 99, 'Vaishali', 'Enable', '0000-00-00', '0000-00-00'),
(782, 4, 0, 'Udvada', 'Enable', '0000-00-00', '0000-00-00'),
(783, 5, 99, 'Begusarai', 'Enable', '0000-00-00', '0000-00-00'),
(784, 5, 99, 'Barauli', 'Enable', '0000-00-00', '0000-00-00'),
(785, 4, 0, 'Gadhada', 'Enable', '0000-00-00', '0000-00-00'),
(786, 5, 99, 'Barahiya', 'Enable', '0000-00-00', '0000-00-00'),
(787, 4, 0, 'Jafrabad', 'Enable', '0000-00-00', '0000-00-00'),
(788, 5, 99, 'Lalganj', 'Enable', '0000-00-00', '0000-00-00'),
(789, 4, 0, 'Khambhalia', 'Enable', '0000-00-00', '0000-00-00'),
(790, 5, 99, 'Khagaul', 'Enable', '0000-00-00', '0000-00-00'),
(791, 5, 99, 'Marhaura', 'Enable', '0000-00-00', '0000-00-00'),
(792, 4, 0, 'Mundra', 'Enable', '0000-00-00', '0000-00-00'),
(793, 5, 99, 'Mohiuddinagar', 'Enable', '0000-00-00', '0000-00-00'),
(794, 4, 0, 'Kapadvanj', 'Enable', '0000-00-00', '0000-00-00'),
(795, 5, 99, 'Kataiya', 'Enable', '0000-00-00', '0000-00-00'),
(796, 5, 99, 'Chanpatia', 'Enable', '0000-00-00', '0000-00-00'),
(797, 5, 99, 'Samastipur', 'Enable', '0000-00-00', '0000-00-00'),
(798, 5, 99, 'Dinapur Nizamat', 'Enable', '0000-00-00', '0000-00-00'),
(799, 5, 99, 'Gogri Jamalpur', 'Enable', '0000-00-00', '0000-00-00'),
(800, 5, 99, 'Khusrupur', 'Enable', '0000-00-00', '0000-00-00');
INSERT INTO `city` (`id`, `pid`, `country_id`, `name`, `status`, `adddate`, `editdate`) VALUES
(801, 4, 0, 'Kosamba', 'Enable', '0000-00-00', '0000-00-00'),
(802, 5, 99, 'Bodh Gaya', 'Enable', '0000-00-00', '0000-00-00'),
(803, 5, 99, 'Palamau', 'Enable', '0000-00-00', '0000-00-00'),
(804, 4, 0, 'Deesa', 'Enable', '0000-00-00', '0000-00-00'),
(805, 5, 99, 'Pataliputra', 'Enable', '0000-00-00', '0000-00-00'),
(806, 4, 0, 'Dholka', 'Enable', '0000-00-00', '0000-00-00'),
(807, 5, 99, 'Behea', 'Enable', '0000-00-00', '0000-00-00'),
(808, 4, 0, 'Freelandgunj', 'Enable', '0000-00-00', '0000-00-00'),
(809, 4, 0, 'Bodeli', 'Enable', '0000-00-00', '0000-00-00'),
(810, 5, 99, 'Barauni', 'Enable', '0000-00-00', '0000-00-00'),
(811, 5, 99, 'Jhajha', 'Enable', '0000-00-00', '0000-00-00'),
(812, 4, 0, 'Junagadh', 'Enable', '0000-00-00', '0000-00-00'),
(813, 5, 99, 'Makhdumpur', 'Enable', '0000-00-00', '0000-00-00'),
(814, 4, 0, 'Valsad', 'Enable', '0000-00-00', '0000-00-00'),
(815, 5, 99, 'Maner', 'Enable', '0000-00-00', '0000-00-00'),
(816, 5, 99, 'Masaurhi', 'Enable', '0000-00-00', '0000-00-00'),
(817, 4, 0, 'Vadnagar', 'Enable', '0000-00-00', '0000-00-00'),
(818, 5, 99, 'Murliganj', 'Enable', '0000-00-00', '0000-00-00'),
(819, 5, 99, 'Koilwar', 'Enable', '0000-00-00', '0000-00-00'),
(820, 4, 0, 'Kathiawar', 'Enable', '0000-00-00', '0000-00-00'),
(821, 5, 99, 'Dalsinghsarai', 'Enable', '0000-00-00', '0000-00-00'),
(822, 5, 99, 'Daudnagar', 'Enable', '0000-00-00', '0000-00-00'),
(823, 4, 0, 'Botad', 'Enable', '0000-00-00', '0000-00-00'),
(824, 5, 99, 'Ghoga', 'Enable', '0000-00-00', '0000-00-00'),
(825, 4, 0, 'Bantwa', 'Enable', '0000-00-00', '0000-00-00'),
(826, 5, 99, 'Habibpur', 'Enable', '0000-00-00', '0000-00-00'),
(827, 4, 0, 'Adalaj', 'Enable', '0000-00-00', '0000-00-00'),
(828, 5, 99, 'Narkatiaganj', 'Enable', '0000-00-00', '0000-00-00'),
(829, 4, 0, 'Chhaprabhatha', 'Enable', '0000-00-00', '0000-00-00'),
(830, 4, 0, 'Dahod', 'Enable', '0000-00-00', '0000-00-00'),
(831, 4, 0, 'Chandlodiya', 'Enable', '0000-00-00', '0000-00-00'),
(832, 4, 0, 'Chhaya', 'Enable', '0000-00-00', '0000-00-00'),
(833, 4, 0, 'Gandevi', 'Enable', '0000-00-00', '0000-00-00'),
(834, 4, 0, 'Jetpur Navagadh', 'Enable', '0000-00-00', '0000-00-00'),
(835, 4, 0, 'Mangrol', 'Enable', '0000-00-00', '0000-00-00'),
(836, 4, 0, 'Khedbrahma', 'Enable', '0000-00-00', '0000-00-00'),
(837, 4, 0, 'Karachiya', 'Enable', '0000-00-00', '0000-00-00'),
(838, 4, 0, 'Kheralu', 'Enable', '0000-00-00', '0000-00-00'),
(839, 4, 0, 'Devgadbaria', 'Enable', '0000-00-00', '0000-00-00'),
(840, 4, 0, 'Dhoraji', 'Enable', '0000-00-00', '0000-00-00'),
(841, 4, 0, 'Ghatlodiya', 'Enable', '0000-00-00', '0000-00-00'),
(842, 4, 0, 'Halvad', 'Enable', '0000-00-00', '0000-00-00'),
(843, 4, 0, 'Harij', 'Enable', '0000-00-00', '0000-00-00'),
(844, 4, 0, 'Anjar', 'Enable', '0000-00-00', '0000-00-00'),
(845, 4, 0, 'Vapi', 'Enable', '0000-00-00', '0000-00-00'),
(846, 4, 0, 'Sidhpur', 'Enable', '0000-00-00', '0000-00-00'),
(1027, 12, 99, 'Chikhli.', 'Enable', '0000-00-00', '0000-00-00'),
(848, 21, 99, 'Birsinghpur', 'Enable', '0000-00-00', '0000-00-00'),
(849, 21, 99, 'Badawada', 'Enable', '0000-00-00', '0000-00-00'),
(850, 21, 99, 'Barela', 'Enable', '0000-00-00', '0000-00-00'),
(851, 21, 99, 'Betul', 'Enable', '0000-00-00', '0000-00-00'),
(852, 21, 99, 'Barigarh', 'Enable', '0000-00-00', '0000-00-00'),
(853, 21, 99, 'Basoda', 'Enable', '0000-00-00', '0000-00-00'),
(854, 21, 99, 'Barwani', 'Enable', '0000-00-00', '0000-00-00'),
(855, 21, 99, 'Bagelkhand', 'Enable', '0000-00-00', '0000-00-00'),
(856, 21, 99, 'Seoni', 'Enable', '0000-00-00', '0000-00-00'),
(857, 21, 99, 'Harsud', 'Enable', '0000-00-00', '0000-00-00'),
(858, 21, 99, 'Badnagar', 'Enable', '0000-00-00', '0000-00-00'),
(859, 21, 99, 'Garhakota', 'Enable', '0000-00-00', '0000-00-00'),
(860, 21, 99, 'Jhundpura', 'Enable', '0000-00-00', '0000-00-00'),
(861, 21, 99, 'Lakhnadon', 'Enable', '0000-00-00', '0000-00-00'),
(862, 21, 99, 'Majholi', 'Enable', '0000-00-00', '0000-00-00'),
(863, 21, 99, 'Manawar', 'Enable', '0000-00-00', '0000-00-00'),
(864, 21, 99, 'Kumbhraj', 'Enable', '0000-00-00', '0000-00-00'),
(865, 21, 99, 'Kannod', 'Enable', '0000-00-00', '0000-00-00'),
(866, 21, 99, 'Kasrawad', 'Enable', '0000-00-00', '0000-00-00'),
(867, 21, 99, 'Khetia', 'Enable', '0000-00-00', '0000-00-00'),
(868, 21, 99, 'Sironj', 'Enable', '0000-00-00', '0000-00-00'),
(869, 21, 99, 'Chandla', 'Enable', '0000-00-00', '0000-00-00'),
(870, 21, 99, 'Damoh', 'Enable', '0000-00-00', '0000-00-00'),
(871, 21, 99, 'Deogarh..', 'Enable', '0000-00-00', '0000-00-00'),
(872, 21, 99, 'Deori.', 'Enable', '0000-00-00', '0000-00-00'),
(873, 21, 99, 'Dongar Parasia', 'Enable', '0000-00-00', '0000-00-00'),
(874, 21, 99, 'Ghansor', 'Enable', '0000-00-00', '0000-00-00'),
(875, 21, 99, 'Gogapur', 'Enable', '0000-00-00', '0000-00-00'),
(876, 21, 99, 'Jabalpur Cantonment', 'Enable', '0000-00-00', '0000-00-00'),
(877, 21, 99, 'Iklehra', 'Enable', '0000-00-00', '0000-00-00'),
(878, 21, 99, 'Khujner', 'Enable', '0000-00-00', '0000-00-00'),
(879, 21, 99, 'Nainpur', 'Enable', '0000-00-00', '0000-00-00'),
(880, 21, 99, 'Pachmarhi', 'Enable', '0000-00-00', '0000-00-00'),
(881, 21, 99, 'Chhabra', 'Enable', '0000-00-00', '0000-00-00'),
(882, 21, 99, 'Begamganj', 'Enable', '0000-00-00', '0000-00-00'),
(883, 21, 99, 'Badod', 'Enable', '0000-00-00', '0000-00-00'),
(884, 21, 99, 'Barhi', 'Enable', '0000-00-00', '0000-00-00'),
(885, 21, 99, 'Bhind', 'Enable', '0000-00-00', '0000-00-00'),
(886, 21, 99, 'Badoda', 'Enable', '0000-00-00', '0000-00-00'),
(887, 21, 99, 'Badra', 'Enable', '0000-00-00', '0000-00-00'),
(888, 21, 99, 'Ujjain', 'Enable', '0000-00-00', '0000-00-00'),
(889, 21, 99, 'Chichli', 'Enable', '0000-00-00', '0000-00-00'),
(890, 21, 99, 'Khargapur', 'Enable', '0000-00-00', '0000-00-00'),
(891, 21, 99, 'Gadarwara', 'Enable', '0000-00-00', '0000-00-00'),
(892, 21, 99, 'Jabalpur.', 'Enable', '0000-00-00', '0000-00-00'),
(893, 21, 99, 'Jirapur', 'Enable', '0000-00-00', '0000-00-00'),
(894, 21, 99, 'Laundi', 'Enable', '0000-00-00', '0000-00-00'),
(895, 21, 99, 'Malhargarh', 'Enable', '0000-00-00', '0000-00-00'),
(896, 21, 99, 'Manegaon', 'Enable', '0000-00-00', '0000-00-00'),
(897, 21, 99, 'Mauganj', 'Enable', '0000-00-00', '0000-00-00'),
(898, 21, 99, 'Kantaphod', 'Enable', '0000-00-00', '0000-00-00'),
(899, 21, 99, 'Katangi', 'Enable', '0000-00-00', '0000-00-00'),
(900, 21, 99, 'Khirkiya', 'Enable', '0000-00-00', '0000-00-00'),
(901, 21, 99, 'Burhanpur', 'Enable', '0000-00-00', '0000-00-00'),
(902, 21, 99, 'Buxwaha', 'Enable', '0000-00-00', '0000-00-00'),
(903, 21, 99, 'Gotegaon', 'Enable', '0000-00-00', '0000-00-00'),
(904, 21, 99, 'Depalpur', 'Enable', '0000-00-00', '0000-00-00'),
(905, 21, 99, 'Dharampuri', 'Enable', '0000-00-00', '0000-00-00'),
(906, 21, 99, 'Gohad', 'Enable', '0000-00-00', '0000-00-00'),
(907, 21, 99, 'Gormi', 'Enable', '0000-00-00', '0000-00-00'),
(908, 21, 99, 'Harda', 'Enable', '0000-00-00', '0000-00-00'),
(909, 21, 99, 'Kailaras', 'Enable', '0000-00-00', '0000-00-00'),
(910, 21, 99, 'Indergarh', 'Enable', '0000-00-00', '0000-00-00'),
(911, 21, 99, 'Khurai', 'Enable', '0000-00-00', '0000-00-00'),
(912, 21, 99, 'Ichhawar', 'Enable', '0000-00-00', '0000-00-00'),
(913, 21, 99, 'Deor Kothar', 'Enable', '0000-00-00', '0000-00-00'),
(914, 21, 99, 'Tikamgarh', 'Enable', '0000-00-00', '0000-00-00'),
(915, 21, 99, 'Badnawar', 'Enable', '0000-00-00', '0000-00-00'),
(916, 21, 99, 'Barghat', 'Enable', '0000-00-00', '0000-00-00'),
(917, 21, 99, 'Balaghat', 'Enable', '0000-00-00', '0000-00-00'),
(918, 21, 99, 'Barwaha', 'Enable', '0000-00-00', '0000-00-00'),
(919, 21, 99, 'Badarwas', 'Enable', '0000-00-00', '0000-00-00'),
(920, 21, 99, 'Anuppur', 'Enable', '0000-00-00', '0000-00-00'),
(921, 21, 99, 'Bilaspur', 'Enable', '0000-00-00', '0000-00-00'),
(922, 21, 99, 'Chhindwara', 'Enable', '0000-00-00', '0000-00-00'),
(923, 21, 99, 'Badkuhi', 'Enable', '0000-00-00', '0000-00-00'),
(924, 21, 99, 'Gairatganj', 'Enable', '0000-00-00', '0000-00-00'),
(925, 21, 99, 'Hindoria', 'Enable', '0000-00-00', '0000-00-00'),
(926, 21, 99, 'Joura', 'Enable', '0000-00-00', '0000-00-00'),
(927, 21, 99, 'Kakarhati', 'Enable', '0000-00-00', '0000-00-00'),
(928, 21, 99, 'chachai', 'Enable', '0000-00-00', '0000-00-00'),
(929, 21, 99, 'Kelhauri', 'Enable', '0000-00-00', '0000-00-00'),
(930, 21, 99, 'Mangawan', 'Enable', '0000-00-00', '0000-00-00'),
(931, 21, 99, 'Mihona', 'Enable', '0000-00-00', '0000-00-00'),
(932, 21, 99, 'Karera', 'Enable', '0000-00-00', '0000-00-00'),
(933, 21, 99, 'Kolaras', 'Enable', '0000-00-00', '0000-00-00'),
(934, 21, 99, 'Sigrauli', 'Enable', '0000-00-00', '0000-00-00'),
(935, 21, 99, 'Burhar', 'Enable', '0000-00-00', '0000-00-00'),
(936, 21, 99, 'Daboh', 'Enable', '0000-00-00', '0000-00-00'),
(937, 21, 99, 'Datia', 'Enable', '0000-00-00', '0000-00-00'),
(938, 21, 99, 'Devendranagar', 'Enable', '0000-00-00', '0000-00-00'),
(939, 21, 99, 'Dighawani', 'Enable', '0000-00-00', '0000-00-00'),
(940, 21, 99, 'Dumar Kachhar', 'Enable', '0000-00-00', '0000-00-00'),
(941, 21, 99, 'Ghuwara', 'Enable', '0000-00-00', '0000-00-00'),
(942, 21, 99, 'Guna', 'Enable', '0000-00-00', '0000-00-00'),
(943, 21, 99, 'Chandia', 'Enable', '0000-00-00', '0000-00-00'),
(944, 21, 99, 'Harpalpur', 'Enable', '0000-00-00', '0000-00-00'),
(945, 21, 99, 'Kali Chhapar', 'Enable', '0000-00-00', '0000-00-00'),
(946, 21, 99, 'Mandu', 'Enable', '0000-00-00', '0000-00-00'),
(947, 12, 99, 'Daporijo', 'Enable', '0000-00-00', '0000-00-00'),
(948, 12, 99, 'Bongaigaon', 'Enable', '0000-00-00', '0000-00-00'),
(949, 12, 99, 'Haflong', 'Enable', '0000-00-00', '0000-00-00'),
(950, 12, 99, 'Majuli', 'Enable', '0000-00-00', '0000-00-00'),
(951, 12, 99, 'Tezpur', 'Enable', '0000-00-00', '0000-00-00'),
(952, 12, 99, 'Kharijapikon', 'Enable', '0000-00-00', '0000-00-00'),
(953, 12, 99, 'Makum', 'Enable', '0000-00-00', '0000-00-00'),
(954, 12, 99, 'Moran Town', 'Enable', '0000-00-00', '0000-00-00'),
(955, 12, 99, 'Bishwanath Chariali', 'Enable', '0000-00-00', '0000-00-00'),
(956, 12, 99, 'Borgolai Grant No.11', 'Enable', '0000-00-00', '0000-00-00'),
(957, 12, 99, 'Dhekiajuli', 'Enable', '0000-00-00', '0000-00-00'),
(958, 12, 99, 'Doomdooma', 'Enable', '0000-00-00', '0000-00-00'),
(959, 12, 99, 'Duliajan Oil Town', 'Enable', '0000-00-00', '0000-00-00'),
(960, 12, 99, 'Gossaigaon', 'Enable', '0000-00-00', '0000-00-00'),
(961, 12, 99, 'Duliajan', 'Enable', '0000-00-00', '0000-00-00'),
(962, 12, 99, 'Roing', 'Enable', '0000-00-00', '0000-00-00'),
(963, 12, 99, 'Dibrugarh', 'Enable', '0000-00-00', '0000-00-00'),
(964, 12, 99, 'North Lakhimpur', 'Enable', '0000-00-00', '0000-00-00'),
(965, 12, 99, 'Sibsagar', 'Enable', '0000-00-00', '0000-00-00'),
(966, 12, 99, 'Bohari', 'Enable', '0000-00-00', '0000-00-00'),
(967, 12, 99, 'Mangaldoi', 'Enable', '0000-00-00', '0000-00-00'),
(968, 12, 99, 'Naharkatia', 'Enable', '0000-00-00', '0000-00-00'),
(969, 12, 99, 'Bokajan', 'Enable', '0000-00-00', '0000-00-00'),
(970, 12, 99, 'Dergaon', 'Enable', '0000-00-00', '0000-00-00'),
(971, 12, 99, 'Dokmoka', 'Enable', '0000-00-00', '0000-00-00'),
(972, 12, 99, 'Dharapur', 'Enable', '0000-00-00', '0000-00-00'),
(973, 12, 99, 'Gauripur', 'Enable', '0000-00-00', '0000-00-00'),
(974, 12, 99, 'Hamren', 'Enable', '0000-00-00', '0000-00-00'),
(975, 12, 99, 'Barbari (AMC Area)', 'Enable', '0000-00-00', '0000-00-00'),
(976, 12, 99, 'Tezu', 'Enable', '0000-00-00', '0000-00-00'),
(977, 12, 99, 'Kokrajhar', 'Enable', '0000-00-00', '0000-00-00'),
(978, 12, 99, 'Silchar', 'Enable', '0000-00-00', '0000-00-00'),
(979, 12, 99, 'Badarpur', 'Enable', '0000-00-00', '0000-00-00'),
(980, 12, 99, 'Guwahati', 'Enable', '0000-00-00', '0000-00-00'),
(981, 12, 99, 'Jonai Bazar', 'Enable', '0000-00-00', '0000-00-00'),
(982, 12, 99, 'Mankachar', 'Enable', '0000-00-00', '0000-00-00'),
(983, 12, 99, 'Barpathar', 'Enable', '0000-00-00', '0000-00-00'),
(984, 12, 99, 'Dhing', 'Enable', '0000-00-00', '0000-00-00'),
(985, 12, 99, 'Donkamokam', 'Enable', '0000-00-00', '0000-00-00'),
(986, 12, 99, 'Badarpur Railway Town', 'Enable', '0000-00-00', '0000-00-00'),
(987, 12, 99, 'Digboi Oil Town', 'Enable', '0000-00-00', '0000-00-00'),
(1028, 10, 99, 'Nirmal', 'Enable', '0000-00-00', '0000-00-00'),
(1029, 10, 99, 'Tenali', 'Enable', '0000-00-00', '0000-00-00'),
(1024, 12, 99, 'Barpathar.', 'Enable', '0000-00-00', '0000-00-00'),
(1198, 30, 99, 'Chettithangal', 'Enable', '0000-00-00', '0000-00-00'),
(1193, 30, 99, 'Mudaliarkuppam', 'Enable', '0000-00-00', '0000-00-00'),
(1192, 30, 99, 'Thanjavur', 'Enable', '0000-00-00', '0000-00-00'),
(1197, 30, 99, 'Ambasamudram', 'Enable', '0000-00-00', '0000-00-00'),
(1196, 30, 99, 'Anakaputhur', 'Enable', '0000-00-00', '0000-00-00'),
(1195, 30, 99, 'Batlagundu', 'Enable', '0000-00-00', '0000-00-00'),
(1194, 30, 99, 'Tirunelveli', 'Enable', '0000-00-00', '0000-00-00'),
(1204, 30, 99, 'Eral', 'Enable', '0000-00-00', '0000-00-00'),
(1203, 30, 99, 'Vadalur', 'Enable', '0000-00-00', '0000-00-00'),
(1202, 30, 99, 'Salem', 'Enable', '0000-00-00', '0000-00-00'),
(1201, 30, 99, 'Tiruchendur', 'Enable', '0000-00-00', '0000-00-00'),
(1200, 30, 99, 'Madurai', 'Enable', '0000-00-00', '0000-00-00'),
(1199, 30, 99, 'Cheyyar', 'Enable', '0000-00-00', '0000-00-00'),
(1211, 30, 99, 'Manavalakurichi', 'Enable', '0000-00-00', '0000-00-00'),
(1210, 30, 99, 'Madathukulam', 'Enable', '0000-00-00', '0000-00-00'),
(1209, 30, 99, 'Kayalpattinam', 'Enable', '0000-00-00', '0000-00-00'),
(1208, 30, 99, 'Lalpet', 'Enable', '0000-00-00', '0000-00-00'),
(1207, 30, 99, 'Kadathur', 'Enable', '0000-00-00', '0000-00-00'),
(1206, 30, 99, 'Harur', 'Enable', '0000-00-00', '0000-00-00'),
(1205, 30, 99, 'Ganapathipuram', 'Enable', '0000-00-00', '0000-00-00'),
(1030, 10, 99, 'Amaravati', 'Enable', '0000-00-00', '0000-00-00'),
(1031, 10, 99, 'Anakapalle', 'Enable', '0000-00-00', '0000-00-00'),
(1032, 10, 99, 'Vijayawada', 'Enable', '0000-00-00', '0000-00-00'),
(1033, 10, 99, 'Gaddi Annaram', 'Enable', '0000-00-00', '0000-00-00'),
(1034, 10, 99, 'Gajularega', 'Enable', '0000-00-00', '0000-00-00'),
(1035, 10, 99, 'Mandapeta', 'Enable', '0000-00-00', '0000-00-00'),
(1036, 10, 99, 'Koratla', 'Enable', '0000-00-00', '0000-00-00'),
(1037, 10, 99, 'Chatakonda', 'Enable', '0000-00-00', '0000-00-00'),
(1038, 10, 99, 'Dasnapur', 'Enable', '0000-00-00', '0000-00-00'),
(1039, 10, 99, 'Ghatkeser', 'Enable', '0000-00-00', '0000-00-00'),
(1040, 10, 99, 'Rajahmundry', 'Enable', '0000-00-00', '0000-00-00'),
(1041, 10, 99, 'Nagarjunakonda', 'Enable', '0000-00-00', '0000-00-00'),
(1042, 10, 99, 'Nellimaria', 'Enable', '0000-00-00', '0000-00-00'),
(1043, 10, 99, 'Secunderabad', 'Enable', '0000-00-00', '0000-00-00'),
(1044, 10, 99, 'Tirupati', 'Enable', '0000-00-00', '0000-00-00'),
(1045, 10, 99, 'Alampur', 'Enable', '0000-00-00', '0000-00-00'),
(1046, 10, 99, 'Banganapalle', 'Enable', '0000-00-00', '0000-00-00'),
(1049, 10, 99, 'Warangal', 'Enable', '0000-00-00', '0000-00-00'),
(1048, 10, 99, 'Puttaparthi', 'Enable', '0000-00-00', '0000-00-00'),
(1050, 10, 99, 'Gadwal', 'Enable', '0000-00-00', '0000-00-00'),
(1051, 10, 99, 'Hindupur', 'Enable', '0000-00-00', '0000-00-00'),
(1052, 10, 99, 'Kantabamsuguda', 'Enable', '0000-00-00', '0000-00-00'),
(1053, 10, 99, 'Kanuru', 'Enable', '0000-00-00', '0000-00-00'),
(1054, 10, 99, 'Kothavalasa', 'Enable', '0000-00-00', '0000-00-00'),
(1055, 10, 99, 'Kadapa', 'Enable', '0000-00-00', '0000-00-00'),
(1056, 10, 99, 'Eddumailaram', 'Enable', '0000-00-00', '0000-00-00'),
(1057, 10, 99, 'Golconda', 'Enable', '0000-00-00', '0000-00-00'),
(1058, 10, 99, 'Kaghaznagar', 'Enable', '0000-00-00', '0000-00-00'),
(1059, 10, 99, 'Narasaraopet', 'Enable', '0000-00-00', '0000-00-00'),
(1060, 10, 99, 'Visakhapatnam', 'Enable', '0000-00-00', '0000-00-00'),
(1062, 10, 99, 'Ongole', 'Enable', '0000-00-00', '0000-00-00'),
(1063, 10, 99, 'Vishakhapatnam', 'Enable', '0000-00-00', '0000-00-00'),
(1064, 10, 99, 'Badepalle', 'Enable', '0000-00-00', '0000-00-00'),
(1065, 10, 99, 'Anantapur', 'Enable', '0000-00-00', '0000-00-00'),
(1066, 10, 99, 'Tourist places in Secunderabad', 'Enable', '0000-00-00', '0000-00-00'),
(1067, 10, 99, 'Farooqnagar', 'Enable', '0000-00-00', '0000-00-00'),
(1068, 10, 99, 'Gajapathinagaram', 'Enable', '0000-00-00', '0000-00-00'),
(1069, 10, 99, 'Mancherial', 'Enable', '0000-00-00', '0000-00-00'),
(1070, 10, 99, 'Bugganipalle', 'Enable', '0000-00-00', '0000-00-00'),
(1071, 10, 99, 'Chemmumiahpet', 'Enable', '0000-00-00', '0000-00-00'),
(1072, 10, 99, 'Ekambara kuppam', 'Enable', '0000-00-00', '0000-00-00'),
(1073, 10, 99, 'Ichchapuramn', 'Enable', '0000-00-00', '0000-00-00'),
(1074, 10, 99, 'Isnapur', 'Enable', '0000-00-00', '0000-00-00'),
(1075, 10, 99, 'Narayanavanam', 'Enable', '0000-00-00', '0000-00-00'),
(1076, 10, 99, 'Nellor', 'Enable', '0000-00-00', '0000-00-00'),
(1077, 16, 99, 'Kasauli', 'Enable', '0000-00-00', '0000-00-00'),
(1078, 16, 99, 'Kangra', 'Enable', '0000-00-00', '0000-00-00'),
(1079, 16, 99, 'Lahul', 'Enable', '0000-00-00', '0000-00-00'),
(1080, 16, 99, 'Spiti', 'Enable', '0000-00-00', '0000-00-00'),
(1081, 16, 99, 'Jubbal', 'Enable', '0000-00-00', '0000-00-00'),
(1082, 16, 99, 'Chaupal', 'Enable', '0000-00-00', '0000-00-00'),
(1083, 16, 99, 'Dharamshala', 'Enable', '0000-00-00', '0000-00-00'),
(1084, 16, 99, 'Kullu', 'Enable', '0000-00-00', '0000-00-00'),
(1085, 16, 99, 'Chamba', 'Enable', '0000-00-00', '0000-00-00'),
(1086, 16, 99, 'Kufri', 'Enable', '0000-00-00', '0000-00-00'),
(1087, 16, 99, 'Mandi', 'Enable', '0000-00-00', '0000-00-00'),
(1088, 16, 99, 'Gagret', 'Enable', '0000-00-00', '0000-00-00'),
(1089, 16, 99, 'Jutogh', 'Enable', '0000-00-00', '0000-00-00'),
(1090, 16, 99, 'Ghumarwin', 'Enable', '0000-00-00', '0000-00-00'),
(1091, 16, 99, 'Daulatpur', 'Enable', '0000-00-00', '0000-00-00'),
(1092, 16, 99, 'Palampur', 'Enable', '0000-00-00', '0000-00-00'),
(1093, 16, 99, 'Hamirpur', 'Enable', '0000-00-00', '0000-00-00'),
(1094, 16, 99, 'Kyelong', 'Enable', '0000-00-00', '0000-00-00'),
(1095, 16, 99, 'Jogindarnagar', 'Enable', '0000-00-00', '0000-00-00'),
(1096, 16, 99, 'Mehatpur Basdehra', 'Enable', '0000-00-00', '0000-00-00'),
(1097, 16, 99, 'Dera Gopipur', 'Enable', '0000-00-00', '0000-00-00'),
(1098, 16, 99, 'Sarahan', 'Enable', '0000-00-00', '0000-00-00'),
(1099, 16, 99, 'Solan', 'Enable', '0000-00-00', '0000-00-00'),
(1101, 16, 99, 'shimla', 'Enable', '0000-00-00', '0000-00-00'),
(1102, 14, 99, 'Curti', 'Enable', '0000-00-00', '0000-00-00'),
(1103, 14, 99, 'Davorlim', 'Enable', '0000-00-00', '0000-00-00'),
(1104, 14, 99, 'Mapusa', 'Enable', '0000-00-00', '0000-00-00'),
(1105, 14, 99, 'Marmagao', 'Enable', '0000-00-00', '0000-00-00'),
(1106, 14, 99, 'Margao', 'Enable', '0000-00-00', '0000-00-00'),
(1107, 14, 99, 'Curchorem Cacora', 'Enable', '0000-00-00', '0000-00-00'),
(1108, 14, 99, 'Chicalim', 'Enable', '0000-00-00', '0000-00-00'),
(1109, 14, 99, 'Guirim', 'Enable', '0000-00-00', '0000-00-00'),
(1110, 14, 99, 'Ponda', 'Enable', '0000-00-00', '0000-00-00'),
(1111, 14, 99, 'Panaji', 'Enable', '0000-00-00', '0000-00-00'),
(1112, 14, 99, 'Canacona', 'Enable', '0000-00-00', '0000-00-00'),
(1113, 14, 99, 'Pernem', 'Enable', '0000-00-00', '0000-00-00'),
(1114, 19, 99, 'Bidar', 'Enable', '0000-00-00', '0000-00-00'),
(1115, 19, 99, 'Birur', 'Enable', '0000-00-00', '0000-00-00'),
(1116, 19, 99, 'Basavakalyan', 'Enable', '0000-00-00', '0000-00-00'),
(1117, 19, 99, 'Bijapur', 'Enable', '0000-00-00', '0000-00-00'),
(1118, 19, 99, 'Haveri', 'Enable', '0000-00-00', '0000-00-00'),
(1119, 19, 99, 'Gadag- Betigeri', 'Enable', '0000-00-00', '0000-00-00'),
(1120, 19, 99, 'Herohalli', 'Enable', '0000-00-00', '0000-00-00'),
(1122, 19, 99, 'Kudligi', 'Enable', '0000-00-00', '0000-00-00'),
(1123, 19, 99, 'Mudgal', 'Enable', '0000-00-00', '0000-00-00'),
(1124, 19, 99, 'Mundargi', 'Enable', '0000-00-00', '0000-00-00'),
(1125, 19, 99, 'Kushtagi', 'Enable', '0000-00-00', '0000-00-00'),
(1126, 19, 99, 'Kodiyal', 'Enable', '0000-00-00', '0000-00-00'),
(1127, 19, 99, 'Kotekara', 'Enable', '0000-00-00', '0000-00-00'),
(1128, 19, 99, 'Byadgi', 'Enable', '0000-00-00', '0000-00-00'),
(1129, 19, 99, 'Chikodi', 'Enable', '0000-00-00', '0000-00-00'),
(1130, 19, 99, 'Dasarahalli', 'Enable', '0000-00-00', '0000-00-00'),
(1131, 19, 99, 'Dharwad', 'Enable', '0000-00-00', '0000-00-00'),
(1132, 19, 99, 'Karwar', 'Enable', '0000-00-00', '0000-00-00'),
(1134, 19, 99, 'Gundlupet', 'Enable', '0000-00-00', '0000-00-00'),
(1135, 19, 99, 'Gurmatkal', 'Enable', '0000-00-00', '0000-00-00'),
(1136, 19, 99, 'Sindhanur', 'Enable', '0000-00-00', '0000-00-00'),
(1137, 19, 99, 'Narasimharajapura', 'Enable', '0000-00-00', '0000-00-00'),
(1138, 19, 99, 'Venur', 'Enable', '0000-00-00', '0000-00-00'),
(1139, 19, 99, 'Halebidu', 'Enable', '0000-00-00', '0000-00-00'),
(1140, 19, 99, 'Mysore', 'Enable', '0000-00-00', '0000-00-00'),
(1141, 19, 99, 'Nipani', 'Enable', '0000-00-00', '0000-00-00'),
(1142, 19, 99, 'Gulbarga', 'Enable', '0000-00-00', '0000-00-00'),
(1143, 19, 99, 'Basavana Bagevadi', 'Enable', '0000-00-00', '0000-00-00'),
(1144, 19, 99, 'Shimoga', 'Enable', '0000-00-00', '0000-00-00'),
(1145, 19, 99, 'Hassan', 'Enable', '0000-00-00', '0000-00-00'),
(1146, 19, 99, 'Bagalkot', 'Enable', '0000-00-00', '0000-00-00'),
(1147, 19, 99, 'Gajendragarh', 'Enable', '0000-00-00', '0000-00-00'),
(1149, 19, 99, 'Hindalgi', 'Enable', '0000-00-00', '0000-00-00'),
(1150, 19, 99, 'Khanapur', 'Enable', '0000-00-00', '0000-00-00'),
(1151, 19, 99, 'Muddebihal', 'Enable', '0000-00-00', '0000-00-00'),
(1152, 19, 99, 'Mundgod', 'Enable', '0000-00-00', '0000-00-00'),
(1153, 19, 99, 'Konanakunte', 'Enable', '0000-00-00', '0000-00-00'),
(1154, 19, 99, 'Konnur', 'Enable', '0000-00-00', '0000-00-00'),
(1155, 19, 99, 'Krishnarajasagara', 'Enable', '0000-00-00', '0000-00-00'),
(1156, 19, 99, 'Channarayapattana', 'Enable', '0000-00-00', '0000-00-00'),
(1157, 19, 99, 'Chikamagaluru', 'Enable', '0000-00-00', '0000-00-00'),
(1158, 19, 99, 'Davanagere', 'Enable', '0000-00-00', '0000-00-00'),
(1159, 19, 99, 'Dod Ballapur', 'Enable', '0000-00-00', '0000-00-00'),
(1160, 19, 99, 'Chikballapur', 'Enable', '0000-00-00', '0000-00-00'),
(1161, 19, 99, 'Gottikere', 'Enable', '0000-00-00', '0000-00-00'),
(1162, 19, 99, 'Hangal', 'Enable', '0000-00-00', '0000-00-00'),
(1163, 19, 99, 'Kunigal', 'Enable', '0000-00-00', '0000-00-00'),
(1164, 19, 99, 'Naregal', 'Enable', '0000-00-00', '0000-00-00'),
(1165, 19, 99, 'Chitradurga', 'Enable', '0000-00-00', '0000-00-00'),
(1166, 19, 99, 'Udupi', 'Enable', '0000-00-00', '0000-00-00'),
(1167, 19, 99, 'Hampi', 'Enable', '0000-00-00', '0000-00-00'),
(1168, 19, 99, 'Belur', 'Enable', '0000-00-00', '0000-00-00'),
(1169, 19, 99, 'Belgaum', 'Enable', '0000-00-00', '0000-00-00'),
(1170, 19, 99, 'Madikeri', 'Enable', '0000-00-00', '0000-00-00'),
(1171, 19, 99, 'Hospet', 'Enable', '0000-00-00', '0000-00-00'),
(1172, 19, 99, 'Halebid', 'Enable', '0000-00-00', '0000-00-00'),
(1173, 19, 99, 'Hebbalu', 'Enable', '0000-00-00', '0000-00-00'),
(1174, 19, 99, 'Malavalli', 'Enable', '0000-00-00', '0000-00-00'),
(1175, 19, 99, 'Kundgol', 'Enable', '0000-00-00', '0000-00-00'),
(1176, 19, 99, 'Mulgund', 'Enable', '0000-00-00', '0000-00-00'),
(1177, 19, 99, 'Kurgunta', 'Enable', '0000-00-00', '0000-00-00'),
(1178, 19, 99, 'Kodigenahalli', 'Enable', '0000-00-00', '0000-00-00'),
(1179, 19, 99, 'Koratagere', 'Enable', '0000-00-00', '0000-00-00'),
(1180, 19, 99, 'Krishnarajpet', 'Enable', '0000-00-00', '0000-00-00'),
(1181, 19, 99, 'Channagiri', 'Enable', '0000-00-00', '0000-00-00'),
(1182, 19, 99, 'Chiknayakanhalli', 'Enable', '0000-00-00', '0000-00-00'),
(1183, 19, 99, 'Devanahalli', 'Enable', '0000-00-00', '0000-00-00'),
(1184, 19, 99, 'Gauribidanur', 'Enable', '0000-00-00', '0000-00-00'),
(1185, 19, 99, 'Donimalai Township', 'Enable', '0000-00-00', '0000-00-00'),
(1186, 19, 99, 'Guledgudda', 'Enable', '0000-00-00', '0000-00-00'),
(1187, 19, 99, 'Belgaum Cantonment', 'Enable', '0000-00-00', '0000-00-00'),
(1188, 19, 99, 'Ilkal', 'Enable', '0000-00-00', '0000-00-00'),
(1189, 19, 99, 'Nargund, Karnataka', 'Enable', '0000-00-00', '0000-00-00'),
(1190, 19, 99, 'Sringeri', 'Enable', '0000-00-00', '0000-00-00'),
(1191, 19, 99, 'Vijayanagara', 'Enable', '0000-00-00', '0000-00-00'),
(1212, 30, 99, 'Manalurpet', 'Enable', '0000-00-00', '0000-00-00'),
(1213, 30, 99, 'Kuhalur', 'Enable', '0000-00-00', '0000-00-00'),
(1214, 30, 99, 'Maraimalainagar', 'Enable', '0000-00-00', '0000-00-00'),
(1215, 30, 99, 'Kunnathur', 'Enable', '0000-00-00', '0000-00-00'),
(1216, 30, 99, 'Mettupalayam', 'Enable', '0000-00-00', '0000-00-00'),
(1217, 30, 99, 'Moolaikaraipatti', 'Enable', '0000-00-00', '0000-00-00'),
(1218, 30, 99, 'Mulagumudu', 'Enable', '0000-00-00', '0000-00-00'),
(1219, 30, 99, 'Thoothukudi', 'Enable', '0000-00-00', '0000-00-00'),
(1220, 30, 99, 'Bodinayakkanur', 'Enable', '0000-00-00', '0000-00-00'),
(1221, 30, 99, 'Bargur', 'Enable', '0000-00-00', '0000-00-00'),
(1222, 30, 99, 'Arakkonam', 'Enable', '0000-00-00', '0000-00-00'),
(1223, 30, 99, 'Aruppukkottai', 'Enable', '0000-00-00', '0000-00-00'),
(1224, 30, 99, 'Chettipalayam', 'Enable', '0000-00-00', '0000-00-00'),
(1225, 30, 99, 'Arcot', 'Enable', '0000-00-00', '0000-00-00'),
(1226, 30, 99, 'Palakkad town', 'Enable', '0000-00-00', '0000-00-00'),
(1227, 30, 99, 'Tadikombu', 'Enable', '0000-00-00', '0000-00-00'),
(1228, 30, 99, 'Cuddalore', 'Enable', '0000-00-00', '0000-00-00'),
(1229, 30, 99, 'Nagappattinam', 'Enable', '0000-00-00', '0000-00-00'),
(1230, 30, 99, 'Ettayapuram', 'Enable', '0000-00-00', '0000-00-00'),
(1231, 30, 99, 'Gangaikondan', 'Enable', '0000-00-00', '0000-00-00'),
(1232, 30, 99, 'Harveypatti', 'Enable', '0000-00-00', '0000-00-00'),
(1233, 30, 99, 'Kadayal', 'Enable', '0000-00-00', '0000-00-00'),
(1234, 30, 99, 'Kaveripakkam', 'Enable', '0000-00-00', '0000-00-00'),
(1235, 30, 99, 'Kayatharu', 'Enable', '0000-00-00', '0000-00-00'),
(1236, 30, 99, 'Kelamangalam', 'Enable', '0000-00-00', '0000-00-00'),
(1237, 30, 99, 'Manapparai', 'Enable', '0000-00-00', '0000-00-00'),
(1238, 30, 99, 'Manachanallur', 'Enable', '0000-00-00', '0000-00-00'),
(1239, 30, 99, 'Marandahalli', 'Enable', '0000-00-00', '0000-00-00'),
(1240, 30, 99, 'Mecheri', 'Enable', '0000-00-00', '0000-00-00'),
(1241, 30, 99, 'Melagaram', 'Enable', '0000-00-00', '0000-00-00'),
(1242, 30, 99, 'Kurudampalayam', 'Enable', '0000-00-00', '0000-00-00'),
(1243, 30, 99, 'Muthur', 'Enable', '0000-00-00', '0000-00-00'),
(1244, 30, 99, 'Kannamangalam', 'Enable', '0000-00-00', '0000-00-00'),
(1245, 30, 99, 'Kurumbalur', 'Enable', '0000-00-00', '0000-00-00'),
(1246, 30, 99, 'Karambakkudi Tamil Nadu', 'Enable', '0000-00-00', '0000-00-00'),
(1247, 30, 99, 'Kariapatti', 'Enable', '0000-00-00', '0000-00-00'),
(1248, 30, 99, 'Kilkulam', 'Enable', '0000-00-00', '0000-00-00'),
(1249, 30, 99, 'Konavattam', 'Enable', '0000-00-00', '0000-00-00'),
(1250, 30, 99, 'Killlai', 'Enable', '0000-00-00', '0000-00-00'),
(1251, 30, 99, 'Kilvelur', 'Enable', '0000-00-00', '0000-00-00'),
(1252, 30, 99, 'Kolathupalayam', 'Enable', '0000-00-00', '0000-00-00'),
(1253, 30, 99, 'Koradacheri', 'Enable', '0000-00-00', '0000-00-00'),
(1254, 30, 99, 'Kottaram', 'Enable', '0000-00-00', '0000-00-00'),
(1255, 30, 99, 'Krishnarayapuram', 'Enable', '0000-00-00', '0000-00-00'),
(1256, 30, 99, 'Courtallam', 'Enable', '0000-00-00', '0000-00-00'),
(1257, 30, 99, 'Rajapalayam', 'Enable', '0000-00-00', '0000-00-00'),
(1258, 30, 99, 'Devadanapatti', 'Enable', '0000-00-00', '0000-00-00'),
(1259, 30, 99, 'Dusi', 'Enable', '0000-00-00', '0000-00-00'),
(1260, 30, 99, 'Edakalinadu', 'Enable', '0000-00-00', '0000-00-00'),
(1261, 30, 99, 'Elathur', 'Enable', '0000-00-00', '0000-00-00'),
(1262, 30, 99, 'Goundampalayam', 'Enable', '0000-00-00', '0000-00-00'),
(1263, 30, 99, 'Hanumanthampatti', 'Enable', '0000-00-00', '0000-00-00'),
(1264, 30, 99, 'Kembainaickenpalayam', 'Enable', '0000-00-00', '0000-00-00'),
(1265, 30, 99, 'Nallur', 'Enable', '0000-00-00', '0000-00-00'),
(1266, 30, 99, 'Narasimhanaickenpalayam', 'Enable', '0000-00-00', '0000-00-00'),
(1267, 30, 99, 'Nagojanahalli', 'Enable', '0000-00-00', '0000-00-00'),
(1268, 30, 99, 'Neiyyur', 'Enable', '0000-00-00', '0000-00-00'),
(1269, 30, 99, 'Nemili', 'Enable', '0000-00-00', '0000-00-00'),
(1270, 30, 99, 'Thiruchirappalli', 'Enable', '0000-00-00', '0000-00-00'),
(1271, 30, 99, 'Mahabalipuram', 'Enable', '0000-00-00', '0000-00-00'),
(1272, 30, 99, 'Nanguneri', 'Enable', '0000-00-00', '0000-00-00'),
(1273, 30, 99, 'Mylapore', 'Enable', '0000-00-00', '0000-00-00'),
(1274, 30, 99, 'Melpattampakkam', 'Enable', '0000-00-00', '0000-00-00'),
(1275, 30, 99, 'Mopperipalayam', 'Enable', '0000-00-00', '0000-00-00'),
(1276, 30, 99, 'Modakkurichi', 'Enable', '0000-00-00', '0000-00-00'),
(1277, 30, 99, 'Odaipatti', 'Enable', '0000-00-00', '0000-00-00'),
(1278, 30, 99, 'Muthupet', 'Enable', '0000-00-00', '0000-00-00'),
(1279, 30, 99, 'Kannampalayam', 'Enable', '0000-00-00', '0000-00-00'),
(1280, 30, 99, 'Kappiyarai', 'Enable', '0000-00-00', '0000-00-00'),
(1281, 30, 99, 'Karaikudi', 'Enable', '0000-00-00', '0000-00-00'),
(1282, 30, 99, 'Kasipalayam', 'Enable', '0000-00-00', '0000-00-00'),
(1283, 30, 99, 'Kilkunda', 'Enable', '0000-00-00', '0000-00-00'),
(1284, 30, 99, 'Kondalampatti', 'Enable', '0000-00-00', '0000-00-00'),
(1285, 30, 99, 'Kilpennathur', 'Enable', '0000-00-00', '0000-00-00'),
(1286, 30, 99, 'Kinathukadavu', 'Enable', '0000-00-00', '0000-00-00'),
(1287, 30, 99, 'Kolathur', 'Enable', '0000-00-00', '0000-00-00'),
(1288, 30, 99, 'Kooraikundu', 'Enable', '0000-00-00', '0000-00-00'),
(1289, 30, 99, 'Krishnasamudram', 'Enable', '0000-00-00', '0000-00-00'),
(1290, 30, 99, 'Kottivakkam', 'Enable', '0000-00-00', '0000-00-00'),
(1291, 30, 99, 'Brahmana Periya Agraharam', 'Enable', '0000-00-00', '0000-00-00'),
(1292, 30, 99, 'Sathyamangalam', 'Enable', '0000-00-00', '0000-00-00'),
(1293, 30, 99, 'Desur', 'Enable', '0000-00-00', '0000-00-00'),
(1294, 30, 99, 'Devanangurichi', 'Enable', '0000-00-00', '0000-00-00'),
(1295, 30, 99, 'Edaganasalai', 'Enable', '0000-00-00', '0000-00-00'),
(1296, 30, 99, 'Edappadi', 'Enable', '0000-00-00', '0000-00-00'),
(1297, 30, 99, 'Elayirampannai', 'Enable', '0000-00-00', '0000-00-00'),
(1298, 30, 99, 'Gopalasamudram', 'Enable', '0000-00-00', '0000-00-00'),
(1299, 30, 99, 'Dharapadavedu', 'Enable', '0000-00-00', '0000-00-00'),
(1300, 30, 99, 'Inam Karur', 'Enable', '0000-00-00', '0000-00-00'),
(1301, 30, 99, 'Karamadai', 'Enable', '0000-00-00', '0000-00-00'),
(1302, 30, 99, 'Naravarikuppam', 'Enable', '0000-00-00', '0000-00-00'),
(1303, 30, 99, 'Nangavalli', 'Enable', '0000-00-00', '0000-00-00'),
(1304, 30, 99, 'Nellikuppam', 'Enable', '0000-00-00', '0000-00-00'),
(1305, 30, 99, 'Nilakkottai', 'Enable', '0000-00-00', '0000-00-00'),
(1306, 30, 99, 'Tanjavur', 'Enable', '0000-00-00', '0000-00-00'),
(1307, 30, 99, 'Chettinad', 'Enable', '0000-00-00', '0000-00-00'),
(1308, 30, 99, 'Coimbatore', 'Enable', '0000-00-00', '0000-00-00'),
(1309, 30, 99, 'Muttukadu', 'Enable', '0000-00-00', '0000-00-00'),
(1310, 30, 99, 'Thiruvallur', 'Enable', '0000-00-00', '0000-00-00'),
(1311, 30, 99, 'Pulicat', 'Enable', '0000-00-00', '0000-00-00'),
(1312, 30, 99, 'Tirupur', 'Enable', '0000-00-00', '0000-00-00'),
(1313, 30, 99, 'Aranthagi', 'Enable', '0000-00-00', '0000-00-00'),
(1314, 30, 99, 'Erode', 'Enable', '0000-00-00', '0000-00-00'),
(1315, 30, 99, 'Ariyalur', 'Enable', '0000-00-00', '0000-00-00'),
(1316, 30, 99, 'Chettiarpatti', 'Enable', '0000-00-00', '0000-00-00'),
(1317, 30, 99, 'Kumbakonam', 'Enable', '0000-00-00', '0000-00-00'),
(1318, 30, 99, 'Dindigul', 'Enable', '0000-00-00', '0000-00-00'),
(1319, 30, 99, 'Thirukoilur', 'Enable', '0000-00-00', '0000-00-00'),
(1320, 30, 99, 'Ethapur', 'Enable', '0000-00-00', '0000-00-00'),
(1321, 30, 99, 'Ettimadai', 'Enable', '0000-00-00', '0000-00-00'),
(1322, 30, 99, 'Irugur', 'Enable', '0000-00-00', '0000-00-00'),
(1323, 30, 99, 'Jolarpettai', 'Enable', '0000-00-00', '0000-00-00'),
(1324, 30, 99, 'Kadayampatti', 'Enable', '0000-00-00', '0000-00-00'),
(1325, 30, 99, 'Kaveripattinam', 'Enable', '0000-00-00', '0000-00-00'),
(1326, 30, 99, 'Madambakkam', 'Enable', '0000-00-00', '0000-00-00'),
(1327, 30, 99, 'Mallasamudram', 'Enable', '0000-00-00', '0000-00-00'),
(1328, 30, 99, 'Manamadurai', 'Enable', '0000-00-00', '0000-00-00'),
(1329, 30, 99, 'Mangalampet', 'Enable', '0000-00-00', '0000-00-00'),
(1330, 30, 99, 'Marakanam', 'Enable', '0000-00-00', '0000-00-00'),
(1331, 30, 99, 'Kundrathur', 'Enable', '0000-00-00', '0000-00-00'),
(1332, 30, 99, 'Melamadai', 'Enable', '0000-00-00', '0000-00-00'),
(1333, 30, 99, 'Melvisharam', 'Enable', '0000-00-00', '0000-00-00'),
(1334, 30, 99, 'Mulanur', 'Enable', '0000-00-00', '0000-00-00'),
(1335, 30, 99, 'Kurichi', 'Enable', '0000-00-00', '0000-00-00'),
(1336, 30, 99, 'Mohanur', 'Enable', '0000-00-00', '0000-00-00'),
(1337, 30, 99, 'Nallampatti', 'Enable', '0000-00-00', '0000-00-00'),
(1338, 30, 99, 'Karambakkam', 'Enable', '0000-00-00', '0000-00-00'),
(1339, 30, 99, 'Kanchipuram', 'Enable', '0000-00-00', '0000-00-00'),
(1340, 30, 99, 'Kilampadi', 'Enable', '0000-00-00', '0000-00-00'),
(1341, 30, 99, 'Komaralingam', 'Enable', '0000-00-00', '0000-00-00'),
(1342, 30, 99, 'Konganapuram', 'Enable', '0000-00-00', '0000-00-00'),
(1343, 30, 99, 'Kodavasal', 'Enable', '0000-00-00', '0000-00-00'),
(1344, 30, 99, 'Krishnagiri', 'Enable', '0000-00-00', '0000-00-00'),
(1345, 30, 99, 'Kollankodu', 'Enable', '0000-00-00', '0000-00-00'),
(1346, 30, 99, 'Koothappar', 'Enable', '0000-00-00', '0000-00-00'),
(1347, 30, 99, 'Kothinallur', 'Enable', '0000-00-00', '0000-00-00'),
(1348, 30, 99, 'Kouthanallur', 'Enable', '0000-00-00', '0000-00-00'),
(1349, 30, 99, 'Dalavaipatti', 'Enable', '0000-00-00', '0000-00-00'),
(1350, 30, 99, 'Cheranmadevi', 'Enable', '0000-00-00', '0000-00-00'),
(1351, 30, 99, 'Devarshola', 'Enable', '0000-00-00', '0000-00-00'),
(1352, 30, 99, 'Dharmapuri', 'Enable', '0000-00-00', '0000-00-00'),
(1353, 30, 99, 'Edaikodu', 'Enable', '0000-00-00', '0000-00-00'),
(1354, 30, 99, 'Elampillai', 'Enable', '0000-00-00', '0000-00-00'),
(1355, 30, 99, 'Erumaipatti', 'Enable', '0000-00-00', '0000-00-00'),
(1356, 30, 99, 'Gummidipoondi', 'Enable', '0000-00-00', '0000-00-00'),
(1357, 30, 99, 'Dharasuram', 'Enable', '0000-00-00', '0000-00-00'),
(1358, 30, 99, 'Kuniyamuthur', 'Enable', '0000-00-00', '0000-00-00'),
(1359, 30, 99, 'Naranapuram', 'Enable', '0000-00-00', '0000-00-00'),
(1360, 30, 99, 'Nagavakulam', 'Enable', '0000-00-00', '0000-00-00'),
(1361, 30, 99, 'Neikkarapatti', 'Enable', '0000-00-00', '0000-00-00'),
(1362, 30, 99, 'Nelliyalam', 'Enable', '0000-00-00', '0000-00-00'),
(1363, 30, 99, 'Pattinam', 'Enable', '0000-00-00', '0000-00-00'),
(1364, 30, 99, 'Tirubhuvanam', 'Enable', '0000-00-00', '0000-00-00'),
(1365, 30, 99, 'Thiruvarur', 'Enable', '0000-00-00', '0000-00-00'),
(1366, 30, 99, 'Trichy', 'Enable', '0000-00-00', '0000-00-00'),
(1367, 30, 99, 'Kannankurichi', 'Enable', '0000-00-00', '0000-00-00'),
(1368, 17, 99, 'Gulmarg', 'Enable', '0000-00-00', '0000-00-00'),
(1369, 17, 99, 'Sonamarg', 'Enable', '0000-00-00', '0000-00-00'),
(1370, 17, 99, 'Akhnoor', 'Enable', '0000-00-00', '0000-00-00'),
(1371, 17, 99, 'Hiranagar', 'Enable', '0000-00-00', '0000-00-00'),
(1372, 17, 99, 'Kupwara', 'Enable', '0000-00-00', '0000-00-00'),
(1373, 17, 99, 'Bari Brahmana', 'Enable', '0000-00-00', '0000-00-00'),
(1374, 17, 99, 'Chenani', 'Enable', '0000-00-00', '0000-00-00'),
(1375, 17, 99, 'Hajan', 'Enable', '0000-00-00', '0000-00-00'),
(1376, 17, 99, 'Ganderbal', 'Enable', '0000-00-00', '0000-00-00'),
(1377, 17, 99, 'Kargil', 'Enable', '0000-00-00', '0000-00-00'),
(1378, 17, 99, 'Sankar Gompa', 'Enable', '0000-00-00', '0000-00-00'),
(1379, 17, 99, 'Sumur', 'Enable', '0000-00-00', '0000-00-00'),
(1380, 17, 99, 'Stok', 'Enable', '0000-00-00', '0000-00-00'),
(1381, 17, 99, 'Matho', 'Enable', '0000-00-00', '0000-00-00'),
(1382, 17, 99, 'West of Leh', 'Enable', '0000-00-00', '0000-00-00'),
(1383, 17, 99, 'Sumtsek', 'Enable', '0000-00-00', '0000-00-00'),
(1384, 17, 99, 'Lamayuru', 'Enable', '0000-00-00', '0000-00-00'),
(1385, 17, 99, 'Poonch', 'Enable', '0000-00-00', '0000-00-00'),
(1386, 17, 99, 'Katra', 'Enable', '0000-00-00', '0000-00-00'),
(1387, 17, 99, 'Dras', 'Enable', '0000-00-00', '0000-00-00'),
(1388, 17, 99, 'Tourism in Kargil', 'Enable', '0000-00-00', '0000-00-00'),
(1389, 17, 99, 'Kukernag', 'Enable', '0000-00-00', '0000-00-00'),
(1390, 17, 99, 'Kishtwar', 'Enable', '0000-00-00', '0000-00-00'),
(1391, 17, 99, 'Bishna', 'Enable', '0000-00-00', '0000-00-00'),
(1392, 17, 99, 'Duru Verinag', 'Enable', '0000-00-00', '0000-00-00'),
(1393, 17, 99, 'Gorah Salathian', 'Enable', '0000-00-00', '0000-00-00'),
(1394, 17, 99, 'Khrew', 'Enable', '0000-00-00', '0000-00-00'),
(1395, 17, 99, 'Tourism in Leh District', 'Enable', '0000-00-00', '0000-00-00'),
(1396, 17, 99, 'Bazaar and Old Town', 'Enable', '0000-00-00', '0000-00-00'),
(1397, 17, 99, 'Badami Bagh', 'Enable', '0000-00-00', '0000-00-00'),
(1398, 17, 99, 'Kunzer', 'Enable', '0000-00-00', '0000-00-00'),
(1399, 17, 99, 'Khour', 'Enable', '0000-00-00', '0000-00-00'),
(1400, 17, 99, 'Charari Sharief', 'Enable', '0000-00-00', '0000-00-00'),
(1401, 17, 99, 'Gho Manhasan', 'Enable', '0000-00-00', '0000-00-00'),
(1402, 17, 99, 'Handwara', 'Enable', '0000-00-00', '0000-00-00'),
(1403, 17, 99, 'Ladakh', 'Enable', '0000-00-00', '0000-00-00'),
(1404, 17, 99, 'North of Leh', 'Enable', '0000-00-00', '0000-00-00'),
(1405, 17, 99, 'Accommodation in Leh', 'Enable', '0000-00-00', '0000-00-00'),
(1406, 17, 99, 'Diskit', 'Enable', '0000-00-00', '0000-00-00'),
(1407, 17, 99, 'Tikse', 'Enable', '0000-00-00', '0000-00-00'),
(1408, 17, 99, 'Panamik', 'Enable', '0000-00-00', '0000-00-00'),
(1409, 17, 99, 'Tso Moriri', 'Enable', '0000-00-00', '0000-00-00'),
(1410, 17, 99, 'Phyang', 'Enable', '0000-00-00', '0000-00-00'),
(1411, 17, 99, 'Zanskar', 'Enable', '0000-00-00', '0000-00-00'),
(1412, 17, 99, 'Shey', 'Enable', '0000-00-00', '0000-00-00'),
(1413, 17, 99, 'Hemis', 'Enable', '0000-00-00', '0000-00-00'),
(1414, 17, 99, 'Spitok', 'Enable', '0000-00-00', '0000-00-00'),
(1415, 17, 99, 'Pahalgam', 'Enable', '0000-00-00', '0000-00-00'),
(1416, 20, 99, 'Ernakulum', 'Enable', '0000-00-00', '0000-00-00'),
(1417, 20, 99, 'Kottayam', 'Enable', '0000-00-00', '0000-00-00'),
(1418, 20, 99, 'Thekkadi', 'Enable', '0000-00-00', '0000-00-00'),
(1419, 20, 99, 'Kozhikode', 'Enable', '0000-00-00', '0000-00-00'),
(1420, 20, 99, 'Alappuzha town', 'Enable', '0000-00-00', '0000-00-00'),
(1421, 20, 99, 'Kasargod town', 'Enable', '0000-00-00', '0000-00-00'),
(1422, 20, 99, 'Kudlu', 'Enable', '0000-00-00', '0000-00-00'),
(1423, 20, 99, 'Mulavukad', 'Enable', '0000-00-00', '0000-00-00'),
(1424, 20, 99, 'Kannapuram', 'Enable', '0000-00-00', '0000-00-00'),
(1425, 20, 99, 'Karuvanthuruthy', 'Enable', '0000-00-00', '0000-00-00'),
(1426, 20, 99, 'Kokkothamangalam', 'Enable', '0000-00-00', '0000-00-00'),
(1427, 20, 99, 'Dharmadom', 'Enable', '0000-00-00', '0000-00-00'),
(1428, 20, 99, 'Iriveri', 'Enable', '0000-00-00', '0000-00-00'),
(1429, 20, 99, 'Nenmenikkara', 'Enable', '0000-00-00', '0000-00-00'),
(1430, 20, 99, 'Hubli', 'Enable', '0000-00-00', '0000-00-00'),
(1431, 20, 99, 'Kannur', 'Enable', '0000-00-00', '0000-00-00'),
(1432, 20, 99, 'Kumarakom', 'Enable', '0000-00-00', '0000-00-00'),
(1433, 20, 99, 'Kolikod', 'Enable', '0000-00-00', '0000-00-00'),
(1434, 20, 99, 'Brahmakulam', 'Enable', '0000-00-00', '0000-00-00'),
(1435, 20, 99, 'Chengamanad', 'Enable', '0000-00-00', '0000-00-00'),
(1436, 20, 99, 'Kadachira', 'Enable', '0000-00-00', '0000-00-00'),
(1437, 20, 99, 'Marathakkara', 'Enable', '0000-00-00', '0000-00-00'),
(1438, 20, 99, 'Kureekkad', 'Enable', '0000-00-00', '0000-00-00'),
(1439, 20, 99, 'Komalapuram', 'Enable', '0000-00-00', '0000-00-00'),
(1440, 20, 99, 'Kottuvally', 'Enable', '0000-00-00', '0000-00-00'),
(1441, 20, 99, 'Cheruvannur', 'Enable', '0000-00-00', '0000-00-00'),
(1442, 20, 99, 'Edathala', 'Enable', '0000-00-00', '0000-00-00'),
(1443, 20, 99, 'Kannur Cantonment', 'Enable', '0000-00-00', '0000-00-00'),
(1444, 20, 99, 'Trissur', 'Enable', '0000-00-00', '0000-00-00'),
(1445, 20, 99, 'Kollam Tour', 'Enable', '0000-00-00', '0000-00-00'),
(1446, 20, 99, 'Mahe', 'Enable', '0000-00-00', '0000-00-00'),
(1447, 20, 99, 'Kovalam', 'Enable', '0000-00-00', '0000-00-00'),
(1448, 20, 99, 'Thrissur', 'Enable', '0000-00-00', '0000-00-00'),
(1449, 20, 99, 'Elayavoor', 'Enable', '0000-00-00', '0000-00-00'),
(1450, 20, 99, 'Kadamakkudy', 'Enable', '0000-00-00', '0000-00-00'),
(1451, 20, 99, 'Mavoor', 'Enable', '0000-00-00', '0000-00-00'),
(1452, 20, 99, 'Muhamma', 'Enable', '0000-00-00', '0000-00-00'),
(1453, 20, 99, 'Malappuram', 'Enable', '0000-00-00', '0000-00-00'),
(1454, 20, 99, 'Cheranallur', 'Enable', '0000-00-00', '0000-00-00'),
(1455, 20, 99, 'Iringaprom', 'Enable', '0000-00-00', '0000-00-00'),
(1456, 20, 99, 'Narath', 'Enable', '0000-00-00', '0000-00-00'),
(1457, 20, 99, 'Kadungalloor', 'Enable', '0000-00-00', '0000-00-00'),
(1458, 13, 99, 'Bagbahara', 'Enable', '0000-00-00', '0000-00-00'),
(1459, 13, 99, 'Bade Bacheli', 'Enable', '0000-00-00', '0000-00-00'),
(1460, 13, 99, 'Gandai', 'Enable', '0000-00-00', '0000-00-00'),
(1461, 13, 99, 'Khairagarh', 'Enable', '0000-00-00', '0000-00-00'),
(1462, 13, 99, 'Katghora', 'Enable', '0000-00-00', '0000-00-00'),
(1463, 13, 99, 'Khongapani', 'Enable', '0000-00-00', '0000-00-00'),
(1464, 13, 99, 'Dongargaon', 'Enable', '0000-00-00', '0000-00-00'),
(1465, 13, 99, 'Gaurella', 'Enable', '0000-00-00', '0000-00-00'),
(1466, 13, 99, 'Gobranawapara', 'Enable', '0000-00-00', '0000-00-00'),
(1467, 13, 99, 'Namna Kalan', 'Enable', '0000-00-00', '0000-00-00'),
(1468, 13, 99, 'Kawardha', 'Enable', '0000-00-00', '0000-00-00'),
(1469, 13, 99, 'Ratanpur', 'Enable', '0000-00-00', '0000-00-00'),
(1470, 13, 99, 'Basna', 'Enable', '0000-00-00', '0000-00-00'),
(1471, 13, 99, 'Chharchha', 'Enable', '0000-00-00', '0000-00-00'),
(1472, 13, 99, 'Bodri', 'Enable', '0000-00-00', '0000-00-00'),
(1473, 13, 99, 'Jhagrakhand', 'Enable', '0000-00-00', '0000-00-00'),
(1474, 13, 99, 'Kumhari', 'Enable', '0000-00-00', '0000-00-00'),
(1475, 13, 99, 'Kondagaon', 'Enable', '0000-00-00', '0000-00-00'),
(1476, 13, 99, 'Dalli Rajhara', 'Enable', '0000-00-00', '0000-00-00'),
(1477, 13, 99, 'Dongragarh', 'Enable', '0000-00-00', '0000-00-00'),
(1478, 13, 99, 'Geedam', 'Enable', '0000-00-00', '0000-00-00'),
(1479, 13, 99, 'Gogaon', 'Enable', '0000-00-00', '0000-00-00'),
(1480, 13, 99, 'Raipur', 'Enable', '0000-00-00', '0000-00-00'),
(1481, 13, 99, 'Dipka', 'Enable', '0000-00-00', '0000-00-00'),
(1482, 13, 99, 'Rajnandgaon', 'Enable', '0000-00-00', '0000-00-00'),
(1483, 13, 99, 'Jagdalpur', 'Enable', '0000-00-00', '0000-00-00'),
(1484, 13, 99, 'Durg', 'Enable', '0000-00-00', '0000-00-00'),
(1485, 13, 99, 'Chhuikhadan', 'Enable', '0000-00-00', '0000-00-00'),
(1486, 13, 99, 'Mungeli', 'Enable', '0000-00-00', '0000-00-00'),
(1487, 13, 99, 'Kirandul', 'Enable', '0000-00-00', '0000-00-00'),
(1488, 13, 99, 'Frezarpur', 'Enable', '0000-00-00', '0000-00-00'),
(1489, 13, 99, 'Gharghoda', 'Enable', '0000-00-00', '0000-00-00'),
(1490, 13, 99, 'Dongargarh', 'Enable', '0000-00-00', '0000-00-00'),
(1491, 13, 99, 'Bhilai', 'Enable', '0000-00-00', '0000-00-00'),
(1492, 13, 99, 'Deori..', 'Enable', '0000-00-00', '0000-00-00'),
(1493, 18, 99, 'Bokaro', 'Enable', '0000-00-00', '0000-00-00'),
(1494, 18, 99, 'Dumka', 'Enable', '0000-00-00', '0000-00-00'),
(1495, 18, 99, 'Bokaro Steel City', 'Enable', '0000-00-00', '0000-00-00'),
(1496, 18, 99, 'Basaria', 'Enable', '0000-00-00', '0000-00-00'),
(1497, 18, 99, 'Chhota Gobindpur', 'Enable', '0000-00-00', '0000-00-00'),
(1498, 18, 99, 'Hesla', 'Enable', '0000-00-00', '0000-00-00'),
(1499, 18, 99, 'Jharia Khas', 'Enable', '0000-00-00', '0000-00-00'),
(1500, 18, 99, 'Jugsalai', 'Enable', '0000-00-00', '0000-00-00'),
(1501, 18, 99, 'Malkera', 'Enable', '0000-00-00', '0000-00-00'),
(1502, 18, 99, 'Musabani', 'Enable', '0000-00-00', '0000-00-00'),
(1503, 18, 99, 'Kodarma', 'Enable', '0000-00-00', '0000-00-00'),
(1504, 18, 99, 'Bundu', 'Enable', '0000-00-00', '0000-00-00'),
(1505, 18, 99, 'Chandrapura', 'Enable', '0000-00-00', '0000-00-00'),
(1506, 18, 99, 'Deorikalan', 'Enable', '0000-00-00', '0000-00-00'),
(1507, 18, 99, 'Egarkunr', 'Enable', '0000-00-00', '0000-00-00'),
(1508, 18, 99, 'Gidi', 'Enable', '0000-00-00', '0000-00-00'),
(1509, 18, 99, 'Haludbani', 'Enable', '0000-00-00', '0000-00-00'),
(1510, 18, 99, 'Hazaribagh', 'Enable', '0000-00-00', '0000-00-00'),
(1511, 18, 99, 'Jamtara', 'Enable', '0000-00-00', '0000-00-00'),
(1512, 18, 99, 'Khunti', 'Enable', '0000-00-00', '0000-00-00'),
(1513, 18, 99, 'Deoghar', 'Enable', '0000-00-00', '0000-00-00'),
(1514, 18, 99, 'Dhanbad', 'Enable', '0000-00-00', '0000-00-00'),
(1515, 18, 99, 'Barhi.', 'Enable', '0000-00-00', '0000-00-00'),
(1516, 18, 99, 'Bagbera', 'Enable', '0000-00-00', '0000-00-00'),
(1517, 18, 99, 'Barajamda', 'Enable', '0000-00-00', '0000-00-00'),
(1518, 18, 99, 'Khelari', 'Enable', '0000-00-00', '0000-00-00'),
(1519, 18, 99, 'Jadugora', 'Enable', '0000-00-00', '0000-00-00'),
(1520, 18, 99, 'Jhinkpani', 'Enable', '0000-00-00', '0000-00-00'),
(1521, 18, 99, 'Kailudih', 'Enable', '0000-00-00', '0000-00-00'),
(1522, 18, 99, 'Kuju', 'Enable', '0000-00-00', '0000-00-00'),
(1523, 18, 99, 'Mugma', 'Enable', '0000-00-00', '0000-00-00'),
(1524, 18, 99, 'Kiriburu', 'Enable', '0000-00-00', '0000-00-00'),
(1525, 18, 99, 'Chandil', 'Enable', '0000-00-00', '0000-00-00'),
(1526, 18, 99, 'Chatra.', 'Enable', '0000-00-00', '0000-00-00'),
(1527, 18, 99, 'Deori Gididih District', 'Enable', '0000-00-00', '0000-00-00'),
(1528, 18, 99, 'Ghatshila', 'Enable', '0000-00-00', '0000-00-00'),
(1529, 18, 99, 'Godhar', 'Enable', '0000-00-00', '0000-00-00'),
(1530, 18, 99, 'Dugda', 'Enable', '0000-00-00', '0000-00-00'),
(1531, 18, 99, 'Gomoh', 'Enable', '0000-00-00', '0000-00-00'),
(1532, 18, 99, 'Patratu', 'Enable', '0000-00-00', '0000-00-00'),
(1533, 18, 99, 'Netarhat', 'Enable', '0000-00-00', '0000-00-00'),
(1534, 18, 99, 'Barkakana', 'Enable', '0000-00-00', '0000-00-00'),
(1535, 18, 99, 'Gadhra', 'Enable', '0000-00-00', '0000-00-00'),
(1536, 18, 99, 'Jharia', 'Enable', '0000-00-00', '0000-00-00'),
(1537, 18, 99, 'Jorapokhar', 'Enable', '0000-00-00', '0000-00-00'),
(1538, 18, 99, 'Maithon', 'Enable', '0000-00-00', '0000-00-00'),
(1539, 18, 99, 'Kurpania', 'Enable', '0000-00-00', '0000-00-00'),
(1540, 18, 99, 'Kustai', 'Enable', '0000-00-00', '0000-00-00'),
(1541, 18, 99, 'Barughutu', 'Enable', '0000-00-00', '0000-00-00'),
(1542, 18, 99, 'Chas', 'Enable', '0000-00-00', '0000-00-00'),
(1543, 18, 99, 'Chhotaputki', 'Enable', '0000-00-00', '0000-00-00'),
(1544, 18, 99, 'Dhaunsar', 'Enable', '0000-00-00', '0000-00-00'),
(1545, 18, 99, 'Ghorabandha', 'Enable', '0000-00-00', '0000-00-00'),
(1546, 18, 99, 'Gumia', 'Enable', '0000-00-00', '0000-00-00'),
(1547, 18, 99, 'Dumarkunda', 'Enable', '0000-00-00', '0000-00-00'),
(1548, 18, 99, 'Simdega', 'Enable', '0000-00-00', '0000-00-00'),
(1549, 18, 99, 'Latehar', 'Enable', '0000-00-00', '0000-00-00'),
(1550, 4, 99, 'Ahmedabad', 'Enable', '0000-00-00', '0000-00-00'),
(1551, 28, 99, 'Jaipur', 'Enable', '0000-00-00', '0000-00-00'),
(1552, 4, 99, 'Rajkot', 'Enable', '0000-00-00', '0000-00-00'),
(1553, 0, 0, 'Others', 'Enable', '0000-00-00', '0000-00-00'),
(1554, 35, 0, 'Bandlaguda ', 'Enable', '0000-00-00', '0000-00-00'),
(1555, 2, 0, 'Uttam Nagar', 'Enable', '0000-00-00', '0000-00-00'),
(1556, 32, 0, 'Taj Nagri', 'Enable', '0000-00-00', '0000-00-00'),
(1557, 32, 0, 'Firozabad', 'Enable', '0000-00-00', '0000-00-00'),
(1558, 2, 0, 'Dwarka', 'Enable', '0000-00-00', '0000-00-00'),
(1559, 20, 0, 'Calicut', 'Enable', '0000-00-00', '0000-00-00'),
(1560, 2, 0, 'Shahdara', 'Enable', '0000-00-00', '0000-00-00'),
(1561, 4, 0, 'Morbi', 'Enable', '0000-00-00', '0000-00-00'),
(1562, 21, 0, 'Dewas', 'Enable', '0000-00-00', '0000-00-00'),
(1563, 33, 0, 'Rudrapur', 'Enable', '0000-00-00', '0000-00-00'),
(1564, 5, 0, 'Bengaluru', 'Enable', '0000-00-00', '0000-00-00'),
(1565, 2, 0, 'GTB Enclave', 'Enable', '0000-00-00', '0000-00-00'),
(1566, 2, 0, 'Madanpur Khadar', 'Enable', '0000-00-00', '0000-00-00'),
(1567, 35, 0, 'Balanagar', 'Enable', '0000-00-00', '0000-00-00'),
(1568, 4, 0, 'Surat', 'Enable', '0000-00-00', '0000-00-00'),
(1569, 2, 0, 'Gt Karnal Road', 'Enable', '0000-00-00', '0000-00-00'),
(1570, 22, 0, 'Pune', 'Enable', '0000-00-00', '0000-00-00'),
(1571, 2, 0, 'Rohini', 'Enable', '0000-00-00', '0000-00-00'),
(1572, 34, 0, 'Kolkata', 'Enable', '0000-00-00', '0000-00-00'),
(1573, 21, 0, 'Bunder masjid', 'Enable', '0000-00-00', '0000-00-00'),
(1574, 4, 0, 'Khambhat', 'Enable', '0000-00-00', '0000-00-00'),
(1575, 32, 0, 'Moradabad', 'Enable', '0000-00-00', '0000-00-00'),
(1576, 35, 0, 'Telangana', 'Enable', '0000-00-00', '0000-00-00'),
(1577, 2, 0, 'Wazirabad', 'Enable', '0000-00-00', '0000-00-00'),
(1578, 2, 0, 'Chattarpur', 'Enable', '0000-00-00', '0000-00-00'),
(1579, 19, 0, 'Bangalore', 'Enable', '0000-00-00', '0000-00-00'),
(1580, 2, 0, 'Nihal Vihar', 'Enable', '0000-00-00', '0000-00-00'),
(1581, 2, 0, 'Khanpur', 'Enable', '0000-00-00', '0000-00-00'),
(1582, 2, 0, 'Swaroop Nagar', 'Enable', '0000-00-00', '0000-00-00'),
(1583, 2, 0, 'Tilak Nagar', 'Enable', '0000-00-00', '0000-00-00'),
(1584, 2, 0, 'Sangam Vihar', 'Enable', '0000-00-00', '0000-00-00'),
(1585, 2, 0, 'Vigyan Nagar', 'Enable', '0000-00-00', '0000-00-00'),
(1586, 2, 0, 'R K Puram', 'Enable', '0000-00-00', '0000-00-00'),
(1587, 4, 0, 'BHAVNAGAR', 'Enable', '0000-00-00', '0000-00-00'),
(1588, 28, 0, 'Bhilwara', 'Enable', '0000-00-00', '0000-00-00'),
(1589, 17, 0, 'Sopore', 'Enable', '0000-00-00', '0000-00-00'),
(1590, 2, 0, 'Janakpuri', 'Enable', '0000-00-00', '0000-00-00'),
(1591, 32, 0, 'Gautam Budh Nagar', 'Enable', '0000-00-00', '0000-00-00'),
(1593, 1, 0, '36 gaj', 'Enable', '2019-11-26', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `client_pid` int(11) NOT NULL DEFAULT '0',
  `client_user_id` int(11) NOT NULL,
  `client_title` varchar(150) NOT NULL,
  `client_post` varchar(100) NOT NULL,
  `client_content` varchar(1000) NOT NULL,
  `client_url` varchar(255) NOT NULL,
  `client_image` varchar(100) NOT NULL,
  `client_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `client_status` enum('Enable','Disable','Block') NOT NULL,
  `client_position` int(11) NOT NULL,
  `client_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cmsfeatures`
--

CREATE TABLE `cmsfeatures` (
  `id` int(11) NOT NULL,
  `cmsid` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `pdf` varchar(100) NOT NULL,
  `videos` varchar(100) NOT NULL,
  `feature_description` longtext NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `comp_id` int(11) NOT NULL,
  `comp_payment` float(10,2) NOT NULL,
  `comp_payment_date` datetime NOT NULL,
  `comp_payment_status` enum('Paid','Unpaid') NOT NULL DEFAULT 'Unpaid',
  `comp_cat_id` int(11) NOT NULL,
  `comp_email` varchar(100) NOT NULL,
  `comp_password` varchar(100) NOT NULL,
  `comp_title` varchar(10) NOT NULL,
  `comp_cp_name` varchar(100) NOT NULL,
  `comp_name` varchar(100) NOT NULL,
  `comp_catalog_url` varchar(100) NOT NULL,
  `comp_image` varchar(100) NOT NULL,
  `comp_business_category` int(11) NOT NULL,
  `comp_business_type` int(11) NOT NULL,
  `comp_buysell` int(11) NOT NULL,
  `comp_desination` varchar(50) NOT NULL,
  `comp_address` varchar(500) NOT NULL,
  `comp_country` int(11) NOT NULL,
  `comp_state` int(11) NOT NULL,
  `comp_city` int(11) NOT NULL,
  `comp_zip_code` varchar(50) NOT NULL,
  `comp_member_type` int(3) NOT NULL,
  `comp_ph_country_code` varchar(100) NOT NULL,
  `comp_ph_area_code` varchar(100) NOT NULL,
  `comp_phone_number` varchar(100) NOT NULL,
  `comp_mobile_number` varchar(100) NOT NULL,
  `comp_fax_country_code` varchar(100) NOT NULL,
  `comp_fax_area_code` varchar(100) NOT NULL,
  `comp_fax_number` varchar(100) NOT NULL,
  `comp_alt_email` varchar(50) NOT NULL,
  `comp_ceo_name` varchar(50) NOT NULL,
  `comp_establist_year` int(11) NOT NULL,
  `comp_number_of_employee` varchar(100) NOT NULL,
  `comp_turnover` varchar(100) NOT NULL,
  `comp_nature_of_business` varchar(100) NOT NULL,
  `comp_product_description` varchar(500) NOT NULL,
  `comp_hot_company` enum('Yes','No') NOT NULL DEFAULT 'No',
  `comp_e_trust` enum('Yes','No') NOT NULL DEFAULT 'No',
  `comp_url` varchar(50) NOT NULL,
  `comp_catelog_url` varchar(100) NOT NULL,
  `comp_comp_template_color` varchar(100) NOT NULL,
  `comp_live_chat` varchar(100) NOT NULL,
  `comp_chat_id` varchar(100) NOT NULL,
  `comp_sponsored_link` enum('Yes','No') NOT NULL DEFAULT 'No',
  `comp_premium_seller` enum('Yes','No') NOT NULL DEFAULT 'No',
  `comp_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `comp_register_by` enum('Self','Admin','None') NOT NULL DEFAULT 'None',
  `comp_small_description` varchar(500) NOT NULL,
  `comp_full_description` longtext NOT NULL,
  `compFbProfile` varchar(500) NOT NULL,
  `compGplusProfile` varchar(500) NOT NULL,
  `compTwtProfile` varchar(500) NOT NULL,
  `compLnkdProfile` varchar(500) NOT NULL,
  `compInstaProfile` varchar(500) NOT NULL,
  `compBloggerProfile` varchar(500) NOT NULL,
  `compSkypeProfile` varchar(500) NOT NULL,
  `compPinterestProfile` varchar(500) NOT NULL,
  `compYoutubeProfile` varchar(500) NOT NULL,
  `compCatalogueProfile` varchar(500) NOT NULL,
  `compWhatsappNumber` varchar(500) NOT NULL,
  `compCustomerSupportNumber` varchar(500) NOT NULL,
  `compPaytmNumber` varchar(500) NOT NULL,
  `compWorkingHours` varchar(500) NOT NULL,
  `compGoogleMap` varchar(500) NOT NULL,
  `compLiveChatCode` varchar(500) NOT NULL,
  `comp_term_condition` varchar(10) NOT NULL,
  `comp_addDate` datetime NOT NULL,
  `comp_editDate` datetime NOT NULL,
  `comp_verified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `comp_verified_date` date NOT NULL,
  `comp_status` enum('Enable','Disable','Block','Pending') NOT NULL DEFAULT 'Pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consultants`
--

CREATE TABLE `consultants` (
  `consul_id` int(11) NOT NULL,
  `consul_name` varchar(200) DEFAULT NULL,
  `consul_image` varchar(100) NOT NULL,
  `consul_designation` varchar(200) DEFAULT NULL,
  `consul_content` text NOT NULL,
  `consul_email` varchar(100) NOT NULL,
  `consul_mobile` varchar(100) NOT NULL,
  `consul_facebook` varchar(100) NOT NULL,
  `consul_skype` varchar(100) NOT NULL,
  `consul_availability` varchar(200) DEFAULT NULL,
  `consul_status` enum('Enable','Disable','Block') NOT NULL,
  `consul_position` int(11) NOT NULL,
  `consul_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `cont_id` int(11) NOT NULL,
  `cont_user_id` int(11) NOT NULL,
  `cont_name` varchar(100) NOT NULL,
  `cont_comp_name` varchar(100) NOT NULL,
  `cont_comp_small_name` varchar(100) NOT NULL,
  `cont_establishment_year` varchar(100) NOT NULL,
  `cont_business_Nature` varchar(255) NOT NULL,
  `cont_number_employees` varchar(255) NOT NULL,
  `cont_market_covered` varchar(255) NOT NULL,
  `cont_email` varchar(100) NOT NULL,
  `cont_enquiry_email` varchar(100) NOT NULL,
  `cont_forgetpassword_token` varchar(100) NOT NULL,
  `cont_forgetpassword_token_time` datetime NOT NULL,
  `cont_mobile` varchar(100) NOT NULL,
  `cont_labdline` varchar(100) NOT NULL,
  `cont_whatsapp_number` varchar(100) NOT NULL,
  `cont_cust_supp_number` varchar(100) NOT NULL,
  `cont_paytm_number` varchar(100) NOT NULL,
  `cont_paytm_qrcode` varchar(100) NOT NULL,
  `cont_fax` varchar(100) NOT NULL,
  `cont_address` varchar(255) NOT NULL,
  `cont_offc_address` varchar(1000) NOT NULL,
  `cont_head_office_mail` varchar(100) NOT NULL,
  `cont_head_office_mobile` varchar(100) NOT NULL,
  `cont_head_office_map` longtext NOT NULL,
  `cont_buss_address` varchar(1000) NOT NULL,
  `cont_business_office_mail` varchar(100) NOT NULL,
  `cont_business_office_mobile` varchar(100) NOT NULL,
  `cont_business_office_map` longtext NOT NULL,
  `cont_state` varchar(100) NOT NULL,
  `cont_city` varchar(100) NOT NULL,
  `cont_pincode` varchar(20) NOT NULL,
  `cont_country` varchar(100) NOT NULL,
  `cont_website` varchar(100) NOT NULL,
  `cont_catalog_url` varchar(100) NOT NULL,
  `cont_gp_link` varchar(100) NOT NULL,
  `cont_fb_link` varchar(255) NOT NULL,
  `cont_fb_like_code` varchar(500) NOT NULL,
  `cont_ytd_link` varchar(500) NOT NULL,
  `cont_copyright` longtext NOT NULL,
  `cont_copyright_year` varchar(100) NOT NULL,
  `cont_design_developed_by` longtext NOT NULL,
  `cont_twt_link` varchar(255) NOT NULL,
  `cont_linkedin_link` varchar(255) NOT NULL,
  `cont_live_chat` varchar(1000) NOT NULL,
  `cont_skype` varchar(100) NOT NULL,
  `cont_instagram_link` varchar(100) NOT NULL,
  `cont_pinterest_link` varchar(100) NOT NULL,
  `cont_others_link` varchar(100) NOT NULL,
  `cont_rss_link` varchar(100) NOT NULL,
  `cont_working_time` varchar(200) NOT NULL,
  `cont_vistor_counter` int(11) NOT NULL,
  `cont_domain_name` varchar(200) NOT NULL,
  `cont_outgoing_mail` varchar(200) NOT NULL,
  `cont_server_email` varchar(200) NOT NULL,
  `cont_server_email_pass` varchar(200) NOT NULL,
  `cont_lang_converter` varchar(1000) NOT NULL,
  `cont_google_maps` longtext NOT NULL,
  `cont_blog_url` varchar(200) NOT NULL,
  `cont_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`cont_id`, `cont_user_id`, `cont_name`, `cont_comp_name`, `cont_comp_small_name`, `cont_establishment_year`, `cont_business_Nature`, `cont_number_employees`, `cont_market_covered`, `cont_email`, `cont_enquiry_email`, `cont_forgetpassword_token`, `cont_forgetpassword_token_time`, `cont_mobile`, `cont_labdline`, `cont_whatsapp_number`, `cont_cust_supp_number`, `cont_paytm_number`, `cont_paytm_qrcode`, `cont_fax`, `cont_address`, `cont_offc_address`, `cont_head_office_mail`, `cont_head_office_mobile`, `cont_head_office_map`, `cont_buss_address`, `cont_business_office_mail`, `cont_business_office_mobile`, `cont_business_office_map`, `cont_state`, `cont_city`, `cont_pincode`, `cont_country`, `cont_website`, `cont_catalog_url`, `cont_gp_link`, `cont_fb_link`, `cont_fb_like_code`, `cont_ytd_link`, `cont_copyright`, `cont_copyright_year`, `cont_design_developed_by`, `cont_twt_link`, `cont_linkedin_link`, `cont_live_chat`, `cont_skype`, `cont_instagram_link`, `cont_pinterest_link`, `cont_others_link`, `cont_rss_link`, `cont_working_time`, `cont_vistor_counter`, `cont_domain_name`, `cont_outgoing_mail`, `cont_server_email`, `cont_server_email_pass`, `cont_lang_converter`, `cont_google_maps`, `cont_blog_url`, `cont_created`) VALUES
(1, 1, 'Mr. Munmun Kumar', 'Vpestify', 'KBH', '', '', '', '', 'kumarmunmun@gmail.com', 'kumarmunmun@gmail.com', '0a44db4db5582646f321cba040150d00', '2018-05-15 23:28:13', '+91-9650539282, +91- 8851517652', '+91-9650539282, +91- 8851517652', '+91-9650539282, +91- 8851517652', '+91-9650539282, +91- 8851517652', '', 'cca9eb9f7aa60dc278ef1a8374589506.jpg', '', 'Bhardwaj Complex, Ground Floor, Jharsa Village, Sector 39,', 'C-37, Chanakya Palace 1, Uttam Nagar, Delhi -110059', '', '', '', 'C-37, Chanakya Palace 1, Uttam Nagar, Delhi -110059', '', '', '', 'Haryana', 'Gurugram', '122022', 'India', '', '', '', '', '', '', 'Vpestify', '', '', '', '', '', '', '', '', '', '', 'Mon 10Am to 12PM,Tue 10Am to 2PM,wed 10Am to 1PM,the 10Am to 3PM,,,', 0, '', '', '', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28018.257191047865!2d77.03521730236153!3d28.621304696603197!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d04d9e11a08cf%3A0xc1a5a267ef8fd396!2sUttam%20Nagar%2C%20Delhi%2C%20110059!5e0!3m2!1sen!2sin!4v1599119099670!5m2!1sen!2sin', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `cunt_pid` int(11) NOT NULL,
  `cunt_name` varchar(192) COLLATE latin1_general_ci NOT NULL,
  `cunt_iso_code_2` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `cunt_iso_code_3` varchar(9) COLLATE latin1_general_ci NOT NULL,
  `cunt_order` int(11) UNSIGNED NOT NULL,
  `cunt_adddate` date NOT NULL,
  `cunt_editdate` date NOT NULL,
  `cunt_status` enum('Enable','Disable','Block') COLLATE latin1_general_ci NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `cunt_pid`, `cunt_name`, `cunt_iso_code_2`, `cunt_iso_code_3`, `cunt_order`, `cunt_adddate`, `cunt_editdate`, `cunt_status`) VALUES
(223, 1, 'Afghanistan', 'AF', 'AFG', 999, '0000-00-00', '0000-00-00', 'Enable'),
(2, 1, 'Albania', 'AL', 'ALB', 999, '0000-00-00', '0000-00-00', 'Enable'),
(3, 1, 'Algeria', 'DZ', 'DZA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(4, 1, 'American Samoa', 'AS', 'ASM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(5, 1, 'Andorra', 'AD', 'AND', 999, '0000-00-00', '0000-00-00', 'Enable'),
(6, 1, 'Angola', 'AO', 'AGO', 999, '0000-00-00', '0000-00-00', 'Enable'),
(7, 1, 'Anguilla', 'AI', 'AIA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(8, 1, 'Antarctica', 'AQ', 'ATA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(9, 1, 'Antigua and Barbuda', 'AG', 'ATG', 999, '0000-00-00', '0000-00-00', 'Enable'),
(10, 1, 'Argentina', 'AR', 'ARG', 999, '0000-00-00', '0000-00-00', 'Enable'),
(11, 1, 'Armenia', 'AM', 'ARM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(12, 1, 'Aruba', 'AW', 'ABW', 999, '0000-00-00', '0000-00-00', 'Enable'),
(13, 1, 'Australia', 'AU', 'AUS', 4, '0000-00-00', '0000-00-00', 'Enable'),
(14, 1, 'Austria', 'AT', 'AUT', 999, '0000-00-00', '0000-00-00', 'Enable'),
(15, 1, 'Azerbaijan', 'AZ', 'AZE', 999, '0000-00-00', '0000-00-00', 'Enable'),
(16, 1, 'Bahamas', 'BS', 'BHS', 999, '0000-00-00', '0000-00-00', 'Enable'),
(17, 1, 'Bahrain', 'BH', 'BHR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(18, 1, 'Bangladesh', 'BD', 'BGD', 999, '0000-00-00', '0000-00-00', 'Enable'),
(19, 1, 'Barbados', 'BB', 'BRB', 999, '0000-00-00', '0000-00-00', 'Enable'),
(20, 1, 'Belarus', 'BY', 'BLR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(21, 1, 'Belgium', 'BE', 'BEL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(22, 1, 'Belize', 'BZ', 'BLZ', 999, '0000-00-00', '0000-00-00', 'Enable'),
(23, 1, 'Benin', 'BJ', 'BEN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(24, 1, 'Bermuda', 'BM', 'BMU', 999, '0000-00-00', '0000-00-00', 'Enable'),
(25, 1, 'Bhutan', 'BT', 'BTN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(26, 1, 'Bolivia', 'BO', 'BOL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(27, 1, 'Bosnia and Herzegowina', 'BA', 'BIH', 999, '0000-00-00', '0000-00-00', 'Enable'),
(28, 1, 'Botswana', 'BW', 'BWA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(29, 1, 'Bouvet Island', 'BV', 'BVT', 999, '0000-00-00', '0000-00-00', 'Enable'),
(30, 1, 'Brazil', 'BR', 'BRA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(32, 1, 'Brunei Darussalam', 'BN', 'BRN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(33, 1, 'Bulgaria', 'BG', 'BGR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(34, 1, 'Burkina Faso', 'BF', 'BFA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(35, 1, 'Burundi', 'BI', 'BDI', 999, '0000-00-00', '0000-00-00', 'Enable'),
(36, 1, 'Cambodia', 'KH', 'KHM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(37, 1, 'Cameroon', 'CM', 'CMR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(38, 1, 'Canada', 'CA', 'CAN', 2, '0000-00-00', '0000-00-00', 'Enable'),
(39, 1, 'Cape Verde', 'CV', 'CPV', 999, '0000-00-00', '0000-00-00', 'Enable'),
(40, 1, 'Cayman Islands', 'KY', 'CYM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(41, 1, 'Central African Republic', 'CF', 'CAF', 999, '0000-00-00', '0000-00-00', 'Enable'),
(42, 1, 'Chad', 'TD', 'TCD', 999, '0000-00-00', '0000-00-00', 'Enable'),
(43, 1, 'Chile', 'CL', 'CHL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(44, 1, 'China', 'CN', 'CHN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(45, 1, 'Christmas Island', 'CX', 'CXR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(46, 1, 'Cocos (Keeling) Islands', 'CC', 'CCK', 999, '0000-00-00', '0000-00-00', 'Enable'),
(47, 1, 'Colombia', 'CO', 'COL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(48, 1, 'Comoros', 'KM', 'COM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(49, 1, 'Congo', 'CG', 'COG', 999, '0000-00-00', '0000-00-00', 'Enable'),
(50, 1, 'Cook Islands', 'CK', 'COK', 999, '0000-00-00', '0000-00-00', 'Enable'),
(51, 1, 'Costa Rica', 'CR', 'CRI', 999, '0000-00-00', '0000-00-00', 'Enable'),
(52, 1, 'Cote D\'Ivoire', 'CI', 'CIV', 999, '0000-00-00', '0000-00-00', 'Enable'),
(53, 1, 'Croatia', 'HR', 'HRV', 999, '0000-00-00', '0000-00-00', 'Enable'),
(54, 1, 'Cuba', 'CU', 'CUB', 999, '0000-00-00', '0000-00-00', 'Enable'),
(55, 1, 'Cyprus', 'CY', 'CYP', 999, '0000-00-00', '0000-00-00', 'Enable'),
(56, 1, 'Czech Republic', 'CZ', 'CZE', 999, '0000-00-00', '0000-00-00', 'Enable'),
(57, 1, 'Denmark', 'DK', 'DNK', 999, '0000-00-00', '0000-00-00', 'Enable'),
(58, 1, 'Djibouti', 'DJ', 'DJI', 999, '0000-00-00', '0000-00-00', 'Enable'),
(59, 1, 'Dominica', 'DM', 'DMA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(60, 1, 'Dominican Republic', 'DO', 'DOM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(61, 1, 'East Timor', 'TP', 'TMP', 999, '0000-00-00', '0000-00-00', 'Enable'),
(62, 1, 'Ecuador', 'EC', 'ECU', 999, '0000-00-00', '0000-00-00', 'Enable'),
(63, 1, 'Egypt', 'EG', 'EGY', 999, '0000-00-00', '0000-00-00', 'Enable'),
(64, 1, 'El Salvador', 'SV', 'SLV', 999, '0000-00-00', '0000-00-00', 'Enable'),
(65, 1, 'Equatorial Guinea', 'GQ', 'GNQ', 999, '0000-00-00', '0000-00-00', 'Enable'),
(66, 1, 'Eritrea', 'ER', 'ERI', 999, '0000-00-00', '0000-00-00', 'Enable'),
(67, 1, 'Estonia', 'EE', 'EST', 999, '0000-00-00', '0000-00-00', 'Enable'),
(68, 1, 'Ethiopia', 'ET', 'ETH', 999, '0000-00-00', '0000-00-00', 'Enable'),
(69, 1, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 999, '0000-00-00', '0000-00-00', 'Enable'),
(70, 1, 'Faroe Islands', 'FO', 'FRO', 999, '0000-00-00', '0000-00-00', 'Enable'),
(71, 1, 'Fiji', 'FJ', 'FJI', 999, '0000-00-00', '0000-00-00', 'Enable'),
(72, 1, 'Finland', 'FI', 'FIN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(73, 1, 'France', 'FR', 'FRA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(74, 1, 'France, Metropolitan', 'FX', 'FXX', 999, '0000-00-00', '0000-00-00', 'Enable'),
(75, 1, 'French Guiana', 'GF', 'GUF', 999, '0000-00-00', '0000-00-00', 'Enable'),
(76, 1, 'French Polynesia', 'PF', 'PYF', 999, '0000-00-00', '0000-00-00', 'Enable'),
(77, 1, 'French Southern Territories', 'TF', 'ATF', 999, '0000-00-00', '0000-00-00', 'Enable'),
(78, 1, 'Gabon', 'GA', 'GAB', 999, '0000-00-00', '0000-00-00', 'Enable'),
(79, 1, 'Gambia', 'GM', 'GMB', 999, '0000-00-00', '0000-00-00', 'Enable'),
(80, 1, 'Georgia', 'GE', 'GEO', 999, '0000-00-00', '0000-00-00', 'Enable'),
(81, 1, 'Germany', 'DE', 'DEU', 999, '0000-00-00', '0000-00-00', 'Enable'),
(82, 1, 'Ghana', 'GH', 'GHA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(83, 1, 'Gibraltar', 'GI', 'GIB', 999, '0000-00-00', '0000-00-00', 'Enable'),
(84, 1, 'Greece', 'GR', 'GRC', 999, '0000-00-00', '0000-00-00', 'Enable'),
(85, 1, 'Greenland', 'GL', 'GRL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(86, 1, 'Grenada', 'GD', 'GRD', 999, '0000-00-00', '0000-00-00', 'Enable'),
(87, 1, 'Guadeloupe', 'GP', 'GLP', 999, '0000-00-00', '0000-00-00', 'Enable'),
(88, 1, 'Guam', 'GU', 'GUM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(89, 1, 'Guatemala', 'GT', 'GTM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(90, 1, 'Guinea', 'GN', 'GIN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(91, 1, 'Guinea-bissau', 'GW', 'GNB', 999, '0000-00-00', '0000-00-00', 'Enable'),
(92, 1, 'Guyana', 'GY', 'GUY', 999, '0000-00-00', '0000-00-00', 'Enable'),
(93, 1, 'Haiti', 'HT', 'HTI', 999, '0000-00-00', '0000-00-00', 'Enable'),
(94, 1, 'Heard and Mc Donald Islands', 'HM', 'HMD', 999, '0000-00-00', '0000-00-00', 'Enable'),
(95, 1, 'Honduras', 'HN', 'HND', 999, '0000-00-00', '0000-00-00', 'Enable'),
(96, 1, 'Hong Kong', 'HK', 'HKG', 999, '0000-00-00', '0000-00-00', 'Enable'),
(97, 1, 'Hungary', 'HU', 'HUN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(98, 1, 'Iceland', 'IS', 'ISL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(99, 1, 'India', 'IN', 'IND', 999, '0000-00-00', '0000-00-00', 'Enable'),
(100, 1, 'Indonesia', 'ID', 'IDN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(101, 1, 'Iran (Islamic Republic of)', 'IR', 'IRN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(102, 1, 'Iraq', 'IQ', 'IRQ', 999, '0000-00-00', '0000-00-00', 'Enable'),
(103, 1, 'Ireland', 'IE', 'IRL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(104, 1, 'Israel', 'IL', 'ISR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(105, 1, 'Italy', 'IT', 'ITA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(106, 1, 'Jamaica', 'JM', 'JAM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(107, 1, 'Japan', 'JP', 'JPN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(108, 1, 'Jordan', 'JO', 'JOR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(109, 1, 'Kazakhstan', 'KZ', 'KAZ', 999, '0000-00-00', '0000-00-00', 'Enable'),
(110, 1, 'Kenya', 'KE', 'KEN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(111, 1, 'Kiribati', 'KI', 'KIR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1153, 1, 'Man', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(113, 1, 'S. Korea', 'KR', 'KOR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(114, 1, 'Kuwait', 'KW', 'KWT', 999, '0000-00-00', '0000-00-00', 'Enable'),
(115, 1, 'Kyrgyzstan', 'KG', 'KGZ', 999, '0000-00-00', '0000-00-00', 'Enable'),
(116, 1, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 999, '0000-00-00', '0000-00-00', 'Enable'),
(117, 1, 'Latvia', 'LV', 'LVA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(118, 1, 'Lebanon', 'LB', 'LBN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(119, 1, 'Lesotho', 'LS', 'LSO', 999, '0000-00-00', '0000-00-00', 'Enable'),
(120, 1, 'Liberia', 'LR', 'LBR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(121, 1, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 999, '0000-00-00', '0000-00-00', 'Enable'),
(122, 1, 'Liechtenstein', 'LI', 'LIE', 999, '0000-00-00', '0000-00-00', 'Enable'),
(123, 1, 'Lithuania', 'LT', 'LTU', 999, '0000-00-00', '0000-00-00', 'Enable'),
(124, 1, 'Luxembourg', 'LU', 'LUX', 999, '0000-00-00', '0000-00-00', 'Enable'),
(125, 1, 'Macau', 'MO', 'MAC', 999, '0000-00-00', '0000-00-00', 'Enable'),
(126, 1, 'Macedonia, the Former Yugoslav Republic of', 'MK', 'MKD', 999, '0000-00-00', '0000-00-00', 'Enable'),
(127, 1, 'Madagascar', 'MG', 'MDG', 999, '0000-00-00', '0000-00-00', 'Enable'),
(128, 1, 'Malawi', 'MW', 'MWI', 999, '0000-00-00', '0000-00-00', 'Enable'),
(129, 1, 'Malaysia', 'MY', 'MYS', 999, '0000-00-00', '0000-00-00', 'Enable'),
(130, 1, 'Maldives', 'MV', 'MDV', 999, '0000-00-00', '0000-00-00', 'Enable'),
(131, 1, 'Mali', 'ML', 'MLI', 999, '0000-00-00', '0000-00-00', 'Enable'),
(132, 1, 'Malta', 'MT', 'MLT', 999, '0000-00-00', '0000-00-00', 'Enable'),
(133, 1, 'Marshall Islands', 'MH', 'MHL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(134, 1, 'Martinique', 'MQ', 'MTQ', 999, '0000-00-00', '0000-00-00', 'Enable'),
(135, 1, 'Mauritania', 'MR', 'MRT', 999, '0000-00-00', '0000-00-00', 'Enable'),
(136, 1, 'Mauritius', 'MU', 'MUS', 999, '0000-00-00', '0000-00-00', 'Enable'),
(137, 1, 'Mayotte', 'YT', 'MYT', 999, '0000-00-00', '0000-00-00', 'Enable'),
(138, 1, 'Mexico', 'MX', 'MEX', 999, '0000-00-00', '0000-00-00', 'Enable'),
(139, 1, 'Micronesia, Federated States of', 'FM', 'FSM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(140, 1, 'Moldova, Republic of', 'MD', 'MDA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(141, 1, 'Monaco', 'MC', 'MCO', 999, '0000-00-00', '0000-00-00', 'Enable'),
(142, 1, 'Mongolia', 'MN', 'MNG', 999, '0000-00-00', '0000-00-00', 'Enable'),
(143, 1, 'Montserrat', 'MS', 'MSR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(144, 1, 'Morocco', 'MA', 'MAR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(145, 1, 'Mozambique', 'MZ', 'MOZ', 999, '0000-00-00', '0000-00-00', 'Enable'),
(146, 1, 'Myanmar', 'MM', 'MMR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(147, 1, 'Namibia', 'NA', 'NAM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(148, 1, 'Nauru', 'NR', 'NRU', 999, '0000-00-00', '0000-00-00', 'Enable'),
(149, 1, 'Nepal', 'NP', 'NPL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(150, 1, 'Netherlands', 'NL', 'NLD', 999, '0000-00-00', '0000-00-00', 'Enable'),
(151, 1, 'Netherlands Antilles', 'AN', 'ANT', 999, '0000-00-00', '0000-00-00', 'Enable'),
(152, 1, 'New Caledonia', 'NC', 'NCL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(153, 1, 'New Zealand', 'NZ', 'NZL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(154, 1, 'Nicaragua', 'NI', 'NIC', 999, '0000-00-00', '0000-00-00', 'Enable'),
(155, 1, 'Niger', 'NE', 'NER', 999, '0000-00-00', '0000-00-00', 'Enable'),
(156, 1, 'Nigeria', 'NG', 'NGA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(157, 1, 'Niue', 'NU', 'NIU', 999, '0000-00-00', '0000-00-00', 'Enable'),
(158, 1, 'Norfolk Island', 'NF', 'NFK', 999, '0000-00-00', '0000-00-00', 'Enable'),
(159, 1, 'Northern Mariana Islands', 'MP', 'MNP', 999, '0000-00-00', '0000-00-00', 'Enable'),
(160, 1, 'Norway', 'NO', 'NOR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(161, 1, 'Oman', 'OM', 'OMN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(162, 1, 'Pakistan', 'PK', 'PAK', 999, '0000-00-00', '0000-00-00', 'Enable'),
(163, 1, 'Palau', 'PW', 'PLW', 999, '0000-00-00', '0000-00-00', 'Enable'),
(164, 1, 'Panama', 'PA', 'PAN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(165, 1, 'Papua New Guinea', 'PG', 'PNG', 999, '0000-00-00', '0000-00-00', 'Enable'),
(166, 1, 'Paraguay', 'PY', 'PRY', 999, '0000-00-00', '0000-00-00', 'Enable'),
(167, 1, 'Peru', 'PE', 'PER', 999, '0000-00-00', '0000-00-00', 'Enable'),
(168, 1, 'Philippines', 'PH', 'PHL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(169, 1, 'Pitcairn', 'PN', 'PCN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(170, 1, 'Poland', 'PL', 'POL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(171, 1, 'Portugal', 'PT', 'PRT', 999, '0000-00-00', '0000-00-00', 'Enable'),
(172, 1, 'Puerto Rico', 'PR', 'PRI', 999, '0000-00-00', '0000-00-00', 'Enable'),
(173, 1, 'Qatar', 'QA', 'QAT', 999, '0000-00-00', '0000-00-00', 'Enable'),
(174, 1, 'Reunion', 'RE', 'REU', 999, '0000-00-00', '0000-00-00', 'Enable'),
(175, 1, 'Romania', 'RO', 'ROM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(176, 1, 'Russian Federation', 'RU', 'RUS', 999, '0000-00-00', '0000-00-00', 'Enable'),
(177, 1, 'Rwanda', 'RW', 'RWA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(178, 1, 'Saint Kitts and Nevis', 'KN', 'KNA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(179, 1, 'Saint Lucia', 'LC', 'LCA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(180, 1, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 999, '0000-00-00', '0000-00-00', 'Enable'),
(181, 1, 'Samoa', 'WS', 'WSM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(182, 1, 'San Marino', 'SM', 'SMR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(183, 1, 'Sao Tome and Principe', 'ST', 'STP', 999, '0000-00-00', '0000-00-00', 'Enable'),
(184, 1, 'Saudi Arabia', 'SA', 'SAU', 999, '0000-00-00', '0000-00-00', 'Enable'),
(185, 1, 'Senegal', 'SN', 'SEN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(186, 1, 'Seychelles', 'SC', 'SYC', 999, '0000-00-00', '0000-00-00', 'Enable'),
(187, 1, 'Sierra Leone', 'SL', 'SLE', 999, '0000-00-00', '0000-00-00', 'Enable'),
(188, 1, 'Singapore', 'SG', 'SGP', 999, '0000-00-00', '0000-00-00', 'Enable'),
(189, 1, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 999, '0000-00-00', '0000-00-00', 'Enable'),
(190, 1, 'Slovenia', 'SI', 'SVN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(191, 1, 'Solomon Islands', 'SB', 'SLB', 999, '0000-00-00', '0000-00-00', 'Enable'),
(192, 1, 'Somalia', 'SO', 'SOM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(193, 1, 'South Africa', 'ZA', 'ZAF', 999, '0000-00-00', '0000-00-00', 'Enable'),
(194, 1, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 999, '0000-00-00', '0000-00-00', 'Enable'),
(195, 1, 'Spain', 'ES', 'ESP', 999, '0000-00-00', '0000-00-00', 'Enable'),
(196, 1, 'Sri Lanka', 'LK', 'LKA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(197, 1, 'St. Helena', 'SH', 'SHN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(198, 1, 'St. Pierre and Miquelon', 'PM', 'SPM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(199, 1, 'Sudan', 'SD', 'SDN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(200, 1, 'Suriname', 'SR', 'SUR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(202, 1, 'Swaziland', 'SZ', 'SWZ', 999, '0000-00-00', '0000-00-00', 'Enable'),
(203, 1, 'Sweden', 'SE', 'SWE', 999, '0000-00-00', '0000-00-00', 'Enable'),
(204, 1, 'Switzerland', 'CH', 'CHE', 999, '0000-00-00', '0000-00-00', 'Enable'),
(205, 1, 'Syrian Arab Republic', 'SY', 'SYR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(206, 1, 'Taiwan', 'TW', 'TWN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(207, 1, 'Tajikistan', 'TJ', 'TJK', 999, '0000-00-00', '0000-00-00', 'Enable'),
(208, 1, 'Tanzania, United Republic of', 'TZ', 'TZA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(209, 1, 'Thailand', 'TH', 'THA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(210, 1, 'Togo', 'TG', 'TGO', 999, '0000-00-00', '0000-00-00', 'Enable'),
(211, 1, 'Tokelau', 'TK', 'TKL', 999, '0000-00-00', '0000-00-00', 'Enable'),
(212, 1, 'Tonga', 'TO', 'TON', 999, '0000-00-00', '0000-00-00', 'Enable'),
(213, 1, 'Trinidad and Tobago', 'TT', 'TTO', 999, '0000-00-00', '0000-00-00', 'Enable'),
(214, 1, 'Tunisia', 'TN', 'TUN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(215, 1, 'Turkey', 'TR', 'TUR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(216, 1, 'Turkmenistan', 'TM', 'TKM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(217, 1, 'Turks and Caicos Islands', 'TC', 'TCA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(218, 1, 'Tuvalu', 'TV', 'TUV', 999, '0000-00-00', '0000-00-00', 'Enable'),
(219, 1, 'Uganda', 'UG', 'UGA', 999, '0000-00-00', '0000-00-00', 'Enable'),
(220, 1, 'Ukraine', 'UA', 'UKR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(221, 1, 'United Arab Emirates', 'AE', 'ARE', 999, '0000-00-00', '0000-00-00', 'Enable'),
(222, 1, 'United Kingdom', 'GB', 'GBR', 3, '0000-00-00', '0000-00-00', 'Enable'),
(1, 1, 'United States', 'US', 'USA', 1, '0000-00-00', '0000-00-00', 'Enable'),
(1161, 1, 'Midway Islands', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(225, 1, 'Uruguay', 'UY', 'URY', 999, '0000-00-00', '0000-00-00', 'Enable'),
(226, 1, 'Uzbekistan', 'UZ', 'UZB', 999, '0000-00-00', '0000-00-00', 'Enable'),
(227, 1, 'Vanuatu', 'VU', 'VUT', 999, '0000-00-00', '0000-00-00', 'Enable'),
(228, 1, 'Vatican City State (Holy See)', 'VA', 'VAT', 999, '0000-00-00', '0000-00-00', 'Enable'),
(229, 1, 'Venezuela', 'VE', 'VEN', 999, '0000-00-00', '0000-00-00', 'Enable'),
(230, 1, 'Viet Nam', 'VN', 'VNM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(231, 1, 'Virgin Islands (British)', 'VG', 'VGB', 999, '0000-00-00', '0000-00-00', 'Enable'),
(232, 1, 'Virgin Islands (U.S.)', 'VI', 'VIR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(233, 1, 'Wallis and Futuna Islands', 'WF', 'WLF', 999, '0000-00-00', '0000-00-00', 'Enable'),
(234, 1, 'Western Sahara', 'EH', 'ESH', 999, '0000-00-00', '0000-00-00', 'Enable'),
(235, 1, 'Yemen', 'YE', 'YEM', 999, '0000-00-00', '0000-00-00', 'Enable'),
(236, 1, 'Yugoslavia', 'YU', 'YUG', 999, '0000-00-00', '0000-00-00', 'Enable'),
(237, 1, 'Zaire', 'ZR', 'ZAR', 999, '0000-00-00', '0000-00-00', 'Enable'),
(238, 1, 'Zambia', 'ZM', 'ZMB', 999, '0000-00-00', '0000-00-00', 'Enable'),
(239, 1, 'Zimbabwe', 'ZW', 'ZWE', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1162, 1, 'Miscellaneous (French)', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1166, 1, 'Montenegro', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1173, 1, 'Navassa Island', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1189, 1, 'Palmyra Atoll', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1192, 1, 'Paracel Islands', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1215, 1, 'Serbia', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1216, 1, 'Serbia and Montenegro', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1227, 1, 'Spratly Islands', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1013, 1, 'Ashmore and Cartier', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1019, 1, 'Baker Island', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1035, 1, 'British Virgin Islands', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1039, 1, 'Burma', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1051, 1, 'Clipperton Island', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1058, 1, 'Coral Sea Islands', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1077, 1, 'Europa Island', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1089, 1, 'Gaza Strip', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1094, 1, 'Glorioso Islands', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1101, 1, 'Guernsey', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1110, 1, 'Howland Island', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1121, 1, 'Jan Mayen', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1123, 1, 'Jarvis Island', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1124, 1, 'Jersey', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1125, 1, 'Johnston Atoll', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1127, 1, 'Juan de Nova Island', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1130, 1, 'Kingman Reef', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1133, 1, 'North Korea', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1244, 1, 'Tromelin Island', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1255, 1, 'United States Minor Outlying Islands', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1261, 1, 'Virgin Islands', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1264, 1, 'Wake Island', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1266, 1, 'West Bank', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1268, 1, 'Western Samoa', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1269, 1, 'World', '', '', 999, '0000-00-00', '0000-00-00', 'Enable'),
(1275, 1, 'Palestinian Territory', '', '', 999, '0000-00-00', '0000-00-00', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(11) NOT NULL,
  `coupon_min_amount` int(11) NOT NULL,
  `coupon_number` varchar(100) NOT NULL,
  `coupon_number_discount_per` int(11) NOT NULL,
  `coupon_create_date` datetime NOT NULL,
  `coupon_reg_user_id` int(11) NOT NULL,
  `coupon_ord_id` int(11) NOT NULL,
  `coupan_apply_date` datetime NOT NULL,
  `coupon_status` enum('Enable','Disable','Applied') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `adddate`, `editdate`, `status`) VALUES
(1, 'Indian Postal Service', '0000-00-00', '0000-00-00', 'Active'),
(2, 'DHL Express India Pvt. Ltd', '0000-00-00', '0000-00-00', 'Active'),
(3, 'Blue Dart Express Limited', '0000-00-00', '0000-00-00', 'Active'),
(4, 'First Flight Courier Limited', '0000-00-00', '0000-00-00', 'Active'),
(5, 'FedEx India', '0000-00-00', '0000-00-00', 'Active'),
(6, 'DTDC Courier and Cargo limited', '0000-00-00', '0000-00-00', 'Active'),
(7, 'TNT Express', '0000-00-00', '0000-00-00', 'Active'),
(8, 'Gati Limited', '0000-00-00', '0000-00-00', 'Active'),
(9, 'Overnite Express Limited', '0000-00-00', '0000-00-00', 'Active'),
(10, 'The Professional Courier Network Limited', '0000-00-00', '0000-00-00', 'Active'),
(11, 'Palande Courier Services', '0000-00-00', '0000-00-00', 'Active'),
(12, 'DTDC AIR CARGO APEX', '0000-00-00', '0000-00-00', 'Active'),
(13, 'United Parcel Service (UPS)', '0000-00-00', '0000-00-00', 'Active'),
(14, 'Aramex', '0000-00-00', '0000-00-00', 'Active'),
(15, 'Professional Couriers', '0000-00-00', '0000-00-00', 'Active'),
(16, 'Express Courier Services', '0000-00-00', '0000-00-00', 'Active'),
(17, 'I.B Courier and Cargo', '0000-00-00', '0000-00-00', 'Active'),
(18, 'Pitney Bowes India Pvt. Ltd', '0000-00-00', '0000-00-00', 'Active'),
(19, 'On Dot Couriers & Cargo Ltd', '0000-00-00', '0000-00-00', 'Active'),
(20, 'Agarwal packers and movers', '0000-00-00', '0000-00-00', 'Active'),
(21, 'Globe Express Services', '0000-00-00', '0000-00-00', 'Active'),
(22, 'Trackon Couriers Pvt Ltd.', '0000-00-00', '0000-00-00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `coursename` varchar(100) NOT NULL,
  `courseimage` varchar(100) NOT NULL,
  `coursehome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `courseduration` int(11) NOT NULL,
  `coursefees` float(10,2) NOT NULL,
  `courseinstallment` int(11) NOT NULL,
  `coursetotalmarks` int(11) NOT NULL,
  `coursepassingmarks` int(11) NOT NULL,
  `courseorder` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `createjobs`
--

CREATE TABLE `createjobs` (
  `jobs_id` int(11) NOT NULL,
  `jobs_type` int(11) NOT NULL,
  `jobs_location` int(11) NOT NULL,
  `jobs_date` date NOT NULL,
  `jobs_name` varchar(100) NOT NULL,
  `jobs_small_content` varchar(1000) NOT NULL,
  `jobs_full_content` longtext NOT NULL,
  `jobs_status` enum('Enable','Disable','Block') NOT NULL,
  `jobs_position` int(11) NOT NULL,
  `jobs_add_date` date NOT NULL,
  `jobs_update_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `lead_cname` varchar(100) NOT NULL,
  `lead_pemail` varchar(100) NOT NULL,
  `lead_street` date NOT NULL,
  `lead_postalcode` varchar(100) NOT NULL,
  `lead_city` varbinary(500) NOT NULL,
  `lead_website` varchar(500) NOT NULL,
  `lead_catalogue_url` varchar(50) NOT NULL,
  `lead_mobile` varchar(100) NOT NULL,
  `lead_description` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `lead_cname`, `lead_pemail`, `lead_street`, `lead_postalcode`, `lead_city`, `lead_website`, `lead_catalogue_url`, `lead_mobile`, `lead_description`) VALUES
(1, 'PK\0\0\0\0\0!\0b??h^\0\0?\0\0\0[Content_Types].xml ?(?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '???DO97*?~???8?O?c|n???E???????B??!$}?????;{???[?????2?\0\0??\0PK\0\0\0\0\0!\0?U0#?\0\0\0L\0\0\0_', '0000-00-00', '', '', '', '', '', ''),
(2, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '', '0000-00-00', '', '', '', '', '', ''),
(3, '???????%???l!?	k?!?????i?????\Z@????d????k?j\"?]k??nb?*?{P???????', '+p{?=c+???#??I`zqT?r?%_?s???/?????$?1x?k??t???FV??????0H??J?{#?w??????A?i????L?\"R?S??', '0000-00-00', '', '', '', '', '', ''),
(4, 'd&??b\'???CV??~?F^{\0?#J}j?l4??otk??????\"?g?????@??.\09Z????US??eL+]?hI$?????F?C.KVT_?l8??Yt', '?8??(%???\"D???4j?0u2js??MY??????S???? ?)f???C????y??	I<\ry\0???!+??E????fMy?k?????K?5=|?t ??', '0000-00-00', '', '', '', '', '', ''),
(5, 'o???}z????????w???????>?}}?p?????????????????????|?????????????????????7??=?{??>???????????|~', '', '0000-00-00', '', '', '', '', '', ''),
(6, '?i?&|L2Mv?KmW?u]?4???t?????}?????=A\"??WvT+LS8?-?&_???&??h???b??M-????r9???$????rT+LS8?-?', '', '0000-00-00', '', '', '', '', '', ''),
(7, 'hbn ??R??AB?jv?j?i', '', '0000-00-00', '', '', '', '', '', ''),
(8, '??E?NR????h??ki-??M5?pan ??O??&v?j?i', '', '0000-00-00', '', '', '', '', '', ''),
(9, '??E?A?\rfS??0?Z?AM??\r?]????A\"????)?M%?oz^9?????y?EOS}7??PA??^?a?;????#7v??2??te????uM3?j^[?', '', '0000-00-00', '', '', '', '', '', ''),
(10, '?bo?0????????b?n?]??6?|???k?', '', '0000-00-00', '', '', '', '', '', ''),
(11, '?U?D??\0?U???~???a??0??\r?e?`B?Zv??????9???WU??????3{?aG?0??LD?zcG?J???)cMV?az;V]?v]7???4?e?', '', '0000-00-00', '', '', '', '', '', ''),
(12, '??\\???e??#@??0', '?V?eY???;?8}????????=???9?rR??r????6?%??`v+*?K??I????8}??{q???h`[tU9??^?>?|L???Ÿ??-Rv??N?a??/', '0000-00-00', '', '', '', '', '', ''),
(13, 'F!?^??????Zo?)~Y????E\rn?????U?K_??X?U?hE???????\\Et ???????y~4?M?r6??x?? ?b?4?.??$N????	>?h*Q??', '???|?ac?#?`?YuYr???', '0000-00-00', '', '', '', '', '', ''),
(14, ')?<???k?_????g????(?s2?n?e?T?\\???\r)?Z??????????3\Z?&e9?~e??XVU??N?', '', '0000-00-00', '', '', '', '', '', ''),
(15, ')c?oA??-????)c?o', '	e??????0??P???????2v?????l??\"?pk', '0000-00-00', 'u?????g??!??', '', '', '', '', ''),
(16, '???$cE????7?}#????????=???1s??:????U9rb?[Q!e??Mb??7 ??..L!???~4?M?rr?:??Qi?????[Qa???-?f???', '?L=?S???38?d%v?G.v?VTH????;X\r?v??>\ZKBY?y?&\'???+e]?];??_Q!e??????Q??]@e??~4???hp[?????^9?X8?', '0000-00-00', '', '', '', '', '', ''),
(17, '???? Zb?9|??\"?z?r?ƒ????=0???6?{?u??', '?????T?+{?qHX@1e?%?', '0000-00-00', '?C?qHX@1e?%?', 0x550f34397a60065fb683faba6c866ee0eda01515522621c1a4fa032da783b3344848307a808f031e8d25a1, 'U49z`_?\0?s?????P???I 0z`?@`?\0?\Z?????Es?@??\Zhu???R&???\\?:XK??M5`?]D??', 'G4a??>??jY??VT@????????j\0WZ?ƒ?TE??(??.?', '', ''),
(18, 'G???M?R&???\\|?????j?(??z5 \Z??', 'ks?^w??@???iocE????7 ?????_@a?', '0000-00-00', '', '', '', '', '', ''),
(19, '??Gc?gY4?M?r?mT\r?-?.\'?V????{b?oA??PL?\0cI(K?mN5`_\"&?t???e??y?????T?+g???E?q??h', '	e?????????q???P?????[???2?', '0000-00-00', '', '', '', '', '', ''),
(20, '??`?Q', '???(????ƒP?Z?r??l???:???^QeR? v???E?I9?Xb??m-???U????O@?N???<???8', '0000-00-00', '', '', '', '', '', ''),
(21, '(??????8', '??2ƒP???%0??????8??sE??q ? ?`?q 0???????6?Z??\"?????P&?~-H??q????2??k>N(K?t9:`??', '0000-00-00', '', '', '', '', '', ''),
(22, 'y??', '???:@%???	e?:???3x?n?v?z?eE?l??7b??o@\\??]>.?er??|\'?', '0000-00-00', '?ha?`c?)??1?????l<bk?@????<???8', 0xa0983cd601c6929097aa03fa1c1d30832f94b5031e52ece580e88a, '', '', '', ''),
(23, ')?@`A?k??(?LnKBY??st?t@?}Z??@????Z?q ? (??u??$????>G??p??\r&\Z??^Q!e', '?u?q X@1e??%?', '0000-00-00', '', '', '', '', '', ''),
(24, ')??)~????$??P4??v??$?', 'U?9:`;g?g?????', '0000-00-00', '', '', '', '', '', ''),
(25, '(???$?_u\0???v?S&?_-	e?:???38????Y?VTH???u)???????v??NBY?rt????P?}???lA??-?u??f????%', '\Z?/r????2?:???x???R?????[??S???X?R??!\'???+ee??V?????2v???I9xE?I9?X?R??!\'????????G???-?', '0000-00-00', '', '', '', '', '', ''),
(26, '(?r???7??^', 'E?I9?|?P?????\'^??B??J4?a???B?$ ???%	F?=acI?K?9:`??\0???L?//???B^%KR^', '0000-00-00', '', '', '', '', '', ''),
(27, ')?@`R|y?Z?@`t\0???$?', 'U?????c???', '0000-00-00', '', '', '', '', '', ''),
(28, '?{?????<)[?bE????&?ac???5??E0??m??qs???', '', '0000-00-00', '', '', '', '', '', ''),
(29, ')?@`A?', '???)cE`', '0000-00-00', '??q X@1e??%?', 0x55118c398a600687eebf69fb411e255c5101655218b62071ff4611f0d5dfdbc55244991486cdc70965a98a60cca907cce090323ce0db345c4b5f512165e2fe8d0ee0abbf076b49dcbfd101fc1ce7d15812ca5275c098a30366f08532f8b2114f1dd018762b2aa44cdcbf49f10771ff0624e5e0e5e3a25926e560f39d84b2541d30e6e880191cec6e74553bdd4364f76fb2777e497abf9a, '', '', '', ''),
(30, 'x?????????)?I}4????z???fp??<?+?+*d?B??h?', '??z??b?hR?%?', '0000-00-00', ']??qBE???cx=???????K7L?G<9\rq_??:????q??*??%?:????z8H?~??us?R???k_?-^hb-q?????B??+?????W?A', '', '', '', '', ''),
(31, '#?)???w?u?t??6?;g?A?·?0?J?EI?0?q?Pf?~?R??0?\ZG?Q*', '*<&?qA?Q\\u?????a?(?x_??0?!n?????09??U?\'x7o???7JA?Q\\??u(??QQ???M?.AW??-??&w???????=??', '0000-00-00', 'XFa?5??t0?JÄ?	$?B]??H??fYa\"R?$?H?+??Y{?3?s(\r%???:?_???&??#???', 0xeaa22a055a31d578a992eb0fbb93d138c2b67c211cd4a94e6839d1c1ac73280d135aa568b9580eea12aa14c95d92cbb93970724a4c7d92fb12ef1360d34e669d66ed2d5f0c077506c5755e50e7501a26b43681cab1, '?5??-????S?	?:?', '???MRb??0?P\Z&TM`_B?KP?]?!As', '?M?	??g?iR\\I???G????%???NF???%4O?|??x?+?<????S??????4????G????D???\\', 'w?(y]4???$??2???G??4e?hy?9_&?(>N|FE?W???R?????g8}??j{?????7?[yt?????;??3?????????d5??V?V?Y7??!2??u?]R?Vn?{_.?(?%6???#&?.?6\rq{?f?~??+?U?\0X???i?'),
(32, '?0?P?Klmi?0j???X?	j\"\Z?6uYj\"??<???n???M?e??_gt???aB?<!_?Y??&??-?mUVr?	?:t\\?t??4\\n????N????a¨	?', '', '0000-00-00', '', '', '', '', '', ''),
(33, '?3&??Q\"?M/fyl??l????M]?I??3??D???1-?[?a]Z????o:1?M(??	??/?????l?O???7??N?q^`?????%??L??_8?=', '', '0000-00-00', '', '', '', '', '', ''),
(34, '??? ?/?8', 'W?=JÄQ????R?B???`??8?Q?c<?=(\'?I\'?2??EI??(	??s+?/_c?&?r??\rK?qv??%6??A3?:???s?/:.??Q????	?', '0000-00-00', '', '', '', '', '', ''),
(35, '???;y~$???J?X?M???_d?	????$f???Nq????:N{?83M?;n?????:x?M?hi?}t?$t$w??F??Q??a?\Z?l??%s?', '', '0000-00-00', '', '', '', '', '', ''),
(36, '#?&???p??O?us??X???Y????	>7?Y??0?!nS??0???#v????T\"vx?B?\"?L?:??%??Y??k??.AaDC????a', '', '0000-00-00', '', '', '', '', '', ''),
(37, '?.?bw??)Y?F1??\0????x#?doAE?NO$??.?!nS?u?)?2???', '', '0000-00-00', '', '', '', '', '', ''),
(38, 'O??nZ:?vf?Q??=?:??=?Q?\'ZM_>?jr??l\Z5??0E?N9?Pq%bw?:AO??8???$L???????????R9j?zM??s?W?%91?', 'JÄ??Ws[?~?xHIf]?????M???M?;5??????%???\\??\0?]aQ\Z0L?B?[\Zk??A???K?q?j?\Z?\Z?V??????\rp????{????*?5&?', '0000-00-00', 'J', '', '', '', '', ''),
(39, '<??u?\'Z\\_??u??tu?F???N6=]Ki=`Qr??4L?9(lf??K???lV?\"?q?8[!S_g?z????s\0?aB?:?u	U?h???eU', '', '0000-00-00', '', '', '', '', '', ''),
(40, '??2??4???q?Q???K?;w%a?t??[		??/??j??j??)??:4???.???W?A??\\?>x??	?7?8L$?????=???<E??Q?1??', 'J???????	m??LD?????Rqgl??v???Yg????kV?74?`?-Q?;v??1??????Rq?l?{*???\'??d????kZ?%oP?li?0jB?O', '0000-00-00', 'H?????XMx??3*Z?\\?>Z[???C?.?6Q????\r?', '', '', '', '', ''),
(41, '??????', '???3j????0qF???????P0Y??????z?{??????/?v?????7?~?_?C}~?e:P??_???B??????????p??iMoj???????', '0000-00-00', '?K?:??\ZA?', '', '', '', '', ''),
(42, '??]?6?Kr???3?=v?P<s?L???~&!E?w?I|??;D=CP?1?	???f\"??j??\'??e??????t???e?<???3;:????St??{?', '', '0000-00-00', '', '', '', '', '', ''),
(43, '???\\D??Zl??6FV???????\'?w?ws?[???:?(e?D??	?', 'kzh???p??s?yUs^?????f?^>?e?k??Z????Aj??|??&????O???3!????Bw}??0??Q?\'?j?\"??5?', '0000-00-00', '', '', '', '', '', ''),
(44, '0mx???E???A?A?f??c??????', '', '0000-00-00', '', '', '', '', '', ''),
(45, '?Fz?3??Pb/3 ?tS?qyjui??E?-#?t??0?0??', ';??Y????2O?b?r3??kE\"\'??&&S??;n??j?*#4k????x?#?[?S?vI?n?wa???D?:\\?N?1??{??-_-?\r4??m+W?', '0000-00-00', '?J??????fw?<zp8?R?PBo?#(???6`??Y??9\'-?~)l?J?-?\Za?T?R????vV???\\?u*?`?Q\\???\\a?Evi???.???-?', '', '', '', '', ''),
(46, '?r?[j%e~?Y??J;????? +c`?)}d?\0?j???\0\0??\0PK\0\0\0\0\0!\0&H??V\0\0;', '', '0000-00-00', '', '', '', '', '', ''),
(47, '\0\0\r\0\0\0xl/styles.xml?V[??8~_i???w??6????R?nUif??:`?? ?LI???=6??v63]???????q??=P?2%3^QY???', '', '0000-00-00', '', '', '', '', '', ''),
(48, '?^??J?R+-?Q????T??$?A??$???D???x?\r1l?83\'???(???Ri??@??D]??uzt??O?Vj??\\????)???I9!?????', '', '0000-00-00', '', '', '', '', '', ''),
(49, 'Vy?~E??&?~???+??2?4??[??v?Y???O?:?', '', '0000-00-00', '', '', '', '', '', ''),
(50, 'W??N0?U??G??Y??5?u??]?????m???ShC?', '@@????@?:??????z??)???7??????<I?n?1Y?VNx????r/o?t?:?wT?)???Tj???Q\r<w?h?<??+I??L?x\'8?r??fq', '0000-00-00', '', '', '', '', '', ''),
(51, '??nD???????$?3I?<?h?4?\'?.B??y?Q??l/??S8?z}????K?-VW???????x?>|\\?????q???Z?????`??|?rwd?0??v', 'g?l?????????f???g?d??yN?????mS??2?u?(lvZ?A3?~??-?\"??????+b???=?\Z?G?~?%??%????w;wE?p?_??o?4??r??G', '0000-00-00', 'O??7??$?\Z]6?\Z??/?]?I????8?.????+????K?*?<???\'?????n?J?y?6Y?xN]?w`y?Y?.?Y?b?d??l?{L???O??K^', 0xa3fd577f63d80ef7e1fe254956da53c4def3f73ce4, 'M???@??}a+??D~???q????s7?~?f???w5?????l?????????r??E?????w<????????K?~????X?Y???', '', '', ''),
(52, '????q??xL??5?????&?U?>t??OX?`?4??M^?4w????^???{???%;?e?&?', '???v?f?`N??3<s??4????g??=?k6;?b??????blW?P?A?.y?yv<j???<<6??i??|?G????c?????????3?<?p?}??', '0000-00-00', '', '', '', '', '', ''),
(53, '??.?m??5???c?x?<?y?%h?? ??3?¿?i3??9???2?a6??????\0`???wtg??-Fn???.hs\'?2J_tO???M?d?m?	\r?BF?????l?&?', '', '0000-00-00', '', '', '', '', '', ''),
(54, '?#a?1??\rP7?%M\0n^???a?o??mv??\0v????`??????~?9~`??^`??\'{??8y?%??\Zn]??m??', '', '0000-00-00', '', '', '', '', '', ''),
(55, '?E~?Z?.?H??{??????0??u;l&=?G??{?J', '??????f?$????E>????7????v??ks????+???<?o???u???p{?e???_??p\\?.???????q\"Y^_{:???)???pgxf?Ws?', '0000-00-00', '', '', '', '', '', ''),
(56, '[b??I?\'?\r???a?!;.??=F??UuXO]?K^\0?Qr??q?_[??2?????h???J?3V??\r??X(L??B????????L????\"t??z	', '???iY?2??\\?`|m??????Z?9j?z?????KM??5?4?L????{?O?h??J|???a??_?????sG`?\0Q*p????B???h?v?', '0000-00-00', '???k??o??\0~b?P?v???/_?0[?}?6?hv??Q?Qh{6;?Y=?m?\0?G?m??\"????X?>???$?????\' O?n?l??\\&;??js???', 0x9026621ae507304f5d8d6fcfcf64947f9e38e3f1d0f982e0a4b483142a51e021e30ee9512a809551ecfc3674562f7dcdb7884d6efd35ac8676ca570851311cc9d1fae5bfbcc549cd097103281ad3332537ce3a87635e25, '??A a?E?????5????k?\0H\ZmDILT???u?D8?g0?8?\Z?????b?)', '', '', ''),
(57, 'A?@[Bl?Q~?e?j?u?	??=?@u?f?	??\"]???	?a???wxvL????d?y?(?$', '(??:6;.1 q[???ZC??kO???	NX?K?=?0?G??h?E?b???R?.????????\"#?Ez?2s??H?&M??@??z< ?e6??^m\"3', '0000-00-00', '?O???[3?I?+??(??\'?WD??(??9t??*eE-????~<h?_^???:???R???@??g????o9m\0Ii?Q??\0??E???d?r\08?', 0xd20d0606438b5b39434eb4c8c074fc50af3ceb3407ddb7acba7f24d56d4f09a924e060b3e5e66250e6c8da838d85f2f7b31542f87b4028d351397306254f83f40e0e219bbf604365aa77d6c01081493760b362a1a771b672704563dd91257f377361c5e640f09af33cd148c3d65bdee8448c684f30875ac10803b362e123b916030bf2d4126395d3080382ef30e795a6ac030e130f86c8eaca39ac5a9563f24e108dc237c4940d376f4e71125d3c68846e5a1a2bca9e6582f31d1dca2d9bd7a542412b0d48807260d7892456d76e0e7eb116f5656210b69b845064eaa083b3ac22d9716113807ddef3bcd555fbdd45286796a8f178539b51870229fa731beeeb331033cc006924b443662505b8a301f2e42187ce05d9008f2982135b9026351635b9d70d98c1752302385926d674849808372526aa4fe7d1e9c10c1441805d495c1cfe01c426a25c6470d4e93738c8, '', '', '', ''),
(58, '2?u?#?[?ps}????R??G?y?:-v??L???w1?$?S\r6?a.??D?R:?~?=4n\Z??R??@Rk!?L??%1rLnV??UKAi?\Z3??l8???Kdcb?-', '?MlB????IE??%??:???b???J?%??C}', '0000-00-00', '', '', '', '', '', ''),
(59, '?|	????%B?Q?????:???yGt??bHI???B?@W-?S???LC????q?? ?{gJY}???????>???\"7???E_Q?I??C???n', '', '0000-00-00', '', '', '', '', '', ''),
(60, '(??B-	^J$u???CY?nhK?\0??6Y??????}?n?i3;?P?Bi??d??V?)@??>h?]?nr-?	\ra7`a?<??!???BJ?u5`	?;(?', '', '0000-00-00', '', '', '', '', '', ''),
(61, '?5?<??:?gL????9??G?_?\\[4?P?6;??&Mj?4?d????\Z6?2???B?S ?', '????F`\0?C??c?p?nn??+?\\?s??	????.??Rh??\\??????????????\\8?jBO?????H?{L?H??`0?:|:?2?x?{??Y?3x\0', '0000-00-00', '', '', '', '', '', ''),
(62, 'LJR????	Hx????.+??F:aB?Kr???{???N????y+??v?.:Bk', 'I', '0000-00-00', '', '', '', '', '', ''),
(63, 'ugzirŽ%??????PP???r?R????e??_!??8G???lI?Ekl	?%M:qf??l*ID???????M', '', '0000-00-00', '', '', '', '', '', ''),
(64, '??ic\r!?fC?y????=???_????E;-?-w?H??t?[P????e?%p??#%*S?', '', '0000-00-00', '', '', '', '', '', ''),
(65, '?\Z??{????[?n\0?	??^????;$Q????_?5????SX????<$???Æt=?b?????3???R????', '', '0000-00-00', '', '', '', '', '', ''),
(66, '?@?S???R?H?l?Q?????t??8*?V??wb????>	p:e@??', '', '0000-00-00', '', '', '', '', '', ''),
(67, '???b?Els', 'd6?\"?[95??rMD?Q???$A?b??~???Qq??z~???:IS_w???3???\r?G???3C??z??>??? ??(x?H?f???B??u??<b?R?Z', '0000-00-00', '', '', '', '', '', ''),
(68, 'M?? ?yB?#t??\0???	??h?? ??!????F??n|W?', '', '0000-00-00', '', '', '', '', '', ''),
(69, '?%_???????????j_??J?6$???&?X0pL??LLY????ul?T?????\rQ$??E\0???a[??y', '', '0000-00-00', '', '', '', '', '', ''),
(70, '?? A?>?49?0??p', '(?.??2!9?\0?_h??F!?zW??Rn6u `?J??|??FH????)???-?Db?T??*?M??gS&#(?t??^Ia?q?Iqrw??@??te?', '0000-00-00', '', '', '', '', '', ''),
(71, '&;?C', 'DB|?Cm?????\0.\r??bUc???????E8\'s??>??????X?1![d+?v9?ik????', '0000-00-00', '???R!A????KR???\Z??\Z??šQy?*?????@2B0\\???_?[????`??$??\"????z@\0?? M?CZ?5????|?P=??B??@?&?60?', '', '', '', '', ''),
(72, '?? ?u:?I1?Q?\\??8?%X?T??P?j.?', '7#R?+?BmH??o???T?_-?W/u??G`?J???$O?Y?/????????G????D??7+', '0000-00-00', '', '', '', '', '', ''),
(73, '???Y??$U0???L??z?????2W[??q?t.\'???????Tj?&??j?T?t???]', '??C????G\rdQ?k?\"??>?Vt0??|@;*9?ip??[!?', '0000-00-00', '', '', '', '', '', ''),
(74, '??D??+6 ^!??E???b???G??b)??3?`? *?\"??c \Z??~??r??\0??Rd\'????0?b???[???Db??c??P?B@?.d????', '??8???OI??R??\r????-????\r?????^?UMD????$?06=Q?P4?07H@6\"??n?G? ?1?q6?d?\\L??9??1??????o?*\Z2?)z', '0000-00-00', '', '', '', '', '', ''),
(75, '-??A3uNDY???L?-N???r?z4????V?i??Z)C?;?R?p$???????>b7?S??@Xfz?\r?B???q????S????;j1??*?$J?', '', '0000-00-00', '', '', '', '', '', ''),
(76, '??? ??i?k??;??\0OT??>??????6?uu&%?Q?_??T??\Z????\"??????o??b??cS|V??', 'UdC:?A=+??m??I???`v??Wz;L.?!k??n?#_???C???????~?o? ???T\Z?r???Q[?W|5c?$??bs?0?? X>z?Q?G?#Aq', '0000-00-00', '', '', '', '', '', ''),
(77, 'F', '%2???c??l6\r??>?HM????#~#????xT?6??	?H*o?#b9????@T\ZG', '0000-00-00', '', '', '', '', '', ''),
(78, '?k !!?????q???yU=?`?U?\r?<?Z+a????????n?uR?:??(??????C<G??k5wD?8????$??v?J????hiJ??\Z?!?wl?9?', 'z?=m??e?Jc???%???%T.??t??|??m?????Fo???J??AI?GE(MZ ?h?Ht?4?\r`?h??[r??{t?s???@l3}kBO???\"?', '0000-00-00', '', '', '', '', '', ''),
(79, '???^-d??d???cE\Z?sm?', '??', '0000-00-00', '?D\r??`???\Z?????.:???R?W??L(?u???G?SQ4k?0\'F?`GC\r!I??y?v?5?a???i?+Q^??#????zW?Y??%5??i\r\\??|?^', '', '', '', '', ''),
(80, 'Y?^B]??K.`?Y?^????9?)?????*?z?=?d;?KG 9??W?aP ???V?l}U?G???Y????q8%|???L?6`?2l?????6[z?e?', '', '0000-00-00', '', '', '', '', '', ''),
(81, '\"+?1?sO?~???KE?.??G?L?c?CqW\r?A???y?0??qC\"?s???????M??\r???F?????D?Eg?	E?SW{g\0???\r?wmk$', '', '0000-00-00', '', '', '', '', '', ''),
(82, 'a?J???a?gB?5QJ?N?tY?F-', '', '0000-00-00', '', '', '', '', '', ''),
(83, '??z??????(o??q???&Z????)?0??iT\rqF???JJ????^<?D????n)9??x??7d?%*???lN?^?Qy25x??)??Fg?H?G?o', '????GK?r	5??9??WQ??[?X?????}GmxPu$?#$5?m', '0000-00-00', 'b_9?Z???K?x 401??DP????Zz?|C??kE2#@?I????!-??D?^???Ë2?m??????i?\r{??\0\0\0??\0PK\0\0\0\0\0!\0??', 0x59c71392252479f8689dfc986fedf70fe2ece7ffc43b92a623e20550e6f8eacb945f000000ffff0300504b03041400060008000000210061490910890100001103000010000801646f6350726f70732f6170702e786d6c20a2040128a000010000000000000000000000, '', '', '', ''),
(84, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '', '0000-00-00', '', '', '', '', '', ''),
(85, '\0\0xl/_rels/workbook.xml.relsPK-\0\0\0\0\0\0!\0?.D??&\0\06?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?\0\0xl/worksheets/sheet1.xmlPK', '', '0000-00-00', '', '', '', '', '', ''),
(86, '\0\0\r\0\0\0\0\0\0\0\0\0\0\0\0\0?:\0\0xl/styles.xmlPK-\0\0\0\0\0\0!\0[??M-&\0\0?}\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0g>\0\0xl/sharedStrings.xmlP', '', '0000-00-00', '', '', '', '', '', ''),
(87, '\0', '', '0000-00-00', '', '', '', '', '', ''),
(88, '\0?\0\0	j\0\0\0\0', '', '0000-00-00', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desctiption` varchar(200) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `dest_id` int(11) NOT NULL,
  `dest_pid` int(11) NOT NULL,
  `dest_name` varchar(100) NOT NULL,
  `dest_small_desciption` longtext NOT NULL,
  `dest_full_desciption` longtext NOT NULL,
  `dest_order` int(11) NOT NULL,
  `dest_created` datetime NOT NULL,
  `dest_modified` datetime NOT NULL,
  `dest_status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `direc_id` int(11) NOT NULL,
  `direc_pid` int(11) NOT NULL DEFAULT '0',
  `direc_user_id` int(11) NOT NULL,
  `direc_title` varchar(100) NOT NULL,
  `direc_short_desciption` varchar(600) NOT NULL,
  `direc_text` varchar(1000) NOT NULL,
  `direc_url` varchar(255) NOT NULL,
  `direc_image` varchar(100) NOT NULL,
  `direc_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `direc_status` enum('Enable','Disable','Block') NOT NULL,
  `direc_position` int(11) NOT NULL,
  `direc_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doner`
--

CREATE TABLE `doner` (
  `doner_id` int(11) NOT NULL,
  `doner_pid` int(11) NOT NULL DEFAULT '0',
  `doner_gproid` int(11) NOT NULL,
  `doner_user_id` int(11) NOT NULL,
  `doner_title` varchar(150) NOT NULL,
  `doner_name` varchar(100) NOT NULL,
  `doner_address` varchar(500) NOT NULL,
  `doner_phone` varchar(30) NOT NULL,
  `doner_qualification` varchar(50) NOT NULL,
  `doner_email` varchar(1000) NOT NULL,
  `doner_url` varchar(255) NOT NULL,
  `doner_image` varchar(100) NOT NULL,
  `doner_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `doner_status` enum('Enable','Disable','Block') NOT NULL,
  `doner_position` int(11) NOT NULL,
  `doner_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ebrochures`
--

CREATE TABLE `ebrochures` (
  `ebroch_id` int(11) NOT NULL,
  `ebroch_user_id` int(11) NOT NULL,
  `ebroch_name` varchar(150) NOT NULL,
  `ebroch_text` varchar(1000) NOT NULL,
  `ebroch_url` varchar(255) NOT NULL,
  `ebroch_image` varchar(100) NOT NULL,
  `ebroch_status` enum('Enable','Disable','Block') NOT NULL,
  `ebroch_position` int(11) NOT NULL,
  `ebroch_created` date NOT NULL,
  `ebroch_updated` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `eid` int(11) NOT NULL,
  `enumber` varchar(50) NOT NULL,
  `edomain` varchar(100) NOT NULL,
  `epass` varchar(50) NOT NULL,
  `email_complete` varchar(100) NOT NULL,
  `email_verified` enum('Not Verified','Email Verified') NOT NULL DEFAULT 'Not Verified',
  `email_created` datetime NOT NULL,
  `email_status` enum('Enable','Disable') NOT NULL DEFAULT 'Disable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `enq_id` int(11) NOT NULL,
  `enq_user_id` int(11) NOT NULL,
  `tempo` varchar(100) NOT NULL,
  `pickupcity` varchar(100) NOT NULL,
  `pickuplocation` varchar(100) NOT NULL,
  `pickupaddress` varchar(255) NOT NULL,
  `dropcity` varchar(100) NOT NULL,
  `droplocation` varchar(100) NOT NULL,
  `dropaddress` varchar(100) NOT NULL,
  `mydate` varchar(100) NOT NULL,
  `mytime` varchar(100) NOT NULL,
  `enq_email` varchar(100) NOT NULL,
  `enq_comp_name` varchar(100) NOT NULL,
  `enq_address` varchar(255) NOT NULL,
  `enq_country` varchar(100) NOT NULL,
  `enq_name` varchar(100) NOT NULL,
  `enq_mobile` varchar(20) NOT NULL,
  `enq_product` varchar(100) NOT NULL,
  `enq_message` varchar(1000) NOT NULL,
  `enq_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_pid` int(11) NOT NULL,
  `event_url` varchar(100) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `event_title` varchar(55) NOT NULL,
  `event_code` varchar(100) NOT NULL,
  `event_time` varchar(100) NOT NULL,
  `event_location` varchar(255) NOT NULL,
  `event_meta_keyword` varchar(300) NOT NULL,
  `event_meta_description` varchar(155) NOT NULL,
  `event_date` date NOT NULL,
  `event_image` varchar(1000) NOT NULL,
  `event_small_desciption` longtext NOT NULL,
  `event_full_desciption` longtext NOT NULL,
  `event_position` int(11) NOT NULL,
  `event_created` datetime NOT NULL,
  `event_modified` datetime NOT NULL,
  `event_types` enum('Event','Information') NOT NULL DEFAULT 'Event',
  `event_status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `examduration` varchar(100) NOT NULL,
  `examtime` varchar(100) NOT NULL,
  `examstartdate` date NOT NULL,
  `examenddate` date NOT NULL,
  `examresultdeclareddate` date NOT NULL,
  `examresultdeclaredremarks` varchar(500) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `examschedules`
--

CREATE TABLE `examschedules` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `examdate` date NOT NULL,
  `examduration` varchar(100) NOT NULL,
  `examtime` varchar(100) NOT NULL,
  `examtheoreticalmarks` float(10,2) NOT NULL,
  `exampracticalmarks` float(10,2) NOT NULL,
  `examprojectmarks` float(10,2) NOT NULL,
  `examtotalmarks` float(10,2) NOT NULL,
  `examtheoreticalpassingmarks` float(10,2) NOT NULL,
  `exampracticalpassingmarks` float(10,2) NOT NULL,
  `examprojectpassingmarks` float(10,2) NOT NULL,
  `examtotalpassingmarks` float(10,2) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `excelfile`
--

CREATE TABLE `excelfile` (
  `id` int(11) NOT NULL,
  `first` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `second` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `third` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `title` varchar(500) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `url` varchar(200) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `excelfile`
--

INSERT INTO `excelfile` (`id`, `first`, `second`, `third`, `title`, `keyword`, `description`, `url`, `content`) VALUES
(1, 'SGM', 'Ganganagar', 'Rajasthan', '', '', '', '', ''),
(2, 'STR', 'Ganganagar', 'Rajasthan', '', '', '', '', ''),
(3, 'A.Thirumuruganpoondi', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4, 'A.Vellalapatti', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(5, 'Aadityana', 'Porbandar', 'Gujarat', '', '', '', '', ''),
(6, 'Aambaliyasan', 'Mahesana', 'Gujarat', '', '', '', '', ''),
(7, 'Aantaliya', 'Navsari', 'Gujarat', '', '', '', '', ''),
(8, 'Aarambhada', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(9, 'Abhayapuri', 'Bongaigaon', 'Assam', '', '', '', '', ''),
(10, 'Abiramam', 'Ramanathapuram', 'Tamil Nadu', '', '', '', '', ''),
(11, 'Abohar', 'Firozpur', 'Punjab', '', '', '', '', ''),
(12, 'Abrama', 'Valsad', 'Gujarat', '', '', '', '', ''),
(13, 'Abu Road', 'Sirohi', 'Rajasthan', '', '', '', '', ''),
(14, 'Achabal', 'Anantnag', 'Jammu & Kashmir', '', '', '', '', ''),
(15, 'Achalpur', 'Amravati', 'Maharashtra', '', '', '', '', ''),
(16, 'Achampudur', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(17, 'Acharapakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(18, 'Acharipallam', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(19, 'Achhalda', 'Auraiya', 'Uttar Pradesh', '', '', '', '', ''),
(20, 'Achhnera', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(21, 'Achipatti', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(22, 'Adalaj', 'Gandhinagar', 'Gujarat', '', '', '', '', ''),
(23, 'Adampur', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(24, 'Adari', 'Mau', 'Uttar Pradesh', '', '', '', '', ''),
(25, 'Adikaratti', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(26, 'Adilabad', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(27, 'Adiramapattinam', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(28, 'Adityapatna', 'Tumkur', 'Karnataka', '', '', '', '', ''),
(29, 'Adityapur', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(30, 'Adoni', 'Kurnool', 'Andhra Pradesh', '', '', '', '', ''),
(31, 'Adoor', 'Pathanamthitta', 'Kerala', '', '', '', '', ''),
(32, 'Adra', 'Puruliya', 'West Bengal', '', '', '', '', ''),
(33, 'Aduthurai alias Maruthuvakudi', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(34, 'Adyar', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(35, 'Afzalgarh', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(36, 'Afzalpur', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(37, 'Agar', 'Shajapur', 'Madhya Pradesh', '', '', '', '', ''),
(38, 'Agaram', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(39, 'Agartala', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(40, 'Agarwal Mandi', 'Baghpat', 'Uttar Pradesh', '', '', '', '', ''),
(41, 'Agastheeswaram', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(42, 'Agra', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(43, 'Agra', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(44, 'Ahiwara', 'Durg', 'Chhattisgarh', '', '', '', '', ''),
(45, 'Ahmadnagar', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(46, 'Ahmadnagar', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(47, 'Ahmadpur', 'Birbhum', 'West Bengal', '', '', '', '', ''),
(48, 'Ahmadpur', 'Latur', 'Maharashtra', '', '', '', '', ''),
(49, 'Ahmedabad', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(50, 'Ahmedabad Cantonment', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(51, 'Ahmedgarh', 'Sangrur', 'Punjab', '', '', '', '', ''),
(52, 'Ahraura', 'Mirzapur', 'Uttar Pradesh', '', '', '', '', ''),
(53, 'Aiho', 'Maldah ', 'West Bengal', '', '', '', '', ''),
(54, 'Ailum', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(55, 'Air Force Area', 'Gorakhpur', 'Uttar Pradesh', '', '', '', '', ''),
(56, 'Aistala', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(57, 'Aizawl', 'Aizawl', 'Mizoram', '', '', '', '', ''),
(58, 'Ajaigarh', 'Panna', 'Madhya Pradesh', '', '', '', '', ''),
(59, 'Ajhuwa', 'Kaushambi', 'Uttar Pradesh', '', '', '', '', ''),
(60, 'Ajmer', 'Ajmer', 'Rajasthan', '', '', '', '', ''),
(61, 'Ajnala', 'Amritsar', 'Punjab', '', '', '', '', ''),
(62, 'Ajra', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(63, 'Akalgarh', 'Ludhiana', 'Punjab', '', '', '', '', ''),
(64, 'Akaltara', 'Janjgir-Champa', 'Chhattisgarh', '', '', '', '', ''),
(65, 'Akathiyoor', 'Thrissur', 'Kerala', '', '', '', '', ''),
(66, 'Akbarpur', 'Kanpur Dehat', 'Uttar Pradesh', '', '', '', '', ''),
(67, 'Akbarpur', 'Ambedaker Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(68, 'Akhnoor', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(69, 'Akkalkot', 'Solapur', 'Maharashtra', '', '', '', '', ''),
(70, 'Akkarampalle', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(71, 'Akkayapalle', 'Cuddapah', 'Andhra Pradesh', '', '', '', '', ''),
(72, 'Aklera', 'Jhalawar', 'Rajasthan', '', '', '', '', ''),
(73, 'Akoda', 'Bhind', 'Madhya Pradesh', '', '', '', '', ''),
(74, 'Akodia', 'Shajapur', 'Madhya Pradesh', '', '', '', '', ''),
(75, 'Akola', 'Akola', 'Maharashtra', '', '', '', '', ''),
(76, 'Akot', 'Akola', 'Maharashtra', '', '', '', '', ''),
(77, 'Alagappapuram', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(78, 'Alampalayam', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(79, 'Alampur', 'Bhind', 'Madhya Pradesh', '', '', '', '', ''),
(80, 'Aland', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(81, 'Alandi', 'Pune', 'Maharashtra', '', '', '', '', ''),
(82, 'Alandur', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(83, 'Alang', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(84, 'Alanganallur', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(85, 'Alangayam', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(86, 'Alangudi', 'Pudukkottai', 'Tamil Nadu', '', '', '', '', ''),
(87, 'Alangulam', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(88, 'Alangulam', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(89, 'Alanthurai', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(90, 'Alapakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(91, 'Alappuzha', 'Alappuzha', 'Kerala', '', '', '', '', ''),
(92, 'Alawalpur', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(93, 'Aldona', 'North Goa ', 'Goa', '', '', '', '', ''),
(94, 'Ali Pur', 'North West', 'Delhi *', '', '', '', '', ''),
(95, 'Alibag', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(96, 'Aliganj', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(97, 'Aligarh', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(98, 'Alipurduar', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(99, 'Alipurduar Rly.Jnc.', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(100, 'Alirajpur', 'Jhabua', 'Madhya Pradesh', '', '', '', '', ''),
(101, 'Allahabad', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(102, 'Allahabad', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(103, 'Allahganj', 'Shahjahanpur', 'Uttar Pradesh', '', '', '', '', ''),
(104, 'Allapur', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(105, 'Allapuram', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(106, 'Almora', 'Almora', 'Uttaranchal', '', '', '', '', ''),
(107, 'Almora', 'Almora', 'Uttaranchal', '', '', '', '', ''),
(108, 'Alnavar', 'Dharwad', 'Karnataka', '', '', '', '', ''),
(109, 'Along', 'West Siang', 'Arunachal Pradesh', '', '', '', '', ''),
(110, 'Alot', 'Ratlam', 'Madhya Pradesh', '', '', '', '', ''),
(111, 'Alpur', 'Haora ', 'West Bengal', '', '', '', '', ''),
(112, 'Alur', 'Hassan', 'Karnataka', '', '', '', '', ''),
(113, 'Alur', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(114, 'Aluva', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(115, 'Alwal', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(116, 'Alwar', 'Alwar', 'Rajasthan', '', '', '', '', ''),
(117, 'Alwarkurichi', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(118, 'Alwarthirunagiri', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(119, 'Amadalavalasa', 'Srikakulam', 'Andhra Pradesh', '', '', '', '', ''),
(120, 'Amalapuram', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(121, 'Amalner', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(122, 'Amanganj', 'Panna', 'Madhya Pradesh', '', '', '', '', ''),
(123, 'Amanpur', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(124, 'Amarkantak', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(125, 'Amarpatan', 'Satna', 'Madhya Pradesh', '', '', '', '', ''),
(126, 'Amarpur', 'South Tripura ', 'Tripura', '', '', '', '', ''),
(127, 'Amarpur', 'Banka', 'Bihar', '', '', '', '', ''),
(128, 'Amarwara', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(129, 'Ambad', 'Jalna', 'Maharashtra', '', '', '', '', ''),
(130, 'Ambada', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(131, 'Ambagarh Chowki', 'Rajnandgaon', 'Chhattisgarh', '', '', '', '', ''),
(132, 'Ambah', 'Morena', 'Madhya Pradesh', '', '', '', '', ''),
(133, 'Ambaji', 'Banas Kantha', 'Gujarat', '', '', '', '', ''),
(134, 'Ambala', 'Ambala', 'Haryana', '', '', '', '', ''),
(135, 'Ambala Cantt.', 'Ambala', 'Haryana', '', '', '', '', ''),
(136, 'Ambala Sadar', 'Ambala', 'Haryana', '', '', '', '', ''),
(137, 'Ambarnath', 'Thane', 'Maharashtra', '', '', '', '', ''),
(138, 'Ambasamudram', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(139, 'Ambassa', 'Dhalai', 'Tripura', '', '', '', '', ''),
(140, 'Ambattur', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(141, 'Ambehta', 'Saharanpur', 'Uttar Pradesh', '', '', '', '', ''),
(142, 'Ambejogai', 'Bid', 'Maharashtra', '', '', '', '', ''),
(143, 'Ambikanagara', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(144, 'Ambikapur', 'Surguja', 'Chhattisgarh', '', '', '', '', ''),
(145, 'Ambikapur Part-X', 'Cachar', 'Assam', '', '', '', '', ''),
(146, 'Ambivali Tarf Wankhal', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(147, 'Ambur', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(148, 'Amet', 'Rajsamand', 'Rajasthan', '', '', '', '', ''),
(149, 'Amethi', 'Lucknow', 'Uttar Pradesh', '', '', '', '', ''),
(150, 'Amethi', 'Sultanpur', 'Uttar Pradesh', '', '', '', '', ''),
(151, 'Amguri', 'Sibsagar', 'Assam', '', '', '', '', ''),
(152, 'Amila', 'Mau', 'Uttar Pradesh', '', '', '', '', ''),
(153, 'Amilo', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(154, 'Aminagar Sarai', 'Baghpat', 'Uttar Pradesh', '', '', '', '', ''),
(155, 'Aminagar Urf Bhurbaral', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(156, 'Amini', 'Lakshadweep', 'Lakshadweep *', '', '', '', '', ''),
(157, 'Amkula', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(158, 'Amla', 'Betul', 'Madhya Pradesh', '', '', '', '', ''),
(159, 'Amlabad', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(160, 'Amlai', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(161, 'Amli', 'Dadra & Nagar Haveli', 'Dadra & Nagar Haveli *', '', '', '', '', ''),
(162, 'Amloh', 'Fatehgarh Sahib', 'Punjab', '', '', '', '', ''),
(163, 'Ammainaickanur', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(164, 'Ammapettai', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(165, 'Ammapettai', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(166, 'Ammavarikuppam', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(167, 'Ammoor', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(168, 'Amodghata', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(169, 'Amraudha', 'Kanpur Dehat', 'Uttar Pradesh', '', '', '', '', ''),
(170, 'Amravati', 'Amravati', 'Maharashtra', '', '', '', '', ''),
(171, 'Amreli', 'Amreli', 'Gujarat', '', '', '', '', ''),
(172, 'Amritsar', 'Amritsar', 'Punjab', '', '', '', '', ''),
(173, 'Amritsar Cantt.', 'Amritsar', 'Punjab', '', '', '', '', ''),
(174, 'Amroha', 'Jyotiba Phule Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(175, 'Amtala', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(176, 'Anaimalai', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(177, 'Anaiyur', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(178, 'Anaiyur', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(179, 'Anakapalle', 'Visakhapatnam', 'Andhra Pradesh', '', '', '', '', ''),
(180, 'Anakaputhur', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(181, 'Anand', 'Anand', 'Gujarat', '', '', '', '', ''),
(182, 'Anand Nagar', 'Dhubri', 'Assam', '', '', '', '', ''),
(183, 'Anandapur', 'Kendujhar', 'Orissa', '', '', '', '', ''),
(184, 'Anandnagar', 'Maharajganj', 'Uttar Pradesh', '', '', '', '', ''),
(185, 'Anandpur Sahib', 'Rupnagar', 'Punjab', '', '', '', '', ''),
(186, 'Anantapur', 'Anantapur', 'Andhra Pradesh', '', '', '', '', ''),
(187, 'Ananthapuram', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(188, 'Anantnag', 'Anantnag', 'Jammu & Kashmir', '', '', '', '', ''),
(189, 'Ancharakandy', 'Kannur', 'Kerala', '', '', '', '', ''),
(190, 'Andada', 'Bharuch', 'Gujarat', '', '', '', '', ''),
(191, 'Andipalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(192, 'Andipatti Jakkampatti', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(193, 'Andro', 'Imphal East', 'Manipur', '', '', '', '', ''),
(194, 'Andul', 'Haora ', 'West Bengal', '', '', '', '', ''),
(195, 'Anekal', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(196, 'Angamaly', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(197, 'Angarpathar', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(198, 'Anjad', 'Barwani', 'Madhya Pradesh', '', '', '', '', ''),
(199, 'Anjangaon', 'Amravati', 'Maharashtra', '', '', '', '', ''),
(200, 'Anjar', 'Kachchh', 'Gujarat', '', '', '', '', ''),
(201, 'Anjugramam', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(202, 'Anklav', 'Anand', 'Gujarat', '', '', '', '', ''),
(203, 'Anklesvar', 'Bharuch', 'Gujarat', '', '', '', '', ''),
(204, 'Anklesvar INA', 'Bharuch', 'Gujarat', '', '', '', '', ''),
(205, 'Ankola', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(206, 'Anksa', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(207, 'Ankurhati', 'Haora ', 'West Bengal', '', '', '', '', ''),
(208, 'Annamalai Nagar', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(209, 'Annavasal', 'Pudukkottai', 'Tamil Nadu', '', '', '', '', ''),
(210, 'Annigeri', 'Dharwad', 'Karnataka', '', '', '', '', ''),
(211, 'Annur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(212, 'Anpara', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(213, 'Antah', 'Baran', 'Rajasthan', '', '', '', '', ''),
(214, 'Antari', 'Gwalior', 'Madhya Pradesh', '', '', '', '', ''),
(215, 'Anthiyur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(216, 'Antu', 'Pratapgarh', 'Uttar Pradesh', '', '', '', '', ''),
(217, 'Anugul', 'Anugul', 'Orissa', '', '', '', '', ''),
(218, 'Anup Nagar', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(219, 'Anupgarh', 'Ganganagar', 'Rajasthan', '', '', '', '', ''),
(220, 'Anuppur', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(221, 'Anupshahr', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(222, 'Aonla', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(223, 'Appakudal', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(224, 'Aquem', 'South Goa', 'Goa', '', '', '', '', ''),
(225, 'Ara', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(226, 'Arachalur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(227, 'Arakandanallur', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(228, 'Arakonam', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(229, 'Aralvaimozhi', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(230, 'Arambag', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(231, 'Arang', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(232, 'Arani', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(233, 'Arani', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(234, 'Aranthangi', 'Pudukkottai', 'Tamil Nadu', '', '', '', '', ''),
(235, 'Araria', 'Araria', 'Bihar', '', '', '', '', ''),
(236, 'Arasiramani', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(237, 'Aravakurichi', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(238, 'Aravankad', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(239, 'Arcot', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(240, 'Areraj', 'Purba Champaran', 'Bihar', '', '', '', '', ''),
(241, 'Argari', 'Haora ', 'West Bengal', '', '', '', '', ''),
(242, 'Arimalam', 'Pudukkottai', 'Tamil Nadu', '', '', '', '', ''),
(243, 'Ariyalur', 'Ariyalur', 'Tamil Nadu', '', '', '', '', ''),
(244, 'Ariyappampalayam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(245, 'Ariyur', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(246, 'Arkalgud', 'Hassan', 'Karnataka', '', '', '', '', ''),
(247, 'Arki', 'Solan', 'Himachal Pradesh', '', '', '', '', ''),
(248, 'Armapur Estate', 'Kanpur Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(249, 'Arnia', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(250, 'Aron', 'Guna', 'Madhya Pradesh', '', '', '', '', ''),
(251, 'Arookutty', 'Alappuzha', 'Kerala', '', '', '', '', ''),
(252, 'Aroor', 'Alappuzha', 'Kerala', '', '', '', '', ''),
(253, 'Arra', 'Puruliya', 'West Bengal', '', '', '', '', ''),
(254, 'Arrah', 'Bhojpur', 'Bihar', '', '', '', '', ''),
(255, 'Arsikere', 'Hassan', 'Karnataka', '', '', '', '', ''),
(256, 'Arumanai', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(257, 'Arumbavur', 'Perambalur', 'Tamil Nadu', '', '', '', '', ''),
(258, 'Arumuganeri', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(259, 'Aruppukkottai', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(260, 'Arvi', 'Wardha', 'Maharashtra', '', '', '', '', ''),
(261, 'Asan  Khurd', 'Panipat', 'Haryana', '', '', '', '', ''),
(262, 'Asansol', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(263, 'Asarganj', 'Munger', 'Bihar', '', '', '', '', ''),
(264, 'Ashok Nagar', 'Guna', 'Madhya Pradesh', '', '', '', '', ''),
(265, 'Ashokapuram', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(266, 'Ashoknagar Kalyangarh', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(267, 'Ashrafpur Kichhauchha', 'Ambedaker Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(268, 'Ashta', 'Sehore', 'Madhya Pradesh', '', '', '', '', ''),
(269, 'Ashta', 'Sangli', 'Maharashtra', '', '', '', '', ''),
(270, 'Asifabad', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(271, 'Asika', 'Ganjam', 'Orissa', '', '', '', '', ''),
(272, 'Asind', 'Bhilwara', 'Rajasthan', '', '', '', '', ''),
(273, 'Asola', 'South', 'Delhi *', '', '', '', '', ''),
(274, 'Assandh', 'Karnal', 'Haryana', '', '', '', '', ''),
(275, 'Atarra', 'Banda', 'Uttar Pradesh', '', '', '', '', ''),
(276, 'Atasu', 'Auraiya', 'Uttar Pradesh', '', '', '', '', ''),
(277, 'Ateli', 'Mahendragarh', 'Haryana', '', '', '', '', ''),
(278, 'Athagad', 'Cuttack', 'Orissa', '', '', '', '', ''),
(279, 'Athani', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(280, 'Athanur', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(281, 'Athimarapatti', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(282, 'Athipattu', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(283, 'Athmallik', 'Anugul', 'Orissa', '', '', '', '', ''),
(284, 'Athni', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(285, 'Athur', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(286, 'Athur', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(287, 'Atrauli', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(288, 'Atraulia', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(289, 'Attayampatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(290, 'Attingal', 'Thiruvananthapuram', 'Kerala', '', '', '', '', ''),
(291, 'Attur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(292, 'Atul', 'Valsad', 'Gujarat', '', '', '', '', ''),
(293, 'Aurad', 'Bidar', 'Karnataka', '', '', '', '', ''),
(294, 'Auraiya', 'Auraiya', 'Uttar Pradesh', '', '', '', '', ''),
(295, 'Aurangabad', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(296, 'Aurangabad', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(297, 'Aurangabad', 'Aurangabad', 'Maharashtra', '', '', '', '', ''),
(298, 'Aurangabad', 'Aurangabad', 'Maharashtra', '', '', '', '', ''),
(299, 'Aurangabad', 'Aurangabad', 'Bihar', '', '', '', '', ''),
(300, 'Aurangabad Bangar', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(301, 'Auras', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(302, 'Ausa', 'Latur', 'Maharashtra', '', '', '', '', ''),
(303, 'Avadattur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(304, 'Avadi', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(305, 'Avalpoondurai', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(306, 'Avanashi', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(307, 'Avaniapuram', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(308, 'Avinissery', 'Thrissur', 'Kerala', '', '', '', '', ''),
(309, 'Awagarh', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(310, 'Awantipora', 'Pulwama', 'Jammu & Kashmir', '', '', '', '', ''),
(311, 'Ayakudi', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(312, 'Aygudi', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(313, 'Ayodhya', 'Faizabad', 'Uttar Pradesh', '', '', '', '', ''),
(314, 'Ayothiapattinam', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(315, 'Ayyalur', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(316, 'Ayyampalayam', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(317, 'Ayyampettai', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(318, 'Ayyampettai', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(319, 'Azamgarh', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(320, 'Azhagiapandiapuram', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(321, 'Azhikode North', 'Kannur', 'Kerala', '', '', '', '', ''),
(322, 'Azhikode South', 'Kannur', 'Kerala', '', '', '', '', ''),
(323, 'Azizpur', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(324, 'Azmatgarh', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(325, 'B. Mallapuram', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(326, 'B. Meenakshipuram', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(327, 'Babai', 'Hoshangabad', 'Madhya Pradesh', '', '', '', '', ''),
(328, 'Babar Pur', 'North East', 'Delhi *', '', '', '', '', ''),
(329, 'Babarpur Ajitmal', 'Auraiya', 'Uttar Pradesh', '', '', '', '', ''),
(330, 'Baberu', 'Banda', 'Uttar Pradesh', '', '', '', '', ''),
(331, 'Babhulgaon', 'Hingoli', 'Maharashtra', '', '', '', '', ''),
(332, 'Babina', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(333, 'Babiyal', 'Ambala', 'Haryana', '', '', '', '', ''),
(334, 'Bablari Dewanganj', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(335, 'Babrala', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(336, 'Babua Kalan', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(337, 'Babugarh', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(338, 'Bachhraon', 'Jyotiba Phule Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(339, 'Bachhrawan', 'Rae Bareli', 'Uttar Pradesh', '', '', '', '', ''),
(340, 'Bad', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(341, 'Bada Malhera', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(342, 'Badagaon', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(343, 'Badagoan', 'Shajapur', 'Madhya Pradesh', '', '', '', '', ''),
(344, 'Badami', 'Bagalkot', 'Karnataka', '', '', '', '', ''),
(345, 'Badami Bagh', 'Srinagar', 'Jammu & Kashmir', '', '', '', '', ''),
(346, 'Badarpur', 'Karimganj', 'Assam', '', '', '', '', ''),
(347, 'Badarpur Rly Town', 'Karimganj', 'Assam', '', '', '', '', ''),
(348, 'Badarwas', 'Shivpuri', 'Madhya Pradesh', '', '', '', '', ''),
(349, 'Badawada', 'Ratlam', 'Madhya Pradesh', '', '', '', '', ''),
(350, 'Baddi', 'Solan', 'Himachal Pradesh', '', '', '', '', ''),
(351, 'Bade Bacheli', 'Dantewada', 'Chhattisgarh', '', '', '', '', ''),
(352, 'Badepalle', 'Mahbubnagar', 'Andhra Pradesh', '', '', '', '', ''),
(353, 'Badgam', 'Badgam', 'Jammu & Kashmir', '', '', '', '', ''),
(354, 'Badhagachhi', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(355, 'Badharghat', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(356, 'Badhni Kalan', 'Moga', 'Punjab', '', '', '', '', ''),
(357, 'Badi', 'Raisen', 'Madhya Pradesh', '', '', '', '', ''),
(358, 'Badkuhi', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(359, 'Badlapur', 'Thane', 'Maharashtra', '', '', '', '', ''),
(360, 'Badnagar', 'Ujjain', 'Madhya Pradesh', '', '', '', '', ''),
(361, 'Badnawar', 'Dhar', 'Madhya Pradesh', '', '', '', '', ''),
(362, 'Badod', 'Shajapur', 'Madhya Pradesh', '', '', '', '', ''),
(363, 'Badoda', 'Sheopur', 'Madhya Pradesh', '', '', '', '', ''),
(364, 'Badra', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(365, 'Badrinathpuri', 'Chamoli', 'Uttaranchal', '', '', '', '', ''),
(366, 'Baduria', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(367, 'Bagaha', 'Pashchim Champaran', 'Bihar', '', '', '', '', ''),
(368, 'Bagalkot', 'Bagalkot', 'Karnataka', '', '', '', '', ''),
(369, 'Bagasara', 'Amreli', 'Gujarat', '', '', '', '', ''),
(370, 'Bagbahara', 'Mahasamund', 'Chhattisgarh', '', '', '', '', ''),
(371, 'Bagbera', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(372, 'Bagepalli', 'Kolar', 'Karnataka', '', '', '', '', ''),
(373, 'Bageshwar', 'Bageshwar', 'Uttaranchal', '', '', '', '', ''),
(374, 'Baggar', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(375, 'Bagh', 'Dhar', 'Madhya Pradesh', '', '', '', '', ''),
(376, 'Bagha Purana', 'Moga', 'Punjab', '', '', '', '', ''),
(377, 'Baghmara', 'South Garo Hills', 'Meghalaya', '', '', '', '', ''),
(378, 'Baghpat', 'Baghpat', 'Uttar Pradesh', '', '', '', '', ''),
(379, 'Bagli', 'Dewas', 'Madhya Pradesh', '', '', '', '', ''),
(380, 'Bagnan', 'Haora ', 'West Bengal', '', '', '', '', ''),
(381, 'Bagru', 'Jaipur', 'Rajasthan', '', '', '', '', ''),
(382, 'Bah', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(383, 'Bahadurganj', 'Kishanganj', 'Bihar', '', '', '', '', ''),
(384, 'Bahadurganj', 'Ghazipur', 'Uttar Pradesh', '', '', '', '', ''),
(385, 'Bahadurgarh', 'Jhajjar', 'Haryana', '', '', '', '', ''),
(386, 'Baharampur', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(387, 'Bahbari Gaon', 'Tinsukia', 'Assam', '', '', '', '', ''),
(388, 'Baheri', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(389, 'Bahirgram', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(390, 'Bahjoi', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(391, 'Bahraich', 'Bahraich', 'Uttar Pradesh', '', '', '', '', ''),
(392, 'Bahsuma', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(393, 'Bahula', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(394, 'Bahuwa', 'Fatehpur', 'Uttar Pradesh', '', '', '', '', ''),
(395, 'Baidyabati', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(396, 'Baihar', 'Balaghat', 'Madhya Pradesh', '', '', '', '', ''),
(397, 'Baikunthpur', 'Koriya', 'Chhattisgarh', '', '', '', '', ''),
(398, 'Baikunthpur', 'Rewa', 'Madhya Pradesh', '', '', '', '', ''),
(399, 'Bail Hongal', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(400, 'Bairabi', 'Kolasib', 'Mizoram', '', '', '', '', ''),
(401, 'Bairatisal', 'Darjiling ', 'West Bengal', '', '', '', '', ''),
(402, 'Bairgania', 'Sitamarhi', 'Bihar', '', '', '', '', ''),
(403, 'Bajala', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(404, 'Bajna', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(405, 'Bajpe', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(406, 'Bajpur', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(407, 'Bajva', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(408, 'Bakani', 'Jhalawar', 'Rajasthan', '', '', '', '', ''),
(409, 'Bakewar', 'Etawah', 'Uttar Pradesh', '', '', '', '', ''),
(410, 'Bakhtiarpur', 'Patna', 'Bihar', '', '', '', '', ''),
(411, 'Bakiabad', 'Mirzapur', 'Uttar Pradesh', '', '', '', '', ''),
(412, 'Bakloh', 'Chamba', 'Himachal Pradesh', '', '', '', '', ''),
(413, 'Balachaur', 'Nawanshahr', 'Punjab', '', '', '', '', ''),
(414, 'Balaghat', 'Balaghat', 'Madhya Pradesh', '', '', '', '', ''),
(415, 'Balagoda (Bolani)', 'Kendujhar', 'Orissa', '', '', '', '', ''),
(416, 'Balakrishnampatti', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(417, 'Balakrishnapuram', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(418, 'Balangir', 'Balangir', 'Orissa', '', '', '', '', ''),
(419, 'Balapallam', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(420, 'Balapur', 'Akola', 'Maharashtra', '', '', '', '', ''),
(421, 'Balaram Pota', 'Haora ', 'West Bengal', '', '', '', '', ''),
(422, 'Balarampur', 'Puruliya', 'West Bengal', '', '', '', '', ''),
(423, 'Balarampur', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(424, 'Balasamudram', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(425, 'Balasinor', 'Kheda', 'Gujarat', '', '', '', '', ''),
(426, 'Baldeo', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(427, 'Baldeogarh', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(428, 'Baleshwar', 'Baleshwar', 'Orissa', '', '', '', '', ''),
(429, 'Bali', 'Pali', 'Rajasthan', '', '', '', '', ''),
(430, 'Baliari', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(431, 'Balichak', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(432, 'Balimela', 'Malkangiri', 'Orissa', '', '', '', '', ''),
(433, 'Balkundra', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(434, 'Ballarpur', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(435, 'Ballavpur', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(436, 'Ballia', 'Ballia', 'Uttar Pradesh', '', '', '', '', ''),
(437, 'Bally', 'Haora ', 'West Bengal', '', '', '', '', ''),
(438, 'Bally', 'Haora ', 'West Bengal', '', '', '', '', ''),
(439, 'Balod', 'Durg', 'Chhattisgarh', '', '', '', '', ''),
(440, 'Baloda', 'Janjgir-Champa', 'Chhattisgarh', '', '', '', '', ''),
(441, 'Baloda Bazar', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(442, 'Balotra', 'Barmer', 'Rajasthan', '', '', '', '', ''),
(443, 'Balrampur', 'Balrampur', 'Uttar Pradesh', '', '', '', '', ''),
(444, 'Balugaon', 'Khordha', 'Orissa', '', '', '', '', ''),
(445, 'Balurghat', 'Dakshin Dinajpur', 'West Bengal', '', '', '', '', ''),
(446, 'Bambolim', 'North Goa ', 'Goa', '', '', '', '', ''),
(447, 'Bamhani', 'Mandla', 'Madhya Pradesh', '', '', '', '', ''),
(448, 'Bamor', 'Morena', 'Madhya Pradesh', '', '', '', '', ''),
(449, 'Bamora', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(450, 'Bamun Sualkuchi', 'Kamrup', 'Assam', '', '', '', '', ''),
(451, 'Bamunari', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(452, 'Banapur', 'Khordha', 'Orissa', '', '', '', '', ''),
(453, 'Banarhat Tea Garden', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(454, 'Banarsi', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(455, 'Banat', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(456, 'Banaur', 'Patiala', 'Punjab', '', '', '', '', ''),
(457, 'Banbasa', 'Champawat', 'Uttaranchal', '', '', '', '', ''),
(458, 'Banda', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(459, 'Banda', 'Banda', 'Uttar Pradesh', '', '', '', '', ''),
(460, 'Bandarulanka', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(461, 'Bandhgora', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(462, 'Bandia', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(463, 'Bandikui', 'Dausa', 'Rajasthan', '', '', '', '', ''),
(464, 'Bandipore', 'Baramula', 'Jammu & Kashmir', '', '', '', '', ''),
(465, 'Bandora', 'North Goa ', 'Goa', '', '', '', '', ''),
(466, 'Banga', 'Nawanshahr', 'Punjab', '', '', '', '', ''),
(467, 'Bangalore', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(468, 'Bangaon', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(469, 'Bangarapet', 'Kolar', 'Karnataka', '', '', '', '', ''),
(470, 'Bangarmau', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(471, 'Bangawan', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(472, 'Bangramanjeshwar', 'Kasaragod', 'Kerala', '', '', '', '', ''),
(473, 'Bangura', 'Kendujhar', 'Orissa', '', '', '', '', ''),
(474, 'Banihal', 'Doda', 'Jammu & Kashmir', '', '', '', '', ''),
(475, 'Banjar', 'Kullu', 'Himachal Pradesh', '', '', '', '', ''),
(476, 'Banka', 'Banka', 'Bihar', '', '', '', '', ''),
(477, 'Bankapura', 'Haveri', 'Karnataka', '', '', '', '', ''),
(478, 'Banki', 'Cuttack', 'Orissa', '', '', '', '', ''),
(479, 'Banki', 'Barabanki', 'Uttar Pradesh', '', '', '', '', ''),
(480, 'Bankner', 'North West', 'Delhi *', '', '', '', '', ''),
(481, 'Bankra', 'Haora ', 'West Bengal', '', '', '', '', ''),
(482, 'Bankura', 'Bankura ', 'West Bengal', '', '', '', '', ''),
(483, 'Banmankhi Bazar', 'Purnia', 'Bihar', '', '', '', '', ''),
(484, 'Bannur', 'Mysore', 'Karnataka', '', '', '', '', ''),
(485, 'Bansatar Kheda', 'Damoh', 'Madhya Pradesh', '', '', '', '', ''),
(486, 'Bansberia', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(487, 'Bansdih', 'Ballia', 'Uttar Pradesh', '', '', '', '', ''),
(488, 'Bansgaon', 'Gorakhpur', 'Uttar Pradesh', '', '', '', '', ''),
(489, 'Banshra', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(490, 'Bansi', 'Siddharthnagar', 'Uttar Pradesh', '', '', '', '', ''),
(491, 'Banswara', 'Banswara', 'Rajasthan', '', '', '', '', ''),
(492, 'Bantwa', 'Junagadh', 'Gujarat', '', '', '', '', ''),
(493, 'Bantwal', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(494, 'Banupur', 'Haora ', 'West Bengal', '', '', '', '', ''),
(495, 'Bapatla', 'Guntur', 'Andhra Pradesh', '', '', '', '', ''),
(496, 'Bara Bamonia', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(497, 'Barabazar', 'Puruliya', 'West Bengal', '', '', '', '', ''),
(498, 'Baragaon', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(499, 'Baragaon', 'Varanasi', 'Uttar Pradesh', '', '', '', '', ''),
(500, 'Barahiya', 'Lakhisarai', 'Bihar', '', '', '', '', ''),
(501, 'Baraily', 'Raisen', 'Madhya Pradesh', '', '', '', '', ''),
(502, 'Barajamda', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(503, 'Baramati', 'Pune', 'Maharashtra', '', '', '', '', ''),
(504, 'Baramula', 'Baramula', 'Jammu & Kashmir', '', '', '', '', ''),
(505, 'Baran', 'Baran', 'Rajasthan', '', '', '', '', ''),
(506, 'Baranagar', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(507, 'Barapali', 'Bargarh', 'Orissa', '', '', '', '', ''),
(508, 'Barasat', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(509, 'Barauli', 'Gopalganj', 'Bihar', '', '', '', '', ''),
(510, 'Barauni IOC Township', 'Begusarai', 'Bihar', '', '', '', '', ''),
(511, 'Baraut', 'Baghpat', 'Uttar Pradesh', '', '', '', '', ''),
(512, 'Barbari (AMC Area)', 'Dibrugarh', 'Assam', '', '', '', '', ''),
(513, 'Barbigha', 'Sheikhpura', 'Bihar', '', '', '', '', ''),
(514, 'Barbil', 'Kendujhar', 'Orissa', '', '', '', '', ''),
(515, 'Barddhaman', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(516, 'Bardoli', 'Surat', 'Gujarat', '', '', '', '', ''),
(517, 'Bareilly', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(518, 'Bareilly', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(519, 'Barela', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(520, 'Baretta', 'Mansa', 'Punjab', '', '', '', '', ''),
(521, 'Bargarh', 'Bargarh', 'Orissa', '', '', '', '', ''),
(522, 'Barghat', 'Seoni', 'Madhya Pradesh', '', '', '', '', ''),
(523, 'Bargur', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(524, 'Barh', 'Patna', 'Bihar', '', '', '', '', ''),
(525, 'Barhalganj', 'Gorakhpur', 'Uttar Pradesh', '', '', '', '', ''),
(526, 'Barhani Bazar', 'Siddharthnagar', 'Uttar Pradesh', '', '', '', '', ''),
(527, 'Barhi', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(528, 'Barhi', 'Katni', 'Madhya Pradesh', '', '', '', '', ''),
(529, 'Bari', 'Dhaulpur', 'Rajasthan', '', '', '', '', ''),
(530, 'Bari Brahmana', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(531, 'Bari Sadri', 'Chittaurgarh', 'Rajasthan', '', '', '', '', ''),
(532, 'Barigarh', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(533, 'Barijhati', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(534, 'Baripada', 'Mayurbhanj', 'Orissa', '', '', '', '', ''),
(535, 'Bariwala', 'Muktsar', 'Punjab', '', '', '', '', ''),
(536, 'Barjora', 'Bankura ', 'West Bengal', '', '', '', '', ''),
(537, 'Barkakana', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(538, 'Barkhera', 'Pilibhit', 'Uttar Pradesh', '', '', '', '', ''),
(539, 'Barkot', 'Uttarkashi', 'Uttaranchal', '', '', '', '', ''),
(540, 'Barmer', 'Barmer', 'Rajasthan', '', '', '', '', ''),
(541, 'Barnala', 'Sangrur', 'Punjab', '', '', '', '', ''),
(542, 'Barpathar', 'Golaghat', 'Assam', '', '', '', '', ''),
(543, 'Barpeta', 'Barpeta', 'Assam', '', '', '', '', ''),
(544, 'Barpeta Road', 'Barpeta', 'Assam', '', '', '', '', ''),
(545, 'Barrackpur', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(546, 'Barrackpur Cantonment', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(547, 'Barsana', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(548, 'Barshi', 'Solapur', 'Maharashtra', '', '', '', '', ''),
(549, 'Barua Sagar', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(550, 'Barughutu', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(551, 'Baruihuda', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(552, 'Baruipur', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(553, 'Barwadih', 'Palamu', 'Jharkhand', '', '', '', '', ''),
(554, 'Barwaha', 'West Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(555, 'Barwala', 'Hisar', 'Haryana', '', '', '', '', ''),
(556, 'Barwani', 'Barwani', 'Madhya Pradesh', '', '', '', '', ''),
(557, 'Barwar', 'Kheri', 'Uttar Pradesh', '', '', '', '', ''),
(558, 'Basar', 'West Siang', 'Arunachal Pradesh', '', '', '', '', ''),
(559, 'Basaria', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(560, 'Basavakalyan', 'Bidar', 'Karnataka', '', '', '', '', ''),
(561, 'Basavana Bagevadi', 'Bijapur', 'Karnataka', '', '', '', '', ''),
(562, 'Bashohli', 'Kathua', 'Jammu & Kashmir', '', '', '', '', ''),
(563, 'Basirhat', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(564, 'Baska', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(565, 'Basmath', 'Hingoli', 'Maharashtra', '', '', '', '', ''),
(566, 'Basna', 'Mahasamund', 'Chhattisgarh', '', '', '', '', ''),
(567, 'Basni Belima', 'Nagaur', 'Rajasthan', '', '', '', '', ''),
(568, 'Basoda', 'Vidisha', 'Madhya Pradesh', '', '', '', '', ''),
(569, 'Bassi Pathana', 'Fatehgarh Sahib', 'Punjab', '', '', '', '', ''),
(570, 'Basti', 'Basti', 'Uttar Pradesh', '', '', '', '', ''),
(571, 'Basudebpur', 'Bhadrak', 'Orissa', '', '', '', '', ''),
(572, 'Basugaon', 'Kokrajhar', 'Assam', '', '', '', '', ''),
(573, 'Basukinath', 'Dumka', 'Jharkhand', '', '', '', '', ''),
(574, 'Batala', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(575, 'Bathinda', 'Bathinda', 'Punjab', '', '', '', '', ''),
(576, 'Batlagundu', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(577, 'Batote', 'Doda', 'Jammu & Kashmir', '', '', '', '', ''),
(578, 'Baudhgarh', 'Baudh', 'Orissa', '', '', '', '', ''),
(579, 'Bavla', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(580, 'Bawal', 'Rewari', 'Haryana', '', '', '', '', ''),
(581, 'Bawana', 'North West', 'Delhi *', '', '', '', '', ''),
(582, 'Bawani Khera', 'Bhiwani', 'Haryana', '', '', '', '', ''),
(583, 'Bayana', 'Bharatpur', 'Rajasthan', '', '', '', '', ''),
(584, 'Beawar', 'Ajmer', 'Rajasthan', '', '', '', '', ''),
(585, 'Bedi', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(586, 'Beejoliya Kalan', 'Bhilwara', 'Rajasthan', '', '', '', '', ''),
(587, 'Beerwah', 'Badgam', 'Jammu & Kashmir', '', '', '', '', ''),
(588, 'Begamganj', 'Raisen', 'Madhya Pradesh', '', '', '', '', ''),
(589, 'Begampur', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(590, 'Begowal', 'Kapurthala', 'Punjab', '', '', '', '', ''),
(591, 'Begum Pur', 'North West', 'Delhi *', '', '', '', '', ''),
(592, 'Begumabad Budhana', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(593, 'Begun', 'Chittaurgarh', 'Rajasthan', '', '', '', '', ''),
(594, 'Begusarai', 'Begusarai', 'Bihar', '', '', '', '', ''),
(595, 'Behat', 'Saharanpur', 'Rajasthan', '', '', '', '', ''),
(596, 'Behea', 'Bhojpur', 'Bihar', '', '', '', '', ''),
(597, 'Behror', 'Alwar', 'Rajasthan', '', '', '', '', ''),
(598, 'Behta Hajipur', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(599, 'Bela Pratapgarh', 'Pratapgarh', 'Uttar Pradesh', '', '', '', '', ''),
(600, 'Belagachhia', 'Cuttack', 'Orissa', '', '', '', '', ''),
(601, 'Beldanga', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(602, 'Beldubi', 'Haora ', 'West Bengal', '', '', '', '', ''),
(603, 'Belebathan', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(604, 'Belgaum', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(605, 'Belgaum Cantonment', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(606, 'Beliatore', 'Bankura ', 'West Bengal', '', '', '', '', ''),
(607, 'Bellaguntha', 'Ganjam', 'Orissa', '', '', '', '', ''),
(608, 'Bellampalle', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(609, 'Bellary', 'Bellary', 'Karnataka', '', '', '', '', ''),
(610, 'Belonia', 'South Tripura ', 'Tripura', '', '', '', '', ''),
(611, 'Belpahar', 'Jharsuguda', 'Orissa', '', '', '', '', ''),
(612, 'Belsand', 'Sitamarhi', 'Bihar', '', '', '', '', ''),
(613, 'Beltangadi', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(614, 'Belthara Road', 'Ballia', 'Uttar Pradesh', '', '', '', '', ''),
(615, 'Belur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(616, 'Belur', 'Hassan', 'Karnataka', '', '', '', '', ''),
(617, 'Belvata', 'Mysore', 'Karnataka', '', '', '', '', ''),
(618, 'Bemetra', 'Durg', 'Chhattisgarh', '', '', '', '', ''),
(619, 'Benaulim', 'South Goa', 'Goa', '', '', '', '', ''),
(620, 'Beniganj', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(621, 'Beohari', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(622, 'Berasia', 'Bhopal', 'Madhya Pradesh', '', '', '', '', ''),
(623, 'Beri', 'Jhajjar', 'Haryana', '', '', '', '', ''),
(624, 'Bermo', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(625, 'Bestavaripeta', 'Prakasam', 'Andhra Pradesh', '', '', '', '', ''),
(626, 'Beswan', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(627, 'Bethamcheria', 'Kurnool', 'Andhra Pradesh', '', '', '', '', ''),
(628, 'Betma', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(629, 'Bettiah', 'Pashchim Champaran', 'Bihar', '', '', '', '', ''),
(630, 'Betul', 'Betul', 'Madhya Pradesh', '', '', '', '', ''),
(631, 'Betul-Bazar', 'Betul', 'Madhya Pradesh', '', '', '', '', ''),
(632, 'Bewar', 'Mainpuri', 'Uttar Pradesh', '', '', '', '', ''),
(633, 'Beypore', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(634, 'Bhabat', 'Rupnagar', 'Punjab', '', '', '', '', ''),
(635, 'Bhabua', 'Kaimur (Bhabua)', 'Bihar', '', '', '', '', ''),
(636, 'Bhachau', 'Kachchh', 'Gujarat', '', '', '', '', ''),
(637, 'Bhadarsa', 'Faizabad', 'Uttar Pradesh', '', '', '', '', ''),
(638, 'Bhadaur', 'Sangrur', 'Punjab', '', '', '', '', ''),
(639, 'Bhaderwah', 'Doda', 'Jammu & Kashmir', '', '', '', '', ''),
(640, 'Bhadohi', 'Sant Ravidas Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(641, 'Bhadra', 'Hanumangarh', 'Rajasthan', '', '', '', '', ''),
(642, 'Bhadrachalam', 'Khammam', 'Andhra Pradesh', '', '', '', '', ''),
(643, 'Bhadrak', 'Bhadrak', 'Orissa', '', '', '', '', ''),
(644, 'Bhadravati', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(645, 'Bhadravati', 'Shimoga', 'Karnataka', '', '', '', '', ''),
(646, 'Bhadreswar', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(647, 'Bhagalpur (M.Corp)', 'Bhagalpur', 'Bihar', '', '', '', '', ''),
(648, 'Bhagatdih', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(649, 'Bhagur', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(650, 'Bhagwant Nagar', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(651, 'Bhainsa', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(652, 'Bhainsdehi', 'Betul', 'Madhya Pradesh', '', '', '', '', ''),
(653, 'Bhalariya', 'Udaipur', 'Rajasthan', '', '', '', '', ''),
(654, 'Bhalki', 'Bidar', 'Karnataka', '', '', '', '', ''),
(655, 'Bhalswa Jahangir Pur', 'North West', 'Delhi *', '', '', '', '', ''),
(656, 'Bhamodi', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(657, 'Bhandara', 'Bhandara', 'Maharashtra', '', '', '', '', ''),
(658, 'Bhandardaha', 'Haora ', 'West Bengal', '', '', '', '', ''),
(659, 'Bhander', 'Datia', 'Madhya Pradesh', '', '', '', '', ''),
(660, 'Bhangar Raghunathpur', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(661, 'Bhangri Pratham Khanda', 'Koch Bihar ', 'West Bengal', '', '', '', '', ''),
(662, 'Bhanjanagar', 'Ganjam', 'Orissa', '', '', '', '', ''),
(663, 'Bhankharpur', 'Patiala', 'Punjab', '', '', '', '', ''),
(664, 'Bhanowara', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(665, 'Bhanpura', 'Mandsaur', 'Madhya Pradesh', '', '', '', '', ''),
(666, 'Bhanpuri', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(667, 'Bhanvad', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(668, 'Bharat Heavy Electrical Limited Ranipur', 'Hardwar', 'Uttaranchal', '', '', '', '', ''),
(669, 'Bharatganj', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(670, 'Bharatpur', 'Bharatpur', 'Rajasthan', '', '', '', '', ''),
(671, 'Bhargain', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(672, 'Bharoli Kalan', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(673, 'Bharthana', 'Etawah', 'Uttar Pradesh', '', '', '', '', ''),
(674, 'Bharuch', 'Bharuch', 'Gujarat', '', '', '', '', ''),
(675, 'Bharuch INA', 'Bharuch', 'Gujarat', '', '', '', '', ''),
(676, 'Bharuhana', 'Mirzapur', 'Uttar Pradesh', '', '', '', '', ''),
(677, 'Bharveli', 'Balaghat', 'Madhya Pradesh', '', '', '', '', ''),
(678, 'Bharwari', 'Kaushambi', 'Uttar Pradesh', '', '', '', '', ''),
(679, 'Bhatapara', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(680, 'Bhatgaon', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(681, 'Bhati', 'South', 'Delhi *', '', '', '', '', ''),
(682, 'Bhatkal', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(683, 'Bhatni Bazar', 'Deoria', 'Uttar Pradesh', '', '', '', '', ''),
(684, 'Bhatpar Rani', 'Deoria', 'Uttar Pradesh', '', '', '', '', ''),
(685, 'Bhatpara', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(686, 'Bhaurasa', 'Dewas', 'Madhya Pradesh', '', '', '', '', ''),
(687, 'Bhavani', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(688, 'Bhavanisagar', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(689, 'Bhavnagar', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(690, 'Bhavra', 'Jhabua', 'Madhya Pradesh', '', '', '', '', ''),
(691, 'Bhawan Bahadur Nagar', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(692, 'Bhawani Mandi', 'Jhalawar', 'Rajasthan', '', '', '', '', ''),
(693, 'Bhawanigarh', 'Sangrur', 'Punjab', '', '', '', '', ''),
(694, 'Bhawanipatna', 'Kalahandi', 'Orissa', '', '', '', '', ''),
(695, 'Bhayavadar', 'Rajkot', 'Gujarat', '', '', '', '', ''),
(696, 'Bhedaghat', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(697, 'Bheemavaram', 'West Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(698, 'Bheemunipatnam', 'Visakhapatnam', 'Andhra Pradesh', '', '', '', '', ''),
(699, 'Bhikangaon', 'West Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(700, 'Bhikhi', 'Mansa', 'Punjab', '', '', '', '', ''),
(701, 'Bhikhiwind', 'Amritsar', 'Punjab', '', '', '', '', ''),
(702, 'Bhilai Charoda', 'Durg', 'Chhattisgarh', '', '', '', '', ''),
(703, 'Bhilai Nagar', 'Durg', 'Chhattisgarh', '', '', '', '', ''),
(704, 'Bhilakhedi', 'Hoshangabad', 'Madhya Pradesh', '', '', '', '', ''),
(705, 'Bhilwara', 'Bhilwara', 'Rajasthan', '', '', '', '', ''),
(706, 'Bhimarayanagudi', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(707, 'Bhimtal', 'Nainital', 'Uttaranchal', '', '', '', '', ''),
(708, 'Bhind', 'Bhind', 'Madhya Pradesh', '', '', '', '', ''),
(709, 'Bhinder', 'Udaipur', 'Rajasthan', '', '', '', '', ''),
(710, 'Bhinga', 'Shrawasti', 'Uttar Pradesh', '', '', '', '', ''),
(711, 'Bhingar', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(712, 'Bhinmal', 'Jalor', 'Rajasthan', '', '', '', '', ''),
(713, 'Bhisiana', 'Bathinda', 'Punjab', '', '', '', '', ''),
(714, 'Bhitarwar', 'Gwalior', 'Madhya Pradesh', '', '', '', '', ''),
(715, 'Bhiwadi', 'Alwar', 'Rajasthan', '', '', '', '', ''),
(716, 'Bhiwandi', 'Thane', 'Maharashtra', '', '', '', '', ''),
(717, 'Bhiwani', 'Bhiwani', 'Haryana', '', '', '', '', ''),
(718, 'Bhogadi', 'Mysore', 'Karnataka', '', '', '', '', ''),
(719, 'Bhogaon', 'Mainpuri', 'Uttar Pradesh', '', '', '', '', ''),
(720, 'Bhogpur', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(721, 'Bhojpur Dharampur', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(722, 'Bhojudih', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(723, 'Bhokardan', 'Jalna', 'Maharashtra', '', '', '', '', ''),
(724, 'Bhokarhedi', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(725, 'Bholar Dabri', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(726, 'Bhongir', 'Nalgonda', 'Andhra Pradesh', '', '', '', '', ''),
(727, 'Bhopal', 'Bhopal', 'Madhya Pradesh', '', '', '', '', ''),
(728, 'Bhor', 'Pune', 'Maharashtra', '', '', '', '', ''),
(729, 'Bhota', 'Hamirpur', 'Himachal Pradesh', '', '', '', '', ''),
(730, 'Bhowali', 'Nainital', 'Uttaranchal', '', '', '', '', ''),
(731, 'Bhowrah', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(732, 'Bhuban', 'Dhenkanal', 'Orissa', '', '', '', '', ''),
(733, 'Bhubaneswar', 'Khordha', 'Orissa', '', '', '', '', ''),
(734, 'Bhucho Mandi', 'Bathinda', 'Punjab', '', '', '', '', ''),
(735, 'Bhuj', 'Kachchh', 'Gujarat', '', '', '', '', ''),
(736, 'Bhulath', 'Kapurthala', 'Punjab', '', '', '', '', ''),
(737, 'Bhulepur', 'Ambedaker Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(738, 'Bhuli', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(739, 'Bhum', 'Osmanabad', 'Maharashtra', '', '', '', '', ''),
(740, 'Bhuntar', 'Kullu', 'Himachal Pradesh', '', '', '', '', ''),
(741, 'Bhusawal', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(742, 'Bhusawar', 'Bharatpur', 'Rajasthan', '', '', '', '', ''),
(743, 'Bhuvanagiri', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(744, 'Biaora', 'Rajgarh', 'Madhya Pradesh', '', '', '', '', ''),
(745, 'Biate', 'Serchhip', 'Mizoram', '', '', '', '', ''),
(746, 'Bicholim', 'North Goa ', 'Goa', '', '', '', '', ''),
(747, 'Bid', 'Bid', 'Maharashtra', '', '', '', '', ''),
(748, 'Bidar', 'Bidar', 'Karnataka', '', '', '', '', ''),
(749, 'Bidasar', 'Churu', 'Rajasthan', '', '', '', '', ''),
(750, 'Bidhan Nagar', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(751, 'Bidhuna', 'Auraiya', 'Uttar Pradesh', '', '', '', '', ''),
(752, 'Bighapur', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(753, 'Bihar', 'Nalanda', 'Bihar', '', '', '', '', ''),
(754, 'Bihpuria', 'Lakhimpur', 'Assam', '', '', '', '', ''),
(755, 'Bijapur', 'Bijapur', 'Karnataka', '', '', '', '', ''),
(756, 'Bijawar', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(757, 'Bijbehara', 'Anantnag', 'Jammu & Kashmir', '', '', '', '', ''),
(758, 'Bijeypur', 'Sheopur', 'Madhya Pradesh', '', '', '', '', ''),
(759, 'Bijni', 'Bongaigaon', 'Assam', '', '', '', '', ''),
(760, 'Bijnor', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(761, 'Bijpur', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(762, 'Bijuri', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(763, 'Bikaner', 'Bikaner', 'Rajasthan', '', '', '', '', ''),
(764, 'Bikapur', 'Faizabad', 'Uttar Pradesh', '', '', '', '', ''),
(765, 'Bikihakola', 'Haora ', 'West Bengal', '', '', '', '', ''),
(766, 'Bikketti', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(767, 'Bikramganj', 'Rohtas', 'Bihar', '', '', '', '', ''),
(768, 'Bilandapur', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(769, 'Bilara', 'Jodhpur', 'Rajasthan', '', '', '', '', ''),
(770, 'Bilari', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(771, 'Bilariaganj', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(772, 'Bilasipara', 'Dhubri', 'Assam', '', '', '', '', ''),
(773, 'Bilaspur', 'Yamunanagar', 'Haryana', '', '', '', '', ''),
(774, 'Bilaspur', 'Rampur', 'Uttar Pradesh', '', '', '', '', ''),
(775, 'Bilaspur', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(776, 'Bilaspur', 'Bilaspur', 'Himachal Pradesh', '', '', '', '', ''),
(777, 'Bilaspur', 'Gautam Buddha Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(778, 'Bilaua', 'Gwalior', 'Madhya Pradesh', '', '', '', '', '');
INSERT INTO `excelfile` (`id`, `first`, `second`, `third`, `title`, `keyword`, `description`, `url`, `content`) VALUES
(779, 'Bilgi', 'Bagalkot', 'Karnataka', '', '', '', '', ''),
(780, 'Bilgram', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(781, 'Bilha', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(782, 'Bilhaur', 'Kanpur Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(783, 'Bilimora', 'Navsari', 'Gujarat', '', '', '', '', ''),
(784, 'Billawar', 'Kathua', 'Jammu & Kashmir', '', '', '', '', ''),
(785, 'Biloli', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(786, 'Bilpahari', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(787, 'Bilpura', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(788, 'Bilram', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(789, 'Bilsanda', 'Pilibhit', 'Uttar Pradesh', '', '', '', '', ''),
(790, 'Bilsi', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(791, 'Bina Etawa', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(792, 'Bina Rly Colony', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(793, 'Bindki', 'Fatehpur', 'Uttar Pradesh', '', '', '', '', ''),
(794, 'Binika', 'Sonapur', 'Orissa', '', '', '', '', ''),
(795, 'Bipra  Noapara', 'Haora ', 'West Bengal', '', '', '', '', ''),
(796, 'Biramitrapur', 'Sundargarh', 'Orissa', '', '', '', '', ''),
(797, 'Birgaon', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(798, 'Birlapur', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(799, 'Birnagar', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(800, 'Birpur', 'Supaul', 'Bihar', '', '', '', '', ''),
(801, 'Birsinghpur', 'Satna', 'Madhya Pradesh', '', '', '', '', ''),
(802, 'Birur', 'Chikmagalur', 'Karnataka', '', '', '', '', ''),
(803, 'Birwadi', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(804, 'Bisalpur', 'Pilibhit', 'Uttar Pradesh', '', '', '', '', ''),
(805, 'Bisanda Buzurg', 'Banda', 'Uttar Pradesh', '', '', '', '', ''),
(806, 'Bisauli', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(807, 'Bishama Katek', 'Rayagada', 'Orissa', '', '', '', '', ''),
(808, 'Bisharatganj', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(809, 'Bishna', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(810, 'Bishnupur', 'Bishnupur', 'Manipur', '', '', '', '', ''),
(811, 'Bishnupur', 'Bankura ', 'West Bengal', '', '', '', '', ''),
(812, 'Bishnupur', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(813, 'Bisokhar', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(814, 'Bissau', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(815, 'Biswan', 'Sitapur', 'Uttar Pradesh', '', '', '', '', ''),
(816, 'Biswanath Chariali', 'Sonitpur', 'Assam', '', '', '', '', ''),
(817, 'Bithoor', 'Kanpur Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(818, 'Bobbili', 'Vizianagaram', 'Andhra Pradesh', '', '', '', '', ''),
(819, 'Boda', 'Rajgarh', 'Madhya Pradesh', '', '', '', '', ''),
(820, 'Bodeli', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(821, 'Bodh Gaya', 'Gaya', 'Bihar', '', '', '', '', ''),
(822, 'Bodhan', 'Nizamabad', 'Andhra Pradesh', '', '', '', '', ''),
(823, 'Bodinayakkanur', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(824, 'Bodri', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(825, 'Bohari', 'Barpeta', 'Assam', '', '', '', '', ''),
(826, 'Boisar', 'Thane', 'Maharashtra', '', '', '', '', ''),
(827, 'Bokajan', 'Karbi Anglong', 'Assam', '', '', '', '', ''),
(828, 'Bokakhat', 'Golaghat', 'Assam', '', '', '', '', ''),
(829, 'Bokaro', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(830, 'Bokaro Steel City', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(831, 'Bollaram', 'Medak', 'Andhra Pradesh', '', '', '', '', ''),
(832, 'Bolpur', 'Birbhum', 'West Bengal', '', '', '', '', ''),
(833, 'Bombooflat', 'Andamans', 'Andaman & Nicobar Islands *', '', '', '', '', ''),
(834, 'Bomdila', 'West Kameng', 'Arunachal Pradesh', '', '', '', '', ''),
(835, 'Bommanahalli', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(836, 'Bommasandra', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(837, 'Bongaigaon', 'Bongaigaon', 'Assam', '', '', '', '', ''),
(838, '\"Bongaigaon', ' Refinery & Petro-chemical Ltd. Township\"', 'Bongaigaon', '', '', '', '', ''),
(839, 'Boothapandi', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(840, 'Boothipuram', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(841, 'Bopal', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(842, 'Borgolai Grant No.11', 'Tinsukia', 'Assam', '', '', '', '', ''),
(843, 'Boriavi', 'Anand', 'Gujarat', '', '', '', '', ''),
(844, 'Borsad', 'Anand', 'Gujarat', '', '', '', '', ''),
(845, 'Botad', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(846, 'Bowali', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(847, 'Brahmakulam', 'Thrissur', 'Kerala', '', '', '', '', ''),
(848, 'Brahmana Periya-Agraharam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(849, 'Brahmapur', 'Ganjam', 'Orissa', '', '', '', '', ''),
(850, 'Brahmapuri', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(851, 'Brajarajnagar', 'Jharsuguda', 'Orissa', '', '', '', '', ''),
(852, 'Budaun', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(853, 'Budge Budge', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(854, 'Budha Theh', 'Amritsar', 'Punjab', '', '', '', '', ''),
(855, 'Budhana', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(856, 'Budhgaon', 'Sangli', 'Maharashtra', '', '', '', '', ''),
(857, 'Budhlada', 'Mansa', 'Punjab', '', '', '', '', ''),
(858, 'Budhni', 'Sehore', 'Madhya Pradesh', '', '', '', '', ''),
(859, 'Budhpura', 'Bundi', 'Rajasthan', '', '', '', '', ''),
(860, 'Bugganipalle', 'Kurnool', 'Andhra Pradesh', '', '', '', '', ''),
(861, 'Bugrasi', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(862, 'Buguda', 'Ganjam', 'Orissa', '', '', '', '', ''),
(863, 'Bulandshahr', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(864, 'Buldana', 'Buldana', 'Maharashtra', '', '', '', '', ''),
(865, 'Bundi', 'Bundi', 'Rajasthan', '', '', '', '', ''),
(866, 'Bundu', 'Ranchi', 'Jharkhand', '', '', '', '', ''),
(867, 'Burari', 'North', 'Delhi *', '', '', '', '', ''),
(868, 'Burhanpur', 'East Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(869, 'Burhar', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(870, 'Buria', 'Yamunanagar', 'Haryana', '', '', '', '', ''),
(871, 'Burla', 'Sambalpur', 'Orissa', '', '', '', '', ''),
(872, 'Buxar', 'Buxar', 'Bihar', '', '', '', '', ''),
(873, 'Buxwaha', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(874, 'Byadgi', 'Haveri', 'Karnataka', '', '', '', '', ''),
(875, 'Byasanagar', 'Jajapur', 'Orissa', '', '', '', '', ''),
(876, 'Byatarayanapura', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(877, 'Calangute', 'North Goa ', 'Goa', '', '', '', '', ''),
(878, 'Calapor', 'North Goa ', 'Goa', '', '', '', '', ''),
(879, 'Canacona', 'South Goa', 'Goa', '', '', '', '', ''),
(880, 'Candolim', 'North Goa ', 'Goa', '', '', '', '', ''),
(881, 'Carapur', 'North Goa ', 'Goa', '', '', '', '', ''),
(882, 'Cart Road', 'Darjiling ', 'West Bengal', '', '', '', '', ''),
(883, 'Chabua', 'Dibrugarh', 'Assam', '', '', '', '', ''),
(884, 'Chachanda', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(885, 'Chachaura-Binaganj', 'Guna', 'Madhya Pradesh', '', '', '', '', ''),
(886, 'Chaibasa', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(887, 'Chail', 'Kaushambi', 'Uttar Pradesh', '', '', '', '', ''),
(888, 'Chak Bankola', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(889, 'Chak Bansberia', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(890, 'Chak Enayetnagar', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(891, 'Chak Imam Ali', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(892, 'Chak Kashipur', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(893, 'Chakan', 'Pune', 'Maharashtra', '', '', '', '', ''),
(894, 'Chakapara', 'Haora ', 'West Bengal', '', '', '', '', ''),
(895, 'Chakdaha', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(896, 'Chakeri', 'Kanpur Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(897, 'Chakghat', 'Rewa', 'Madhya Pradesh', '', '', '', '', ''),
(898, 'Chakia', 'Purba Champaran', 'Bihar', '', '', '', '', ''),
(899, 'Chakia', 'Chandauli', 'Uttar Pradesh', '', '', '', '', ''),
(900, 'Chaklasi', 'Kheda', 'Gujarat', '', '', '', '', ''),
(901, 'Chakradharpur', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(902, 'Chakrata', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(903, 'Chaksu', 'Jaipur', 'Rajasthan', '', '', '', '', ''),
(904, 'Chakulia', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(905, 'Chala', 'Kannur', 'Kerala', '', '', '', '', ''),
(906, 'Chala', 'Valsad', 'Gujarat', '', '', '', '', ''),
(907, 'Chalakudy', 'Thrissur', 'Kerala', '', '', '', '', ''),
(908, 'Chalala', 'Amreli', 'Gujarat', '', '', '', '', ''),
(909, 'Chalisgaon', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(910, 'Challakere', 'Chitradurga', 'Karnataka', '', '', '', '', ''),
(911, 'Chalthan', 'Surat', 'Gujarat', '', '', '', '', ''),
(912, 'Chamba', 'Chamba', 'Himachal Pradesh', '', '', '', '', ''),
(913, 'Chamba', 'Tehri Garhwal', 'Uttaranchal', '', '', '', '', ''),
(914, 'Chamoli Gopeshwar', 'Chamoli', 'Uttaranchal', '', '', '', '', ''),
(915, 'Champa', 'Janjgir-Champa', 'Chhattisgarh', '', '', '', '', ''),
(916, 'Champawat', 'Champawat', 'Uttaranchal', '', '', '', '', ''),
(917, 'Champdani', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(918, 'Champhai', 'Champhai', 'Mizoram', '', '', '', '', ''),
(919, 'Champua', 'Kendujhar', 'Orissa', '', '', '', '', ''),
(920, 'Chamrail', 'Haora ', 'West Bengal', '', '', '', '', ''),
(921, 'Chamrajnagar', 'Chamarajanagar', 'Karnataka', '', '', '', '', ''),
(922, 'Chanasma', 'Patan', 'Gujarat', '', '', '', '', ''),
(923, 'Chandameta-Butaria', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(924, 'Chandannagar', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(925, 'Chandapur', 'Nayagarh', 'Orissa', '', '', '', '', ''),
(926, 'Chandauli', 'Chandauli', 'Uttar Pradesh', '', '', '', '', ''),
(927, 'Chandaur', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(928, 'Chandausi', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(929, 'Chanderi', 'Guna', 'Madhya Pradesh', '', '', '', '', ''),
(930, 'Chandia', 'Umaria', 'Madhya Pradesh', '', '', '', '', ''),
(931, 'Chandigarh', 'Chandigarh', 'Chandigarh *', '', '', '', '', ''),
(932, 'Chandil', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(933, 'Chandili', 'Rayagada', 'Orissa', '', '', '', '', ''),
(934, 'Chandkheda', 'Gandhinagar', 'Gujarat', '', '', '', '', ''),
(935, 'Chandla', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(936, 'Chandlodiya', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(937, 'Chandpur', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(938, 'Chandpur', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(939, 'Chandrakona', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(940, 'Chandrapur', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(941, 'Chandrapur Bagicha', 'Kamrup', 'Assam', '', '', '', '', ''),
(942, 'Chandrapura', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(943, 'Chandur', 'Amravati', 'Maharashtra', '', '', '', '', ''),
(944, 'Chandur', 'Nalgonda', 'Andhra Pradesh', '', '', '', '', ''),
(945, 'Chandur', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(946, 'Chandurbazar', 'Amravati', 'Maharashtra', '', '', '', '', ''),
(947, 'Changanassery', 'Kottayam', 'Kerala', '', '', '', '', ''),
(948, 'Changlang', 'Changlang', 'Arunachal Pradesh', '', '', '', '', ''),
(949, 'Channagiri', 'Davanagere', 'Karnataka', '', '', '', '', ''),
(950, 'Channapatna', 'Bangalore Rural', 'Karnataka', '', '', '', '', ''),
(951, 'Channarayapattana', 'Hassan', 'Karnataka', '', '', '', '', ''),
(952, 'Chanod', 'Valsad', 'Gujarat', '', '', '', '', ''),
(953, 'Chanpatia', 'Pashchim Champaran', 'Bihar', '', '', '', '', ''),
(954, 'Chapar', 'Dhubri', 'Assam', '', '', '', '', ''),
(955, 'Chapari', 'Puruliya', 'West Bengal', '', '', '', '', ''),
(956, 'Chapra', 'Saran', 'Bihar', '', '', '', '', ''),
(957, 'Chapui', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(958, 'Char Brahmanagar', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(959, 'Char Maijdia', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(960, 'Charari Sharief', 'Badgam', 'Jammu & Kashmir', '', '', '', '', ''),
(961, 'Charibatia', 'Cuttack', 'Orissa', '', '', '', '', ''),
(962, 'Charka', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(963, 'Charkhari', 'Mahoba', 'Uttar Pradesh', '', '', '', '', ''),
(964, 'Charkhi Dadri', 'Bhiwani', 'Haryana', '', '', '', '', ''),
(965, 'Charthaval', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(966, 'Chas', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(967, 'Chata Kalikapur', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(968, 'Chatakonda', 'Khammam', 'Andhra Pradesh', '', '', '', '', ''),
(969, 'Chatra', 'Chatra', 'Jharkhand', '', '', '', '', ''),
(970, 'Chaumuhan', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(971, 'Chaupal', 'Shimla', 'Himachal Pradesh', '', '', '', '', ''),
(972, 'Chaurai Khas', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(973, 'Chavakkad', 'Thrissur', 'Kerala', '', '', '', '', ''),
(974, 'Chechakhata', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(975, 'Chechat', 'Kota', 'Rajasthan', '', '', '', '', ''),
(976, 'Cheeka', 'Kaithal', 'Haryana', '', '', '', '', ''),
(977, 'Cheema', 'Sangrur', 'Punjab', '', '', '', '', ''),
(978, 'Chekonidhara', 'Jorhat', 'Assam', '', '', '', '', ''),
(979, 'Chelad', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(980, 'Chelora', 'Kannur', 'Kerala', '', '', '', '', ''),
(981, 'Chemmumiahpet', 'Cuddapah', 'Andhra Pradesh', '', '', '', '', ''),
(982, 'Chenani', 'Udhampur', 'Jammu & Kashmir', '', '', '', '', ''),
(983, 'Chendamangalam', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(984, 'Chengalpattu', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(985, 'Chengam', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(986, 'Chengamanad', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(987, 'Chengannur', 'Alappuzha', 'Kerala', '', '', '', '', ''),
(988, 'Chennai', 'Chennai', 'Tamil Nadu', '', '', '', '', ''),
(989, 'Chennasamudram', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(990, 'Chennimalai', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(991, 'Cheranallur', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(992, 'Cheranmadevi', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(993, 'Cherapunjee', 'East Khasi Hills', 'Meghalaya', '', '', '', '', ''),
(994, 'Cherthala', 'Alappuzha', 'Kerala', '', '', '', '', ''),
(995, 'Cheruthazham', 'Kannur', 'Kerala', '', '', '', '', ''),
(996, 'Cheruvannur', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(997, 'Chetpet', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(998, 'Chettiarpatti', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(999, 'Chettipalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(1000, 'Chettipalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(1001, 'Chettithangal', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(1002, 'Chevvoor', 'Thrissur', 'Kerala', '', '', '', '', ''),
(1003, 'Chhabra', 'Baran', 'Rajasthan', '', '', '', '', ''),
(1004, 'Chhachhrauli', 'Yamunanagar', 'Haryana', '', '', '', '', ''),
(1005, 'Chhapar', 'Churu', 'Rajasthan', '', '', '', '', ''),
(1006, 'Chhaprabhatha', 'Surat', 'Gujarat', '', '', '', '', ''),
(1007, 'Chhaprauli', 'Baghpat', 'Uttar Pradesh', '', '', '', '', ''),
(1008, 'Chharchha', 'Koriya', 'Chhattisgarh', '', '', '', '', ''),
(1009, 'Chharra Rafatpur', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(1010, 'Chhata', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(1011, 'Chhatari', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(1012, 'Chhatarpur', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(1013, 'Chhatatanr', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(1014, 'Chhatral INA', 'Gandhinagar', 'Gujarat', '', '', '', '', ''),
(1015, 'Chhatrapur', 'Ganjam', 'Orissa', '', '', '', '', ''),
(1016, 'Chhawla', 'South West', 'Delhi *', '', '', '', '', ''),
(1017, 'Chhaya', 'Porbandar', 'Gujarat', '', '', '', '', ''),
(1018, 'Chhibramau', 'Kannauj', 'Uttar Pradesh', '', '', '', '', ''),
(1019, 'Chhindwara', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(1020, 'Chhipabarod', 'Baran', 'Rajasthan', '', '', '', '', ''),
(1021, 'Chhora', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1022, 'Chhota Chhindwara (Gotegaon)', 'Narsimhapur', 'Madhya Pradesh', '', '', '', '', ''),
(1023, 'Chhota Gobindpur', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(1024, 'Chhota Udaipur', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(1025, 'Chhotaputki', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(1026, 'Chhoti Sadri', 'Chittaurgarh', 'Rajasthan', '', '', '', '', ''),
(1027, 'Chhuikhadan', 'Rajnandgaon', 'Chhattisgarh', '', '', '', '', ''),
(1028, 'Chhutmalpur', 'Saharanpur', 'Uttar Pradesh', '', '', '', '', ''),
(1029, 'Chicalim', 'South Goa', 'Goa', '', '', '', '', ''),
(1030, 'Chichli', 'Narsimhapur', 'Madhya Pradesh', '', '', '', '', ''),
(1031, 'Chicholi', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(1032, 'Chidambaram', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(1033, 'Chik Ballapur', 'Kolar', 'Karnataka', '', '', '', '', ''),
(1034, 'Chikhaldara', 'Amravati', 'Maharashtra', '', '', '', '', ''),
(1035, 'Chikhli', 'Buldana', 'Maharashtra', '', '', '', '', ''),
(1036, 'Chikhli', 'Navsari', 'Gujarat', '', '', '', '', ''),
(1037, 'Chikiti', 'Ganjam', 'Orissa', '', '', '', '', ''),
(1038, 'Chikmagalur', 'Chikmagalur', 'Karnataka', '', '', '', '', ''),
(1039, 'Chiknayakanhalli', 'Tumkur', 'Karnataka', '', '', '', '', ''),
(1040, 'Chikodi', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(1041, 'Chikrand', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(1042, 'Chilakaluripet', 'Guntur', 'Andhra Pradesh', '', '', '', '', ''),
(1043, 'Chilkana Sultanpur', 'Saharanpur', 'Uttar Pradesh', '', '', '', '', ''),
(1044, 'Chilla Saroda Bangar', 'East', 'Delhi *', '', '', '', '', ''),
(1045, 'Chiloda(Naroda)', 'Gandhinagar', 'Gujarat', '', '', '', '', ''),
(1046, 'Chimbel', 'North Goa ', 'Goa', '', '', '', '', ''),
(1047, 'Chinchani', 'Thane', 'Maharashtra', '', '', '', '', ''),
(1048, 'Chinchinim', 'South Goa', 'Goa', '', '', '', '', ''),
(1049, 'Chincholi', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(1050, 'Chinna Anuppanadi', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(1051, 'Chinnachowk', 'Cuddapah', 'Andhra Pradesh', '', '', '', '', ''),
(1052, 'Chinnakkampalayam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(1053, 'Chinnalapatti', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(1054, 'Chinnamanur', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(1055, 'Chinnampalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(1056, 'Chinnasalem', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(1057, 'Chinnasekkadu', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(1058, 'Chinnavedampatti', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(1059, 'Chintalavalasa', 'Vizianagaram', 'Andhra Pradesh', '', '', '', '', ''),
(1060, 'Chintamani', 'Kolar', 'Karnataka', '', '', '', '', ''),
(1061, 'Chiplun', 'Ratnagiri', 'Maharashtra', '', '', '', '', ''),
(1062, 'Chirakkal', 'Kannur', 'Kerala', '', '', '', '', ''),
(1063, 'Chirala', 'Prakasam', 'Andhra Pradesh', '', '', '', '', ''),
(1064, 'Chirawa', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(1065, 'Chirgaon', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(1066, 'Chiria', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(1067, 'Chirkunda', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(1068, 'Chirmiri', 'Koriya', 'Chhattisgarh', '', '', '', '', ''),
(1069, 'Chitapur', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(1070, 'Chitbara Gaon', 'Ballia', 'Uttar Pradesh', '', '', '', '', ''),
(1071, 'Chitgoppa', 'Bidar', 'Karnataka', '', '', '', '', ''),
(1072, 'Chithode', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(1073, 'Chitlapakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(1074, 'Chitradurga', 'Chitradurga', 'Karnataka', '', '', '', '', ''),
(1075, 'Chitrakoot', 'Satna', 'Madhya Pradesh', '', '', '', '', ''),
(1076, 'Chitrakoot Dham (Karwi)', 'Chitrakoot', 'Uttar Pradesh', '', '', '', '', ''),
(1077, 'Chittaranjan', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1078, 'Chittaurgarh', 'Chittaurgarh', 'Rajasthan', '', '', '', '', ''),
(1079, 'Chittoor', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(1080, 'Chittur-Thathamangalam', 'Palakkad', 'Kerala', '', '', '', '', ''),
(1081, 'Chockli', 'Kannur', 'Kerala', '', '', '', '', ''),
(1082, 'Chohal', 'Hoshiarpur', 'Punjab', '', '', '', '', ''),
(1083, 'Cholapuram', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(1084, 'Chomu', 'Jaipur', 'Rajasthan', '', '', '', '', ''),
(1085, 'Choornikkara', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(1086, 'Chopan', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(1087, 'Chopda', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(1088, 'Chorvad', 'Junagadh', 'Gujarat', '', '', '', '', ''),
(1089, 'Choto Haibor', 'Nagaon', 'Assam', '', '', '', '', ''),
(1090, 'Choubepur Kalan', 'Kanpur Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1091, 'Choudwar', 'Cuttack', 'Orissa', '', '', '', '', ''),
(1092, 'Choutuppal', 'Nalgonda', 'Andhra Pradesh', '', '', '', '', ''),
(1093, 'Chowwara', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(1094, 'Chuari Khas', 'Chamba', 'Himachal Pradesh', '', '', '', '', ''),
(1095, 'Chumukedima', 'Dimapur', 'Nagaland', '', '', '', '', ''),
(1096, 'Chunar', 'Mirzapur', 'Uttar Pradesh', '', '', '', '', ''),
(1097, 'Chunchupalle', 'Khammam', 'Andhra Pradesh', '', '', '', '', ''),
(1098, 'Churhat', 'Sidhi', 'Madhya Pradesh', '', '', '', '', ''),
(1099, 'Churi', 'Ranchi', 'Jharkhand', '', '', '', '', ''),
(1100, 'Churk Ghurma', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(1101, 'Churu', 'Churu', 'Rajasthan', '', '', '', '', ''),
(1102, 'Clement Town', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(1103, 'Coimbatore', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(1104, 'Colgong', 'Bhagalpur', 'Bihar', '', '', '', '', ''),
(1105, 'Colonelganj', 'Gonda', 'Uttar Pradesh', '', '', '', '', ''),
(1106, 'Colvale', 'North Goa ', 'Goa', '', '', '', '', ''),
(1107, 'Contai', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(1108, 'Coonoor', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(1109, 'Cooper\'s Camp', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(1110, 'Courtalam', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(1111, 'Cuddalore', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(1112, 'Cuddapah', 'Cuddapah', 'Andhra Pradesh', '', '', '', '', ''),
(1113, 'Cuncolim', 'South Goa', 'Goa', '', '', '', '', ''),
(1114, 'Curchorem Cacora', 'South Goa', 'Goa', '', '', '', '', ''),
(1115, 'Curti', 'North Goa ', 'Goa', '', '', '', '', ''),
(1116, 'Cuttack', 'Cuttack', 'Orissa', '', '', '', '', ''),
(1117, 'Dabhoi', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(1118, 'Daboh', 'Bhind', 'Madhya Pradesh', '', '', '', '', ''),
(1119, 'Dabra', 'Gwalior', 'Madhya Pradesh', '', '', '', '', ''),
(1120, 'Dadhapatna', 'Cuttack', 'Orissa', '', '', '', '', ''),
(1121, 'Dadri', 'Gautam Buddha Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1122, 'Dafahat', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(1123, 'Dagshai', 'Solan', 'Himachal Pradesh', '', '', '', '', ''),
(1124, 'Dahanu', 'Thane', 'Maharashtra', '', '', '', '', ''),
(1125, 'Dahegam', 'Gandhinagar', 'Gujarat', '', '', '', '', ''),
(1126, 'Dainhat', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1127, 'Daitari', 'Kendujhar', 'Orissa', '', '', '', '', ''),
(1128, 'Dakor', 'Kheda', 'Gujarat', '', '', '', '', ''),
(1129, 'Dakshin Baguan', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(1130, 'Dakshin Jhapardaha', 'Haora ', 'West Bengal', '', '', '', '', ''),
(1131, 'Dakshin Rajyadharpur', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(1132, 'Dalavaipatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(1133, 'Dalhousie', 'Chamba', 'Himachal Pradesh', '', '', '', '', ''),
(1134, 'Dalhousie', 'Chamba', 'Himachal Pradesh', '', '', '', '', ''),
(1135, 'Dalkhola', 'Uttar Dinajpur', 'West Bengal', '', '', '', '', ''),
(1136, 'Dalli-Rajhara', 'Durg', 'Chhattisgarh', '', '', '', '', ''),
(1137, 'Dallo Pura', 'East', 'Delhi *', '', '', '', '', ''),
(1138, 'Dalmau', 'Rae Bareli', 'Uttar Pradesh', '', '', '', '', ''),
(1139, 'Dalsinghsarai', 'Samastipur', 'Bihar', '', '', '', '', ''),
(1140, 'Daltonganj', 'Palamu', 'Jharkhand', '', '', '', '', ''),
(1141, 'Dalurband', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1142, 'Daman', 'Daman', 'Daman & Diu *', '', '', '', '', ''),
(1143, 'Damanjodi', 'Koraput', 'Orissa', '', '', '', '', ''),
(1144, 'Damnagar', 'Amreli', 'Gujarat', '', '', '', '', ''),
(1145, 'Damoh', 'Damoh', 'Madhya Pradesh', '', '', '', '', ''),
(1146, 'Damua', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(1147, 'Dandeli', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(1148, 'Danguwapasi', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(1149, 'Dankaur', 'Gautam Buddha Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1150, 'Dantewada', 'Dantewada', 'Chhattisgarh', '', '', '', '', ''),
(1151, 'Dapoli Camp', 'Ratnagiri', 'Maharashtra', '', '', '', '', ''),
(1152, 'Daporijo', 'Upper Subansiri', 'Arunachal Pradesh', '', '', '', '', ''),
(1153, 'Darappur', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(1154, 'Darbhanga', 'Darbhanga', 'Bihar', '', '', '', '', ''),
(1155, 'Dargajogihalli', 'Bangalore Rural', 'Karnataka', '', '', '', '', ''),
(1156, 'Dari', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(1157, 'Dariba', 'Rajsamand', 'Rajasthan', '', '', '', '', ''),
(1158, 'Dariyabad', 'Barabanki', 'Uttar Pradesh', '', '', '', '', ''),
(1159, 'Darjiling', 'Darjiling ', 'West Bengal', '', '', '', '', ''),
(1160, 'Darlawn', 'Aizawl', 'Mizoram', '', '', '', '', ''),
(1161, 'Daroha', 'Ludhiana', 'Punjab', '', '', '', '', ''),
(1162, 'Darwha', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(1163, 'Daryapur Banosa', 'Amravati', 'Maharashtra', '', '', '', '', ''),
(1164, 'Dasarahalli', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(1165, 'Dasna', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(1166, 'Dasnapur', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(1167, 'Dasua', 'Hoshiarpur', 'Punjab', '', '', '', '', ''),
(1168, 'Dataganj', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(1169, 'Datia', 'Datia', 'Madhya Pradesh', '', '', '', '', ''),
(1170, 'Dattapur Dhamangaon', 'Amravati', 'Maharashtra', '', '', '', '', ''),
(1171, 'Daudnagar', 'Aurangabad', 'Bihar', '', '', '', '', ''),
(1172, 'Daulatpur', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(1173, 'Daulatpur', 'Una', 'Himachal Pradesh', '', '', '', '', ''),
(1174, 'Daund', 'Pune', 'Maharashtra', '', '', '', '', ''),
(1175, 'Daurala', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(1176, 'Dausa', 'Dausa', 'Rajasthan', '', '', '', '', ''),
(1177, 'Davanagere', 'Davanagere', 'Karnataka', '', '', '', '', ''),
(1178, 'Davlameti', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(1179, 'Davorlim', 'South Goa', 'Goa', '', '', '', '', ''),
(1180, 'Dayal Pur', 'North East', 'Delhi *', '', '', '', '', ''),
(1181, 'Dayalbagh', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(1182, 'Debagarh', 'Debagarh', 'Orissa', '', '', '', '', ''),
(1183, 'Debipur', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1184, 'Deeg', 'Bharatpur', 'Rajasthan', '', '', '', '', ''),
(1185, 'Deesa', 'Banas Kantha', 'Gujarat', '', '', '', '', ''),
(1186, 'Deglur', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(1187, 'Dehradun', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(1188, 'Dehradun', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(1189, 'Dehri', 'Rohtas', 'Bihar', '', '', '', '', ''),
(1190, 'Dehu', 'Pune', 'Maharashtra', '', '', '', '', ''),
(1191, 'Dehu Road', 'Pune', 'Maharashtra', '', '', '', '', ''),
(1192, 'Delhi Cantt.', 'South West', 'Delhi *', '', '', '', '', ''),
(1193, 'Delhi Municipal Corporation (U)', 'In all 9 dsitricts', 'Delhi *', '', '', '', '', ''),
(1194, 'Denkanikottai', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(1195, 'Deoband', 'Saharanpur', 'Uttar Pradesh', '', '', '', '', ''),
(1196, 'Deodara', 'Mandla', 'Madhya Pradesh', '', '', '', '', ''),
(1197, 'Deoghar', 'Deoghar', 'Jharkhand', '', '', '', '', ''),
(1198, 'Deolali', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(1199, 'Deolali Pravara', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(1200, 'Deoli', 'Wardha', 'Maharashtra', '', '', '', '', ''),
(1201, 'Deoli', 'South', 'Delhi *', '', '', '', '', ''),
(1202, 'Deoli', 'Tonk', 'Rajasthan', '', '', '', '', ''),
(1203, 'Deomali', 'Tirap', 'Arunachal Pradesh', '', '', '', '', ''),
(1204, 'Deoranian', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(1205, 'Deori', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(1206, 'Deori', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(1207, 'Deori', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(1208, 'Deoria', 'Deoria', 'Uttar Pradesh', '', '', '', '', ''),
(1209, 'Deorikalan', 'Palamu', 'Jharkhand', '', '', '', '', ''),
(1210, 'Depalpur', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(1211, 'Dera Baba Nanak', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(1212, 'Dera Bassi', 'Patiala', 'Punjab', '', '', '', '', ''),
(1213, 'Dera Gopipur', 'Kangra', 'Himachal Pradesh', '', '', '', '', ''),
(1214, 'Deracolliery Township', 'Anugul', 'Orissa', '', '', '', '', ''),
(1215, 'Dergaon', 'Golaghat', 'Assam', '', '', '', '', ''),
(1216, 'Desaiganj', 'Gadchiroli', 'Maharashtra', '', '', '', '', ''),
(1217, 'Deshnoke', 'Bikaner', 'Rajasthan', '', '', '', '', ''),
(1218, 'Desur', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(1219, 'Deulgaon Raja', 'Buldana', 'Maharashtra', '', '', '', '', ''),
(1220, 'Deuli', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(1221, 'Dev Prayag', 'Tehri Garhwal & Garhwal', 'Uttaranchal', '', '', '', '', ''),
(1222, 'Devadanapatti', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(1223, 'Devadurga', 'Raichur', 'Karnataka', '', '', '', '', ''),
(1224, 'Devakottai', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(1225, 'Devanangurichi', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(1226, 'Devanhalli', 'Bangalore Rural', 'Karnataka', '', '', '', '', ''),
(1227, 'Devarakonda', 'Nalgonda', 'Andhra Pradesh', '', '', '', '', ''),
(1228, 'Devarshola', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(1229, 'Devendranagar', 'Panna', 'Madhya Pradesh', '', '', '', '', ''),
(1230, 'Devgadbaria', 'Dohad', 'Gujarat', '', '', '', '', ''),
(1231, 'Devgarh', 'Rajsamand', 'Rajasthan', '', '', '', '', ''),
(1232, 'Devhara', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(1233, 'Devsar', 'Navsari', 'Gujarat', '', '', '', '', ''),
(1234, 'Dewa', 'Barabanki', 'Uttar Pradesh', '', '', '', '', ''),
(1235, 'Dewas', 'Dewas', 'Madhya Pradesh', '', '', '', '', ''),
(1236, 'Dewhadi', 'Bhandara', 'Maharashtra', '', '', '', '', ''),
(1237, 'Dhaka', 'Purba Champaran', 'Bihar', '', '', '', '', ''),
(1238, 'Dhakuria', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1239, 'Dhalavoipuram', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(1240, 'Dhali', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(1241, 'Dhaliyur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(1242, 'Dhaluwala', 'Tehri Garhwal', 'Uttaranchal', '', '', '', '', ''),
(1243, 'Dhamanagar', 'Bhadrak', 'Orissa', '', '', '', '', ''),
(1244, 'Dhamdha', 'Durg', 'Chhattisgarh', '', '', '', '', ''),
(1245, 'Dhamnod', 'Dhar', 'Madhya Pradesh', '', '', '', '', ''),
(1246, 'Dhampur', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(1247, 'Dhamtari', 'Dhamtari', 'Chhattisgarh', '', '', '', '', ''),
(1248, 'Dhana', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(1249, 'Dhanauha', 'Jaunpur', 'Uttar Pradesh', '', '', '', '', ''),
(1250, 'Dhanaula', 'Sangrur', 'Punjab', '', '', '', '', ''),
(1251, 'Dhanauli', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(1252, 'Dhanaura', 'Jyotiba Phule Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1253, 'Dhanbad', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(1254, 'Dhandadihi', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1255, 'Dhandera', 'Hardwar', 'Uttaranchal', '', '', '', '', ''),
(1256, 'Dhandhuka', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(1257, 'Dhanera', 'Banas Kantha', 'Gujarat', '', '', '', '', ''),
(1258, 'Dhanpuri', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(1259, 'Dhanwar', 'Giridih', 'Jharkhand', '', '', '', '', ''),
(1260, 'Dhanyakuria', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1261, 'Dhar', 'Dhar', 'Madhya Pradesh', '', '', '', '', ''),
(1262, 'Dharamjaigarh', 'Raigarh', 'Chhattisgarh', '', '', '', '', ''),
(1263, 'Dharamkot', 'Moga', 'Punjab', '', '', '', '', ''),
(1264, 'Dharampur', 'Valsad', 'Gujarat', '', '', '', '', ''),
(1265, 'Dharampuri', 'Dhar', 'Madhya Pradesh', '', '', '', '', ''),
(1266, 'Dharangaon', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(1267, 'Dharapadavedu', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(1268, 'Dharapur', 'Kamrup', 'Assam', '', '', '', '', ''),
(1269, 'Dharapuram', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(1270, 'Dharasuram', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(1271, 'Dharchula', 'Pithoragarh', 'Uttaranchal', '', '', '', '', ''),
(1272, 'Dharchula Dehat', 'Pithoragarh', 'Uttaranchal', '', '', '', '', ''),
(1273, 'Dhariawad', 'Udaipur', 'Rajasthan', '', '', '', '', ''),
(1274, 'Dhariwal', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(1275, 'Dharmabad', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(1276, 'Dharmadom', 'Kannur', 'Kerala', '', '', '', '', ''),
(1277, 'Dharmanagar', 'North Tripura ', 'Tripura', '', '', '', '', ''),
(1278, 'Dharmapur', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(1279, 'Dharmapuri', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(1280, 'Dharmavaram', 'Anantapur', 'Andhra Pradesh', '', '', '', '', ''),
(1281, 'Dharmsala', 'Kangra', 'Himachal Pradesh', '', '', '', '', ''),
(1282, 'Dharoti Khurd', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(1283, 'Dharuhera', 'Rewari', 'Haryana', '', '', '', '', ''),
(1284, 'Dharur', 'Bid', 'Maharashtra', '', '', '', '', ''),
(1285, 'Dhatau', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(1286, 'Dhatrigram', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1287, 'Dhaulpur', 'Dhaulpur', 'Rajasthan', '', '', '', '', ''),
(1288, 'Dhaunsar', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(1289, 'Dhaura Tanda', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(1290, 'Dhaurehra', 'Kheri', 'Uttar Pradesh', '', '', '', '', ''),
(1291, 'Dhekiajuli', 'Sonitpur', 'Assam', '', '', '', '', ''),
(1292, 'Dhemaji', 'Dhemaji', 'Assam', '', '', '', '', ''),
(1293, 'Dhenkanal', 'Dhenkanal', 'Orissa', '', '', '', '', ''),
(1294, 'Dhilwan', 'Kapurthala', 'Punjab', '', '', '', '', ''),
(1295, 'Dhing', 'Nagaon', 'Assam', '', '', '', '', ''),
(1296, 'Dhola', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(1297, 'Dholka', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(1298, 'Dhoraji', 'Rajkot', 'Gujarat', '', '', '', '', ''),
(1299, 'Dhrangadhra', 'Surendranagar', 'Gujarat', '', '', '', '', ''),
(1300, 'Dhrol', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(1301, 'Dhubri', 'Dhubri', 'Assam', '', '', '', '', ''),
(1302, 'Dhuilya', 'Haora ', 'West Bengal', '', '', '', '', ''),
(1303, 'Dhule', 'Dhule', 'Maharashtra', '', '', '', '', ''),
(1304, 'Dhulian', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(1305, 'Dhupguri', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(1306, 'Dhuri', 'Sangrur', 'Punjab', '', '', '', '', ''),
(1307, 'Dhusaripara', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(1308, 'Diamond Harbour', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1309, 'Dibai', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(1310, 'Dibiyapur', 'Auraiya', 'Uttar Pradesh', '', '', '', '', ''),
(1311, 'Dibrugarh', 'Dibrugarh', 'Assam', '', '', '', '', ''),
(1312, 'Didihat', 'Pithoragarh', 'Uttaranchal', '', '', '', '', ''),
(1313, 'Didwana', 'Nagaur', 'Rajasthan', '', '', '', '', ''),
(1314, 'Digapahandi', 'Ganjam', 'Orissa', '', '', '', '', ''),
(1315, 'Digboi', 'Tinsukia', 'Assam', '', '', '', '', ''),
(1316, 'Digboi Oil Town', 'Tinsukia', 'Assam', '', '', '', '', ''),
(1317, 'Digdoh', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(1318, 'Dighawani', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(1319, 'Dighwara', 'Saran', 'Bihar', '', '', '', '', ''),
(1320, 'Dignala', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1321, 'Digras', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(1322, 'Digvijaygram', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(1323, 'Diken', 'Neemuch', 'Madhya Pradesh', '', '', '', '', ''),
(1324, 'Dildarnagar Fatehpur Bazar', 'Ghazipur', 'Uttar Pradesh', '', '', '', '', ''),
(1325, 'Dimapur', 'Dimapur', 'Nagaland', '', '', '', '', ''),
(1326, 'Dimaruguri', 'Nagaon', 'Assam', '', '', '', '', ''),
(1327, 'Dina Nagar', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(1328, 'Dinapur Cantt.', 'Patna', 'Bihar', '', '', '', '', ''),
(1329, 'Dinapur Nizamat', 'Patna', 'Bihar', '', '', '', '', ''),
(1330, 'Dindigul', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(1331, 'Dindori', 'Dindori', 'Madhya Pradesh', '', '', '', '', ''),
(1332, 'Dineshpur', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(1333, 'Dinhata', 'Koch Bihar ', 'West Bengal', '', '', '', '', ''),
(1334, 'Diphu', 'Karbi Anglong', 'Assam', '', '', '', '', ''),
(1335, 'Dipka', 'Korba', 'Chhattisgarh', '', '', '', '', ''),
(1336, 'Dirba', 'Sangrur', 'Punjab', '', '', '', '', ''),
(1337, 'Diu', 'Diu', 'Daman & Diu *', '', '', '', '', ''),
(1338, 'Doboka', 'Nagaon', 'Assam', '', '', '', '', ''),
(1339, 'Dod Ballapur', 'Bangalore Rural', 'Karnataka', '', '', '', '', ''),
(1340, 'Doda', 'Doda', 'Jammu & Kashmir', '', '', '', '', ''),
(1341, 'Dogadda', 'Garhwal', 'Uttaranchal', '', '', '', '', ''),
(1342, 'Doghat', 'Baghpat', 'Uttar Pradesh', '', '', '', '', ''),
(1343, 'Dohad', 'Dohad', 'Gujarat', '', '', '', '', ''),
(1344, 'Dohrighat', 'Mau', 'Uttar Pradesh', '', '', '', '', ''),
(1345, 'Doiwala', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(1346, 'Dokmoka', 'Karbi Anglong', 'Assam', '', '', '', '', ''),
(1347, 'Dola', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(1348, 'Domjur', 'Haora ', 'West Bengal', '', '', '', '', ''),
(1349, 'Dommara Nandyal', 'Cuddapah', 'Andhra Pradesh', '', '', '', '', ''),
(1350, 'Dondaicha-Warwade', 'Dhule', 'Maharashtra', '', '', '', '', ''),
(1351, 'Dongar Parasia', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(1352, 'Dongargaon', 'Rajnandgaon', 'Chhattisgarh', '', '', '', '', ''),
(1353, 'Dongragarh', 'Rajnandgaon', 'Chhattisgarh', '', '', '', '', ''),
(1354, 'Donimalai Township', 'Bellary', 'Karnataka', '', '', '', '', ''),
(1355, 'Donkamokam', 'Karbi Anglong', 'Assam', '', '', '', '', ''),
(1356, 'Doom Dooma', 'Tinsukia', 'Assam', '', '', '', '', ''),
(1357, 'Dostpur', 'Sultanpur', 'Uttar Pradesh', '', '', '', '', ''),
(1358, 'Dowleswaram', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(1359, 'Dubrajpur', 'Birbhum', 'West Bengal', '', '', '', '', ''),
(1360, 'Dudhani', 'Solapur', 'Maharashtra', '', '', '', '', ''),
(1361, 'Dudhi', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(1362, 'Dugda', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(1363, 'Dulhipur', 'Chandauli', 'Uttar Pradesh', '', '', '', '', ''),
(1364, 'Duliajan No.1', 'Dibrugarh', 'Assam', '', '', '', '', ''),
(1365, 'Duliajan Oil Town', 'Dibrugarh', 'Assam', '', '', '', '', ''),
(1366, 'Dumar Kachhar', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(1367, 'Dumarkunda', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(1368, 'Dumdum', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1369, 'Dumka', 'Dumka', 'Jharkhand', '', '', '', '', ''),
(1370, 'Dumra', 'Sitamarhi', 'Bihar', '', '', '', '', ''),
(1371, 'Dumraon', 'Buxar', 'Bihar', '', '', '', '', ''),
(1372, 'Dundahera', 'Gurgaon', 'Haryana', '', '', '', '', ''),
(1373, 'Dungamal', 'Khordha', 'Orissa', '', '', '', '', ''),
(1374, 'Dungargarh', 'Churu', 'Rajasthan', '', '', '', '', ''),
(1375, 'Dungarpur', 'Dungarpur', 'Rajasthan', '', '', '', '', ''),
(1376, 'Dungra', 'Valsad', 'Gujarat', '', '', '', '', ''),
(1377, 'Durg', 'Durg', 'Chhattisgarh', '', '', '', '', ''),
(1378, 'Durga Nagar Part-V', 'Cachar', 'Assam', '', '', '', '', ''),
(1379, 'Durgapur', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1380, 'Durgapur', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(1381, 'Durllabhganj', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(1382, 'Duru-Verinag', 'Anantnag', 'Jammu & Kashmir', '', '', '', '', ''),
(1383, 'Dusi', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(1384, 'Dwarahat', 'Almora', 'Uttaranchal', '', '', '', '', ''),
(1385, 'Dwarka', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(1386, 'Dyane', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(1387, 'Edaganasalai', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(1388, 'Edaikodu', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(1389, 'Edakalinadu', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(1390, 'Edappadi', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(1391, 'Edathala', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(1392, 'Eddumailaram', 'Medak', 'Andhra Pradesh', '', '', '', '', ''),
(1393, 'Egarkunr', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(1394, 'Egra', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(1395, 'Ekambara kuppam', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(1396, 'Ekdil', 'Etawah', 'Uttar Pradesh', '', '', '', '', ''),
(1397, 'Eklahare', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(1398, 'Eksara', 'Haora ', 'West Bengal', '', '', '', '', ''),
(1399, 'Elathur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(1400, 'Elayavoor', 'Kannur', 'Kerala', '', '', '', '', ''),
(1401, 'Elayirampannai', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(1402, 'Ellenabad', 'Sirsa', 'Haryana', '', '', '', '', ''),
(1403, 'Eloor', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(1404, 'Elumalai', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(1405, 'Eluru', 'West Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(1406, 'English Bazar', 'Maldah ', 'West Bengal', '', '', '', '', ''),
(1407, 'Eral', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(1408, 'Erandol', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(1409, 'Eranholi', 'Kannur', 'Kerala', '', '', '', '', ''),
(1410, 'Eraniel', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(1411, 'Erattupetta', 'Kottayam', 'Kerala', '', '', '', '', ''),
(1412, 'Erich', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(1413, 'Eriodu', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(1414, 'Erode', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(1415, 'Erumaipatti', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(1416, 'Eruvadi', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(1417, 'Etah', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(1418, 'Etawah', 'Etawah', 'Uttar Pradesh', '', '', '', '', ''),
(1419, 'Ethapur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(1420, 'Etmadpur', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(1421, 'Ettayapuram', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(1422, 'Ettimadai', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(1423, 'Ezhudesam', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(1424, 'Faizabad', 'Faizabad', 'Uttar Pradesh', '', '', '', '', ''),
(1425, 'Faizabad', 'Faizabad', 'Uttar Pradesh', '', '', '', '', ''),
(1426, 'Faizganj', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(1427, 'Faizpur', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(1428, 'Falakata', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(1429, 'Farah', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(1430, 'Farakhpur', 'Yamunanagar', 'Haryana', '', '', '', '', ''),
(1431, 'Faridabad', 'Faridabad', 'Haryana', '', '', '', '', ''),
(1432, 'Faridkot', 'Faridkot', 'Punjab', '', '', '', '', ''),
(1433, 'Faridnagar', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(1434, 'Faridpur', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(1435, 'Faridpur', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(1436, 'Fariha', 'Firozabad', 'Uttar Pradesh', '', '', '', '', ''),
(1437, 'Farooqnagar', 'Mahbubnagar', 'Andhra Pradesh', '', '', '', '', ''),
(1438, 'Farrakka Barrage Township', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(1439, 'Farrukhabad-cum-Fatehgarh', 'Farrukhabad', 'Uttar Pradesh', '', '', '', '', ''),
(1440, 'Farrukhnagar', 'Gurgaon', 'Haryana', '', '', '', '', ''),
(1441, 'Fatehabad', 'Fatehabad', 'Haryana', '', '', '', '', ''),
(1442, 'Fatehabad', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(1443, 'Fatehganj Pashchimi', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(1444, 'Fatehganj Purvi', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(1445, 'Fatehgarh', 'Farrukhabad', 'Uttar Pradesh', '', '', '', '', ''),
(1446, 'Fatehgarh Churian', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(1447, 'Fatehnagar', 'Udaipur', 'Rajasthan', '', '', '', '', ''),
(1448, 'Fatehpur', 'Sikar', 'Rajasthan', '', '', '', '', ''),
(1449, 'Fatehpur', 'Fatehpur', 'Uttar Pradesh', '', '', '', '', ''),
(1450, 'Fatehpur', 'Barabanki', 'Uttar Pradesh', '', '', '', '', ''),
(1451, 'Fatehpur Chaurasi', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(1452, 'Fatehpur Sikri', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(1453, 'Fatellapur', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(1454, 'Fatwah', 'Patna', 'Bihar', '', '', '', '', ''),
(1455, 'Fazilka', 'Firozpur', 'Punjab', '', '', '', '', ''),
(1456, 'Feroke', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(1457, 'Ferozepur Jhirka', 'Gurgaon', 'Haryana', '', '', '', '', ''),
(1458, 'Fertilzer Corporation of IndiaTownship', 'Anugul', 'Orissa', '', '', '', '', ''),
(1459, 'Fiozpur', 'Firozpur', 'Punjab', '', '', '', '', ''),
(1460, 'Firozabad', 'Firozabad', 'Uttar Pradesh', '', '', '', '', ''),
(1461, 'Firozpur Cantt.', 'Firozpur', 'Punjab', '', '', '', '', ''),
(1462, 'Forbesganj', 'Araria', 'Bihar', '', '', '', '', ''),
(1463, 'Freelandgunj', 'Dohad', 'Gujarat', '', '', '', '', ''),
(1464, 'Frezarpur', 'Bastar', 'Chhattisgarh', '', '', '', '', ''),
(1465, 'FRI and College Area', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(1466, 'G. Udayagiri', 'Kandhamal', 'Orissa', '', '', '', '', ''),
(1467, 'G.C.F Jabalpur', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(1468, 'Gabberia', 'Haora ', 'West Bengal', '', '', '', '', ''),
(1469, 'Gadag-Betigeri', 'Gadag', 'Karnataka', '', '', '', '', ''),
(1470, 'Gadarpur', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(1471, 'Gadarwara', 'Narsimhapur', 'Madhya Pradesh', '', '', '', '', ''),
(1472, 'Gadchiroli', 'Gadchiroli', 'Maharashtra', '', '', '', '', ''),
(1473, 'Gaddi annaram', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(1474, 'Gadhada', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(1475, 'Gadhinglaj', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(1476, 'Gadhra', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(1477, 'Gadwal', 'Mahbubnagar', 'Andhra Pradesh', '', '', '', '', ''),
(1478, 'Gagret', 'Una', 'Himachal Pradesh', '', '', '', '', ''),
(1479, 'Gairatganj', 'Raisen', 'Madhya Pradesh', '', '', '', '', ''),
(1480, 'Gairkata', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(1481, 'Gajapathinagaram', 'Vizianagaram', 'Andhra Pradesh', '', '', '', '', ''),
(1482, 'Gajendragarh', 'Gadag', 'Karnataka', '', '', '', '', ''),
(1483, 'Gajraula', 'Jyotiba Phule Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1484, 'Gajsinghpur', 'Ganganagar', 'Rajasthan', '', '', '', '', ''),
(1485, 'Gajularega', 'Vizianagaram', 'Andhra Pradesh', '', '', '', '', ''),
(1486, 'Gajuwaka', 'Visakhapatnam', 'Andhra Pradesh', '', '', '', '', ''),
(1487, 'Gakulnagar', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(1488, 'Galiakot', 'Dungarpur', 'Rajasthan', '', '', '', '', ''),
(1489, 'Ganapathipuram', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(1490, 'Ganaur', 'Sonipat', 'Haryana', '', '', '', '', ''),
(1491, 'Gandai', 'Rajnandgaon', 'Chhattisgarh', '', '', '', '', ''),
(1492, 'Ganderbal', 'Srinagar', 'Jammu & Kashmir', '', '', '', '', ''),
(1493, 'Gandevi', 'Navsari', 'Gujarat', '', '', '', '', ''),
(1494, 'Gandhi Nagar(Katpadi Ext.)', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(1495, 'Gandhidham', 'Kachchh', 'Gujarat', '', '', '', '', ''),
(1496, 'Gandhigram', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(1497, 'Gandhinagar', 'Gandhinagar', 'Gujarat', '', '', '', '', ''),
(1498, 'Gandhinagar', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(1499, 'Ganeshpur', 'Bhandara', 'Maharashtra', '', '', '', '', ''),
(1500, 'Gangaghat', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(1501, 'Gangaikondan', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(1502, 'Gangakhed', 'Parbhani', 'Maharashtra', '', '', '', '', ''),
(1503, 'Ganganagar', 'Ganganagar', 'Rajasthan', '', '', '', '', ''),
(1504, 'Gangapur', 'Aurangabad', 'Maharashtra', '', '', '', '', ''),
(1505, 'Gangapur', 'Bhilwara', 'Rajasthan', '', '', '', '', ''),
(1506, 'Gangapur', 'Varanasi', 'Uttar Pradesh', '', '', '', '', ''),
(1507, 'Gangapur City', 'Sawai Madhopur', 'Rajasthan', '', '', '', '', ''),
(1508, 'Gangarampur', 'Dakshin Dinajpur', 'West Bengal', '', '', '', '', ''),
(1509, 'Gangavalli', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(1510, 'Gangawati', 'Koppal', 'Karnataka', '', '', '', '', ''),
(1511, 'Gangoh', 'Saharanpur', 'Uttar Pradesh', '', '', '', '', ''),
(1512, 'Gangotri', 'Uttarkashi', 'Uttaranchal', '', '', '', '', ''),
(1513, 'Gangtok', 'East', 'Sikkim', '', '', '', '', ''),
(1514, 'Ganguvarpatti', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(1515, 'Ganj Dundawara', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(1516, 'Ganj Muradabad', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(1517, 'Ganjam', 'Ganjam', 'Orissa', '', '', '', '', ''),
(1518, 'Garacharma', 'Andamans', 'Andaman & Nicobar Islands *', '', '', '', '', ''),
(1519, 'Garalgachha', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(1520, 'Garautha', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(1521, 'Gardhiwala', 'Hoshiarpur', 'Punjab', '', '', '', '', ''),
(1522, 'Garhakota', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(1523, 'Garhi Pukhta', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(1524, 'Garhi-Malhara', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(1525, 'Garhmukteshwar', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(1526, 'Garhshanker', 'Hoshiarpur', 'Punjab', '', '', '', '', ''),
(1527, 'Garhwa', 'Garhwa', 'Jharkhand', '', '', '', '', ''),
(1528, 'Gariadhar', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(1529, 'Garoth', 'Mandsaur', 'Madhya Pradesh', '', '', '', '', ''),
(1530, 'Garshyamnagar', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1531, 'Garulia', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1532, 'Gaura Barhaj', 'Deoria', 'Uttar Pradesh', '', '', '', '', ''),
(1533, 'Gaurella', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(1534, 'Gauri Bazar', 'Deoria', 'Uttar Pradesh', '', '', '', '', ''),
(1535, 'Gauribidanur', 'Kolar', 'Karnataka', '', '', '', '', ''),
(1536, 'Gauripur', 'Dhubri', 'Assam', '', '', '', '', ''),
(1537, 'Gausganj', 'Kanpur Dehat', 'Uttar Pradesh', '', '', '', '', ''),
(1538, 'Gawan', 'Budaun', 'Uttar Pradesh', '', '', '', '', '');
INSERT INTO `excelfile` (`id`, `first`, `second`, `third`, `title`, `keyword`, `description`, `url`, `content`) VALUES
(1539, 'Gaya', 'Gaya', 'Bihar', '', '', '', '', ''),
(1540, 'Gayespur', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(1541, 'Geedam', 'Dantewada', 'Chhattisgarh', '', '', '', '', ''),
(1542, 'Georai', 'Bid', 'Maharashtra', '', '', '', '', ''),
(1543, 'Ghagga', 'Patiala', 'Punjab', '', '', '', '', ''),
(1544, 'Ghanaur', 'Patiala', 'Punjab', '', '', '', '', ''),
(1545, 'Ghansor', 'Seoni', 'Madhya Pradesh', '', '', '', '', ''),
(1546, 'Ghantapada', 'Anugul', 'Orissa', '', '', '', '', ''),
(1547, 'Gharaunda', 'Karnal', 'Haryana', '', '', '', '', ''),
(1548, 'Gharghoda', 'Raigarh', 'Chhattisgarh', '', '', '', '', ''),
(1549, 'Gharoli', 'East', 'Delhi *', '', '', '', '', ''),
(1550, 'Gharonda Neemka Bangar alias Patpar Ganj', 'East', 'Delhi *', '', '', '', '', ''),
(1551, 'Ghatal', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(1552, 'Ghatampur', 'Kanpur Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1553, 'Ghatanji', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(1554, 'Ghatkeser', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(1555, 'Ghatlodiya', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(1556, 'Ghatshila', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(1557, 'Ghaziabad', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(1558, 'Ghazipur', 'Ghazipur', 'Uttar Pradesh', '', '', '', '', ''),
(1559, 'Gheora', 'North West', 'Delhi *', '', '', '', '', ''),
(1560, 'Ghiraur', 'Mainpuri', 'Uttar Pradesh', '', '', '', '', ''),
(1561, 'Ghitorni', 'South West', 'Delhi *', '', '', '', '', ''),
(1562, 'Gho Manhasan', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(1563, 'Ghoga', 'North West', 'Delhi *', '', '', '', '', ''),
(1564, 'Ghogha', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(1565, 'Ghoghardiha', 'Madhubani', 'Bihar', '', '', '', '', ''),
(1566, 'Ghorabandha', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(1567, 'Ghorawal', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(1568, 'Ghorsala', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(1569, 'Ghosi', 'Mau', 'Uttar Pradesh', '', '', '', '', ''),
(1570, 'Ghosia Bazar', 'Sant Ravidas Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1571, 'Ghoti Budruk', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(1572, 'Ghughuli', 'Maharajganj', 'Uttar Pradesh', '', '', '', '', ''),
(1573, 'Ghugus', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(1574, 'Ghulewadi', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(1575, 'Ghumarwin', 'Bilaspur', 'Himachal Pradesh', '', '', '', '', ''),
(1576, 'Ghuwara', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(1577, 'Gidderbaha', 'Muktsar', 'Punjab', '', '', '', '', ''),
(1578, 'Gidi', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(1579, 'Gingee', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(1580, 'Giridih', 'Giridih', 'Jharkhand', '', '', '', '', ''),
(1581, 'Goa Velha', 'North Goa ', 'Goa', '', '', '', '', ''),
(1582, 'Goaljan', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(1583, 'Goalpara', 'Goalpara', 'Assam', '', '', '', '', ''),
(1584, 'Goasafat', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(1585, 'Gobardanga', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1586, 'Gobichettipalayam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(1587, 'Gobindgarh', 'Fatehgarh Sahib', 'Punjab', '', '', '', '', ''),
(1588, 'Gobindpur', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(1589, 'Gobranawapara', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(1590, 'Gochar', 'Chamoli', 'Uttaranchal', '', '', '', '', ''),
(1591, 'Godda', 'Godda', 'Jharkhand', '', '', '', '', ''),
(1592, 'Godhar', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(1593, 'Godhra', 'Panch Mahals', 'Gujarat', '', '', '', '', ''),
(1594, 'Godoli', 'Satara', 'Maharashtra', '', '', '', '', ''),
(1595, 'Gogaon', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(1596, 'Gogapur', 'Ujjain', 'Madhya Pradesh', '', '', '', '', ''),
(1597, 'Gogri Jamalpur', 'Khagaria', 'Bihar', '', '', '', '', ''),
(1598, 'Gohad', 'Bhind', 'Madhya Pradesh', '', '', '', '', ''),
(1599, 'Gohana', 'Sonipat', 'Haryana', '', '', '', '', ''),
(1600, 'Gohand', 'Hamirpur', 'Uttar Pradesh', '', '', '', '', ''),
(1601, 'Gohpur', 'Sonitpur', 'Assam', '', '', '', '', ''),
(1602, 'Gokak', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(1603, 'Gokak Falls', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(1604, 'Gokal Pur', 'North East', 'Delhi *', '', '', '', '', ''),
(1605, 'Gokhivare', 'Thane', 'Maharashtra', '', '', '', '', ''),
(1606, 'Gokul', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(1607, 'Gola Bazar', 'Gorakhpur', 'Uttar Pradesh', '', '', '', '', ''),
(1608, 'Gola Gokarannath', 'Kheri', 'Uttar Pradesh', '', '', '', '', ''),
(1609, 'Golaghat', 'Golaghat', 'Assam', '', '', '', '', ''),
(1610, 'Golokganj', 'Dhubri', 'Assam', '', '', '', '', ''),
(1611, 'Gomoh', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(1612, 'Gonda', 'Gonda', 'Uttar Pradesh', '', '', '', '', ''),
(1613, 'Gondal', 'Rajkot', 'Gujarat', '', '', '', '', ''),
(1614, 'Gondiya', 'Gondiya', 'Maharashtra', '', '', '', '', ''),
(1615, 'Goniana', 'Bathinda', 'Punjab', '', '', '', '', ''),
(1616, 'Gonikoppal', 'Kodagu', 'Karnataka', '', '', '', '', ''),
(1617, 'Gooty', 'Anantapur', 'Andhra Pradesh', '', '', '', '', ''),
(1618, 'Gopalasamudram', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(1619, 'Gopalganj', 'Gopalganj', 'Bihar', '', '', '', '', ''),
(1620, 'Gopalpur', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(1621, 'Gopalpur', 'Ganjam', 'Orissa', '', '', '', '', ''),
(1622, 'Gopamau', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(1623, 'Gopiganj', 'Sant Ravidas Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1624, 'Gopinathpur', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1625, 'Gora Bazar', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(1626, 'Gorah Salathian', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(1627, 'Gorakhpur', 'Gorakhpur', 'Uttar Pradesh', '', '', '', '', ''),
(1628, 'Goraya', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(1629, 'Goredi Chancha', 'Nagaur', 'Rajasthan', '', '', '', '', ''),
(1630, 'Goregaon', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(1631, 'Gormi', 'Bhind', 'Madhya Pradesh', '', '', '', '', ''),
(1632, 'Gosainganj', 'Lucknow', 'Uttar Pradesh', '', '', '', '', ''),
(1633, 'Gosainganj', 'Faizabad', 'Uttar Pradesh', '', '', '', '', ''),
(1634, 'Gossaigaon', 'Kokrajhar', 'Assam', '', '', '', '', ''),
(1635, 'Gota', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(1636, 'Gothra', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(1637, 'Gottikere', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(1638, 'Goundampalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(1639, 'Govardhan', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(1640, 'Govindgarh', 'Alwar', 'Rajasthan', '', '', '', '', ''),
(1641, 'Govindgarh', 'Rewa', 'Madhya Pradesh', '', '', '', '', ''),
(1642, 'Greater Mumbai', 'Mumbai (Suburban) and Mumbai', 'Maharashtra', '', '', '', '', ''),
(1643, 'GSFC Complex INA', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(1644, 'Gua', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(1645, 'Gubbi', 'Tumkur', 'Karnataka', '', '', '', '', ''),
(1646, 'Gudalur', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(1647, 'Gudalur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(1648, 'Gudalur', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(1649, 'Gudari', 'Rayagada', 'Orissa', '', '', '', '', ''),
(1650, 'Gudibanda', 'Kolar', 'Karnataka', '', '', '', '', ''),
(1651, 'Gudivada', 'Visakhapatnam', 'Andhra Pradesh', '', '', '', '', ''),
(1652, 'Gudivada', 'Krishna', 'Andhra Pradesh', '', '', '', '', ''),
(1653, 'Gudiyatham', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(1654, 'Gudur', 'Nellore', 'Andhra Pradesh', '', '', '', '', ''),
(1655, 'Guhagar', 'Ratnagiri', 'Maharashtra', '', '', '', '', ''),
(1656, 'Guirim', 'North Goa ', 'Goa', '', '', '', '', ''),
(1657, 'Gulabpura', 'Bhilwara', 'Rajasthan', '', '', '', '', ''),
(1658, 'Gulaothi', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(1659, 'Gularia Bhindara', 'Pilibhit', 'Uttar Pradesh', '', '', '', '', ''),
(1660, 'Gulariya', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(1661, 'Gulbarga', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(1662, 'Guledgudda', 'Bagalkot', 'Karnataka', '', '', '', '', ''),
(1663, 'Gulmarg', 'Baramula', 'Jammu & Kashmir', '', '', '', '', ''),
(1664, 'Guma', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1665, 'Gumia', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(1666, 'Gumla', 'Lohardaga', 'Jharkhand', '', '', '', '', ''),
(1667, 'Gummidipoondi', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(1668, 'Guna', 'Guna', 'Madhya Pradesh', '', '', '', '', ''),
(1669, 'Gundlupet', 'Chamarajanagar', 'Karnataka', '', '', '', '', ''),
(1670, 'Gunnaur', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(1671, 'Guntakal', 'Anantapur', 'Andhra Pradesh', '', '', '', '', ''),
(1672, 'Guntur', 'Guntur', 'Andhra Pradesh', '', '', '', '', ''),
(1673, 'Gunupur', 'Rayagada', 'Orissa', '', '', '', '', ''),
(1674, 'Gurdaspur', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(1675, 'Gurgaon', 'Gurgaon', 'Haryana', '', '', '', '', ''),
(1676, 'Gurgaon Rural', 'Gurgaon', 'Haryana', '', '', '', '', ''),
(1677, 'Gurh', 'Rewa', 'Madhya Pradesh', '', '', '', '', ''),
(1678, 'Guriahati', 'Koch Bihar ', 'West Bengal', '', '', '', '', ''),
(1679, 'Gurmatkal', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(1680, 'Gursahaiganj', 'Kannauj', 'Uttar Pradesh', '', '', '', '', ''),
(1681, 'Gursarai', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(1682, 'Guru Har Sahai', 'Firozpur', 'Punjab', '', '', '', '', ''),
(1683, 'Guruvayoor', 'Thrissur', 'Kerala', '', '', '', '', ''),
(1684, 'Guskara', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1685, 'Guwahati', 'Kamrup', 'Assam', '', '', '', '', ''),
(1686, 'Gwalior', 'Gwalior', 'Madhya Pradesh', '', '', '', '', ''),
(1687, 'Gyalshing', 'West', 'Sikkim', '', '', '', '', ''),
(1688, 'Gyanpur', 'Sant Ravidas Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1689, 'Habibpur', 'Bhagalpur', 'Bihar', '', '', '', '', ''),
(1690, 'Habra', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1691, 'Hadgaon', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(1692, 'Hafizpur', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(1693, 'Haflong', 'North Cachar Hills', 'Assam', '', '', '', '', ''),
(1694, 'Haidergarh', 'Barabanki', 'Uttar Pradesh', '', '', '', '', ''),
(1695, 'Hailakandi', 'Hailakandi', 'Assam', '', '', '', '', ''),
(1696, 'Haileymandi', 'Gurgaon', 'Haryana', '', '', '', '', ''),
(1697, 'Hajan', 'Baramula', 'Jammu & Kashmir', '', '', '', '', ''),
(1698, 'Hajipur', 'Hoshiarpur', 'Punjab', '', '', '', '', ''),
(1699, 'Hajipur', 'Vaishali', 'Bihar', '', '', '', '', ''),
(1700, 'Hajira INA', 'Surat', 'Gujarat', '', '', '', '', ''),
(1701, 'Haldaur', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(1702, 'Haldia', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(1703, 'Haldibari', 'Koch Bihar ', 'West Bengal', '', '', '', '', ''),
(1704, 'Haldwani-cum-Kathgodam', 'Nainital', 'Uttaranchal', '', '', '', '', ''),
(1705, 'Halisahar', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1706, 'Haliyal', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(1707, 'Halol', 'Panch Mahals', 'Gujarat', '', '', '', '', ''),
(1708, 'Haludbani', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(1709, 'Halvad', 'Surendranagar', 'Gujarat', '', '', '', '', ''),
(1710, 'Hamirpur', 'Hamirpur', 'Himachal Pradesh', '', '', '', '', ''),
(1711, 'Hamirpur', 'Hamirpur', 'Uttar Pradesh', '', '', '', '', ''),
(1712, 'Hamren', 'Karbi Anglong', 'Assam', '', '', '', '', ''),
(1713, 'Handia', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(1714, 'Handiaya', 'Sangrur', 'Punjab', '', '', '', '', ''),
(1715, 'Handwara', 'Kupwara', 'Jammu & Kashmir', '', '', '', '', ''),
(1716, 'Hangal', 'Haveri', 'Karnataka', '', '', '', '', ''),
(1717, 'Hansi', 'Hisar', 'Haryana', '', '', '', '', ''),
(1718, 'Hanumana', 'Rewa', 'Madhya Pradesh', '', '', '', '', ''),
(1719, 'Hanumangarh', 'Hanumangarh', 'Rajasthan', '', '', '', '', ''),
(1720, 'Hanumanthampatti', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(1721, 'Haora', 'Haora ', 'West Bengal', '', '', '', '', ''),
(1722, 'Hapur', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(1723, 'Harda', 'Harda', 'Madhya Pradesh', '', '', '', '', ''),
(1724, 'Hardoi', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(1725, 'Harduaganj', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(1726, 'Hardwar', 'Hardwar', 'Uttaranchal', '', '', '', '', ''),
(1727, 'Hargaon', 'Sitapur', 'Uttar Pradesh', '', '', '', '', ''),
(1728, 'Harharia Chak', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(1729, 'Hariana', 'Hoshiarpur', 'Punjab', '', '', '', '', ''),
(1730, 'Harihar', 'Davanagere', 'Karnataka', '', '', '', '', ''),
(1731, 'Hariharpur', 'Sant Kabir Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1732, 'Harij', 'Patan', 'Gujarat', '', '', '', '', ''),
(1733, 'Haripur', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1734, 'Harishpur', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1735, 'Harpalpur', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(1736, 'Harpanahalli', 'Davanagere', 'Karnataka', '', '', '', '', ''),
(1737, 'Harrai', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(1738, 'Harraiya', 'Basti', 'Uttar Pradesh', '', '', '', '', ''),
(1739, 'Harsud', 'East Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(1740, 'Harur', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(1741, 'Harveypatti', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(1742, 'Hasanpur', 'Jyotiba Phule Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1743, 'Hasayan', 'Hathras', 'Uttar Pradesh', '', '', '', '', ''),
(1744, 'Hassan', 'Hassan', 'Karnataka', '', '', '', '', ''),
(1745, 'Hassanpur', 'Faridabad', 'Haryana', '', '', '', '', ''),
(1746, 'Hastinapur', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(1747, 'Hastsal', 'West', 'Delhi *', '', '', '', '', ''),
(1748, 'Hata', 'Kushinagar', 'Uttar Pradesh', '', '', '', '', ''),
(1749, 'Hatgachha', 'Haora ', 'West Bengal', '', '', '', '', ''),
(1750, 'Hathin', 'Faridabad', 'Haryana', '', '', '', '', ''),
(1751, 'Hathras', 'Hathras', 'Uttar Pradesh', '', '', '', '', ''),
(1752, 'Hatibandha', 'Sundargarh', 'Orissa', '', '', '', '', ''),
(1753, 'Hatkachora', 'Bastar', 'Chhattisgarh', '', '', '', '', ''),
(1754, 'Hatod', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(1755, 'Hatpipalya', 'Dewas', 'Madhya Pradesh', '', '', '', '', ''),
(1756, 'Hatsimla', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1757, 'Hatta', 'Damoh', 'Madhya Pradesh', '', '', '', '', ''),
(1758, 'Hatti', 'Raichur', 'Karnataka', '', '', '', '', ''),
(1759, 'Hatti Gold Mines', 'Raichur', 'Karnataka', '', '', '', '', ''),
(1760, 'Haveri', 'Haveri', 'Karnataka', '', '', '', '', ''),
(1761, 'Hazaribag', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(1762, 'Hebbagodi', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(1763, 'Hebbalu', 'Mysore', 'Karnataka', '', '', '', '', ''),
(1764, 'Heggadadevanakote', 'Mysore', 'Karnataka', '', '', '', '', ''),
(1765, 'Herbertpur', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(1766, 'Heriok', 'Thoubal', 'Manipur', '', '', '', '', ''),
(1767, 'Herohalli', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(1768, 'Hesla', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(1769, 'Highways', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(1770, 'Hijuli', 'Puruliya', 'West Bengal', '', '', '', '', ''),
(1771, 'Hilsa', 'Nalanda', 'Bihar', '', '', '', '', ''),
(1772, 'Himatnagar', 'Sabar Kantha', 'Gujarat', '', '', '', '', ''),
(1773, 'Hindalgi', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(1774, 'Hindaun', 'Karauli', 'Rajasthan', '', '', '', '', ''),
(1775, 'Hindoria', 'Damoh', 'Madhya Pradesh', '', '', '', '', ''),
(1776, 'Hindupur', 'Anantapur', 'Andhra Pradesh', '', '', '', '', ''),
(1777, 'Hindustan Paper Corporation Ltd. Township Area Panchgram', 'Hailakandi', 'Assam', '', '', '', '', ''),
(1778, 'Hindusthan Cables Town', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1779, 'Hinganghat', 'Wardha', 'Maharashtra', '', '', '', '', ''),
(1780, 'Hingoli', 'Hingoli', 'Maharashtra', '', '', '', '', ''),
(1781, 'Hinjilicut', 'Ganjam', 'Orissa', '', '', '', '', ''),
(1782, 'Hirakud', 'Sambalpur', 'Orissa', '', '', '', '', ''),
(1783, 'Hiranagar', 'Kathua', 'Jammu & Kashmir', '', '', '', '', ''),
(1784, 'Hirapur', 'Balaghat', 'Madhya Pradesh', '', '', '', '', ''),
(1785, 'Hirekerur', 'Haveri', 'Karnataka', '', '', '', '', ''),
(1786, 'Hiriyur', 'Chitradurga', 'Karnataka', '', '', '', '', ''),
(1787, 'Hisar', 'Hisar', 'Haryana', '', '', '', '', ''),
(1788, 'Hisua', 'Nawada', 'Bihar', '', '', '', '', ''),
(1789, 'Hnahthial', 'Lunglei', 'Mizoram', '', '', '', '', ''),
(1790, 'Hodal', 'Faridabad', 'Haryana', '', '', '', '', ''),
(1791, 'Hojai', 'Nagaon', 'Assam', '', '', '', '', ''),
(1792, 'Holalkere', 'Chitradurga', 'Karnataka', '', '', '', '', ''),
(1793, 'Holenarsipur', 'Hassan', 'Karnataka', '', '', '', '', ''),
(1794, 'Homnabad', 'Bidar', 'Karnataka', '', '', '', '', ''),
(1795, 'Honavar', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(1796, 'Honnali', 'Davanagere', 'Karnataka', '', '', '', '', ''),
(1797, 'Hoovina Hadagalli', 'Bellary', 'Karnataka', '', '', '', '', ''),
(1798, 'Hosabettu', 'Kasaragod', 'Kerala', '', '', '', '', ''),
(1799, 'Hosanagara', 'Shimoga', 'Karnataka', '', '', '', '', ''),
(1800, 'Hosdurga', 'Chitradurga', 'Karnataka', '', '', '', '', ''),
(1801, 'Hoshangabad', 'Hoshangabad', 'Madhya Pradesh', '', '', '', '', ''),
(1802, 'Hoshiarpur', 'Hoshiarpur', 'Punjab', '', '', '', '', ''),
(1803, 'Hoskote', 'Bangalore Rural', 'Karnataka', '', '', '', '', ''),
(1804, 'Hospet', 'Bellary', 'Karnataka', '', '', '', '', ''),
(1805, 'Hosur', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(1806, 'Howli', 'Barpeta', 'Assam', '', '', '', '', ''),
(1807, 'Howraghat', 'Karbi Anglong', 'Assam', '', '', '', '', ''),
(1808, 'Hubbathala', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(1809, 'Hubli-Dharwad', 'Dharwad', 'Karnataka', '', '', '', '', ''),
(1810, 'Hugli-Chinsurah', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(1811, 'Hukeri', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(1812, 'Huligal', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(1813, 'Hunasamaranahalli', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(1814, 'Hungund', 'Bagalkot', 'Karnataka', '', '', '', '', ''),
(1815, 'Hunsur', 'Mysore', 'Karnataka', '', '', '', '', ''),
(1816, 'Hupari', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(1817, 'Hussainabad', 'Palamu', 'Jharkhand', '', '', '', '', ''),
(1818, 'Hussainpur', 'Kapurthala', 'Punjab', '', '', '', '', ''),
(1819, 'Hyderabad', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(1820, 'Hyderabad M.Corp', 'Hyderabad and Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(1821, 'Ibrahimpur', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(1822, 'Ichalkaranji', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(1823, 'Ichchapuram', 'Srikakulam', 'Andhra Pradesh', '', '', '', '', ''),
(1824, 'Ichchhapor', 'Surat', 'Gujarat', '', '', '', '', ''),
(1825, 'Ichhapur Defence  Estate', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1826, 'Ichhawar', 'Sehore', 'Madhya Pradesh', '', '', '', '', ''),
(1827, 'Idar', 'Sabar Kantha', 'Gujarat', '', '', '', '', ''),
(1828, 'Idikarai', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(1829, 'Idukki Township', 'Idukki', 'Kerala', '', '', '', '', ''),
(1830, 'Igatpuri', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(1831, 'Iglas', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(1832, 'Ikauna', 'Shrawasti', 'Uttar Pradesh', '', '', '', '', ''),
(1833, 'Iklehra', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(1834, 'Ilampillai', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(1835, 'Ilanji', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(1836, 'Ilkal', 'Bagalkot', 'Karnataka', '', '', '', '', ''),
(1837, 'Iltifatganj Bazar', 'Ambedaker Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1838, 'Iluppaiyurani', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(1839, 'Iluppur', 'Pudukkottai', 'Tamil Nadu', '', '', '', '', ''),
(1840, 'Imphal', 'Imphal West & Imphal East', 'Manipur', '', '', '', '', ''),
(1841, 'Inam Karur', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(1842, 'Indapur', 'Pune', 'Maharashtra', '', '', '', '', ''),
(1843, 'Indergarh', 'Datia', 'Madhya Pradesh', '', '', '', '', ''),
(1844, 'Indi', 'Bijapur', 'Karnataka', '', '', '', '', ''),
(1845, '\"Indian Telephone Industry', ' Mankapur (Sp. Village)\"', 'Gonda', '', '', '', '', ''),
(1846, 'Indore', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(1847, 'Indragarh', 'Bundi', 'Rajasthan', '', '', '', '', ''),
(1848, 'Indranagar', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(1849, 'Indri', 'Karnal', 'Haryana', '', '', '', '', ''),
(1850, 'Injambakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(1851, 'Iringaprom', 'Thrissur', 'Kerala', '', '', '', '', ''),
(1852, 'Irinjalakuda', 'Thrissur', 'Kerala', '', '', '', '', ''),
(1853, 'Iriveri', 'Kannur', 'Kerala', '', '', '', '', ''),
(1854, 'Irugur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(1855, 'Isagarh', 'Guna', 'Madhya Pradesh', '', '', '', '', ''),
(1856, 'Islamnagar', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(1857, 'Islampur', 'Uttar Dinajpur', 'West Bengal', '', '', '', '', ''),
(1858, 'Islampur', 'Nalanda', 'Bihar', '', '', '', '', ''),
(1859, 'Isnapur', 'Medak', 'Andhra Pradesh', '', '', '', '', ''),
(1860, 'Isri', 'Giridih', 'Jharkhand', '', '', '', '', ''),
(1861, 'Itanagar', 'Papum Pare', 'Arunachal Pradesh', '', '', '', '', ''),
(1862, 'Itarsi', 'Hoshangabad', 'Madhya Pradesh', '', '', '', '', ''),
(1863, 'Itaunja', 'Lucknow', 'Uttar Pradesh', '', '', '', '', ''),
(1864, 'Jabalpur', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(1865, 'Jabalpur Cantt.', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(1866, 'Jadugora', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(1867, 'Jafarabad', 'Jaunpur', 'Uttar Pradesh', '', '', '', '', ''),
(1868, 'Jafarpur', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1869, 'Jaffrabad', 'North East', 'Delhi *', '', '', '', '', ''),
(1870, 'Jaffrabad', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(1871, 'Jafrabad', 'Amreli', 'Gujarat', '', '', '', '', ''),
(1872, 'Jagadanandapur', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(1873, 'Jagadhri', 'Yamunanagar', 'Haryana', '', '', '', '', ''),
(1874, 'Jagadishpur', 'Haora ', 'West Bengal', '', '', '', '', ''),
(1875, 'Jagalur', 'Davanagere', 'Karnataka', '', '', '', '', ''),
(1876, 'Jagathala', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(1877, 'Jagatsinghapur', 'Jagatsinghapur', 'Orissa', '', '', '', '', ''),
(1878, 'Jagdalpur', 'Bastar', 'Chhattisgarh', '', '', '', '', ''),
(1879, 'Jagdishpur', 'Bhojpur', 'Bihar', '', '', '', '', ''),
(1880, 'Jaggayyapet', 'Krishna', 'Andhra Pradesh', '', '', '', '', ''),
(1881, 'Jagiroad', 'Marigaon', 'Assam', '', '', '', '', ''),
(1882, 'Jagner', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(1883, 'Jagraon', 'Ludhiana', 'Punjab', '', '', '', '', ''),
(1884, 'Jagtaj', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(1885, 'Jagtial', 'Karimnagar', 'Andhra Pradesh', '', '', '', '', ''),
(1886, 'Jahanabad', 'Pilibhit', 'Uttar Pradesh', '', '', '', '', ''),
(1887, 'Jahangirabad', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(1888, 'Jahangirpur', 'Gautam Buddha Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1889, 'Jahazpur', 'Bhilwara', 'Rajasthan', '', '', '', '', ''),
(1890, 'Jainagar', 'Madhubani', 'Bihar', '', '', '', '', ''),
(1891, 'Jaipur', 'Jaipur', 'Rajasthan', '', '', '', '', ''),
(1892, 'Jairampur', 'Changlang', 'Arunachal Pradesh', '', '', '', '', ''),
(1893, 'Jais', 'Rae Bareli', 'Uttar Pradesh', '', '', '', '', ''),
(1894, 'Jaisalmer', 'Jaisalmer', 'Rajasthan', '', '', '', '', ''),
(1895, 'Jaisinghnagar', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(1896, 'Jaitaran', 'Pali', 'Rajasthan', '', '', '', '', ''),
(1897, 'Jaithara', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(1898, 'Jaithari', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(1899, 'Jaitu', 'Faridkot', 'Punjab', '', '', '', '', ''),
(1900, 'Jaitwara', 'Satna', 'Madhya Pradesh', '', '', '', '', ''),
(1901, 'Jajapur', 'Jajapur', 'Orissa', '', '', '', '', ''),
(1902, 'Jakhal Mandi', 'Fatehabad', 'Haryana', '', '', '', '', ''),
(1903, 'Jala Kendua', 'Haora ', 'West Bengal', '', '', '', '', ''),
(1904, 'Jalakandapuram', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(1905, 'Jalalabad', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(1906, 'Jalalabad', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(1907, 'Jalalabad', 'Firozpur', 'Punjab', '', '', '', '', ''),
(1908, 'Jalalabad', 'Shahjahanpur', 'Uttar Pradesh', '', '', '', '', ''),
(1909, 'Jalali', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(1910, 'Jalalpore', 'Navsari', 'Gujarat', '', '', '', '', ''),
(1911, 'Jalalpur', 'Ambedaker Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1912, 'Jalandhar', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(1913, 'Jalandhar Cantt.', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(1914, 'Jalaun', 'Jalaun ', 'Uttar Pradesh', '', '', '', '', ''),
(1915, 'Jalda', 'Sundargarh', 'Orissa', '', '', '', '', ''),
(1916, 'Jalesar', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(1917, 'Jaleswar', 'Baleshwar', 'Orissa', '', '', '', '', ''),
(1918, 'Jalgaon', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(1919, 'Jalgaon', 'Ratnagiri', 'Maharashtra', '', '', '', '', ''),
(1920, 'Jalgaon (Jamod)', 'Buldana', 'Maharashtra', '', '', '', '', ''),
(1921, 'Jalladiampet', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(1922, 'Jallaram Kamanpur', 'Karimnagar', 'Andhra Pradesh', '', '', '', '', ''),
(1923, 'Jalna', 'Jalna', 'Maharashtra', '', '', '', '', ''),
(1924, 'Jalor', 'Jalor', 'Rajasthan', '', '', '', '', ''),
(1925, 'Jalpaiguri', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(1926, 'Jam Jodhpur', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(1927, 'Jamadoba', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(1928, 'Jamai', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(1929, 'Jamalpur', 'Munger', 'Bihar', '', '', '', '', ''),
(1930, 'Jambai', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(1931, 'Jambusar', 'Bharuch', 'Gujarat', '', '', '', '', ''),
(1932, 'Jamhaur', 'Aurangabad', 'Bihar', '', '', '', '', ''),
(1933, 'Jamkhandi', 'Bagalkot', 'Karnataka', '', '', '', '', ''),
(1934, 'Jamkhed', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(1935, 'Jammalamadugu', 'Cuddapah', 'Andhra Pradesh', '', '', '', '', ''),
(1936, 'Jammu', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(1937, 'Jammu Cantonment', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(1938, 'Jamnagar', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(1939, 'Jamshedpur', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(1940, 'Jamshila', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(1941, 'Jamtara', 'Dumka', 'Jharkhand', '', '', '', '', ''),
(1942, 'Jamui', 'Jamui', 'Bihar', '', '', '', '', ''),
(1943, 'Jamul', 'Durg', 'Chhattisgarh', '', '', '', '', ''),
(1944, 'Jamuria', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1945, 'Janakpur Road', 'Sitamarhi', 'Bihar', '', '', '', '', ''),
(1946, 'Jandiala', 'Amritsar', 'Punjab', '', '', '', '', ''),
(1947, 'Jandiala', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(1948, 'Jangaon', 'Warangal', 'Andhra Pradesh', '', '', '', '', ''),
(1949, 'Jangipur', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(1950, 'Jangipur', 'Ghazipur', 'Uttar Pradesh', '', '', '', '', ''),
(1951, 'Jansath', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(1952, 'Jaora', 'Ratlam', 'Madhya Pradesh', '', '', '', '', ''),
(1953, 'Jaridih Bazar', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(1954, 'Jarjapupeta', 'Vizianagaram', 'Andhra Pradesh', '', '', '', '', ''),
(1955, 'Jarwal', 'Bahraich', 'Uttar Pradesh', '', '', '', '', ''),
(1956, 'Jasdan', 'Rajkot', 'Gujarat', '', '', '', '', ''),
(1957, 'Jashpur nagar', 'Jashpur', 'Chhattisgarh', '', '', '', '', ''),
(1958, 'Jasidih', 'Deoghar', 'Jharkhand', '', '', '', '', ''),
(1959, 'Jaspur', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(1960, 'Jasrana', 'Firozabad', 'Uttar Pradesh', '', '', '', '', ''),
(1961, 'Jaswantnagar', 'Etawah', 'Uttar Pradesh', '', '', '', '', ''),
(1962, 'Jata Chhapar', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(1963, 'Jatani', 'Khordha', 'Orissa', '', '', '', '', ''),
(1964, 'Jatara', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(1965, 'Jatari', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(1966, 'Jaunpur', 'Jaunpur', 'Uttar Pradesh', '', '', '', '', ''),
(1967, 'Jawad', 'Neemuch', 'Madhya Pradesh', '', '', '', '', ''),
(1968, 'Jawaharnagar (Gujarat Refinery)', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(1969, 'Jawai', 'Jaintia Hills', 'Meghalaya', '', '', '', '', ''),
(1970, 'Jawalamukhi', 'Kangra', 'Himachal Pradesh', '', '', '', '', ''),
(1971, 'Jawar', 'Sehore', 'Madhya Pradesh', '', '', '', '', ''),
(1972, 'Jawhar', 'Thane', 'Maharashtra', '', '', '', '', ''),
(1973, 'Jayankondam', 'Ariyalur', 'Tamil Nadu', '', '', '', '', ''),
(1974, 'Jaygaon', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(1975, 'Jaynagar Mazilpur', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1976, 'Jaysingpur', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(1977, 'Jehanabad', 'Jehanabad ', 'Bihar', '', '', '', '', ''),
(1978, 'Jejuri', 'Pune', 'Maharashtra', '', '', '', '', ''),
(1979, 'Jemari', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1980, 'Jemari  (J.K. Nagar Township)', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(1981, 'Jena', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(1982, 'Jeron Khalsa', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(1983, 'Jetia', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(1984, 'Jetpur Navagadh', 'Rajkot', 'Gujarat', '', '', '', '', ''),
(1985, 'Jevargi', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(1986, 'Jewar', 'Gautam Buddha Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(1987, 'Jeypur', 'Koraput', 'Orissa', '', '', '', '', ''),
(1988, 'Jhabrera', 'Hardwar', 'Uttaranchal', '', '', '', '', ''),
(1989, 'Jhabua', 'Jhabua', 'Madhya Pradesh', '', '', '', '', ''),
(1990, 'Jhagrakhand', 'Koriya', 'Chhattisgarh', '', '', '', '', ''),
(1991, 'Jhajha', 'Jamui', 'Bihar', '', '', '', '', ''),
(1992, 'Jhajjar', 'Jhajjar', 'Haryana', '', '', '', '', ''),
(1993, 'Jhalawar', 'Jhalawar', 'Rajasthan', '', '', '', '', ''),
(1994, 'Jhalda', 'Puruliya', 'West Bengal', '', '', '', '', ''),
(1995, 'Jhalrapatan', 'Jhalawar', 'Rajasthan', '', '', '', '', ''),
(1996, 'Jhalu', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(1997, 'Jhanjharpur', 'Madhubani', 'Bihar', '', '', '', '', ''),
(1998, 'Jhansi', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(1999, 'Jhansi', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(2000, 'Jhansi Rly. Settlement', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(2001, 'Jhargram', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(2002, 'Jharia', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(2003, 'Jharia Khas', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(2004, 'Jharoda Majra Burari', 'North', 'Delhi *', '', '', '', '', ''),
(2005, 'Jharsuguda', 'Jharsuguda', 'Orissa', '', '', '', '', ''),
(2006, 'Jhinjhak', 'Kanpur Dehat', 'Uttar Pradesh', '', '', '', '', ''),
(2007, 'Jhinjhana', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(2008, 'Jhinkpani', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(2009, 'Jhorhat', 'Haora ', 'West Bengal', '', '', '', '', ''),
(2010, 'Jhumpura', 'Kendujhar', 'Orissa', '', '', '', '', ''),
(2011, 'Jhumri Tilaiya', 'Kodarma', 'Jharkhand', '', '', '', '', ''),
(2012, 'Jhundpura', 'Morena', 'Madhya Pradesh', '', '', '', '', ''),
(2013, 'Jhunjhunun', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(2014, 'Jhusi', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(2015, 'Jhusi Kohna', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(2016, 'Jiaganj Azimganj', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(2017, 'Jind', 'Jind', 'Haryana', '', '', '', '', ''),
(2018, 'Jintur', 'Parbhani', 'Maharashtra', '', '', '', '', ''),
(2019, 'Jiran', 'Neemuch', 'Madhya Pradesh', '', '', '', '', ''),
(2020, 'Jirapur', 'Rajgarh', 'Madhya Pradesh', '', '', '', '', ''),
(2021, 'Jiribam', 'Imphal East', 'Manipur', '', '', '', '', ''),
(2022, 'Jiwan Pur alias Johri Pur', 'North East', 'Delhi *', '', '', '', '', ''),
(2023, 'Jiyanpur', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(2024, 'Jobat', 'Jhabua', 'Madhya Pradesh', '', '', '', '', ''),
(2025, 'Jobner', 'Jaipur', 'Rajasthan', '', '', '', '', ''),
(2026, 'Joda', 'Kendujhar', 'Orissa', '', '', '', '', ''),
(2027, 'Jodhpur', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(2028, 'Jodhpur', 'Jodhpur', 'Rajasthan', '', '', '', '', ''),
(2029, 'Jog Falls', 'Shimoga', 'Karnataka', '', '', '', '', ''),
(2030, 'Jogbani', 'Araria', 'Bihar', '', '', '', '', ''),
(2031, 'Jogendranagar', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(2032, 'Jogindarnagar', 'Mandi', 'Himachal Pradesh', '', '', '', '', ''),
(2033, 'Jolarpet', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(2034, 'Jona Pur', 'South', 'Delhi *', '', '', '', '', ''),
(2035, 'Jonai Bazar', 'Dhemaji', 'Assam', '', '', '', '', ''),
(2036, 'Jorapokhar', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(2037, 'Jorethang', 'South', 'Sikkim', '', '', '', '', ''),
(2038, 'Jorhat', 'Jorhat', 'Assam', '', '', '', '', ''),
(2039, 'Joshimath', 'Chamoli', 'Uttaranchal', '', '', '', '', ''),
(2040, 'Joshipura', 'Junagadh', 'Gujarat', '', '', '', '', ''),
(2041, 'Jot Kamal', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(2042, 'Joura', 'Morena', 'Madhya Pradesh', '', '', '', '', ''),
(2043, 'Jourian', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(2044, 'Joya', 'Jyotiba Phule Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(2045, 'Jubbal', 'Shimla', 'Himachal Pradesh', '', '', '', '', ''),
(2046, 'Jugial', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(2047, 'Jugsalai', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(2048, 'Julana', 'Jind', 'Haryana', '', '', '', '', ''),
(2049, 'Junagadh', 'Junagadh', 'Gujarat', '', '', '', '', ''),
(2050, 'Junagarh', 'Kalahandi', 'Orissa', '', '', '', '', ''),
(2051, 'Junnar', 'Pune', 'Maharashtra', '', '', '', '', ''),
(2052, 'Jutogh', 'Shimla', 'Himachal Pradesh', '', '', '', '', ''),
(2053, 'Jyoti Khuria', 'Mainpuri', 'Uttar Pradesh', '', '', '', '', ''),
(2054, 'Kabnur', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(2055, 'Kabrai', 'Mahoba', 'Uttar Pradesh', '', '', '', '', ''),
(2056, 'Kachhauna Patseni', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(2057, 'Kachhla', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(2058, 'Kachhwa', 'Mirzapur', 'Uttar Pradesh', '', '', '', '', ''),
(2059, 'Kachnal Gosain', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(2060, 'Kachu Pukur', 'Maldah ', 'West Bengal', '', '', '', '', ''),
(2061, 'Kadachira', 'Kannur', 'Kerala', '', '', '', '', ''),
(2062, 'Kadamakkudy', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(2063, 'Kadambur', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(2064, 'Kadathur', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(2065, 'Kadaura', 'Jalaun ', 'Uttar Pradesh', '', '', '', '', ''),
(2066, 'Kadayal', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2067, 'Kadayampatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(2068, 'Kadayanallur', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(2069, 'Kadi', 'Mahesana', 'Gujarat', '', '', '', '', ''),
(2070, 'Kadipur', 'Sultanpur', 'Uttar Pradesh', '', '', '', '', ''),
(2071, 'Kadiri', 'Anantapur', 'Andhra Pradesh', '', '', '', '', ''),
(2072, 'Kadirur', 'Kannur', 'Kerala', '', '', '', '', ''),
(2073, 'Kadodara', 'Surat', 'Gujarat', '', '', '', '', ''),
(2074, 'Kadungalloor', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(2075, 'Kadur', 'Chikmagalur', 'Karnataka', '', '', '', '', ''),
(2076, 'Kagal', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(2077, 'Kaghaznagar', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(2078, 'Kailaras', 'Morena', 'Madhya Pradesh', '', '', '', '', ''),
(2079, 'Kailasahar', 'North Tripura ', 'Tripura', '', '', '', '', ''),
(2080, 'Kailashpur', 'Saharanpur', 'Uttar Pradesh', '', '', '', '', ''),
(2081, 'Kailudih', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(2082, 'Kaimganj', 'Farrukhabad', 'Uttar Pradesh', '', '', '', '', ''),
(2083, 'Kairana', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(2084, 'Kaithal', 'Kaithal', 'Haryana', '', '', '', '', ''),
(2085, 'Kaithoon', 'Kota', 'Rajasthan', '', '', '', '', ''),
(2086, 'Kajora', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(2087, 'Kakarhati', 'Panna', 'Madhya Pradesh', '', '', '', '', ''),
(2088, 'Kakching', 'Thoubal', 'Manipur', '', '', '', '', ''),
(2089, 'Kakching Khunou', 'Thoubal', 'Manipur', '', '', '', '', ''),
(2090, 'Kakdihi', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(2091, 'Kakgaina', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(2092, 'Kakinada', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(2093, 'Kakod', 'Gautam Buddha Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(2094, 'Kakori', 'Lucknow', 'Uttar Pradesh', '', '', '', '', ''),
(2095, 'Kakrala', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(2096, 'Kaladungi', 'Nainital', 'Uttaranchal', '', '', '', '', ''),
(2097, 'Kalakkad', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(2098, 'Kalamassery', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(2099, 'Kalamb', 'Osmanabad', 'Maharashtra', '', '', '', '', ''),
(2100, 'Kalambe Turf Thane', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(2101, 'Kalambur', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(2102, 'Kalameshwar', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(2103, 'Kalamnuri', 'Hingoli', 'Maharashtra', '', '', '', '', ''),
(2104, 'Kalan Wali', 'Sirsa', 'Haryana', '', '', '', '', ''),
(2105, 'Kalanaur', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(2106, 'Kalanaur', 'Rohtak', 'Haryana', '', '', '', '', ''),
(2107, 'Kalapatti', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2108, 'Kalappanaickenpatti', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(2109, 'Kalara', 'Haora ', 'West Bengal', '', '', '', '', ''),
(2110, 'Kalavad', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(2111, 'Kalavai', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(2112, 'Kalayat', 'Kaithal', 'Haryana', '', '', '', '', ''),
(2113, 'Kalghatgi', 'Dharwad', 'Karnataka', '', '', '', '', ''),
(2114, 'Kali', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(2115, 'Kali Chhapar', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(2116, 'Kaliaganj', 'Uttar Dinajpur', 'West Bengal', '', '', '', '', ''),
(2117, 'Kalikapur', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(2118, 'Kalimpong', 'Darjiling ', 'West Bengal', '', '', '', '', ''),
(2119, 'Kalinagar', 'Pilibhit', 'Uttar Pradesh', '', '', '', '', ''),
(2120, 'Kalinjur', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(2121, 'Kaliyakkavilai', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2122, 'Kalka', 'Panchkula', 'Haryana', '', '', '', '', ''),
(2123, 'Kalladaikurichi', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(2124, 'Kallakkurichi', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(2125, 'Kallakudi', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(2126, 'Kalliasseri', 'Kannur', 'Kerala', '', '', '', '', ''),
(2127, 'Kallukuttam', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2128, 'Kallur', 'Kurnool', 'Andhra Pradesh', '', '', '', '', ''),
(2129, 'Kalna', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(2130, 'Kalol', 'Gandhinagar', 'Gujarat', '', '', '', '', ''),
(2131, 'Kalol', 'Panch Mahals', 'Gujarat', '', '', '', '', ''),
(2132, 'Kalol INA', 'Gandhinagar', 'Gujarat', '', '', '', '', ''),
(2133, 'Kalol INA', 'Panch Mahals', 'Gujarat', '', '', '', '', ''),
(2134, 'Kalpetta', 'Wayanad', 'Kerala', '', '', '', '', ''),
(2135, 'Kalpi', 'Jalaun ', 'Uttar Pradesh', '', '', '', '', ''),
(2136, 'Kalugumalai', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(2137, 'Kalundre', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(2138, 'Kalyan-Dombivali', 'Thane', 'Maharashtra', '', '', '', '', ''),
(2139, 'Kalyandurg', 'Anantapur', 'Andhra Pradesh', '', '', '', '', ''),
(2140, 'Kalyani', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(2141, 'Kamakshyanagar', 'Dhenkanal', 'Orissa', '', '', '', '', ''),
(2142, 'Kamalapuram', 'Bellary', 'Karnataka', '', '', '', '', ''),
(2143, 'Kamalganj', 'Farrukhabad', 'Uttar Pradesh', '', '', '', '', ''),
(2144, 'Kamalpur', 'Dhalai', 'Tripura', '', '', '', '', ''),
(2145, 'Kaman', 'Bharatpur', 'Rajasthan', '', '', '', '', ''),
(2146, 'Kamareddy', 'Nizamabad', 'Andhra Pradesh', '', '', '', '', ''),
(2147, 'Kamarhati', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(2148, 'Kamayagoundanpatti', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(2149, 'Kambainallur', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(2150, 'Kambam', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(2151, 'Kampil', 'Farrukhabad', 'Uttar Pradesh', '', '', '', '', ''),
(2152, 'Kampli', 'Bellary', 'Karnataka', '', '', '', '', ''),
(2153, 'Kamptee', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(2154, 'Kamptee', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(2155, 'Kampur Town', 'Nagaon', 'Assam', '', '', '', '', ''),
(2156, 'Kamuthi', 'Ramanathapuram', 'Tamil Nadu', '', '', '', '', ''),
(2157, 'Kanad', 'Shajapur', 'Madhya Pradesh', '', '', '', '', ''),
(2158, 'Kanadukathan', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(2159, 'Kanaipur', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(2160, 'Kanakapura', 'Bangalore Rural', 'Karnataka', '', '', '', '', ''),
(2161, 'Kanakkampalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2162, 'Kanakpur Part-II', 'Cachar', 'Assam', '', '', '', '', ''),
(2163, 'Kanam', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(2164, 'Kanapaka', 'Vizianagaram', 'Andhra Pradesh', '', '', '', '', ''),
(2165, 'Kanchanpur', 'Dhalai', 'Tripura', '', '', '', '', ''),
(2166, 'Kancheepuram', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(2167, 'Kanchrapara', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(2168, 'Kandanur', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(2169, 'Kandari', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(2170, 'Kandhar', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(2171, 'Kandhla', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(2172, 'Kandi', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(2173, 'Kandla', 'Kachchh', 'Gujarat', '', '', '', '', ''),
(2174, 'Kandra', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(2175, 'Kandri', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(2176, 'Kandri', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(2177, 'Kandukur', 'Prakasam', 'Andhra Pradesh', '', '', '', '', ''),
(2178, 'Kandwa', 'Varanasi', 'Uttar Pradesh', '', '', '', '', ''),
(2179, 'Kangayampalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2180, 'Kangeyam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2181, 'Kangeyanallur', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(2182, 'Kangra', 'Kangra', 'Himachal Pradesh', '', '', '', '', ''),
(2183, 'Kangrali (BK)', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(2184, 'Kangrali (KH)', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(2185, 'Kanhan (Pipri)', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(2186, 'Kanhangad', 'Kasaragod', 'Kerala', '', '', '', '', ''),
(2187, 'Kanhirode', 'Kannur', 'Kerala', '', '', '', '', ''),
(2188, 'Kanina', 'Mahendragarh', 'Haryana', '', '', '', '', ''),
(2189, 'Kaniyur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2190, 'Kanjhawala', 'North West', 'Delhi *', '', '', '', '', ''),
(2191, 'Kanjikkuzhi', 'Alappuzha', 'Kerala', '', '', '', '', ''),
(2192, 'Kanjikoil', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2193, 'Kankavli', 'Sindhudurg', 'Maharashtra', '', '', '', '', ''),
(2194, 'Kanke', 'Ranchi', 'Jharkhand', '', '', '', '', ''),
(2195, 'Kanker', 'Kanker', 'Chhattisgarh', '', '', '', '', ''),
(2196, 'Kankuria', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(2197, 'Kannad', 'Aurangabad', 'Maharashtra', '', '', '', '', ''),
(2198, 'Kannadendal', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(2199, 'Kannadiparamba', 'Kannur', 'Kerala', '', '', '', '', ''),
(2200, 'Kannamangalam', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(2201, 'Kannampalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2202, 'Kannankurichi', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(2203, 'Kannapuram', 'Kannur', 'Kerala', '', '', '', '', ''),
(2204, 'Kannauj', 'Kannauj', 'Uttar Pradesh', '', '', '', '', ''),
(2205, 'Kannivadi', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2206, 'Kannivadi', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(2207, 'Kanniyakumari', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2208, 'Kannod', 'Dewas', 'Madhya Pradesh', '', '', '', '', ''),
(2209, 'Kannur', 'Kannur', 'Kerala', '', '', '', '', ''),
(2210, 'Kannur', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(2211, 'Kannur Cantonment', 'Kannur', 'Kerala', '', '', '', '', ''),
(2212, 'Kanodar', 'Banas Kantha', 'Gujarat', '', '', '', '', ''),
(2213, 'Kanor', 'Udaipur', 'Rajasthan', '', '', '', '', ''),
(2214, 'Kanpur', 'Kanpur Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(2215, 'Kanpur', 'Kanpur Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(2216, 'Kansepur', 'Yamunanagar', 'Haryana', '', '', '', '', ''),
(2217, 'Kantabamsuguda', 'Visakhapatnam', 'Andhra Pradesh', '', '', '', '', ''),
(2218, 'Kantabanji', 'Balangir', 'Orissa', '', '', '', '', ''),
(2219, 'Kantaphod', 'Dewas', 'Madhya Pradesh', '', '', '', '', ''),
(2220, 'Kanth', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(2221, 'Kanth', 'Shahjahanpur', 'Uttar Pradesh', '', '', '', '', ''),
(2222, 'Kanti', 'Muzaffarpur', 'Bihar', '', '', '', '', ''),
(2223, 'Kantilo', 'Nayagarh', 'Orissa', '', '', '', '', ''),
(2224, 'Kantlia', 'Haora ', 'West Bengal', '', '', '', '', ''),
(2225, 'Kanuru', 'Krishna', 'Andhra Pradesh', '', '', '', '', ''),
(2226, 'Kanyanagar', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(2227, 'Kapadvanj', 'Kheda', 'Gujarat', '', '', '', '', ''),
(2228, 'Kapas Hera', 'South West', 'Delhi *', '', '', '', '', ''),
(2229, 'Kapasan', 'Chittaurgarh', 'Rajasthan', '', '', '', '', ''),
(2230, 'Kappiyarai', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2231, 'Kapra', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(2232, 'Kaprain', 'Bundi', 'Rajasthan', '', '', '', '', ''),
(2233, 'Kaptanganj', 'Kushinagar', 'Uttar Pradesh', '', '', '', '', ''),
(2234, 'Kapurthala', 'Kapurthala', 'Punjab', '', '', '', '', ''),
(2235, 'Karachiya', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(2236, 'Karad', 'Satara', 'Maharashtra', '', '', '', '', ''),
(2237, 'Karaikal', 'Karaikal', 'Pondicherry *', '', '', '', '', ''),
(2238, 'Karaikkudi', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(2239, 'Karamadai', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2240, 'Karambakkam', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(2241, 'Karambakkudi', 'Pudukkottai', 'Tamil Nadu', '', '', '', '', ''),
(2242, 'Karamsad', 'Anand', 'Gujarat', '', '', '', '', ''),
(2243, 'Karanja', 'Washim', 'Maharashtra', '', '', '', '', ''),
(2244, 'Karanje Turf Satara', 'Satara', 'Maharashtra', '', '', '', '', ''),
(2245, 'Karanjia', 'Mayurbhanj', 'Orissa', '', '', '', '', ''),
(2246, 'Karanpur', 'Ganganagar', 'Rajasthan', '', '', '', '', ''),
(2247, 'Karari', 'Kaushambi', 'Uttar Pradesh', '', '', '', '', ''),
(2248, 'Karauli', 'Karauli', 'Rajasthan', '', '', '', '', ''),
(2249, 'Karawal Nagar', 'North East', 'Delhi *', '', '', '', '', ''),
(2250, 'Kardhan', 'Ambala', 'Haryana', '', '', '', '', ''),
(2251, 'Kareli', 'Narsimhapur', 'Madhya Pradesh', '', '', '', '', ''),
(2252, 'Karera', 'Shivpuri', 'Madhya Pradesh', '', '', '', '', ''),
(2253, 'Kargil', 'Kargil', 'Jammu & Kashmir', '', '', '', '', ''),
(2254, 'Karhal', 'Mainpuri', 'Uttar Pradesh', '', '', '', '', ''),
(2255, 'Kari', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(2256, 'Kariamangalam', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(2257, 'Kariapatti', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(2258, 'Karimganj', 'Karimganj', 'Assam', '', '', '', '', ''),
(2259, 'Karimnagar', 'Karimnagar', 'Andhra Pradesh', '', '', '', '', ''),
(2260, 'Karimpur', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(2261, 'Karivali', 'Thane', 'Maharashtra', '', '', '', '', ''),
(2262, 'Karjan', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(2263, 'Karjat', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(2264, 'Karkal', 'Udupi', 'Karnataka', '', '', '', '', ''),
(2265, 'Karmala', 'Solapur', 'Maharashtra', '', '', '', '', ''),
(2266, 'Karn Prayag', 'Chamoli', 'Uttaranchal', '', '', '', '', ''),
(2267, 'Karnal', 'Karnal', 'Haryana', '', '', '', '', ''),
(2268, 'Karnawad', 'Dewas', 'Madhya Pradesh', '', '', '', '', ''),
(2269, 'Karnawal', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(2270, 'Karoran', 'Rupnagar', 'Punjab', '', '', '', '', ''),
(2271, 'Karrapur', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(2272, 'Kartarpur', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(2273, 'Karugampattur', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(2274, 'Karumandi Chellipalayam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2275, 'Karumathampatti', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2276, 'Karungal', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2277, 'Karunguzhi', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(2278, 'Karuppur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(2279, 'Karur', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(2280, 'Karuvanthuruthy', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(2281, 'Karwar', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(2282, 'Kasara Budruk', 'Thane', 'Maharashtra', '', '', '', '', ''),
(2283, 'Kasaragod', 'Kasaragod', 'Kerala', '', '', '', '', ''),
(2284, 'Kasauli', 'Solan', 'Himachal Pradesh', '', '', '', '', ''),
(2285, 'Kasba', 'Uttar Dinajpur', 'West Bengal', '', '', '', '', ''),
(2286, 'Kasba', 'Purnia', 'Bihar', '', '', '', '', ''),
(2287, 'Kasganj', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(2288, 'Kashinagara', 'Gajapati', 'Orissa', '', '', '', '', ''),
(2289, 'Kashipur', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(2290, 'Kashirampur', 'Garhwal', 'Uttaranchal', '', '', '', '', ''),
(2291, 'Kasim Bazar', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(2292, 'Kasipalayam (E)', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2293, 'Kasipalayam (G)', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2294, 'Kasrawad', 'West Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(2295, 'Katai', 'Thane', 'Maharashtra', '', '', '', '', ''),
(2296, 'Kataiya', 'Gopalganj', 'Bihar', '', '', '', '', ''),
(2297, 'Katangi', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(2298, 'Katangi', 'Balaghat', 'Madhya Pradesh', '', '', '', '', ''),
(2299, 'Katariya', 'Ambedaker Nagar', 'Uttar Pradesh', '', '', '', '', '');
INSERT INTO `excelfile` (`id`, `first`, `second`, `third`, `title`, `keyword`, `description`, `url`, `content`) VALUES
(2300, 'Katghar Lalganj', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(2301, 'Katghora', 'Korba', 'Chhattisgarh', '', '', '', '', ''),
(2302, 'Kathera', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(2303, 'Kathua', 'Kathua', 'Jammu & Kashmir', '', '', '', '', ''),
(2304, 'Kathujuganapalli', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(2305, 'Katihar', 'Katihar', 'Bihar', '', '', '', '', ''),
(2306, 'Katkar', 'Thane', 'Maharashtra', '', '', '', '', ''),
(2307, 'Katol', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(2308, 'Katpadi', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(2309, 'Katpar', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(2310, 'Katra', 'Udhampur', 'Jammu & Kashmir', '', '', '', '', ''),
(2311, 'Katra', 'Shahjahanpur', 'Uttar Pradesh', '', '', '', '', ''),
(2312, 'Katra', 'Gonda', 'Uttar Pradesh', '', '', '', '', ''),
(2313, 'Katra Medniganj', 'Pratapgarh', 'Uttar Pradesh', '', '', '', '', ''),
(2314, 'Katras', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(2315, 'Kattivakkam', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(2316, 'Kattumannarkoil', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(2317, 'Kattuputhur', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(2318, 'Katwa', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(2319, 'Kaugachhi', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(2320, 'Kauriaganj', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(2321, 'Kavali', 'Nellore', 'Andhra Pradesh', '', '', '', '', ''),
(2322, 'Kavaratti', 'Lakshadweep', 'Lakshadweep *', '', '', '', '', ''),
(2323, 'Kaveripakkam', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(2324, 'Kaveripattinam', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(2325, 'Kavisuryanagar', 'Ganjam', 'Orissa', '', '', '', '', ''),
(2326, 'Kawardha', 'Kawardha', 'Chhattisgarh', '', '', '', '', ''),
(2327, 'Kayalpattinam', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(2328, 'Kayamkulam', 'Alappuzha', 'Kerala', '', '', '', '', ''),
(2329, 'Kayatharu', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(2330, 'Kedarnath', 'Rudraprayag', 'Uttaranchal', '', '', '', '', ''),
(2331, 'Kedla', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(2332, 'Keelakarai', 'Ramanathapuram', 'Tamil Nadu', '', '', '', '', ''),
(2333, 'Keeramangalam', 'Pudukkottai', 'Tamil Nadu', '', '', '', '', ''),
(2334, 'Keeranur', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(2335, 'Keeranur', 'Pudukkottai', 'Tamil Nadu', '', '', '', '', ''),
(2336, 'Keeripatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(2337, 'Keezhapavur', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(2338, 'Kegaon', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(2339, 'Kekri', 'Ajmer', 'Rajasthan', '', '', '', '', ''),
(2340, 'Kela Khera', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(2341, 'Kelamangalam', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(2342, 'Kelhauri(chachai)', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(2343, 'Kembainaickenpalayam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2344, 'Kemri', 'Rampur', 'Uttar Pradesh', '', '', '', '', ''),
(2345, 'Kenda', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(2346, 'Kendra Khottamdi', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(2347, 'Kendrapara', 'Kendrapara', 'Orissa', '', '', '', '', ''),
(2348, 'Kendua', 'Maldah ', 'West Bengal', '', '', '', '', ''),
(2349, 'Kenduadih', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(2350, 'Kendujhar', 'Kendujhar', 'Orissa', '', '', '', '', ''),
(2351, 'Kengeri', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(2352, 'Kerakat', 'Jaunpur', 'Uttar Pradesh', '', '', '', '', ''),
(2353, 'Kerur', 'Bagalkot', 'Karnataka', '', '', '', '', ''),
(2354, 'Kesabpur', 'Haora ', 'West Bengal', '', '', '', '', ''),
(2355, 'Keshod', 'Junagadh', 'Gujarat', '', '', '', '', ''),
(2356, 'Keshoraipatan', 'Bundi', 'Rajasthan', '', '', '', '', ''),
(2357, 'Kesinga', 'Kalahandi', 'Orissa', '', '', '', '', ''),
(2358, 'Kesrisinghpur', 'Ganganagar', 'Rajasthan', '', '', '', '', ''),
(2359, 'Kethi', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(2360, 'Kevadiya', 'Narmada', 'Gujarat', '', '', '', '', ''),
(2361, 'Khachrod', 'Ujjain', 'Madhya Pradesh', '', '', '', '', ''),
(2362, 'Khadda', 'Kushinagar', 'Uttar Pradesh', '', '', '', '', ''),
(2363, 'Khadkale', 'Pune', 'Maharashtra', '', '', '', '', ''),
(2364, 'Khaga', 'Fatehpur', 'Uttar Pradesh', '', '', '', '', ''),
(2365, 'Khagaria', 'Khagaria', 'Bihar', '', '', '', '', ''),
(2366, 'Khagaul', 'Patna', 'Bihar', '', '', '', '', ''),
(2367, 'Khagrabari', 'Koch Bihar ', 'West Bengal', '', '', '', '', ''),
(2368, 'Khailar', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(2369, 'Khair', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(2370, 'Khairabad', 'Sitapur', 'Uttar Pradesh', '', '', '', '', ''),
(2371, 'Khairabad', 'Mau', 'Uttar Pradesh', '', '', '', '', ''),
(2372, 'Khairagarh', 'Rajnandgaon', 'Chhattisgarh', '', '', '', '', ''),
(2373, 'Khairthal', 'Alwar', 'Rajasthan', '', '', '', '', ''),
(2374, 'Khajoori Khas', 'North East', 'Delhi *', '', '', '', '', ''),
(2375, 'Khajuraho', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(2376, 'Khalia', 'Haora ', 'West Bengal', '', '', '', '', ''),
(2377, 'Khaliapali', 'Bargarh', 'Orissa', '', '', '', '', ''),
(2378, 'Khalikote', 'Ganjam', 'Orissa', '', '', '', '', ''),
(2379, 'Khalilabad', 'Sant Kabir Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(2380, 'Khalor', 'Haora ', 'West Bengal', '', '', '', '', ''),
(2381, 'Khamanon', 'Fatehgarh Sahib', 'Punjab', '', '', '', '', ''),
(2382, 'Khamaria', 'Sant Ravidas Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(2383, 'Khambhalia', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(2384, 'Khambhat', 'Anand', 'Gujarat', '', '', '', '', ''),
(2385, 'Khamgaon', 'Buldana', 'Maharashtra', '', '', '', '', ''),
(2386, 'Khamhria', 'Durg', 'Chhattisgarh', '', '', '', '', ''),
(2387, 'Khammam', 'Khammam', 'Andhra Pradesh', '', '', '', '', ''),
(2388, 'Khan Sahib', 'Badgam', 'Jammu & Kashmir', '', '', '', '', ''),
(2389, 'Khanapur', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(2390, 'Khanauri', 'Sangrur', 'Punjab', '', '', '', '', ''),
(2391, 'Khand(Bansagar)', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(2392, 'Khandapada', 'Nayagarh', 'Orissa', '', '', '', '', ''),
(2393, 'Khandela', 'Sikar', 'Rajasthan', '', '', '', '', ''),
(2394, 'Khandra', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(2395, 'Khandwa', 'East Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(2396, 'Khaniyadhana', 'Shivpuri', 'Madhya Pradesh', '', '', '', '', ''),
(2397, 'Khanna', 'Ludhiana', 'Punjab', '', '', '', '', ''),
(2398, 'Khanpur', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(2399, 'Khantora', 'Haora ', 'West Bengal', '', '', '', '', ''),
(2400, 'Khapa', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(2401, 'Kharaghoda', 'Surendranagar', 'Gujarat', '', '', '', '', ''),
(2402, 'Kharagpur', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(2403, 'Kharagpur', 'Munger', 'Bihar', '', '', '', '', ''),
(2404, 'Kharagpur Rly. Settlement ', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(2405, 'Kharar', 'Rupnagar', 'Punjab', '', '', '', '', ''),
(2406, 'Kharar', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(2407, 'Khardaha', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(2408, 'Kharela', 'Mahoba', 'Uttar Pradesh', '', '', '', '', ''),
(2409, 'Khargapur', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(2410, 'Khargone', 'West Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(2411, 'Khargupur', 'Gonda', 'Uttar Pradesh', '', '', '', '', ''),
(2412, 'Khariar', 'Nuapada', 'Orissa', '', '', '', '', ''),
(2413, 'Khariar Road', 'Nuapada', 'Orissa', '', '', '', '', ''),
(2414, 'Kharijapikon', 'Goalpara', 'Assam', '', '', '', '', ''),
(2415, 'Kharimala Khagrabari', 'Koch Bihar ', 'West Bengal', '', '', '', '', ''),
(2416, 'Khariya', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(2417, 'Kharkhari', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(2418, 'Kharkhoda', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(2419, 'Kharkhoda', 'Sonipat', 'Haryana', '', '', '', '', ''),
(2420, 'Kharod', 'Janjgir-Champa', 'Chhattisgarh', '', '', '', '', ''),
(2421, 'Kharsarai', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(2422, 'Kharsawan', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(2423, 'Kharsia', 'Raigarh', 'Chhattisgarh', '', '', '', '', ''),
(2424, 'Kharupatia', 'Darrang', 'Assam', '', '', '', '', ''),
(2425, 'Khatauli', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(2426, 'Khatauli Rural', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(2427, 'Khategaon', 'Dewas', 'Madhya Pradesh', '', '', '', '', ''),
(2428, 'Khatiguda', 'Nabarangapur', 'Orissa', '', '', '', '', ''),
(2429, 'Khatima', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(2430, 'Khawhai', 'Champhai', 'Mizoram', '', '', '', '', ''),
(2431, 'Khawzawl', 'Champhai', 'Mizoram', '', '', '', '', ''),
(2432, 'Khed', 'Satara', 'Maharashtra', '', '', '', '', ''),
(2433, 'Khed', 'Ratnagiri', 'Maharashtra', '', '', '', '', ''),
(2434, 'Kheda', 'Kheda', 'Gujarat', '', '', '', '', ''),
(2435, 'Khedbrahma', 'Sabar Kantha', 'Gujarat', '', '', '', '', ''),
(2436, 'Khekada', 'Baghpat', 'Uttar Pradesh', '', '', '', '', ''),
(2437, 'Khelari', 'Ranchi', 'Jharkhand', '', '', '', '', ''),
(2438, 'Khem Karan', 'Amritsar', 'Punjab', '', '', '', '', ''),
(2439, 'Khera Khurd', 'North West', 'Delhi *', '', '', '', '', ''),
(2440, 'Kheragarh', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(2441, 'Kheralu', 'Mahesana', 'Gujarat', '', '', '', '', ''),
(2442, 'Kherdi', 'Ratnagiri', 'Maharashtra', '', '', '', '', ''),
(2443, 'Kheri', 'Kheri', 'Uttar Pradesh', '', '', '', '', ''),
(2444, 'Kherli', 'Alwar', 'Rajasthan', '', '', '', '', ''),
(2445, 'Kherliganj', 'Baran', 'Rajasthan', '', '', '', '', ''),
(2446, 'Kherwara Chhaoni', 'Udaipur', 'Rajasthan', '', '', '', '', ''),
(2447, 'Kheta Sarai', 'Jaunpur', 'Uttar Pradesh', '', '', '', '', ''),
(2448, 'Khetia', 'Barwani', 'Madhya Pradesh', '', '', '', '', ''),
(2449, 'Khetri', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(2450, 'Khilchipur', 'Rajgarh', 'Madhya Pradesh', '', '', '', '', ''),
(2451, 'Khirkiya', 'Harda', 'Madhya Pradesh', '', '', '', '', ''),
(2452, 'Khodarampur', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(2453, 'Khongapani', 'Koriya', 'Chhattisgarh', '', '', '', '', ''),
(2454, 'Khongman', 'Imphal East', 'Manipur', '', '', '', '', ''),
(2455, 'Khoni', 'Thane', 'Maharashtra', '', '', '', '', ''),
(2456, 'Khonsa', 'Tirap', 'Arunachal Pradesh', '', '', '', '', ''),
(2457, 'Khopoli', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(2458, 'Khordha', 'Khordha', 'Orissa', '', '', '', '', ''),
(2459, 'Khour', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(2460, 'Khowai', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(2461, 'Khrew', 'Pulwama', 'Jammu & Kashmir', '', '', '', '', ''),
(2462, 'Khudaganj', 'Shahjahanpur', 'Uttar Pradesh', '', '', '', '', ''),
(2463, 'Khujner', 'Rajgarh', 'Madhya Pradesh', '', '', '', '', ''),
(2464, 'Khuldabad', 'Aurangabad', 'Maharashtra', '', '', '', '', ''),
(2465, 'Khunti', 'Ranchi', 'Jharkhand', '', '', '', '', ''),
(2466, 'Khurai', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(2467, 'Khurja', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(2468, 'Khusrupur', 'Patna', 'Bihar', '', '', '', '', ''),
(2469, 'Khutar', 'Shahjahanpur', 'Uttar Pradesh', '', '', '', '', ''),
(2470, 'Kichha', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(2471, 'Kilampadi', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2472, 'Kilkulam', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2473, 'Kilkunda', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(2474, 'Killiyur', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2475, 'Killlai', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(2476, 'Kilpennathur', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(2477, 'Kilvelur', 'Nagapattinam', 'Tamil Nadu', '', '', '', '', ''),
(2478, 'Kinathukadavu', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2479, 'Kinwat', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(2480, 'Kirandul', 'Dantewada', 'Chhattisgarh', '', '', '', '', ''),
(2481, 'Kiranipura', 'Ajmer', 'Rajasthan', '', '', '', '', ''),
(2482, 'Kiraoli', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(2483, 'Kirari Suleman Nagar', 'North West', 'Delhi *', '', '', '', '', ''),
(2484, 'Kiratpur', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(2485, 'Kiriburu', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(2486, 'Kirkee', 'Pune', 'Maharashtra', '', '', '', '', ''),
(2487, 'Kirtinagar', 'Tehri Garhwal', 'Uttaranchal', '', '', '', '', ''),
(2488, 'Kishanganj', 'Kishanganj', 'Bihar', '', '', '', '', ''),
(2489, 'Kishangarh', 'Alwar', 'Rajasthan', '', '', '', '', ''),
(2490, 'Kishangarh', 'Ajmer', 'Rajasthan', '', '', '', '', ''),
(2491, 'Kishangarh Renwal', 'Jaipur', 'Rajasthan', '', '', '', '', ''),
(2492, 'Kishni', 'Mainpuri', 'Uttar Pradesh', '', '', '', '', ''),
(2493, 'Kishtwar', 'Doda', 'Jammu & Kashmir', '', '', '', '', ''),
(2494, 'Kishunpur', 'Fatehpur', 'Uttar Pradesh', '', '', '', '', ''),
(2495, 'Kithaur', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(2496, 'Koath', 'Rohtas', 'Bihar', '', '', '', '', ''),
(2497, 'Koch Bihar', 'Koch Bihar ', 'West Bengal', '', '', '', '', ''),
(2498, 'Kochi', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(2499, 'Kochinda', 'Sambalpur', 'Orissa', '', '', '', '', ''),
(2500, 'Kochpara', 'Kamrup', 'Assam', '', '', '', '', ''),
(2501, 'Kodaikanal', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(2502, 'Kodala', 'Ganjam', 'Orissa', '', '', '', '', ''),
(2503, 'Kodalia', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(2504, 'Kodarma', 'Kodarma', 'Jharkhand', '', '', '', '', ''),
(2505, 'Kodavasal', 'Thiruvarur', 'Tamil Nadu', '', '', '', '', ''),
(2506, 'Kodigenahalli', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(2507, 'Kodinar', 'Junagadh', 'Gujarat', '', '', '', '', ''),
(2508, 'Kodiyal', 'Haveri', 'Karnataka', '', '', '', '', ''),
(2509, 'Kodoli', 'Satara', 'Maharashtra', '', '', '', '', ''),
(2510, 'Kodumudi', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2511, 'Kodungallur', 'Thrissur', 'Kerala', '', '', '', '', ''),
(2512, 'Koeripur', 'Sultanpur', 'Uttar Pradesh', '', '', '', '', ''),
(2513, 'Kohima', 'Kohima', 'Nagaland', '', '', '', '', ''),
(2514, 'Koilwar', 'Bhojpur', 'Bihar', '', '', '', '', ''),
(2515, 'Kokkothamangalam', 'Alappuzha', 'Kerala', '', '', '', '', ''),
(2516, 'Kokrajhar', 'Kokrajhar', 'Assam', '', '', '', '', ''),
(2517, 'Kolachal', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2518, 'Kolaghat', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(2519, 'Kolappalur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2520, 'Kolar', 'Kolar', 'Karnataka', '', '', '', '', ''),
(2521, 'Kolaras', 'Shivpuri', 'Madhya Pradesh', '', '', '', '', ''),
(2522, 'Kolasib', 'Kolasib', 'Mizoram', '', '', '', '', ''),
(2523, 'Kolathupalayam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2524, 'Kolathur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(2525, 'Kolazhy', 'Thrissur', 'Kerala', '', '', '', '', ''),
(2526, 'Kolhapur', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(2527, 'Kolkata', 'Kolkata', 'West Bengal', '', '', '', '', ''),
(2528, 'Kollam', 'Kollam', 'Kerala', '', '', '', '', ''),
(2529, 'Kollankodu', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2530, 'Kollankoil', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2531, 'Kollegal', 'Chamarajanagar', 'Karnataka', '', '', '', '', ''),
(2532, 'Kolvi Mandi Rajendra pura', 'Jhalawar', 'Rajasthan', '', '', '', '', ''),
(2533, 'Komalapuram', 'Alappuzha', 'Kerala', '', '', '', '', ''),
(2534, 'Komaralingam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2535, 'Kombai', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(2536, 'Kon', 'Thane', 'Maharashtra', '', '', '', '', ''),
(2537, 'Konanakunte', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(2538, 'Konardihi', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(2539, 'Konark', 'Puri', 'Orissa', '', '', '', '', ''),
(2540, 'Konavattam', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(2541, 'Konch', 'Jalaun ', 'Uttar Pradesh', '', '', '', '', ''),
(2542, 'Kondagaon', 'Bastar', 'Chhattisgarh', '', '', '', '', ''),
(2543, 'Kondalampatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(2544, 'Kondli', 'East', 'Delhi *', '', '', '', '', ''),
(2545, 'Kondumal', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(2546, 'Konganapuram', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(2547, 'Konnagar', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(2548, 'Konnur', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(2549, 'Kooraikundu', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(2550, 'Koothappar', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(2551, 'Koothuparamba', 'Kannur', 'Kerala', '', '', '', '', ''),
(2552, 'Kopaganj', 'Mau', 'Uttar Pradesh', '', '', '', '', ''),
(2553, 'Kopargaon', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(2554, 'Kopharad', 'Thane', 'Maharashtra', '', '', '', '', ''),
(2555, 'Koppa', 'Chikmagalur', 'Karnataka', '', '', '', '', ''),
(2556, 'Koppal', 'Koppal', 'Karnataka', '', '', '', '', ''),
(2557, 'Kora Jahanabad', 'Fatehpur', 'Uttar Pradesh', '', '', '', '', ''),
(2558, 'Koradacheri', 'Thiruvarur', 'Tamil Nadu', '', '', '', '', ''),
(2559, 'Koraon', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(2560, 'Koraput', 'Koraput', 'Orissa', '', '', '', '', ''),
(2561, 'Koratagere', 'Tumkur', 'Karnataka', '', '', '', '', ''),
(2562, 'Koratla', 'Karimnagar', 'Andhra Pradesh', '', '', '', '', ''),
(2563, 'Koratty', 'Thrissur', 'Kerala', '', '', '', '', ''),
(2564, 'Korba', 'Korba', 'Chhattisgarh', '', '', '', '', ''),
(2565, 'Korochi', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(2566, 'Korwa', 'Sultanpur', 'Uttar Pradesh', '', '', '', '', ''),
(2567, 'Kosamba', 'Surat', 'Gujarat', '', '', '', '', ''),
(2568, 'Kosi Kalan', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(2569, 'Kot Fatta', 'Bathinda', 'Punjab', '', '', '', '', ''),
(2570, 'Kot Kapura', 'Faridkot', 'Punjab', '', '', '', '', ''),
(2571, 'Kota', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(2572, 'Kota', 'Kota', 'Rajasthan', '', '', '', '', ''),
(2573, 'Kota', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(2574, 'Kotagiri', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(2575, 'Kotar', 'Satna', 'Madhya Pradesh', '', '', '', '', ''),
(2576, 'Kotdwara', 'Garhwal', 'Uttaranchal', '', '', '', '', ''),
(2577, 'Kotekara', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(2578, 'Kothagudem', 'Khammam', 'Andhra Pradesh', '', '', '', '', ''),
(2579, 'Kothamangalam', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(2580, 'Kothavalasa', 'Vizianagaram', 'Andhra Pradesh', '', '', '', '', ''),
(2581, 'Kothi', 'Satna', 'Madhya Pradesh', '', '', '', '', ''),
(2582, 'Kothinallur', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2583, 'Kothnur', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(2584, 'Kotkhai', 'Shimla', 'Himachal Pradesh', '', '', '', '', ''),
(2585, 'Kotma', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(2586, 'Kotpad', 'Koraput', 'Orissa', '', '', '', '', ''),
(2587, 'Kotputli', 'Jaipur', 'Rajasthan', '', '', '', '', ''),
(2588, 'Kotra', 'Jalaun ', 'Uttar Pradesh', '', '', '', '', ''),
(2589, 'Kottaiyur', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(2590, 'Kottakuppam', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(2591, 'Kottaram', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2592, 'Kottayam', 'Kottayam', 'Kerala', '', '', '', '', ''),
(2593, 'Kottayam-Malabar', 'Kannur', 'Kerala', '', '', '', '', ''),
(2594, 'Kottivakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(2595, 'Kottur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2596, 'Kotturu', 'Bellary', 'Karnataka', '', '', '', '', ''),
(2597, 'Kottuvally', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(2598, 'Kotwa', 'Varanasi', 'Uttar Pradesh', '', '', '', '', ''),
(2599, 'Kouthanallur', 'Thiruvarur', 'Tamil Nadu', '', '', '', '', ''),
(2600, 'Kovilpatti', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(2601, 'Kovurpalle', 'Nellore', 'Andhra Pradesh', '', '', '', '', ''),
(2602, 'Kovvur', 'West Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(2603, 'Kozhikode', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(2604, 'Krishnagiri', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(2605, 'Krishnanagar', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(2606, 'Krishnapur', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(2607, 'Krishnarajanagar', 'Mysore', 'Karnataka', '', '', '', '', ''),
(2608, 'Krishnarajapura', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(2609, 'Krishnarajasagara', 'Mandya', 'Karnataka', '', '', '', '', ''),
(2610, 'Krishnarajpet', 'Mandya', 'Karnataka', '', '', '', '', ''),
(2611, 'Krishnarayapuram', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(2612, 'Krishnasamudram', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(2613, 'Kshidirpur', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(2614, 'Kshirpai', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(2615, 'Kuchaman City', 'Nagaur', 'Rajasthan', '', '', '', '', ''),
(2616, 'Kuchanur', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(2617, 'Kuchera', 'Nagaur', 'Rajasthan', '', '', '', '', ''),
(2618, 'Kud', 'Udhampur', 'Jammu & Kashmir', '', '', '', '', ''),
(2619, 'Kudal', 'Sindhudurg', 'Maharashtra', '', '', '', '', ''),
(2620, 'Kudchi', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(2621, 'Kudligi', 'Bellary', 'Karnataka', '', '', '', '', ''),
(2622, 'Kudlu', 'Kasaragod', 'Kerala', '', '', '', '', ''),
(2623, 'Kudremukh', 'Chikmagalur', 'Karnataka', '', '', '', '', ''),
(2624, 'Kuhalur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2625, 'Kuju', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(2626, 'Kukatpalle', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(2627, 'Kukernag', 'Anantnag', 'Jammu & Kashmir', '', '', '', '', ''),
(2628, 'Kukshi', 'Dhar', 'Madhya Pradesh', '', '', '', '', ''),
(2629, 'Kul Pahar', 'Mahoba', 'Uttar Pradesh', '', '', '', '', ''),
(2630, 'Kulasekarapuram', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2631, 'Kulgam', 'Anantnag', 'Jammu & Kashmir', '', '', '', '', ''),
(2632, 'Kulihanda', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(2633, 'Kulithalai', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(2634, 'Kullu', 'Kullu', 'Himachal Pradesh', '', '', '', '', ''),
(2635, 'Kulti', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(2636, 'Kumar Kaibarta Gaon', 'Jorhat', 'Assam', '', '', '', '', ''),
(2637, 'Kumarapalayam', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(2638, 'Kumarapuram', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2639, 'Kumarghat', 'North Tripura ', 'Tripura', '', '', '', '', ''),
(2640, 'Kumbakonam', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(2641, 'Kumbhkot', 'Kota', 'Rajasthan', '', '', '', '', ''),
(2642, 'Kumbhraj', 'Guna', 'Madhya Pradesh', '', '', '', '', ''),
(2643, 'Kumbi', 'Bishnupur', 'Manipur', '', '', '', '', ''),
(2644, 'Kumhari', 'Durg', 'Chhattisgarh', '', '', '', '', ''),
(2645, 'Kumher', 'Bharatpur', 'Rajasthan', '', '', '', '', ''),
(2646, 'Kumta', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(2647, 'Kunda', 'Pratapgarh', 'Uttar Pradesh', '', '', '', '', ''),
(2648, 'Kundalwadi', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(2649, 'Kundapura', 'Udupi', 'Karnataka', '', '', '', '', ''),
(2650, 'Kundarki', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(2651, 'Kundgol', 'Dharwad', 'Karnataka', '', '', '', '', ''),
(2652, 'Kundrathur', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(2653, 'Kunigal', 'Tumkur', 'Karnataka', '', '', '', '', ''),
(2654, 'Kuniyamuthur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2655, 'Kunjaban', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(2656, 'Kunnamkulam', 'Thrissur', 'Kerala', '', '', '', '', ''),
(2657, 'Kunnathur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2658, 'Kunustara', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(2659, 'Kunwargaon', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(2660, 'Kunzer', 'Baramula', 'Jammu & Kashmir', '', '', '', '', ''),
(2661, 'Kuppam', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(2662, 'Kupwara', 'Kupwara', 'Jammu & Kashmir', '', '', '', '', ''),
(2663, 'Kurali', 'Rupnagar', 'Punjab', '', '', '', '', ''),
(2664, 'Kuraoli', 'Mainpuri', 'Uttar Pradesh', '', '', '', '', ''),
(2665, 'Kurara', 'Hamirpur', 'Uttar Pradesh', '', '', '', '', ''),
(2666, 'Kurduvadi', 'Solapur', 'Maharashtra', '', '', '', '', ''),
(2667, 'Kureekkad', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(2668, 'Kurgunta', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(2669, 'Kurichi', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2670, 'Kurinjipadi', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(2671, 'Kurnool', 'Kurnool', 'Andhra Pradesh', '', '', '', '', ''),
(2672, 'Kurpania', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(2673, 'Kursath', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(2674, 'Kursath', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(2675, 'Kurseong', 'Darjiling ', 'West Bengal', '', '', '', '', ''),
(2676, 'Kurthi Jafarpur', 'Mau', 'Uttar Pradesh', '', '', '', '', ''),
(2677, 'Kurud', 'Dhamtari', 'Chhattisgarh', '', '', '', '', ''),
(2678, 'Kurudampalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2679, 'Kurumbalur', 'Perambalur', 'Tamil Nadu', '', '', '', '', ''),
(2680, 'Kurumbapet', 'Pondicherry', 'Pondicherry *', '', '', '', '', ''),
(2681, 'Kurundvad', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(2682, 'Kurwai', 'Vidisha', 'Madhya Pradesh', '', '', '', '', ''),
(2683, 'Kusgaon Budruk', 'Pune', 'Maharashtra', '', '', '', '', ''),
(2684, 'Kushalgarh', 'Banswara', 'Rajasthan', '', '', '', '', ''),
(2685, 'Kushalnagar', 'Kodagu', 'Karnataka', '', '', '', '', ''),
(2686, 'Kushinagar', 'Kushinagar', 'Uttar Pradesh', '', '', '', '', ''),
(2687, 'Kushtagi', 'Koppal', 'Karnataka', '', '', '', '', ''),
(2688, 'Kusmara', 'Mainpuri', 'Uttar Pradesh', '', '', '', '', ''),
(2689, 'Kustai', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(2690, 'Kuthalam', 'Nagapattinam', 'Tamil Nadu', '', '', '', '', ''),
(2691, 'Kutiyana', 'Porbandar', 'Gujarat', '', '', '', '', ''),
(2692, 'Kuzhithurai', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2693, 'Kwakta', 'Bishnupur', 'Manipur', '', '', '', '', ''),
(2694, 'Kyathampalle', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(2695, 'Kymore', 'Katni', 'Madhya Pradesh', '', '', '', '', ''),
(2696, 'L.B. Nagar', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(2697, 'Labbaikudikadu', 'Perambalur', 'Tamil Nadu', '', '', '', '', ''),
(2698, 'Lachhmangarh', 'Sikar', 'Rajasthan', '', '', '', '', ''),
(2699, 'Ladnu', 'Nagaur', 'Rajasthan', '', '', '', '', ''),
(2700, 'Ladrawan', 'Jhajjar', 'Haryana', '', '', '', '', ''),
(2701, 'Ladwa', 'Kurukshetra', 'Haryana', '', '', '', '', ''),
(2702, 'Lahar', 'Bhind', 'Madhya Pradesh', '', '', '', '', ''),
(2703, 'Laharpur', 'Sitapur', 'Uttar Pradesh', '', '', '', '', ''),
(2704, 'Lakarka', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(2705, 'Lakhenpur', 'Kathua', 'Jammu & Kashmir', '', '', '', '', ''),
(2706, 'Lakheri', 'Bundi', 'Rajasthan', '', '', '', '', ''),
(2707, 'Lakhimpur', 'Kheri', 'Uttar Pradesh', '', '', '', '', ''),
(2708, 'Lakhipur', 'Goalpara', 'Assam', '', '', '', '', ''),
(2709, 'Lakhipur', 'Cachar', 'Assam', '', '', '', '', ''),
(2710, 'Lakhisarai', 'Lakhisarai', 'Bihar', '', '', '', '', ''),
(2711, 'Lakhna', 'Etawah', 'Uttar Pradesh', '', '', '', '', ''),
(2712, 'Lakhnadon', 'Seoni', 'Madhya Pradesh', '', '', '', '', ''),
(2713, 'Lakkampatti', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(2714, 'Laksar', 'Hardwar', 'Uttaranchal', '', '', '', '', ''),
(2715, 'Lakshmeshwar', 'Gadag', 'Karnataka', '', '', '', '', ''),
(2716, 'Lal Gopalganj Nindaura', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(2717, 'Lala', 'Hailakandi', 'Assam', '', '', '', '', ''),
(2718, 'Lalganj', 'Vaishali', 'Bihar', '', '', '', '', ''),
(2719, 'Lalganj', 'Rae Bareli', 'Uttar Pradesh', '', '', '', '', ''),
(2720, 'Lalgudi', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(2721, 'Lalitpur', 'Lalitpur', 'Uttar Pradesh', '', '', '', '', ''),
(2722, 'Lalkuan', 'Nainital', 'Uttaranchal', '', '', '', '', ''),
(2723, 'Lalpet', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(2724, 'Lalsot', 'Dausa', 'Rajasthan', '', '', '', '', ''),
(2725, 'Lamai', 'Imphal East', 'Manipur', '', '', '', '', ''),
(2726, 'Lambha', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(2727, 'Lamjaotongba', 'Imphal West', 'Manipur', '', '', '', '', ''),
(2728, 'Lamshang', 'Imphal West', 'Manipur', '', '', '', '', ''),
(2729, 'Landaura', 'Hardwar', 'Uttaranchal', '', '', '', '', ''),
(2730, 'Landour', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(2731, 'Lanja', 'Ratnagiri', 'Maharashtra', '', '', '', '', ''),
(2732, 'Lanka', 'Nagaon', 'Assam', '', '', '', '', ''),
(2733, 'Lansdowne', 'Garhwal', 'Uttaranchal', '', '', '', '', ''),
(2734, 'Lapanga', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(2735, 'Lar', 'Deoria', 'Uttar Pradesh', '', '', '', '', ''),
(2736, 'Lasalgaon', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(2737, 'Latehar', 'Palamu', 'Jharkhand', '', '', '', '', ''),
(2738, 'Lateri', 'Vidisha', 'Madhya Pradesh', '', '', '', '', ''),
(2739, 'Lathi', 'Amreli', 'Gujarat', '', '', '', '', ''),
(2740, 'Lattikata', 'Sundargarh', 'Orissa', '', '', '', '', ''),
(2741, 'Latur', 'Latur', 'Maharashtra', '', '', '', '', ''),
(2742, 'Laundi', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(2743, 'Lauthaha', 'Purba Champaran', 'Bihar', '', '', '', '', ''),
(2744, 'Lawar NP', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(2745, 'Ledwa Mahua', 'Sant Kabir Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(2746, 'Leh', 'Leh (Ladakh)', 'Jammu & Kashmir', '', '', '', '', ''),
(2747, 'Lehragaga', 'Sangrur', 'Punjab', '', '', '', '', ''),
(2748, 'Lengpui', 'Mamit', 'Mizoram', '', '', '', '', ''),
(2749, 'Libas Pur', 'North West', 'Delhi *', '', '', '', '', ''),
(2750, 'Lidhorakhas', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(2751, 'Lido Tikok', 'Tinsukia', 'Assam', '', '', '', '', ''),
(2752, 'Lido Town', 'Tinsukia', 'Assam', '', '', '', '', ''),
(2753, 'Lilong (Imphal West)', 'Imphal West', 'Manipur', '', '', '', '', ''),
(2754, 'Lilong (Thoubal)', 'Thoubal & Imphal West', 'Manipur', '', '', '', '', ''),
(2755, 'Limbdi', 'Surendranagar', 'Gujarat', '', '', '', '', ''),
(2756, 'Limla', 'Surat', 'Gujarat', '', '', '', '', ''),
(2757, 'Lingiyadih', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(2758, 'Lingsugur', 'Raichur', 'Karnataka', '', '', '', '', ''),
(2759, 'Llayangudi', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(2760, 'Lodhian Khas', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(2761, 'Lodhikheda', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(2762, 'Loha', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(2763, 'Lohaghat', 'Champawat', 'Uttaranchal', '', '', '', '', ''),
(2764, 'Loharda', 'Dewas', 'Madhya Pradesh', '', '', '', '', ''),
(2765, 'Lohardaga', 'Lohardaga', 'Jharkhand', '', '', '', '', ''),
(2766, 'Loharu', 'Bhiwani', 'Haryana', '', '', '', '', ''),
(2767, 'Lohta', 'Varanasi', 'Uttar Pradesh', '', '', '', '', ''),
(2768, 'Lonar', 'Buldana', 'Maharashtra', '', '', '', '', ''),
(2769, 'Lonavala', 'Pune', 'Maharashtra', '', '', '', '', ''),
(2770, 'Londa', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(2771, 'Longowal', 'Sangrur', 'Punjab', '', '', '', '', ''),
(2772, 'Loni', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(2773, 'Lormi', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(2774, 'Losal', 'Sikar', 'Rajasthan', '', '', '', '', ''),
(2775, 'Loyabad', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(2776, 'Lucknow', 'Lucknow', 'Uttar Pradesh', '', '', '', '', ''),
(2777, 'Lucknow', 'Lucknow', 'Uttar Pradesh', '', '', '', '', ''),
(2778, 'Ludhiana', 'Ludhiana', 'Punjab', '', '', '', '', ''),
(2779, 'Lumding', 'Nagaon', 'Assam', '', '', '', '', ''),
(2780, 'Lumding Rly Colony', 'Nagaon', 'Assam', '', '', '', '', ''),
(2781, 'Lunawada', 'Panch Mahals', 'Gujarat', '', '', '', '', ''),
(2782, 'Lunglei', 'Lunglei', 'Mizoram', '', '', '', '', ''),
(2783, 'Machalpur', 'Rajgarh', 'Madhya Pradesh', '', '', '', '', ''),
(2784, 'Macherla', 'Guntur', 'Andhra Pradesh', '', '', '', '', ''),
(2785, 'Machhiwara', 'Ludhiana', 'Punjab', '', '', '', '', ''),
(2786, 'Machhlishahr', 'Jaunpur', 'Uttar Pradesh', '', '', '', '', ''),
(2787, 'Machilipatnam', 'Krishna', 'Andhra Pradesh', '', '', '', '', ''),
(2788, 'Madambakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(2789, 'Madanapalle', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(2790, 'Madanpur', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(2791, 'Madanrting', 'East Khasi Hills', 'Meghalaya', '', '', '', '', ''),
(2792, 'Madaram', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(2793, 'Madathukulam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2794, 'Madavaram', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(2795, 'Maddur', 'Mandya', 'Karnataka', '', '', '', '', ''),
(2796, 'Madhavnagar', 'Sangli', 'Maharashtra', '', '', '', '', ''),
(2797, 'Madhepura', 'Madhepura', 'Bihar', '', '', '', '', ''),
(2798, 'Madhoganj', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(2799, 'Madhogarh', 'Jalaun ', 'Uttar Pradesh', '', '', '', '', ''),
(2800, 'Madhubani', 'Madhubani', 'Bihar', '', '', '', '', ''),
(2801, 'Madhugiri', 'Tumkur', 'Karnataka', '', '', '', '', ''),
(2802, 'Madhupur', 'Deoghar', 'Jharkhand', '', '', '', '', ''),
(2803, 'Madhusudanpur', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(2804, 'Madhyamgram', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(2805, 'Madikeri', 'Kodagu', 'Karnataka', '', '', '', '', ''),
(2806, 'Madippakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(2807, 'Madukkarai', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2808, 'Madukkur', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(2809, 'Madurai', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(2810, 'Maduranthakam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(2811, 'Maduravoyal', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(2812, 'Magadi', 'Bangalore Rural', 'Karnataka', '', '', '', '', ''),
(2813, 'Magam', 'Badgam', 'Jammu & Kashmir', '', '', '', '', ''),
(2814, 'Maghar', 'Sant Kabir Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(2815, 'Mahabaleshwar', 'Satara', 'Maharashtra', '', '', '', '', ''),
(2816, 'Mahaban', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(2817, 'Mahad', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(2818, 'Mahadevapura', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(2819, 'Mahadula', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(2820, 'Mahalingpur', 'Bagalkot', 'Karnataka', '', '', '', '', ''),
(2821, 'Maham', 'Rohtak', 'Haryana', '', '', '', '', ''),
(2822, 'Maharajganj', 'Siwan', 'Bihar', '', '', '', '', ''),
(2823, 'Maharajpur', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(2824, 'Mahasamund', 'Mahasamund', 'Chhattisgarh', '', '', '', '', ''),
(2825, 'Mahbubnagar', 'Mahbubnagar', 'Andhra Pradesh', '', '', '', '', ''),
(2826, 'Mahe', 'Mahe', 'Pondicherry *', '', '', '', '', ''),
(2827, 'Mahemdavad', 'Kheda', 'Gujarat', '', '', '', '', ''),
(2828, 'Mahendragarh', 'Mahendragarh', 'Haryana', '', '', '', '', ''),
(2829, 'Mahesana', 'Mahesana', 'Gujarat', '', '', '', '', ''),
(2830, 'Maheshtala', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(2831, 'Maheshwar', 'West Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(2832, 'Mahiari', 'Haora ', 'West Bengal', '', '', '', '', ''),
(2833, 'Mahidpur', 'Ujjain', 'Madhya Pradesh', '', '', '', '', ''),
(2834, 'Mahilpur', 'Hoshiarpur', 'Punjab', '', '', '', '', ''),
(2835, 'Mahira', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(2836, 'Mahmudabad', 'Sitapur', 'Uttar Pradesh', '', '', '', '', ''),
(2837, 'Mahnar Bazar', 'Vaishali', 'Bihar', '', '', '', '', ''),
(2838, 'Mahoba', 'Mahoba', 'Uttar Pradesh', '', '', '', '', ''),
(2839, 'Maholi', 'Sitapur', 'Uttar Pradesh', '', '', '', '', ''),
(2840, 'Mahona', 'Lucknow', 'Uttar Pradesh', '', '', '', '', ''),
(2841, 'Mahrajganj', 'Rae Bareli', 'Uttar Pradesh', '', '', '', '', ''),
(2842, 'Mahrajganj', 'Maharajganj', 'Uttar Pradesh', '', '', '', '', ''),
(2843, 'Mahrajganj', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(2844, 'Mahroni', 'Lalitpur', 'Uttar Pradesh', '', '', '', '', ''),
(2845, 'Mahu Kalan', 'Sawai Madhopur', 'Rajasthan', '', '', '', '', ''),
(2846, 'Mahua Dabra Haripura', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(2847, 'Mahua Kheraganj', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(2848, 'Mahudha', 'Kheda', 'Gujarat', '', '', '', '', ''),
(2849, 'Mahur', 'North Cachar Hills', 'Assam', '', '', '', '', ''),
(2850, 'Mahuva', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(2851, 'Mahuvar', 'Navsari', 'Gujarat', '', '', '', '', ''),
(2852, 'Mahwa', 'Dausa', 'Rajasthan', '', '', '', '', ''),
(2853, 'Maibong', 'North Cachar Hills', 'Assam', '', '', '', '', ''),
(2854, 'Maihar', 'Satna', 'Madhya Pradesh', '', '', '', '', ''),
(2855, 'Mailani', 'Kheri', 'Uttar Pradesh', '', '', '', '', ''),
(2856, 'Mainaguri', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(2857, 'Maindargi', 'Solapur', 'Maharashtra', '', '', '', '', ''),
(2858, 'Mainpuri', 'Mainpuri', 'Uttar Pradesh', '', '', '', '', ''),
(2859, 'Mairang', 'West Khasi Hills', 'Meghalaya', '', '', '', '', ''),
(2860, 'Mairwa', 'Siwan', 'Bihar', '', '', '', '', ''),
(2861, 'Maithon', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(2862, 'Majgaon', 'Sonitpur', 'Assam', '', '', '', '', ''),
(2863, 'Majhara Pipar Ehatmali', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(2864, 'Majhauli Raj', 'Deoria', 'Uttar Pradesh', '', '', '', '', ''),
(2865, 'Majholi', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(2866, 'Majitha', 'Amritsar', 'Punjab', '', '', '', '', ''),
(2867, 'Makarba', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(2868, 'Makardaha', 'Haora ', 'West Bengal', '', '', '', '', ''),
(2869, 'Makhdumpur', 'Jehanabad ', 'Bihar', '', '', '', '', ''),
(2870, 'Makhu', 'Firozpur', 'Punjab', '', '', '', '', ''),
(2871, 'Makrana', 'Nagaur', 'Rajasthan', '', '', '', '', ''),
(2872, 'Makronia', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(2873, 'Maksi', 'Shajapur', 'Madhya Pradesh', '', '', '', '', ''),
(2874, 'Maktampur', 'Bharuch', 'Gujarat', '', '', '', '', ''),
(2875, 'Makum', 'Tinsukia', 'Assam', '', '', '', '', ''),
(2876, 'Makundapur', 'Ganjam', 'Orissa', '', '', '', '', ''),
(2877, 'Mal', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(2878, 'Malaj Khand', 'Balaghat', 'Madhya Pradesh', '', '', '', '', ''),
(2879, 'Malappuram', 'Malappuram', 'Kerala', '', '', '', '', ''),
(2880, 'Malavalli', 'Mandya', 'Karnataka', '', '', '', '', ''),
(2881, 'Malegaon', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(2882, 'Malerkotla', 'Sangrur', 'Punjab', '', '', '', '', ''),
(2883, 'Malhargarh', 'Mandsaur', 'Madhya Pradesh', '', '', '', '', ''),
(2884, 'Malihabad', 'Lucknow', 'Uttar Pradesh', '', '', '', '', ''),
(2885, 'Malkajgiri', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(2886, 'Malkangiri', 'Malkangiri', 'Orissa', '', '', '', '', ''),
(2887, 'Malkapur', 'Buldana', 'Maharashtra', '', '', '', '', ''),
(2888, 'Malkapur', 'Akola', 'Maharashtra', '', '', '', '', ''),
(2889, 'Malkapur', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(2890, 'Malkera', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(2891, 'Mallamooppampatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(2892, 'Mallankinaru', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(2893, 'Mallar', 'Udupi', 'Karnataka', '', '', '', '', ''),
(2894, 'Mallasamudram', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(2895, 'Mallawan', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(2896, 'Mallur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(2897, 'Maloud', 'Ludhiana', 'Punjab', '', '', '', '', ''),
(2898, 'Malout', 'Muktsar', 'Punjab', '', '', '', '', ''),
(2899, 'Malpur', 'Sabar Kantha', 'Gujarat', '', '', '', '', ''),
(2900, 'Malpura', 'Tonk', 'Rajasthan', '', '', '', '', ''),
(2901, 'Malur', 'Kolar', 'Karnataka', '', '', '', '', ''),
(2902, 'Malwan', 'Sindhudurg', 'Maharashtra', '', '', '', '', ''),
(2903, 'Mamallapuram', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(2904, 'Mamit', 'Mamit', 'Mizoram', '', '', '', '', ''),
(2905, 'Mamsapuram', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(2906, 'Manachanallur', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(2907, 'Manadur', 'Sangli', 'Maharashtra', '', '', '', '', ''),
(2908, 'Manali', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(2909, 'Manali', 'Kullu', 'Himachal Pradesh', '', '', '', '', ''),
(2910, 'Manalmedu', 'Nagapattinam', 'Tamil Nadu', '', '', '', '', ''),
(2911, 'Manalurpet', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(2912, 'Manamadurai', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(2913, 'Manapakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(2914, 'Manapparai', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(2915, 'Manasa', 'Neemuch', 'Madhya Pradesh', '', '', '', '', ''),
(2916, 'Manavadar', 'Junagadh', 'Gujarat', '', '', '', '', ''),
(2917, 'Manavalakurichi', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2918, 'Manawar', 'Dhar', 'Madhya Pradesh', '', '', '', '', ''),
(2919, 'Manchar', 'Pune', 'Maharashtra', '', '', '', '', ''),
(2920, 'Mancherial', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(2921, 'Mandaikadu', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(2922, 'Mandalgarh', 'Bhilwara', 'Rajasthan', '', '', '', '', ''),
(2923, 'Mandamarri', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(2924, 'Mandapam', 'Ramanathapuram', 'Tamil Nadu', '', '', '', '', ''),
(2925, 'Mandapeta', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(2926, 'Mandarbani', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(2927, 'Mandav', 'Dhar', 'Madhya Pradesh', '', '', '', '', ''),
(2928, 'Mandawa', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(2929, 'Mandawar', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(2930, 'Mandawar', 'Dausa', 'Rajasthan', '', '', '', '', ''),
(2931, 'Mandi', 'Mandi', 'Himachal Pradesh', '', '', '', '', ''),
(2932, 'Mandi Dabwali', 'Sirsa', 'Haryana', '', '', '', '', ''),
(2933, 'Mandideep', 'Raisen', 'Madhya Pradesh', '', '', '', '', ''),
(2934, 'Mandla', 'Mandla', 'Madhya Pradesh', '', '', '', '', ''),
(2935, 'Mandleshwar', 'West Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(2936, 'Mandsaur', 'Mandsaur', 'Madhya Pradesh', '', '', '', '', ''),
(2937, 'Mandvi', 'Kachchh', 'Gujarat', '', '', '', '', ''),
(2938, 'Mandya', 'Mandya', 'Karnataka', '', '', '', '', ''),
(2939, 'Manegaon', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(2940, 'Manendragarh', 'Koriya', 'Chhattisgarh', '', '', '', '', ''),
(2941, 'Maner', 'Patna', 'Bihar', '', '', '', '', ''),
(2942, 'Mangadu', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(2943, 'Mangalagiri', 'Guntur', 'Andhra Pradesh', '', '', '', '', ''),
(2944, 'Mangalam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(2945, 'Mangalampet', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(2946, 'Mangaldoi', 'Darrang', 'Assam', '', '', '', '', ''),
(2947, 'Mangalore', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(2948, 'Mangalvedhe', 'Solapur', 'Maharashtra', '', '', '', '', ''),
(2949, 'Mangan', 'North ', 'Sikkim', '', '', '', '', ''),
(2950, 'Mangawan', 'Rewa', 'Madhya Pradesh', '', '', '', '', ''),
(2951, 'Manglaur', 'Hardwar', 'Uttaranchal', '', '', '', '', ''),
(2952, 'Manglaya Sadak', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(2953, 'Mango', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(2954, 'Mangrol', 'Junagadh', 'Gujarat', '', '', '', '', ''),
(2955, 'Mangrol', 'Baran', 'Rajasthan', '', '', '', '', ''),
(2956, 'Mangrulpir', 'Washim', 'Maharashtra', '', '', '', '', ''),
(2957, 'Manihari', 'Katihar', 'Bihar', '', '', '', '', ''),
(2958, 'Manikpur', 'Haora ', 'West Bengal', '', '', '', '', ''),
(2959, 'Manikpur', 'Pratapgarh', 'Uttar Pradesh', '', '', '', '', ''),
(2960, 'Manikpur Sarhat', 'Chitrakoot', 'Uttar Pradesh', '', '', '', '', ''),
(2961, 'Manimutharu', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(2962, 'Maniyar', 'Ballia', 'Uttar Pradesh', '', '', '', '', ''),
(2963, 'Manjeri', 'Malappuram', 'Kerala', '', '', '', '', ''),
(2964, 'Manjeshwar', 'Kasaragod', 'Kerala', '', '', '', '', ''),
(2965, 'Manjhanpur', 'Kaushambi', 'Uttar Pradesh', '', '', '', '', ''),
(2966, 'Manjlegaon', 'Bid', 'Maharashtra', '', '', '', '', ''),
(2967, 'Mankachar', 'Dhubri', 'Assam', '', '', '', '', ''),
(2968, 'Mankapur', 'Gonda', 'Uttar Pradesh', '', '', '', '', ''),
(2969, 'Manmad', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(2970, 'Mannargudi', 'Thiruvarur', 'Tamil Nadu', '', '', '', '', ''),
(2971, 'Manohar Thana', 'Jhalawar', 'Rajasthan', '', '', '', '', ''),
(2972, 'Manor', 'Thane', 'Maharashtra', '', '', '', '', ''),
(2973, 'Manpur', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(2974, 'Mansa', 'Gandhinagar', 'Gujarat', '', '', '', '', ''),
(2975, 'Mansa', 'Mansa', 'Punjab', '', '', '', '', ''),
(2976, 'Mansar', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(2977, 'Mansinhapur', 'Haora ', 'West Bengal', '', '', '', '', ''),
(2978, 'Mant Khas', 'Kangra', 'Himachal Pradesh', '', '', '', '', ''),
(2979, 'Manugur', 'Khammam', 'Andhra Pradesh', '', '', '', '', ''),
(2980, 'Manvi', 'Raichur', 'Karnataka', '', '', '', '', ''),
(2981, 'Manwath', 'Parbhani', 'Maharashtra', '', '', '', '', ''),
(2982, 'Mappilaiurani', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(2983, 'Mapusa', 'North Goa ', 'Goa', '', '', '', '', ''),
(2984, 'Maradu', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(2985, 'Maraimalainagar', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(2986, 'Marakkanam', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(2987, 'Maramangalathupatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(2988, 'Marandahalli', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(2989, 'Marathakkara', 'Thrissur', 'Kerala', '', '', '', '', ''),
(2990, 'Marehra', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(2991, 'Margao', 'South Goa', 'Goa', '', '', '', '', ''),
(2992, 'Margherita', 'Tinsukia', 'Assam', '', '', '', '', ''),
(2993, 'Marhaura', 'Saran', 'Bihar', '', '', '', '', ''),
(2994, 'Mariahu', 'Jaunpur', 'Uttar Pradesh', '', '', '', '', ''),
(2995, 'Mariani', 'Jorhat', 'Assam', '', '', '', '', ''),
(2996, 'Marigaon', 'Marigaon', 'Assam', '', '', '', '', ''),
(2997, 'Markapur', 'Prakasam', 'Andhra Pradesh', '', '', '', '', ''),
(2998, 'Markayankottai', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(2999, 'Marma', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(3000, 'Maruadih Rly. Settlement', 'Varanasi', 'Uttar Pradesh', '', '', '', '', ''),
(3001, 'Marudur', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(3002, 'Marungur', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(3003, 'Marwar Junction', 'Pali', 'Rajasthan', '', '', '', '', ''),
(3004, 'Masaurhi', 'Patna', 'Bihar', '', '', '', '', ''),
(3005, 'Maslandapur', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3006, 'Maswasi', 'Rampur', 'Uttar Pradesh', '', '', '', '', ''),
(3007, 'Mataundh', 'Banda', 'Uttar Pradesh', '', '', '', '', ''),
(3008, 'Mathabhanga', 'Koch Bihar ', 'West Bengal', '', '', '', '', ''),
(3009, 'Matheran', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(3010, 'Mathigiri', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(3011, 'Mathura', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(3012, 'Mathura', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(3013, 'Mattan', 'Anantnag', 'Jammu & Kashmir', '', '', '', '', ''),
(3014, 'Mattannur', 'Kannur', 'Kerala', '', '', '', '', ''),
(3015, 'Mau', 'Bhind', 'Madhya Pradesh', '', '', '', '', ''),
(3016, 'Mau Aima', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(3017, 'Maudaha', 'Hamirpur', 'Uttar Pradesh', '', '', '', '', ''),
(3018, 'Mauganj', 'Rewa', 'Madhya Pradesh', '', '', '', '', ''),
(3019, 'Maunath Bhanjan', 'Mau', 'Uttar Pradesh', '', '', '', '', ''),
(3020, 'Maur', 'Bathinda', 'Punjab', '', '', '', '', ''),
(3021, 'Mauranipur', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(3022, 'Maurawan', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(3023, 'Mavelikkara', 'Alappuzha', 'Kerala', '', '', '', '', ''),
(3024, 'Mavilayi', 'Kannur', 'Kerala', '', '', '', '', ''),
(3025, 'Mavoor', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(3026, 'Mawana', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(3027, 'Mawlai', 'East Khasi Hills', 'Meghalaya', '', '', '', '', ''),
(3028, 'Mayang Imphal', 'Imphal West', 'Manipur', '', '', '', '', ''),
(3029, 'Mayiladuthurai', 'Nagapattinam', 'Tamil Nadu', '', '', '', '', ''),
(3030, 'Mecheri', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(3031, 'Medak', 'Medak', 'Andhra Pradesh', '', '', '', '', ''),
(3032, 'Medinipur', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(3033, 'Meenambakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3034, 'Meerpet', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(3035, 'Meerut', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(3036, 'Meerut', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(3037, 'Meghahatuburu Forest village', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(3038, 'Meghnagar', 'Jhabua', 'Madhya Pradesh', '', '', '', '', ''),
(3039, 'Meghraj', 'Sabar Kantha', 'Gujarat', '', '', '', '', ''),
(3040, 'Mehara Gaon', 'Hoshangabad', 'Madhya Pradesh', '', '', '', '', ''),
(3041, 'Mehatpur Basdehra', 'Una', 'Himachal Pradesh', '', '', '', '', ''),
(3042, 'Mehdawal', 'Sant Kabir Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(3043, 'Mehgaon', 'Bhind', 'Madhya Pradesh', '', '', '', '', ''),
(3044, 'Mehkar', 'Buldana', 'Maharashtra', '', '', '', '', ''),
(3045, 'Mehmand', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(3046, 'Mehnagar', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(3047, 'Mekliganj', 'Koch Bihar ', 'West Bengal', '', '', '', '', ''),
(3048, 'Melacheval', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(3049, 'Melachokkanathapuram', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(3050, 'Melagaram', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(3051, 'Melamadai', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(3052, 'Melamaiyur', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3053, 'Melathiruppanthuruthi', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(3054, 'Melattur', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(3055, 'Melpattampakkam', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(3056, 'Melur', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(3057, 'Melvisharam', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(3058, 'Memari', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(3059, 'Memnagar', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(3060, 'Mendu', 'Hathras', 'Uttar Pradesh', '', '', '', '', ''),
(3061, 'Mera', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(3062, 'Merta City', 'Nagaur', 'Rajasthan', '', '', '', '', ''),
(3063, 'Meru', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(3064, 'Methala', 'Thrissur', 'Kerala', '', '', '', '', '');
INSERT INTO `excelfile` (`id`, `first`, `second`, `third`, `title`, `keyword`, `description`, `url`, `content`) VALUES
(3065, 'Mettupalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3066, 'Mettupalayam', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(3067, 'Mettur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(3068, 'Mhasla', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(3069, 'Mhaswad', 'Satara', 'Maharashtra', '', '', '', '', ''),
(3070, 'Mhow Cantt.', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(3071, 'Mhowgaon', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(3072, 'Mihijam', 'Dumka', 'Jharkhand', '', '', '', '', ''),
(3073, 'Mihona', 'Bhind', 'Madhya Pradesh', '', '', '', '', ''),
(3074, 'Milak', 'Rampur', 'Uttar Pradesh', '', '', '', '', ''),
(3075, 'Minicoy', 'Lakshadweep', 'Lakshadweep *', '', '', '', '', ''),
(3076, 'Minjur', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(3077, 'Mira-Bhayandar', 'Thane', 'Maharashtra', '', '', '', '', ''),
(3078, 'Miranpur', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(3079, 'Mirganj', 'Gopalganj', 'Bihar', '', '', '', '', ''),
(3080, 'Mirganj', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(3081, 'Mirik', 'Darjiling ', 'West Bengal', '', '', '', '', ''),
(3082, 'Mirpur Turk', 'North East', 'Delhi *', '', '', '', '', ''),
(3083, 'Miryalguda', 'Nalgonda', 'Andhra Pradesh', '', '', '', '', ''),
(3084, 'Mirzapur-cum-Vindhyachal', 'Mirzapur', 'Uttar Pradesh', '', '', '', '', ''),
(3085, 'Misrikh-cum-Neemsar', 'Sitapur', 'Uttar Pradesh', '', '', '', '', ''),
(3086, 'Mithapur', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(3087, 'Mithe Pur', 'South', 'Delhi *', '', '', '', '', ''),
(3088, 'Modak', 'Kota', 'Rajasthan', '', '', '', '', ''),
(3089, 'Modakurichi', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3090, 'Modasa', 'Sabar Kantha', 'Gujarat', '', '', '', '', ''),
(3091, 'Modinagar', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(3092, 'Moga', 'Moga', 'Punjab', '', '', '', '', ''),
(3093, 'Mogra Badshahpur', 'Jaunpur', 'Uttar Pradesh', '', '', '', '', ''),
(3094, 'Mogravadi', 'Valsad', 'Gujarat', '', '', '', '', ''),
(3095, 'Mohammadabad', 'Farrukhabad', 'Uttar Pradesh', '', '', '', '', ''),
(3096, 'Mohammadabad', 'Ghazipur', 'Uttar Pradesh', '', '', '', '', ''),
(3097, 'Mohammadi', 'Kheri', 'Uttar Pradesh', '', '', '', '', ''),
(3098, 'Mohan', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(3099, 'Mohanpur', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(3100, 'Mohanpur Mohammadpur', 'Hardwar', 'Uttaranchal', '', '', '', '', ''),
(3101, 'Mohanur', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3102, 'Mohgaon', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(3103, 'Mohiuddinagar', 'Samastipur', 'Bihar', '', '', '', '', ''),
(3104, 'Mohiuddinpur', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(3105, 'Mohpa', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(3106, 'Mohpada Alias Wasambe', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(3107, 'Moirang', 'Bishnupur', 'Manipur', '', '', '', '', ''),
(3108, 'Mokameh', 'Patna', 'Bihar', '', '', '', '', ''),
(3109, 'Mokokchung', 'Mokokchung', 'Nagaland', '', '', '', '', ''),
(3110, 'Molakalmuru', 'Chitradurga', 'Karnataka', '', '', '', '', ''),
(3111, 'Molar Band', 'South', 'Delhi *', '', '', '', '', ''),
(3112, 'Mon', 'Mon', 'Nagaland', '', '', '', '', ''),
(3113, 'Monoharpur', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(3114, 'Moolakaraipatti', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(3115, 'Moonak', 'Sangrur', 'Punjab', '', '', '', '', ''),
(3116, 'Moovarasampettai', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3117, 'Mopperipalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3118, 'Moradabad', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(3119, 'Moragudi', 'Cuddapah', 'Andhra Pradesh', '', '', '', '', ''),
(3120, 'Moran Town', 'Dibrugarh', 'Assam', '', '', '', '', ''),
(3121, 'Moranhat', 'Sibsagar', 'Assam', '', '', '', '', ''),
(3122, 'Morar Cantt.', 'Gwalior', 'Madhya Pradesh', '', '', '', '', ''),
(3123, 'Moreh', 'Chandel', 'Manipur', '', '', '', '', ''),
(3124, 'Morena', 'Morena', 'Madhya Pradesh', '', '', '', '', ''),
(3125, 'Morinda', 'Rupnagar', 'Punjab', '', '', '', '', ''),
(3126, 'Mormugao', 'South Goa', 'Goa', '', '', '', '', ''),
(3127, 'Morshi', 'Amravati', 'Maharashtra', '', '', '', '', ''),
(3128, 'Morvi', 'Rajkot', 'Gujarat', '', '', '', '', ''),
(3129, 'Motera', 'Gandhinagar', 'Gujarat', '', '', '', '', ''),
(3130, 'Moth', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(3131, 'Motihari', 'Purba Champaran', 'Bihar', '', '', '', '', ''),
(3132, 'Motipur', 'Muzaffarpur', 'Bihar', '', '', '', '', ''),
(3133, 'Mount Abu', 'Sirohi', 'Rajasthan', '', '', '', '', ''),
(3134, 'Mowa', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(3135, 'Mowad', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(3136, 'Mrigala', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(3137, 'Mubarakpur', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(3138, 'Mudalgi', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(3139, 'Mudbidri', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(3140, 'Muddebihal', 'Bijapur', 'Karnataka', '', '', '', '', ''),
(3141, 'Mudgal', 'Raichur', 'Karnataka', '', '', '', '', ''),
(3142, 'Mudhol', 'Bagalkot', 'Karnataka', '', '', '', '', ''),
(3143, 'Mudigere', 'Chikmagalur', 'Karnataka', '', '', '', '', ''),
(3144, 'Mudkhed', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(3145, 'Mudukulathur', 'Ramanathapuram', 'Tamil Nadu', '', '', '', '', ''),
(3146, 'Mudushedde', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(3147, 'Mughalsarai', 'Chandauli', 'Uttar Pradesh', '', '', '', '', ''),
(3148, 'Mughalsarai Rly. Settlement', 'Chandauli', 'Uttar Pradesh', '', '', '', '', ''),
(3149, 'Mugma', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(3150, 'Muhamma', 'Alappuzha', 'Kerala', '', '', '', '', ''),
(3151, 'Muhammadabad', 'Mau', 'Uttar Pradesh', '', '', '', '', ''),
(3152, 'Mukandgarh', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(3153, 'Mukasipidariyur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3154, 'Mukerian', 'Hoshiarpur', 'Punjab', '', '', '', '', ''),
(3155, 'Mukhed', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(3156, 'Mukhiguda', 'Kalahandi', 'Orissa', '', '', '', '', ''),
(3157, 'Mukkudal', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(3158, 'Mukrampur Khema', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(3159, 'Muktsar', 'Muktsar', 'Punjab', '', '', '', '', ''),
(3160, 'Mul', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(3161, 'Mulagumudu', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(3162, 'Mulanur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3163, 'Mulavukad', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(3164, 'Mulbagal', 'Kolar', 'Karnataka', '', '', '', '', ''),
(3165, 'Mulgund', 'Gadag', 'Karnataka', '', '', '', '', ''),
(3166, 'Mulki', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(3167, 'Mullanpur Dakha', 'Ludhiana', 'Punjab', '', '', '', '', ''),
(3168, 'Mullanpur- Garibdas', 'Rupnagar', 'Punjab', '', '', '', '', ''),
(3169, 'Multai', 'Betul', 'Madhya Pradesh', '', '', '', '', ''),
(3170, 'Mulur', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(3171, 'Mundargi', 'Gadag', 'Karnataka', '', '', '', '', ''),
(3172, 'Mundera Bazar', 'Gorakhpur', 'Uttar Pradesh', '', '', '', '', ''),
(3173, 'Munderi', 'Kannur', 'Kerala', '', '', '', '', ''),
(3174, 'Mundgod', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(3175, 'Mundi', 'East Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(3176, 'Mundia', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(3177, 'Mundka', 'West', 'Delhi *', '', '', '', '', ''),
(3178, 'Mundra', 'Kachchh', 'Gujarat', '', '', '', '', ''),
(3179, 'Mundwa', 'Nagaur', 'Rajasthan', '', '', '', '', ''),
(3180, 'Mungaoli', 'Guna', 'Madhya Pradesh', '', '', '', '', ''),
(3181, 'Mungeli', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(3182, 'Munger', 'Munger', 'Bihar', '', '', '', '', ''),
(3183, 'Muni Ki Reti', 'Tehri Garhwal', 'Uttaranchal', '', '', '', '', ''),
(3184, 'Munirabad Project Area', 'Koppal', 'Karnataka', '', '', '', '', ''),
(3185, 'Munnur', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(3186, 'Muradnagar', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(3187, 'Muragachha', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3188, 'Murbad', 'Thane', 'Maharashtra', '', '', '', '', ''),
(3189, 'Murgathaul', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(3190, 'Murgud', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(3191, 'Muri', 'Ranchi', 'Jharkhand', '', '', '', '', ''),
(3192, 'Murliganj', 'Madhepura', 'Bihar', '', '', '', '', ''),
(3193, 'Mursan', 'Hathras', 'Uttar Pradesh', '', '', '', '', ''),
(3194, 'Murshidabad', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(3195, 'Murtijapur', 'Akola', 'Maharashtra', '', '', '', '', ''),
(3196, 'Murud', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(3197, 'Muruganpalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3198, 'Murum', 'Osmanabad', 'Maharashtra', '', '', '', '', ''),
(3199, 'Murwara (Katni)', 'Katni', 'Madhya Pradesh', '', '', '', '', ''),
(3200, 'Musabani', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(3201, 'Musafirkhana', 'Sultanpur', 'Uttar Pradesh', '', '', '', '', ''),
(3202, 'Musiri', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(3203, 'Mussoori', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(3204, 'Mustafabad', 'Yamunanagar', 'Haryana', '', '', '', '', ''),
(3205, 'Mustafabad', 'North East', 'Delhi *', '', '', '', '', ''),
(3206, 'Muthupet', 'Thiruvarur', 'Tamil Nadu', '', '', '', '', ''),
(3207, 'Muthur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3208, 'Muttayyapuram', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(3209, 'Muvattupuzha', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(3210, 'Muzaffarnagar', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(3211, 'Muzaffarpur', 'Muzaffarpur', 'Bihar', '', '', '', '', ''),
(3212, 'Muzhappilangad', 'Kannur', 'Kerala', '', '', '', '', ''),
(3213, 'Myladi', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(3214, 'Mysore', 'Mysore', 'Karnataka', '', '', '', '', ''),
(3215, 'N. Vanlaiphai', 'Serchhip', 'Mizoram', '', '', '', '', ''),
(3216, 'N.Kawnpui', 'Kolasib', 'Mizoram', '', '', '', '', ''),
(3217, 'Nabadwip', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(3218, 'Nabagram', 'Puruliya', 'West Bengal', '', '', '', '', ''),
(3219, 'Nabagram Colony', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(3220, 'Nabarangapur', 'Nabarangapur', 'Orissa', '', '', '', '', ''),
(3221, 'Nabgram', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(3222, 'Nabha', 'Patiala', 'Punjab', '', '', '', '', ''),
(3223, 'Nabinagar', 'Aurangabad', 'Bihar', '', '', '', '', ''),
(3224, 'Nachane', 'Ratnagiri', 'Maharashtra', '', '', '', '', ''),
(3225, 'Nachhratpur Katabari', 'Uttar Dinajpur', 'West Bengal', '', '', '', '', ''),
(3226, 'Nadathara', 'Thrissur', 'Kerala', '', '', '', '', ''),
(3227, 'Nadaun', 'Hamirpur', 'Himachal Pradesh', '', '', '', '', ''),
(3228, 'Nadbai', 'Bharatpur', 'Rajasthan', '', '', '', '', ''),
(3229, 'Nadiad', 'Kheda', 'Gujarat', '', '', '', '', ''),
(3230, 'Nadigaon', 'Jalaun ', 'Uttar Pradesh', '', '', '', '', ''),
(3231, 'Naduvattam', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(3232, 'Nagai Chaudhry', 'Mahendragarh', 'Haryana', '', '', '', '', ''),
(3233, 'Nagamangala', 'Mandya', 'Karnataka', '', '', '', '', ''),
(3234, 'Nagaon', 'Nagaon', 'Assam', '', '', '', '', ''),
(3235, 'Nagapattinam', 'Nagapattinam', 'Tamil Nadu', '', '', '', '', ''),
(3236, 'Nagapur', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(3237, 'Nagar', 'Bharatpur', 'Rajasthan', '', '', '', '', ''),
(3238, 'Nagardeole', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(3239, 'Nagari', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(3240, 'Nagarkurnool', 'Mahbubnagar', 'Andhra Pradesh', '', '', '', '', ''),
(3241, 'Nagaur', 'Nagaur', 'Rajasthan', '', '', '', '', ''),
(3242, 'Nagavakulam', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(3243, 'Nagda', 'Ujjain', 'Madhya Pradesh', '', '', '', '', ''),
(3244, 'Nagercoil', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(3245, 'Nagina', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(3246, 'Nagla', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(3247, 'Nagod', 'Satna', 'Madhya Pradesh', '', '', '', '', ''),
(3248, 'Nagojanahalli', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(3249, 'Nagothana', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(3250, 'Nagpur', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(3251, 'Nagram', 'Lucknow', 'Uttar Pradesh', '', '', '', '', ''),
(3252, 'Nagri', 'Mandsaur', 'Madhya Pradesh', '', '', '', '', ''),
(3253, 'Nagri Kalan', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(3254, 'Nagrota Bagwan', 'Kangra', 'Himachal Pradesh', '', '', '', '', ''),
(3255, 'Nahan', 'Sirmaur', 'Himachal Pradesh', '', '', '', '', ''),
(3256, 'Naharkatiya', 'Dibrugarh', 'Assam', '', '', '', '', ''),
(3257, 'Naharlagun', 'Papum Pare', 'Arunachal Pradesh', '', '', '', '', ''),
(3258, 'Nai Bazar', 'Sant Ravidas Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(3259, 'Nai Garhi', 'Rewa', 'Madhya Pradesh', '', '', '', '', ''),
(3260, 'Naihati', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3261, 'Naila Janjgir', 'Janjgir-Champa', 'Chhattisgarh', '', '', '', '', ''),
(3262, 'Naina Devi', 'Bilaspur', 'Himachal Pradesh', '', '', '', '', ''),
(3263, 'Nainana Jat', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(3264, 'Nainital', 'Nainital', 'Uttaranchal', '', '', '', '', ''),
(3265, 'Nainital', 'Nainital', 'Uttaranchal', '', '', '', '', ''),
(3266, 'Nainpur', 'Mandla', 'Madhya Pradesh', '', '', '', '', ''),
(3267, 'Nainwa', 'Bundi', 'Rajasthan', '', '', '', '', ''),
(3268, 'Najibabad', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(3269, 'Nakoda', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(3270, 'Nakodar', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(3271, 'Nakur', 'Saharanpur', 'Uttar Pradesh', '', '', '', '', ''),
(3272, 'Nala Sopara', 'Thane', 'Maharashtra', '', '', '', '', ''),
(3273, 'Nalagarh', 'Solan', 'Himachal Pradesh', '', '', '', '', ''),
(3274, 'Nalbari', 'Nalbari', 'Assam', '', '', '', '', ''),
(3275, 'NALCO', 'Anugul', 'Orissa', '', '', '', '', ''),
(3276, 'Naldurg', 'Osmanabad', 'Maharashtra', '', '', '', '', ''),
(3277, 'Nalgonda', 'Nalgonda', 'Andhra Pradesh', '', '', '', '', ''),
(3278, 'Nalkheda', 'Shajapur', 'Madhya Pradesh', '', '', '', '', ''),
(3279, 'Nallampatti', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3280, 'Nallur', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(3281, 'Namagiripettai', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3282, 'Namakkal', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3283, 'Nambiyur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3284, 'Nambol', 'Bishnupur & Imphal West', 'Manipur', '', '', '', '', ''),
(3285, 'Namchi', 'South', 'Sikkim', '', '', '', '', ''),
(3286, 'Namli', 'Ratlam', 'Madhya Pradesh', '', '', '', '', ''),
(3287, 'Namna Kalan', 'Surguja', 'Chhattisgarh', '', '', '', '', ''),
(3288, 'Namrup', 'Dibrugarh', 'Assam', '', '', '', '', ''),
(3289, 'Namsai', 'Lohit', 'Arunachal Pradesh', '', '', '', '', ''),
(3290, 'Nanakvada', 'Valsad', 'Gujarat', '', '', '', '', ''),
(3291, 'Nanauta', 'Saharanpur', 'Uttar Pradesh', '', '', '', '', ''),
(3292, 'Nand Prayag', 'Chamoli', 'Uttaranchal', '', '', '', '', ''),
(3293, 'Nandambakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3294, 'Nanded-Waghala', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(3295, 'Nandej', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(3296, 'Nandesari', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(3297, 'Nandesari INA', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(3298, 'Nandgaon', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(3299, 'Nandgaon', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(3300, 'Nandivaram-Guduvancheri', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3301, 'Nandura', 'Buldana', 'Maharashtra', '', '', '', '', ''),
(3302, 'Nandurbar', 'Nandurbar', 'Maharashtra', '', '', '', '', ''),
(3303, 'Nandyal', 'Kurnool', 'Andhra Pradesh', '', '', '', '', ''),
(3304, 'Nangal', 'Rupnagar', 'Punjab', '', '', '', '', ''),
(3305, 'Nangal Dewat', 'South West', 'Delhi *', '', '', '', '', ''),
(3306, 'Nangal Thakran', 'North West', 'Delhi *', '', '', '', '', ''),
(3307, 'Nangavalli', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(3308, 'Nangavaram', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(3309, 'Nangloi Jat', 'West', 'Delhi *', '', '', '', '', ''),
(3310, 'Nanguneri', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(3311, 'Nanjangud', 'Mysore', 'Karnataka', '', '', '', '', ''),
(3312, 'Nanjikottai', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(3313, 'Nannilam', 'Thiruvarur', 'Tamil Nadu', '', '', '', '', ''),
(3314, 'Nanpara', 'Bahraich', 'Uttar Pradesh', '', '', '', '', ''),
(3315, 'Naoriya Pakhanglakpa', 'Imphal West', 'Manipur', '', '', '', '', ''),
(3316, 'Naraingarh', 'Ambala', 'Haryana', '', '', '', '', ''),
(3317, 'Naraini', 'Banda', 'Uttar Pradesh', '', '', '', '', ''),
(3318, 'Naranammalpuram', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(3319, 'Naranapuram', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(3320, 'Narasaraopet', 'Guntur', 'Andhra Pradesh', '', '', '', '', ''),
(3321, 'Narasimhanaickenpalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3322, 'Narasimharajapura', 'Chikmagalur', 'Karnataka', '', '', '', '', ''),
(3323, 'Narasingapuram', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(3324, 'Narasingapuram', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(3325, 'Narath', 'Kannur', 'Kerala', '', '', '', '', ''),
(3326, 'Narauli', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(3327, 'Naraura', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(3328, 'Naravarikuppam', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(3329, 'Narayanavanam', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(3330, 'Narayangarh', 'Mandsaur', 'Madhya Pradesh', '', '', '', '', ''),
(3331, 'Narayanpet', 'Mahbubnagar', 'Andhra Pradesh', '', '', '', '', ''),
(3332, 'Naregal', 'Gadag', 'Karnataka', '', '', '', '', ''),
(3333, 'Narendra Nagar', 'Tehri Garhwal', 'Uttaranchal', '', '', '', '', ''),
(3334, 'Nargund', 'Gadag', 'Karnataka', '', '', '', '', ''),
(3335, 'Narkanda', 'Shimla', 'Himachal Pradesh', '', '', '', '', ''),
(3336, 'Narkatiaganj', 'Pashchim Champaran', 'Bihar', '', '', '', '', ''),
(3337, 'Narkhed', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(3338, 'Narnaul', 'Mahendragarh', 'Haryana', '', '', '', '', ''),
(3339, 'Narnaund', 'Hisar', 'Haryana', '', '', '', '', ''),
(3340, 'Narsapur', 'West Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(3341, 'Narsimhapur', 'Narsimhapur', 'Madhya Pradesh', '', '', '', '', ''),
(3342, 'Narsingarh', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(3343, 'Narsinghgarh', 'Rajgarh', 'Madhya Pradesh', '', '', '', '', ''),
(3344, 'Narsingi', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(3345, 'Narsipatnam', 'Visakhapatnam', 'Andhra Pradesh', '', '', '', '', ''),
(3346, 'Narwana', 'Jind', 'Haryana', '', '', '', '', ''),
(3347, 'Narwar', 'Shivpuri', 'Madhya Pradesh', '', '', '', '', ''),
(3348, 'Nashik', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(3349, 'Nasirabad', 'Ajmer', 'Rajasthan', '', '', '', '', ''),
(3350, 'Nasiyanur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3351, 'Naspur', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(3352, 'Nasra', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(3353, 'Nasrullaganj', 'Sehore', 'Madhya Pradesh', '', '', '', '', ''),
(3354, 'Natham', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(3355, 'Nathampannai', 'Pudukkottai', 'Tamil Nadu', '', '', '', '', ''),
(3356, 'Nathdwara', 'Rajsamand', 'Rajasthan', '', '', '', '', ''),
(3357, 'Natibpur', 'Haora ', 'West Bengal', '', '', '', '', ''),
(3358, 'Natrampalli', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(3359, 'Nattapettai', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3360, 'Nattarasankottai', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(3361, 'Naubaisa Gaon', 'Jorhat', 'Assam', '', '', '', '', ''),
(3362, 'Naudhia', 'Sidhi', 'Madhya Pradesh', '', '', '', '', ''),
(3363, 'Naugachhia', 'Bhagalpur', 'Bihar', '', '', '', '', ''),
(3364, 'Naugawan Sadat', 'Jyotiba Phule Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(3365, 'Naupala', 'Haora ', 'West Bengal', '', '', '', '', ''),
(3366, 'Nautanwa', 'Maharajganj', 'Uttar Pradesh', '', '', '', '', ''),
(3367, 'NavagamGhed', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(3368, 'Navalgund', 'Dharwad', 'Karnataka', '', '', '', '', ''),
(3369, 'Navalpattu', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(3370, 'Navelim', 'South Goa', 'Goa', '', '', '', '', ''),
(3371, 'Navghar-Manikpur', 'Thane', 'Maharashtra', '', '', '', '', ''),
(3372, 'Navi Mumbai', 'Thane', 'Maharashtra', '', '', '', '', ''),
(3373, '\"Navi Mumbai (Panvel', ' Raigarh)\"', 'Raigarh', '', '', '', '', ''),
(3374, 'Navsari', 'Navsari', 'Gujarat', '', '', '', '', ''),
(3375, 'Nawa', 'Nagaur', 'Rajasthan', '', '', '', '', ''),
(3376, 'Nawabganj', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(3377, 'Nawabganj', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(3378, 'Nawabganj', 'Barabanki', 'Uttar Pradesh', '', '', '', '', ''),
(3379, 'Nawabganj', 'Gonda', 'Uttar Pradesh', '', '', '', '', ''),
(3380, 'Nawada', 'Nawada', 'Bihar', '', '', '', '', ''),
(3381, 'Nawalgarh', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(3382, 'Nawanshahr', 'Nawanshahr', 'Punjab', '', '', '', '', ''),
(3383, 'Nawapur', 'Nandurbar', 'Maharashtra', '', '', '', '', ''),
(3384, 'Naya Baradwar', 'Janjgir-Champa', 'Chhattisgarh', '', '', '', '', ''),
(3385, 'Nayabazar', 'West', 'Sikkim', '', '', '', '', ''),
(3386, 'Nayagarh', 'Nayagarh', 'Orissa', '', '', '', '', ''),
(3387, 'Nazerath', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(3388, 'Nazira', 'Sibsagar', 'Assam', '', '', '', '', ''),
(3389, 'Nebadhai Duttapukur', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3390, 'Nedumangad', 'Thiruvananthapuram', 'Kerala', '', '', '', '', ''),
(3391, 'Needamangalam', 'Thiruvarur', 'Tamil Nadu', '', '', '', '', ''),
(3392, 'Neelagiri', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(3393, 'Neelankarai', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3394, 'Neem-Ka-Thana', 'Sikar', 'Rajasthan', '', '', '', '', ''),
(3395, 'Neemuch', 'Neemuch', 'Madhya Pradesh', '', '', '', '', ''),
(3396, 'Nehon', 'Rupnagar', 'Punjab', '', '', '', '', ''),
(3397, 'Nehtaur', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(3398, 'Neikkarapatti', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(3399, 'Neiyyur', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(3400, 'Nellikuppam', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(3401, 'Nellimaria', 'Vizianagaram', 'Andhra Pradesh', '', '', '', '', ''),
(3402, 'Nelliyalam', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(3403, 'Nellore', 'Nellore', 'Andhra Pradesh', '', '', '', '', ''),
(3404, 'Nelmangala', 'Bangalore Rural', 'Karnataka', '', '', '', '', ''),
(3405, 'Nemili', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(3406, 'Nenmenikkara', 'Thrissur', 'Kerala', '', '', '', '', ''),
(3407, 'Nepanagar', 'East Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(3408, 'Neral', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(3409, 'Neripperichal', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3410, 'Nerkunram', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(3411, 'Nerkuppai', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(3412, 'Nerunjipettai', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3413, 'Neuton Chikhli Kalan', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(3414, 'New Barrackpur', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3415, 'New Bongaigaon Rly. Colony', 'Bongaigaon', 'Assam', '', '', '', '', ''),
(3416, 'New Delhi Municipal Council', '\"New Delhi', ' Central', '', '', '', '', ''),
(3417, 'New Mahe', 'Kannur', 'Kerala', '', '', '', '', ''),
(3418, 'Newa Talai', 'Udaipur', 'Rajasthan', '', '', '', '', ''),
(3419, 'Neykkarappatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(3420, 'Neyveli', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(3421, 'Neyyattinkara', 'Thiruvananthapuram', 'Kerala', '', '', '', '', ''),
(3422, 'Nibra', 'Haora ', 'West Bengal', '', '', '', '', ''),
(3423, 'Nichlaul', 'Maharajganj', 'Uttar Pradesh', '', '', '', '', ''),
(3424, 'Nidadavole', 'West Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(3425, 'Nidhauli Kalan', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(3426, 'Nilagiri', 'Baleshwar', 'Orissa', '', '', '', '', ''),
(3427, 'Nilakkottai', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(3428, 'Nilanga', 'Latur', 'Maharashtra', '', '', '', '', ''),
(3429, 'Nildoh', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(3430, 'Nilokheri', 'Karnal', 'Haryana', '', '', '', '', ''),
(3431, 'Nimapada', 'Puri', 'Orissa', '', '', '', '', ''),
(3432, 'Nimbahera', 'Chittaurgarh', 'Rajasthan', '', '', '', '', ''),
(3433, 'Nimbhore Budruk', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(3434, 'Ningthoukhong', 'Bishnupur', 'Manipur', '', '', '', '', ''),
(3435, 'Nipani', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(3436, 'Nirmal', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(3437, 'Nirmali', 'Supaul', 'Bihar', '', '', '', '', ''),
(3438, 'Nirsa', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(3439, 'Niwai', 'Tonk', 'Rajasthan', '', '', '', '', ''),
(3440, 'Niwari', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(3441, 'Niwari', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(3442, 'Nizamabad', 'Nizamabad', 'Andhra Pradesh', '', '', '', '', ''),
(3443, 'Nizamabad', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(3444, 'Noamundi', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(3445, 'Nohar', 'Hanumangarh', 'Rajasthan', '', '', '', '', ''),
(3446, 'Noida', 'Gautam Buddha Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(3447, 'Nokha', 'Bikaner', 'Rajasthan', '', '', '', '', ''),
(3448, 'Nokha', 'Rohtas', 'Bihar', '', '', '', '', ''),
(3449, 'Nokpul', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3450, 'Nongmynsong', 'East Khasi Hills', 'Meghalaya', '', '', '', '', ''),
(3451, 'Nongpoh', 'Ri Bhoi', 'Meghalaya', '', '', '', '', ''),
(3452, 'Nongstoin', 'West Khasi Hills', 'Meghalaya', '', '', '', '', ''),
(3453, 'Nongthymmai', 'East Khasi Hills', 'Meghalaya', '', '', '', '', ''),
(3454, 'Noor Mahal', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(3455, 'Noorpur', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(3456, 'North Barrackpur', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3457, 'North Dumdum', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3458, 'North Guwahati', 'Kamrup', 'Assam', '', '', '', '', ''),
(3459, 'North Lakhimpur', 'Lakhimpur', 'Assam', '', '', '', '', ''),
(3460, 'Northern Rly. Colony', 'Kanpur Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(3461, 'Nowgaon', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(3462, 'Nowrozabad(Khodargama)', 'Umaria', 'Madhya Pradesh', '', '', '', '', ''),
(3463, 'Nowshehra', 'Rajauri', 'Jammu & Kashmir', '', '', '', '', ''),
(3464, 'Nuapatna', 'Cuttack', 'Orissa', '', '', '', '', ''),
(3465, 'Nuh', 'Gurgaon', 'Haryana', '', '', '', '', ''),
(3466, 'Numaligarh Refinery Township', 'Golaghat', 'Assam', '', '', '', '', ''),
(3467, 'Nurpur', 'Kangra', 'Himachal Pradesh', '', '', '', '', ''),
(3468, 'Nuzvid', 'Krishna', 'Andhra Pradesh', '', '', '', '', ''),
(3469, 'Nyoria Husainpur', 'Pilibhit', 'Uttar Pradesh', '', '', '', '', ''),
(3470, 'Nyotini', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(3471, 'O\' Valley', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(3472, 'O.F.Khamaria', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(3473, 'Obedullaganj', 'Raisen', 'Madhya Pradesh', '', '', '', '', ''),
(3474, 'Obra', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(3475, 'OCL Industrialship', 'Sundargarh', 'Orissa', '', '', '', '', ''),
(3476, 'Odaipatti', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(3477, 'Odaiyakulam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3478, 'Oddanchatram', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(3479, 'Ode', 'Anand', 'Gujarat', '', '', '', '', ''),
(3480, 'Odugathur', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(3481, 'Oel Dhakwa', 'Kheri', 'Uttar Pradesh', '', '', '', '', ''),
(3482, 'Oggiyamduraipakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3483, 'Oinam', 'Bishnupur', 'Manipur', '', '', '', '', ''),
(3484, 'Okha port', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(3485, 'Okni NO.II', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(3486, 'Olagadam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3487, 'Olavanna', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(3488, 'Old Maldah', 'Maldah ', 'West Bengal', '', '', '', '', ''),
(3489, 'Omalur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(3490, 'Omerkhan daira', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(3491, 'Omkareshwar', 'East Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(3492, 'Ondal', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(3493, 'Ongole', 'Prakasam', 'Andhra Pradesh', '', '', '', '', ''),
(3494, 'Orachha', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(3495, 'Orai', 'Jalaun ', 'Uttar Pradesh', '', '', '', '', ''),
(3496, 'Oran', 'Banda', 'Uttar Pradesh', '', '', '', '', ''),
(3497, 'Orathanadu (Mukthambalpuram)', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(3498, 'Ordinance Factory Itarsi', 'Hoshangabad', 'Madhya Pradesh', '', '', '', '', ''),
(3499, 'Ordnance Factory Muradnagar', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(3500, 'Orla', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(3501, 'Osmanabad', 'Osmanabad', 'Maharashtra', '', '', '', '', ''),
(3502, 'Osmania University', 'Hyderabad', 'Andhra Pradesh', '', '', '', '', ''),
(3503, 'Othakadai', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(3504, 'Othakalmandapam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3505, 'Ottappalam', 'Palakkad', 'Kerala', '', '', '', '', ''),
(3506, 'Ottapparai', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3507, 'Ozar', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(3508, 'Ozhukarai', 'Pondicherry', 'Pondicherry *', '', '', '', '', ''),
(3509, 'P. J. Cholapuram', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(3510, 'P.Mettupalayam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3511, 'P.N.Patti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(3512, 'Pachgaon', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(3513, 'Pachmarhi Cantt', 'Hoshangabad', 'Madhya Pradesh', '', '', '', '', ''),
(3514, 'Pachora', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(3515, 'Pachore', 'Rajgarh', 'Madhya Pradesh', '', '', '', '', ''),
(3516, 'Pachperwa', 'Balrampur', 'Uttar Pradesh', '', '', '', '', ''),
(3517, 'Pacode', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(3518, 'Padagha', 'Thane', 'Maharashtra', '', '', '', '', ''),
(3519, 'Padaiveedu', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3520, 'Padampur', 'Ganganagar', 'Rajasthan', '', '', '', '', ''),
(3521, 'Paddhari', 'Rajkot', 'Gujarat', '', '', '', '', ''),
(3522, 'Padianallur', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(3523, 'Padirikuppam', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(3524, 'Padmanabhapuram', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(3525, 'Padmapur', 'Bargarh', 'Orissa', '', '', '', '', ''),
(3526, 'Padra', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(3527, 'Padrauna', 'Kushinagar', 'Uttar Pradesh', '', '', '', '', ''),
(3528, 'Paduvilayi', 'Kannur', 'Kerala', '', '', '', '', ''),
(3529, 'Pahalgam', 'Anantnag', 'Jammu & Kashmir', '', '', '', '', ''),
(3530, 'Paharpur', 'Gaya', 'Bihar', '', '', '', '', ''),
(3531, 'Pahasu', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(3532, 'Paintepur', 'Sitapur', 'Uttar Pradesh', '', '', '', '', ''),
(3533, 'Pairagachha', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(3534, 'Paithan', 'Aurangabad', 'Maharashtra', '', '', '', '', ''),
(3535, 'Pakaur', 'Pakaur', 'Jharkhand', '', '', '', '', ''),
(3536, 'Pal Chourai', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(3537, 'Palacole', 'West Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(3538, 'Palaganangudy', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(3539, 'Palai', 'Kottayam', 'Kerala', '', '', '', '', ''),
(3540, 'Palakkad', 'Palakkad', 'Kerala', '', '', '', '', ''),
(3541, 'Palakkodu', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(3542, 'Palakurthi', 'Karimnagar', 'Andhra Pradesh', '', '', '', '', ''),
(3543, 'Palamedu', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(3544, 'Palampur', 'Kangra', 'Himachal Pradesh', '', '', '', '', ''),
(3545, 'Palani', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(3546, 'Palani Chettipatti', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(3547, 'Palanpur', 'Banas Kantha', 'Gujarat', '', '', '', '', ''),
(3548, 'Palasa @ Kasibugga', 'Srikakulam', 'Andhra Pradesh', '', '', '', '', ''),
(3549, 'Palasbari', 'Kamrup', 'Assam', '', '', '', '', ''),
(3550, 'Palashban', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(3551, 'Palavakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3552, 'Palavansathu', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(3553, 'Palawa', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(3554, 'Palayad', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(3555, 'Palayam', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(3556, 'Palda', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(3557, 'Pale', 'North Goa ', 'Goa', '', '', '', '', ''),
(3558, 'Palej', 'Bharuch', 'Gujarat', '', '', '', '', ''),
(3559, 'Palera', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(3560, 'Palghar', 'Thane', 'Maharashtra', '', '', '', '', ''),
(3561, 'Pali', 'Umaria', 'Madhya Pradesh', '', '', '', '', ''),
(3562, 'Pali', 'Pali', 'Rajasthan', '', '', '', '', ''),
(3563, 'Pali', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(3564, 'Pali', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(3565, 'Pali', 'Lalitpur', 'Uttar Pradesh', '', '', '', '', ''),
(3566, 'Palia Kalan', 'Kheri', 'Uttar Pradesh', '', '', '', '', ''),
(3567, 'Palissery', 'Thrissur', 'Kerala', '', '', '', '', ''),
(3568, 'Palitana', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(3569, 'Palladam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3570, 'Pallapalayam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3571, 'Pallapalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3572, 'Pallapatti', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(3573, 'Pallapatti', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(3574, 'Pallapatti', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(3575, 'Pallathur', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(3576, 'Pallavaram', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3577, 'Pallikaranai', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3578, 'Pallikkunnu', 'Kannur', 'Kerala', '', '', '', '', ''),
(3579, 'Pallikonda', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(3580, 'Pallipalayam', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3581, 'Pallipalayam Agraharam', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3582, 'Pallipattu', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(3583, 'Paluvai', 'Thrissur', 'Kerala', '', '', '', '', ''),
(3584, 'Palwal', 'Faridabad', 'Haryana', '', '', '', '', ''),
(3585, 'Palwancha', 'Khammam', 'Andhra Pradesh', '', '', '', '', ''),
(3586, 'Pammal', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3587, 'Pampore', 'Pulwama', 'Jammu & Kashmir', '', '', '', '', ''),
(3588, 'Pamur', 'Prakasam', 'Andhra Pradesh', '', '', '', '', ''),
(3589, 'Panagar', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(3590, 'Panagudi', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(3591, 'Panaimarathupatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(3592, 'Panaji', 'North Goa ', 'Goa', '', '', '', '', ''),
(3593, 'Panapakkam', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(3594, 'Panara', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(3595, 'Panboli', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(3596, 'Panchet', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(3597, 'Panchgani', 'Satara', 'Maharashtra', '', '', '', '', ''),
(3598, 'Panchkula Urban Estate', 'Panchkula', 'Haryana', '', '', '', '', ''),
(3599, 'Panchla', 'Haora ', 'West Bengal', '', '', '', '', ''),
(3600, 'Panchpara', 'Haora ', 'West Bengal', '', '', '', '', ''),
(3601, 'Pandamangalam', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3602, 'Pandariya', 'Kawardha', 'Chhattisgarh', '', '', '', '', ''),
(3603, 'Pandavapura', 'Mandya', 'Karnataka', '', '', '', '', ''),
(3604, 'Pandhana', 'East Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(3605, 'Pandharkaoda', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(3606, 'Pandharpur', 'Aurangabad', 'Maharashtra', '', '', '', '', ''),
(3607, 'Pandharpur', 'Solapur', 'Maharashtra', '', '', '', '', ''),
(3608, 'Pandhurna', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(3609, 'Pandua', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(3610, 'Pangachhiya (B)', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(3611, 'Panhala', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(3612, 'Paniara', 'Haora ', 'West Bengal', '', '', '', '', ''),
(3613, 'Panihati', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3614, 'Panipat', 'Panipat', 'Haryana', '', '', '', '', ''),
(3615, 'Panipat Taraf Ansar', 'Panipat', 'Haryana', '', '', '', '', ''),
(3616, 'Panipat Taraf Rajputan', 'Panipat', 'Haryana', '', '', '', '', ''),
(3617, 'Panipt Taraf Makhdum Zadgan', 'Panipat', 'Haryana', '', '', '', '', ''),
(3618, 'Panna', 'Panna', 'Madhya Pradesh', '', '', '', '', ''),
(3619, 'Pannaikadu', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(3620, 'Pannaipuram', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(3621, 'Panniyannur', 'Kannur', 'Kerala', '', '', '', '', ''),
(3622, 'Panoor', 'Kannur', 'Kerala', '', '', '', '', ''),
(3623, 'Panposh', 'Sundargarh', 'Orissa', '', '', '', '', ''),
(3624, 'Panruti', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(3625, 'Pansemal', 'Barwani', 'Madhya Pradesh', '', '', '', '', ''),
(3626, 'Pantheeramkavu', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(3627, 'Panuhat', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(3628, 'Panvel', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(3629, 'Paonta Sahib', 'Sirmaur', 'Himachal Pradesh', '', '', '', '', ''),
(3630, 'Papampeta', 'Anantapur', 'Andhra Pradesh', '', '', '', '', ''),
(3631, 'Papanasam', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(3632, 'Pappankurichi', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(3633, 'Papparapatti', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(3634, 'Papparapatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(3635, 'Pappinisseri', 'Kannur', 'Kerala', '', '', '', '', ''),
(3636, 'Pappireddipatti', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(3637, 'Par Beliya', 'Puruliya', 'West Bengal', '', '', '', '', ''),
(3638, 'Paradip', 'Jagatsinghapur', 'Orissa', '', '', '', '', ''),
(3639, 'Paramakudi', 'Ramanathapuram', 'Tamil Nadu', '', '', '', '', ''),
(3640, 'Paramathi', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3641, 'Paranda', 'Osmanabad', 'Maharashtra', '', '', '', '', ''),
(3642, 'Parangipettai', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(3643, 'Parashkol', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(3644, 'Parasi', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(3645, 'Parasia', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(3646, 'Paratdih', 'Giridih', 'Jharkhand', '', '', '', '', ''),
(3647, 'Paravai', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(3648, 'Paravoor', 'Kollam', 'Kerala', '', '', '', '', ''),
(3649, 'Paravur', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(3650, 'Parbatsar', 'Nagaur', 'Rajasthan', '', '', '', '', ''),
(3651, 'Parbbatipur', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(3652, 'Parbhani', 'Parbhani', 'Maharashtra', '', '', '', '', ''),
(3653, 'Parcem', 'North Goa ', 'Goa', '', '', '', '', ''),
(3654, 'Pardi', 'Valsad', 'Gujarat', '', '', '', '', ''),
(3655, 'Parichha', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(3656, 'Parikshitgarh', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(3657, 'Parlakhemundi', 'Gajapati', 'Orissa', '', '', '', '', ''),
(3658, 'Parli', 'Bid', 'Maharashtra', '', '', '', '', ''),
(3659, 'Parnera', 'Valsad', 'Gujarat', '', '', '', '', ''),
(3660, 'Parola', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(3661, 'Parole', 'Kathua', 'Jammu & Kashmir', '', '', '', '', ''),
(3662, 'Parsadepur', 'Rae Bareli', 'Uttar Pradesh', '', '', '', '', ''),
(3663, 'Partapur', 'Banswara', 'Rajasthan', '', '', '', '', ''),
(3664, 'Partur', 'Jalna', 'Maharashtra', '', '', '', '', ''),
(3665, 'Parvat', 'Surat', 'Gujarat', '', '', '', '', ''),
(3666, 'Parvathipuram', 'Vizianagaram', 'Andhra Pradesh', '', '', '', '', ''),
(3667, 'Parwanoo', 'Solan', 'Himachal Pradesh', '', '', '', '', ''),
(3668, 'Pasan', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(3669, 'Paschim  Jitpur', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(3670, 'Paschim Punropara', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(3671, 'Pasighat', 'East Siang', 'Arunachal Pradesh', '', '', '', '', ''),
(3672, 'Pasthal', 'Thane', 'Maharashtra', '', '', '', '', ''),
(3673, 'Pasur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3674, 'Patala', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(3675, 'Patan', 'Patan', 'Gujarat', '', '', '', '', ''),
(3676, 'Patan', 'Durg', 'Chhattisgarh', '', '', '', '', ''),
(3677, 'Patan', 'Satara', 'Maharashtra', '', '', '', '', ''),
(3678, 'Patan', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(3679, 'Patancheru', 'Medak', 'Andhra Pradesh', '', '', '', '', ''),
(3680, 'Pataudi', 'Gurgaon', 'Haryana', '', '', '', '', ''),
(3681, 'Pathalgaon', 'Jashpur', 'Chhattisgarh', '', '', '', '', ''),
(3682, 'Pathamadai', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(3683, 'Pathanamthitta', 'Pathanamthitta', 'Kerala', '', '', '', '', ''),
(3684, 'Pathankot', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(3685, 'Pathardi', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(3686, 'Pathardih', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(3687, 'Patharia', 'Damoh', 'Madhya Pradesh', '', '', '', '', ''),
(3688, 'Pathiriyad', 'Kannur', 'Kerala', '', '', '', '', ''),
(3689, 'Pathri', 'Parbhani', 'Maharashtra', '', '', '', '', ''),
(3690, 'Pathsala', 'Barpeta', 'Assam', '', '', '', '', ''),
(3691, 'Patiala', 'Patiala', 'Punjab', '', '', '', '', ''),
(3692, 'Patiyali', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(3693, 'Patna', 'Patna', 'Bihar', '', '', '', '', ''),
(3694, 'Patnagarh', 'Balangir', 'Orissa', '', '', '', '', ''),
(3695, 'Patratu', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(3696, 'Pattabong Tea Garden', 'Darjiling ', 'West Bengal', '', '', '', '', ''),
(3697, 'Pattamundai', 'Kendrapara', 'Orissa', '', '', '', '', ''),
(3698, 'Pattan', 'Baramula', 'Jammu & Kashmir', '', '', '', '', ''),
(3699, 'Pattanagere', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(3700, 'Patti', 'Amritsar', 'Punjab', '', '', '', '', ''),
(3701, 'Patti', 'Pratapgarh', 'Uttar Pradesh', '', '', '', '', ''),
(3702, 'Pattinam', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3703, 'Pattiom', 'Kannur', 'Kerala', '', '', '', '', ''),
(3704, 'Pattiveeranpatti', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(3705, 'Pattran', 'Patiala', 'Punjab', '', '', '', '', ''),
(3706, 'Pattukkottai', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(3707, 'Patuli', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(3708, 'Patulia', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3709, 'Patur', 'Akola', 'Maharashtra', '', '', '', '', ''),
(3710, 'Pauni', 'Bhandara', 'Maharashtra', '', '', '', '', ''),
(3711, 'Pauri', 'Garhwal', 'Uttaranchal', '', '', '', '', ''),
(3712, 'Pavagada', 'Tumkur', 'Karnataka', '', '', '', '', ''),
(3713, 'Pavaratty', 'Thrissur', 'Kerala', '', '', '', '', ''),
(3714, 'Pawai', 'Panna', 'Madhya Pradesh', '', '', '', '', ''),
(3715, 'Payal', 'Ludhiana', 'Punjab', '', '', '', '', ''),
(3716, 'Payyannur', 'Kannur', 'Kerala', '', '', '', '', ''),
(3717, 'Pazhugal', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(3718, 'Pedana', 'Krishna', 'Andhra Pradesh', '', '', '', '', ''),
(3719, 'Peddapuram', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(3720, 'Peerkankaranai', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3721, 'Pehlad Pur Bangar', 'North West', 'Delhi *', '', '', '', '', ''),
(3722, 'Pehowa', 'Kurukshetra', 'Haryana', '', '', '', '', ''),
(3723, 'Pen', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(3724, 'Pendra', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(3725, 'Penha-de-Franca', 'North Goa ', 'Goa', '', '', '', '', ''),
(3726, 'Pennadam', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(3727, 'Pennagaram', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(3728, 'Pennathur', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(3729, 'Peraiyur', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(3730, 'Perakam', 'Thrissur', 'Kerala', '', '', '', '', ''),
(3731, 'Peralam', 'Thiruvarur', 'Tamil Nadu', '', '', '', '', ''),
(3732, 'Peralasseri', 'Kannur', 'Kerala', '', '', '', '', ''),
(3733, 'Perambalur', 'Perambalur', 'Tamil Nadu', '', '', '', '', ''),
(3734, 'Peranamallur', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(3735, 'Peravurani', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(3736, 'Peringathur', 'Kannur', 'Kerala', '', '', '', '', ''),
(3737, 'Perinthalmanna', 'Malappuram', 'Kerala', '', '', '', '', ''),
(3738, 'Periya Negamam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3739, 'Periyakodiveri', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3740, 'Periyakulam', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(3741, 'Periyanaickenpalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3742, 'Periyapatti', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3743, 'Periyasemur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3744, 'Pernampattu', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(3745, 'Pernem', 'North Goa ', 'Goa', '', '', '', '', ''),
(3746, 'Perumagalur', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(3747, 'Perumandi', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(3748, 'Perumbaikad', 'Kottayam', 'Kerala', '', '', '', '', ''),
(3749, 'Perumbavoor', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(3750, 'Perumuchi', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(3751, 'Perundurai', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3752, 'Perungalathur', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3753, 'Perungudi', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3754, 'Perungulam', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(3755, 'Perur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3756, 'Peth Umri', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(3757, 'Pethampalayam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3758, 'Pethanaickenpalayam', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(3759, 'Petlad', 'Anand', 'Gujarat', '', '', '', '', ''),
(3760, 'Petlawad', 'Jhabua', 'Madhya Pradesh', '', '', '', '', ''),
(3761, 'Petro Chemical Complex INA', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(3762, 'Phagwara', 'Kapurthala', 'Punjab', '', '', '', '', ''),
(3763, 'Phalauda', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(3764, 'Phalna', 'Pali', 'Rajasthan', '', '', '', '', ''),
(3765, 'Phalodi', 'Jodhpur', 'Rajasthan', '', '', '', '', ''),
(3766, 'Phaltan', 'Satara', 'Maharashtra', '', '', '', '', ''),
(3767, 'Phaphund', 'Auraiya', 'Uttar Pradesh', '', '', '', '', ''),
(3768, 'Phek', 'Phek', 'Nagaland', '', '', '', '', ''),
(3769, 'Phillaur', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(3770, 'Phulabani', 'Kandhamal', 'Orissa', '', '', '', '', ''),
(3771, 'Phulera', 'Jaipur', 'Rajasthan', '', '', '', '', ''),
(3772, 'Phulia', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(3773, 'Phulpur', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(3774, 'Phulpur', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(3775, 'Phulwari Sharif', 'Patna', 'Bihar', '', '', '', '', ''),
(3776, 'Phulwaria', 'Varanasi', 'Uttar Pradesh', '', '', '', '', ''),
(3777, 'Phunderdihari', 'Surguja', 'Chhattisgarh', '', '', '', '', ''),
(3778, 'Phuphkalan', 'Bhind', 'Madhya Pradesh', '', '', '', '', ''),
(3779, 'Phusro', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(3780, 'Pichhore', 'Gwalior', 'Madhya Pradesh', '', '', '', '', ''),
(3781, 'Pichhore', 'Shivpuri', 'Madhya Pradesh', '', '', '', '', ''),
(3782, 'Pihani', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(3783, 'Pilani', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(3784, 'Pilibanga', 'Hanumangarh', 'Rajasthan', '', '', '', '', ''),
(3785, 'Pilibhit', 'Pilibhit', 'Uttar Pradesh', '', '', '', '', ''),
(3786, 'Pilkhana', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(3787, 'Pilkhuwa', 'Ghaziabad', 'Uttar Pradesh', '', '', '', '', ''),
(3788, 'Pillanallur', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3789, 'Pimpri Chinchwad', 'Pune', 'Maharashtra', '', '', '', '', ''),
(3790, 'Pinahat', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(3791, 'Pinarayi', 'Kannur', 'Kerala', '', '', '', '', ''),
(3792, 'Pindwara', 'Sirohi', 'Rajasthan', '', '', '', '', ''),
(3793, 'Pinjore', 'Panchkula', 'Haryana', '', '', '', '', ''),
(3794, 'Pipalsana Chaudhari', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(3795, 'Piparcity', 'Jodhpur', 'Rajasthan', '', '', '', '', ''),
(3796, 'Pipariya', 'Hoshangabad', 'Madhya Pradesh', '', '', '', '', ''),
(3797, 'Pipariya', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(3798, 'Pipiganj', 'Gorakhpur', 'Uttar Pradesh', '', '', '', '', ''),
(3799, 'Pipili', 'Puri', 'Orissa', '', '', '', '', ''),
(3800, 'Piploda', 'Ratlam', 'Madhya Pradesh', '', '', '', '', ''),
(3801, 'Piplya Mandi', 'Mandsaur', 'Madhya Pradesh', '', '', '', '', ''),
(3802, 'Pipraich', 'Gorakhpur', 'Uttar Pradesh', '', '', '', '', ''),
(3803, 'Pipri', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(3804, 'Pirawa', 'Jhalawar', 'Rajasthan', '', '', '', '', ''),
(3805, 'Piriyapatna', 'Mysore', 'Karnataka', '', '', '', '', ''),
(3806, 'Piro', 'Bhojpur', 'Bihar', '', '', '', '', ''),
(3807, 'Pitapuram', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(3808, 'Pithampur', 'Dhar', 'Madhya Pradesh', '', '', '', '', ''),
(3809, 'Pithora', 'Mahasamund', 'Chhattisgarh', '', '', '', '', ''),
(3810, 'Pithoragarh', 'Pithoragarh', 'Uttaranchal', '', '', '', '', ''),
(3811, 'Podara', 'Haora ', 'West Bengal', '', '', '', '', ''),
(3812, 'Pokaran', 'Jaisalmer', 'Rajasthan', '', '', '', '', ''),
(3813, 'Poladpur', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(3814, 'Polasara', 'Ganjam', 'Orissa', '', '', '', '', ''),
(3815, 'Polay Kalan', 'Shajapur', 'Madhya Pradesh', '', '', '', '', ''),
(3816, 'Polichalur', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3817, 'Pollachi', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3818, 'Polur', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(3819, 'Ponda', 'North Goa ', 'Goa', '', '', '', '', ''),
(3820, 'Pondar Kanali', 'Dhanbad', 'Jharkhand', '', '', '', '', '');
INSERT INTO `excelfile` (`id`, `first`, `second`, `third`, `title`, `keyword`, `description`, `url`, `content`) VALUES
(3821, 'Pondicherry', 'Pondicherry', 'Pondicherry *', '', '', '', '', ''),
(3822, 'Ponmani', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(3823, 'Ponnamaravathi', 'Pudukkottai', 'Tamil Nadu', '', '', '', '', ''),
(3824, 'Ponnampatti', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(3825, 'Ponnani', 'Malappuram', 'Kerala', '', '', '', '', ''),
(3826, 'Ponneri', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(3827, 'Ponnur', 'Guntur', 'Andhra Pradesh', '', '', '', '', ''),
(3828, 'Poolambadi', 'Perambalur', 'Tamil Nadu', '', '', '', '', ''),
(3829, 'Poolampatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(3830, 'Pooluvapatti', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(3831, 'Poonamallee', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(3832, 'Pooth Kalan', 'North West', 'Delhi *', '', '', '', '', ''),
(3833, 'Pooth Khurd', 'North West', 'Delhi *', '', '', '', '', ''),
(3834, 'Porbandar', 'Porbandar', 'Gujarat', '', '', '', '', ''),
(3835, 'Porompat', 'Imphal East', 'Manipur', '', '', '', '', ''),
(3836, 'Porsa', 'Morena', 'Madhya Pradesh', '', '', '', '', ''),
(3837, 'Port Blair', 'Andamans', 'Andaman & Nicobar Islands *', '', '', '', '', ''),
(3838, 'Porur', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(3839, 'Pothanur', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3840, 'Pothatturpettai', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(3841, 'Pottore', 'Thrissur', 'Kerala', '', '', '', '', ''),
(3842, 'Powayan', 'Shahjahanpur', 'Uttar Pradesh', '', '', '', '', ''),
(3843, 'Prantij', 'Sabar Kantha', 'Gujarat', '', '', '', '', ''),
(3844, 'Pratapgarh', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(3845, 'Pratapgarh', 'Chittaurgarh', 'Rajasthan', '', '', '', '', ''),
(3846, 'Pratapgarh City', 'Pratapgarh', 'Uttar Pradesh', '', '', '', '', ''),
(3847, 'Pratapsasan', 'Khordha', 'Orissa', '', '', '', '', ''),
(3848, 'Pratitnagar', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(3849, 'Prayagpur', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(3850, 'Prithvipur', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(3851, 'Proddatur', 'Cuddapah', 'Andhra Pradesh', '', '', '', '', ''),
(3852, 'Pudu', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(3853, 'Pudukadai', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(3854, 'Pudukkottai', 'Pudukkottai', 'Tamil Nadu', '', '', '', '', ''),
(3855, 'Pudukkottai', 'Pudukkottai', 'Tamil Nadu', '', '', '', '', ''),
(3856, 'Pudupalaiyam Aghraharam', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3857, 'Pudupalayam', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(3858, 'Pudupatti', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(3859, 'Pudupatti', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(3860, 'Pudupattinam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3861, 'Pudur (S)', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(3862, 'Puduvayal', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(3863, 'Pujali', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3864, 'Pukhrayan', 'Kanpur Dehat', 'Uttar Pradesh', '', '', '', '', ''),
(3865, 'Pul Pehlad', 'South', 'Delhi *', '', '', '', '', ''),
(3866, 'Pulgaon', 'Wardha', 'Maharashtra', '', '', '', '', ''),
(3867, 'Puliyankudi', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(3868, 'Puliyur', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(3869, 'Pullampadi', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(3870, 'Pulwama', 'Pulwama', 'Jammu & Kashmir', '', '', '', '', ''),
(3871, 'Punahana', 'Gurgaon', 'Haryana', '', '', '', '', ''),
(3872, 'Punalur', 'Kollam', 'Kerala', '', '', '', '', ''),
(3873, 'Punch', 'Punch', 'Jammu & Kashmir', '', '', '', '', ''),
(3874, 'Pundri', 'Kaithal', 'Haryana', '', '', '', '', ''),
(3875, 'Pune', 'Pune', 'Maharashtra', '', '', '', '', ''),
(3876, 'Pune', 'Pune', 'Maharashtra', '', '', '', '', ''),
(3877, 'Punganur', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(3878, 'Punjai Thottakurichi', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(3879, 'Punjaipugalur', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(3880, 'Punjaipuliampatti', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(3881, 'Puranattukara', 'Thrissur', 'Kerala', '', '', '', '', ''),
(3882, 'Puranpur', 'Pilibhit', 'Uttar Pradesh', '', '', '', '', ''),
(3883, 'Purba Tajpur', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(3884, 'Purdilnagar', 'Hathras', 'Uttar Pradesh', '', '', '', '', ''),
(3885, 'Puri', 'Puri', 'Orissa', '', '', '', '', ''),
(3886, 'Purna', 'Parbhani', 'Maharashtra', '', '', '', '', ''),
(3887, 'Purnia', 'Purnia', 'Bihar', '', '', '', '', ''),
(3888, 'Purquazi', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(3889, 'Puruliya', 'Puruliya', 'West Bengal', '', '', '', '', ''),
(3890, 'Purushottamnagar', 'Nandurbar', 'Maharashtra', '', '', '', '', ''),
(3891, 'Purusottampur', 'Ganjam', 'Orissa', '', '', '', '', ''),
(3892, 'Purwa', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(3893, 'Pusad', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(3894, 'Pushkar', 'Ajmer', 'Rajasthan', '', '', '', '', ''),
(3895, 'Puthalam', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(3896, 'Puthukkad', 'Thrissur', 'Kerala', '', '', '', '', ''),
(3897, 'Puthunagaram', 'Palakkad', 'Kerala', '', '', '', '', ''),
(3898, 'Puttur', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(3899, 'Puttur', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(3900, 'Puvalur', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(3901, 'Puzhal', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(3902, 'Puzhathi', 'Kannur', 'Kerala', '', '', '', '', ''),
(3903, 'Puzhithivakkam (Ullagaram)', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(3904, 'Pynthorumkhrah', 'East Khasi Hills', 'Meghalaya', '', '', '', '', ''),
(3905, 'Qadian', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(3906, 'Qasimpur Power House Colony', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(3907, 'Qazigund', 'Anantnag', 'Jammu & Kashmir', '', '', '', '', ''),
(3908, 'Quammruddin Nagar', 'West', 'Delhi *', '', '', '', '', ''),
(3909, 'Quepem', 'South Goa', 'Goa', '', '', '', '', ''),
(3910, 'Queula', 'North Goa ', 'Goa', '', '', '', '', ''),
(3911, 'Quilandy', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(3912, 'Quthbullapur', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(3913, 'R.Pudupatti', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(3914, 'R.S.Mangalam', 'Ramanathapuram', 'Tamil Nadu', '', '', '', '', ''),
(3915, 'Rabkavi Banhatti', 'Bagalkot', 'Karnataka', '', '', '', '', ''),
(3916, 'Rabupura', 'Gautam Buddha Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(3917, 'Radaur', 'Yamunanagar', 'Haryana', '', '', '', '', ''),
(3918, 'Radhakund', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(3919, 'Radhanpur', 'Patan', 'Gujarat', '', '', '', '', ''),
(3920, 'Rae Bareli', 'Rae Bareli', 'Uttar Pradesh', '', '', '', '', ''),
(3921, 'Rafiganj', 'Aurangabad', 'Bihar', '', '', '', '', ''),
(3922, 'Raghogarh -Vijaypur', 'Guna', 'Madhya Pradesh', '', '', '', '', ''),
(3923, 'Raghudebbati', 'Haora ', 'West Bengal', '', '', '', '', ''),
(3924, 'Raghunathchak', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(3925, 'Raghunathpur', 'Katihar', 'Bihar', '', '', '', '', ''),
(3926, 'Raghunathpur', 'Puruliya', 'West Bengal', '', '', '', '', ''),
(3927, 'Raghunathpur (PS-Dankuni)', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(3928, 'Raghunathpur (PS-Magra)', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(3929, 'Rahatgarh', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(3930, 'Rahimatpur', 'Satara', 'Maharashtra', '', '', '', '', ''),
(3931, 'Rahon', 'Nawanshahr', 'Punjab', '', '', '', '', ''),
(3932, 'Rahta Pimplas', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(3933, 'Rahuri', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(3934, 'Raichur', 'Raichur', 'Karnataka', '', '', '', '', ''),
(3935, 'Raigachhi', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3936, 'Raiganj', 'Uttar Dinajpur', 'West Bengal', '', '', '', '', ''),
(3937, 'Raigarh', 'Raigarh', 'Chhattisgarh', '', '', '', '', ''),
(3938, 'Raikot', 'Ludhiana', 'Punjab', '', '', '', '', ''),
(3939, 'Raipur', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(3940, 'Raipur', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(3941, 'Raipur Rani', 'Panchkula', 'Haryana', '', '', '', '', ''),
(3942, 'Rairangpur', 'Mayurbhanj', 'Orissa', '', '', '', '', ''),
(3943, 'Raisen', 'Raisen', 'Madhya Pradesh', '', '', '', '', ''),
(3944, 'Raisinghnagar', 'Ganganagar', 'Rajasthan', '', '', '', '', ''),
(3945, 'Raja Ka Rampur', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(3946, 'Rajagangapur', 'Sundargarh', 'Orissa', '', '', '', '', ''),
(3947, 'Rajahmundry', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(3948, 'Rajakhedi', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(3949, 'Rajakhera', 'Dhaulpur', 'Rajasthan', '', '', '', '', ''),
(3950, 'Rajaldesar', 'Churu', 'Rajasthan', '', '', '', '', ''),
(3951, 'Rajam', 'Srikakulam', 'Andhra Pradesh', '', '', '', '', ''),
(3952, 'Rajapalayam', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(3953, 'Rajapur', 'Ratnagiri', 'Maharashtra', '', '', '', '', ''),
(3954, 'Rajapur', 'Chitrakoot', 'Uttar Pradesh', '', '', '', '', ''),
(3955, 'Rajarhat Gopalpur', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3956, 'Rajasansi', 'Amritsar', 'Punjab', '', '', '', '', ''),
(3957, 'Rajauri', 'Rajauri', 'Jammu & Kashmir', '', '', '', '', ''),
(3958, 'Rajendranagar', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(3959, 'Rajgamar', 'Korba', 'Chhattisgarh', '', '', '', '', ''),
(3960, 'Rajgarh', 'Churu', 'Rajasthan', '', '', '', '', ''),
(3961, 'Rajgarh', 'Alwar', 'Rajasthan', '', '', '', '', ''),
(3962, 'Rajgarh', 'Sirmaur', 'Himachal Pradesh', '', '', '', '', ''),
(3963, 'Rajgarh', 'Dhar', 'Madhya Pradesh', '', '', '', '', ''),
(3964, 'Rajgarh', 'Rajgarh', 'Madhya Pradesh', '', '', '', '', ''),
(3965, 'Rajgir', 'Nalanda', 'Bihar', '', '', '', '', ''),
(3966, 'Rajgurunagar (Khed)', 'Pune', 'Maharashtra', '', '', '', '', ''),
(3967, 'Rajkot', 'Rajkot', 'Gujarat', '', '', '', '', ''),
(3968, 'Rajmahal', 'Sahibganj', 'Jharkhand', '', '', '', '', ''),
(3969, 'Rajnagar', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(3970, 'Rajnandgaon', 'Rajnandgaon', 'Chhattisgarh', '', '', '', '', ''),
(3971, 'Rajokri', 'South West', 'Delhi *', '', '', '', '', ''),
(3972, 'Rajpipla', 'Narmada', 'Gujarat', '', '', '', '', ''),
(3973, 'Rajpur', 'Barwani', 'Madhya Pradesh', '', '', '', '', ''),
(3974, 'Rajpur Sonarpur', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(3975, 'Rajpura', 'Patiala', 'Punjab', '', '', '', '', ''),
(3976, 'Rajsamand', 'Rajsamand', 'Rajasthan', '', '', '', '', ''),
(3977, 'Rajula', 'Amreli', 'Gujarat', '', '', '', '', ''),
(3978, 'Rajur', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(3979, 'Rajura', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(3980, 'Ram Garh', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(3981, 'Ramachandrapuram', 'Medak', 'Andhra Pradesh', '', '', '', '', ''),
(3982, 'Ramachandrapuram', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(3983, 'Ramachandrapuram-Bhel Township )', 'Medak', 'Andhra Pradesh', '', '', '', '', ''),
(3984, 'Ramagundam', 'Karimnagar', 'Andhra Pradesh', '', '', '', '', ''),
(3985, 'Raman', 'Bathinda', 'Punjab', '', '', '', '', ''),
(3986, 'Ramanagaram', 'Bangalore Rural', 'Karnataka', '', '', '', '', ''),
(3987, 'Ramanathapuram', 'Ramanathapuram', 'Tamil Nadu', '', '', '', '', ''),
(3988, 'Ramanattukara', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(3989, 'Ramanayyapeta', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(3990, 'Ramanujganj', 'Surguja', 'Chhattisgarh', '', '', '', '', ''),
(3991, 'Ramapuram', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(3992, 'Ramapuram', 'Kurnool', 'Andhra Pradesh', '', '', '', '', ''),
(3993, 'Ramban', 'Doda', 'Jammu & Kashmir', '', '', '', '', ''),
(3994, 'Rambha', 'Ganjam', 'Orissa', '', '', '', '', ''),
(3995, 'Ramchandrapur', 'Haora ', 'West Bengal', '', '', '', '', ''),
(3996, 'Ramdass', 'Amritsar', 'Punjab', '', '', '', '', ''),
(3997, 'Ramdurg', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(3998, 'Rameswaram', 'Cuddapah', 'Andhra Pradesh', '', '', '', '', ''),
(3999, 'Rameswaram', 'Ramanathapuram', 'Tamil Nadu', '', '', '', '', ''),
(4000, 'Ramganj Mandi', 'Kota', 'Rajasthan', '', '', '', '', ''),
(4001, 'Ramgarh', 'Sikar', 'Rajasthan', '', '', '', '', ''),
(4002, 'Ramgarh Cantonment', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(4003, 'Ramjibanpur', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(4004, 'Ramkola', 'Kushinagar', 'Uttar Pradesh', '', '', '', '', ''),
(4005, 'Ramnagar', 'Pashchim Champaran', 'Bihar', '', '', '', '', ''),
(4006, 'Ramnagar', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(4007, 'Ramnagar', 'Udhampur', 'Jammu & Kashmir', '', '', '', '', ''),
(4008, 'Ramnagar', 'Nainital', 'Uttaranchal', '', '', '', '', ''),
(4009, 'Ramnagar', 'Barabanki', 'Uttar Pradesh', '', '', '', '', ''),
(4010, 'Ramnagar', 'Varanasi', 'Uttar Pradesh', '', '', '', '', ''),
(4011, 'Ramol', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(4012, 'Rampachodavaram', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(4013, 'Rampur', 'Rampur', 'Uttar Pradesh', '', '', '', '', ''),
(4014, 'Rampur', 'Shimla', 'Himachal Pradesh', '', '', '', '', ''),
(4015, 'Rampur Baghelan', 'Satna', 'Madhya Pradesh', '', '', '', '', ''),
(4016, 'Rampur Bhawanipur', 'Barabanki', 'Uttar Pradesh', '', '', '', '', ''),
(4017, 'Rampur Karkhana', 'Deoria', 'Uttar Pradesh', '', '', '', '', ''),
(4018, 'Rampur Maniharan', 'Saharanpur', 'Uttar Pradesh', '', '', '', '', ''),
(4019, 'Rampur Naikin', 'Sidhi', 'Madhya Pradesh', '', '', '', '', ''),
(4020, 'Rampura', 'Neemuch', 'Madhya Pradesh', '', '', '', '', ''),
(4021, 'Rampura', 'Jalaun ', 'Uttar Pradesh', '', '', '', '', ''),
(4022, 'Rampura Phul', 'Bathinda', 'Punjab', '', '', '', '', ''),
(4023, 'Rampurhat', 'Birbhum', 'West Bengal', '', '', '', '', ''),
(4024, 'Ramtek', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(4025, 'Ranaghat', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(4026, 'Ranapur', 'Jhabua', 'Madhya Pradesh', '', '', '', '', ''),
(4027, 'Ranavav', 'Porbandar', 'Gujarat', '', '', '', '', ''),
(4028, 'Ranbir Singh Pora', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(4029, 'Ranchi', 'Ranchi', 'Jharkhand', '', '', '', '', ''),
(4030, 'Rangapara', 'Sonitpur', 'Assam', '', '', '', '', ''),
(4031, 'Rangia', 'Kamrup', 'Assam', '', '', '', '', ''),
(4032, 'Rangpo', 'East', 'Sikkim', '', '', '', '', ''),
(4033, 'Rani', 'Pali', 'Rajasthan', '', '', '', '', ''),
(4034, 'Rania', 'Sirsa', 'Haryana', '', '', '', '', ''),
(4035, 'Ranibennur', 'Haveri', 'Karnataka', '', '', '', '', ''),
(4036, 'Raniganj', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(4037, 'Ranikhet', 'Almora', 'Uttaranchal', '', '', '', '', ''),
(4038, 'Ranip', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(4039, 'Ranipettai', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4040, 'Ranipur', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(4041, 'Ranirbazar', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(4042, 'Ranoli', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(4043, 'Rapar', 'Kachchh', 'Gujarat', '', '', '', '', ''),
(4044, 'Rashidpur Garhi', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(4045, 'Rasipuram', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(4046, 'Rasra', 'Ballia', 'Uttar Pradesh', '', '', '', '', ''),
(4047, 'Rasulabad', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(4048, 'Ratangarh', 'Churu', 'Rajasthan', '', '', '', '', ''),
(4049, 'Ratangarh', 'Neemuch', 'Madhya Pradesh', '', '', '', '', ''),
(4050, 'Ratannagar', 'Churu', 'Rajasthan', '', '', '', '', ''),
(4051, 'Ratanpur', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(4052, 'Rath', 'Hamirpur', 'Uttar Pradesh', '', '', '', '', ''),
(4053, 'Ratia', 'Fatehabad', 'Haryana', '', '', '', '', ''),
(4054, 'Ratibati', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(4055, 'Ratlam', 'Ratlam', 'Madhya Pradesh', '', '', '', '', ''),
(4056, 'Ratlam Rly. Colony (Ratlam Kasba)', 'Ratlam', 'Madhya Pradesh', '', '', '', '', ''),
(4057, 'Ratnagiri', 'Ratnagiri', 'Maharashtra', '', '', '', '', ''),
(4058, 'Rau', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(4059, 'Raurkela', 'Sundargarh', 'Orissa', '', '', '', '', ''),
(4060, 'Raurkela Industrialship', 'Sundargarh', 'Orissa', '', '', '', '', ''),
(4061, 'Raver', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(4062, 'Rawalsar', 'Mandi', 'Himachal Pradesh', '', '', '', '', ''),
(4063, 'Rawatbhata', 'Chittaurgarh', 'Rajasthan', '', '', '', '', ''),
(4064, 'Rawatsar', 'Hanumangarh', 'Rajasthan', '', '', '', '', ''),
(4065, 'Raxaul Bazar', 'Purba Champaran', 'Bihar', '', '', '', '', ''),
(4066, 'Raya', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(4067, 'Rayachoti', 'Cuddapah', 'Andhra Pradesh', '', '', '', '', ''),
(4068, 'Rayadurg', 'Anantapur', 'Andhra Pradesh', '', '', '', '', ''),
(4069, 'Rayagada', 'Rayagada', 'Orissa', '', '', '', '', ''),
(4070, 'Rayagiri', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4071, 'Raybag', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(4072, 'Rayya', 'Amritsar', 'Punjab', '', '', '', '', ''),
(4073, 'Reasi', 'Udhampur', 'Jammu & Kashmir', '', '', '', '', ''),
(4074, 'Redhakhol', 'Sambalpur', 'Orissa', '', '', '', '', ''),
(4075, 'Reengus', 'Sikar', 'Rajasthan', '', '', '', '', ''),
(4076, 'Reethapuram', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(4077, 'Rehambal', 'Udhampur', 'Jammu & Kashmir', '', '', '', '', ''),
(4078, 'Rehli', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(4079, 'Rehti', 'Sehore', 'Madhya Pradesh', '', '', '', '', ''),
(4080, 'Reis Magos', 'North Goa ', 'Goa', '', '', '', '', ''),
(4081, 'Religara alias Pachhiari', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(4082, 'Remuna', 'Baleshwar', 'Orissa', '', '', '', '', ''),
(4083, 'Rengali Dam Projectship', 'Anugul', 'Orissa', '', '', '', '', ''),
(4084, 'Renigunta', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(4085, 'Renukoot', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(4086, 'Reoti', 'Ballia', 'Uttar Pradesh', '', '', '', '', ''),
(4087, 'Repalle', 'Guntur', 'Andhra Pradesh', '', '', '', '', ''),
(4088, 'Resubelpara', 'East Garo Hills', 'Meghalaya', '', '', '', '', ''),
(4089, 'Revelganj', 'Saran', 'Bihar', '', '', '', '', ''),
(4090, 'Rewa', 'Rewa', 'Madhya Pradesh', '', '', '', '', ''),
(4091, 'Rewari', 'Rewari', 'Haryana', '', '', '', '', ''),
(4092, 'Rewari (Rural)', 'Rewari', 'Haryana', '', '', '', '', ''),
(4093, 'Richha', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(4094, 'Rikhabdeo', 'Udaipur', 'Rajasthan', '', '', '', '', ''),
(4095, 'Rishikesh', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(4096, 'Rishra', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(4097, 'Rishra', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(4098, 'Risia Bazar', 'Bahraich', 'Uttar Pradesh', '', '', '', '', ''),
(4099, 'Risod', 'Washim', 'Maharashtra', '', '', '', '', ''),
(4100, 'Rithora', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(4101, 'Rly. Settlement Roza', 'Shahjahanpur', 'Uttar Pradesh', '', '', '', '', ''),
(4102, 'Robertsganj', 'Sonbhadra', 'Uttar Pradesh', '', '', '', '', ''),
(4103, 'Robertson Pet', 'Kolar', 'Karnataka', '', '', '', '', ''),
(4104, 'Roha Ashtami', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(4105, 'Rohraband', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(4106, 'Rohru', 'Shimla', 'Himachal Pradesh', '', '', '', '', ''),
(4107, 'Rohtak', 'Rohtak', 'Haryana', '', '', '', '', ''),
(4108, 'Roing', 'Dibang Valley', 'Arunachal Pradesh', '', '', '', '', ''),
(4109, 'Ron', 'Gadag', 'Karnataka', '', '', '', '', ''),
(4110, 'Roorkee', 'Hardwar', 'Uttaranchal', '', '', '', '', ''),
(4111, 'Roorkee', 'Hardwar', 'Uttaranchal', '', '', '', '', ''),
(4112, 'Rosalpatti', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(4113, 'Rosera', 'Samastipur', 'Bihar', '', '', '', '', ''),
(4114, 'Roshan Pura alias Dichaon Khurd', 'South West', 'Delhi *', '', '', '', '', ''),
(4115, 'Rudauli', 'Faizabad', 'Uttar Pradesh', '', '', '', '', ''),
(4116, 'Rudayan', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(4117, 'Rudra Prayag', 'Rudraprayag', 'Uttaranchal', '', '', '', '', ''),
(4118, 'Rudrapur', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(4119, 'Rudrapur', 'Deoria', 'Uttar Pradesh', '', '', '', '', ''),
(4120, 'Rudravathi', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(4121, 'Ruiya', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(4122, 'Runji Gautampura', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(4123, 'Rupnagar', 'Rupnagar', 'Punjab', '', '', '', '', ''),
(4124, 'Rura', 'Kanpur Dehat', 'Uttar Pradesh', '', '', '', '', ''),
(4125, 'Rurki Kasba', 'Patiala', 'Punjab', '', '', '', '', ''),
(4126, 'Rustamnagar Sahaspur', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(4127, 'S. Kannanur', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(4128, 'S.A.S. Nagar (Mohali)', 'Rupnagar', 'Punjab', '', '', '', '', ''),
(4129, 'S.Kodikulam', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(4130, 'S.Nallur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4131, 'S.T. Power Project Town', 'Puruliya', 'West Bengal', '', '', '', '', ''),
(4132, 'Sabalgarh', 'Morena', 'Madhya Pradesh', '', '', '', '', ''),
(4133, 'Sabathu', 'Solan', 'Himachal Pradesh', '', '', '', '', ''),
(4134, 'Sabroom', 'South Tripura ', 'Tripura', '', '', '', '', ''),
(4135, 'Sachin', 'Surat', 'Gujarat', '', '', '', '', ''),
(4136, 'Sachin INA', 'Surat', 'Gujarat', '', '', '', '', ''),
(4137, 'Sadabad', 'Hathras', 'Uttar Pradesh', '', '', '', '', ''),
(4138, 'Sadalgi', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(4139, 'Sadasivpet', 'Medak', 'Andhra Pradesh', '', '', '', '', ''),
(4140, 'Sadat', 'Ghazipur', 'Uttar Pradesh', '', '', '', '', ''),
(4141, 'Sadat Pur Gujran', 'North East', 'Delhi *', '', '', '', '', ''),
(4142, 'Sadaura', 'Yamunanagar', 'Haryana', '', '', '', '', ''),
(4143, 'Sadpur', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(4144, 'Sadri', 'Pali', 'Rajasthan', '', '', '', '', ''),
(4145, 'Sadulshahar', 'Ganganagar', 'Rajasthan', '', '', '', '', ''),
(4146, 'Safidon', 'Jind', 'Haryana', '', '', '', '', ''),
(4147, 'Safipur', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(4148, 'Sagar', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(4149, 'Sagar', 'Shimoga', 'Karnataka', '', '', '', '', ''),
(4150, 'Sagar Cantt.', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(4151, 'Sagwara', 'Dungarpur', 'Rajasthan', '', '', '', '', ''),
(4152, 'Sahajadpur', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(4153, 'Sahanpur', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(4154, 'Sahapur', 'Haora ', 'West Bengal', '', '', '', '', ''),
(4155, 'Saharanpur', 'Saharanpur', 'Uttar Pradesh', '', '', '', '', ''),
(4156, 'Saharsa', 'Saharsa', 'Bihar', '', '', '', '', ''),
(4157, 'Sahaspur', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(4158, 'Sahaswan', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(4159, 'Sahatwar', 'Ballia', 'Uttar Pradesh', '', '', '', '', ''),
(4160, 'Sahawar', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(4161, 'Sahibabad Daulat Pur', 'North West', 'Delhi *', '', '', '', '', ''),
(4162, 'Sahibganj', 'Sahibganj', 'Jharkhand', '', '', '', '', ''),
(4163, 'Sahjanwa', 'Gorakhpur', 'Uttar Pradesh', '', '', '', '', ''),
(4164, 'Sahnewal', 'Ludhiana', 'Punjab', '', '', '', '', ''),
(4165, 'Sahnidih', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(4166, 'Sahpau NP', 'Hathras', 'Uttar Pradesh', '', '', '', '', ''),
(4167, 'Saidpur', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(4168, 'Saidpur', 'Ghazipur', 'Uttar Pradesh', '', '', '', '', ''),
(4169, 'Saidul Ajaib', 'South', 'Delhi *', '', '', '', '', ''),
(4170, 'Saiha', 'Saiha', 'Mizoram', '', '', '', '', ''),
(4171, 'Sailana', 'Ratlam', 'Madhya Pradesh', '', '', '', '', ''),
(4172, 'Sailu', 'Parbhani', 'Maharashtra', '', '', '', '', ''),
(4173, 'Sainthal', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(4174, 'Sainthia', 'Birbhum', 'West Bengal', '', '', '', '', ''),
(4175, 'Sairang', 'Aizawl', 'Mizoram', '', '', '', '', ''),
(4176, 'Saitual', 'Aizawl', 'Mizoram', '', '', '', '', ''),
(4177, 'Saiyad Raja', 'Chandauli', 'Uttar Pradesh', '', '', '', '', ''),
(4178, 'Sakhanu', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(4179, 'Sakit', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(4180, 'Sakleshpur', 'Hassan', 'Karnataka', '', '', '', '', ''),
(4181, 'Sakti', 'Janjgir-Champa', 'Chhattisgarh', '', '', '', '', ''),
(4182, 'Salakati', 'Kokrajhar', 'Assam', '', '', '', '', ''),
(4183, 'Salangapalayam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(4184, 'Salap', 'Haora ', 'West Bengal', '', '', '', '', ''),
(4185, 'Salarpur Khadar', 'Gautam Buddha Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(4186, 'Salaya', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(4187, 'Salem', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(4188, 'Salempur', 'Deoria', 'Uttar Pradesh', '', '', '', '', ''),
(4189, 'Saligao', 'North Goa ', 'Goa', '', '', '', '', ''),
(4190, 'Saligram', 'Udupi', 'Karnataka', '', '', '', '', ''),
(4191, 'Salon', 'Rae Bareli', 'Uttar Pradesh', '', '', '', '', ''),
(4192, 'Salumbar', 'Udaipur', 'Rajasthan', '', '', '', '', ''),
(4193, 'Salur', 'Vizianagaram', 'Andhra Pradesh', '', '', '', '', ''),
(4194, 'Samalapuram', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4195, 'Samalkha', 'Panipat', 'Haryana', '', '', '', '', ''),
(4196, 'Samalkota', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(4197, 'Samana', 'Patiala', 'Punjab', '', '', '', '', ''),
(4198, 'Samastipur', 'Samastipur', 'Bihar', '', '', '', '', ''),
(4199, 'Samathur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4200, 'Samba', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(4201, 'Sambalpur', 'Sambalpur', 'Orissa', '', '', '', '', ''),
(4202, 'Sambavar Vadagarai', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4203, 'Sambhal', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(4204, 'Sambhalka', 'South West', 'Delhi *', '', '', '', '', ''),
(4205, 'Sambhar', 'Jaipur', 'Rajasthan', '', '', '', '', ''),
(4206, 'Samdhan', 'Kannauj', 'Uttar Pradesh', '', '', '', '', ''),
(4207, 'Samrala', 'Ludhiana', 'Punjab', '', '', '', '', ''),
(4208, 'Samthar', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(4209, 'Samurou', 'Thoubal & Imphal West', 'Manipur', '', '', '', '', ''),
(4210, 'Sanand', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(4211, 'Sanaur', 'Patiala', 'Punjab', '', '', '', '', ''),
(4212, 'Sanawad', 'West Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(4213, 'Sanchi', 'Raisen', 'Madhya Pradesh', '', '', '', '', ''),
(4214, 'Sanchore', 'Jalor', 'Rajasthan', '', '', '', '', ''),
(4215, 'Sancoale', 'South Goa', 'Goa', '', '', '', '', ''),
(4216, 'Sandi', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(4217, 'Sandila', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(4218, 'Sandor', 'Thane', 'Maharashtra', '', '', '', '', ''),
(4219, 'Sandur', 'Bellary', 'Karnataka', '', '', '', '', ''),
(4220, 'Sangamner', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(4221, 'Sangareddy', 'Medak', 'Andhra Pradesh', '', '', '', '', ''),
(4222, 'Sangaria', 'Hanumangarh', 'Rajasthan', '', '', '', '', ''),
(4223, 'Sangat', 'Bathinda', 'Punjab', '', '', '', '', ''),
(4224, 'Sangli-Miraj & Kupwad', 'Sangli', 'Maharashtra', '', '', '', '', ''),
(4225, 'Sangod', 'Kota', 'Rajasthan', '', '', '', '', ''),
(4226, 'Sangole', 'Solapur', 'Maharashtra', '', '', '', '', ''),
(4227, 'Sangrur', 'Sangrur', 'Punjab', '', '', '', '', ''),
(4228, 'Sanguem', 'South Goa', 'Goa', '', '', '', '', ''),
(4229, 'Sankaramanallur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4230, 'Sankarankoil', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4231, 'Sankarapuram', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(4232, 'Sankari', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(4233, 'Sankarnagar', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4234, 'Sankarpur', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(4235, 'Sankeshwar', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(4236, 'Sankhol', 'Jhajjar', 'Haryana', '', '', '', '', ''),
(4237, 'Sankrail', 'Haora ', 'West Bengal', '', '', '', '', ''),
(4238, 'Sanoth', 'North West', 'Delhi *', '', '', '', '', ''),
(4239, 'Sanquelim', 'North Goa ', 'Goa', '', '', '', '', ''),
(4240, 'Sansarpur', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(4241, 'Santipur', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(4242, 'Santokhgarh', 'Una', 'Himachal Pradesh', '', '', '', '', ''),
(4243, 'Santoshpur', 'Haora ', 'West Bengal', '', '', '', '', ''),
(4244, 'Santrampur', 'Panch Mahals', 'Gujarat', '', '', '', '', ''),
(4245, 'Sanvordem', 'South Goa', 'Goa', '', '', '', '', ''),
(4246, 'Sao Jose-de-Areal', 'South Goa', 'Goa', '', '', '', '', ''),
(4247, 'Sapatgram', 'Dhubri', 'Assam', '', '', '', '', ''),
(4248, 'Sarai Aquil', 'Kaushambi', 'Uttar Pradesh', '', '', '', '', ''),
(4249, 'Sarai Mir', 'Azamgarh', 'Uttar Pradesh', '', '', '', '', ''),
(4250, 'Saraidhela', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(4251, 'Saraipali', 'Mahasamund', 'Chhattisgarh', '', '', '', '', ''),
(4252, 'Sarangarh', 'Raigarh', 'Chhattisgarh', '', '', '', '', ''),
(4253, 'Sarangpur', 'Rajgarh', 'Madhya Pradesh', '', '', '', '', ''),
(4254, 'Sarapaka', 'Khammam', 'Andhra Pradesh', '', '', '', '', ''),
(4255, 'Saravanampatti', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4256, 'Sarbhog', 'Barpeta', 'Assam', '', '', '', '', ''),
(4257, 'Sarcarsamakulam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4258, 'Sardarpur', 'Dhar', 'Madhya Pradesh', '', '', '', '', ''),
(4259, 'Sardarshahar', 'Churu', 'Rajasthan', '', '', '', '', ''),
(4260, 'Sardhana', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(4261, 'Sardulgarh', 'Mansa', 'Punjab', '', '', '', '', ''),
(4262, 'Sarenga', 'Haora ', 'West Bengal', '', '', '', '', ''),
(4263, 'Sarigam INA', 'Valsad', 'Gujarat', '', '', '', '', ''),
(4264, 'Sarila', 'Hamirpur', 'Uttar Pradesh', '', '', '', '', ''),
(4265, 'Sarjamda', 'Purbi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(4266, 'Sarkaghat', 'Mandi', 'Himachal Pradesh', '', '', '', '', ''),
(4267, 'Sarkhej-Okaf', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(4268, 'Sarni', 'Betul', 'Madhya Pradesh', '', '', '', '', ''),
(4269, 'Sarpi', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(4270, 'Sarsawan', 'Saharanpur', 'Uttar Pradesh', '', '', '', '', ''),
(4271, 'Sarthebari', 'Barpeta', 'Assam', '', '', '', '', ''),
(4272, 'Sarupathar', 'Golaghat', 'Assam', '', '', '', '', ''),
(4273, 'Sarupathar Bengali', 'Dibrugarh', 'Assam', '', '', '', '', ''),
(4274, 'Sarwar', 'Ajmer', 'Rajasthan', '', '', '', '', ''),
(4275, 'Sasaram', 'Rohtas', 'Bihar', '', '', '', '', ''),
(4276, 'Sasauli', 'Yamunanagar', 'Haryana', '', '', '', '', ''),
(4277, 'Sasni', 'Hathras', 'Uttar Pradesh', '', '', '', '', ''),
(4278, 'Sasti', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(4279, 'Sasvad', 'Pune', 'Maharashtra', '', '', '', '', ''),
(4280, 'Satai', 'Chhatarpur', 'Madhya Pradesh', '', '', '', '', ''),
(4281, 'Satalkheri', 'Kota', 'Rajasthan', '', '', '', '', ''),
(4282, 'Satana', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(4283, 'Satara', 'Satara', 'Maharashtra', '', '', '', '', ''),
(4284, 'Sathankulam', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(4285, 'Sathiyavijayanagaram', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(4286, 'Sathuvachari', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4287, 'Sathyamangala', 'Hassan', 'Karnataka', '', '', '', '', ''),
(4288, 'Sathyamangalam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(4289, 'Satigachha', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(4290, 'Satna', 'Satna', 'Madhya Pradesh', '', '', '', '', ''),
(4291, 'Satrikh', 'Barabanki', 'Uttar Pradesh', '', '', '', '', ''),
(4292, 'Sattenapalle', 'Guntur', 'Andhra Pradesh', '', '', '', '', ''),
(4293, 'Sattur', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(4294, 'Satwas', 'Dewas', 'Madhya Pradesh', '', '', '', '', ''),
(4295, 'Saunda', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(4296, 'Saundatti-Yellamma', 'Belgaum', 'Karnataka', '', '', '', '', ''),
(4297, 'Saunkh', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(4298, 'Saurikh', 'Kannauj', 'Uttar Pradesh', '', '', '', '', ''),
(4299, 'Sausar', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(4300, 'Savanur', 'Haveri', 'Karnataka', '', '', '', '', ''),
(4301, 'Savarkundla', 'Amreli', 'Gujarat', '', '', '', '', ''),
(4302, 'Savda', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(4303, 'Savner', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(4304, 'Sawai Madhopur', 'Sawai Madhopur', 'Rajasthan', '', '', '', '', ''),
(4305, 'Sawantwadi', 'Sindhudurg', 'Maharashtra', '', '', '', '', ''),
(4306, 'Sawari Jawharnagar', 'Bhandara', 'Maharashtra', '', '', '', '', ''),
(4307, 'Sawer', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(4308, 'Sayalgudi', 'Ramanathapuram', 'Tamil Nadu', '', '', '', '', ''),
(4309, 'Sayan', 'Surat', 'Gujarat', '', '', '', '', ''),
(4310, 'Sayapuram', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(4311, 'Secunderabad', 'Hyderabad', 'Andhra Pradesh', '', '', '', '', ''),
(4312, 'Sedam', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(4313, 'Seerapalli', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(4314, 'Seevur', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4315, 'Sehore', 'Sehore', 'Madhya Pradesh', '', '', '', '', ''),
(4316, 'Seithur', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(4317, 'Sekmai Bazar', 'Imphal West', 'Manipur', '', '', '', '', ''),
(4318, 'Semaria', 'Rewa', 'Madhya Pradesh', '', '', '', '', ''),
(4319, 'Sembakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4320, 'Semmipalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4321, 'Senchoa Gaon', 'Jorhat', 'Assam', '', '', '', '', ''),
(4322, 'Sendhwa', 'Barwani', 'Madhya Pradesh', '', '', '', '', ''),
(4323, 'Senthamangalam', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(4324, 'Sentharapatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(4325, 'Senur', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4326, 'Seohara', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(4327, 'Seondha', 'Datia', 'Madhya Pradesh', '', '', '', '', ''),
(4328, 'Seoni', 'Shimla', 'Himachal Pradesh', '', '', '', '', ''),
(4329, 'Seoni', 'Seoni', 'Madhya Pradesh', '', '', '', '', ''),
(4330, 'Seoni Malwa', 'Hoshangabad', 'Madhya Pradesh', '', '', '', '', ''),
(4331, 'Seppa', 'East Kameng', 'Arunachal Pradesh', '', '', '', '', ''),
(4332, 'Seraikela', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(4333, 'Serampore', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(4334, 'Serchhip', 'Serchhip', 'Mizoram', '', '', '', '', ''),
(4335, 'Serilingampalle', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(4336, 'Serpur', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(4337, 'Sethia', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(4338, 'Sethiathoppu', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(4339, 'Sevilimedu', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4340, 'Sevugampatti', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(4341, 'Sewai', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(4342, 'Sewalkhas', 'Meerut', 'Uttar Pradesh', '', '', '', '', ''),
(4343, 'Sewarhi', 'Kushinagar', 'Uttar Pradesh', '', '', '', '', ''),
(4344, 'Shahabad', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(4345, 'Shahabad', 'Rampur', 'Uttar Pradesh', '', '', '', '', ''),
(4346, 'Shahabad', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(4347, 'Shahabad ACC', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(4348, 'Shahade', 'Nandurbar', 'Maharashtra', '', '', '', '', ''),
(4349, 'Shahapur', 'Thane', 'Maharashtra', '', '', '', '', ''),
(4350, 'Shahbad', 'Kurukshetra', 'Haryana', '', '', '', '', ''),
(4351, 'Shahdol', 'Shahdol', 'Madhya Pradesh', '', '', '', '', ''),
(4352, 'Shahganj', 'Jaunpur', 'Uttar Pradesh', '', '', '', '', ''),
(4353, 'Shahgarh', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(4354, 'Shahi', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(4355, 'Shahjahanpur', 'Shahjahanpur', 'Uttar Pradesh', '', '', '', '', ''),
(4356, 'Shahjahanpur', 'Shahjahanpur', 'Uttar Pradesh', '', '', '', '', ''),
(4357, 'Shahkot', 'Jalandhar', 'Punjab', '', '', '', '', ''),
(4358, 'Shahpur', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(4359, 'Shahpur', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(4360, 'Shahpur', 'Sagar', 'Madhya Pradesh', '', '', '', '', ''),
(4361, 'Shahpur', 'Bhojpur', 'Bihar', '', '', '', '', ''),
(4362, 'Shahpur', 'East Nimar', 'Madhya Pradesh', '', '', '', '', ''),
(4363, 'Shahpur', 'Betul', 'Madhya Pradesh', '', '', '', '', ''),
(4364, 'Shahpura', 'Jaipur', 'Rajasthan', '', '', '', '', ''),
(4365, 'Shahpura', 'Bhilwara', 'Rajasthan', '', '', '', '', ''),
(4366, 'Shahpura', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(4367, 'Shahpura', 'Dindori', 'Madhya Pradesh', '', '', '', '', ''),
(4368, 'Shajapur', 'Shajapur', 'Madhya Pradesh', '', '', '', '', ''),
(4369, 'Shaktigarh', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(4370, 'Shaktinagar', 'Raichur', 'Karnataka', '', '', '', '', ''),
(4371, 'Shamchaurasi', 'Hoshiarpur', 'Punjab', '', '', '', '', ''),
(4372, 'Shamgarh', 'Mandsaur', 'Madhya Pradesh', '', '', '', '', ''),
(4373, 'Shamli', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(4374, 'Shamsabad', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(4375, 'Shamsabad', 'Farrukhabad', 'Uttar Pradesh', '', '', '', '', ''),
(4376, 'Shankargarh', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(4377, 'Shankhanagar', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(4378, 'Shegaon', 'Buldana', 'Maharashtra', '', '', '', '', ''),
(4379, 'Sheikhpura', 'Sheikhpura', 'Bihar', '', '', '', '', ''),
(4380, 'Shekhpura', 'Patiala', 'Punjab', '', '', '', '', ''),
(4381, 'Shelar', 'Thane', 'Maharashtra', '', '', '', '', ''),
(4382, 'Shenbakkam', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4383, 'Shendurjana', 'Amravati', 'Maharashtra', '', '', '', '', ''),
(4384, 'Shenkottai', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4385, 'Sheoganj', 'Sirohi', 'Rajasthan', '', '', '', '', ''),
(4386, 'Sheohar', 'Sheohar', 'Bihar', '', '', '', '', ''),
(4387, 'Sheopur', 'Sheopur', 'Madhya Pradesh', '', '', '', '', ''),
(4388, 'Shergarh', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(4389, 'Sherghati', 'Gaya', 'Bihar', '', '', '', '', ''),
(4390, 'Sherkot', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(4391, 'Shiggaon', 'Haveri', 'Karnataka', '', '', '', '', ''),
(4392, 'Shikarpur', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(4393, 'Shikarpur', 'Shimoga', 'Karnataka', '', '', '', '', ''),
(4394, 'Shikohabad', 'Firozabad', 'Uttar Pradesh', '', '', '', '', ''),
(4395, 'Shillong', 'East Khasi Hills', 'Meghalaya', '', '', '', '', ''),
(4396, 'Shillong Cantt.', 'East Khasi Hills', 'Meghalaya', '', '', '', '', ''),
(4397, 'Shimla', 'Shimla', 'Himachal Pradesh', '', '', '', '', ''),
(4398, 'Shimoga', 'Shimoga', 'Karnataka', '', '', '', '', ''),
(4399, 'Shirdi', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(4400, 'Shirhatti', 'Gadag', 'Karnataka', '', '', '', '', ''),
(4401, 'Shirpur-Warwade', 'Dhule', 'Maharashtra', '', '', '', '', ''),
(4402, 'Shirur', 'Pune', 'Maharashtra', '', '', '', '', ''),
(4403, 'Shirwal', 'Satara', 'Maharashtra', '', '', '', '', ''),
(4404, 'Shishgarh', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(4405, 'Shivajinagar', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(4406, 'Shivatkar (Nira)', 'Pune', 'Maharashtra', '', '', '', '', ''),
(4407, 'Shivdaspur', 'Varanasi', 'Uttar Pradesh', '', '', '', '', ''),
(4408, 'Shivli', 'Kanpur Dehat', 'Uttar Pradesh', '', '', '', '', ''),
(4409, 'Shivpuri', 'Shivpuri', 'Madhya Pradesh', '', '', '', '', ''),
(4410, 'Shivrajpur', 'Kanpur Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(4411, 'Shivrinarayan', 'Janjgir-Champa', 'Chhattisgarh', '', '', '', '', ''),
(4412, 'Shohratgarh', 'Siddharthnagar', 'Uttar Pradesh', '', '', '', '', ''),
(4413, 'Sholavandan', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(4414, 'Sholinganallur', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4415, 'Sholingur', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4416, 'Sholur', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(4417, 'Shoranur', 'Palakkad', 'Kerala', '', '', '', '', ''),
(4418, 'Shorapur', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(4419, 'Shrigonda', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(4420, 'Shrirampur', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(4421, 'Shrirampur(Rural)', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(4422, 'Shrirangapattana', 'Mandya', 'Karnataka', '', '', '', '', ''),
(4423, 'Shrivardhan', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(4424, 'Shujalpur', 'Shajapur', 'Madhya Pradesh', '', '', '', '', ''),
(4425, 'Shupiyan', 'Pulwama', 'Jammu & Kashmir', '', '', '', '', ''),
(4426, 'Siana', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(4427, 'Sibsagar', 'Sibsagar', 'Assam', '', '', '', '', ''),
(4428, 'Siddapur', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(4429, 'Siddhaur', 'Barabanki', 'Uttar Pradesh', '', '', '', '', ''),
(4430, 'Siddipet', 'Medak', 'Andhra Pradesh', '', '', '', '', ''),
(4431, 'Sidhauli', 'Sitapur', 'Uttar Pradesh', '', '', '', '', ''),
(4432, 'Sidhi', 'Sidhi', 'Madhya Pradesh', '', '', '', '', ''),
(4433, 'Sidhpur', 'Patan', 'Gujarat', '', '', '', '', ''),
(4434, 'Sidhpura', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(4435, 'Sidlaghatta', 'Kolar', 'Karnataka', '', '', '', '', ''),
(4436, 'Siduli', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(4437, 'Sihor', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(4438, 'Sihora', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(4439, 'Sijhua', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(4440, 'Sijua', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(4441, 'Sikanderpur', 'Kannauj', 'Uttar Pradesh', '', '', '', '', ''),
(4442, 'Sikanderpur', 'Ballia', 'Uttar Pradesh', '', '', '', '', ''),
(4443, 'Sikandra', 'Kanpur Dehat', 'Uttar Pradesh', '', '', '', '', ''),
(4444, 'Sikandra Rao', 'Hathras', 'Uttar Pradesh', '', '', '', '', ''),
(4445, 'Sikandrabad', 'Bulandshahr ', 'Uttar Pradesh', '', '', '', '', ''),
(4446, 'Sikar', 'Sikar', 'Rajasthan', '', '', '', '', ''),
(4447, 'Sikhong Sekmai', 'Thoubal', 'Manipur', '', '', '', '', ''),
(4448, 'Sikka', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(4449, 'Sikkarayapuram', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4450, 'Silao', 'Nalanda', 'Bihar', '', '', '', '', ''),
(4451, 'Silapathar', 'Dhemaji', 'Assam', '', '', '', '', ''),
(4452, 'Silchar', 'Cachar', 'Assam', '', '', '', '', ''),
(4453, 'Silchar Part-X', 'Cachar', 'Assam', '', '', '', '', ''),
(4454, 'Siliguri', 'Darjiling and Jalpaiguri', 'West Bengal', '', '', '', '', ''),
(4455, 'Sillewada', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(4456, 'Sillod', 'Aurangabad', 'Maharashtra', '', '', '', '', ''),
(4457, 'Silvassa', 'Dadra & Nagar Haveli', 'Dadra & Nagar Haveli *', '', '', '', '', ''),
(4458, 'Simdega', 'Gumla', 'Jharkhand', '', '', '', '', ''),
(4459, 'Simga', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(4460, 'Simla', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(4461, 'Sindgi', 'Bijapur', 'Karnataka', '', '', '', '', ''),
(4462, 'Sindhnur', 'Raichur', 'Karnataka', '', '', '', '', ''),
(4463, 'Sindi', 'Wardha', 'Maharashtra', '', '', '', '', ''),
(4464, 'Sindi Turf Hindnagar', 'Wardha', 'Maharashtra', '', '', '', '', ''),
(4465, 'Sindkhed Raja', 'Buldana', 'Maharashtra', '', '', '', '', ''),
(4466, 'Sindri', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(4467, 'Sinduria', 'Garhwa', 'Jharkhand', '', '', '', '', ''),
(4468, 'Singahi Bhiraura', 'Kheri', 'Uttar Pradesh', '', '', '', '', ''),
(4469, 'Singampuneri', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(4470, 'Singaperumalkoil', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4471, 'Singapur', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(4472, 'Singarayakonda', 'Prakasam', 'Andhra Pradesh', '', '', '', '', ''),
(4473, 'Singarva', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(4474, 'Singnapur', 'Ahmadnagar', 'Maharashtra', '', '', '', '', ''),
(4475, 'Singoli', 'Neemuch', 'Madhya Pradesh', '', '', '', '', ''),
(4476, 'Singrauli', 'Sidhi', 'Madhya Pradesh', '', '', '', '', ''),
(4477, 'Singtam', 'East', 'Sikkim', '', '', '', '', ''),
(4478, 'Singur', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(4479, 'Sinhasa', 'Indore', 'Madhya Pradesh', '', '', '', '', ''),
(4480, 'Sini', 'Pashchimi Singhbhum', 'Jharkhand', '', '', '', '', ''),
(4481, 'Sinnar', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(4482, 'Siolim', 'North Goa ', 'Goa', '', '', '', '', ''),
(4483, 'Sira', 'Tumkur', 'Karnataka', '', '', '', '', ''),
(4484, 'Siralkoppa', 'Shimoga', 'Karnataka', '', '', '', '', ''),
(4485, 'Siras Pur', 'North West', 'Delhi *', '', '', '', '', ''),
(4486, 'Sirathu', 'Kaushambi', 'Uttar Pradesh', '', '', '', '', ''),
(4487, 'Sirauli', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(4488, 'Sirgiti', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(4489, 'Sirgora', 'Chhindwara', 'Madhya Pradesh', '', '', '', '', ''),
(4490, 'Sirhind -Fategarh', 'Fatehgarh Sahib', 'Punjab', '', '', '', '', ''),
(4491, 'Sirka', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(4492, 'Sirkali', 'Nagapattinam', 'Tamil Nadu', '', '', '', '', ''),
(4493, 'Sirmaur', 'Rewa', 'Madhya Pradesh', '', '', '', '', ''),
(4494, 'Sirohi', 'Sirohi', 'Rajasthan', '', '', '', '', ''),
(4495, 'Sironj', 'Vidisha', 'Madhya Pradesh', '', '', '', '', ''),
(4496, 'Sirsa', 'Sirsa', 'Haryana', '', '', '', '', ''),
(4497, 'Sirsa', 'Allahabad ', 'Uttar Pradesh', '', '', '', '', ''),
(4498, 'Sirsaganj', 'Firozabad', 'Uttar Pradesh', '', '', '', '', ''),
(4499, 'Sirsha', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(4500, 'Sirsi', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(4501, 'Sirsi', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(4502, 'Sirsilla', 'Karimnagar', 'Andhra Pradesh', '', '', '', '', ''),
(4503, 'Sirugamani', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(4504, 'Siruguppa', 'Bellary', 'Karnataka', '', '', '', '', ''),
(4505, 'Sirumugai', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4506, 'Sisauli', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(4507, 'Siswa Bazar', 'Maharajganj', 'Uttar Pradesh', '', '', '', '', ''),
(4508, 'Sitamarhi', 'Sitamarhi', 'Bihar', '', '', '', '', ''),
(4509, 'Sitamau', 'Mandsaur', 'Madhya Pradesh', '', '', '', '', ''),
(4510, 'Sitapur', 'Sitapur', 'Uttar Pradesh', '', '', '', '', ''),
(4511, 'Sitarganj', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(4512, 'Sithayankottai', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(4513, 'Sithurajapuram', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(4514, 'Siuliban', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(4515, 'Sivaganga', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(4516, 'Sivagiri', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(4517, 'Sivagiri', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4518, 'Sivakasi', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(4519, 'Sivanthipuram', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4520, 'Siwan', 'Siwan', 'Bihar', '', '', '', '', ''),
(4521, 'Siwani', 'Bhiwani', 'Haryana', '', '', '', '', ''),
(4522, 'Sobhaganj', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(4523, 'Socorro (Serula)', 'North Goa ', 'Goa', '', '', '', '', ''),
(4524, 'Sogariya', 'Kota', 'Rajasthan', '', '', '', '', ''),
(4525, 'Sohagpur', 'Hoshangabad', 'Madhya Pradesh', '', '', '', '', ''),
(4526, 'Sohna', 'Gurgaon', 'Haryana', '', '', '', '', ''),
(4527, 'Sojat', 'Pali', 'Rajasthan', '', '', '', '', ''),
(4528, 'Sojat Road', 'Pali', 'Rajasthan', '', '', '', '', ''),
(4529, 'Solan', 'Solan', 'Himachal Pradesh', '', '', '', '', ''),
(4530, 'Solapur', 'Solapur', 'Maharashtra', '', '', '', '', ''),
(4531, 'Som', 'Hardoi', 'Uttar Pradesh', '', '', '', '', ''),
(4532, 'Someshwar', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(4533, 'Sompeta', 'Srikakulam', 'Andhra Pradesh', '', '', '', '', ''),
(4534, 'Somvarpet', 'Kodagu', 'Karnataka', '', '', '', '', ''),
(4535, 'Sonamukhi', 'Bankura ', 'West Bengal', '', '', '', '', ''),
(4536, 'Sonamura', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(4537, 'Sonapur', 'Sonapur', 'Orissa', '', '', '', '', ''),
(4538, 'Sonari', 'Sibsagar', 'Assam', '', '', '', '', ''),
(4539, 'Sonatikiri', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(4540, 'Sonegaon (Nipani)', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(4541, 'Sonepur', 'Saran', 'Bihar', '', '', '', '', ''),
(4542, 'Songadh', 'Surat', 'Gujarat', '', '', '', '', ''),
(4543, 'Sonipat', 'Sonipat', 'Haryana', '', '', '', '', ''),
(4544, 'Sonkatch', 'Dewas', 'Madhya Pradesh', '', '', '', '', ''),
(4545, 'Sonpeth', 'Parbhani', 'Maharashtra', '', '', '', '', ''),
(4546, 'Sopore', 'Baramula', 'Jammu & Kashmir', '', '', '', '', ''),
(4547, 'Sorab', 'Shimoga', 'Karnataka', '', '', '', '', ''),
(4548, 'Soro', 'Baleshwar', 'Orissa', '', '', '', '', ''),
(4549, 'Soron', 'Etah', 'Uttar Pradesh', '', '', '', '', ''),
(4550, 'South Dumdum', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(4551, 'Soyagaon', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(4552, 'Soyatkalan', 'Shajapur', 'Madhya Pradesh', '', '', '', '', ''),
(4553, 'Sri Hargobindpur', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(4554, 'Sri Madhopur', 'Sikar', 'Rajasthan', '', '', '', '', ''),
(4555, 'Srikakulam', 'Srikakulam', 'Andhra Pradesh', '', '', '', '', ''),
(4556, 'Srikalahasti', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(4557, 'Srikantabati', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(4558, 'Srimushnam', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(4559, 'Srinagar', 'Srinagar', 'Jammu & Kashmir', '', '', '', '', ''),
(4560, 'Srinagar', 'Garhwal', 'Uttaranchal', '', '', '', '', ''),
(4561, 'Sringeri', 'Chikmagalur', 'Karnataka', '', '', '', '', ''),
(4562, 'Srinivaspur', 'Kolar', 'Karnataka', '', '', '', '', ''),
(4563, 'Sriperumbudur', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4564, 'Sriramapuram', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(4565, 'Sriramnagar', 'Vizianagaram', 'Andhra Pradesh', '', '', '', '', ''),
(4566, 'Srirampur', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(4567, 'Srisailam  Project (RFC) Township', 'Kurnool', 'Andhra Pradesh', '', '', '', '', ''),
(4568, 'Srisailamgudem Devasthanam', 'Kurnool', 'Andhra Pradesh', '', '', '', '', ''),
(4569, 'Srivaikuntam', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(4570, 'Srivilliputhur', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(4571, 'St.Thomas Mount-cum-Pallavaram', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4572, 'Sualkuchi', 'Kamrup', 'Assam', '', '', '', '', ''),
(4573, 'Suar', 'Rampur', 'Uttar Pradesh', '', '', '', '', ''),
(4574, 'Suchindram', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(4575, 'Sugauli', 'Purba Champaran', 'Bihar', '', '', '', '', '');
INSERT INTO `excelfile` (`id`, `first`, `second`, `third`, `title`, `keyword`, `description`, `url`, `content`) VALUES
(4576, 'Sugnu', 'Thoubal', 'Manipur', '', '', '', '', ''),
(4577, 'Suhagi', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(4578, 'Sujangarh', 'Churu', 'Rajasthan', '', '', '', '', ''),
(4579, 'Sujanpur', 'Gurdaspur', 'Punjab', '', '', '', '', ''),
(4580, 'Sukdal', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(4581, 'Suket', 'Kota', 'Rajasthan', '', '', '', '', ''),
(4582, 'Sukhmalpur Nizamabad', 'Firozabad', 'Uttar Pradesh', '', '', '', '', ''),
(4583, 'Sukhrali', 'Gurgaon', 'Haryana', '', '', '', '', ''),
(4584, 'Suleeswaranpatti', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4585, 'Sultan Pur', 'South', 'Delhi *', '', '', '', '', ''),
(4586, 'Sultan Pur Majra', 'North West', 'Delhi *', '', '', '', '', ''),
(4587, 'Sultanganj', 'Bhagalpur', 'Bihar', '', '', '', '', ''),
(4588, 'Sultanpur', 'Udham Singh Nagar', 'Uttaranchal', '', '', '', '', ''),
(4589, 'Sultanpur', 'Raisen', 'Madhya Pradesh', '', '', '', '', ''),
(4590, 'Sultanpur', 'Sultanpur', 'Uttar Pradesh', '', '', '', '', ''),
(4591, 'Sultanpur Lodhi', 'Kapurthala', 'Punjab', '', '', '', '', ''),
(4592, 'Sulur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4593, 'Sulya', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(4594, 'Sumbal', 'Baramula', 'Jammu & Kashmir', '', '', '', '', ''),
(4595, 'Sumerpur', 'Pali', 'Rajasthan', '', '', '', '', ''),
(4596, 'Sumerpur', 'Hamirpur', 'Uttar Pradesh', '', '', '', '', ''),
(4597, 'Sunabeda', 'Koraput', 'Orissa', '', '', '', '', ''),
(4598, 'Sunam', 'Sangrur', 'Punjab', '', '', '', '', ''),
(4599, 'Sundarapandiam', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(4600, 'Sundarapandiapuram', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4601, 'Sundargarh', 'Sundargarh', 'Orissa', '', '', '', '', ''),
(4602, 'Sundarnagar', 'Mandi', 'Himachal Pradesh', '', '', '', '', ''),
(4603, 'Sunderbani', 'Rajauri', 'Jammu & Kashmir', '', '', '', '', ''),
(4604, 'Supaul', 'Supaul', 'Bihar', '', '', '', '', ''),
(4605, 'Surada', 'Ganjam', 'Orissa', '', '', '', '', ''),
(4606, 'Surajgarh', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(4607, 'Surajkaradi', 'Jamnagar', 'Gujarat', '', '', '', '', ''),
(4608, 'Surajpur', 'Surguja', 'Chhattisgarh', '', '', '', '', ''),
(4609, 'Surampatti', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(4610, 'Surandai', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4611, 'Surat', 'Surat', 'Gujarat', '', '', '', '', ''),
(4612, 'Suratgarh', 'Ganganagar', 'Rajasthan', '', '', '', '', ''),
(4613, 'Surendranagar Dudhrej', 'Surendranagar', 'Gujarat', '', '', '', '', ''),
(4614, 'Surgana', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(4615, 'Suri', 'Birbhum', 'West Bengal', '', '', '', '', ''),
(4616, 'Suriyampalayam', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(4617, 'Suriyawan', 'Sant Ravidas Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(4618, 'Suryapet', 'Nalgonda', 'Andhra Pradesh', '', '', '', '', ''),
(4619, 'Suryaraopeta', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(4620, 'Susner', 'Shajapur', 'Madhya Pradesh', '', '', '', '', ''),
(4621, 'Suthaliya', 'Rajgarh', 'Madhya Pradesh', '', '', '', '', ''),
(4622, 'Swamibagh', 'Agra', 'Uttar Pradesh', '', '', '', '', ''),
(4623, 'Swamimalai', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(4624, 'T.Kallupatti', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(4625, 'Tadepalligudem', 'West Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(4626, 'Tadpatri', 'Anantapur', 'Andhra Pradesh', '', '', '', '', ''),
(4627, 'Taherpur', 'Nadia ', 'West Bengal', '', '', '', '', ''),
(4628, 'Taj Pul', 'South', 'Delhi *', '', '', '', '', ''),
(4629, 'Takhatgarh', 'Pali', 'Rajasthan', '', '', '', '', ''),
(4630, 'Takhatpur', 'Bilaspur', 'Chhattisgarh', '', '', '', '', ''),
(4631, 'Taki', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(4632, 'Tal', 'Ratlam', 'Madhya Pradesh', '', '', '', '', ''),
(4633, 'Talai', 'Bilaspur', 'Himachal Pradesh', '', '', '', '', ''),
(4634, 'Talaja', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(4635, 'Talbandha', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(4636, 'Talbehat', 'Lalitpur', 'Uttar Pradesh', '', '', '', '', ''),
(4637, 'Talcher', 'Anugul', 'Orissa', '', '', '', '', ''),
(4638, 'Talcher Thermal Power Station Township', 'Anugul', 'Orissa', '', '', '', '', ''),
(4639, 'Talegaon Dabhade', 'Pune', 'Maharashtra', '', '', '', '', ''),
(4640, 'Talen', 'Rajgarh', 'Madhya Pradesh', '', '', '', '', ''),
(4641, 'Talgram', 'Kannauj', 'Uttar Pradesh', '', '', '', '', ''),
(4642, 'Talikota', 'Bijapur', 'Karnataka', '', '', '', '', ''),
(4643, 'Taliparamba', 'Kannur', 'Kerala', '', '', '', '', ''),
(4644, 'Tallapalle', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(4645, 'Talod', 'Sabar Kantha', 'Gujarat', '', '', '', '', ''),
(4646, 'Talode', 'Nandurbar', 'Maharashtra', '', '', '', '', ''),
(4647, 'Taloje Panchnad', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(4648, 'Talwandi Bhai', 'Firozpur', 'Punjab', '', '', '', '', ''),
(4649, 'Talwara', 'Hoshiarpur', 'Punjab', '', '', '', '', ''),
(4650, 'Talwara', 'Udhampur', 'Jammu & Kashmir', '', '', '', '', ''),
(4651, 'Tambaram', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4652, 'Tambaur-cum-Ahmadabad', 'Sitapur', 'Uttar Pradesh', '', '', '', '', ''),
(4653, 'Tamluk', 'Medinipur ', 'West Bengal', '', '', '', '', ''),
(4654, 'Tanakpur', 'Champawat', 'Uttaranchal', '', '', '', '', ''),
(4655, 'Tanda', 'Rampur', 'Uttar Pradesh', '', '', '', '', ''),
(4656, 'Tanda', 'Ambedaker Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(4657, 'Tandur', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(4658, 'Tangla', 'Darrang', 'Assam', '', '', '', '', ''),
(4659, 'Tanuku', 'West Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(4660, 'Taoru', 'Gurgaon', 'Haryana', '', '', '', '', ''),
(4661, 'Tappa', 'Sangrur', 'Punjab', '', '', '', '', ''),
(4662, 'Tarakeswar', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(4663, 'Tarana', 'Ujjain', 'Madhya Pradesh', '', '', '', '', ''),
(4664, 'Taranagar', 'Churu', 'Rajasthan', '', '', '', '', ''),
(4665, 'Taraori', 'Karnal', 'Haryana', '', '', '', '', ''),
(4666, 'Tarapur', 'Thane', 'Maharashtra', '', '', '', '', ''),
(4667, 'Tarbha', 'Sonapur', 'Orissa', '', '', '', '', ''),
(4668, 'Taricharkalan', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(4669, 'Tarikere', 'Chikmagalur', 'Karnataka', '', '', '', '', ''),
(4670, 'Tarn Taran', 'Amritsar', 'Punjab', '', '', '', '', ''),
(4671, 'Tarsali', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(4672, 'Tasgaon', 'Sangli', 'Maharashtra', '', '', '', '', ''),
(4673, 'Tatarpur Lallu', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(4674, 'Tathavade', 'Pune', 'Maharashtra', '', '', '', '', ''),
(4675, 'Tati', 'Ranchi', 'Jharkhand', '', '', '', '', ''),
(4676, 'Tawang', 'Tawang', 'Arunachal Pradesh', '', '', '', '', ''),
(4677, 'Tayilupatti', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(4678, 'Teegalapahad', 'Adilabad', 'Andhra Pradesh', '', '', '', '', ''),
(4679, 'Tehri', 'Tehri Garhwal', 'Uttaranchal', '', '', '', '', ''),
(4680, 'Tekadi', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(4681, 'Tekanpur', 'Gwalior', 'Madhya Pradesh', '', '', '', '', ''),
(4682, 'Tekari', 'Gaya', 'Bihar', '', '', '', '', ''),
(4683, 'Tekkalakota', 'Bellary', 'Karnataka', '', '', '', '', ''),
(4684, 'Telgaon', 'Surguja', 'Chhattisgarh', '', '', '', '', ''),
(4685, 'Telhara', 'Akola', 'Maharashtra', '', '', '', '', ''),
(4686, 'Teliamura', 'West Tripura ', 'Tripura', '', '', '', '', ''),
(4687, 'Tenali', 'Guntur', 'Andhra Pradesh', '', '', '', '', ''),
(4688, 'Tendu Kheda', 'Damoh', 'Madhya Pradesh', '', '', '', '', ''),
(4689, 'Tenkasi', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4690, 'Tensa', 'Sundargarh', 'Orissa', '', '', '', '', ''),
(4691, 'Tentulkuli', 'Haora ', 'West Bengal', '', '', '', '', ''),
(4692, 'Tenu Dam-cum- Kathhara', 'Bokaro', 'Jharkhand', '', '', '', '', ''),
(4693, 'Teonthar', 'Rewa', 'Madhya Pradesh', '', '', '', '', ''),
(4694, 'Terdal', 'Bagalkot', 'Karnataka', '', '', '', '', ''),
(4695, 'Tetri Bazar', 'Siddharthnagar', 'Uttar Pradesh', '', '', '', '', ''),
(4696, 'Tezpur', 'Sonitpur', 'Assam', '', '', '', '', ''),
(4697, 'Tezu', 'Lohit', 'Arunachal Pradesh', '', '', '', '', ''),
(4698, 'Thadikombu', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(4699, 'Thaikkad', 'Thrissur', 'Kerala', '', '', '', '', ''),
(4700, 'Thakkolam', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4701, 'Thakurdwara', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(4702, 'Thakurganj', 'Kishanganj', 'Bihar', '', '', '', '', ''),
(4703, 'Thalainayar', 'Nagapattinam', 'Tamil Nadu', '', '', '', '', ''),
(4704, 'Thalakudi', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(4705, 'Thalassery', 'Kannur', 'Kerala', '', '', '', '', ''),
(4706, 'Thaltej', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(4707, 'Thamaraikulam', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(4708, 'Thammampatti', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(4709, 'Thana Bhawan', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(4710, 'Thanamandi', 'Rajauri', 'Jammu & Kashmir', '', '', '', '', ''),
(4711, 'Thandla', 'Jhabua', 'Madhya Pradesh', '', '', '', '', ''),
(4712, 'Thane', 'Thane', 'Maharashtra', '', '', '', '', ''),
(4713, 'Thanesar', 'Kurukshetra', 'Haryana', '', '', '', '', ''),
(4714, 'Thangadh', 'Surendranagar', 'Gujarat', '', '', '', '', ''),
(4715, 'Thanjavur', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(4716, 'Thanthoni', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(4717, 'Tharad', 'Banas Kantha', 'Gujarat', '', '', '', '', ''),
(4718, 'Tharamangalam', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(4719, 'Tharangambadi', 'Nagapattinam', 'Tamil Nadu', '', '', '', '', ''),
(4720, 'Thathaiyangarpet', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(4721, 'Thedavur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(4722, 'Thenambakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4723, 'Thengampudur', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(4724, 'Theni Allinagaram', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(4725, 'Thenkarai', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4726, 'Thenkarai', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(4727, 'Thenthamaraikulam', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(4728, 'Thenthiruperai', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(4729, 'Thenzawl', 'Serchhip', 'Mizoram', '', '', '', '', ''),
(4730, 'Theog', 'Shimla', 'Himachal Pradesh', '', '', '', '', ''),
(4731, 'Thesur', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(4732, 'Thevaram', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(4733, 'Thevur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(4734, 'Thiagadurgam', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(4735, 'Thingalnagar', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(4736, 'Thiriya Nizamat Khan', 'Bareilly', 'Uttar Pradesh', '', '', '', '', ''),
(4737, 'Thirukarungudi', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4738, 'Thirukattupalli', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(4739, 'Thirumalayampalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4740, 'Thirumangalam', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(4741, 'Thirumazhisai', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(4742, 'Thirunagar', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(4743, 'Thirunageswaram', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(4744, 'Thiruneermalai', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4745, 'Thirunindravur', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(4746, 'Thiruparankundram', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(4747, 'Thiruparappu', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(4748, 'Thiruporur', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4749, 'Thiruppanandal', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(4750, 'Thirupuvanam', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(4751, 'Thirupuvanam', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(4752, 'Thiruthangal', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(4753, 'Thiruthuraipoondi', 'Thiruvarur', 'Tamil Nadu', '', '', '', '', ''),
(4754, 'Thiruvaiyaru', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(4755, 'Thiruvalam', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4756, 'Thiruvalla', 'Pathanamthitta', 'Kerala', '', '', '', '', ''),
(4757, 'Thiruvallur', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(4758, 'Thiruvankulam', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(4759, 'Thiruvarur', 'Thiruvarur', 'Tamil Nadu', '', '', '', '', ''),
(4760, 'Thiruvattaru', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(4761, 'Thiruvenkatam', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4762, 'Thiruvennainallur', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(4763, 'Thiruverumbur', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(4764, 'Thiruvidaimarudur', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(4765, 'Thiruvithankodu', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(4766, 'Thisayanvilai', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4767, 'Thittacheri', 'Nagapattinam', 'Tamil Nadu', '', '', '', '', ''),
(4768, 'Thodupuzha', 'Idukki', 'Kerala', '', '', '', '', ''),
(4769, 'Thokur-62', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(4770, 'Thondamuthur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4771, 'Thondi', 'Ramanathapuram', 'Tamil Nadu', '', '', '', '', ''),
(4772, 'Thongkhong Laxmi Bazar', 'Imphal West', 'Manipur', '', '', '', '', ''),
(4773, 'Thoothukkudi', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(4774, 'Thorapadi', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4775, 'Thorapadi', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(4776, 'Thottada', 'Kannur', 'Kerala', '', '', '', '', ''),
(4777, 'Thottipalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4778, 'Thottiyam', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(4779, 'Thoubal', 'Thoubal', 'Manipur', '', '', '', '', ''),
(4780, 'Thrippunithura', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(4781, 'Thrissur', 'Thrissur', 'Kerala', '', '', '', '', ''),
(4782, 'Thudiyalur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4783, 'Thumbe', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(4784, 'Thuraiyur', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(4785, 'Thuthipattu', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4786, 'Thuvakudi', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(4787, 'Tigri', 'South', 'Delhi *', '', '', '', '', ''),
(4788, 'Tihu', 'Nalbari', 'Assam', '', '', '', '', ''),
(4789, 'Tijara', 'Alwar', 'Rajasthan', '', '', '', '', ''),
(4790, 'Tikait Nagar', 'Barabanki', 'Uttar Pradesh', '', '', '', '', ''),
(4791, 'Tikamgarh', 'Tikamgarh', 'Madhya Pradesh', '', '', '', '', ''),
(4792, 'Tikri', 'Baghpat', 'Uttar Pradesh', '', '', '', '', ''),
(4793, 'Tilda Newra', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(4794, 'Tilhar', 'Shahjahanpur', 'Uttar Pradesh', '', '', '', '', ''),
(4795, 'Tilpat', 'Faridabad', 'Haryana', '', '', '', '', ''),
(4796, 'Timarni', 'Harda', 'Madhya Pradesh', '', '', '', '', ''),
(4797, 'Timiri', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4798, 'Tindivanam', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(4799, 'Tindwari', 'Banda', 'Uttar Pradesh', '', '', '', '', ''),
(4800, 'Tinsukia', 'Tinsukia', 'Assam', '', '', '', '', ''),
(4801, 'Tiptur', 'Tumkur', 'Karnataka', '', '', '', '', ''),
(4802, 'Tira Sujanpur', 'Hamirpur', 'Himachal Pradesh', '', '', '', '', ''),
(4803, 'Tirodi', 'Balaghat', 'Madhya Pradesh', '', '', '', '', ''),
(4804, 'Tirora', 'Gondiya', 'Maharashtra', '', '', '', '', ''),
(4805, 'Tirthahalli', 'Shimoga', 'Karnataka', '', '', '', '', ''),
(4806, 'Tiruchanur', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(4807, 'Tiruchendur', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(4808, 'Tiruchengode', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(4809, 'Tiruchirappalli', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(4810, 'Tirukalukundram', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4811, 'Tirukkoyilur', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(4812, 'Tirumakudal-Narsipur', 'Mysore', 'Karnataka', '', '', '', '', ''),
(4813, 'Tirumala', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(4814, 'Tirunelveli', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4815, 'Tirupathur', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4816, 'Tirupathur', 'Sivaganga', 'Tamil Nadu', '', '', '', '', ''),
(4817, 'Tirupati', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(4818, 'Tirupati (NMA)', 'Chittoor', 'Andhra Pradesh', '', '', '', '', ''),
(4819, 'Tiruppur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4820, 'Tirur', 'Malappuram', 'Kerala', '', '', '', '', ''),
(4821, 'Tirusulam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4822, 'Tiruttani', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(4823, 'Tiruvannamalai', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(4824, 'Tiruverkadu', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(4825, 'Tiruvethipuram', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(4826, 'Tiruvottiyur', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(4827, 'Tirwaganj', 'Kannauj', 'Uttar Pradesh', '', '', '', '', ''),
(4828, 'Tisra', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(4829, 'Titabor Town', 'Jorhat', 'Assam', '', '', '', '', ''),
(4830, 'Titagarh', 'North Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(4831, 'Titlagarh', 'Balangir', 'Orissa', '', '', '', '', ''),
(4832, 'Titron', 'Saharanpur', 'Uttar Pradesh', '', '', '', '', ''),
(4833, 'Tittakudi', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(4834, 'Tlabung', 'Lunglei', 'Mizoram', '', '', '', '', ''),
(4835, 'TNPL Pugalur', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(4836, 'Todabhim', 'Karauli', 'Rajasthan', '', '', '', '', ''),
(4837, 'Todaraisingh', 'Tonk', 'Rajasthan', '', '', '', '', ''),
(4838, 'Todra', 'Sawai Madhopur', 'Rajasthan', '', '', '', '', ''),
(4839, 'Tohana', 'Fatehabad', 'Haryana', '', '', '', '', ''),
(4840, 'Tondi Fatehpur', 'Jhansi', 'Uttar Pradesh', '', '', '', '', ''),
(4841, 'Tonk', 'Tonk', 'Rajasthan', '', '', '', '', ''),
(4842, 'Topa', 'Hazaribag', 'Jharkhand', '', '', '', '', ''),
(4843, 'Topchanchi', 'Dhanbad', 'Jharkhand', '', '', '', '', ''),
(4844, 'Torban (Khetri Leikai)', 'Imphal East', 'Manipur', '', '', '', '', ''),
(4845, 'Tosham', 'Bhiwani', 'Haryana', '', '', '', '', ''),
(4846, 'Totaladoh', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(4847, 'Tral', 'Pulwama', 'Jammu & Kashmir', '', '', '', '', ''),
(4848, 'Trimbak', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(4849, 'Trivandrum', 'Thiruvananthapuram', 'Kerala', '', '', '', '', ''),
(4850, 'Tuensang', 'Tuensang', 'Nagaland', '', '', '', '', ''),
(4851, 'Tufanganj', 'Koch Bihar ', 'West Bengal', '', '', '', '', ''),
(4852, 'Tuljapur', 'Osmanabad', 'Maharashtra', '', '', '', '', ''),
(4853, 'Tulsipur', 'Balrampur', 'Uttar Pradesh', '', '', '', '', ''),
(4854, 'Tumkur', 'Tumkur', 'Karnataka', '', '', '', '', ''),
(4855, 'Tumsar', 'Bhandara', 'Maharashtra', '', '', '', '', ''),
(4856, 'Tundla', 'Firozabad', 'Uttar Pradesh', '', '', '', '', ''),
(4857, 'Tundla Kham', 'Firozabad', 'Uttar Pradesh', '', '', '', '', ''),
(4858, 'Tundla Rly. Colony', 'Firozabad', 'Uttar Pradesh', '', '', '', '', ''),
(4859, 'Tuni', 'East Godavari', 'Andhra Pradesh', '', '', '', '', ''),
(4860, 'Tura', 'West Garo Hills', 'Meghalaya', '', '', '', '', ''),
(4861, 'Turuvekere', 'Tumkur', 'Karnataka', '', '', '', '', ''),
(4862, 'Uchana', 'Jind', 'Haryana', '', '', '', '', ''),
(4863, 'Uchgaon', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(4864, 'Udaipur', 'South Tripura ', 'Tripura', '', '', '', '', ''),
(4865, 'Udaipur', 'Udaipur', 'Rajasthan', '', '', '', '', ''),
(4866, 'Udaipura', 'Raisen', 'Madhya Pradesh', '', '', '', '', ''),
(4867, 'Udaipurwati', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(4868, 'Udala', 'Mayurbhanj', 'Orissa', '', '', '', '', ''),
(4869, 'Udalguri', 'Darrang', 'Assam', '', '', '', '', ''),
(4870, 'Udangudi', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(4871, 'Udayarpalayam', 'Ariyalur', 'Tamil Nadu', '', '', '', '', ''),
(4872, 'Udgir', 'Latur', 'Maharashtra', '', '', '', '', ''),
(4873, 'Udhagamandalam', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(4874, 'Udhampur', 'Udhampur', 'Jammu & Kashmir', '', '', '', '', ''),
(4875, 'Udma', 'Kasaragod', 'Kerala', '', '', '', '', ''),
(4876, 'Udpura', 'Kota', 'Rajasthan', '', '', '', '', ''),
(4877, 'Udumalaipettai', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4878, 'Udupi', 'Udupi', 'Karnataka', '', '', '', '', ''),
(4879, 'Ugu', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(4880, 'Ujhani', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(4881, 'Ujhari', 'Jyotiba Phule Nagar', 'Uttar Pradesh', '', '', '', '', ''),
(4882, 'Ujjain', 'Ujjain', 'Madhya Pradesh', '', '', '', '', ''),
(4883, 'Ukai', 'Surat', 'Gujarat', '', '', '', '', ''),
(4884, 'Ukhra', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(4885, 'Uklanamandi', 'Hisar', 'Haryana', '', '', '', '', ''),
(4886, 'Ukwa', 'Balaghat', 'Madhya Pradesh', '', '', '', '', ''),
(4887, 'Ulhasnagar', 'Thane', 'Maharashtra', '', '', '', '', ''),
(4888, 'Ullal', 'Dakshina Kannada', 'Karnataka', '', '', '', '', ''),
(4889, 'Ullur', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(4890, 'Uluberia', 'Haora ', 'West Bengal', '', '', '', '', ''),
(4891, 'Ulundurpettai', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(4892, 'Umarga', 'Osmanabad', 'Maharashtra', '', '', '', '', ''),
(4893, 'Umaria', 'Umaria', 'Madhya Pradesh', '', '', '', '', ''),
(4894, 'Umarkhed', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(4895, 'Umarkote', 'Nabarangapur', 'Orissa', '', '', '', '', ''),
(4896, 'Umarsara', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(4897, 'Umbar Pada Nandade', 'Thane', 'Maharashtra', '', '', '', '', ''),
(4898, 'Umbergaon', 'Valsad', 'Gujarat', '', '', '', '', ''),
(4899, 'Umbergaon INA', 'Valsad', 'Gujarat', '', '', '', '', ''),
(4900, 'Umrangso', 'North Cachar Hills', 'Assam', '', '', '', '', ''),
(4901, 'Umred', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(4902, 'Umreth', 'Anand', 'Gujarat', '', '', '', '', ''),
(4903, 'Umri', 'Jalaun ', 'Uttar Pradesh', '', '', '', '', ''),
(4904, 'Umri Kalan', 'Moradabad', 'Uttar Pradesh', '', '', '', '', ''),
(4905, 'Umri Pragane Balapur', 'Akola', 'Maharashtra', '', '', '', '', ''),
(4906, 'Un', 'Muzaffarnagar', 'Uttar Pradesh', '', '', '', '', ''),
(4907, 'Un', 'Surat', 'Gujarat', '', '', '', '', ''),
(4908, 'Una', 'Una', 'Himachal Pradesh', '', '', '', '', ''),
(4909, 'Una', 'Junagadh', 'Gujarat', '', '', '', '', ''),
(4910, 'Uncha Siwana', 'Karnal', 'Haryana', '', '', '', '', ''),
(4911, 'Unchahar', 'Rae Bareli', 'Uttar Pradesh', '', '', '', '', ''),
(4912, 'Unchehara', 'Satna', 'Madhya Pradesh', '', '', '', '', ''),
(4913, 'Unhel', 'Ujjain', 'Madhya Pradesh', '', '', '', '', ''),
(4914, 'Uniara', 'Tonk', 'Rajasthan', '', '', '', '', ''),
(4915, 'Unjalaur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(4916, 'Unjha', 'Mahesana', 'Gujarat', '', '', '', '', ''),
(4917, 'Unnamalaikadai', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(4918, 'Unnao', 'Unnao', 'Uttar Pradesh', '', '', '', '', ''),
(4919, 'Upleta', 'Rajkot', 'Gujarat', '', '', '', '', ''),
(4920, 'Uppal Kalan', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(4921, 'Upper Sileru Project Site Camp', 'Visakhapatnam', 'Andhra Pradesh', '', '', '', '', ''),
(4922, 'Upper Tadong', 'East', 'Sikkim', '', '', '', '', ''),
(4923, 'Uppidamangalam', 'Kapur', 'Tamil Nadu', '', '', '', '', ''),
(4924, 'Uppiliapuram', 'Tiruchirappalli', 'Tamil Nadu', '', '', '', '', ''),
(4925, 'Uran', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(4926, 'Uran Islampur', 'Sangli', 'Maharashtra', '', '', '', '', ''),
(4927, 'Urapakkam', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4928, 'Uravakonda', 'Anantapur', 'Andhra Pradesh', '', '', '', '', ''),
(4929, 'Uri', 'Baramula', 'Jammu & Kashmir', '', '', '', '', ''),
(4930, 'Urla', 'Raipur', 'Chhattisgarh', '', '', '', '', ''),
(4931, 'Urmar Tanda', 'Hoshiarpur', 'Punjab', '', '', '', '', ''),
(4932, 'Usawan', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(4933, 'Usehat', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(4934, 'Usilampatti', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(4935, 'Utekhol', 'Raigarh', 'Maharashtra', '', '', '', '', ''),
(4936, 'Uthamapalayam', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(4937, 'Uthangarai', 'Dharmapuri', 'Tamil Nadu', '', '', '', '', ''),
(4938, 'Uthayendram', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4939, 'Uthiramerur', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4940, 'Uthukkottai', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(4941, 'Uthukuli', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(4942, 'Utran', 'Surat', 'Gujarat', '', '', '', '', ''),
(4943, 'Utraula', 'Balrampur', 'Uttar Pradesh', '', '', '', '', ''),
(4944, 'Uttar Bagdogra', 'Darjiling ', 'West Bengal', '', '', '', '', ''),
(4945, 'Uttar Durgapur', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(4946, 'Uttar Goara', 'Barddhaman ', 'West Bengal', '', '', '', '', ''),
(4947, 'Uttar Kalas', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(4948, 'Uttar Kamakhyaguri', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(4949, 'Uttar Krishnapur Part-I', 'Cachar', 'Assam', '', '', '', '', ''),
(4950, 'Uttar Latabari', 'Jalpaiguri ', 'West Bengal', '', '', '', '', ''),
(4951, 'Uttar Mahammadpur', 'Murshidabad ', 'West Bengal', '', '', '', '', ''),
(4952, 'Uttar Pirpur', 'Haora ', 'West Bengal', '', '', '', '', ''),
(4953, 'Uttar Raypur', 'South Twentyfour Parganas', 'West Bengal', '', '', '', '', ''),
(4954, 'Uttarahalli', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(4955, 'Uttarkashi', 'Uttarkashi', 'Uttaranchal', '', '', '', '', ''),
(4956, 'Uttarpara Kotrung', 'Hugli ', 'West Bengal', '', '', '', '', ''),
(4957, 'V. Pudur', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(4958, 'Vada', 'Thane', 'Maharashtra', '', '', '', '', ''),
(4959, 'Vadakara', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(4960, 'Vadakarai Keezhpadugai', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4961, 'Vadakkanandal', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(4962, 'Vadakkuvalliyur', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(4963, 'Vadalur', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(4964, 'Vadamadurai', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(4965, 'Vadavalli', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4966, 'Vadgaon', 'Pune', 'Maharashtra', '', '', '', '', ''),
(4967, 'Vadgaon Kasba', 'Kolhapur', 'Maharashtra', '', '', '', '', ''),
(4968, 'Vadia', 'Narmada', 'Gujarat', '', '', '', '', ''),
(4969, 'Vadipatti', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(4970, 'Vadnagar', 'Mahesana', 'Gujarat', '', '', '', '', ''),
(4971, 'Vadodara', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(4972, 'Vadugapatti', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(4973, 'Vadugapatti', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(4974, 'Vaghodia INA', 'Vadodara', 'Gujarat', '', '', '', '', ''),
(4975, 'Vaijapur', 'Aurangabad', 'Maharashtra', '', '', '', '', ''),
(4976, 'Vaikom', 'Kottayam', 'Kerala', '', '', '', '', ''),
(4977, 'Vairengte', 'Kolasib', 'Mizoram', '', '', '', '', ''),
(4978, 'Vaitheeswarankoil', 'Nagapattinam', 'Tamil Nadu', '', '', '', '', ''),
(4979, 'Valangaiman', 'Thiruvarur', 'Tamil Nadu', '', '', '', '', ''),
(4980, 'Valapattanam', 'Kannur', 'Kerala', '', '', '', '', ''),
(4981, 'Valasaravakkam', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(4982, 'Valavanur', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(4983, 'Vallabh Vidhyanagar', 'Anand', 'Gujarat', '', '', '', '', ''),
(4984, 'Vallachira', 'Thrissur', 'Kerala', '', '', '', '', ''),
(4985, 'Vallam', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(4986, 'Valparai', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(4987, 'Valpoi', 'North Goa ', 'Goa', '', '', '', '', ''),
(4988, 'Valsad', 'Valsad', 'Gujarat', '', '', '', '', ''),
(4989, 'Valsad INA', 'Valsad', 'Gujarat', '', '', '', '', ''),
(4990, 'Valvaithankoshtam', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(4991, 'Vanasthali', 'Tonk', 'Rajasthan', '', '', '', '', ''),
(4992, 'Vanavasi', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(4993, 'Vandalur', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(4994, 'Vandavasi', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(4995, 'Vandiyur', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(4996, 'Vaniputhur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(4997, 'Vaniyambadi', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(4998, 'Vanthali', 'Junagadh', 'Gujarat', '', '', '', '', ''),
(4999, 'Vanvadi (Sadashivgad)', 'Satara', 'Maharashtra', '', '', '', '', ''),
(5000, 'Vaparala', 'Cuddapah', 'Andhra Pradesh', '', '', '', '', ''),
(5001, 'Vapi', 'Valsad', 'Gujarat', '', '', '', '', ''),
(5002, 'Vapi INA', 'Valsad', 'Gujarat', '', '', '', '', ''),
(5003, 'Varadarajanpettai', 'Ariyalur', 'Tamil Nadu', '', '', '', '', ''),
(5004, 'Varam', 'Kannur', 'Kerala', '', '', '', '', ''),
(5005, 'Varanasi', 'Varanasi', 'Uttar Pradesh', '', '', '', '', ''),
(5006, 'Varanasi', 'Varanasi', 'Uttar Pradesh', '', '', '', '', ''),
(5007, 'Varappuzha', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(5008, 'Varca', 'South Goa', 'Goa', '', '', '', '', ''),
(5009, 'Varkala', 'Thiruvananthapuram', 'Kerala', '', '', '', '', ''),
(5010, 'Vartej', 'Bhavnagar', 'Gujarat', '', '', '', '', ''),
(5011, 'Vasai', 'Thane', 'Maharashtra', '', '', '', '', ''),
(5012, 'Vasantnagar', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(5013, 'Vashind', 'Thane', 'Maharashtra', '', '', '', '', ''),
(5014, 'Vasna Borsad INA', 'Anand', 'Gujarat', '', '', '', '', ''),
(5015, 'Vastral', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(5016, 'Vastrapur', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(5017, 'Vasudevanallur', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(5018, 'Vathirairuppu', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(5019, 'Vazhakkala', 'Ernakulam', 'Kerala', '', '', '', '', ''),
(5020, 'Vazhapadi', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(5021, 'Vedapatti', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(5022, 'Vedaranyam', 'Nagapattinam', 'Tamil Nadu', '', '', '', '', ''),
(5023, 'Vedasandur', 'Dindigul', 'Tamil Nadu', '', '', '', '', ''),
(5024, 'Veeraganur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(5025, 'Veerakeralam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(5026, 'Veerakkalpudur', 'Salem', 'Tamil Nadu', '', '', '', '', ''),
(5027, 'Veerapandi', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(5028, 'Veerapandi', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(5029, 'Veerapandi', 'Theni', 'Tamil Nadu', '', '', '', '', ''),
(5030, 'Veerappanchatram', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(5031, 'Veeravanallur', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(5032, 'Veerbhadra', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(5033, 'Vehicle Fac. Jabalpur', 'Jabalpur', 'Madhya Pradesh', '', '', '', '', ''),
(5034, 'Vejalpur', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(5035, 'Velampalayam', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(5036, 'Velankanni', 'Nagapattinam', 'Tamil Nadu', '', '', '', '', ''),
(5037, 'Vellakinar', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(5038, 'Vellakoil', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(5039, 'Vellalur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(5040, 'Vellimalai', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(5041, 'Vellore', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(5042, 'Vellottamparappu', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(5043, 'Velur', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(5044, 'Vengampudur', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(5045, 'Vengathur', 'Thiruvallur', 'Tamil Nadu', '', '', '', '', ''),
(5046, 'Vengurla', 'Sindhudurg', 'Maharashtra', '', '', '', '', ''),
(5047, 'Venkarai', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(5048, 'Venkatagiri', 'Nellore', 'Andhra Pradesh', '', '', '', '', ''),
(5049, 'Venkatapura', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(5050, 'Venmanad', 'Thrissur', 'Kerala', '', '', '', '', ''),
(5051, 'Vennanthur', 'Namakkal', 'Tamil Nadu', '', '', '', '', ''),
(5052, 'Vepagunta', 'Visakhapatnam', 'Andhra Pradesh', '', '', '', '', ''),
(5053, 'Veppathur', 'Thanjavur', 'Tamil Nadu', '', '', '', '', ''),
(5054, 'Veraval', 'Junagadh', 'Gujarat', '', '', '', '', ''),
(5055, 'Verkilambi', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(5056, 'Vetapalem', 'Prakasam', 'Andhra Pradesh', '', '', '', '', ''),
(5057, 'Vettaikaranpudur', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(5058, 'Vettavalam', 'Tiruvanamalai', 'Tamil Nadu', '', '', '', '', ''),
(5059, 'Vicarabad', 'Rangareddi', 'Andhra Pradesh', '', '', '', '', ''),
(5060, 'Vidisha', 'Vidisha', 'Madhya Pradesh', '', '', '', '', ''),
(5061, 'Vidyavihar', 'Jhunjhunun', 'Rajasthan', '', '', '', '', ''),
(5062, 'Vijaigarh', 'Aligarh', 'Uttar Pradesh', '', '', '', '', ''),
(5063, 'Vijainagar', 'Ganganagar', 'Rajasthan', '', '', '', '', ''),
(5064, 'Vijainagar', 'Ajmer', 'Rajasthan', '', '', '', '', ''),
(5065, 'Vijalpor', 'Navsari', 'Gujarat', '', '', '', '', ''),
(5066, 'Vijapur', 'Mahesana', 'Gujarat', '', '', '', '', ''),
(5067, 'Vijay Pur', 'Jammu', 'Jammu & Kashmir', '', '', '', '', ''),
(5068, 'Vijayapura', 'Bangalore Rural', 'Karnataka', '', '', '', '', ''),
(5069, 'Vijayapuri', 'Erode', 'Tamil Nadu', '', '', '', '', ''),
(5070, 'Vijayapuri (North)', 'Nalgonda', 'Andhra Pradesh', '', '', '', '', ''),
(5071, 'Vijayawada', 'Krishna', 'Andhra Pradesh', '', '', '', '', ''),
(5072, 'Vijayraghavgarh', 'Katni', 'Madhya Pradesh', '', '', '', '', ''),
(5073, 'Vikasnagar', 'Dehradun', 'Uttaranchal', '', '', '', '', ''),
(5074, 'Vikramasingapuram', 'Tirunelveli', 'Tamil Nadu', '', '', '', '', ''),
(5075, 'Vikravandi', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(5076, 'Vilangudi', 'Madurai', 'Tamil Nadu', '', '', '', '', ''),
(5077, 'Vilankurichi', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(5078, 'Vilapakkam', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(5079, 'Vilathikulam', 'Toothukudi', 'Tamil Nadu', '', '', '', '', ''),
(5080, 'Vilavur', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(5081, 'Villiappally', 'Kozhikode', 'Kerala', '', '', '', '', ''),
(5082, 'Villukuri', 'Kanniyakumari', 'Tamil Nadu', '', '', '', '', ''),
(5083, 'Viluppuram', 'Viluppuram', 'Tamil Nadu', '', '', '', '', ''),
(5084, 'Vinukonda', 'Guntur', 'Andhra Pradesh', '', '', '', '', ''),
(5085, 'Virajpet', 'Kodagu', 'Karnataka', '', '', '', '', ''),
(5086, 'Viramgam', 'Ahmadabad', 'Gujarat', '', '', '', '', ''),
(5087, 'Virar', 'Thane', 'Maharashtra', '', '', '', '', ''),
(5088, 'Viratnagar', 'Jaipur', 'Rajasthan', '', '', '', '', ''),
(5089, 'Virudhachalam', 'Cuddalore', 'Tamil Nadu', '', '', '', '', ''),
(5090, 'Virudhunagar', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(5091, 'Virupakshipuram', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(5092, 'Visakhapatnam', 'Visakhapatnam', 'Andhra Pradesh', '', '', '', '', ''),
(5093, 'Visavadar', 'Junagadh', 'Gujarat', '', '', '', '', ''),
(5094, 'Vishrampur', 'Surguja', 'Chhattisgarh', '', '', '', '', ''),
(5095, 'Visnagar', 'Mahesana', 'Gujarat', '', '', '', '', ''),
(5096, 'Viswanatham', 'Virudhunagar', 'Tamil Nadu', '', '', '', '', ''),
(5097, 'Vita', 'Sangli', 'Maharashtra', '', '', '', '', ''),
(5098, 'Vitthal Udyognagar INA', 'Anand', 'Gujarat', '', '', '', '', ''),
(5099, 'Vizianagaram', 'Vizianagaram', 'Andhra Pradesh', '', '', '', '', ''),
(5100, 'Vrindavan', 'Mathura', 'Uttar Pradesh', '', '', '', '', ''),
(5101, 'Vyara', 'Surat', 'Gujarat', '', '', '', '', ''),
(5102, 'Wadgaon Road', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(5103, 'Wadhwan', 'Surendranagar', 'Gujarat', '', '', '', '', ''),
(5104, 'Wadi', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(5105, 'Wadi', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(5106, 'Wadi ACC', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(5107, 'Waghapur', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(5108, 'Wai', 'Satara', 'Maharashtra', '', '', '', '', ''),
(5109, 'Wajegaon', 'Nanded', 'Maharashtra', '', '', '', '', ''),
(5110, 'Walajabad', 'Kancheepuram', 'Tamil Nadu', '', '', '', '', ''),
(5111, 'Walajapet', 'Vellore', 'Tamil Nadu', '', '', '', '', ''),
(5112, 'Walani', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(5113, 'Waliv', 'Thane', 'Maharashtra', '', '', '', '', ''),
(5114, 'Wanadongri', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(5115, 'Wanaparthi', 'Mahbubnagar', 'Andhra Pradesh', '', '', '', '', ''),
(5116, 'Wangjing', 'Thoubal', 'Manipur', '', '', '', '', ''),
(5117, 'Wangoi', 'Imphal West', 'Manipur', '', '', '', '', ''),
(5118, 'Wani', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(5119, 'Wankaner', 'Rajkot', 'Gujarat', '', '', '', '', ''),
(5120, 'Wara Seoni', 'Balaghat', 'Madhya Pradesh', '', '', '', '', ''),
(5121, 'Warangal', 'Warangal', 'Andhra Pradesh', '', '', '', '', ''),
(5122, 'Wardha', 'Wardha', 'Maharashtra', '', '', '', '', ''),
(5123, 'Warhapur', 'Bijnor', 'Uttar Pradesh', '', '', '', '', ''),
(5124, 'Warisaliganj', 'Nawada', 'Bihar', '', '', '', '', ''),
(5125, 'Warora', 'Chandrapur', 'Maharashtra', '', '', '', '', ''),
(5126, 'Warud', 'Amravati', 'Maharashtra', '', '', '', '', ''),
(5127, 'Washim', 'Washim', 'Maharashtra', '', '', '', '', ''),
(5128, 'Wazirganj', 'Budaun', 'Uttar Pradesh', '', '', '', '', ''),
(5129, 'Weir', 'Bharatpur', 'Rajasthan', '', '', '', '', ''),
(5130, 'Wellington', 'The Nilgiris', 'Tamil Nadu', '', '', '', '', ''),
(5131, 'Williamnagar', 'East Garo Hills', 'Meghalaya', '', '', '', '', ''),
(5132, 'Wokha', 'Wokha', 'Nagaland', '', '', '', '', ''),
(5133, 'Yadagirigutta', 'Nalgonda', 'Andhra Pradesh', '', '', '', '', ''),
(5134, 'Yadgir', 'Gulbarga', 'Karnataka', '', '', '', '', ''),
(5135, 'Yairipok', 'Thoubal', 'Manipur', '', '', '', '', ''),
(5136, 'Yamunanagar', 'Yamunanagar', 'Haryana', '', '', '', '', ''),
(5137, 'Yanam', 'Yanam', 'Pondicherry *', '', '', '', '', ''),
(5138, 'Yavatmal', 'Yavatmal', 'Maharashtra', '', '', '', '', ''),
(5139, 'Yawal', 'Jalgaon', 'Maharashtra', '', '', '', '', ''),
(5140, 'Yelahanka', 'Bangalore', 'Karnataka', '', '', '', '', ''),
(5141, 'Yelandur', 'Chamarajanagar', 'Karnataka', '', '', '', '', ''),
(5142, 'Yelbarga', 'Koppal', 'Karnataka', '', '', '', '', ''),
(5143, 'Yellandu', 'Khammam', 'Andhra Pradesh', '', '', '', '', ''),
(5144, 'Yellapur', 'Uttara Kannada', 'Karnataka', '', '', '', '', ''),
(5145, 'Yemmiganur', 'Kurnool', 'Andhra Pradesh', '', '', '', '', ''),
(5146, 'Yenagudde', 'Udupi', 'Karnataka', '', '', '', '', ''),
(5147, 'Yerkheda', 'Nagpur', 'Maharashtra', '', '', '', '', ''),
(5148, 'Yerraguntla', 'Cuddapah', 'Andhra Pradesh', '', '', '', '', ''),
(5149, 'Yevla', 'Nashik', 'Maharashtra', '', '', '', '', ''),
(5150, 'Yol', 'Kangra', 'Himachal Pradesh', '', '', '', '', ''),
(5151, 'Zahirabad', 'Medak', 'Andhra Pradesh', '', '', '', '', ''),
(5152, 'Zaidpur', 'Barabanki', 'Uttar Pradesh', '', '', '', '', ''),
(5153, 'Zalod', 'Dohad', 'Gujarat', '', '', '', '', ''),
(5154, 'Zamania', 'Ghazipur', 'Uttar Pradesh', '', '', '', '', ''),
(5155, 'Zamin Uthukuli', 'Coimbatore', 'Tamil Nadu', '', '', '', '', ''),
(5156, 'Zawlnuam', 'Mamit', 'Mizoram', '', '', '', '', ''),
(5157, 'Ziauddin Pur', 'North East', 'Delhi *', '', '', '', '', ''),
(5158, 'Zira', 'Firozpur', 'Punjab', '', '', '', '', ''),
(5159, 'Zirakpur', 'Patiala', 'Punjab', '', '', '', '', ''),
(5160, 'Ziro', 'Lower Subansiri', 'Arunachal Pradesh', '', '', '', '', ''),
(5161, 'Zunheboto', 'Zunheboto', 'Nagaland', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `faculty_id` int(11) NOT NULL,
  `faculty_pid` int(11) NOT NULL,
  `faculty_name` varchar(100) NOT NULL,
  `faculty_url` varchar(100) NOT NULL,
  `faculty_href_url` varchar(500) NOT NULL,
  `faculty_video` varchar(100) NOT NULL,
  `faculty_title` varchar(100) NOT NULL,
  `faculty_slogan` varchar(100) NOT NULL,
  `faculty_meta_title` varchar(100) NOT NULL,
  `faculty_meta_keyword` varchar(200) NOT NULL,
  `faculty_meta_description` varchar(200) NOT NULL,
  `faculty_image` varchar(100) NOT NULL,
  `faculty_images` varchar(100) NOT NULL,
  `faculty_experience` varchar(100) NOT NULL,
  `faculty_icon` varchar(100) NOT NULL,
  `faculty_short_desciption` longtext NOT NULL,
  `faculty_full_desciption` longtext NOT NULL,
  `faculty_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `faculty_orders` int(11) NOT NULL,
  `faculty_created` datetime NOT NULL,
  `faculty_modified` datetime NOT NULL,
  `faculty_status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `faqs_id` int(11) NOT NULL,
  `faqs_pid` int(11) NOT NULL DEFAULT '0',
  `faqs_user_id` int(11) NOT NULL,
  `faqs_title` varchar(150) NOT NULL,
  `faqs_text` varchar(1000) NOT NULL,
  `faqs_url` varchar(255) NOT NULL,
  `faqs_image` varchar(100) NOT NULL,
  `faqs_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `faqs_status` enum('Enable','Disable','Block') NOT NULL,
  `faqs_position` int(11) NOT NULL,
  `faqs_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fashion`
--

CREATE TABLE `fashion` (
  `fashion_id` int(11) NOT NULL,
  `fashion_pid` int(11) NOT NULL DEFAULT '0',
  `fashion_user_id` int(11) NOT NULL,
  `fashion_title` varchar(150) NOT NULL,
  `fashion_text` varchar(1000) NOT NULL,
  `fashion_url` varchar(255) NOT NULL,
  `fashion_image` varchar(100) NOT NULL,
  `fashion_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `fashion_status` enum('Enable','Disable','Block') NOT NULL,
  `fashion_position` int(11) NOT NULL,
  `fashion_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `feedback_id` int(11) NOT NULL,
  `feedback_name` varchar(100) NOT NULL,
  `feedback_email` varchar(100) NOT NULL,
  `feedback_mobile` varchar(50) NOT NULL,
  `feedback_subject` varchar(100) NOT NULL,
  `feedback_content` varchar(1000) NOT NULL,
  `feedback_url` varchar(100) NOT NULL,
  `feedback_image` varchar(100) NOT NULL,
  `feedback_status` enum('Enable','Disable','Block') NOT NULL,
  `feedback_order` int(11) NOT NULL,
  `feedback_add_date` date NOT NULL,
  `feedback_edit_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fellowships`
--

CREATE TABLE `fellowships` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foodtype`
--

CREATE TABLE `foodtype` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(192) COLLATE latin1_general_ci NOT NULL,
  `country_iso_code_2` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `country_iso_code_3` varchar(9) COLLATE latin1_general_ci NOT NULL,
  `country_order` int(11) UNSIGNED NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Active','Inactive') COLLATE latin1_general_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_pid` int(11) NOT NULL DEFAULT '0',
  `gallery_mid` int(11) NOT NULL,
  `gallery_gproid` int(11) NOT NULL,
  `gallery_user_id` int(11) NOT NULL,
  `gallery_title` varchar(150) NOT NULL,
  `gallery_content` varchar(1000) NOT NULL,
  `gallery_url` varchar(255) NOT NULL,
  `gallery_image` varchar(100) NOT NULL,
  `gallery_video` varchar(100) NOT NULL,
  `gallery_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `gallery_status` enum('Enable','Disable','Block') NOT NULL,
  `gallery_position` int(11) NOT NULL,
  `gallery_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_pid`, `gallery_mid`, `gallery_gproid`, `gallery_user_id`, `gallery_title`, `gallery_content`, `gallery_url`, `gallery_image`, `gallery_video`, `gallery_is_home`, `gallery_status`, `gallery_position`, `gallery_add_date`) VALUES
(1, 0, 0, 0, 1, 'Vpestify', '', '', '626289133e022d0e542a59cedbee6609.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(2, 0, 0, 0, 1, 'Vpestify', '', '', '6ea6bb6a036ad937c422a95026f0968b.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(3, 0, 0, 0, 1, 'Vpestify', '', '', '225c51e9b476ada6d963f6112f8ad765.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(4, 0, 0, 0, 1, 'Vpestify', '', '', '01c787c078ab928c60b48e5ad0861ddd.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(5, 0, 0, 0, 1, 'Vpestify', '', '', '58557eb62b39f37d4ef1e589ed57fad7.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(6, 0, 0, 0, 1, 'Vpestify', '', '', '6118cbb74b4c98f881d92cccc91191ba.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(7, 0, 0, 0, 1, 'Vpestify', '', '', 'b87f123d948f62e053b9dc8205e40cd6.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(8, 0, 0, 0, 1, 'Vpestify', '', '', 'a5816586aeb793a33ae52e88f391e1ed.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(9, 0, 0, 0, 1, 'Vpestify', '', '', '77129ef87d1f70b139d7a6bb11d40ab5.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(10, 0, 0, 0, 1, 'Vpestify', '', '', '155239b36ff78e5c51cec204e5a303b1.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(11, 0, 0, 0, 1, 'Vpestify', '', '', '4172ed342c64df436f881598ca0f47da.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(12, 0, 0, 0, 1, 'Vpestify', '', '', '6026cd89a4ccec9e9070c4a782df212c.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(13, 0, 0, 0, 1, 'Vpestify', '', '', '1b8f0f492a301fcac4db957f0df6bc6f.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(14, 0, 0, 0, 1, 'Vpestify', '', '', '9565394737c72928c0140ffe8c1b6b01.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(15, 0, 0, 0, 1, 'Vpestify', '', '', '16899426fc2fea4ffad47878a1180686.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(16, 0, 0, 0, 1, 'Vpestify', '', '', '6588552c7d3e1259fff6b5a29560c9e9.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(17, 0, 0, 0, 1, 'Vpestify', '', '', '5d5ccff466c921b5d942935dd1d27bcd.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(18, 0, 0, 0, 1, 'Vpestify', '', '', '15c7d4db7977d7326c79aa4eedca1d5a.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(19, 0, 0, 0, 1, 'Vpestify', '', '', 'c4c8e764671fcd7667ba2b4228334024.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(20, 0, 0, 0, 1, 'Vpestify', '', '', '1fe971099a801df3f005f5df603ff6a3.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(21, 0, 0, 0, 1, 'Vpestify', '', '', '3ca827e011b6a51bf299fa6131e0cbe1.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(22, 0, 0, 0, 1, 'Vpestify', '', '', 'a523418b8746707a1d4f11a00f22ce85.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(23, 0, 0, 0, 1, 'Vpestify', '', '', '7d51936e2f240c1ae8445169e196d9bf.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(24, 0, 0, 0, 1, 'Vpestify', '', '', '43c84ad7f8e39f4fe7b7bdc1368e70dd.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(25, 0, 0, 0, 1, 'Vpestify', '', '', '3b3f2daefc0372b3fca4e5cfc7a235d0.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(26, 0, 0, 0, 1, 'Vpestify', '', '', 'cf0ca435094820ed6eb7e6f822bc74c5.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(27, 0, 0, 0, 1, 'Vpestify', '', '', '9a49d34978dbb3c1c4b68ba4a91a8717.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(28, 0, 0, 0, 1, 'Vpestify', '', '', '9ca12adaa96ed4eff6b746c9ee0c2b9a.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(29, 0, 0, 0, 1, 'Vpestify', '', '', '33aa83bb78f6056c43844d44d234ec97.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(30, 0, 0, 0, 1, 'Vpestify', '', '', 'edf8c8038bcc8a0226f500f006d470c3.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(31, 0, 0, 0, 1, 'Vpestify', '', '', '2675650f3221f22b927e292f608a618c.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(32, 0, 0, 0, 1, 'Vpestify', '', '', 'a767b28d69529738517594b1f85a7830.jpg', '', 'No', 'Enable', 0, '2020-08-20'),
(33, 0, 0, 0, 1, 'Vpestify', '', '', '6c46adffe2f86356a9b2b56e08b604e4.jpg', '', 'No', 'Enable', 0, '2020-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `gallerycate`
--

CREATE TABLE `gallerycate` (
  `gallery_cid` int(11) NOT NULL,
  `gallery_cpid` int(11) NOT NULL,
  `gallery_user_cid` int(11) NOT NULL,
  `gallery_ctitle` varchar(150) NOT NULL,
  `gallery_curl` varchar(100) NOT NULL,
  `gallery_cdescription` varchar(500) NOT NULL,
  `gallery_cimage` varchar(100) NOT NULL,
  `gallery_cstatus` enum('Enable','Disable','Block') NOT NULL,
  `gallery_cposition` int(11) NOT NULL,
  `gallery_cadd_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `orders` int(11) NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `pid`, `mid`, `name`, `adddate`, `editdate`, `orders`, `status`) VALUES
(1, 2, 1, 'Male', '2019-11-15', '0000-00-00', 0, 'Enable'),
(2, 2, 1, 'Female', '2019-11-15', '0000-00-00', 0, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `guides`
--

CREATE TABLE `guides` (
  `guide_id` int(11) NOT NULL,
  `guide_pid` int(11) NOT NULL DEFAULT '0',
  `guide_user_id` int(11) NOT NULL,
  `guide_title` varchar(150) NOT NULL,
  `guide_text` varchar(1000) NOT NULL,
  `guide_url` varchar(255) NOT NULL,
  `guide_image` varchar(100) NOT NULL,
  `guide_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `guide_status` enum('Enable','Disable','Block') NOT NULL,
  `guide_position` int(11) NOT NULL,
  `guide_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ratings` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `position` int(11) NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `imagesettings`
--

CREATE TABLE `imagesettings` (
  `imgid` int(11) NOT NULL,
  `BIGWIDTH` varchar(100) NOT NULL,
  `BIGHEIGHT` varchar(100) NOT NULL,
  `ZOOMHEIGHT` varchar(100) NOT NULL,
  `ZOOMWIDTH` varchar(100) NOT NULL,
  `NORMALHEIGHT` varchar(100) NOT NULL,
  `NORMALWIDTH` varchar(100) NOT NULL,
  `SMALLHEIGHT` varchar(100) NOT NULL,
  `SMALLWIDTH` varchar(100) NOT NULL,
  `THUMBHEIGHT` varchar(100) NOT NULL,
  `THUMBWIDTH` varchar(100) NOT NULL,
  `PRODSLIDERWIDTH` varchar(100) NOT NULL,
  `PRODSLIDERHEIGHT` varchar(100) NOT NULL,
  `LOGOHEIGHT` varchar(100) NOT NULL,
  `LOGOWIDTH` varchar(100) NOT NULL,
  `HEADERHEIGHT` varchar(100) NOT NULL,
  `HEADERWIDTH` varchar(100) NOT NULL,
  `GALLERYHEIGHT` varchar(100) NOT NULL,
  `GALLERYWIDTH` varchar(100) NOT NULL,
  `CMSBIGWIDTH` varchar(100) NOT NULL,
  `CMSBIGHEIGHT` varchar(100) NOT NULL,
  `CMSZOOMWIDTH` varchar(100) NOT NULL,
  `CMSZOOMHEIGHT` varchar(100) NOT NULL,
  `CMSNORMALWIDTH` varchar(100) NOT NULL,
  `CMSNORMALHEIGHT` varchar(100) NOT NULL,
  `CMSSMALLWIDTH` varchar(100) NOT NULL,
  `CMSSMALLHEIGHT` varchar(100) NOT NULL,
  `CMSTHUMBWIDTH` varchar(100) NOT NULL,
  `CMSTHUMBHEIGHT` varchar(100) NOT NULL,
  `CUSTOMWIDTH` varchar(100) NOT NULL,
  `CUSTOMHEIGHT` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imagesettings`
--

INSERT INTO `imagesettings` (`imgid`, `BIGWIDTH`, `BIGHEIGHT`, `ZOOMHEIGHT`, `ZOOMWIDTH`, `NORMALHEIGHT`, `NORMALWIDTH`, `SMALLHEIGHT`, `SMALLWIDTH`, `THUMBHEIGHT`, `THUMBWIDTH`, `PRODSLIDERWIDTH`, `PRODSLIDERHEIGHT`, `LOGOHEIGHT`, `LOGOWIDTH`, `HEADERHEIGHT`, `HEADERWIDTH`, `GALLERYHEIGHT`, `GALLERYWIDTH`, `CMSBIGWIDTH`, `CMSBIGHEIGHT`, `CMSZOOMWIDTH`, `CMSZOOMHEIGHT`, `CMSNORMALWIDTH`, `CMSNORMALHEIGHT`, `CMSSMALLWIDTH`, `CMSSMALLHEIGHT`, `CMSTHUMBWIDTH`, `CMSTHUMBHEIGHT`, `CUSTOMWIDTH`, `CUSTOMHEIGHT`, `updated_at`) VALUES
(1, '417', '417', '417', '417', '417', '417', '417', '417', '70', '70', '', '', '70', '100', '300', '400', '600', '500', '379', '730', '300', '200', '730', '379', '100', '100', '50', '50', '417', '417', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `installments`
--

CREATE TABLE `installments` (
  `insid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `ins_admns_id` int(11) NOT NULL,
  `ins_stud_id` int(11) NOT NULL,
  `ins_course_id` int(11) NOT NULL,
  `ins_date` date NOT NULL,
  `ins_stud_monthly_installment` float(10,2) NOT NULL,
  `ins_stud_monthly_late_fee` float(10,2) NOT NULL,
  `ins_stud_total_after_late_fee` float(10,2) NOT NULL,
  `ins_stud_monthly_received_amount` float(10,2) NOT NULL,
  `ins_stud_monthly_amount_balance` float(10,2) NOT NULL,
  `ins_stud_balance` float(10,2) NOT NULL,
  `ins_number` int(11) NOT NULL,
  `ins_stud_received` enum('Yes','No') NOT NULL DEFAULT 'No',
  `ins_received_receipt_no` varchar(100) NOT NULL,
  `ins_received_date` datetime NOT NULL,
  `ins_created` datetime NOT NULL,
  `ins_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobtypes`
--

CREATE TABLE `jobtypes` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable',
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable',
  `adddate` date NOT NULL,
  `editdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `pid`, `country_id`, `name`, `status`, `adddate`, `editdate`) VALUES
(1, 1, 0, '36 gaj', 'Enable', '2019-11-26', '0000-00-00'),
(2, 1, 0, 'Badkal2', 'Enable', '2019-11-26', '2019-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable',
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `logo_id` int(11) NOT NULL,
  `logo_user_id` int(11) NOT NULL,
  `logo_title` varchar(150) NOT NULL,
  `logo_image` varchar(100) NOT NULL,
  `right_logo_image` varchar(100) NOT NULL,
  `footer_logo_image` varchar(100) NOT NULL,
  `favicon_icon_image` varchar(100) NOT NULL,
  `iso_image` varchar(100) NOT NULL,
  `extra_image1` varchar(100) NOT NULL,
  `extra_image2` varchar(100) NOT NULL,
  `extra_image3` varchar(100) NOT NULL,
  `extra_image4` varchar(100) NOT NULL,
  `extra_image5` varchar(100) NOT NULL,
  `logo_popup_image` varchar(100) NOT NULL,
  `right_logo_popup_image` varchar(100) NOT NULL,
  `footer_logo_popup_image` varchar(100) NOT NULL,
  `iso_popup_image` varchar(100) NOT NULL,
  `extra_image1_popup` varchar(100) NOT NULL,
  `extra_image2_popup` varchar(100) NOT NULL,
  `extra_image3_popup` varchar(100) NOT NULL,
  `extra_image4_popup` varchar(100) NOT NULL,
  `extra_image5_popup` varchar(100) NOT NULL,
  `logo_created` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`logo_id`, `logo_user_id`, `logo_title`, `logo_image`, `right_logo_image`, `footer_logo_image`, `favicon_icon_image`, `iso_image`, `extra_image1`, `extra_image2`, `extra_image3`, `extra_image4`, `extra_image5`, `logo_popup_image`, `right_logo_popup_image`, `footer_logo_popup_image`, `iso_popup_image`, `extra_image1_popup`, `extra_image2_popup`, `extra_image3_popup`, `extra_image4_popup`, `extra_image5_popup`, `logo_created`) VALUES
(1, 0, 'Vpestify', 'd449fe98a1cfec4e1ef28040ef5adf5d.png', '95365a6b130498e95d18c99a8f76ae76.jpg', 'ab8c791651b6dd5f1d5e3cf2771a9211.png', 'b85de16e9d699346340b80efeb1e2c10.png', 'fbfb321fc786332aa8b121b419e79ab6.jpg', '', 'd1cf7e00dd456d3abf0b5b18cf157ba8.jpg', '', '', 'e29708a0615c7bd702d364d4ca5ed157.jpg', '04db99009eae499f3d11e5d9a736a14b.png', 'ccf432f89df108bb77c3b19d8fb7925a.jpg', '732c9621f0dfdc93fabf3ead66ae1613.jpg', '28c0b0d90cfdc2ef2cf62b503179ce78.jpg', 'aeaea7096a4e4ba103b4fe46f8bea2a0.jpg', '549088fc74ea3ee3b0fee701033e0ed2.jpg', '769bc01ced91c5b5f96fcb2815fda9d2.jpg', '6199c9bfc5e231f3dde27aca3a741aed.jpg', '7b4cec1f825d787e324aa36a15506d1a.jpg', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `mcqtestoptions`
--

CREATE TABLE `mcqtestoptions` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `mcqtestqa_id` int(11) NOT NULL,
  `questionchoice` varchar(255) NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable',
  `adddate` date NOT NULL,
  `editdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcqtestoptions`
--

INSERT INTO `mcqtestoptions` (`id`, `mid`, `pid`, `course_id`, `mcqtestqa_id`, `questionchoice`, `status`, `adddate`, `editdate`) VALUES
(1, 1, 9, 4, 1, 'a', 'Enable', '0000-00-00', '0000-00-00'),
(2, 1, 9, 4, 1, 'b', 'Enable', '0000-00-00', '0000-00-00'),
(3, 1, 9, 4, 1, 'c', 'Enable', '0000-00-00', '0000-00-00'),
(4, 1, 9, 4, 1, 'd', 'Enable', '0000-00-00', '0000-00-00'),
(5, 1, 9, 4, 2, 'a', 'Enable', '0000-00-00', '0000-00-00'),
(6, 1, 9, 4, 2, 'b', 'Enable', '0000-00-00', '0000-00-00'),
(7, 1, 9, 4, 2, 'c', 'Enable', '0000-00-00', '0000-00-00'),
(8, 1, 9, 4, 2, 'd', 'Enable', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `mcqtestqa`
--

CREATE TABLE `mcqtestqa` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `mcqtest_id` int(11) NOT NULL,
  `mcqtestoptions_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable',
  `adddate` date NOT NULL,
  `editdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcqtestqa`
--

INSERT INTO `mcqtestqa` (`id`, `mid`, `pid`, `course_id`, `mcqtest_id`, `mcqtestoptions_id`, `question`, `status`, `adddate`, `editdate`) VALUES
(1, 1, 9, 4, 1, 3, 'What is my name', 'Enable', '2019-12-26', '0000-00-00'),
(2, 1, 9, 4, 1, 5, 'What is Your Father Name', 'Enable', '2019-12-26', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `mcqtests`
--

CREATE TABLE `mcqtests` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `testdate` date NOT NULL,
  `testtime` time NOT NULL,
  `teststatus` enum('Live','None','Completed') NOT NULL DEFAULT 'None',
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable',
  `adddate` date NOT NULL,
  `editdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcqtests`
--

INSERT INTO `mcqtests` (`id`, `mid`, `pid`, `course_id`, `testdate`, `testtime`, `teststatus`, `status`, `adddate`, `editdate`) VALUES
(1, 1, 9, 4, '2019-12-25', '00:00:00', 'None', 'Enable', '2019-12-26', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `member_pid` int(11) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `member_location` varchar(100) NOT NULL,
  `member_photo` varchar(100) NOT NULL,
  `member_small_description` varchar(500) NOT NULL,
  `member_full_description` longtext NOT NULL,
  `member_adddate` date NOT NULL,
  `member_editdate` date NOT NULL,
  `member_status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable',
  `member_position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `membershipfeatures`
--

CREATE TABLE `membershipfeatures` (
  `id` int(11) NOT NULL,
  `membsid` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `type` enum('Yes','No') NOT NULL DEFAULT 'No',
  `image` varchar(100) NOT NULL,
  `pdf` varchar(100) NOT NULL,
  `feature_description` longtext NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable',
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `mem_id` int(11) NOT NULL,
  `mem_pid` int(11) NOT NULL,
  `mem_name` varchar(100) NOT NULL,
  `mem_coupon` int(11) NOT NULL,
  `mem_image` varchar(100) NOT NULL,
  `mem_amount` float(10,2) NOT NULL,
  `mem_duration` varchar(100) NOT NULL,
  `mem_small_description` varchar(500) NOT NULL,
  `mem_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `mem_adddate` date NOT NULL,
  `mem_editdate` date NOT NULL,
  `mem_status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable',
  `mem_position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `multipalcontacts`
--

CREATE TABLE `multipalcontacts` (
  `mcont_id` int(11) NOT NULL,
  `mcont_pid` int(11) NOT NULL,
  `mcont_title` varchar(200) NOT NULL,
  `mcont_extra_text_one` varchar(200) NOT NULL,
  `mcont_extra_text_two` varchar(200) NOT NULL,
  `mcont_name` varchar(100) NOT NULL,
  `mcont_comp_name` varchar(100) NOT NULL,
  `mcont_email` varchar(100) NOT NULL,
  `mcont_enquiry_email` varchar(100) NOT NULL,
  `mcont_mobile` varchar(100) NOT NULL,
  `mcont_labdline` varchar(100) NOT NULL,
  `mcont_whatsapp_number` varchar(100) NOT NULL,
  `mcont_cust_supp_number` varchar(100) NOT NULL,
  `mcont_fax` varchar(100) NOT NULL,
  `mcont_address` varchar(255) NOT NULL,
  `mcont_state` varchar(100) NOT NULL,
  `mcont_city` varchar(100) NOT NULL,
  `mcont_pincode` varchar(20) NOT NULL,
  `mcont_country` varchar(100) NOT NULL,
  `mcont_website` varchar(100) NOT NULL,
  `mcont_gp_link` varchar(100) NOT NULL,
  `mcont_fb_link` varchar(255) NOT NULL,
  `mcont_fb_like_code` varchar(500) NOT NULL,
  `mcont_ytd_link` varchar(500) NOT NULL,
  `mcont_twt_link` varchar(255) NOT NULL,
  `mcont_linkedin_link` varchar(255) NOT NULL,
  `mcont_live_chat` varchar(1000) NOT NULL,
  `mcont_skype` varchar(100) NOT NULL,
  `mcont_instagram_link` varchar(100) NOT NULL,
  `mcont_pinterest_link` varchar(100) NOT NULL,
  `mcont_others_link` varchar(100) NOT NULL,
  `mcont_working_time` varchar(100) NOT NULL,
  `mcont_vistor_counter` int(11) NOT NULL,
  `mcont_google_maps` longtext NOT NULL,
  `mcont_blog_url` varchar(200) NOT NULL,
  `mcont_created` date NOT NULL,
  `mcont_status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable',
  `mcont_position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `myshippings`
--

CREATE TABLE `myshippings` (
  `shp_id` int(11) NOT NULL,
  `shp_reg_id` int(11) NOT NULL,
  `shp_ord_id` int(11) NOT NULL,
  `shp_name` varchar(100) NOT NULL,
  `shp_address` varchar(255) NOT NULL,
  `shp_city` varchar(100) NOT NULL,
  `shp_state` varchar(100) NOT NULL,
  `shp_country` varchar(100) NOT NULL,
  `shp_zip` varchar(20) NOT NULL,
  `shp_mobile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newscategories`
--

CREATE TABLE `newscategories` (
  `news_cid` int(11) NOT NULL,
  `news_cpid` int(11) NOT NULL,
  `news_user_cid` int(11) NOT NULL,
  `news_ctitle` varchar(150) NOT NULL,
  `news_curl` varchar(100) NOT NULL,
  `news_cdescription` varchar(500) NOT NULL,
  `news_cimage` varchar(100) NOT NULL,
  `news_hot` enum('Yes','No') NOT NULL DEFAULT 'No',
  `news_cstatus` enum('Enable','Disable','Block') NOT NULL,
  `news_cposition` int(11) NOT NULL,
  `news_cadd_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newscategories`
--

INSERT INTO `newscategories` (`news_cid`, `news_cpid`, `news_user_cid`, `news_ctitle`, `news_curl`, `news_cdescription`, `news_cimage`, `news_hot`, `news_cstatus`, `news_cposition`, `news_cadd_date`) VALUES
(1, 0, 1, 'Newspaper', 'newspaper', '', '742fd930fb48a471cff004f1d393f684.png', 'Yes', 'Enable', 0, '2019-06-18'),
(2, 0, 1, 'Magazine', 'magazine', '', 'f37ce4e076088827d9d1e61c815ebb83.png', 'Yes', 'Enable', 0, '2019-06-18'),
(3, 0, 1, 'Advertisement', 'advertisement', '', 'bdb1ca8a77ecdad93f770b0b03cfde65.png', 'Yes', 'Enable', 0, '2019-06-18'),
(4, 0, 1, 'Real Estate', 'real-estate', '', 'fe51284d494848da19f7d84cf2d19d3a.png', 'Yes', 'Enable', 0, '2019-06-18'),
(5, 0, 1, 'Fashion', 'fashion', '', 'a6a47023e7cf805c5ef5e39e811b872c.png', 'Yes', 'Enable', 0, '2019-06-18'),
(6, 0, 1, 'Furniture', 'furniture', '', '74d114e64f854571ab9e4e8542919305.png', 'Yes', 'Enable', 0, '2019-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `offer_id` int(11) NOT NULL,
  `offer_user_id` int(11) NOT NULL,
  `offer_state` int(11) NOT NULL,
  `offer_name` varchar(100) NOT NULL,
  `offer_image` varchar(100) NOT NULL,
  `offer_status` enum('Enable','Disable','Block') NOT NULL,
  `offer_created` date NOT NULL,
  `offer_updated` date NOT NULL,
  `offer_expired` date NOT NULL,
  `offer_url` varchar(100) NOT NULL,
  `offer_position` int(11) NOT NULL,
  `offer_display` enum('Home','None') NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orddetid` int(11) NOT NULL,
  `orddet_ord_id` int(11) NOT NULL,
  `proid` int(11) NOT NULL,
  `prounitprice` float(10,2) NOT NULL,
  `prodquantity` int(11) NOT NULL,
  `prodsize` varchar(100) NOT NULL,
  `prodtotalprice` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ordid` int(11) NOT NULL,
  `ord_reg_id` int(11) NOT NULL,
  `ord_shp_id` int(11) NOT NULL,
  `ord_amount` float(10,2) NOT NULL,
  `ord_tax` float(10,2) NOT NULL,
  `ord_tax_amount` float(10,2) NOT NULL,
  `ord_discount` float(10,2) NOT NULL,
  `ord_pay_amount` float(10,2) NOT NULL,
  `orddate` datetime NOT NULL,
  `ord_transaction_no` varchar(500) NOT NULL,
  `ord_pay_status` enum('Pending','Received') NOT NULL,
  `ord_pay_date` datetime NOT NULL,
  `ord_delivery_status` enum('Pending','Delivered') NOT NULL,
  `ord_delivery_date` datetime DEFAULT NULL,
  `ord_couriers_name` int(11) NOT NULL,
  `ord_couriers_number` varchar(100) NOT NULL,
  `ord_update_date` datetime NOT NULL,
  `ord_delivery_confirmation` enum('Delivery Pending','Delivery Confirmed') NOT NULL DEFAULT 'Delivery Pending',
  `delivery_confirmation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `groups` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `position` int(11) NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pagedisplay`
--

CREATE TABLE `pagedisplay` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pagedisplay`
--

INSERT INTO `pagedisplay` (`id`, `name`, `adddate`, `editdate`, `status`) VALUES
(1, 'Header & Footer ', '2015-06-19', '0000-00-00', 'Enable'),
(2, 'Header & Top ', '2015-06-19', '0000-00-00', 'Enable'),
(3, 'Header', '2015-06-20', '0000-00-00', 'Enable'),
(4, 'Footer', '2015-06-20', '0000-00-00', 'Enable'),
(5, 'Top', '2015-06-20', '0000-00-00', 'Enable'),
(6, 'Inner Page', '2015-06-26', '0000-00-00', 'Enable'),
(7, 'Side Menu', '2015-06-26', '0000-00-00', 'Enable'),
(8, 'Extra', '2015-06-30', '0000-00-00', 'Enable'),
(9, '', '2015-06-30', '0000-00-00', 'Enable'),
(10, '', '0000-00-00', '0000-00-00', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `page_pid` int(11) NOT NULL,
  `page_user_id` int(11) NOT NULL,
  `page_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_heading` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_slogan` varchar(500) CHARACTER SET utf8 NOT NULL,
  `page_slogan_two` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_href_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_down_pdf` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_title` varchar(500) CHARACTER SET utf8 NOT NULL,
  `page_meta_keyword` varchar(500) CHARACTER SET utf8 NOT NULL,
  `page_meta_description` varchar(500) CHARACTER SET utf8 NOT NULL,
  `page_header_image` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_image` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_mrp` int(11) NOT NULL,
  `page_price` int(11) NOT NULL,
  `page_discount` int(11) NOT NULL,
  `page_amount` int(11) NOT NULL,
  `page_final_price` int(11) NOT NULL,
  `page_icon` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_class` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_video` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_short_desciption` longtext CHARACTER SET utf8 NOT NULL,
  `page_full_desciption` longtext CHARACTER SET utf8 NOT NULL,
  `page_display` int(11) NOT NULL,
  `page_is_home` enum('Yes','No') CHARACTER SET utf8 NOT NULL DEFAULT 'No',
  `page_recent` enum('Yes','No') NOT NULL DEFAULT 'No',
  `page_ongoing` enum('Yes','No') NOT NULL DEFAULT 'No',
  `page_completed` enum('Yes','No') NOT NULL DEFAULT 'No',
  `page_is_category` enum('Yes','No') CHARACTER SET utf8 NOT NULL,
  `page_hot` enum('Yes','No') NOT NULL DEFAULT 'No',
  `page_type` enum('CMS Page','Category Page','None') CHARACTER SET utf8 DEFAULT 'None',
  `page_orders` int(11) NOT NULL,
  `page_created` datetime DEFAULT NULL,
  `page_modified` datetime DEFAULT NULL,
  `page_status` enum('Enable','Disable','Block') CHARACTER SET utf8 NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `pid`, `mid`, `page_pid`, `page_user_id`, `page_url`, `page_name`, `page_heading`, `page_slogan`, `page_slogan_two`, `page_href_url`, `page_down_pdf`, `page_title`, `page_meta_keyword`, `page_meta_description`, `page_header_image`, `page_image`, `page_mrp`, `page_price`, `page_discount`, `page_amount`, `page_final_price`, `page_icon`, `page_class`, `page_video`, `page_short_desciption`, `page_full_desciption`, `page_display`, `page_is_home`, `page_recent`, `page_ongoing`, `page_completed`, `page_is_category`, `page_hot`, `page_type`, `page_orders`, `page_created`, `page_modified`, `page_status`) VALUES
(1, 0, 0, 0, 1, 'index', 'Home', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', 'We are highly experienced & well established pest control services provider Company in Delhi, India. We are specialized in reactive as well as proactive and preventative pest control. To help protect you and your family’s health, lifestyle and property by delivering affordable pest management solutions to control the pests in your environment effectively and safely.', '<p><span style=\"font-size: large;\">We are highly experienced &amp; well established pest control services provider Company in Delhi, India. We are specialized in reactive as well as proactive and preventative pest control. To help protect you and your family&rsquo;s health, lifestyle and property by delivering affordable pest management solutions to control the pests in your environment effectively and safely.</span><span style=\"font-size: 12px;\"><br />\r\n</span></p>', 1, 'No', 'No', 'No', 'No', 'No', 'No', 'CMS Page', 0, NULL, NULL, 'Enable'),
(2, 0, 0, 0, 1, 'about-us', 'About Us', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', 'We are highly experienced & well established pest control services provider Company in Delhi, India.', '<p><span style=\"font-size: large;\">We are highly experienced &amp; well established pest control services provider Company in Delhi, India. We are specialized in reactive as well as proactive and preventative pest control. To help protect you and your family&rsquo;s health, lifestyle and property by delivering affordable pest management solutions to control the pests in your environment effectively and safely.</span></p>\r\n<div><span style=\"font-size: large;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: large;\">We believe in providing the best service for our clients and working with them to deliver quality solutions within budget and in the safest possible way for our site teams, the public and our clients&rsquo; employees.</span></div>\r\n<div><span style=\"font-size: large;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: large;\">We provide a swift response, with fast detection and effective pest control solutions, through our team of local experts. All our service technicians go through the rigorous training program to ensure the highest qualified pest control employees in Delhi.</span></div>\r\n<div><span style=\"font-size: large;\"><br />\r\n</span></div>\r\n<div><span style=\"font-size: large;\">We&rsquo;re not just providing Control solutions; we&rsquo;re building a relationship based on trust and a service you can depend upon.</span></div>', 1, 'No', 'No', 'No', 'No', 'No', 'No', 'CMS Page', 0, NULL, NULL, 'Enable'),
(4, 0, 0, 0, 1, 'pest-control-services', 'Pest Control Services', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 3, 'No', 'No', 'No', 'No', 'Yes', 'No', 'Category Page', 0, NULL, NULL, 'Enable'),
(5, 0, 0, 0, 1, 'bird-and-pigeon-pest-control', 'Bird and Pigeon Pest Control', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 3, 'No', 'No', 'No', 'No', 'Yes', 'No', 'Category Page', 0, NULL, NULL, 'Enable'),
(6, 0, 0, 0, 1, 'bird-spike', 'Bird Spike', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 3, 'No', 'No', 'No', 'No', 'Yes', 'No', 'Category Page', 0, NULL, NULL, 'Enable'),
(7, 0, 0, 0, 1, 'gallery', 'Gallery', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 1, 'No', 'No', 'No', 'No', 'No', 'No', 'CMS Page', 0, NULL, NULL, 'Enable'),
(8, 0, 0, 0, 1, 'contact-us', 'Contact Us', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 1, 'No', 'No', 'No', 'No', 'No', 'No', 'CMS Page', 0, NULL, NULL, 'Enable'),
(9, 0, 0, 0, 1, 'tetimonial', 'tetimonial', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', 6, 'No', 'No', 'No', 'No', 'No', 'No', 'CMS Page', 0, NULL, NULL, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `pay_installment_id` int(11) NOT NULL,
  `pay_admns_id` int(11) NOT NULL,
  `pay_stud_id` int(11) NOT NULL,
  `pay_course_id` int(11) NOT NULL,
  `pay_received_amount` float(10,2) NOT NULL,
  `pay_balance` float(10,2) NOT NULL,
  `pay_receipt_no` varchar(100) NOT NULL,
  `pay_received_date` datetime NOT NULL,
  `pay_created` datetime NOT NULL,
  `pay_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payid`, `pid`, `mid`, `pay_installment_id`, `pay_admns_id`, `pay_stud_id`, `pay_course_id`, `pay_received_amount`, `pay_balance`, `pay_receipt_no`, `pay_received_date`, `pay_created`, `pay_updated`) VALUES
(1, 9, 1, 106, 2, 3, 1, 810.00, 706.67, 'efewrew', '2020-01-16 00:00:00', '2020-01-15 15:32:55', '0000-00-00 00:00:00'),
(2, 9, 1, 109, 3, 2, 1, 300.00, 333.33, '5454', '2020-01-22 00:00:00', '2020-01-15 16:10:34', '0000-00-00 00:00:00'),
(3, 9, 1, 109, 3, 2, 1, 333.00, 0.33, 'wqdewar', '2020-01-08 00:00:00', '2020-01-15 16:25:41', '0000-00-00 00:00:00'),
(4, 9, 1, 109, 3, 2, 1, 333.00, 0.33, 'wqdewar', '2020-01-08 00:00:00', '2020-01-15 16:25:57', '0000-00-00 00:00:00'),
(5, 9, 1, 106, 2, 3, 1, 706.67, 0.00, '54545', '2020-01-22 00:00:00', '2020-01-21 14:13:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `paymentgateways`
--

CREATE TABLE `paymentgateways` (
  `merchant_id` int(11) NOT NULL,
  `merchant_key` varchar(100) NOT NULL,
  `merchant_salt` varchar(100) NOT NULL,
  `merchant_website` varchar(100) NOT NULL,
  `merchant_email` varchar(100) NOT NULL,
  `merchant_comp_name` varchar(100) NOT NULL,
  `merchant_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `postyourrequirments`
--

CREATE TABLE `postyourrequirments` (
  `prod_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_qty_unit` int(11) NOT NULL,
  `product_measurement_unit` varchar(255) NOT NULL,
  `product_service_type` varchar(255) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_contact_number` varchar(100) NOT NULL,
  `customer_email_id` varchar(255) NOT NULL,
  `product_created` date NOT NULL,
  `product_modified` date NOT NULL,
  `product_status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `presences`
--

CREATE TABLE `presences` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable',
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productextrafeature`
--

CREATE TABLE `productextrafeature` (
  `id` int(11) NOT NULL,
  `prod_pid` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `pdf` varchar(100) NOT NULL,
  `feature_description` longtext NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productmultiimages`
--

CREATE TABLE `productmultiimages` (
  `imgid` int(11) NOT NULL,
  `imgpid` int(11) NOT NULL,
  `imgppageid` int(11) NOT NULL,
  `prod_images` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productquatities`
--

CREATE TABLE `productquatities` (
  `proqtyids` int(11) NOT NULL,
  `prod_qty_id` int(11) NOT NULL,
  `prod_qty` varchar(100) NOT NULL,
  `prod_mrp` float(10,2) NOT NULL,
  `prod_price` float(10,2) NOT NULL,
  `prod_discount` float(10,2) NOT NULL,
  `prod_amount` float(10,2) NOT NULL,
  `prod_final_price` float(10,2) NOT NULL,
  `prod_qty_status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_pid` int(11) NOT NULL,
  `prod_brand_id` int(11) NOT NULL,
  `prod_user_id` int(11) NOT NULL,
  `prod_pageid` int(11) NOT NULL,
  `main_cid` int(11) NOT NULL,
  `prod_category` varchar(255) NOT NULL,
  `prod_url` varchar(100) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_size` varchar(100) NOT NULL,
  `prod_href_url` varchar(100) NOT NULL,
  `prod_slogan` varchar(100) NOT NULL,
  `prod_class` varchar(100) NOT NULL,
  `prod_code` varchar(100) NOT NULL,
  `prod_brand` int(11) NOT NULL,
  `prod_heading` varchar(100) NOT NULL,
  `prod_title` varchar(500) NOT NULL,
  `prod_meta_keyword` varchar(500) NOT NULL,
  `prod_meta_description` varchar(500) NOT NULL,
  `prod_header_image` varchar(100) NOT NULL,
  `prod_video` varchar(100) NOT NULL,
  `prod_image` varchar(1000) NOT NULL,
  `prod_mouse_hover_image` varchar(100) NOT NULL,
  `prod_himage` varchar(100) NOT NULL,
  `prod_icon_image` varchar(100) NOT NULL,
  `prod_mrp` float(10,2) NOT NULL,
  `prod_price` float(10,2) NOT NULL,
  `prod_discount` float(10,2) NOT NULL,
  `prod_amount` float(10,2) NOT NULL,
  `prod_final_price` float(10,2) NOT NULL,
  `prod_mrp_usd` float(10,2) NOT NULL,
  `prod_price_usd` float(10,2) NOT NULL,
  `prod_discount_usd` float(10,2) NOT NULL,
  `prod_amount_usd` float(10,2) NOT NULL,
  `prod_free_return` int(11) NOT NULL,
  `prod_warranty` varchar(200) NOT NULL,
  `prod_shipping` varchar(200) NOT NULL,
  `prod_delivery` varchar(200) NOT NULL,
  `prod_support_number` varchar(200) NOT NULL,
  `prod_support_email` varchar(200) NOT NULL,
  `prod_final_price_usd` float(10,2) NOT NULL,
  `prod_stock` int(11) NOT NULL,
  `prod_minimum_sale_qty` int(11) NOT NULL DEFAULT '1',
  `prod_stock_status` enum('Out of Stock','In Stock') NOT NULL DEFAULT 'In Stock',
  `prod_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `prod_small_desciption` longtext NOT NULL,
  `prod_full_desciption` longtext NOT NULL,
  `prod_down_pdf` varchar(100) NOT NULL,
  `prod_display` int(11) NOT NULL,
  `prod_new_arrival` enum('Yes','No') NOT NULL DEFAULT 'No',
  `prod_on_sell` enum('Yes','No') NOT NULL DEFAULT 'No',
  `prod_hot` enum('Yes','No') NOT NULL DEFAULT 'No',
  `prod_offer` enum('Yes','No') NOT NULL DEFAULT 'No',
  `prod_bestservice` enum('Yes','No') DEFAULT 'No',
  `prod_sale_where` enum('IN','OUT','BOTH') NOT NULL DEFAULT 'BOTH',
  `prod_hot_service` enum('Yes','No') NOT NULL DEFAULT 'No',
  `prod_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `prod_room_type` int(11) NOT NULL,
  `prod_no_of_bed` int(11) NOT NULL,
  `prod_no_of_adult` int(11) NOT NULL,
  `prod_no_of_child` int(11) NOT NULL,
  `prod_cate_ashome` enum('No','Yes','None') NOT NULL DEFAULT 'No',
  `prod_no_of_days` varchar(100) NOT NULL,
  `prod_packaging_type` varchar(100) NOT NULL,
  `prod_packaging_size` varchar(100) NOT NULL,
  `prod_boiling_point` varchar(100) NOT NULL,
  `prod_melting_point` varchar(100) NOT NULL,
  `prod_molecular_formula` varchar(100) NOT NULL,
  `prod_molar_mass` varchar(100) NOT NULL,
  `prod_density` varchar(100) NOT NULL,
  `prod_form` varchar(100) NOT NULL,
  `prod_flash_point` varchar(100) NOT NULL,
  `prod_ph_value` varchar(100) NOT NULL,
  `prod_type` varchar(100) NOT NULL,
  `prod_brands` varchar(100) NOT NULL,
  `prod_length` varchar(100) NOT NULL,
  `prod_weight` varchar(100) NOT NULL,
  `prod_colour_available` varchar(100) NOT NULL,
  `prod_packing_detail` varchar(100) NOT NULL,
  `prod_minimum_pcs` varchar(100) NOT NULL,
  `prod_delivery_charges` varchar(100) NOT NULL,
  `prod_other` varchar(100) NOT NULL,
  `prod_item_code` varchar(100) NOT NULL,
  `prod_order` int(11) NOT NULL,
  `prod_link` varchar(500) NOT NULL,
  `prod_benefits1` varchar(200) NOT NULL,
  `prod_benefits2` varchar(200) NOT NULL,
  `prod_benefits3` varchar(200) NOT NULL,
  `prod_benefits4` varchar(200) NOT NULL,
  `prod_benefits5` varchar(200) NOT NULL,
  `prod_benefits6` varchar(200) NOT NULL,
  `prod_benefits7` varchar(200) NOT NULL,
  `prod_benefits8` varchar(200) NOT NULL,
  `prod_benefits9` varchar(200) NOT NULL,
  `prod_benefits10` varchar(200) NOT NULL,
  `prod_time_duration` varchar(200) NOT NULL,
  `prod_page_type` enum('CMS Page','Category Page','None') NOT NULL DEFAULT 'None',
  `prod_types` enum('Category','Products') NOT NULL DEFAULT 'Category',
  `prod_start_date` date NOT NULL,
  `prod_end_date` date NOT NULL,
  `prod_created` datetime NOT NULL,
  `prod_modified` datetime NOT NULL,
  `prod_status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_pid`, `prod_brand_id`, `prod_user_id`, `prod_pageid`, `main_cid`, `prod_category`, `prod_url`, `prod_name`, `prod_size`, `prod_href_url`, `prod_slogan`, `prod_class`, `prod_code`, `prod_brand`, `prod_heading`, `prod_title`, `prod_meta_keyword`, `prod_meta_description`, `prod_header_image`, `prod_video`, `prod_image`, `prod_mouse_hover_image`, `prod_himage`, `prod_icon_image`, `prod_mrp`, `prod_price`, `prod_discount`, `prod_amount`, `prod_final_price`, `prod_mrp_usd`, `prod_price_usd`, `prod_discount_usd`, `prod_amount_usd`, `prod_free_return`, `prod_warranty`, `prod_shipping`, `prod_delivery`, `prod_support_number`, `prod_support_email`, `prod_final_price_usd`, `prod_stock`, `prod_minimum_sale_qty`, `prod_stock_status`, `prod_featured`, `prod_small_desciption`, `prod_full_desciption`, `prod_down_pdf`, `prod_display`, `prod_new_arrival`, `prod_on_sell`, `prod_hot`, `prod_offer`, `prod_bestservice`, `prod_sale_where`, `prod_hot_service`, `prod_is_home`, `prod_room_type`, `prod_no_of_bed`, `prod_no_of_adult`, `prod_no_of_child`, `prod_cate_ashome`, `prod_no_of_days`, `prod_packaging_type`, `prod_packaging_size`, `prod_boiling_point`, `prod_melting_point`, `prod_molecular_formula`, `prod_molar_mass`, `prod_density`, `prod_form`, `prod_flash_point`, `prod_ph_value`, `prod_type`, `prod_brands`, `prod_length`, `prod_weight`, `prod_colour_available`, `prod_packing_detail`, `prod_minimum_pcs`, `prod_delivery_charges`, `prod_other`, `prod_item_code`, `prod_order`, `prod_link`, `prod_benefits1`, `prod_benefits2`, `prod_benefits3`, `prod_benefits4`, `prod_benefits5`, `prod_benefits6`, `prod_benefits7`, `prod_benefits8`, `prod_benefits9`, `prod_benefits10`, `prod_time_duration`, `prod_page_type`, `prod_types`, `prod_start_date`, `prod_end_date`, `prod_created`, `prod_modified`, `prod_status`) VALUES
(2, 0, 0, 1, 4, 0, '', 'pest-control-services', 'Pest Control Services', '', '', '', '', '', 0, '', '', '', '', '', '', '6368d71c772b37109b2f4e0f9fc60ce3.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Vpestify is the leader in Pest Control Services.', '<p><span style=\\\"font-size: large;\\\">Vpestify is the leader in Pest Control Services. A Government approved license holder, we have achieved many milestones since our establishment. We believe in constant up gradation of technology and our performance. We could not have achieved a distinct place in this business sphere without unrelenting efforts and hard work of our manpower.&nbsp;</span></p>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'Category Page', 'Category', '1970-01-01', '1970-01-01', '2020-08-19 08:55:24', '2020-08-27 06:33:50', 'Enable'),
(3, 0, 0, 1, 5, 0, '', 'bird-and-pigeon-pest-control', 'Bird and Pigeon Pest Control', '', '', '', '', '', 0, '', '', '', '', '', '', '1f6f6086f54e5069dd3a30200ce608e1.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'We are rendering Bird and Pigeon Pest Control Services to our patrons.', '<p><span style=\\\"font-size: large;\\\">We are rendering Bird and Pigeon Pest Control Services to our patrons. Due to prompt completion, our offered service is extremely admired in the market. Our service meets on client&rsquo;s demand. Moreover, we render this service as per patron&rsquo;s demand.We are specialized in providing solutions for management of various kinds of Birds And Pigeons.</span></p>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'Category Page', 'Category', '1970-01-01', '1970-01-01', '2020-08-19 08:57:43', '2020-08-27 06:40:23', 'Enable'),
(4, 0, 0, 1, 6, 0, '', 'bird-spike', 'Bird Spike', '', '', '', '', '', 0, '', '', '', '', '', '', '960361daca4001171bd5700f4d1c6946.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'we have been able to provide our clients the best quality Bird Spike.', '<p><span style=\\\"font-size: large;\\\">With the continuous support and sincere efforts put by our experienced professionals, we have been able to provide our clients the best quality Bird Spike. Offered service is performed under the strict supervision of our experts using optimum grade tools and latest technology. Our professionals perform this service as per the requirements of our clients. Further, the provided service can be availed by our valuable clients at most competitive price.</span></p>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'Category Page', 'Category', '1970-01-01', '1970-01-01', '2020-08-19 08:58:04', '2020-08-27 06:52:26', 'Enable'),
(12, 5, 0, 0, 0, 0, '', 'bed-bugs', 'Bed Bugs', '', '', '', '', '', 0, '', '', '', '', '', '', 'b6c894633a5c8a2523dab76f77712da1.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Bed Bugs are the ultimate hitchhiker and can be picked up almost anywhere.', '<p><span style=\\\"font-size: large;\\\">Bed Bugs are the ultimate hitchhiker and can be picked up almost anywhere. Once in your home, they can get into all the rooms through door frames, windows, and cracks in the walls. If you&rsquo;ve recently moved in some new furniture, you may even have brought the Bed Bugs in with it. Bed Bugs often lay eggs in the crevices of wood furniture. You are also more at risk if you travel, or if you regularly host travellers (for example, if you rent out your home) since Bed Bugs love to grab a ride on clothing and luggage.</span></p>', '', 0, 'No', 'No', 'Yes', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:12:42', '2020-08-28 05:59:46', 'Enable'),
(13, 5, 0, 0, 0, 0, '', 'bed-bugs-control', 'Bed Bugs Control', '', '', '', '', '', 0, '', '', '', '', '', '', 'b4b79be5b5a85b81dd7db275522b7e50.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'The bed bugs find an entry to your house either through the second-hand articles or through furniture.', '<p><span style=\\\"font-size: 12px;\\\">The bed bugs find an entry to your house either through the second-hand articles or through furniture. They may also find a place in your house through the rain gutters, wires or plumbing pipes. Sometimes the warehouse companies, railroad cars, and the trucks are also found to be infested. The bed bugs can infest your home with the help of new furniture or by the stowed away furniture which has been shipped from some other place.</span></p>\r\n<div><span style=\\\"font-size: 12px;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: 12px;\\\">Bed Bugs are incredibly stubborn, which is why it&rsquo;s almost impossible to get rid of them without professional help. People often try using home remedies or over-the-counter products, but they don&rsquo;t work. You&rsquo;re not going to be able to starve the insects to death as an adult can go three months without feeding. The expert and approved bed bugs removal Company take special effort to make your premises pest-free.</span></div>', '', 0, 'No', 'No', 'Yes', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:12:55', '2020-08-20 05:02:17', 'Enable'),
(14, 5, 0, 0, 0, 0, '', 'bed-bugs-inspection', 'Bed Bugs Inspection', '', '', '', '', '', 0, '', '', '', '', '', '', '399db2d85d0f6975b8d10d40dfa487b7.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Once your home is infested, the bugs will spread very quickly.', '<p><span style=\\\"font-size: large;\\\">Once your home is infested, the bugs will spread very quickly. It is vital that you take action as soon as possible to prevent the infestation from becoming even worse. You may spend significant time and money trying to get rid of these bugs, only to find that they won&rsquo;t leave. That&rsquo;s why you should call VpestifyPest Control instead.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Once we&rsquo;ve gotten rid of the Bed Bugs, you don&rsquo;t want them coming back. Other pest control companies may &ldquo;treat&rdquo; these pests by cutting corners, we are committed to doing it right the first time and making sure that they won&rsquo;t return. Call Vpestify to get these bugs out of your bed and keep them from coming back.</span></div>', '', 0, 'No', 'No', 'Yes', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:13:05', '2020-08-20 10:52:33', 'Enable'),
(15, 6, 0, 0, 0, 0, '', 'cockroaches', 'Cockroaches', '', '', '', '', '', 0, '', '', '', '', '', '', '0dcb3dd753cd708998fe70b90832e248.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Cockroaches are one of the most notorious household pests. They invade your house in the darkness of night and eat up your food products. A large magnitude of people is so allergic to cockroaches that they do not even require physical sighting of the roaches to trigger the allergic reaction.', '<p><span style=\\\"font-size: large;\\\">Cockroaches are one of the most notorious household pests. They invade your house in the darkness of night and eat up your food products. A large magnitude of people is so allergic to cockroaches that they do not even require physical sighting of the roaches to trigger the allergic reaction.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">If you have any medical condition like asthma, then the cockroaches would be very harmful to you as they can multiply just like Salmonella.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Cockroaches have the ability to withstand difficult condition and this is the main reason why you should employ profession cockroach pest control service to deal with them. The approved cockroach control experts can eliminate them right from the roots so that your property becomes 100% pest free.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">&nbsp;Types of Cockroaches</span></div>\r\n<div>&nbsp;</div>\r\n<p><span style=\\\"font-size: large;\\\">\r\n<div><br />\r\n<strong>American cockroach</strong></div>\r\n</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Despite what its name suggests, the American cockroach is not native to North America. They can be found worldwide. Reddish brown in color with a yellow band near the head, American cockroaches have full sets of wings that they sometimes use to fly short distances. However, flight is not their preferred mode of transportation. When food is not readily available, they may bite, hoping to get food particles off of the face and hands of unsuspecting human victims.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div>&nbsp;</div>\r\n<p><span style=\\\"font-size: large;\\\">\r\n<div><strong>Smokybrown Cockroache</strong></div>\r\n</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The Smokybrown cockroach is commonly found outdoors. The humid environment is ideal for this type of cockroach because it loses moisture much more easily than other species, so the humidity helps prevent it from drying up. Because they lose moisture so easily, the Smokybrown cockroach is also relatively lazy. To prevent further moisture loss, they try to keep movement to a minimum.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div>&nbsp;</div>\r\n<p><span style=\\\"font-size: large;\\\">\r\n<div><strong>Brownbanded cockroach</strong></div>\r\n</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">As you might guess from the name, Brownbanded cockroaches have brown &ldquo;bands&rdquo; that span across the wings. Another distinctive characteristic of this species is the &ldquo;liberty bell&rdquo; shape on the pronotal shield (near the head). The Brownbanded cockroach itself can be anywhere from light to medium brown in color, with females being darker than the male. Both males and females have wings, but only the males fly. The females&rsquo; wings are much shorter and do not cover the entire abdomen, leaving them unequipped for flight.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Brownbanded cockroaches will not likely bite, but they can still be dangerous. They are known to carry disease-causing bacteria on their legs and bodies, depositing it throughout your home or business as they travel.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div>&nbsp;</div>\r\n<p><span style=\\\"font-size: large;\\\">\r\n<div><strong>Cockroaches Control</strong></div>\r\n</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">There are quite a few varieties of cockroaches. While some of them are generally outsiders and rarely enters your home in search of warmth, others like the notorious cockroach mostly prefer the interior of your house. The old saying &ldquo;for every cockroach you see, there are 100 more you don&rsquo;t&rdquo; is very apt for them.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The cockroaches are experts in hiding in between the cracks and crevices of your house, they can survive tough conditions and can perfectly avoid from being stamped under your shoes. But, do not worry. The good news is there is Vpestify for you. We can eliminate them completely with the right cockroach treatment.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">we can offer you professional cockroach control program to make your premises 100% pest free. Our company is expert in indoor cockroach control service, prevents them from re-multiplying and also effectively eliminate their eggs and larvae from your house. Professional cockroaches control services for all types of pests.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">You can avail our monthly treatment which also includes bait management and spraying of insecticides in the cracks and crevices of your house. We also provide commercial cockroach management service.</span></div>', '', 0, 'No', 'No', 'Yes', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:13:50', '2020-08-20 06:34:45', 'Enable'),
(16, 6, 0, 0, 0, 0, '', 'cockroaches-control', 'Cockroaches Control', '', '', '', '', '', 0, '', '', '', '', '', '', '512d39fc2415add9c851c6ca11569a4d.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'There are quite a few varieties of cockroaches. While some of them are generally outsiders and rarely enters your home in search of warmth, others like the notorious cockroach mostly prefer the interior of your house. The old saying “for every cockroach you see, there are 100 more you don’t” is very apt for them.', '<p><span style=\\\"font-size: large;\\\">There are quite a few varieties of cockroaches. While some of them are generally outsiders and rarely enters your home in search of warmth, others like the notorious cockroach mostly prefer the interior of your house. The old saying &ldquo;for every cockroach you see, there are 100 more you don&rsquo;t&rdquo; is very apt for them.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The cockroaches are experts in hiding in between the cracks and crevices of your house, they can survive tough conditions and can perfectly avoid from being stamped under your shoes. But, do not worry. The good news is there is Vpestify for you. We can eliminate them completely with the right cockroach treatment.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">we can offer you a professional cockroach control program to make your premises 100% pest free. Our company is expert in indoor cockroach control service, prevents them from re-multiplying and also effectively eliminate their eggs and larvae from your house. Professional cockroaches control services for all types of pests.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">You can avail our monthly treatment which also includes bait management and spraying of insecticides in the cracks and crevices of your house. We also provide commercial cockroach management service.</span></div>', '', 0, 'No', 'No', 'Yes', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:13:59', '2020-08-20 06:36:22', 'Enable'),
(17, 6, 0, 0, 0, 0, '', 'cockroaches-inspection', 'Cockroaches Inspection', '', '', '', '', '', 0, '', '', '', '', '', '', 'a0854caa4769bd45f77efd37cc976508.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Contact Vpestify Control Services For Cockroach Pest Control', '<p><span style=\\\"font-size: large;\\\">Contact Vpestify Control Services For Cockroach Pest Control</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">As your trusted pest control service provider, we will protect your premise as if it was our own and your peace of mind is important to us.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">You can contact us today to get your house inspected and evaluated.</span></div>', '', 0, 'No', 'No', 'Yes', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:14:10', '2020-08-20 06:37:15', 'Enable'),
(18, 7, 0, 0, 0, 0, '', 'ants', 'Ants', '', '', '', '', '', 0, '', '', '', '', '', '', '66008356cd32bb496c5197762459ce90.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'One of the most common household insects that you will most likely deal with at some point of living in a home is ants.', '<p><span style=\\\"font-size: large;\\\">One of the most common household insects that you will most likely deal with at some point of living in a home is ants. Ants are found just about all over the world and usually seek shelter inside dry, warm places such as homes, apartments, and duplexes. With an ample supply of food inside most homes, this makes the perfect spot for ants to live. If you have found ants in your home and are worried about an infestation, the pest experts at Vpestifycan get them cleared out.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>Ant Prevention Tips</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Successful, long-term ant control requires more than just a surface spray. AtVpestify, we use the latest products available including repellent, non-repellent liquid insecticide as well as insecticidal dust, baits and granules.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Clean up food and drink spills immediately.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Rinse out cans or bottles before putting them into the recycling bin.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Keep food stored tightly.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Pick up pet food at night and don&rsquo;t feed them outdoors.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Seal cracks around doors and windows, and keep gutters and downpipes clean.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Ant Control Service</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">As responsible home-owners, we should keep an eye on these pests if they are trying to forage indoors in search of a good place for thriving. Ensure a regular inspection in the piles of coarse and stingy wooden structures, the parts of dead insects and the other debris materials which are seen shifting from the siding cracks and also on the backside of the mouldings in the basement and attic or under the porches.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">If you have an ant infestation and need a professional pest company to get them out, trust the experts at VpestifyPest Control. Keeping safety first, our team provides Eco-Friendly services to ensure you and your pets stay safe throughout the extermination. Call our team today for a free quote.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:14:33', '2020-08-20 06:38:24', 'Enable'),
(19, 7, 0, 0, 0, 0, '', 'fabric-beetle', 'Fabric Beetle', '', '', '', '', '', 0, '', '', '', '', '', '', '391efa8203da43c4efa537c5ed892945.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'As you start digging through the back of your closet for warmer clothing this fall season, keep an eye out for household pests that may be destroying your clothes.', '<p><span style=\\\"font-size: large;\\\">As you start digging through the back of your closet for warmer clothing this fall season, keep an eye out for household pests that may be destroying your clothes. Even though these pests are not usually disease or germ carriers, their presence can be a nuisance and difficult to eliminate. It is important to ensure your clothes and other fabrics are protected as these pests can cause considerable damage before you even know they are present.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Generally, it&rsquo;s the newly hatched larvae that do the damage on everything from sweaters, pants, jackets, wool rugs, to decorative needlework on your walls. Typically insect damage occurs on fabrics containing natural or animal fibres such as wool, mohair, silk, cotton, leather, fur, feathers, down, and any synthetics blended with these natural fibres.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Clothes Moths</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Clothes moths are a light tan colour, have very narrow wings, and can grow up to 1/2 inch long. It is the larva (small white worm looking) that actually eats wool garments, not the adult moths themselves. But if you see the adult clothes moths around you can assume they are laying eggs. Clothes moths pose no serious health concern to humans; however, an infestation can quickly ruin rarely used or stored clothing such as old military uniforms, blankets, feathered hats, tuxedos, overcoats, evening gowns, hats, antique dolls and toys, and wall hangings.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Carpet Beetles</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Carpet beetles commonly cause damage to fabrics such as wool, silk, leather, and fur; they do not feed on synthetic fibres. Just like the clothes moth, the carpet beetle larvae are the ones to do the damage to your clothing. Carpet beetle larvae measure 1/8 to 1/4 inch long and appear to be densely covered with tiny hairs or bristles. The garment damage appears in one portion of a garment, or concentrated area. They easily find food in obscure places and can be easily dispersed throughout the home considering their unique ability to travel. Carpet beetles can be difficult to control and can cause extensive damage if left unchecked.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Tips for keeping your clothes pest free!</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Store only clean garments. Thoroughly clean clothes prior to storage by emptying pockets, washing to remove food stains, perfumes, and perspiration as these can be a reliable food source for a wardrobe-destroying infestation. Have garments dry cleaned (without starch) or place in the dryer on high heat for 15 minutes to eliminate any insect eggs or mildew spores.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Regularly clean and vacuum. Clean rugs and carpets, draperies, upholstered furniture, closets and anywhere else larvae can hide. When you are finished, immediately dispose of the vacuum bag.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">To avoid future infestations, store clothes in containers located in a cool, dry place. Use garment storage bags made of cotton and or vinyl. Make sure to utilize breathable bags for leather or fur garments. Preventative products such as mothballs and cedar products can provide additional protection. If the insects cannot lay eggs, they will not eat your clothes.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Be careful about what you buy second-hand. Always launder or dry-clean woollens that are bought from thrift stores or given to you as hand-me-downs. You could have unexpected guests along with that sweater!</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Don&rsquo;t let these fabric-eating pests ruin your winter wardrobe. Want to leave it to the professionals? Contact Vpestifypest control expert. Schedule a free inspection today!</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:14:44', '2020-08-20 06:39:59', 'Enable'),
(20, 7, 0, 0, 0, 0, '', 'grain-beetles', 'Grain Beetles', '', '', '', '', '', 0, '', '', '', '', '', '', '7b9cdec36236b33e71773812ca469dbd.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'The grain beetle can be found throughout the world, and it loves to attack many common types of food. Macaroni, sugar, biscuit mixes, rice and cereal frequently fall victim to the grain beetle.', '<p><span style=\\\"font-size: large;\\\">The grain beetle can be found throughout the world, and it loves to attack many common types of food. Macaroni, sugar, biscuit mixes, rice and cereal frequently fall victim to the grain beetle. Homeowners commonly find grain beetles in locations where dry food is stored. Although diseases aren\\\'t associated with grain beetles, nobody wants to eat cereal that has had grain beetles swimming in it. A grain beetle cannot eat through a hard seed of corn, but it loves attacking processed cereal.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Grain beetles have a reddish-brown, flattened body, and they\\\'re usually about a tenth of an inch in length. On both sides of a grain beetle\\\'s body or thorax, there are six projections that are shaped like the teeth of a saw. A grain beetle\\\'s eggs are microscopic and coloured white. The full-grown larvae are usually an eighth of an inch in length. Grain beetles are known to cause problems in commercial facilities and homes. A typical grain beetle is 2.5 up to 3 mm in length and can be identified by its flat body. The tiny projections on a grain beetle are always located behind its head. Although a magnifying glass is required to truly see what they look like, the tiny projections are what give the grain beetle its name.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>Signs of Infestation</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The presence of the insect within boxed, bagged or sacked grains.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">A number of holes appearing in stored products. These holes will typically be found on surfaces of packages that are contacting the shelf directly, as it will be an easy point of entry for the insect.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Although it will be much harder to see, cracked kernels of grain or products with odd spotting to them (this will be an indication of the product being infested with insect eggs.)</span></div>\r\n<div><span style=\\\"font-size: large;\\\">&nbsp;</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Grain beetles Control Service</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">As your trusted pest control service provider, Vpestify will protect your premise as if it was our own and your peace of mind is important to us.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Contact us today to have a free inspection and evaluation.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:15:03', '2020-08-20 06:41:40', 'Enable'),
(21, 7, 0, 0, 0, 0, '', 'silverfish', 'Silverfish', '', '', '', '', '', 0, '', '', '', '', '', '', '21b6b6b011189ac968086d1d91893214.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Silverfish prefer damp, dark, warm and humid places to the harbor. Because of this, they are often found in bathrooms, kitchens, roof voids, wall cavities, cupboards and bookshelves.', '<p><span style=\\\"font-size: large;\\\">Silverfish prefer damp, dark, warm and humid places to the harbor. Because of this, they are often found in bathrooms, kitchens, roof voids, wall cavities, cupboards and bookshelves.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Outdoors, they may be found living under the bark of trees and garden beds, under rocks, in rotten logs and among leaf litter.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Homeowners most commonly detect silverfish when they find one on the floor or in a sink/bathtub, or they will find holes in their clothing.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><strong><span style=\\\"font-size: large;\\\">Sign of a Silverfish Infestation</span></strong></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Keep an eye out for feeding marks, although they may be irregular whether they are holes, notches along an edge, or surface etchings. Yellow stains, scales and/or faeces (tiny black pepper-like pellets) may also be seen on infested materials.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">People have noticed silverfish when they come down on ceiling soffits and/or drop from skylights and canister light fixtures in the ceiling, likely entering through shake roofs.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Silverfish Control Service</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Looking to prevent or get rid of a silverfish infestation? The key to silverfish control is thoroughly inspecting preferred habitat areas and where appropriate food materials are present. If the infestation is localized on the inside, one can assume that it is recent and was either brought in via infested items or represents a recent invasion from the outside. If the infestation is widespread, then attention should be directed to the outside. Anything stored against or near the house&rsquo;s exterior must be moved or removed since silverfish can easily climb up walls and find entrance around window and door frames, utility pipes and vents. Shake roofs should also be cleaned and sealed every other year.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">If a silverfish infestation is suspected or found, it&rsquo;s best to call Vpestify pest control professional to properly inspect the home and recommend the appropriate treatment method.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:15:14', '2020-08-20 06:43:41', 'Enable'),
(22, 8, 0, 0, 0, 0, '', 'flies', 'Flies', '', '', '', '', '', 0, '', '', '', '', '', '', 'eaa327839ffb5f3960224c58996ac7a0.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'There are over 120,000 species of flies worldwide.', '<p><span style=\\\"font-size: large;\\\">There are over 120,000 species of flies worldwide. Flies are considered pests because they pose a health risk to humans, pets and livestock. They can infest your home or business and spread diseases like Salmonella and E. coli. A few species may even bite humans and animals.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">If a small fly problem is left uncontrolled, it has the potential to turn into a serious infestation. Some fly species are able to mature from eggs to adults in just seven days. There are simple ways you can identify the signs of a fly infestation and reduce the need for fly control. Taking a proactive approach with deterrent measures will also help you avoid costly treatments.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:17:35', '2020-08-20 06:47:57', 'Enable'),
(23, 8, 0, 0, 0, 0, '', 'house-fly', 'House Fly', '', '', '', '', '', 0, '', '', '', '', '', '', '5ef10554f0bf66efa4902b795352687a.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'The house fly is the most common fly found in and around homes.', '<p><span style=\\\"font-size: large;\\\">The house fly is the most common fly found in and around homes. It has a worldwide distribution and is prominent in the United States. House flies are not only nuisance pests while buzzing around homes, but they are potential disease carriers. House flies have short lifespans, but they can quickly reproduce in large numbers, leading to large house fly populations if not identified and effectively controlled.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>Signs of a House Fly Infestation</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The most common sign of a housefly infestation is the presence of the flies, themselves. Larvae may also be seen crawling out of their breeding material as they pupate. Along with seeing house flies, people may hear them around the home. House flies produce buzzing sounds which are a result of their two wings beating together.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>House Fly Prevention</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>How Do House Flies Get in the House?</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">House flies take advantage of structural issues, such as damaged weather stripping or torn screens, in order to enter a household. These pests are attracted to buildings by air currents and odours. Due to the fact that their preferred temperature is 83 degrees Fahrenheit (28 degrees Celsius), house flies are attracted to warm air currents coming from buildings on cooler days and vice versa on warmer days.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong><br />\r\n</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>How to Get Rid of House Flies?</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">In order to prevent a house fly infestation from happening in the first place, vigilant sanitation is a must. Regularly removing trash and using well-sealed garbage receptacles can help to deter any house flies from residing around waste bins. Additionally, pet waste must be cleaned up immediately in order to prevent the development of any house fly breeding sites. Finally, fine mesh screens should be applied to doors and windows in order to prevent house fly entry into the home. If window screens are already present, make sure there are no visible rips or tears.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong><br />\r\n</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>House Fly Control Service</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">If you suspect a house fly infestation in your home, contact Vpestifypest control to conduct an inspection, specifically looking for any places where house fly eggs may have been deposited. Since house flies enter from outside, internal breeding sites are not common. If the breeding site is not thoroughly cleaned or removed, these pests will continue to be a problem.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Vpestify offers an effective plan for flies control services. This plan has been designed for controlling the number of house flies that are seen. The pest control company uses chemical applications for flies control during the peak season.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:17:48', '2020-08-20 06:46:17', 'Enable'),
(24, 8, 0, 0, 0, 0, '', 'mosquito-control-services', 'Mosquito Control Services', '', '', '', '', '', 0, '', '', '', '', '', '', '55e3109cea50b8195c7c5fd6b8a1fde3.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'There are about 3300 mosquitoes’ species all over in the world.', '<p><span style=\\\"font-size: large;\\\">There are about 3300 mosquitoes&rsquo; species all over in the world. These mosquitoes are responsible for causing so many severe diseases like malaria, dengue, chikungunya with which world is fighting with great efforts, but they cause more damage to human health day by day and human filling effortless. The world health organization is also trying to control this situation but they also don&rsquo;t get satisfactory output, the patients of malaria, chikungunya are increasing in large number.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>Vpestifypest control</strong> &ndash; Mosquito service provider company in Delhi offers net Mosquito &amp; Screen mosquito service as per the demand of the customer.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The breeding season of the mosquitoes is normally more during the hot months, and thus Vpestify recognizes the need for seasonal spraying. The company treats the area of breeding of the mosquitoes with odour free and fast-acting products so that you get a lesser number of mosquitoes biting you at home.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">One of the best technicians from Vpestify - fly control company would go to inspect your property. They note the areas which are mainly prone to the breeding and activities of mosquitoes. These pests generally breed in the standing water which gets collected in gutters, birdbaths, discarded containers, and water bowls of pets. These areas and the other highly risky areas get treated using special products for the services of control of the flies larvae.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>TIPS TO AVOID MOSQUITOES</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>Here are some listed tips for the homeowners, so that they can reduce the activity of mosquitoes:</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Dispose of any plastic container, tin cans, ceramic pots or other similar types of containers holding water in them.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Discarded tires also require your attention. The stagnant water inside the tires is the breeding place for most of the mosquitoes or flies.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The recycling containers that are kept outdoors must be drilled at the bottom to prevent any fly or mosquito breeding.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The roof gutters which get clogged easily with leaves must be cleaned each year. Roof gutters are common places where mosquitoes and flies breed.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Thin out the vegetation around your house if it is quite dense</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Wood piles must be kept covered.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Whack the weeds and cut out dense grasses.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">If you have plastic pools then turn them over when not getting used. The stagnant water inside the wading pool also becomes the breeding place for mosquitoes. No water must be allowed to remain stagnant in the birdbaths. Wheelbarrows must also be turned over.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Remove junk piles.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Fish ponds must have continuous running water and stock of fishes in them. Mosquitoes cannot breed in rippling water. They get drowned.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Experts suggest that these tips can keep away flies, mosquitoes or other types of fly pests away from your houses.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:17:59', '2020-08-20 06:50:42', 'Enable');
INSERT INTO `products` (`prod_id`, `prod_pid`, `prod_brand_id`, `prod_user_id`, `prod_pageid`, `main_cid`, `prod_category`, `prod_url`, `prod_name`, `prod_size`, `prod_href_url`, `prod_slogan`, `prod_class`, `prod_code`, `prod_brand`, `prod_heading`, `prod_title`, `prod_meta_keyword`, `prod_meta_description`, `prod_header_image`, `prod_video`, `prod_image`, `prod_mouse_hover_image`, `prod_himage`, `prod_icon_image`, `prod_mrp`, `prod_price`, `prod_discount`, `prod_amount`, `prod_final_price`, `prod_mrp_usd`, `prod_price_usd`, `prod_discount_usd`, `prod_amount_usd`, `prod_free_return`, `prod_warranty`, `prod_shipping`, `prod_delivery`, `prod_support_number`, `prod_support_email`, `prod_final_price_usd`, `prod_stock`, `prod_minimum_sale_qty`, `prod_stock_status`, `prod_featured`, `prod_small_desciption`, `prod_full_desciption`, `prod_down_pdf`, `prod_display`, `prod_new_arrival`, `prod_on_sell`, `prod_hot`, `prod_offer`, `prod_bestservice`, `prod_sale_where`, `prod_hot_service`, `prod_is_home`, `prod_room_type`, `prod_no_of_bed`, `prod_no_of_adult`, `prod_no_of_child`, `prod_cate_ashome`, `prod_no_of_days`, `prod_packaging_type`, `prod_packaging_size`, `prod_boiling_point`, `prod_melting_point`, `prod_molecular_formula`, `prod_molar_mass`, `prod_density`, `prod_form`, `prod_flash_point`, `prod_ph_value`, `prod_type`, `prod_brands`, `prod_length`, `prod_weight`, `prod_colour_available`, `prod_packing_detail`, `prod_minimum_pcs`, `prod_delivery_charges`, `prod_other`, `prod_item_code`, `prod_order`, `prod_link`, `prod_benefits1`, `prod_benefits2`, `prod_benefits3`, `prod_benefits4`, `prod_benefits5`, `prod_benefits6`, `prod_benefits7`, `prod_benefits8`, `prod_benefits9`, `prod_benefits10`, `prod_time_duration`, `prod_page_type`, `prod_types`, `prod_start_date`, `prod_end_date`, `prod_created`, `prod_modified`, `prod_status`) VALUES
(25, 9, 0, 0, 0, 0, '', 'rodents', 'Rodents', '', '', '', '', '', 0, '', '', '', '', '', '', 'd6d26a15b78f8cb9c5b3e4fdb1c07c66.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Rodents (rats & mice) are a serious issue that affect many Indian homes.', '<p><span style=\\\"font-size: large;\\\">Rodents (rats &amp; mice) are a serious issue that affect many Indian homes. Our homes are very attractive to them, as they provide them with everything they need: food, water and shelter.&nbsp;</span><span style=\\\"font-size: large;\\\">Rodents do not only spread diseases and contaminate food, they also cause damage to your home. Rodents have to continually gnaw on their teeth to keep them from growing too long. They will gnaw on anything, so when you hear noises in your roof, walls or under your home they are not only nesting, but they may be gnawing on your water pipes, plaster, ducting for your heater and air-conditioning, and electrical cables and conduits. Every year homes are water damaged and fires are caused by rodent infestations.&nbsp;</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>Kinds of Rats</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n<strong>House Rat:</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">These are normally small rodents which have black, small eyes, and large ears. Their weight is about a &frac12; ounce and they have grey to light brownish body colour. The adult mouse has about five to seven inches long including a tail of about 3to 4 inches. Gnaw marks, droppings, and tracks are signs of the mice being active in various places. They make use of fibrous materials or finely shredded paper to make their nests. Their musky odour also gives an indication that the rodents are nearby in the room. They are usually more active during the night time but sometimes also noticeable during the day.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong><br type=\\\"_moz\\\" />\r\n</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>Roof Rat:</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Black or brown, can be over 40 cm long, with a long tail, large ears and eyes, and a pointed nose. Body is smaller and sleeker. Fur is smooth. Nests inside and under buildings, or in piles of rubbish or wood. Excellent climber that can often be found in the upper parts of structures.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong><br />\r\n</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>Cotton Rat</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The head and body of cotton rats range in length from 13.3 to 21.3 cm. The tail is bare and is not as long as the head and body (7.6 to 16.5 cm). Their bodies are covered with coarse hair. The ears are almost hidden by the hair. The rats are usually gray on their back with black hairs mixed in. The underside is light colored.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:18:25', '2020-08-20 06:54:15', 'Enable'),
(26, 9, 0, 0, 0, 0, '', 'rodents-control', 'Rodents Control', '', '', '', '', '', 0, '', '', '', '', '', '', '9f1216fddd8c4da114e82e939697bdc8.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'The most successful and long-term control of mouse in the house is the restriction of food items and shelter as much as possible.', '<p><span style=\\\"font-size: large;\\\">The most successful and long-term control of mouse in the house is the restriction of food items and shelter as much as possible. For trapping to be successful, sufficient traps must be placed in different locations. We also use trapping as the follow-up method after the baiting program gets completed. The baiting program might cause sanitation or odour problem which must be considered before you choose the process. In such a case, trapping proves to be the perfect approach. After the mice get removed, steps must be taken to exclude their presence totally for preventing the reoccurring of the issue. Different kinds of rodenticides are also available which get specifically used against these rats. However, they have harmful effects on pets, wildlife, and human beings as they contain toxic materials in them. So, precautions must be taken accordingly.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n<strong>Trapping, Exclusion, Nest Removal and Remediation</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong><br />\r\n</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>This premier program includes:</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Rodent proofing the structure</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Trapping and removing rodents already inside the structure</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Placement of exterior bait stations to reduce rodent pressure</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Checking traps every 48 hours until population is eradicated</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Removal of nesting material and any dead rodents found</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Sanitization of all affected surfaces</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Residual material application to eliminate pests associated with rodents, such as cockroaches, carpet beetles and feasting insects (fleas, ticks &amp; mites)</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:18:42', '2020-08-20 06:55:31', 'Enable'),
(27, 9, 0, 0, 0, 0, '', 'rodents-inspection', 'Rodents Inspection', '', '', '', '', '', 0, '', '', '', '', '', '', '78b36f801bb7565723407c2f7d1a2c4b.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Rodents are also highly reproductive. A female rodent can become pregnant at just six weeks old.', '<p><span style=\\\"font-size: large;\\\">Rodents are also highly reproductive. A female rodent can become pregnant at just six weeks old. Once the litter has been born, the female rodent can become pregnant again right away. And of course, the female rodents in the litter can also become pregnant in just six weeks, creating a never-ending cycle of reproduced pests, and an incredible infestation.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">So how do you keep your home from becoming the next breeding ground for these diseased pests? Invest in quality preventive treatment! At Vpestify Pest Control, we can eliminate these rodents and prevent their return. If you find yourself the victim of an unwanted house guest (or house pest), call us immediately, and we will schedule an initial service inspection plan. You can choose a plan that fits your budget and schedule.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Our service treatments are children and pet-friendly. We leave no stone unturned, pulling out all appliances and treating those hidden areas where pests like to hide. For preventive treatments, we thoroughly inspect your property to find and seal all possible entry points into the home. Rats can squeeze into a space the size of a quarter and mice the size of a dime. Sealing these entry points will prevent these pests from gaining access to your home. Once sealed, we go to work on eliminating the creatures that are now trapped inside.</span><span style=\\\"font-size: large;\\\"><br />\r\n</span><span style=\\\"font-size: large;\\\"><br />\r\n</span><span style=\\\"font-size: large;\\\">Don&rsquo;t wait until you have seen a rodent to call us at Vpestify Pest Control. Scheduling an inspection and treatment plan with us will ensure that you and your family are the only occupants living inside your home.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:18:54', '2020-08-20 06:56:38', 'Enable'),
(28, 10, 0, 0, 0, 0, '', 'termite-control', 'Termite Control', '', '', '', '', '', 0, '', '', '', '', '', '', 'af29ec78d2fabe5fb3c2f2f9e54937c5.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Your home is a place to shelter you and your loved ones. Do not turn it into a shelter home for the termites.', '<p><span style=\\\"font-size: large;\\\">No Need to Risk Your Property in the Hands of Termites</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Your home is a place to shelter you and your loved ones. Do not turn it into a shelter home for the termites. Call Vpestify now, to shield your home and its valuables against the termites. We are a termite control service company Delhi, who can provide you expert guidance against termite. We can design customised pest control methods especially for you.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">What are the Symptoms of Termite Infestation?</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The small termites are not always visible in your house. Mostly, by the time they make their appearance they have already built up huge colonies inside the cracks and crevices of your house. The king and the queen termites have two pairs of translucent wings and they tend to break off quickly after swarming.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Sometimes you may notice large volumes of discarded wings of termites especially around the heat source like chimneys and furnaces. Sometimes you may find termites damages on your wooden framework and flooring which are a sure indication of termite infestation in your house.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:19:19', '2020-08-20 06:58:35', 'Enable'),
(29, 10, 0, 0, 0, 0, '', 'termite-inspection', 'Termite Inspection', '', '', '', '', '', 0, '', '', '', '', '', '', 'e9b5f4aa906eda79bc876c1fb20ba22c.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Prevention is always better than cure, so stop the termite infestation by taking the guidance of expert termite control services company in Delhi', '<p><span style=\\\"font-size: large;\\\">&nbsp;Prevention of Termite Infestation</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Prevention is always better than cure, so stop the termite infestation by taking the guidance of expert termite control services company in Delhi. We can inspect your house and detect the termite breeding area.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">At vPestify, we check all possible signs termite infestation in and around your house.&nbsp; Our expert exterminators would help you in termite-proofing your home. If you already suffer from termite infestation, we can help you to get rid of them from your property right from the roots.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Contact vPestify</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">As your trusted termite control service provider, we will protect your premise as if it is our own. your peace of mind is important to us.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Please call us today for a free inspection and evaluation.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:19:32', '2020-08-20 07:04:58', 'Enable'),
(30, 10, 0, 0, 0, 0, '', 'termites', 'Termites', '', '', '', '', '', 0, '', '', '', '', '', '', '7cd8e82f7cb286a5f0638b06d335e4d3.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Every year the termites can cause a damage of over 7 billion properties all over the world.', '<p><span style=\\\"font-size: large;\\\">Termites Should Not Be Allowed to Feed On Your infrastructures!</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Every year the termites can cause a damage of over 7 billion properties all over the world. They can enter your house through a crack as small as 1/64 of an inch. Upon entry in your house, they build a nest, develop their community and cause extensive damage to your furniture. You need to spend thousands of money to get them repaired.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong><br />\r\n</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>Types of Termite</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Let&rsquo;s have a look at the four most common types of termite</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong><br />\r\n</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>&nbsp;Drywood Termites</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">This is the most common type of termite that can be found throughout the world. As their name suggest, they live in drywood and eat through beams, walls, etc, until they are hollowed out. Unlike many other species, they can live in dry conditions for long periods of time and don&rsquo;t need soil to survive. These termites are able to receive the moisture they need from the wood they eat. Drywood termites are found in warmer climates.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Subterranean Termites</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">This type of termite can only survive in the soil underground. Subterranean termites need high moisture levels. This species prefers to eat soft, spring wood fiber. They build mud tubes to contain the humidity levels necessary for survival. These termites construct mud tunnels on anything that comes into contact with the ground. Similar to Drywood termites, subterranean termites are most common in warmer climates.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong><br />\r\n</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>Dampwood Termites</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">These termites live in wood with high moisture content and therefore don&rsquo;t require contact with the soil to survive. Dampwood termites are mainly found in moist wood logs, stumps and dead trees and can sometimes be found near water leaks or wall voids, however termite infestations in buildings and structures are very rare. These termites are much bigger than the other species.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><strong>Formosan Termites</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br type=\\\"_moz\\\" />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Formosan termites are the most destructive species of termite. They form cartons inside the wood to retain the moisture they need until they can find a water source larger enough for their whole colony. Formosan termites are sometimes classified as subterranean termites, but are slightly larger in size. The size difference allows them to cause more damage than other species.</span></div>\r\n<p>&nbsp;</p>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:19:44', '2020-08-20 07:05:54', 'Enable'),
(31, 11, 0, 0, 0, 0, '', 'wood-borers', 'Wood Borers', '', '', '', '', '', 0, '', '', '', '', '', '', '5d6ad04a0ff68aabde9e391ab31f5e7d.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Borers are insects which can negatively affect timber.', '<p><span style=\\\"font-size: large;\\\">Borers are insects which can negatively affect timber. The larval (grub) stage tunnels through the timber causing damage. The first sign of a borer infestation is small pinholes in the timber, as this is the hole where the adult borer has emerged from the wood. The adult will only live for a short period of time. After mating the female will inject her eggs into the pores of the timber.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Once the female lays her eggs in the pores of the timbers, larvae feed upon starch and other nutrients in the sapwood. Some timbers where the sapwood has insufficient starch, or its pores are too narrow for the female&rsquo;s ovipositor, should be immune to attack. However, conducive conditions such as high moisture and poor ventilation can open the pores of the timber and allow borer attack.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Borers are known to attack old furniture and structural timbers such as flooring, bearers and joists and roofing timbers.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:20:12', '2020-08-20 07:07:34', 'Enable'),
(32, 11, 0, 0, 0, 0, '', 'wood-borers-control', 'Wood Borers Control', '', '', '', '', '', 0, '', '', '', '', '', '', 'a69457bd64d0e6e6aa8a45d83f69e28c.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Our Borer treatment is applied to all accessible timber surfaces throughout the roof void and/or subfloor areas using a timber-saver Boric acid treatment.', '<p><span style=\\\"font-size: large;\\\">Our Borer treatment is applied to all accessible timber surfaces throughout the roof void and/or subfloor areas using a timber-saver Boric acid treatment. This treatment will kill the adult beetles as they emerge from the timber before they have an opportunity to mate and reinfest.</span></p>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:20:29', '2020-08-20 07:08:54', 'Enable'),
(33, 11, 0, 0, 0, 0, '', 'wood-borers-inspection', 'Wood Borers Inspection', '', '', '', '', '', 0, '', '', '', '', '', '', '7b1df27de1bc0373cca8330b13b21c00.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'As your trusted and cost-efficient wood borers removal service provider in Delhi.', '<p><span style=\\\"font-size: large;\\\">As your trusted and cost-efficient wood borers removal service provider in Delhi, our expert service providers would protect your premise as if it was our own and your peace of mind is important to us.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">We are an approved pest control service company and you can call us today to book your free inspection and evaluation. We can give you an estimated cost for the service.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:20:39', '2020-08-20 07:10:15', 'Enable'),
(34, 3, 0, 0, 0, 0, '', 'balcony-bird-net-services', 'Balcony Bird Net Services', '', '', '', '', '', 0, '', '', '', '', '', '', 'eebb1179a56500abe46e9da7bb2edee8.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'Yes', 'The installation of a stealth net on your balcony can and will truly keep birds out! Traditionally, these systems are drilled through concrete.', '<p><span style=\\\"font-size: large;\\\">The installation of a stealth net on your balcony can and will truly keep birds out! Traditionally, these systems are drilled through concrete. However, this has come to be an issue because there are some building which simply won&rsquo;t allow any sort of drilling activity. If you happen to find yourself in this situation, then Standard Pest Management is more than happy to offer an alternative solution.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Installation anti-bird netting with some steps :-</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Research</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Before you begin, research the best type of bird netting for your needs. Compare the types of netting, sizes, weights and equipment needed to install. Once you&rsquo;ve found the right type, shop around to find the best priced deal.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(1) Install corner fixings at every corner or every 10m along a straight run.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(2) Fit intermediate fixings in a straight line between the corner fixings at 1 metre intervals for 75mm and 50mm nets, 0.5 metre intervals&nbsp; &nbsp; &nbsp; &nbsp;for 40mm and 28mm nets and 0.3 metre intervals for 19mm nets.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(3) Run 10m of wire rope through the fixings of one side.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(4) Loop one of the wire ends through the corner fixing and secure with either 2 copper ferrules or 2 wire rope grips.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(5) Hook an opened barrel strainer to the other corner fixing and thread the free end of the wire rope through the eye. Pull the wire rope tight. Secure using 2 copper ferrules or 2 wire rope grips.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(6) Tension the wire by tightening the barrel strainer.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(7) Repeat steps 3 - 6 for the other 3 sides of the area. Larger nets may require additional diagonal support wires.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(8) to attach the net to the rope, attach one corner of the net to the corner fixing using a netting corner tie. When you reach each corner ensure that a netting corner tie is installed around the mesh and the corner fixing.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(9) Hog ring every mesh square around the edge to the wire rope ensuring that the net is pulled tight and square.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Corner Fixings</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Corner fixings should be installed every 10m around the perimeter of the net. These more substantial fixings allow the wire rope to be tensioned to support the weight of the net.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:31:09', '2020-08-20 07:11:09', 'Enable'),
(35, 3, 0, 0, 0, 0, '', 'best-bird-control', 'Best Bird Control', '', '', '', '', '', 0, '', '', '', '', '', '', '628ecc89d803871152749a26e2ecb885.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'Yes', 'Bird control is the generic name for methods to eliminate or deter pest birds from landing, roosting and nesting.', '<p><span style=\\\"font-size: 12px;\\\">Bird control is the generic name for methods to eliminate or deter pest birds from landing, roosting and nesting.</span></p>\r\n<div><span style=\\\"font-size: 12px;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: 12px;\\\">Bird control is important because pest birds can create health-related problems through their feces, including histoplasmosis, cryptococosis, and psittacosis. Bird droppings may also cause damage to property and equipment. Birds also frequently steal from crops and fruit orchards.</span></div>\r\n<div><span style=\\\"font-size: 12px;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: 12px;\\\">&nbsp;</span></div>\r\n<div><span style=\\\"font-size: 12px;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: 12px;\\\">Bird netting is one of the most common methods used to deter unwanted birds from a variety of properties. While this method may seem easy for DIY property protection, it can become a time-consuming chore if not done properly. Check out some of our bird netting do&rsquo;s and don&rsquo;ts to help make the process a little bit easier.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:31:25', '2020-08-20 07:12:17', 'Enable'),
(36, 3, 0, 0, 0, 0, '', 'bird-netting-services', 'Bird Netting Services', '', '', '', '', '', 0, '', '', '', '', '', '', 'ed11151e185bf4f04bdb6c3189376b60.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'Yes', 'There are studies that birds might offer sicknesses once Birds get connected with people\\\'s skin.', '<p><span style=\\\"font-size: large;\\\">&nbsp;Benefits of birds:</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">1. Health Issues:</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">There are studies that birds might offer sicknesses once Birds get connected with people\\\'s skin. Pigeons for example, carry infectious diseases. These pigeons might offer folks TB, flu, infectious disease, Lyme-disease and infection. By ensuring that these pigeons don\\\'t unfold their diseases, bird netting could put an end to your health worrying.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">2. Protecting Plantation</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Most birds tend to peck on your fruits, vegetables, and plants because they know that these are food. Do not underestimate the birds. Protect your plantation with bird netting, thus your plants area unit enclosed safely far away from their prying beaks.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">3. Save The Birds</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The best advantage bird netting has is it\\\'s environmentally friendly. By creating use of bird netting to safeguard your property, you are not killing the birds. You are merely covering up the placement with a web for the birds to remain away. Unlike alternative strategies of blighter management, bird netting does not harm the birds. Pesticides and aroma repellents terminate the birds permanently. Plus, there are laws regarding the harming of birds like robins and blackbirds. Using bird netting, you are abiding the law!</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:31:35', '2020-08-20 07:13:14', 'Enable'),
(37, 3, 0, 0, 0, 0, '', 'birds-&-pigeon', 'Birds & Pigeon', '', '', '', '', '', 0, '', '', '', '', '', '', '3e04c6d420893a9c1e4fda60911210d2.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'Yes', 'The exterior inspection focuses on any architectural feature that provides a place for a bird to sit and/or roost.', '<p><span style=\\\"font-size: large;\\\">The exterior inspection focuses on any architectural feature that provides a place for a bird to sit and/or roost. Outward signs of bird activity are bird droppings below area where birds are sitting, the presence of feathers, nesting materials and/or eggs/chicks. Birds tend to sit on:</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><strong>Roof line and peaks</strong></span></div>\r\n<div><span style=\\\"font-size: large;\\\">Exposed beams under covers and canopies</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Exterior light fixtures</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Signage</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Rooftop environmental control units and exhaust fans/pipes</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The pest professional makes thorough notes of all findings and always invites the customer to participate in the inspection process. He then develops a graph and site plan.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:31:45', '2020-08-20 07:14:48', 'Enable'),
(38, 3, 0, 0, 0, 0, '', 'birds-&-pigeon-control', 'Birds & Pigeon Control', '', '', '', '', '', 0, '', '', '', '', '', '', '3069231151c5005ff2606ae4bd0f1633.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'We all know about the defilement caused by birds, especially pigeons and their over exploding population, to offices, residences, malls, factories,', '<p><span style=\\\"font-size: large;\\\">We all know about the defilement caused by birds, especially pigeons and their over exploding population, to offices, residences, malls, factories, places of worship and just about every inch of space they get. In India, it is common to feed a bird and even more common to accept bird pooping as a sign of good luck in the name of blind superstition, but the repercussions borne by the property owners. Not anymore.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span><span style=\\\"font-size: large;\\\">Bird problem is one of the major problems faced by the architects, designers and property owners these days. With huge investments in the buildings and architectures, there is a concern of maintaining them as well. Bird droppings can damage almost any building material. The amassed droppings can damage roofs and walls. They can even clog gutters, discolor paint and corrode constructional beams. Most importantly, these droppings can destroy the beauty of your valuable architectures and diminish the value of your investment</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Want to leave it to the professionals? Contact Vpestify pest control expert. Schedule a free inspection today!</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:31:55', '2020-08-20 07:16:03', 'Enable'),
(39, 3, 0, 0, 0, 0, '', 'birds-&-pigeon-inspection', 'Birds & Pigeon Inspection', '', '', '', '', '', 0, '', '', '', '', '', '', '60de44f4807c504cfdb48b22975d3733.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'We\\\'ve got the expertise from working on every type of building and structure where birds could perch, nest or roost at night.', '<p><span style=\\\"font-size: large;\\\">&nbsp;Don\\\'t worry, Vpestify is there for you!</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">We\\\'ve got the expertise from working on every type of building and structure where birds could perch, nest or roost at night. we are here to provide you the best pigeons control service. The offered service is highly applauded among our valuable clients for its promptness and reliability. The provided service is rendered as per the needs of our valuable clients. In this service our highly skilled professionals using optimum quality tools and techniques.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Whether it&rsquo;s a shop front, office roof or warehouse canopy, call Vpestify to provide you with the most suitable and effective solutions for pigeon control.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:32:08', '2020-08-20 07:16:52', 'Enable'),
(40, 3, 0, 0, 0, 0, '', 'nylon-net-services', 'Nylon Net Services', '', '', '', '', '', 0, '', '', '', '', '', '', '94a20ba47827b3dce2baf28a3af47bec.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Every year industries spend thousands of dollars on repairing the damage caused by birds and clearing the mess created by their droppings.', '<p><span style=\\\"font-size: large;\\\">Every year industries spend thousands of dollars on repairing the damage caused by birds and clearing the mess created by their droppings. The financial implications of this ongoing nuisance are far more expensive than periodic property maintenance. When birds nest and roost in commercial facilities, they can pose some serious risks like accidental falls, electrical fires, and unsanitary conditions. These are just a few of the many dangers that accompany bird nesting and roosting in commercial spaces.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Bird droppings can tarnish your public image, erode structural components, and increase the risk of slips and falls that can lead to expensive litigation. Birds are also known to carry more than 60 transmittable diseases so getting rid of them is absolutely necessary for maintaining a safe, sanitary work environment. If not controlled in time, bird problems can also invite costly settlements and serious health hazards.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">&nbsp;</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Here are some of the most important reasons that make bird control mandatory:</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(1) Bird droppings are highly acidic and have the ability to cause irreparable damage to vital equipment, rooftops, walkways and everything from paint and cement to wood and metals.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(2) When birds get trapped in HVAC ducts or entangled in the equipment, they can clog components and cause fires.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(3) Birds can contaminate food products inviting foodborne illnesses and regulatory action.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(4) Nesting materials and bird droppings in commercial spaces reflect a very poor business image to customers, visitors, and associates.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(5) Businesses that invest in cleaning bird droppings daily are not only wasting a lot of money but also exposing their employees to over sixty diseases caused by pest birds.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(6) Nesting materials can clog gutters and drains creating the potential for flooding.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(7) Bird droppings and nesting materials found in storage facilities, food processing plants, and restaurants can invite hefty fines, legal action and also lead to a complete closure of operations.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(8) Bird droppings can be slippery and may cause potential hazards for your employees and customers.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(9) In certain industries, infectious bird droppings can breach health codes, attract fines, lawsuits and legal courses of action.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(10) If your production has to be slowed down, delayed or stopped due to bird influence, then you are losing money. Employees should not work in areas that may be unsafe due to a build-up of bird droppings which can lead to shutdowns.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(11) Birds swooping and making noise can be distracting and annoying to both your employees and visitors as well as affecting work.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Safe and Humane Methods of Controlling Bird Infestations</span></div>\r\n<div><span style=\\\"font-size: large;\\\">If you want to avoid health risks, property damage, cleanup costs, expensive equipment repairs, health code violations, work stoppages, and clogged drains, you can hire a professional vPestify bird control service that offers safe, effective and viable solutions for all types of bird problems. The most commonly used bird exclusion options include the following:</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">&nbsp;</span></div>\r\n<div><span style=\\\"font-size: large;\\\">1. Bird Netting</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Netting acts as a physical barrier that humanely excludes birds from unwanted areas like eaves, canopies, and gardens. Netting effectively prevents birds from nesting and roosting year round and keeps any desired location protected from their nuisance.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">&nbsp;</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Joining Nets Together at Overlap Seams</span></div>\r\n<div><span style=\\\"font-size: large;\\\">&nbsp;<span style=\\\"white-space: pre;\\\">	</span>For PollyNet: Overlap the netting pieces a minimum of 6&quot;. Install the poly hardware seam fasteners every 6&quot; on both sides of the seam for its full length. Twist Locks, Net Ties or Poly Cord are recommended for sealing PollyNet seams. DO NOT use metal net rings to seal PollyNet seams.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">&nbsp;<span style=\\\"white-space: pre;\\\">	</span>K-Net HT: An overlap seam (also called a &lsquo;freestanding&rsquo; seam) is where you need to join two pieces of K-Net bird netting together without the benefit of a support cable or part of the structure.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">1. Overlap the edges of the two pieces of K-Net by at least 3 mesh (2.25 in./5.7cm).</span></div>\r\n<div><span style=\\\"font-size: large;\\\">2. Joining K-Net together at a seam is done with \\\'net rings\\\'. Choose the rings and ring tool* that best suits your application.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">3. Join the two pieces of netting by installing one net ring in EACH overlapped 3/4&quot; square mesh along the full length of the seam.</span></div>\r\n<div><span style=\\\"font-size: large;\\\">* Nixalite offers 3 types of&nbsp;</span></div>\r\n<div><span style=\\\"font-size: large;\\\">net rings and ring tools.</span></div>', '', 0, 'No', 'No', 'No', 'Yes', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:32:19', '2020-08-20 07:17:59', 'Enable');
INSERT INTO `products` (`prod_id`, `prod_pid`, `prod_brand_id`, `prod_user_id`, `prod_pageid`, `main_cid`, `prod_category`, `prod_url`, `prod_name`, `prod_size`, `prod_href_url`, `prod_slogan`, `prod_class`, `prod_code`, `prod_brand`, `prod_heading`, `prod_title`, `prod_meta_keyword`, `prod_meta_description`, `prod_header_image`, `prod_video`, `prod_image`, `prod_mouse_hover_image`, `prod_himage`, `prod_icon_image`, `prod_mrp`, `prod_price`, `prod_discount`, `prod_amount`, `prod_final_price`, `prod_mrp_usd`, `prod_price_usd`, `prod_discount_usd`, `prod_amount_usd`, `prod_free_return`, `prod_warranty`, `prod_shipping`, `prod_delivery`, `prod_support_number`, `prod_support_email`, `prod_final_price_usd`, `prod_stock`, `prod_minimum_sale_qty`, `prod_stock_status`, `prod_featured`, `prod_small_desciption`, `prod_full_desciption`, `prod_down_pdf`, `prod_display`, `prod_new_arrival`, `prod_on_sell`, `prod_hot`, `prod_offer`, `prod_bestservice`, `prod_sale_where`, `prod_hot_service`, `prod_is_home`, `prod_room_type`, `prod_no_of_bed`, `prod_no_of_adult`, `prod_no_of_child`, `prod_cate_ashome`, `prod_no_of_days`, `prod_packaging_type`, `prod_packaging_size`, `prod_boiling_point`, `prod_melting_point`, `prod_molecular_formula`, `prod_molar_mass`, `prod_density`, `prod_form`, `prod_flash_point`, `prod_ph_value`, `prod_type`, `prod_brands`, `prod_length`, `prod_weight`, `prod_colour_available`, `prod_packing_detail`, `prod_minimum_pcs`, `prod_delivery_charges`, `prod_other`, `prod_item_code`, `prod_order`, `prod_link`, `prod_benefits1`, `prod_benefits2`, `prod_benefits3`, `prod_benefits4`, `prod_benefits5`, `prod_benefits6`, `prod_benefits7`, `prod_benefits8`, `prod_benefits9`, `prod_benefits10`, `prod_time_duration`, `prod_page_type`, `prod_types`, `prod_start_date`, `prod_end_date`, `prod_created`, `prod_modified`, `prod_status`) VALUES
(41, 4, 0, 0, 0, 0, '', 'bird-spike-installation-services', 'Bird Spike Installation Services', '', '', '', '', '', 0, '', '', '', '', '', '', '8b985f2daf6dad0264e433a449afb1bb.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Methods of bird control include physical deterrents, visual deterrents, multi-sensory deterrents, sonic devices, trained birds of prey (balconry), chemicals, contraceptives and active barriers, among others.', '<p><span style=\\\"font-size: large;\\\">Methods of bird control include physical deterrents, visual deterrents, multi-sensory deterrents, sonic devices, trained birds of prey (</span><span style=\\\"font-size: large;\\\">balconry</span><span style=\\\"font-size: large;\\\">), chemicals, contraceptives and active barriers, among others. Birds usually adapt quickly to most static bird control devices because the birds adapt after exposure to false threats. The avian control devices that are most effective either physically &quot;block&quot; the birds or &quot;actively modify behavior&quot; using a mild harmless shock.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Physical bird deterrents include such products as steel or plastic spike systems, bird netting, electrified wire systems, non-electrified wire systems, electrified track systems, slope barriers, mechanical spiders, chemical foggers and more. Sharp bird spikes can pierce and impale birds, while &quot;blocking&quot; and &quot;shocking&quot; methods do not harm birds. Unfortunately, blunt tip bird spikes may still impale birds on windy days. The safer shocking and blocking methods simply repel birds from an area with no harm. We recommends the use of bird netting, bird wire, contraceptives and low-current electric barriers. Many different bird control products are used widely throughout the U.S. and the world with low current shocking wire and strips, netting, and mesh being the most effective bird control methods. Companies recommended by the Human Society that create these kinds of products include.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">&nbsp;</span><span style=\\\"font-size: large;\\\">How to install spike:&nbsp;</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(1) All areas that you intend to stick the spikes onto should be cleared, ensuring that they&rsquo;re clean, dry, and free from pigeon droppings.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(2) Squeeze the pigeon spike fixing silicone generously onto the base of the spike (about as thick as your pinky; thicker if the surface of the ledge is&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;uneven).</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(3) Stick the base of the spike level with the edge of the pipe or ledge, so that there&rsquo;s a slight overhang of the spike pins. Press the base down firmly&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;so that the glue oozes out through the little holes.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(4) If the gap behind the first spike is greater than 2 &frac12; inches, pigeons will get in behind them. It will therefore be necessary to put another row</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">&nbsp; &nbsp; &nbsp;of spikes into this space to block it.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(5) For very wide ledges, 3 or more rows of spikes will be necessary. Note: make sure the gap between rows is no greater than 2 &frac12; inches.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(6) Grooves along the base of the spike enable them to snap into segments to fit small gaps.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">(7) Every effort should be made to spike all possible landing sites. Pigeons can land on even the smallest piece of ledge or pipe. Snap spikes into&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; pieces to finish off rows or spike small pipes, etc.</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:32:54', '2020-08-20 07:21:01', 'Enable'),
(42, 4, 0, 0, 0, 0, '', 'bird-spike-manufacturers', 'Bird Spike Manufacturers', '', '', '', '', '', 0, '', '', '', '', '', '', '38a0d2836ef91438c22f6780632de995.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Bird control spikes can be attached to building ledges, street lighting, and commercial signage to prevent wild or  feral birds from perching or roosting.', '<p><span style=\\\"font-size: large;\\\">Bird control spikes can be attached to building ledges, street lighting, and commercial signage to prevent wild or&nbsp; feral birds from perching or roosting. Birds can produce large quantities of unsightly and unhygienic feces, and some birds have very loud calls that can be inconvenient for nearby residents, especially at night. As a result, bird control spikes are used to deter these birds without causing them harm or killing them.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Bird control deterrent spikes are normally around 30 centimetres (0.98 ft) long, and work by reducing the area available for birds to land on. This forces larger varieties of birds, such as seagull, pigeons and crows, to land elsewhere. Birds that attempt to alight on spike-protected surfaces receive a light prick from one or more of the spikes, which is uncomfortable but generally not harmful. As a result, the Royal Society for the Protection of Birds recommends bird control spikes for deterring pigeons from gardens</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:33:08', '2020-08-20 07:22:11', 'Enable'),
(43, 4, 0, 0, 0, 0, '', 'bird-spike-services', 'Bird Spike Services', '', '', '', '', '', 0, '', '', '', '', '', '', '6e06aa5064d3a8d3778825ce78b08c19.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Bird control deterrent spikes are normally around 30 centimetres (0.98 ft) long, and work by reducing the area available for birds to land on.', '<p><span style=\\\"font-size: large;\\\"><span style=\\\"color: rgb(85, 85, 85); font-family: rubik, sans-serif; text-align: justify;\\\">Bird control deterrent spikes are normally around 30 centimetres (0.98&nbsp;ft) long, and work by reducing the area available for birds to land on. This forces larger varieties of birds, such as&nbsp;seagulls and&nbsp;crows to land elsewhere. Birds that attempt to alight on spike-protected surfaces receive a light prick from one or more of the spikes, which is uncomfortable but generally not harmful. As a result, the&nbsp;Royal Society for the Protection of Birds&nbsp;(RSPB) recommends bird control spikes for deterring pigeons from gardens.</span></span></p>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:33:17', '2020-08-20 07:23:13', 'Enable'),
(44, 4, 0, 0, 0, 0, '', 'transparent-bird-net-services', 'Transparent Bird Net Services', '', '', '', '', '', 0, '', '', '', '', '', '', '0f8f911a2de6eb1de17b0e036aea6a55.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Bird netting or anti-bird netting is a form of bird pest control. It is a net used to prevent birds from reaching certain areas.', '<p><span style=\\\"font-size: large;\\\">Bird netting or anti-bird netting is a form of bird pest control. It is a net used to prevent birds from reaching certain areas.</span></p>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Bird protection netting comes in a variety of shapes and forms, The most common is a small mesh (1 or 2 cm squares) either extruded and bi-oriented polypropylene or woven polyethylene.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">The color most used is black (as the carbon black UV inhibitor offers the best protection against solar rays), but also bird netting may be available in other colors like white (usually white netting is woven or knitted and has an even smaller mesh size as it will serve as a double purpose anti-hail net for the protection of fruits during summer hail storms or late spring during flowering) or green (usually used in home gardening and mostly sold at retail outlets for the DIY farmers).</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Professional anti-bird netting comes in jumbo rolls that offer considerable savings to the farmers or aquaculturists. Retail chains and local stores will offer smaller packages that fit the backyard gardener\\\'s needs.</span></div>\r\n<div><span style=\\\"font-size: large;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: large;\\\">Bird netting is one of the most effective and long lasting ways of bird proofing buildings and other structures against all urban bird species. It provides a discreet and impenetrable barrier that protects premises without harming the birds. Bird netting can be particularly effective for large open areas such as roofs and loading bays. Design considerations include the type and material of the fixings utilized and the bird species requiring exclusion</span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-19', '2025-08-19', '2020-08-19 09:33:27', '2020-08-20 07:24:13', 'Enable'),
(45, 2, 0, 0, 0, 0, '', 'residential-pest-control', 'residential pest control', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', '', '', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:23:37', '0000-00-00 00:00:00', 'Enable'),
(46, 45, 0, 0, 0, 0, '', 'bed-bugs-treatment', 'Bed Bugs Treatment', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', '', '', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:25:05', '0000-00-00 00:00:00', 'Enable'),
(47, 46, 0, 0, 0, 0, '', 'bed-bugs', 'Bed Bugs', '', '', '', '', '', 0, '', '', '', '', '', '', 'c2966416e781ddbff00b5d26b4a46dc0.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Bed Bugs are the ultimate hitchhiker and can be picked up almost anywhere.', '<p><span style=\\\"font-family: Arial;\\\"><span style=\\\"font-size: medium;\\\"><span style=\\\"color: rgb(85, 85, 85); text-align: justify;\\\">Bed Bugs are the ultimate hitchhiker and can be picked up almost anywhere. Once in your home, they can get into all the rooms through door frames, windows, and cracks in the walls. If you&rsquo;ve recently moved in some new furniture, you may even have brought the Bed Bugs in with it. Bed Bugs often lay eggs in the crevices of wood furniture. You are also more at risk if you travel, or if you regularly host travellers (for example, if you rent out your home) since Bed Bugs love to grab a ride on clothing and luggage.</span></span></span></p>\r\n<p><span style=\\\"font-family: Arial;\\\"><span style=\\\"background-color: rgb(255, 255, 255);\\\"><span style=\\\"font-size: medium;\\\"><span style=\\\"color: rgb(85, 85, 85); text-align: justify;\\\">For our services or query call us on</span><span style=\\\"color: rgb(85, 85, 85); text-align: justify;\\\">&nbsp;</span><span style=\\\"text-align: justify; box-sizing: border-box; color: rgb(214, 12, 12); display: inline-block;\\\">&nbsp;</span></span><font color=\\\"#d60c0c\\\" size=\\\"3\\\">+91- 8851517652</font></span></span></p>\r\n<p>&nbsp;</p>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:29:06', '0000-00-00 00:00:00', 'Enable'),
(48, 46, 0, 0, 0, 0, '', 'bed-bugs-control', 'Bed Bugs Control', '', '', '', '', '', 0, '', '', '', '', '', '', '093cf7702994d8de9c4fb79f7ec170b6.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'The bed bugs find an entry to your house either through the second-hand articles or through furniture.', '<p><span style=\\\"font-size: medium;\\\">The bed bugs find an entry to your house either through the second-hand articles or through furniture. They may also find a place in your house through the rain gutters, wires or plumbing pipes. Sometimes the warehouse companies, railroad cars, and the trucks are also found to be infested. The bed bugs can infest your home with the help of new furniture or by the stowed away furniture which has been shipped from some other place.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Bed Bugs are incredibly stubborn, which is why it&rsquo;s almost impossible to get rid of them without professional help. People often try using home remedies or over-the-counter products, but they don&rsquo;t work. You&rsquo;re not going to be able to starve the insects to death as an adult can go three months without feeding. The expert and approved bed bugs removal Company take special effort to make your premises pest-free.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on&nbsp; <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:34:58', '0000-00-00 00:00:00', 'Enable'),
(49, 46, 0, 0, 0, 0, '', 'bed-bugs-inspection', 'Bed Bugs Inspection', '', '', '', '', '', 0, '', '', '', '', '', '', '1604ba8e425a739e8d357f79fe9641b6.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Once your home is infested, the bugs will spread very quickly.', '<p><span style=\\\"font-size: medium;\\\">Once your home is infested, the bugs will spread very quickly. It is vital that you take action as soon as possible to prevent the infestation from becoming even worse. You may spend significant time and money trying to get rid of these bugs, only to find that they won&rsquo;t leave. That&rsquo;s why you should call VpestifyPest Control instead.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Once we&rsquo;ve gotten rid of the Bed Bugs, you don&rsquo;t want them coming back. Other pest control companies may &ldquo;treat&rdquo; these pests by cutting corners, we are committed to doing it right the first time and making sure that they won&rsquo;t return. Call Vpestify to get these bugs out of your bed and keep them from coming back.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on&nbsp; <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>\r\n<p>&nbsp;</p>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:39:25', '0000-00-00 00:00:00', 'Enable'),
(50, 2, 0, 0, 0, 0, '', 'commercial-pest-control', 'Commercial pest control', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', '', '', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:40:54', '0000-00-00 00:00:00', 'Enable'),
(51, 45, 0, 0, 0, 0, '', 'termite-treatment', 'Termite Treatment', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', '', '', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:42:11', '0000-00-00 00:00:00', 'Enable'),
(52, 45, 0, 0, 0, 0, '', 'cockroaches-treatment', 'Cockroaches Treatment', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', '', '', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:42:30', '0000-00-00 00:00:00', 'Enable'),
(53, 45, 0, 0, 0, 0, '', 'wood-borers-treatment', 'Wood Borers Treatment', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', '', '', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:42:46', '0000-00-00 00:00:00', 'Enable'),
(54, 45, 0, 0, 0, 0, '', 'flying-insects-treatment', 'Flying Insects Treatment', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', '', '', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:43:02', '0000-00-00 00:00:00', 'Enable'),
(55, 45, 0, 0, 0, 0, '', 'crawling-insects-treatment', 'Crawling Insects Treatment', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', '', '', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:43:17', '0000-00-00 00:00:00', 'Enable'),
(56, 45, 0, 0, 0, 0, '', 'rodents-control', 'Rodents Control', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', '', '', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:43:41', '0000-00-00 00:00:00', 'Enable'),
(57, 51, 0, 0, 0, 0, '', 'termites', 'Termites', '', '', '', '', '', 0, '', '', '', '', '', '', 'c717ea640ba4e23b396fcc4ee5beb6bd.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Every year the termites can cause a damage of over 7 billion properties all over the world.', '<p><span style=\\\"font-size: medium;\\\"><strong>Termites Should Not Be Allowed to Feed On Your infrastructures!</strong></span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Every year the termites can cause a damage of over 7 billion properties all over the world. They can enter your house through a crack as small as 1/64 of an inch. Upon entry in your house, they build a nest, develop their community and cause extensive damage to your furniture. You need to spend thousands of money to get them repaired.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Types of Termite</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Let&rsquo;s have a look at the four most common types of termite</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Drywood Termites</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">This is the most common type of termite that can be found throughout the world. As their name suggest, they live in drywood and eat through beams, walls, etc, until they are hollowed out. Unlike many other species, they can live in dry conditions for long periods of time and don&rsquo;t need soil to survive. These termites are able to receive the moisture they need from the wood they eat. Drywood termites are found in warmer climates.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Subterranean Termites</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">This type of termite can only survive in the soil underground. Subterranean termites need high moisture levels. This species prefers to eat soft, spring wood fiber. They build mud tubes to contain the humidity levels necessary for survival. These termites construct mud tunnels on anything that comes into contact with the ground. Similar to Drywood termites, subterranean termites are most common in warmer climates.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong><br />\r\n</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Dampwood Termites</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">These termites live in wood with high moisture content and therefore don&rsquo;t require contact with the soil to survive. Dampwood termites are mainly found in moist wood logs, stumps and dead trees and can sometimes be found near water leaks or wall voids, however termite infestations in buildings and structures are very rare. These termites are much bigger than the other species.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">F<strong>ormosan Termites</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Formosan termites are the most destructive species of termite. They form cartons inside the wood to retain the moisture they need until they can find a water source larger enough for their whole colony. Formosan termites are sometimes classified as subterranean termites, but are slightly larger in size. The size difference allows them to cause more damage than other species.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on&nbsp; +91 9806161974</span></div>\r\n<p>&nbsp;</p>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:48:41', '0000-00-00 00:00:00', 'Enable'),
(58, 51, 0, 0, 0, 0, '', 'termite-control', 'Termite Control', '', '', '', '', '', 0, '', '', '', '', '', '', 'd7d4426540342d0c673b92f323f9cbd3.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Your home is a place to shelter you and your loved ones.', '<p><span style=\\\"font-size: medium;\\\"><strong>No Need to Risk Your Property in the Hands of Termites</strong></span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Your home is a place to shelter you and your loved ones. Do not turn it into a shelter home for the termites. Call Vpestify now, to shield your home and its valuables against the termites. We are a termite control service company Delhi, who can provide you expert guidance against termite. We can design customised pest control methods especially for you.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>What are the Symptoms of Termite Infestation?</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">The small termites are not always visible in your house. Mostly, by the time they make their appearance they have already built up huge colonies inside the cracks and crevices of your house. The king and the queen termites have two pairs of translucent wings and they tend to break off quickly after swarming.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Sometimes you may notice large volumes of discarded wings of termites especially around the heat source like chimneys and furnaces. Sometimes you may find termites damages on your wooden framework and flooring which are a sure indication of termite infestation in your house.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on&nbsp; <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:53:01', '0000-00-00 00:00:00', 'Enable'),
(59, 51, 0, 0, 0, 0, '', 'termite-inspection', 'Termite Inspection', '', '', '', '', '', 0, '', '', '', '', '', '', '3c468e4ed6e22344184db4cf0751cea3.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Prevention is always better than cure, so stop the termite infestation by taking the guidance of expert termite control services company in Delhi.', '<p><span style=\\\"font-size: medium;\\\"><strong>Prevention of Termite Infestation</strong></span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Prevention is always better than cure, so stop the termite infestation by taking the guidance of expert termite control services company in Delhi. We can inspect your house and detect the termite breeding area.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">At vPestify, we check all possible signs termite infestation in and around your house.&nbsp; Our expert exterminators would help you in termite-proofing your home. If you already suffer from termite infestation, we can help you to get rid of them from your property right from the roots.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Contact vPestify</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">As your trusted termite control service provider, we will protect your premise as if it is our own. your peace of mind is important to us.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Please call us today for a free inspection and evaluation.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on&nbsp;&nbsp;<span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 06:56:47', '0000-00-00 00:00:00', 'Enable'),
(60, 52, 0, 0, 0, 0, '', 'cockroaches', 'Cockroaches', '', '', '', '', '', 0, '', '', '', '', '', '', '0b49f014d3957e12f7b05c84aa6b097c.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Cockroaches are one of the most notorious household pests. They invade your house in the darkness of night and eat up your food products.', '<p><span style=\\\"font-size: medium;\\\">Cockroaches are one of the most notorious household pests. They invade your house in the darkness of night and eat up your food products. A large magnitude of people is so allergic to cockroaches that they do not even require physical sighting of the roaches to trigger the allergic reaction.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">If you have any medical condition like asthma, then the cockroaches would be very harmful to you as they can multiply just like Salmonella.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Cockroaches have the ability to withstand difficult condition and this is the main reason why you should employ profession cockroach pest control service to deal with them. The approved cockroach control experts can eliminate them right from the roots so that your property becomes 100% pest free.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br type=\\\"_moz\\\" />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Types of Cockroaches</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br type=\\\"_moz\\\" />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>American cockroach</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Despite what its name suggests, the American cockroach is not native to North America. They can be found worldwide. Reddish brown in color with a yellow band near the head, American cockroaches have full sets of wings that they sometimes use to fly short distances. However, flight is not their preferred mode of transportation. When food is not readily available, they may bite, hoping to get food particles off of the face and hands of unsuspecting human victims.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Smokybrown Cockroache</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">The Smokybrown cockroach is commonly found outdoors. The humid environment is ideal for this type of cockroach because it loses moisture much more easily than other species, so the humidity helps prevent it from drying up. Because they lose moisture so easily, the Smokybrown cockroach is also relatively lazy. To prevent further moisture loss, they try to keep movement to a minimum.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Brownbanded cockroach</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">As you might guess from the name, Brownbanded cockroaches have brown &ldquo;bands&rdquo; that span across the wings. Another distinctive characteristic of this species is the &ldquo;liberty bell&rdquo; shape on the pronotal shield (near the head). The Brownbanded cockroach itself can be anywhere from light to medium brown in color, with females being darker than the male. Both males and females have wings, but only the males fly. The females&rsquo; wings are much shorter and do not cover the entire abdomen, leaving them unequipped for flight.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Brownbanded cockroaches will not likely bite, but they can still be dangerous. They are known to carry disease-causing bacteria on their legs and bodies, depositing it throughout your home or business as they travel.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Cockroaches Control</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">There are quite a few varieties of cockroaches. While some of them are generally outsiders and rarely enters your home in search of warmth, others like the notorious cockroach mostly prefer the interior of your house. The old saying &ldquo;for every cockroach you see, there are 100 more you don&rsquo;t&rdquo; is very apt for them.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">The cockroaches are experts in hiding in between the cracks and crevices of your house, they can survive tough conditions and can perfectly avoid from being stamped under your shoes. But, do not worry. The good news is there is Vpestify for you. We can eliminate them completely with the right cockroach treatment.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">we can offer you professional cockroach control program to make your premises 100% pest free. Our company is expert in indoor cockroach control service, prevents them from re-multiplying and also effectively eliminate their eggs and larvae from your house. Professional cockroaches control services for all types of pests.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">You can avail our monthly treatment which also includes bait management and spraying of insecticides in the cracks and crevices of your house. We also provide commercial cockroach management service.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on&nbsp; <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:00:51', '0000-00-00 00:00:00', 'Enable'),
(61, 52, 0, 0, 0, 0, '', 'cockroaches-control', 'Cockroaches Control', '', '', '', '', '', 0, '', '', '', '', '', '', '21f65d10b427fb92ccb2e64cbefde49a.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'There are quite a few varieties of cockroaches.', '<p><span style=\\\"font-size: medium;\\\">There are quite a few varieties of cockroaches. While some of them are generally outsiders and rarely enters your home in search of warmth, others like the notorious cockroach mostly prefer the interior of your house. The old saying &ldquo;for every cockroach you see, there are 100 more you don&rsquo;t&rdquo; is very apt for them.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">The cockroaches are experts in hiding in between the cracks and crevices of your house, they can survive tough conditions and can perfectly avoid from being stamped under your shoes. But, do not worry. The good news is there is Vpestify for you. We can eliminate them completely with the right cockroach treatment.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">we can offer you a professional cockroach control program to make your premises 100% pest free. Our company is expert in indoor cockroach control service, prevents them from re-multiplying and also effectively eliminate their eggs and larvae from your house. Professional cockroaches control services for all types of pests.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">You can avail our monthly treatment which also includes bait management and spraying of insecticides in the cracks and crevices of your house. We also provide commercial cockroach management service.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on&nbsp; </span><span style=\\\"color: rgb(255, 0, 0);\\\"><span style=\\\"font-size: medium;\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:03:44', '0000-00-00 00:00:00', 'Enable'),
(62, 52, 0, 0, 0, 0, '', 'cockroaches-inspection', 'Cockroaches Inspection', '', '', '', '', '', 0, '', '', '', '', '', '', '8de8d18eb537280dfe0f1327eba5bf83.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'As your trusted pest control service provider, we will protect your premise as if it was our own and your peace of mind is important to us.', '<p><strong>Contact Vpestify Control Services For Cockroach Pest Control</strong></p>\r\n<div>&nbsp;</div>\r\n<div>As your trusted pest control service provider, we will protect your premise as if it was our own and your peace of mind is important to us.</div>\r\n<div>&nbsp;</div>\r\n<div>You can contact us today to get your house inspected and evaluated.</div>\r\n<div>&nbsp;</div>\r\n<div>For our services or query call us on&nbsp;+91- 8851517652</div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:06:40', '0000-00-00 00:00:00', 'Enable'),
(63, 53, 0, 0, 0, 0, '', 'wood-borers', 'Wood Borers', '', '', '', '', '', 0, '', '', '', '', '', '', 'fa7c75051896ccec3e771ee0f723db3f.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Borers are insects which can negatively affect timber.', '<p><span style=\\\"font-size: medium;\\\">Borers are insects which can negatively affect timber. The larval (grub) stage tunnels through the timber causing damage. The first sign of a borer infestation is small pinholes in the timber, as this is the hole where the adult borer has emerged from the wood. The adult will only live for a short period of time. After mating the female will inject her eggs into the pores of the timber.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Once the female lays her eggs in the pores of the timbers, larvae feed upon starch and other nutrients in the sapwood. Some timbers where the sapwood has insufficient starch, or its pores are too narrow for the female&rsquo;s ovipositor, should be immune to attack. However, conducive conditions such as high moisture and poor ventilation can open the pores of the timber and allow borer attack.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Borers are known to attack old furniture and structural timbers such as flooring, bearers and joists and roofing timbers.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on&nbsp; </span><span style=\\\"color: rgb(255, 0, 0);\\\"><span style=\\\"font-size: medium;\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:13:04', '0000-00-00 00:00:00', 'Enable'),
(64, 53, 0, 0, 0, 0, '', 'wood-borers-control', 'Wood Borers Control', '', '', '', '', '', 0, '', '', '', '', '', '', 'ede4f5d7f9dad64a289f9584dc0e0108.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Our Borer treatment is applied to all accessible timber surfaces throughout the roof void and/or subfloor areas using a timber-saver Boric acid treatment.', '<p><span style=\\\"font-size: medium;\\\">Our Borer treatment is applied to all accessible timber surfaces throughout the roof void and/or subfloor areas using a timber-saver Boric acid treatment. This treatment will kill the adult beetles as they emerge from the timber before they have an opportunity to mate and reinfest.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:15:48', '0000-00-00 00:00:00', 'Enable'),
(65, 53, 0, 0, 0, 0, '', 'wood-borers-inspection', 'Wood Borers Inspection', '', '', '', '', '', 0, '', '', '', '', '', '', 'f0360c2197176ecf964fe0ea0e72c944.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'As your trusted and cost-efficient wood borers removal service provider in Delhi, our expert service providers would protect your premise as if it was our own and your peace of mind is important to us.', '<p><span style=\\\"font-size: medium;\\\">As your trusted and cost-efficient wood borers removal service provider in Delhi, our expert service providers would protect your premise as if it was our own and your peace of mind is important to us.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">We are an approved pest control service company and you can call us today to book your free inspection and evaluation. We can give you an estimated cost for the service.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:21:13', '0000-00-00 00:00:00', 'Enable');
INSERT INTO `products` (`prod_id`, `prod_pid`, `prod_brand_id`, `prod_user_id`, `prod_pageid`, `main_cid`, `prod_category`, `prod_url`, `prod_name`, `prod_size`, `prod_href_url`, `prod_slogan`, `prod_class`, `prod_code`, `prod_brand`, `prod_heading`, `prod_title`, `prod_meta_keyword`, `prod_meta_description`, `prod_header_image`, `prod_video`, `prod_image`, `prod_mouse_hover_image`, `prod_himage`, `prod_icon_image`, `prod_mrp`, `prod_price`, `prod_discount`, `prod_amount`, `prod_final_price`, `prod_mrp_usd`, `prod_price_usd`, `prod_discount_usd`, `prod_amount_usd`, `prod_free_return`, `prod_warranty`, `prod_shipping`, `prod_delivery`, `prod_support_number`, `prod_support_email`, `prod_final_price_usd`, `prod_stock`, `prod_minimum_sale_qty`, `prod_stock_status`, `prod_featured`, `prod_small_desciption`, `prod_full_desciption`, `prod_down_pdf`, `prod_display`, `prod_new_arrival`, `prod_on_sell`, `prod_hot`, `prod_offer`, `prod_bestservice`, `prod_sale_where`, `prod_hot_service`, `prod_is_home`, `prod_room_type`, `prod_no_of_bed`, `prod_no_of_adult`, `prod_no_of_child`, `prod_cate_ashome`, `prod_no_of_days`, `prod_packaging_type`, `prod_packaging_size`, `prod_boiling_point`, `prod_melting_point`, `prod_molecular_formula`, `prod_molar_mass`, `prod_density`, `prod_form`, `prod_flash_point`, `prod_ph_value`, `prod_type`, `prod_brands`, `prod_length`, `prod_weight`, `prod_colour_available`, `prod_packing_detail`, `prod_minimum_pcs`, `prod_delivery_charges`, `prod_other`, `prod_item_code`, `prod_order`, `prod_link`, `prod_benefits1`, `prod_benefits2`, `prod_benefits3`, `prod_benefits4`, `prod_benefits5`, `prod_benefits6`, `prod_benefits7`, `prod_benefits8`, `prod_benefits9`, `prod_benefits10`, `prod_time_duration`, `prod_page_type`, `prod_types`, `prod_start_date`, `prod_end_date`, `prod_created`, `prod_modified`, `prod_status`) VALUES
(66, 54, 0, 0, 0, 0, '', 'flies', 'Flies', '', '', '', '', '', 0, '', '', '', '', '', '', 'b465d2018ff9734e1902f81eaf92d9e4.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'There are over 120,000 species of flies worldwide. Flies are considered pests because they pose a health risk to humans, pets and livestock.', '<p><span style=\\\"font-size: medium;\\\">There are over 120,000 species of flies worldwide. Flies are considered pests because they pose a health risk to humans, pets and livestock. They can infest your home or business and spread diseases like Salmonella and E. coli. A few species may even bite humans and animals.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">If a small fly problem is left uncontrolled, it has the potential to turn into a serious infestation. Some fly species are able to mature from eggs to adults in just seven days. There are simple ways you can identify the signs of a fly infestation and reduce the need for fly control. Taking a proactive approach with deterrent measures will also help you avoid costly treatments.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:25:19', '0000-00-00 00:00:00', 'Enable'),
(67, 54, 0, 0, 0, 0, '', 'house-fly', 'House Fly', '', '', '', '', '', 0, '', '', '', '', '', '', '590f7f53aadbe11f4031807ab6576075.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'The house fly is the most common fly found in and around homes.', '<p><span style=\\\"font-size: medium;\\\">The house fly is the most common fly found in and around homes. It has a worldwide distribution and is prominent in the United States. House flies are not only nuisance pests while buzzing around homes, but they are potential disease carriers. House flies have short lifespans, but they can quickly reproduce in large numbers, leading to large house fly populations if not identified and effectively controlled.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Signs of a House Fly Infestation</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">The most common sign of a housefly infestation is the presence of the flies, themselves. Larvae may also be seen crawling out of their breeding material as they pupate. Along with seeing house flies, people may hear them around the home. House flies produce buzzing sounds which are a result of their two wings beating together.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>House Fly Prevention</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>How Do House Flies Get in the House?</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">House flies take advantage of structural issues, such as damaged weather stripping or torn screens, in order to enter a household. These pests are attracted to buildings by air currents and odours. Due to the fact that their preferred temperature is 83 degrees Fahrenheit (28 degrees Celsius), house flies are attracted to warm air currents coming from buildings on cooler days and vice versa on warmer days.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>How to Get Rid of House Flies?</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">In order to prevent a house fly infestation from happening in the first place, vigilant sanitation is a must. Regularly removing trash and using well-sealed garbage receptacles can help to deter any house flies from residing around waste bins. Additionally, pet waste must be cleaned up immediately in order to prevent the development of any house fly breeding sites. Finally, fine mesh screens should be applied to doors and windows in order to prevent house fly entry into the home. If window screens are already present, make sure there are no visible rips or tears.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>House Fly Control Service</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">If you suspect a house fly infestation in your home, contact Vpestifypest control to conduct an inspection, specifically looking for any places where house fly eggs may have been deposited. Since house flies enter from outside, internal breeding sites are not common. If the breeding site is not thoroughly cleaned or removed, these pests will continue to be a problem.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Vpestify offers an effective plan for flies control services. This plan has been designed for controlling the number of house flies that are seen. The pest control company uses chemical applications for flies control during the peak season.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">&nbsp;</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on&nbsp;&nbsp;<span style=\\\"background-color: rgb(249, 249, 249); color: rgb(51, 51, 51); font-family: Lato, sans-serif;\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:28:50', '0000-00-00 00:00:00', 'Enable'),
(68, 54, 0, 0, 0, 0, '', 'mosquito-control-services', 'Mosquito Control Services', '', '', '', '', '', 0, '', '', '', '', '', '', 'f08e19f4c87f589fa292b1aecce6d841.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'There are about 3300 mosquitoes’ species all over in the world. These mosquitoes are responsible for causing so many severe diseases like malaria, dengue, chikungunya with which world is fighting with great efforts, but they cause more damage to human health day by day and human filling effortless.', '<p><span style=\\\"font-size: medium;\\\">There are about 3300 mosquitoes&rsquo; species all over in the world. These mosquitoes are responsible for causing so many severe diseases like malaria, dengue, chikungunya with which world is fighting with great efforts, but they cause more damage to human health day by day and human filling effortless. The world health organization is also trying to control this situation but they also don&rsquo;t get satisfactory output, the patients of malaria, chikungunya are increasing in large number.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Vpestifypest control &ndash; Mosquito service provider company in Delhi offers net Mosquito &amp; Screen mosquito service as per the demand of the customer.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">The breeding season of the mosquitoes is normally more during the hot months, and thus Vpestify recognizes the need for seasonal spraying. The company treats the area of breeding of the mosquitoes with odour free and fast-acting products so that you get a lesser number of mosquitoes biting you at home.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">One of the best technicians from Vpestify - fly control company would go to inspect your property. They note the areas which are mainly prone to the breeding and activities of mosquitoes. These pests generally breed in the standing water which gets collected in gutters, birdbaths, discarded containers, and water bowls of pets. These areas and the other highly risky areas get treated using special products for the services of control of the flies larvae.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><strong><span style=\\\"font-size: medium;\\\">TIPS TO AVOID MOSQUITOES</span></strong></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Here are some listed tips for the homeowners, so that they can reduce the activity of mosquitoes:</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Dispose of any plastic container, tin cans, ceramic pots or other similar types of containers holding water in them.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Discarded tires also require your attention. The stagnant water inside the tires is the breeding place for most of the mosquitoes or flies.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">The recycling containers that are kept outdoors must be drilled at the bottom to prevent any fly or mosquito breeding.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">The roof gutters which get clogged easily with leaves must be cleaned each year. Roof gutters are common places where mosquitoes and flies breed.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Thin out the vegetation around your house if it is quite dense</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Wood piles must be kept covered.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Whack the weeds and cut out dense grasses.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">If you have plastic pools then turn them over when not getting used. The stagnant water inside the wading pool also becomes the breeding place for mosquitoes. No water must be allowed to remain stagnant in the birdbaths. Wheelbarrows must also be turned over.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Remove junk piles.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Fish ponds must have continuous running water and stock of fishes in them. Mosquitoes cannot breed in rippling water. They get drowned.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Experts suggest that these tips can keep away flies, mosquitoes or other types of fly pests away from your houses.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">&nbsp;</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:33:10', '0000-00-00 00:00:00', 'Enable'),
(69, 55, 0, 0, 0, 0, '', 'ants', 'Ants', '', '', '', '', '', 0, '', '', '', '', '', '', '52e56a54738383878f23d38f815f6581.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'One of the most common household insects that you will most likely deal with at some point of living in a home is ants.', '<p><span style=\\\"font-size: medium;\\\">One of the most common household insects that you will most likely deal with at some point of living in a home is ants. Ants are found just about all over the world and usually seek shelter inside dry, warm places such as homes, apartments, and duplexes. With an ample supply of food inside most homes, this makes the perfect spot for ants to live. If you have found ants in your home and are worried about an infestation, the pest experts at Vpestifycan get them cleared out.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Ant Prevention Tips</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Successful, long-term ant control requires more than just a surface spray. AtVpestify, we use the latest products available including repellent, non-repellent liquid insecticide as well as insecticidal dust, baits and granules.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Clean up food and drink spills immediately.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Rinse out cans or bottles before putting them into the recycling bin.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Keep food stored tightly.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Pick up pet food at night and don&rsquo;t feed them outdoors.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Seal cracks around doors and windows, and keep gutters and downpipes clean.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Ant Control Service</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">As responsible home-owners, we should keep an eye on these pests if they are trying to forage indoors in search of a good place for thriving. Ensure a regular inspection in the piles of coarse and stingy wooden structures, the parts of dead insects and the other debris materials which are seen shifting from the siding cracks and also on the backside of the mouldings in the basement and attic or under the porches.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">If you have an ant infestation and need a professional pest company to get them out, trust the experts at VpestifyPest Control. Keeping safety first, our team provides Eco-Friendly services to ensure you and your pets stay safe throughout the extermination. Call our team today for a free quote.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on&nbsp;<span style=\\\"background-color: rgb(249, 249, 249); color: rgb(255, 0, 0); font-family: Lato, sans-serif;\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:38:52', '0000-00-00 00:00:00', 'Enable'),
(70, 55, 0, 0, 0, 0, '', 'silverfish', 'Silverfish', '', '', '', '', '', 0, '', '', '', '', '', '', 'dc07b450d5c7fbab68f18c0bc60d1916.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Silverfish prefer damp, dark, warm and humid places to the harbor. Because of this, they are often found in bathrooms, kitchens, roof voids, wall cavities, cupboards and bookshelves.', '<p><span style=\\\"font-size: medium;\\\">Silverfish prefer damp, dark, warm and humid places to the harbor. Because of this, they are often found in bathrooms, kitchens, roof voids, wall cavities, cupboards and bookshelves.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Outdoors, they may be found living under the bark of trees and garden beds, under rocks, in rotten logs and among leaf litter.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Homeowners most commonly detect silverfish when they find one on the floor or in a sink/bathtub, or they will find holes in their clothing.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Sign of a Silverfish Infestation</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Keep an eye out for feeding marks, although they may be irregular whether they are holes, notches along an edge, or surface etchings. Yellow stains, scales and/or faeces (tiny black pepper-like pellets) may also be seen on infested materials.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">People have noticed silverfish when they come down on ceiling soffits and/or drop from skylights and canister light fixtures in the ceiling, likely entering through shake roofs.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Silverfish Control Service</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Looking to prevent or get rid of a silverfish infestation? The key to silverfish control is thoroughly inspecting preferred habitat areas and where appropriate food materials are present. If the infestation is localized on the inside, one can assume that it is recent and was either brought in via infested items or represents a recent invasion from the outside. If the infestation is widespread, then attention should be directed to the outside. Anything stored against or near the house&rsquo;s exterior must be moved or removed since silverfish can easily climb up walls and find entrance around window and door frames, utility pipes and vents. Shake roofs should also be cleaned and sealed every other year.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">If a silverfish infestation is suspected or found, it&rsquo;s best to call Vpestify pest control professional to properly inspect the home and recommend the appropriate treatment method.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:42:36', '0000-00-00 00:00:00', 'Enable'),
(71, 55, 0, 0, 0, 0, '', 'grain-beetles', 'Grain Beetles', '', '', '', '', '', 0, '', '', '', '', '', '', '7705683e48b1ac58d10b28afc8613c6b.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'The grain beetle can be found throughout the world, and it loves to attack many common types of food. Macaroni, sugar, biscuit mixes, rice and cereal frequently fall victim to the grain beetle.', '<p><span style=\\\"font-size: medium;\\\">The grain beetle can be found throughout the world, and it loves to attack many common types of food. Macaroni, sugar, biscuit mixes, rice and cereal frequently fall victim to the grain beetle. Homeowners commonly find grain beetles in locations where dry food is stored. Although diseases aren\\\'t associated with grain beetles, nobody wants to eat cereal that has had grain beetles swimming in it. A grain beetle cannot eat through a hard seed of corn, but it loves attacking processed cereal.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Grain beetles have a reddish-brown, flattened body, and they\\\'re usually about a tenth of an inch in length. On both sides of a grain beetle\\\'s body or thorax, there are six projections that are shaped like the teeth of a saw. A grain beetle\\\'s eggs are microscopic and coloured white. The full-grown larvae are usually an eighth of an inch in length. Grain beetles are known to cause problems in commercial facilities and homes. A typical grain beetle is 2.5 up to 3 mm in length and can be identified by its flat body. The tiny projections on a grain beetle are always located behind its head. Although a magnifying glass is required to truly see what they look like, the tiny projections are what give the grain beetle its name.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Signs of Infestation</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">The presence of the insect within boxed, bagged or sacked grains.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">A number of holes appearing in stored products. These holes will typically be found on surfaces of packages that are contacting the shelf directly, as it will be an easy point of entry for the insect.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Although it will be much harder to see, cracked kernels of grain or products with odd spotting to them (this will be an indication of the product being infested with insect eggs.)</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">&nbsp;</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Grain beetles Control Service</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">As your trusted pest control service provider, Vpestify will protect your premise as if it was our own and your peace of mind is important to us.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Contact us today to have a free inspection and evaluation.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:53:07', '0000-00-00 00:00:00', 'Enable'),
(72, 55, 0, 0, 0, 0, '', 'fabric-beetle', 'Fabric Beetle', '', '', '', '', '', 0, '', '', '', '', '', '', '22a21457683ecc925e18dcffc9923379.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'As you start digging through the back of your closet for warmer clothing this fall season, keep an eye out for household pests that may be destroying your clothes.', '<p><span style=\\\"font-size: medium;\\\">As you start digging through the back of your closet for warmer clothing this fall season, keep an eye out for household pests that may be destroying your clothes. Even though these pests are not usually disease or germ carriers, their presence can be a nuisance and difficult to eliminate. It is important to ensure your clothes and other fabrics are protected as these pests can cause considerable damage before you even know they are present.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Generally, it&rsquo;s the newly hatched larvae that do the damage on everything from sweaters, pants, jackets, wool rugs, to decorative needlework on your walls. Typically insect damage occurs on fabrics containing natural or animal fibres such as wool, mohair, silk, cotton, leather, fur, feathers, down, and any synthetics blended with these natural fibres.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Clothes Moths</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Clothes moths are a light tan colour, have very narrow wings, and can grow up to 1/2 inch long. It is the larva (small white worm looking) that actually eats wool garments, not the adult moths themselves. But if you see the adult clothes moths around you can assume they are laying eggs. Clothes moths pose no serious health concern to humans; however, an infestation can quickly ruin rarely used or stored clothing such as old military uniforms, blankets, feathered hats, tuxedos, overcoats, evening gowns, hats, antique dolls and toys, and wall hangings.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Carpet Beetles</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Carpet beetles commonly cause damage to fabrics such as wool, silk, leather, and fur; they do not feed on synthetic fibres. Just like the clothes moth, the carpet beetle larvae are the ones to do the damage to your clothing. Carpet beetle larvae measure 1/8 to 1/4 inch long and appear to be densely covered with tiny hairs or bristles. The garment damage appears in one portion of a garment, or concentrated area. They easily find food in obscure places and can be easily dispersed throughout the home considering their unique ability to travel. Carpet beetles can be difficult to control and can cause extensive damage if left unchecked.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Tips for keeping your clothes pest free!</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Store only clean garments. Thoroughly clean clothes prior to storage by emptying pockets, washing to remove food stains, perfumes, and perspiration as these can be a reliable food source for a wardrobe-destroying infestation. Have garments dry cleaned (without starch) or place in the dryer on high heat for 15 minutes to eliminate any insect eggs or mildew spores.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Regularly clean and vacuum. Clean rugs and carpets, draperies, upholstered furniture, closets and anywhere else larvae can hide. When you are finished, immediately dispose of the vacuum bag.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">To avoid future infestations, store clothes in containers located in a cool, dry place. Use garment storage bags made of cotton and or vinyl. Make sure to utilize breathable bags for leather or fur garments. Preventative products such as mothballs and cedar products can provide additional protection. If the insects cannot lay eggs, they will not eat your clothes.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Be careful about what you buy second-hand. Always launder or dry-clean woollens that are bought from thrift stores or given to you as hand-me-downs. You could have unexpected guests along with that sweater!</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Don&rsquo;t let these fabric-eating pests ruin your winter wardrobe. Want to leave it to the professionals? Contact Vpestifypest control expert. Schedule a free inspection today!</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">&nbsp;</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 07:57:12', '0000-00-00 00:00:00', 'Enable'),
(73, 56, 0, 0, 0, 0, '', 'rodents', 'Rodents', '', '', '', '', '', 0, '', '', '', '', '', '', 'b3c60a89be2362eac6e18aeb8fd2b5b5.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Rodents (rats & mice) are a serious issue that affect many Indian homes. Our homes are very attractive to them, as they provide them with everything they need: food, water and shelter.', '<p><span style=\\\"font-size: medium;\\\">Rodents (rats &amp; mice) are a serious issue that affect many Indian homes. Our homes are very attractive to them, as they provide them with everything they need: food, water and shelter.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Rodents do not only spread diseases and contaminate food, they also cause damage to your home. Rodents have to continually gnaw on their teeth to keep them from growing too long. They will gnaw on anything, so when you hear noises in your roof, walls or under your home they are not only nesting, but they may be gnawing on your water pipes, plaster, ducting for your heater and air-conditioning, and electrical cables and conduits. Every year homes are water damaged and fires are caused by rodent infestations.&nbsp;</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Kinds of Rats</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>House Rat:</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">These are normally small rodents which have black, small eyes, and large ears. Their weight is about a &frac12; ounce and they have grey to light brownish body colour. The adult mouse has about five to seven inches long including a tail of about 3to 4 inches. Gnaw marks, droppings, and tracks are signs of the mice being active in various places. They make use of fibrous materials or finely shredded paper to make their nests. Their musky odour also gives an indication that the rodents are nearby in the room. They are usually more active during the night time but sometimes also noticeable during the day.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Roof Rat:</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Black or brown, can be over 40 cm long, with a long tail, large ears and eyes, and a pointed nose. Body is smaller and sleeker. Fur is smooth. Nests inside and under buildings, or in piles of rubbish or wood. Excellent climber that can often be found in the upper parts of structures.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><strong>Cotton Rat</strong></span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">The head and body of cotton rats range in length from 13.3 to 21.3 cm. The tail is bare and is not as long as the head and body (7.6 to 16.5 cm). Their bodies are covered with coarse hair. The ears are almost hidden by the hair. The rats are usually gray on their back with black hairs mixed in. The underside is light colored.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 09:23:24', '0000-00-00 00:00:00', 'Enable'),
(74, 56, 0, 0, 0, 0, '', 'rodent-control', 'Rodent Control', '', '', '', '', '', 0, '', '', '', '', '', '', '319237a3ca9b89b61a98e9eeabf7046c.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'The most successful and long-term control of mouse in the house is the restriction of food items and shelter as much as possible.', '<p><span style=\\\"font-size: medium;\\\">The most successful and long-term control of mouse in the house is the restriction of food items and shelter as much as possible. For trapping to be successful, sufficient traps must be placed in different locations. We also use trapping as the follow-up method after the baiting program gets completed. The baiting program might cause sanitation or odour problem which must be considered before you choose the process. In such a case, trapping proves to be the perfect approach. After the mice get removed, steps must be taken to exclude their presence totally for preventing the reoccurring of the issue. Different kinds of rodenticides are also available which get specifically used against these rats. However, they have harmful effects on pets, wildlife, and human beings as they contain toxic materials in them. So, precautions must be taken accordingly.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><strong><span style=\\\"font-size: medium;\\\">Trapping, Exclusion, Nest Removal and Remediation</span></strong></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><strong><span style=\\\"font-size: medium;\\\">This premier program includes:</span></strong></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Rodent proofing the structure</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Trapping and removing rodents already inside the structure</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Placement of exterior bait stations to reduce rodent pressure</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Checking traps every 48 hours until population is eradicated</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Removal of nesting material and any dead rodents found</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Sanitization of all affected surfaces</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Residual material application to eliminate pests associated with rodents, such as cockroaches, carpet beetles and feasting insects (fleas, ticks &amp; mites)</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 09:28:09', '0000-00-00 00:00:00', 'Enable'),
(75, 56, 0, 0, 0, 0, '', 'rodents-inspection', 'Rodents Inspection', '', '', '', '', '', 0, '', '', '', '', '', '', '5a723059b79ef55545ffa3db7896c302.jpg', '', '', '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, '', '', '', '', '', 0.00, 0, 1, 'In Stock', 'No', 'Rodents are also highly reproductive. A female rodent can become pregnant at just six weeks old. Once the litter has been born, the female rodent can become pregnant again right away.', '<p><span style=\\\"font-size: medium;\\\">Rodents are also highly reproductive. A female rodent can become pregnant at just six weeks old. Once the litter has been born, the female rodent can become pregnant again right away. And of course, the female rodents in the litter can also become pregnant in just six weeks, creating a never-ending cycle of reproduced pests, and an incredible infestation.</span></p>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">So how do you keep your home from becoming the next breeding ground for these diseased pests? Invest in quality preventive treatment! At Vpestify Pest Control, we can eliminate these rodents and prevent their return. If you find yourself the victim of an unwanted house guest (or house pest), call us immediately, and we will schedule an initial service inspection plan. You can choose a plan that fits your budget and schedule.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Our service treatments are children and pet-friendly. We leave no stone unturned, pulling out all appliances and treating those hidden areas where pests like to hide. For preventive treatments, we thoroughly inspect your property to find and seal all possible entry points into the home. Rats can squeeze into a space the size of a quarter and mice the size of a dime. Sealing these entry points will prevent these pests from gaining access to your home. Once sealed, we go to work on eliminating the creatures that are now trapped inside.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">Don&rsquo;t wait until you have seen a rodent to call us at Vpestify Pest Control. Scheduling an inspection and treatment plan with us will ensure that you and your family are the only occupants living inside your home.</span></div>\r\n<div><span style=\\\"font-size: medium;\\\"><br />\r\n</span></div>\r\n<div><span style=\\\"font-size: medium;\\\">For our services or query call us on <span style=\\\"color: rgb(255, 0, 0);\\\">+91- 8851517652</span></span></div>', '', 0, 'No', 'No', 'No', 'No', 'No', 'BOTH', 'No', 'No', 0, 0, 0, 0, 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'None', 'Category', '2020-08-28', '2025-08-28', '2020-08-28 09:36:24', '0000-00-00 00:00:00', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `productsliders`
--

CREATE TABLE `productsliders` (
  `sliderid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `prod_hsliderimage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `orders` int(11) NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `reg_id` int(11) NOT NULL,
  `reg_name` varchar(100) NOT NULL,
  `reg_cp_name` varchar(100) NOT NULL,
  `reg_lname` varchar(100) NOT NULL,
  `reg_email` varchar(100) NOT NULL,
  `reg_alt_email` varchar(100) NOT NULL,
  `reg_pass` varchar(20) NOT NULL,
  `reg_comp` varchar(100) NOT NULL,
  `reg_all_seat` int(11) NOT NULL,
  `reg_compid` varchar(100) NOT NULL,
  `reg_desination` varchar(100) NOT NULL,
  `reg_mobile` varchar(100) NOT NULL,
  `reg_logo` varchar(100) NOT NULL,
  `reg_certificate` varchar(100) NOT NULL,
  `reg_service_country` int(11) NOT NULL,
  `reg_service_location` int(11) NOT NULL,
  `reg_fax` varchar(100) NOT NULL,
  `reg_address` varchar(255) NOT NULL,
  `reg_addressLine2` varchar(100) NOT NULL,
  `reg_state` varchar(100) NOT NULL,
  `reg_city` varchar(100) NOT NULL,
  `reg_country` varchar(100) NOT NULL,
  `reg_zipcode` varchar(100) NOT NULL,
  `reg_subscribe` varchar(100) NOT NULL,
  `reg_url` varchar(100) NOT NULL,
  `reg_agree` enum('Yes','No') NOT NULL,
  `reg_verified` int(11) NOT NULL,
  `reg_verified_date` date NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `status` enum('Active','Deactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `orders` int(11) NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resort`
--

CREATE TABLE `resort` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(192) COLLATE latin1_general_ci NOT NULL,
  `country_iso_code_2` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `country_iso_code_3` varchar(9) COLLATE latin1_general_ci NOT NULL,
  `country_order` int(11) UNSIGNED NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Active','Inactive') COLLATE latin1_general_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `resta_id` int(11) NOT NULL,
  `resta_user_id` int(11) NOT NULL,
  `resta_name` varchar(100) NOT NULL,
  `resta_comp_name` varchar(100) NOT NULL,
  `resta_email` varchar(100) NOT NULL,
  `resta_enquiry_email` varchar(100) NOT NULL,
  `resta_forgetpassword_token` varchar(100) NOT NULL,
  `resta_forgetpassword_token_time` datetime NOT NULL,
  `resta_mobile` varchar(100) NOT NULL,
  `resta_labdline` varchar(100) NOT NULL,
  `resta_whatsapp_number` varchar(100) NOT NULL,
  `resta_cust_supp_number` varchar(100) NOT NULL,
  `resta_fax` varchar(100) NOT NULL,
  `resta_address` varchar(255) NOT NULL,
  `resta_offc_address` varchar(1000) NOT NULL,
  `resta_buss_address` varchar(1000) NOT NULL,
  `resta_state` varchar(100) NOT NULL,
  `resta_city` varchar(100) NOT NULL,
  `resta_pincode` varchar(20) NOT NULL,
  `resta_country` varchar(100) NOT NULL,
  `resta_website` varchar(100) NOT NULL,
  `resta_catalog_url` varchar(100) NOT NULL,
  `resta_gp_link` varchar(100) NOT NULL,
  `resta_fb_link` varchar(255) NOT NULL,
  `resta_fb_like_code` varchar(500) NOT NULL,
  `resta_ytd_link` varchar(500) NOT NULL,
  `resta_copyright` longtext NOT NULL,
  `resta_copyright_year` varchar(100) NOT NULL,
  `resta_design_developed_by` longtext NOT NULL,
  `resta_twt_link` varchar(255) NOT NULL,
  `resta_linkedin_link` varchar(255) NOT NULL,
  `resta_live_chat` varchar(1000) NOT NULL,
  `resta_skype` varchar(100) NOT NULL,
  `resta_instagram_link` varchar(100) NOT NULL,
  `resta_pinterest_link` varchar(100) NOT NULL,
  `resta_others_link` varchar(100) NOT NULL,
  `resta_rss_link` varchar(100) NOT NULL,
  `resta_working_time` varchar(100) NOT NULL,
  `resta_vistor_counter` int(11) NOT NULL,
  `resta_domain_name` varchar(200) NOT NULL,
  `resta_outgoing_mail` varchar(200) NOT NULL,
  `resta_server_email` varchar(200) NOT NULL,
  `resta_server_email_pass` varchar(200) NOT NULL,
  `resta_lang_converter` varchar(1000) NOT NULL,
  `resta_google_maps` longtext NOT NULL,
  `resta_blog_url` varchar(200) NOT NULL,
  `resta_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `result_stid` int(11) NOT NULL,
  `result_adid` int(11) NOT NULL,
  `result_cid` int(11) NOT NULL,
  `result_sid` int(11) NOT NULL,
  `result_eid` int(11) NOT NULL,
  `result_examdate` date NOT NULL,
  `result_examtheoreticalmarks` float(10,2) NOT NULL,
  `result_exampracticalmarks` float(10,2) NOT NULL,
  `result_examtotalmarks` float(10,2) NOT NULL,
  `result_examtheoreticalpassingmarks` float(10,2) NOT NULL,
  `result_exampracticalpassingmarks` float(10,2) NOT NULL,
  `result_examprojectpassingmarks` float(10,2) NOT NULL,
  `result_examtotalpassingmarks` float(10,2) NOT NULL,
  `result_examtheoreticalobtainedmarks` float(10,2) NOT NULL,
  `result_exampracticalobtainedmarks` float(10,2) NOT NULL,
  `result_examprojectobtainedmarks` float(10,2) NOT NULL,
  `result_examtotalobtainedmarks` float(10,2) NOT NULL,
  `result_exam_theoretical_status` enum('P','F','N') NOT NULL DEFAULT 'N',
  `result_exam_practical_status` enum('P','F','N') NOT NULL DEFAULT 'N',
  `result_exam_status` enum('P','F','N') NOT NULL DEFAULT 'N',
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roomstypes`
--

CREATE TABLE `roomstypes` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ratings` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `position` int(11) NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seourl2`
--

CREATE TABLE `seourl2` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `url` varchar(200) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servicelocation`
--

CREATE TABLE `servicelocation` (
  `loc_id` int(10) UNSIGNED NOT NULL,
  `loc_pid` int(11) NOT NULL,
  `loc_name` varchar(192) COLLATE latin1_general_ci NOT NULL,
  `loc_iso_code_2` varchar(6) COLLATE latin1_general_ci NOT NULL,
  `loc_iso_code_3` varchar(9) COLLATE latin1_general_ci NOT NULL,
  `loc_title` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `loc_slogan` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `loc_meta_keyword` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `loc_meta_description` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `loc_header_image` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `loc_short_desciption` varchar(500) COLLATE latin1_general_ci NOT NULL,
  `loc_full_desciption` longtext COLLATE latin1_general_ci NOT NULL,
  `loc_order` int(11) UNSIGNED NOT NULL,
  `loc_adddate` date NOT NULL,
  `loc_editdate` date NOT NULL,
  `loc_status` enum('Enable','Disable') COLLATE latin1_general_ci NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `empid` int(11) NOT NULL,
  `avrg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `permission` enum('Yes','No') NOT NULL DEFAULT 'No',
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `inner_page` enum('No','Yes') NOT NULL DEFAULT 'No',
  `setting_position` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `permission`, `name`, `link`, `url`, `inner_page`, `setting_position`, `status`) VALUES
(1, 'Yes', 'Menu', 'cms-list.php?pageid=0', '', 'No', 0, 'Active'),
(2, 'Yes', 'Logo', 'logo.php', '', 'No', 0, 'Active'),
(3, 'Yes', 'H.Banner', 'banner-list.php', '', 'No', 0, 'Active'),
(4, 'Yes', 'Products', 'product-list.php?proid=0', '', 'No', 0, 'Active'),
(5, 'No', 'Brand', 'brand-list.php', '', 'No', 0, 'Active'),
(6, 'Yes', 'Gallery Category', 'gallery-cat-list.php', '', 'No', 0, 'Active'),
(7, 'Yes', 'Gallery', 'gallery-list.php', '', 'No', 0, 'Active'),
(8, 'No', 'Video', 'video-list.php', '', 'No', 0, 'Active'),
(9, 'No', 'Events', 'events-list.php?eventid=0', '', 'No', 0, 'Active'),
(10, 'No', 'Clients', 'clients-list.php\"', '', 'No', 0, 'Active'),
(11, 'No', 'Team', 'team-member-list.php', '', 'No', 0, 'Active'),
(12, 'Yes', 'Contact', 'contacts.php', '', 'No', 0, 'Active'),
(13, 'No', 'Change Paswd', 'change-password.php', '', 'No', 0, 'Active'),
(14, 'No', 'Success Order', 'success-order-list.php', '', 'No', 0, 'Active'),
(15, 'No', 'Delivered Order', 'deliver-order-list.php', '', 'No', 0, 'Active'),
(16, 'No', 'Delivery Confirmed', 'delivery-confirmed-order-list.php', '', 'No', 0, 'Active'),
(17, 'No', 'Pay History', 'payment-history-list.php', '', 'No', 0, 'Active'),
(18, 'No', 'Failed Order', 'fail-order-list.php', '', 'No', 0, 'Active'),
(19, 'No', 'Advertisement', 'advertisement-list.php', '', 'No', 0, 'Active'),
(20, 'No', 'Offer', 'offer-list.php', '', 'No', 0, 'Active'),
(21, 'No', 'Catalouge', 'catalouge-list.php', '', 'No', 0, 'Active'),
(22, 'No', 'Success&nbsp;Story', 'success-story-list.php', '', 'No', 0, 'Active'),
(23, 'Yes', 'Testimonials', 'testimonials-list.php', '', 'No', 0, 'Active'),
(24, 'No', 'Teachers', 'teacher-list.php', '', 'No', 0, 'Active'),
(25, 'No', 'Blogs', 'blog-list.php', '', 'No', 0, 'Active'),
(26, 'No', 'Branch', 'branch-list.php', 'branch', 'No', 0, 'Active'),
(27, 'No', 'Vehicle Category', 'vehicle-category-list.php', '', 'No', 0, 'Active'),
(28, 'No', 'Vehicle', 'vehicle-list.php', '', 'No', 0, 'Active'),
(31, 'No', 'Achievers', 'achievers-list.php', '', 'No', 0, 'Active'),
(32, 'No', 'Course', 'course-list.php', '', 'No', 0, 'Active'),
(33, 'No', 'Subject', 'subject-list.php', '', 'No', 0, 'Active'),
(34, 'No', 'Student Registration', 'student-list.php', '', 'No', 0, 'Active'),
(35, 'No', 'Enquiry', 'enquiry-list.php', '', 'No', 0, 'Active'),
(36, 'No', 'Feedback', 'feedback-list.php', '', 'No', 0, 'Active'),
(37, 'Yes', 'Image Setting', 'imagesetting.php', '', 'No', 0, 'Active'),
(38, 'No', 'Admission', 'admission-list.php', '', 'No', 0, 'Active'),
(39, 'No', 'Student Fee', 'student-fee-list.php', '', 'No', 0, 'Active'),
(40, 'No', 'Exam Schedule', 'exam-list.php', '', 'No', 0, 'Active'),
(41, 'No', 'Admit Card', 'pending', '', 'No', 0, 'Active'),
(42, 'No', 'Result', 'pending', '', 'No', 0, 'Active'),
(43, 'No', 'Download Marksheet', 'pending', '', 'No', 0, 'Active'),
(44, 'No', 'Faculty', 'faculty-list.php', '', 'No', 0, 'Active'),
(45, 'No', 'Consultants', 'consultants-list.php', '', 'No', 0, 'Active'),
(46, 'No', 'Facilities', 'facilities.php', '', 'No', 0, 'Active'),
(47, 'No', 'Restaurant', 'restaurants.php', '', 'No', 0, 'Active'),
(48, 'No', 'Search Products', 'product-search-list.php', '', 'No', 0, 'Active'),
(49, 'No', 'Job Type', 'jobtype-list.php', '', 'No', 0, 'Active'),
(50, 'No', 'Job Location', 'joblocation-list.php', '', 'No', 0, 'Active'),
(51, 'No', 'Create Jobs', 'createjob-list.php', '', 'No', 0, 'Active'),
(52, 'No', 'Bank', 'bank-list.php', '', 'No', 0, 'Active'),
(53, 'No', 'Size', 'size-list.php', '', 'No', 0, 'Active'),
(55, 'No', 'Certificate', 'certificate-list.php', '', 'No', 0, 'Active'),
(54, 'No', 'Presence', 'presence-list.php?pid=0', '', 'No', 0, 'Active'),
(56, 'No', 'Directors', 'director-list.php', '', 'No', 0, 'Active'),
(57, 'No', 'Vendor Registration', 'vendor-list.php?vid=0', '', 'No', 0, 'Active'),
(58, 'No', 'Countries', 'country-list.php?cid=0', '', 'No', 0, 'Active'),
(60, 'No', 'State', 'state-list.php?sid=0', '', 'No', 0, 'Active'),
(61, 'No', 'City', 'city-list.php?cid=0', '', 'No', 0, 'Active'),
(62, 'No', 'Destination', 'package-list.php', '', 'No', 0, 'Active'),
(63, 'No', 'Hotel', 'hotel-list.php', '', 'No', 0, 'Active'),
(64, 'No', 'Budget', 'budget-list.php', '', 'No', 0, 'Active'),
(65, 'No', 'Vendor Package', 'admin-vendor-package-list.php', '', 'No', 0, 'Active'),
(66, 'No', 'Add Tour Package Feature', '--', 'add-tour-package-feature', 'Yes', 0, 'Active'),
(67, 'No', 'Product Extra Feature', '--', 'product-extra-feature', 'Yes', 0, 'Active'),
(68, 'No', 'Room Type', 'room-type-list.php', 'room-type', 'No', 0, 'Active'),
(69, 'No', 'Bed Manager', 'bed-manager-list.php', 'bed-manager', 'No', 0, 'Active'),
(70, 'No', 'Adult Manager', 'adult-manager-list.php', 'adult-manager', 'No', 0, 'Active'),
(71, 'No', 'Child Manager', 'child-manager-list.php', 'child-manager', 'No', 0, 'Active'),
(72, 'No', 'Membership Plan', 'membershipplan-list.php?pageid=0', 'membership-plan', 'No', 0, 'Active'),
(73, 'No', 'Registered Member', 'registeredmember-list.php', 'registered-member', 'No', 0, 'Active'),
(74, 'No', 'Booking Enquiry', 'booking-enquiry-list.php', 'booking-enquiry', 'No', 0, 'Active'),
(75, 'No', 'Software Category', 'software-category-list.php', 'software-category', 'No', 0, 'Active'),
(76, 'No', 'Software', 'software-list.php', 'software', 'No', 0, 'Active'),
(77, 'No', 'News Category', 'news-category-list.php', 'news-category', 'No', 0, 'Active'),
(78, 'No', 'Registered Client', 'registered-client-list.php', 'registered-client', 'No', 0, 'Active'),
(79, 'No', 'Payment Gateway', 'payment-gateway.php', 'payment-gateway', 'No', 0, 'Active'),
(80, 'No', 'Location', 'location-list.php', 'location', 'No', 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(100) NOT NULL,
  `size_width` varchar(100) NOT NULL,
  `size_height` varchar(100) NOT NULL,
  `size_content` varchar(500) NOT NULL,
  `size_adddate` date NOT NULL,
  `size_editdate` date NOT NULL,
  `size_position` int(11) NOT NULL,
  `size_status` enum('Enable','Disable','None') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE `software` (
  `software_id` int(11) NOT NULL,
  `software_pid` int(11) NOT NULL DEFAULT '0',
  `software_gproid` int(11) NOT NULL,
  `software_user_id` int(11) NOT NULL,
  `software_title` varchar(150) NOT NULL,
  `software_content` varchar(1000) NOT NULL,
  `software_url` varchar(255) NOT NULL,
  `software_image` varchar(100) NOT NULL,
  `software_video` varchar(100) NOT NULL,
  `software_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `software_status` enum('Enable','Disable','Block') NOT NULL,
  `software_position` int(11) NOT NULL,
  `software_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`software_id`, `software_pid`, `software_gproid`, `software_user_id`, `software_title`, `software_content`, `software_url`, `software_image`, `software_video`, `software_is_home`, `software_status`, `software_position`, `software_add_date`) VALUES
(1, 1, 0, 1, 'sdsad', 'sdsads', '', '3d021596065ae9d369c74bf77d0841d5.jpg', '', 'No', 'Enable', 0, '2019-05-17'),
(2, 2, 0, 1, 'sdsadsdsadas', 'sdsads', '', 'cfa86a392c2d9fb5715f60f92008bc21.jpg', '', 'Yes', 'Enable', 0, '2019-05-17'),
(3, 2, 0, 1, 'sdsadsdsadas', 'sdsads', '', 'aa5b6ee24c56e14ba5a80307f21b0be5.jpg', '', 'Yes', 'Enable', 0, '2019-05-17'),
(4, 2, 0, 1, 'sdsadsdsadas', 'sdsads', '', 'c4c7958b22f116d10253cc12ef103b6a.jpg', '', 'Yes', 'Enable', 0, '2019-05-17'),
(5, 2, 0, 1, 'sdsadsdsadassdsa das', 'sdsads', 'sdasd asdsad', '', '', 'No', 'Enable', 0, '2019-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `softwarecate`
--

CREATE TABLE `softwarecate` (
  `soft_cid` int(11) NOT NULL,
  `soft_cpid` int(11) NOT NULL,
  `soft_user_cid` int(11) NOT NULL,
  `soft_ctitle` varchar(150) NOT NULL,
  `soft_curl` varchar(100) NOT NULL,
  `soft_cdescription` varchar(500) NOT NULL,
  `soft_cimage` varchar(100) NOT NULL,
  `soft_cstatus` enum('Enable','Disable','Block') NOT NULL,
  `soft_cposition` int(11) NOT NULL,
  `soft_cadd_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `softwarecate`
--

INSERT INTO `softwarecate` (`soft_cid`, `soft_cpid`, `soft_user_cid`, `soft_ctitle`, `soft_curl`, `soft_cdescription`, `soft_cimage`, `soft_cstatus`, `soft_cposition`, `soft_cadd_date`) VALUES
(1, 0, 1, 'Download Attendance  Software', 'download-attendance--software', '', '', 'Enable', 0, '2019-05-17'),
(2, 0, 1, 'Download SDK for Hardwar', 'download-sdk-for-hardwar', '', '', 'Enable', 0, '2019-05-17'),
(3, 0, 1, 'Remote Access Software Link', 'remote-access-software-link', '', '', 'Enable', 0, '2019-05-17'),
(4, 0, 1, 'Download Utility', 'download-utility', '', '', 'Enable', 0, '2019-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_group` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable',
  `adddate` date NOT NULL,
  `editdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `pid`, `name`, `is_group`, `status`, `adddate`, `editdate`) VALUES
(1, 99, 'Haryana', 'No', 'Enable', '2011-07-18', '0000-00-00'),
(2, 99, 'Delhi', 'No', 'Enable', '2011-07-18', '0000-00-00'),
(3, 99, 'Punjab', 'No', 'Enable', '2011-07-18', '0000-00-00'),
(4, 99, 'Gujrat', 'No', 'Enable', '2011-07-18', '0000-00-00'),
(5, 99, 'Bihar', 'No', 'Enable', '2011-07-18', '0000-00-00'),
(10, 99, 'Andhra Pradesh', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(11, 99, 'Arunachal Pradesh', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(12, 99, 'Assam', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(13, 99, 'Chhattisgarh', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(14, 99, 'Goa', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(16, 99, 'Himachal Pradesh', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(17, 99, 'Jammu and Kashmir', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(18, 99, 'Jharkhand', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(19, 99, 'Karnataka', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(20, 99, 'Kerala', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(21, 99, 'Madhya Pradesh', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(22, 99, 'Maharashtra', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(23, 99, 'Manipur', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(24, 99, 'Meghalaya', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(25, 99, 'Mizoram', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(26, 99, 'Nagaland', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(27, 99, 'Orissa', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(28, 99, 'Rajasthan', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(29, 99, 'Sikkim', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(30, 99, 'Tamil Nadu', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(31, 99, 'Tripura', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(32, 99, 'Uttar Pradesh', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(33, 99, 'Uttarakhand', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(34, 99, 'West Bengal', 'No', 'Enable', '2011-09-20', '0000-00-00'),
(35, 99, 'Hyderabad', 'No', 'Enable', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `adddate`, `editdate`, `status`) VALUES
(1, 'Enable', '0000-00-00', '0000-00-00', 'Enable'),
(2, 'Disable', '0000-00-00', '0000-00-00', 'Enable'),
(3, 'Block', '0000-00-00', '0000-00-00', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `stock_status`
--

CREATE TABLE `stock_status` (
  `stosta_id` int(11) NOT NULL,
  `stosta_name` varchar(100) NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable',
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_status`
--

INSERT INTO `stock_status` (`stosta_id`, `stosta_name`, `status`, `created`) VALUES
(1, 'In Stock', 'Enable', '0000-00-00'),
(2, 'Out of Stock', 'Enable', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `story_id` int(11) NOT NULL,
  `story_pid` int(11) NOT NULL DEFAULT '0',
  `story_user_id` int(11) NOT NULL,
  `story_title` varchar(100) NOT NULL,
  `story_text` varchar(1000) NOT NULL,
  `story_url` varchar(255) NOT NULL,
  `story_image` varchar(100) NOT NULL,
  `story_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `story_status` enum('Enable','Disable','Block') NOT NULL,
  `story_position` int(11) NOT NULL,
  `story_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `mid` int(11) NOT NULL,
  `stud_aadharcard` varchar(20) NOT NULL,
  `stud_name` varchar(100) NOT NULL,
  `stud_fname` varchar(100) NOT NULL,
  `stud_dob` varchar(100) NOT NULL,
  `stud_email` varchar(100) NOT NULL,
  `stud_loginid` varchar(100) NOT NULL,
  `stud_password` varchar(100) NOT NULL,
  `stud_contact_number` varchar(30) NOT NULL,
  `stud_address` varchar(255) NOT NULL,
  `stud_state` int(11) NOT NULL,
  `stud_city` int(11) NOT NULL,
  `stud_pincode` varchar(50) NOT NULL,
  `stud_mobile_no` varchar(50) NOT NULL,
  `stud_whatsapp_number` varchar(50) NOT NULL,
  `stud_landline_no` varchar(50) NOT NULL,
  `stud_gender` int(11) NOT NULL,
  `stud_religion` int(11) NOT NULL,
  `stud_caste` int(11) NOT NULL,
  `stud_blood_group` int(11) NOT NULL,
  `stud_image` varchar(100) NOT NULL,
  `stud_status` enum('Enable','Disable','Block') NOT NULL,
  `stud_position` int(11) NOT NULL,
  `stud_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_parents`
--

CREATE TABLE `student_parents` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `mid` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `stud_father_name` varchar(100) NOT NULL,
  `stud_father_contact_no` varchar(50) NOT NULL,
  `stud_father_email` varchar(100) NOT NULL,
  `stud_mother_name` varchar(100) NOT NULL,
  `stud_mother_contact_no` varchar(50) NOT NULL,
  `stud_mother_email` varchar(100) NOT NULL,
  `stud_status_parent` enum('Enable','Disable','Block') NOT NULL,
  `stud_position` int(11) NOT NULL,
  `stud_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_parents`
--

INSERT INTO `student_parents` (`id`, `pid`, `mid`, `stud_id`, `stud_father_name`, `stud_father_contact_no`, `stud_father_email`, `stud_mother_name`, `stud_mother_contact_no`, `stud_mother_email`, `stud_status_parent`, `stud_position`, `stud_add_date`) VALUES
(1, 9, 1, 1, 'Ram', '9811964523', 'sdsadsaf@gmail.com', 'shyam', '984457623', 'sdfasdffsdgsf@gmail.com', 'Enable', 0, '2020-01-15'),
(2, 9, 1, 2, 'Ram', '9811964523', 'sdsadsaf@gmail.com', 'shyam', '984457623', 'sdfasdffsdgsf@gmail.com', 'Enable', 0, '2020-01-15'),
(3, 9, 1, 3, 'Ram', '9811964523', 'sdsadsaf@gmail.com', 'shyam', '984457623', 'sdfasdffsdgsf@gmail.com', 'Enable', 0, '2020-01-15'),
(4, 9, 1, 4, 'wdwefrwet', '9894484854', 'sadfdsafsa@gmail.com', 'sdDASFAS', '7845251845484', 'SDAFSDGDSFGS@gmail.com', 'Enable', 0, '2020-01-21'),
(5, 13, 1, 5, 'ewrwer', 'werweqr', 'erwer@gmail.com', 'wdqwre', 'wqrweqrqwe', 'safasdgdgg@gmail.com', 'Enable', 0, '2020-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `student_previous_education`
--

CREATE TABLE `student_previous_education` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `mid` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `stud_admsn_id` int(11) NOT NULL,
  `stud_qualification` int(11) NOT NULL,
  `stud_passing_year` int(11) NOT NULL,
  `stud_marks_obtain` float(10,2) NOT NULL,
  `stud_percentage` float(10,2) NOT NULL,
  `stud_rollno` int(11) NOT NULL,
  `stud_remarks` varchar(500) NOT NULL,
  `stud_status` enum('Enable','Disable','Block') NOT NULL,
  `stud_position` int(11) NOT NULL,
  `stud_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_previous_education`
--

INSERT INTO `student_previous_education` (`id`, `pid`, `mid`, `stud_id`, `stud_admsn_id`, `stud_qualification`, `stud_passing_year`, `stud_marks_obtain`, `stud_percentage`, `stud_rollno`, `stud_remarks`, `stud_status`, `stud_position`, `stud_add_date`) VALUES
(1, 9, 1, 1, 1, 1, 2019, 2030.00, 70.00, 124536, 'd fddsgfdsg', 'Enable', 0, '2020-01-15'),
(2, 9, 1, 3, 2, 1, 0, 0.00, 0.00, 0, 'qwerqewr', 'Enable', 0, '2020-01-15'),
(3, 9, 1, 2, 3, 2, 0, 0.00, 0.00, 0, 'asdfasdf', 'Enable', 0, '2020-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `course_pid` int(11) NOT NULL,
  `syllabus_id` varchar(100) NOT NULL,
  `practicalmarks` float(10,2) NOT NULL,
  `theoreticalmarks` float(10,2) NOT NULL,
  `projectmarks` float(10,2) NOT NULL,
  `totalmarks` float(10,2) NOT NULL,
  `practicalpassingmarks` float(10,2) NOT NULL,
  `theoreticalpassingmarks` float(10,2) NOT NULL,
  `projectpassingmarks` float(10,2) NOT NULL,
  `totalpassingmarks` float(10,2) NOT NULL,
  `groups` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable',
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `syllabusname` varchar(100) NOT NULL,
  `courseimage` varchar(100) NOT NULL,
  `coursehome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `courseduration` int(11) NOT NULL,
  `coursefees` float(10,2) NOT NULL,
  `courseinstallment` int(11) NOT NULL,
  `coursetotalmarks` int(11) NOT NULL,
  `coursepassingmarks` int(11) NOT NULL,
  `courseorder` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `pid`, `mid`, `syllabusname`, `courseimage`, `coursehome`, `courseduration`, `coursefees`, `courseinstallment`, `coursetotalmarks`, `coursepassingmarks`, `courseorder`, `adddate`, `editdate`, `status`) VALUES
(1, 9, 1, 'Hindi', '', 'No', 0, 0.00, 0, 0, 0, 0, '2020-01-10', '0000-00-00', 'Enable'),
(2, 9, 1, 'English', '', 'No', 0, 0.00, 0, 0, 0, 0, '2020-01-10', '0000-00-00', 'Enable'),
(3, 9, 1, 'Math', '', 'No', 0, 0.00, 0, 0, 0, 0, '2020-01-10', '0000-00-00', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teach_id` int(11) NOT NULL,
  `teach_pid` int(11) NOT NULL DEFAULT '0',
  `teach_user_id` int(11) NOT NULL,
  `teach_title` varchar(150) NOT NULL,
  `teach_name` varchar(100) NOT NULL,
  `teach_text` varchar(1000) NOT NULL,
  `teach_type` varchar(255) NOT NULL,
  `teach_image` varchar(100) NOT NULL,
  `teach_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `teach_catalog_url` varchar(100) NOT NULL,
  `teach_skype` varchar(100) NOT NULL,
  `teach_fb_link` varchar(100) NOT NULL,
  `teach_ytd_link` varchar(100) NOT NULL,
  `teach_gp_link` varchar(100) NOT NULL,
  `teach_twt_link` varchar(100) NOT NULL,
  `teach_linkedin_link` varchar(100) NOT NULL,
  `teach_instagram_link` varchar(100) NOT NULL,
  `teach_pinterest_link` varchar(100) NOT NULL,
  `teach_others_link` varchar(100) NOT NULL,
  `teach_status` enum('Enable','Disable','Block') NOT NULL,
  `teach_position` int(11) NOT NULL,
  `teach_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_pid` int(11) NOT NULL DEFAULT '0',
  `team_user_id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `team_content` varchar(1000) NOT NULL,
  `team_url` varchar(255) NOT NULL,
  `team_image` varchar(100) NOT NULL,
  `team_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `team_fb` varchar(200) NOT NULL,
  `team_twt` varchar(200) NOT NULL,
  `team_lnked` varchar(200) NOT NULL,
  `team_ytube` varchar(200) NOT NULL,
  `team_gplus` varchar(200) NOT NULL,
  `team_instagram` varchar(100) NOT NULL,
  `team_status` enum('Enable','Disable','Block') NOT NULL,
  `team_position` int(11) NOT NULL,
  `team_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `test_id` int(11) NOT NULL,
  `test_pid` int(11) NOT NULL DEFAULT '0',
  `test_user_id` int(11) NOT NULL,
  `test_title` varchar(100) NOT NULL,
  `test_post` varchar(100) NOT NULL,
  `test_text` varchar(1000) NOT NULL,
  `test_designation` varchar(100) NOT NULL,
  `test_url` varchar(255) NOT NULL,
  `test_image` varchar(100) NOT NULL,
  `test_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `test_status` enum('Enable','Disable','Block') NOT NULL,
  `test_position` int(11) NOT NULL,
  `test_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`test_id`, `test_pid`, `test_user_id`, `test_title`, `test_post`, `test_text`, `test_designation`, `test_url`, `test_image`, `test_is_home`, `test_status`, `test_position`, `test_add_date`) VALUES
(1, 0, 1, 'test', 'tl', '', '', '', '', 'Yes', 'Enable', 0, '2020-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `tmp_id` int(11) NOT NULL,
  `tmp_user_id` int(11) NOT NULL,
  `tmp_name` varchar(150) NOT NULL,
  `tmp_theme_css` varchar(100) NOT NULL,
  `tmp_image` varchar(100) NOT NULL,
  `tmp_position` int(11) NOT NULL,
  `tmp_created` date NOT NULL,
  `tmp_status` enum('Enable','Disable','Block') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`tmp_id`, `tmp_user_id`, `tmp_name`, `tmp_theme_css`, `tmp_image`, `tmp_position`, `tmp_created`, `tmp_status`) VALUES
(1, 1, 'jafri', 'jafri1', '0a2e540c0c81ded787228a75214eb02d.jpg', 0, '2016-01-17', 'Disable');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `tutor_id` int(11) NOT NULL,
  `tutor_register_as` int(11) NOT NULL,
  `tutor_fname` varchar(100) NOT NULL,
  `tutor_lname` varchar(100) NOT NULL,
  `tutor_email` varchar(100) NOT NULL,
  `page_name` varchar(100) NOT NULL,
  `tutor_mobile` varchar(50) NOT NULL,
  `tutor_address` varchar(500) NOT NULL,
  `tutor_state` int(11) NOT NULL,
  `tutor_city` int(11) NOT NULL,
  `tutor_zipcode` varchar(20) NOT NULL,
  `tutor_dob` date NOT NULL,
  `tutor_gender` enum('1','2') NOT NULL,
  `tutor_aadhaar_no` varchar(100) NOT NULL,
  `tutor_image` varchar(100) NOT NULL,
  `tutor_short_information` longtext NOT NULL,
  `tutor_full_information` longtext NOT NULL,
  `tutor_orders` int(11) NOT NULL,
  `tutor_created` datetime NOT NULL,
  `tutor_modified` datetime NOT NULL,
  `tutor_status` enum('Enable','Disable','Block') NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userips`
--

CREATE TABLE `userips` (
  `id` int(11) NOT NULL,
  `ips` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehiclecats`
--

CREATE TABLE `vehiclecats` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `groups` int(11) NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_pid` int(11) NOT NULL,
  `vehicle_name` varchar(150) NOT NULL,
  `vehicle_image` varchar(100) NOT NULL,
  `vehicle_city` int(11) NOT NULL,
  `vehicle_type` int(11) NOT NULL,
  `vehicle_price` int(11) NOT NULL,
  `vehicle_age` varchar(100) NOT NULL,
  `vehicle_capicity` varchar(100) NOT NULL,
  `vehicle_cc` varchar(100) NOT NULL,
  `vehicle_speed` varchar(100) NOT NULL,
  `vehicle_mileage` varchar(100) NOT NULL,
  `vehicle_short_desciption` varchar(2000) NOT NULL,
  `vehicle_full_desciption` longtext NOT NULL,
  `vehicle_status` enum('Enable','Disable','Block') NOT NULL,
  `vehicle_position` int(11) NOT NULL,
  `vehicle_add_date` date NOT NULL,
  `vehicle_update_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendorpackageitinerary`
--

CREATE TABLE `vendorpackageitinerary` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `vend_pack_day_itinerary` varchar(100) NOT NULL,
  `vend_pack_title_itinerary` varchar(100) NOT NULL,
  `vend_pack_image_itinerary` varchar(100) NOT NULL,
  `vend_pack_description_itinerary` longtext NOT NULL,
  `adddate` date NOT NULL,
  `editdate` date NOT NULL,
  `status` enum('Enable','Disable') NOT NULL DEFAULT 'Enable'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendorpackagemultiimages`
--

CREATE TABLE `vendorpackagemultiimages` (
  `vimgid` int(11) NOT NULL,
  `vimgpid` int(11) NOT NULL,
  `v_images` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendorpackages`
--

CREATE TABLE `vendorpackages` (
  `vend_pack_id` int(11) NOT NULL,
  `vend_pack_pid` int(11) NOT NULL,
  `vend_pack_meta_title` varchar(300) NOT NULL,
  `vend_pack_meta_keyword` varchar(300) NOT NULL,
  `vend_pack_meta_description` varchar(300) NOT NULL,
  `vend_pack_name` varchar(100) NOT NULL,
  `vend_pack_slogan` varchar(100) NOT NULL,
  `vend_pack_start_date` date NOT NULL,
  `vend_pack_end_date` date NOT NULL,
  `vend_pack_days` int(11) NOT NULL,
  `vend_pack_night` int(11) NOT NULL,
  `vend_pack_place` int(11) NOT NULL,
  `vend_pack_hotel` int(11) NOT NULL,
  `vend_pack_visa` enum('Yes','No') NOT NULL DEFAULT 'No',
  `vend_pack_wifi` enum('Yes','No') NOT NULL DEFAULT 'No',
  `vend_pack_transportation` enum('Yes','No') NOT NULL DEFAULT 'No',
  `vend_pack_image` varchar(100) NOT NULL,
  `vend_pack_video` varchar(100) NOT NULL,
  `vend_pack_link` varchar(100) NOT NULL,
  `vend_pack_mrp` float(10,2) NOT NULL,
  `vend_pack_price` float(10,2) NOT NULL,
  `vend_pack_discount` float(10,2) NOT NULL,
  `vend_pack_amount` float(10,2) NOT NULL,
  `vend_pack_final_price` float(10,2) NOT NULL,
  `vend_pack_mrp_usd` float(10,2) NOT NULL,
  `vend_pack_price_usd` float(10,2) NOT NULL,
  `vend_pack_discount_usd` float(10,2) NOT NULL,
  `vend_pack_amount_usd` float(10,2) NOT NULL,
  `vend_pack_final_price_usd` float(10,2) NOT NULL,
  `vend_pack_package_short_desciption` varchar(500) NOT NULL,
  `vend_pack_package_highlights` longtext NOT NULL,
  `vend_pack_package_hotel_highlights` longtext NOT NULL,
  `vend_pack_price_includes` longtext NOT NULL,
  `vend_pack_price_excludes` longtext NOT NULL,
  `vend_pack_accommodations` longtext NOT NULL,
  `vend_pack_extra_details` longtext NOT NULL,
  `vend_pack_document_required` longtext NOT NULL,
  `vend_pack_cancellation` varchar(200) NOT NULL,
  `vend_pack_guide_can_speak` varchar(200) NOT NULL,
  `vend_pack_payment_terms` varchar(200) NOT NULL,
  `vend_pack_international` enum('Yes','No') NOT NULL DEFAULT 'No',
  `vend_pack_domestic` enum('Yes','No') NOT NULL DEFAULT 'No',
  `vend_pack_deals` enum('Yes','No') NOT NULL DEFAULT 'No',
  `vend_pack_offers` enum('Yes','No') NOT NULL DEFAULT 'No',
  `vend_pack_hot` enum('Yes','No') NOT NULL DEFAULT 'No',
  `vend_pack_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `vend_pack_status` enum('Enable','Disable') NOT NULL DEFAULT 'Disable',
  `vend_pack_add_date` date NOT NULL,
  `vend_pack_edit_date` date NOT NULL,
  `vend_pack_verified` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `video_id` int(11) NOT NULL,
  `video_pid` int(11) NOT NULL DEFAULT '0',
  `video_mid` int(11) NOT NULL,
  `stud_course` varchar(100) NOT NULL,
  `stud_subject` varchar(100) NOT NULL,
  `video_user_id` int(11) NOT NULL,
  `video_title` varchar(150) NOT NULL,
  `video_text` varchar(1000) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `video_cover_image` varchar(100) NOT NULL,
  `video_image` varchar(100) NOT NULL,
  `video_is_home` enum('Yes','No') NOT NULL DEFAULT 'No',
  `video_status` enum('Enable','Disable','Block') NOT NULL,
  `video_position` int(11) NOT NULL,
  `video_add_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `count`) VALUES
(1, 31);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_recharge`
--

CREATE TABLE `wallet_recharge` (
  `walletid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `wallet_school_id` int(11) NOT NULL,
  `wallet_amount_in` int(11) NOT NULL,
  `wallet_amount_out` int(11) NOT NULL,
  `wallet_content` varchar(500) NOT NULL,
  `wallet_created` datetime NOT NULL,
  `wallet_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_recharge`
--

INSERT INTO `wallet_recharge` (`walletid`, `pid`, `mid`, `wallet_school_id`, `wallet_amount_in`, `wallet_amount_out`, `wallet_content`, `wallet_created`, `wallet_updated`) VALUES
(1, 9, 1, 106, 2, 0, '', '2020-01-15 15:32:55', '0000-00-00 00:00:00'),
(2, 9, 1, 109, 3, 0, '', '2020-01-15 16:10:34', '0000-00-00 00:00:00'),
(3, 9, 1, 109, 3, 0, '', '2020-01-15 16:25:41', '0000-00-00 00:00:00'),
(4, 9, 1, 109, 3, 0, '', '2020-01-15 16:25:57', '0000-00-00 00:00:00'),
(5, 1, 0, 10, 100, 0, '', '2020-01-17 12:26:31', '0000-00-00 00:00:00'),
(6, 1, 0, 10, 200, 0, '', '2020-01-17 12:36:09', '0000-00-00 00:00:00'),
(7, 1, 0, 10, 200, 0, '', '2020-01-17 12:56:51', '0000-00-00 00:00:00'),
(8, 1, 0, 10, 200, 0, '', '2020-01-17 12:57:47', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicyear`
--
ALTER TABLE `academicyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achievers`
--
ALTER TABLE `achievers`
  ADD PRIMARY KEY (`achie_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`adid`);

--
-- Indexes for table `admitcards`
--
ALTER TABLE `admitcards`
  ADD PRIMARY KEY (`adcd_id`);

--
-- Indexes for table `adults`
--
ALTER TABLE `adults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beforelogins`
--
ALTER TABLE `beforelogins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookingenquiries`
--
ALTER TABLE `bookingenquiries`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branche_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `caste`
--
ALTER TABLE `caste`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalouge`
--
ALTER TABLE `catalouge`
  ADD PRIMARY KEY (`catalouge_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`certf_id`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childs`
--
ALTER TABLE `childs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `cmsfeatures`
--
ALTER TABLE `cmsfeatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `consultants`
--
ALTER TABLE `consultants`
  ADD PRIMARY KEY (`consul_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createjobs`
--
ALTER TABLE `createjobs`
  ADD PRIMARY KEY (`jobs_id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`dest_id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`direc_id`);

--
-- Indexes for table `doner`
--
ALTER TABLE `doner`
  ADD PRIMARY KEY (`doner_id`);

--
-- Indexes for table `ebrochures`
--
ALTER TABLE `ebrochures`
  ADD PRIMARY KEY (`ebroch_id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`enq_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examschedules`
--
ALTER TABLE `examschedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `excelfile`
--
ALTER TABLE `excelfile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`faqs_id`);

--
-- Indexes for table `fashion`
--
ALTER TABLE `fashion`
  ADD PRIMARY KEY (`fashion_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `fellowships`
--
ALTER TABLE `fellowships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodtype`
--
ALTER TABLE `foodtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `gallerycate`
--
ALTER TABLE `gallerycate`
  ADD PRIMARY KEY (`gallery_cid`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`guide_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imagesettings`
--
ALTER TABLE `imagesettings`
  ADD PRIMARY KEY (`imgid`);

--
-- Indexes for table `installments`
--
ALTER TABLE `installments`
  ADD PRIMARY KEY (`insid`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobtypes`
--
ALTER TABLE `jobtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `mcqtestoptions`
--
ALTER TABLE `mcqtestoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcqtestqa`
--
ALTER TABLE `mcqtestqa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcqtests`
--
ALTER TABLE `mcqtests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `membershipfeatures`
--
ALTER TABLE `membershipfeatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `multipalcontacts`
--
ALTER TABLE `multipalcontacts`
  ADD PRIMARY KEY (`mcont_id`);

--
-- Indexes for table `myshippings`
--
ALTER TABLE `myshippings`
  ADD PRIMARY KEY (`shp_id`);

--
-- Indexes for table `newscategories`
--
ALTER TABLE `newscategories`
  ADD PRIMARY KEY (`news_cid`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orddetid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ordid`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagedisplay`
--
ALTER TABLE `pagedisplay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `paymentgateways`
--
ALTER TABLE `paymentgateways`
  ADD PRIMARY KEY (`merchant_id`);

--
-- Indexes for table `postyourrequirments`
--
ALTER TABLE `postyourrequirments`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `presences`
--
ALTER TABLE `presences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productextrafeature`
--
ALTER TABLE `productextrafeature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productmultiimages`
--
ALTER TABLE `productmultiimages`
  ADD PRIMARY KEY (`imgid`);

--
-- Indexes for table `productquatities`
--
ALTER TABLE `productquatities`
  ADD PRIMARY KEY (`proqtyids`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `productsliders`
--
ALTER TABLE `productsliders`
  ADD PRIMARY KEY (`sliderid`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resort`
--
ALTER TABLE `resort`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`resta_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomstypes`
--
ALTER TABLE `roomstypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seourl2`
--
ALTER TABLE `seourl2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicelocation`
--
ALTER TABLE `servicelocation`
  ADD PRIMARY KEY (`loc_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`software_id`);

--
-- Indexes for table `softwarecate`
--
ALTER TABLE `softwarecate`
  ADD PRIMARY KEY (`soft_cid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_status`
--
ALTER TABLE `stock_status`
  ADD PRIMARY KEY (`stosta_id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`story_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_parents`
--
ALTER TABLE `student_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_previous_education`
--
ALTER TABLE `student_previous_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teach_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`tmp_id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`tutor_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userips`
--
ALTER TABLE `userips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehiclecats`
--
ALTER TABLE `vehiclecats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `vendorpackageitinerary`
--
ALTER TABLE `vendorpackageitinerary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendorpackagemultiimages`
--
ALTER TABLE `vendorpackagemultiimages`
  ADD PRIMARY KEY (`vimgid`);

--
-- Indexes for table `vendorpackages`
--
ALTER TABLE `vendorpackages`
  ADD PRIMARY KEY (`vend_pack_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `wallet_recharge`
--
ALTER TABLE `wallet_recharge`
  ADD PRIMARY KEY (`walletid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academicyear`
--
ALTER TABLE `academicyear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `achievers`
--
ALTER TABLE `achievers`
  MODIFY `achie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `adid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admitcards`
--
ALTER TABLE `admitcards`
  MODIFY `adcd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adults`
--
ALTER TABLE `adults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `adv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beforelogins`
--
ALTER TABLE `beforelogins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bookingenquiries`
--
ALTER TABLE `bookingenquiries`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branche_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `caste`
--
ALTER TABLE `caste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalouge`
--
ALTER TABLE `catalouge`
  MODIFY `catalouge_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `certf_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `childs`
--
ALTER TABLE `childs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1594;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cmsfeatures`
--
ALTER TABLE `cmsfeatures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultants`
--
ALTER TABLE `consultants`
  MODIFY `consul_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `cont_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1282;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `createjobs`
--
ALTER TABLE `createjobs`
  MODIFY `jobs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `dest_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `direc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doner`
--
ALTER TABLE `doner`
  MODIFY `doner_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ebrochures`
--
ALTER TABLE `ebrochures`
  MODIFY `ebroch_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `enq_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examschedules`
--
ALTER TABLE `examschedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `excelfile`
--
ALTER TABLE `excelfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5162;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `faqs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fashion`
--
ALTER TABLE `fashion`
  MODIFY `fashion_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fellowships`
--
ALTER TABLE `fellowships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foodtype`
--
ALTER TABLE `foodtype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `gallerycate`
--
ALTER TABLE `gallerycate`
  MODIFY `gallery_cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guides`
--
ALTER TABLE `guides`
  MODIFY `guide_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagesettings`
--
ALTER TABLE `imagesettings`
  MODIFY `imgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `installments`
--
ALTER TABLE `installments`
  MODIFY `insid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobtypes`
--
ALTER TABLE `jobtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mcqtestoptions`
--
ALTER TABLE `mcqtestoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mcqtestqa`
--
ALTER TABLE `mcqtestqa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mcqtests`
--
ALTER TABLE `mcqtests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membershipfeatures`
--
ALTER TABLE `membershipfeatures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `multipalcontacts`
--
ALTER TABLE `multipalcontacts`
  MODIFY `mcont_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myshippings`
--
ALTER TABLE `myshippings`
  MODIFY `shp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newscategories`
--
ALTER TABLE `newscategories`
  MODIFY `news_cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orddetid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ordid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagedisplay`
--
ALTER TABLE `pagedisplay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paymentgateways`
--
ALTER TABLE `paymentgateways`
  MODIFY `merchant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postyourrequirments`
--
ALTER TABLE `postyourrequirments`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `presences`
--
ALTER TABLE `presences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productextrafeature`
--
ALTER TABLE `productextrafeature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productmultiimages`
--
ALTER TABLE `productmultiimages`
  MODIFY `imgid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productquatities`
--
ALTER TABLE `productquatities`
  MODIFY `proqtyids` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `productsliders`
--
ALTER TABLE `productsliders`
  MODIFY `sliderid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resort`
--
ALTER TABLE `resort`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `resta_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roomstypes`
--
ALTER TABLE `roomstypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seourl2`
--
ALTER TABLE `seourl2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servicelocation`
--
ALTER TABLE `servicelocation`
  MODIFY `loc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `software_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `softwarecate`
--
ALTER TABLE `softwarecate`
  MODIFY `soft_cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stock_status`
--
ALTER TABLE `stock_status`
  MODIFY `stosta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `story_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_parents`
--
ALTER TABLE `student_parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_previous_education`
--
ALTER TABLE `student_previous_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teach_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `tmp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `tutor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userips`
--
ALTER TABLE `userips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehiclecats`
--
ALTER TABLE `vehiclecats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendorpackageitinerary`
--
ALTER TABLE `vendorpackageitinerary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendorpackagemultiimages`
--
ALTER TABLE `vendorpackagemultiimages`
  MODIFY `vimgid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendorpackages`
--
ALTER TABLE `vendorpackages`
  MODIFY `vend_pack_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_recharge`
--
ALTER TABLE `wallet_recharge`
  MODIFY `walletid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
