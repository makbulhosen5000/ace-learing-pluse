-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 06:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ace_learning_pluse`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, '1666079859.mp4', NULL, 1, '2022-10-11 22:34:09', '2022-10-18 01:57:39'),
(5, NULL, NULL, '1666079883.mp4', NULL, NULL, '2022-10-18 01:58:03', '2022-10-18 01:58:03'),
(6, NULL, NULL, '1666079899.mp4', NULL, NULL, '2022-10-18 01:58:19', '2022-10-18 01:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Bangladeshi', 1, 1, '2022-04-14 04:50:12', '2022-04-23 14:52:53'),
(3, 'Indian', 1, 1, '2022-04-15 12:17:21', '2022-04-23 14:53:07'),
(4, 'China', 1, NULL, '2022-04-23 14:53:39', '2022-04-23 14:53:39'),
(5, 'Bata', 1, NULL, '2022-05-02 10:33:00', '2022-05-02 10:33:00'),
(6, 'Apex', 1, NULL, '2022-05-02 10:33:46', '2022-05-02 10:33:46'),
(7, 'lotto', 1, NULL, '2022-05-02 10:34:22', '2022-05-02 10:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `slug`, `short_desc`, `long_desc`, `publish_date`, `expire_date`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Intern', 'intern', 'S.N ADVANCE LIMITED, a leading systems integrator providing managed service solutions to businesses since 1994, has an exciting career opportunity for a highly motivated individual who is ready to move ahead in a progressive industry. We are focused on helping our clients succeed by understanding their unique technology requirements and developing a fully customized program to care for their data and voice networks.', 'S.N ADVANCE LIMITED  is seeking an energetic intern who can work a flexible schedule (approximately 20 – 30 Hours a week) for at least 90 calendar days from their start date. The internship may be extended out further if both parties agree, and we are willing to work with any level college student interested in information technology. The internship is paid and there are many opportunities to gain valuable practical experience. Interns must be able to demonstrate solid communication and organizational skills so that they are able to work within a team-focused environment. It is expected that all client interactions will be performed at the highest level of customer service and professionalism. They will work very closely with other technical resources and the Management team to ensure internal S.N ADVANCE LIMITED team areas and our clients are supported. They must be able to both document and effectively communicate the technical steps they’ve taken during their work day. The position relies on instructions and pre-established guidelines to perform the functions of the job, working under the supervision of a team lead or manager. This position offers internship candidates a chance to take part in the day to day operations of an established technology company that provides continued opportunities for growth and professional development. The working environment promotes strong values and encourages employee development, diversity, and requires customer service excellence.\r\nEssential Duties and Responsibilities:\r\nAssisting engineers on client projects\r\nCreating technical documentation and schematics\r\nGathering operational metrics for management\r\nHelping the support team solve technical support issues/requests\r\nSales support and data entry\r\nSome interaction with clients\r\nTechnical preparation of newly purchased client equipment prior to field deployment by an engineer\r\nTransportation of client equipment to from their offices\r\nQualifications:\r\nProficiency in usage of Microsoft Office suites\r\nProficiency in usage of Microsoft Operating Systems\r\nAnalytical problem-solving skills\r\nInterpersonal communication skills\r\nPassion for working in a team environment\r\nReliable transportation and valid driver’s license\r\nSpecial consideration given to candidates with the below qualifications:\r\nInstallation of Apple/MAC operating systems\r\nActive Directory and how it works in domain environments\r\nSecurity software such as Anti-Virus, Anti-Malware, etc.\r\nBasic networking concepts and/or LAN troubleshooting\r\nBasic data security concepts\r\nMicrosoft Hosted Exchange (365)\r\nAll selected candidates are subject to a satisfactory background check. This position will require limited travel in the local area. Serious candidates should send their resumes to HR@southtech.com or fax them to 941-306-4756.\r\nApply Online\r\nName*\r\nEmail*\r\nPhone*\r\nAttach Resume*\r\nNo file chosen', '2022-07-24', '2022-07-25', '202207250627CP-Computer Programming [Tamim Shariar Subeen].pdf', '2022-07-24 05:21:31', '2022-07-25 00:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `details`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Import', 'import', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1658997036.jpg', 'Inactive', '2022-06-30 05:52:21', '2022-07-28 02:30:36'),
(2, 'Export', 'export', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1658820351.jpg', 'Inactive', '2022-06-30 06:10:08', '2022-07-28 02:30:07'),
(3, 'Construction', 'construction', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1658820368.jpg', 'Inactive', '2022-06-30 06:10:35', '2022-07-28 02:31:00'),
(4, 'Our Products', 'our-products', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1658820380.jpg', 'Inactive', '2022-06-30 06:11:02', '2022-07-28 02:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Red', 1, NULL, '2022-04-22 14:05:46', '2022-04-22 14:05:46'),
(2, 'White', 1, NULL, '2022-04-23 15:20:46', '2022-04-23 15:20:46'),
(3, 'Yellow', 1, NULL, '2022-04-23 15:20:59', '2022-04-23 15:20:59'),
(4, 'Green', 1, NULL, '2022-04-23 15:21:09', '2022-04-23 15:21:09'),
(5, 'Black', 1, NULL, '2022-05-02 10:36:49', '2022-05-02 10:36:49'),
(6, 'Gray', 1, NULL, '2022-05-02 10:36:57', '2022-05-02 10:36:57'),
(7, 'Orange', 1, NULL, '2022-05-02 10:37:03', '2022-05-02 10:37:03'),
(8, 'Pink', 1, NULL, '2022-05-02 10:37:09', '2022-05-02 10:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `companies_brand_logos`
--

CREATE TABLE `companies_brand_logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies_brand_logos`
--

INSERT INTO `companies_brand_logos` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(10, NULL, '1655900834.png', '2022-06-22 06:27:14', '2022-06-22 06:27:14'),
(11, NULL, '1655900844.png', '2022-06-22 06:27:24', '2022-06-22 06:27:24'),
(12, NULL, '1655900857.png', '2022-06-22 06:27:37', '2022-06-22 06:27:37'),
(13, NULL, '1655900874.png', '2022-06-22 06:27:54', '2022-06-22 06:27:54'),
(14, NULL, '1655900881.png', '2022-06-22 06:28:01', '2022-06-22 06:28:01'),
(15, NULL, '1655900895.png', '2022-06-22 06:28:15', '2022-06-22 06:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `phone`, `email`, `facebook`, `twitter`, `linkedin`, `youtube`, `google`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '59 Wellington Street, Manchester, England, M18 8TX', '0161 669 6122', 'info@acelearningplus.co.uk', 'http://www.facebook.com/sharer/sharer.php?u=https://www.acelearningplus.co.uk/newpage', 'http://twitter.com/intent/tweet?text=I wanted to share this great website with you&url=http%3A%2F%2Fwww.acelearningplus.co.uk', 'http://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fwww.acelearningplus.co.uk&title=I wanted to share this great website with you', 'https://www.youtube.com', NULL, NULL, NULL, '2022-05-10 08:59:25', '2022-10-13 03:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `looking_for` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `massage` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `phone`, `email`, `looking_for`, `product_name`, `massage`, `created_at`, `updated_at`) VALUES
(147, 'Mh Akash', '566546', 'mhakash5000@gmail.com', 'Job', NULL, 'asdasd', '2022-10-26 04:07:33', '2022-10-26 04:07:33'),
(148, 'Dhaka', '01521532765', 'mhakash5000@gmail.com', 'Job', NULL, 'sdf', '2022-11-05 00:10:01', '2022-11-05 00:10:01'),
(149, 'Sultan kabir', '01521532765', 'mhakash5000@gmail.com', 'Staff', NULL, 'ghhhhh', '2022-11-05 00:11:34', '2022-11-05 00:11:34'),
(150, 'Hardware', '01782283170', 'mhakash5000@gmail.com', 'Job', NULL, 'sdfd', '2022-11-05 00:18:32', '2022-11-05 00:18:32'),
(151, 'Mh Akash', '01782283170', 'mhakash5000@gmail.com', 'Job', NULL, 'sdff', '2022-11-05 00:20:58', '2022-11-05 00:20:58'),
(152, 'Sultan kabir', '566546', 'mhakash5000@gmail.com', 'Job', NULL, 'sdf', '2022-11-05 00:21:45', '2022-11-05 00:21:45'),
(153, 'Dhaka', '01782283170', 'mhakash5000@gmail.com', 'Job', NULL, 'dhf', '2022-11-05 00:27:23', '2022-11-05 00:27:23'),
(154, 'Dhaka', '566546', 'mhakash5000@gmail.com', 'Job', NULL, 'sdf', '2022-11-09 01:02:13', '2022-11-09 01:02:13'),
(155, 'Dhaka', '25858', 'mhakash5000@gmail.com', 'Job', NULL, 'df', '2022-11-12 23:08:41', '2022-11-12 23:08:41'),
(156, 'Sultan kabir', '566546', 'mhakash5000@gmail.com', 'Staff', NULL, 'gmail', '2022-11-12 23:11:19', '2022-11-12 23:11:19'),
(157, 'hello', '566546', 'vendor@admin.com', 'Job', NULL, 'sdf', '2022-11-12 23:14:11', '2022-11-12 23:14:11'),
(158, 'hello', '566546', 'vendor@admin.com', 'Job', NULL, 'sdf', '2022-11-12 23:15:03', '2022-11-12 23:15:03'),
(159, 'Dhaka', '566546', 'mhakash5000@gmail.com', 'Staff', NULL, 'sdfdsf sdfd', '2022-11-12 23:15:21', '2022-11-12 23:15:21'),
(160, 'Dhaka', '566546', 'mhakash5000@gmail.com', 'Staff', NULL, 'sdfdsf sdfd', '2022-11-12 23:16:57', '2022-11-12 23:16:57'),
(161, 'Sultan kabir', '566546', 'mhakash5000@gmail.com', 'Job', NULL, 'sdfgsdf sdf', '2022-11-12 23:17:17', '2022-11-12 23:17:17'),
(162, 'Dhaka', '566546', 'mhakash5000@gmail.com', 'Student', NULL, 'sdfdf', '2022-11-12 23:18:30', '2022-11-12 23:18:30'),
(163, 'jhsdf', '566546', 'mhakash5000@gmail.com', 'Job', NULL, 'sdfsdf', '2022-11-12 23:19:28', '2022-11-12 23:19:28'),
(164, 'Sultan kabir', '566546', 'mhakash5000@gmail.com', 'Staff', NULL, 'dfsfdsds', '2022-11-12 23:20:35', '2022-11-12 23:20:35'),
(165, 'Sultan kabir', '566546', 'mhakash5000@gmail.com', 'Job', NULL, 'sdfsdf', '2022-11-12 23:20:52', '2022-11-12 23:20:52'),
(166, 'Sultan kabir', '566546', 'mhakash5000@gmail.com', 'Staff', NULL, 'sdfsdfd', '2022-11-12 23:25:53', '2022-11-12 23:25:53'),
(167, 'Dhaka', '45665', 'mhakash5000@gmail.com', 'Staff', NULL, 'gdfsgdfg', '2022-11-12 23:29:09', '2022-11-12 23:29:09'),
(168, 'Sultan kabir', '566546', 'mhakash5000@gmail.com', 'Job', NULL, 'dfffgdfg', '2022-11-12 23:30:38', '2022-11-12 23:30:38'),
(169, 'd', '566546', 'vendor@admin.com', 'Job', NULL, 'dd', '2022-11-12 23:31:41', '2022-11-12 23:31:41'),
(170, 'test', '1024564', 'admin@admin.com', 'Staff', NULL, 'test', '2022-11-12 23:32:18', '2022-11-12 23:32:18'),
(171, 'Dhaka', '566546', 'mhakash5000@gmail.com', 'Staff', NULL, '12345', '2022-11-12 23:33:10', '2022-11-12 23:33:10'),
(172, 'Mh Akash', '566546', 'artsky321@gmail.com', 'Student', NULL, 'here is new message', '2022-11-12 23:34:17', '2022-11-12 23:34:17'),
(173, 'akash', '01585', 'vendor@admin.com', 'Staff', NULL, 'here is my message', '2022-11-12 23:37:28', '2022-11-12 23:37:28'),
(174, 'Sultan kabir', '566546', 'mhakash5000@gmail.com', 'Staff', NULL, 'sdfsdf', '2022-11-13 01:01:43', '2022-11-13 01:01:43'),
(175, 'Dhaka', '566546', 'mhakash5000@gmail.com', 'Second Std', NULL, '23434', '2022-11-18 23:10:43', '2022-11-18 23:10:43'),
(176, 'Sultan kabir', '566546', 'mhakash500@gmail.com', 'Second Std', NULL, 'asdd', '2022-11-18 23:12:17', '2022-11-18 23:12:17'),
(177, 'Mh Akash', '566546', 'mhakash50@gmail.com', 'First Std', NULL, '23434', '2022-11-18 23:15:00', '2022-11-18 23:15:00'),
(178, 'Mh Akash', '566546', 'mhakash50@gmail.com', 'First Std', NULL, '23434', '2022-11-18 23:16:09', '2022-11-18 23:16:09'),
(179, 'Sultan kabir', '566546', 'mhakash5000@gmail.com', 'First Std', NULL, 'asdd', '2022-11-18 23:16:27', '2022-11-18 23:16:27'),
(180, 'Dhaka', '566546', 'mhakash5000@gmail.com', 'Second Std', NULL, 'asdd', '2022-11-18 23:17:42', '2022-11-18 23:17:42'),
(181, 'Sultan kabir', '566546', 'mhakash5000@gmail.com', 'First Std', NULL, 'asdd', '2022-11-18 23:22:47', '2022-11-18 23:22:47'),
(182, 'Dhaka', '566546', 'mhakash50@gmail.com', 'Second Std', NULL, '23434', '2022-11-18 23:31:21', '2022-11-18 23:31:21'),
(183, 'Sultan kabir', '566546', 'mhakash50@gmail.com', 'First Std', NULL, 'asdd', '2022-11-18 23:33:29', '2022-11-18 23:33:29'),
(184, 'Sultan kabir', '566546', 'vendor@admin.com', 'First Std', NULL, '23434', '2022-11-18 23:35:45', '2022-11-18 23:35:45'),
(185, 'Sultan kabir', '566546', 'vendor@admin.com', 'Second Std', NULL, 'asdd', '2022-11-18 23:37:02', '2022-11-18 23:37:02'),
(186, 'Dhaka', '566546', 'mhakash5000@gmail.com', 'Second Std', NULL, '43124fd', '2022-11-18 23:42:01', '2022-11-18 23:42:01'),
(187, 'Dhaka', '566546', 'vendor@admin.com', 'First Std', NULL, 'asdd', '2022-11-18 23:44:38', '2022-11-18 23:44:38'),
(188, 'Mh Akash', '566546', 'hero@gmail.com', 'First Std', NULL, 'sdfsdf', '2022-11-18 23:46:43', '2022-11-18 23:46:43'),
(189, 'new product', '566546', 'admin@gmail.com', 'Second Std', NULL, '43124fd', '2022-11-18 23:48:49', '2022-11-18 23:48:49'),
(190, 'blue', '566546', 'vendor@admin.com', 'Second Std', NULL, '43124fd', '2022-11-18 23:50:25', '2022-11-18 23:50:25'),
(191, 'Dhaka', '566546', 'vendor@admin.com', 'First Std', NULL, '43124fd', '2022-11-18 23:52:31', '2022-11-18 23:52:31'),
(192, 'Sultan kabir', '566546', 'mhakash5000@gmail.com', 'First Std', NULL, NULL, '2022-11-18 23:55:36', '2022-11-18 23:55:36'),
(193, 'Rimon', '0178228315', 'Rohim500@gmail.com', 'Second Std', NULL, 'testing', '2022-11-18 23:57:43', '2022-11-18 23:57:43'),
(194, 'contact', '566546', 'admin@admin.com', 'Job', NULL, 'sdfdsf contact', '2022-11-18 23:59:12', '2022-11-18 23:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `count_down_timers`
--

CREATE TABLE `count_down_timers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `launch_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `count_down_timers`
--

INSERT INTO `count_down_timers` (`id`, `title`, `launch_date`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Timer', '2022-08-06 17:54:00', 0, '2022-05-17 08:12:31', '2022-07-25 05:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `country`, `address`, `city`, `postcode`, `message`, `image`, `created_at`, `updated_at`) VALUES
(112, 'Dhaka', '01521532765', 'belly road,K', 'belly road,K', 'Brahmanbaria', '15226', 'sdfsd sdfdsf', NULL, '2022-11-19 00:42:10', '2022-11-19 00:42:10'),
(113, 'Dhaka', '01521532765', 'belly road,K', 'belly road,K', 'Brahmanbaria', '15226', 'sdfsd sdfdsf', NULL, '2022-11-19 00:45:18', '2022-11-19 00:45:18'),
(114, 'Dhaka', '01521532765', 'belly road,K', 'belly road,K', 'Brahmanbaria', '15226', 'sdfsd sdfdsf', NULL, '2022-11-19 00:46:36', '2022-11-19 00:46:36'),
(115, 'Dhaka', '01521532765', 'belly road,K', 'belly road,K', 'Brahmanbaria', '15226', 'sdfsd sdfdsf', NULL, '2022-11-19 00:50:31', '2022-11-19 00:50:31'),
(116, 'Dhaka', '01521532765', 'belly road,K', 'belly road,K', 'Brahmanbaria', '15226', 'sdfsd sdfdsf', NULL, '2022-11-19 00:53:07', '2022-11-19 00:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(10, '1663751034.png', NULL, 1, '2022-06-21 07:51:25', '2022-09-21 03:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `name`, `slug`, `price`, `short_desc`, `long_desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Medicine', 'medicine', '500', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore nobis eos porro sapiente ipsam odio nihil iste doloribus consequatur, eius aperiam est quaerat inventore aliquam. Dignissimos iusto facere ex neque?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore nobis eos porro sapiente ipsam odio nihil iste doloribus consequatur, eius aperiam est quaerat inventore aliquam. Dignissimos iusto facere ex neque?\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Dolore nobis eos porro sapiente ipsam odio nihil iste doloribus consequatur, eius aperiam est quaerat inventore aliquam. Dignissimos iusto facere ex neque?', '202208010702pexels-pixabay-262353.jpg', '2022-08-01 00:56:43', '2022-08-01 01:13:32'),
(2, 'Feed', 'feed', '200', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore nobis eos porro sapiente ipsam odio nihil iste doloribus consequatur, eius aperiam est quaerat inventore aliquam. Dignissimos iusto facere ex neque?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore nobis eos porro sapiente ipsam odio nihil iste doloribus consequatur, eius aperiam est quaerat inventore aliquam. Dignissimos iusto facere ex neque?\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Dolore nobis eos porro sapiente ipsam odio nihil iste doloribus consequatur, eius aperiam est quaerat inventore aliquam. Dignissimos iusto facere ex neque?', '202208010715pexels-tom-fisk-3856440.jpg', '2022-08-01 01:15:57', '2022-08-01 01:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_05_01_104950_create_logos_table', 1),
(6, '2020_05_02_045646_create_sliders_table', 1),
(7, '2020_05_03_140713_create_contacts_table', 1),
(8, '2020_05_03_170016_create_abouts_table', 1),
(9, '2020_05_08_144512_create_contact_us_table', 1),
(10, '2022_04_11_162200_create_categories_table', 2),
(11, '2022_04_14_101043_create_brands_table', 3),
(14, '2022_04_15_172626_create_sizes_table', 4),
(15, '2022_04_15_173432_create_colors_table', 4),
(16, '2022_04_20_192327_create_products_table', 5),
(17, '2022_04_20_193429_create_product_sizes_table', 5),
(18, '2022_04_20_193516_create_product_colors_table', 5),
(19, '2022_04_20_193640_create_product_sub_images_table', 5),
(20, '2022_04_22_191915_create_count_down_timers_table', 6),
(21, '2022_06_21_094740_create_abouts_table', 7),
(24, '2022_06_21_104436_create_services_table', 8),
(25, '2022_06_22_115600_create_companies_brand_logos_table', 8),
(26, '2022_06_25_100333_create_sub_categories_table', 9),
(27, '2022_06_30_113501_create_categories_table', 10),
(28, '2022_06_30_121513_create_sub_categories_table', 11),
(29, '2022_07_19_052044_create_teams_table', 12),
(32, '2022_07_20_094845_create_news_table', 13),
(33, '2022_07_24_101448_create_careers_table', 14),
(34, '2022_08_01_060344_create_medicines_table', 15),
(35, '2022_10_27_060918_create_customers_table', 16),
(36, '2022_11_13_060832_create_notifications_table', 17),
(37, '2022_11_14_065939_create_jobs_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `title1`, `short_desc`, `title2`, `desc`, `title3`, `long_desc`, `date`, `pdf`, `image`, `created_at`, `updated_at`) VALUES
(43, 'Tip of the week', 'tip-of-the-week', 'To do lists', 'Make to-do lists. Prepare your to-do list the night before. In doing so, you will know what tasks you have to accomplish the next day; this helps your subconscious mind to work on your list while you are asleep. When you wake up in the morning, you will often have ideas and how to accomplish your tasks.', 'Sleep Better', 'Many people don\'t have a good sleep at night trying not to forget something they have to do the following day. Creating a list before going to bed, writing down everything you have planned for the coming school day, will help you sleep far better and awake more refreshed.', 'The ABC Method', 'After making a list of everything that you plan to do the next day, organise your list by applying the ABC method to your activities. The most important task in your to-do list should be number 1. How do you know what the most important task to do is? Figure out what are the consequences of not doing the task. The task that has the most potential implications of doing it or not doing it should be number one on the list. This principle should be applied every time you are working on your to-do list. Always begin with the task that has the most significant consequences.', '2022-10-31', NULL, '202210311120blog-20-1536x960.jpg', '2022-10-31 04:50:34', '2022-10-31 05:20:43'),
(44, 'Post Title', 'post-title', 'MAKING EDUCATION BETTER', 'Education is vital for children to have a good start in life. Be it formal or informal education and this is because it is the primary source of knowledge.\r\n\r\nIf education is so essential for your children to acquire knowledge and become more relevant in the society, how then can your children improve their academic performance and how can you help your children to perform better in their academic knowing that the responsibility is not for the children only but also for parents too.', 'How Students can improve their performance', 'From research, about 95% of students all over the world believe they can do things later, this has become a significant problem in the lives of many students, but they do not even realise it. Students resume college with the little workload at the beginning of the section, but they fail to deal with it in time, which causes it to compound together and reduces their ability to get all necessary studying done before their examinations. However, you can make things better and improve your performance as a student by starting your studying when the workload still appears little before they increase. Read all-important books bit by bit every day and all you will have to do before your examination is a revision. This method will not only help you reduce the workload but will also help you read ahead of others in the class.Since the responsibility is not for children only but also for parents, it is essential we discuss parents and what they can also do to help their children academically.\r\n\r\nThe major problem when it comes to parents being a part of their children excellent is that they believe it is the responsibilities of the teachers to get things done since they have paid the necessary bills. However, this is far from the truth. How about we look at some things you can do to increase the academic performance of your children that teachers or school counsellor cannot do for you.', 'How Parents Can Help Their Children', 'Television is exciting and very attractive to children especially when they have many favourite programs on different channels. It becomes an addiction and time waster in their lives. However, not having time to spend with your children increases their time in front of that screen because no one is trying to correct them. They neglect their books for this purpose and follow the routine of eating, watch TV, and sleeping. As a parent, do not make work too important to you that you forget to take responsibilities for your children. Do not make it a taboo for your children to watch the television but add moderation to it. Carefully select educative channels for your children at an early stage of their lives instead of exposing them to some channels that promote violence. Get them to read their books at some specific time of the day instead of watching the television all day long. Dedicate time to help them with their studies because this will help them concentrate more. You could read to them, help them solve difficult assignments and teach them how to do so rather than neglect them and leave them to do things the way it pleases them.\r\nAs a parent, you need to understand that it does not have to be your choice all the time. Read your children like books so you can learn their real capabilities and instead of putting pressure on them to get a certificate from attending classes they don’t have a passion for, support them in what they know how to do best and help them become better in it.', '2022-10-30', NULL, '202210311121blog-3-750x469.jpg', '2022-10-31 04:57:20', '2022-10-31 05:26:41'),
(45, 'Avoid Procrastination', 'avoid-procrastination', 'How Students can improve their performance', 'Television is exciting and very attractive to children especially when they have many favourite programs on different channels. It becomes an addiction and time waster in their lives. However, not having time to spend with your children increases their time in front of that screen because no one is trying to correct them. They neglect their books for this purpose and follow the routine of eating, watch TV, and sleeping. As a parent, do not make work too important to you that you forget to take responsibilities for your children. Do not make it a taboo for your children to watch the television but add moderation to it. Carefully select educative channels for your children at an early stage of their lives instead of exposing them to some channels that promote violence. Get them to read their books at some specific time of the day instead of watching the television all day long. Dedicate time to help them with their studies because this will help them concentrate more. You could read to them, help them solve difficult assignments and teach them how to do so rather than neglect them and leave them to do things the way it pleases them.', 'How Parents Can Help Their Children', 'Television is exciting and very attractive to children especially when they have many favourite programs on different channels. It becomes an addiction and time waster in their lives. However, not having time to spend with your children increases their time in front of that screen because no one is trying to correct them. They neglect their books for this purpose and follow the routine of eating, watch TV, and sleeping. As a parent, do not make work too important to you that you forget to take responsibilities for your children. Do not make it a taboo for your children to watch the television but add moderation to it. Carefully select educative channels for your children at an early stage of their lives instead of exposing them to some channels that promote violence. Get them to read their books at some specific time of the day instead of watching the television all day long. Dedicate time to help them with their studies because this will help them concentrate more. You could read to them, help them solve difficult assignments and teach them how to do so rather than neglect them and leave them to do things the way it pleases them.', 'Support their Academic Dreams', 'As a parent, you need to understand that it does not have to be your choice all the time. Read your children like books so you can learn their real capabilities and instead of putting pressure on them to get a certificate from attending classes they don’t have a passion for, support them in what they know how to do best and help them become better in it.', '2022-10-25', NULL, '202210311133blog-10-750x469.jpg', '2022-10-31 05:31:51', '2022-10-31 05:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mhakash5000@gmail.com', '$2y$10$SsOoTCBsDR9kCY6llVuxEuDFrk1WUu8SZQ3oks8Hsgfj1HqzV4Pb2', '2022-10-11 01:17:50'),
('admin@gmail.com', '$2y$10$/ZNBsBeEfTllm5paH9iDd.55P4jergCBTYElvji7KDlc4pnueuu/2', '2022-11-09 00:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `model` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `model`, `short_desc`, `long_desc`, `image`, `created_at`, `updated_at`) VALUES
(53, 'Key Stage 1 Maths & English (£87.00 Per Month)', 'key-stage-1-maths-english-ps8700-per-month', 87, '00012', 'Both maths and English have lessons for your children to watch before starting the quiz. All our subject covers the new curriculum. FrogPlay is a great way to engage your children - with FrogPlay, children can test their ability to put their understanding into practice, analyse their strengths and weaknesses and reward them for their efforts!', 'Both maths and English have lessons for your children to watch before starting the quiz. All our subject covers the new curriculum. FrogPlay is a great way to engage your children - with FrogPlay, children can test their ability to put their understanding into practice, analyse their strengths and weaknesses and reward them for their efforts!\r\n\r\nQuestion formats\r\nVarious question formats test how well your child can adapt and apply what they have learned from their lessons and studies!\r\n\r\nInstant feedback (auto-mark)\r\nAs your child completes quizzes, questions are automatically marked to give them instant feedback on their performance!\r\n\r\nDetailed Analytics\r\nGet all the information you need at your fingertips! FrogPlay’s Analytics allows you to see your children\'s performance.\r\n\r\nMini-Games\r\nPlay games between quiz questions - this is a great way to reward your child, and help pace their progress. A student also gets more time to play if they do well in a quiz, encouraging them to give their 110%!\r\n\r\nSibling Discount\r\n15% discount for tutoring of additional child', '202210240948911631839.jpg', '2022-07-01 22:55:30', '2022-10-24 03:48:56'),
(54, 'Key Stage 2 Courses Maths & English (From £87.00 per month)', 'key-stage-2-courses-maths-english-from-ps8700-per-month', 87, '00013', 'Both maths and English have lessons for your children to watch before starting the quiz. All our subject covers the new curriculum. FrogPlay is a great way to engage your children - with FrogPlay, children can test their ability to put their understanding into practice, analyse their strengths and weaknesses and reward them for their efforts!', 'Question formats\r\nVarious question formats test how well your child can adapt and apply what they have learned from their lessons and studies!\r\n\r\nInstant feedback (auto-mark)\r\nAs your child completes quizzes, questions are automatically marked to give them instant feedback on their performance!\r\n\r\nDetailed Analytics\r\nGet all the information you need at your fingertips! FrogPlay’s Analytics allows you to see your children\'s performance.\r\n\r\nMini-Games\r\nPlay games between quiz questions - this is a great way to reward your child, and help pace their progress. A student also gets more time to play if they do well in a quiz, encouraging them to give their 110%!\r\n\r\nSibling Discount\r\n15% discount for tutoring of additional child', '202210180616911639650.png', '2022-07-01 22:56:20', '2022-10-19 07:29:39'),
(86, 'Key Stage 3 Courses Maths, English & Science (From £87.00 per month)', 'key-stage-3-courses-maths-english-science-from-ps8700-per-month', 87, '00014', 'Our Maths has lessons for your children to watch before starting the quiz. All our subject covers the new curriculum. FrogPlay is a great way to engage your children. Children can test their ability to put their understanding into practice, analyse their strengths and weaknesses and reward them for their efforts!', 'Question formats\r\nVarious question formats test how well your child can adapt and apply what they have learned from their lessons and studies!\r\n\r\nInstant feedback (auto-mark)\r\nAs your child completes quizzes, questions are automatically marked to give them instant feedback on their performance!\r\n\r\nDetailed Analytics\r\nGet all the information you need at your fingertips! FrogPlay’s Analytics allows you to see your children\'s performance.\r\n\r\nMini-Games\r\nPlay games between quiz questions - this is a great way to reward your child, and help pace their progress. A student also gets more time to play if they do well in a quiz, encouraging them to give their 110%!\r\n\r\nSibling Discount\r\n15% discount for tutoring of additional child', '202210180649939456933.png', '2022-10-18 00:49:23', '2022-10-19 07:34:18'),
(87, 'Key Stage 4 Courses Maths, English & Science (From £108.00 per month)', 'key-stage-4-courses-maths-english-science-from-ps10800-per-month', 108, '00015', 'Both maths and English have lessons for your children to watch before starting the quiz. All our subject covers the new curriculum (Grade 9 - 1). FrogPlay is a great way to engage your children. Children can test their ability to put their understanding into practice, analyse their strengths and weaknesses and reward them for their efforts!', 'Question formats\r\nVarious question formats test how well your child can adapt and apply what they have learned from their lessons and studies!\r\n\r\nInstant feedback (auto-mark)\r\nAs your child completes quizzes, questions are automatically marked to give them instant feedback on their performance!\r\n\r\nDetailed Analytics\r\nGet all the information you need at your fingertips! FrogPlay’s Analytics allows you to see your children\'s performance.\r\n\r\nSibling Discount\r\n15% discount for tutoring of additional child', '202210180702939461553.png', '2022-10-18 01:02:00', '2022-10-19 07:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_images`
--

CREATE TABLE `product_sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sub_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_images`
--

INSERT INTO `product_sub_images` (`id`, `product_id`, `sub_image`, `created_at`, `updated_at`) VALUES
(42, 53, '20220702130918.png', '2022-07-02 07:09:18', '2022-07-02 07:09:18'),
(43, 53, '20220702130919.png', '2022-07-02 07:09:18', '2022-07-02 07:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'IMPORT', NULL, NULL, '2022-06-22 06:11:04', '2022-07-23 23:45:39'),
(2, 'EXPORT', NULL, NULL, '2022-06-22 06:11:15', '2022-07-23 23:46:02'),
(3, 'CONSTRUCTION', NULL, NULL, '2022-06-22 06:11:26', '2022-07-23 23:46:20'),
(4, 'OUR PRODUCTS', NULL, NULL, '2022-06-22 06:11:37', '2022-07-23 23:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'M', 1, NULL, '2022-04-19 15:07:08', '2022-04-19 15:07:08'),
(2, 'L', 1, NULL, '2022-04-19 15:07:42', '2022-04-19 15:07:42'),
(3, 'XL', 1, NULL, '2022-04-19 15:07:57', '2022-04-19 15:07:57'),
(4, 'S', 1, NULL, '2022-04-19 15:08:04', '2022-04-19 15:08:04'),
(5, 'Full-length', 1, NULL, '2022-05-02 10:29:09', '2022-05-02 10:29:09'),
(6, '10 inch', 1, NULL, '2022-05-02 10:30:24', '2022-05-02 10:30:24'),
(7, '11 inch', 1, NULL, '2022-05-02 10:30:31', '2022-05-02 10:30:31'),
(8, '12 inch', 1, NULL, '2022-05-02 10:30:38', '2022-05-02 10:30:38'),
(9, '13 inch', 1, NULL, '2022-05-02 10:30:46', '2022-05-02 10:30:46'),
(10, '14 inch', 1, NULL, '2022-05-02 10:30:51', '2022-05-02 10:30:51'),
(11, '24 inches long by 24 inches wide', 1, NULL, '2022-05-05 00:29:52', '2022-05-05 00:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `short_title1`, `short_title2`, `long_title`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(16, '1665383515.png', 'Reliable tuitions for', '11 plus exam', 'Your child will have a great time studying with us. The best way to prepare for 11 Plus is                             to start early and not to miss any class, while we support your child through the 11 Plus                             exam. As your child study with us, he/she will gain confidence and ability in core maths and English skills.', NULL, 1, '2022-08-30 02:12:44', '2022-10-10 00:31:55'),
(17, '1665400781.png', 'Experienced tutors', 'for Maths and English', 'Whether your child is a fast learner or a slow learner, you can always count on our skilful tutors to provide top-quality maths tuition. We also offer English tuition for children of all age groups.', NULL, 1, '2022-08-30 02:15:28', '2022-11-01 23:54:42'),
(18, '1665389619.png', 'Individual attention', 'for your children', 'At Ace Learning Plus Ltd, our expert tutors offer homeschooling for your child in Manchester and the the surrounding areas. Get in touch with us today for more details.', NULL, 1, '2022-08-30 02:17:01', '2022-10-10 05:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `details`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'electric', 'electric', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923933.jpeg', 'Inactive', '2022-06-30 06:23:22', '2022-07-04 02:38:53'),
(2, 1, 'electronics', 'electronics', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923924.jpeg', 'Inactive', '2022-06-30 06:30:22', '2022-07-04 02:38:44'),
(3, 1, 'Hardware', 'Hardware', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923907.jpeg', 'Inactive', '2022-06-30 06:30:43', '2022-07-04 02:38:27'),
(4, 1, 'Software', 'Software', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923893.jpeg', 'Inactive', '2022-06-30 06:31:03', '2022-07-04 02:38:13'),
(5, 1, 'Shirt', 'Shirt', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923829.jpeg', 'Inactive', '2022-06-30 06:31:22', '2022-07-04 02:37:09'),
(6, 2, 'T-Shirt', 'T-Shirt', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923844.jpeg', 'Inactive', '2022-06-30 06:31:47', '2022-07-04 02:37:24'),
(7, 2, 'Pants', 'Pants', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923860.jpeg', 'Inactive', '2022-06-30 06:32:01', '2022-07-04 02:37:40'),
(8, 2, 'Baby Cloths', 'Baby Cloths', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923879.jpeg', 'Inactive', '2022-06-30 06:32:21', '2022-07-04 02:37:59'),
(9, 3, 'Consultant', 'Consultant', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923944.jpeg', 'Inactive', '2022-06-30 06:32:46', '2022-07-04 02:39:24'),
(11, 3, 'Constructor', 'Constructor', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656923954.jpeg', 'Inactive', '2022-06-30 06:33:32', '2022-07-04 02:39:34'),
(12, 4, 'Air Filters', 'Air Filters', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924120.jpeg', 'Inactive', '2022-06-30 06:34:15', '2022-07-04 02:42:00'),
(13, 4, 'Oil Separators', 'Oil Separators', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924168.jpeg', 'Inactive', '2022-06-30 06:34:44', '2022-07-04 02:42:48'),
(14, 4, 'Oil Filters', 'Oil Filters', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924147.jpeg', 'Inactive', '2022-06-30 06:35:10', '2022-07-04 02:42:27'),
(15, 4, 'Compressor Oil', 'Compressor Oil', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924089.jpeg', 'Inactive', '2022-06-30 06:35:37', '2022-07-04 02:41:29'),
(16, 4, 'CNG Ring Piston', 'CNG Ring Piston', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924073.jpeg', 'Inactive', '2022-06-30 06:35:59', '2022-07-04 02:41:13'),
(17, 4, 'Bike Security Device', 'Bike Security Device', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924054.jpeg', 'Inactive', '2022-06-30 06:36:20', '2022-07-04 02:40:54'),
(18, 4, 'Bio Spray Plus', 'Bio Spray Plus', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924037.jpeg', 'Inactive', '2022-06-30 06:36:47', '2022-07-04 02:40:37'),
(21, 3, 'Drawing', 'Drawing', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '1656924016.jpeg', 'Inactive', '2022-07-01 22:53:35', '2022-07-04 02:40:16'),
(22, 1, 'Mechanical Equipment', 'Mechanical Equipment', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '2022070306471656308774.jpeg', 'Inactive', '2022-07-03 00:47:31', '2022-07-04 02:39:58'),
(23, 1, 'Food Supplement', 'Food Supplement', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga', '2022070306491656308774.jpeg', 'Inactive', '2022-07-03 00:49:37', '2022-07-04 02:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `slug`, `designation`, `description`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Shamima Nasrin', 'shamima-nasrin', 'Chairman', 'Shamima Nasrin, the wife of Sagar Ahamed, was born in 1995. in a respectable Muslim family of rangpur. and graduated from the Begum rokeya college rangpur. B.A (hons)M.A English', '1658381645.jpeg', '2022-07-19 00:18:47', '2022-08-02 22:46:26'),
(6, 'Sagar Ahamed', 'Sagar Ahamed', 'Managing Director', 'Sagar Ahamed BSc in Civil Engineering,\r\nSagar Ahamed was born in 1988 in a respectable Muslim family of Dinajpur and graduated from Stamford University Bangladesh.', '1658381877.jpeg', '2022-07-19 00:26:36', '2022-07-20 23:37:57'),
(7, 'Md.Anam Ahmed', 'mdanam-ahmed', 'Director', 'Md.Anam Ahmed was born in 1992 in a respectable Muslim family of Dinajpur and graduated from Hajee Mohammod Danesh Science and Technology University, Dinajpur. B.sc fisheries (hons) *MS in Aquaculture from Banhladesh Agricultural University, Mymensingh.', '1658382811.jpg', '2022-07-19 00:27:28', '2022-08-02 22:47:10'),
(9, 'Md.Rumon Sarkar', 'mdrumon-sarkar', 'General Manager', 'Md.Rumon Sarkar was born in 1992 in a respectable Muslim family of Dinajpur and graduated from  Dhaka International university, BSc in (EETE', '1658382193.jpeg', '2022-07-19 02:52:20', '2022-08-02 22:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `phone`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'mh akash', '01989139570', 'mayenuddin0406@gmail.com', NULL, '$2y$10$nJoCtWdqsIxRwxDRX/qnxeCp606QCH3IHINRqvF7XOC6kmmVfNJhm', NULL, 'dLtAqlK0q8UcSZDRNcZBpYVVc1KeDq1beekMiZhjZhhmmZs2ROyXSdEgTjsL', '2022-04-11 11:04:56', '2022-11-19 01:31:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_name_unique` (`name`);

--
-- Indexes for table `companies_brand_logos`
--
ALTER TABLE `companies_brand_logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `count_down_timers`
--
ALTER TABLE `count_down_timers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `medicines_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_images`
--
ALTER TABLE `product_sub_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_name_unique` (`name`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `companies_brand_logos`
--
ALTER TABLE `companies_brand_logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `count_down_timers`
--
ALTER TABLE `count_down_timers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product_sub_images`
--
ALTER TABLE `product_sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
