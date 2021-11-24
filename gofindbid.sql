gofindbi_ominsalam (1).sql
Who has access
J
K
K
System properties
Type
SQL
Size
67 KB
Storage used
67 KB
Location
1 - DEVELOPMENT
Owner
me
Modified
2:00 PM by me
Opened
2:50 PM by me
Created
2:00 PM with Google Drive Web
Add a description
Viewers can download
-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 24, 2021 at 10:00 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gofindbi_ominsalam`
--

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `entity` varchar(128) NOT NULL,
  `currency` varchar(128) NOT NULL,
  `alpha_code` varchar(3) NOT NULL,
  `numeric_code` varchar(3) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `user_id`, `entity`, `currency`, `alpha_code`, `numeric_code`, `status`, `created`, `modified`) VALUES
(1, 1, 'United Arab Emirates', 'UAE Dirham', 'AED', '782', '1', '2020-11-27 08:47:36', '2021-09-13 17:32:11'),
(2, 1, 'United States of America', 'US Dollar', 'USD', '840', '1', '2020-11-27 08:47:36', '2020-11-27 08:47:36'),
(3, 1, 'Philippines', 'Philippine Peso', 'PHP', '608', '1', '2020-11-27 08:47:36', '2020-11-27 08:47:36'),
(4, 1, 'Bahrain', 'Bahraini Dinar', 'BHD', '048', '1', '2021-02-19 06:40:42', '2021-02-19 06:40:42'),
(5, 1, 'Canada', 'Canadian Dollar', 'CAD', '124', '1', '2021-02-19 06:41:49', '2021-02-19 06:41:49'),
(6, 1, 'China', 'Yuan Renminbi', 'CNY', '156', '1', '2021-02-19 06:44:47', '2021-02-19 06:44:47'),
(7, 3, 'Colombia', 'Colombian Peso', 'COP', '170', '1', '2021-09-13 17:19:34', '2021-09-13 17:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

DROP TABLE IF EXISTS `industries`;
CREATE TABLE IF NOT EXISTS `industries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `details` varchar(3500) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `title`, `details`, `status`, `created`, `modified`) VALUES
(1, 'Gofindbids', 'Some details are displayed here', 1, '2020-08-05 07:53:17', '2021-09-13 18:34:22'),
(2, 'Architecture and Engineering', 'Architecture can mean: A general term to describe buildings and other physical structures. The art and science of designing buildings and (some) nonbuilding structures. The style of design and method of construction of buildings and other physical structures. A unifying or coherent form or structure.', 1, '2020-08-05 07:53:17', '2021-02-18 18:16:26'),
(3, 'MEP', 'Some details are displayed here', 1, '2020-08-05 07:53:17', '2020-12-25 01:45:41'),
(4, 'Electrical', 'Some details are displayed here', 1, '2020-08-05 07:53:17', '2020-12-25 01:45:41'),
(5, 'Mechanical', 'Some details are displayed here', 1, '2020-08-05 07:53:17', '2020-12-25 01:45:41'),
(6, 'Plumbing', 'Some details are displayed here', 1, '2020-08-05 07:53:17', '2020-12-25 01:45:41'),
(7, 'Agriculture', 'Some details are displayed here', 1, '2020-08-05 07:53:17', '2020-12-25 01:45:41'),
(8, 'Education', 'Some details are displayed here', 1, '2020-08-05 07:53:17', '2020-12-25 01:45:41'),
(9, 'Construction', 'Some details are displayed here', 1, '2020-08-05 07:53:17', '2020-12-25 01:45:41'),
(10, 'Food and Beverage', 'Some details are displayed here', 1, '2020-08-05 07:53:17', '2020-12-25 01:45:41'),
(11, 'Resort', 'The process of receiving or giving systematic instruction, especially at a school or university.', 1, '2021-02-18 17:40:27', '2021-02-18 17:40:27'),
(12, 'Stone', 'Hard solid non-metallic mineral matter of which rock is made, especially as a building material.', 1, '2021-02-18 17:42:11', '2021-02-18 17:42:11'),
(13, 'Marble', 'A hard crystalline metamorphic form of limestone, typically white with coloured mottlings or streaks, which may be polished and is used in sculpture and architecture.', 1, '2021-02-18 17:46:35', '2021-02-18 17:46:35'),
(14, 'Tiles', 'These are thin objects, usually square or rectangular in shape. A tile is a manufactured piece of hard-wearing material such as ceramic, stone, metal, baked clay, or even glass, generally used for covering roofs, floors, walls, or other objects such as tabletops. ', 1, '2021-02-18 17:59:00', '2021-02-18 17:59:00'),
(15, 'Foods', 'The science or practice of farming, including cultivation of the soil for the growing of crops and the rearing of animals to provide food, wool, and other products.', 1, '2021-02-18 18:00:15', '2021-02-18 18:00:15'),
(16, 'Medicine', 'Anything About Medicines', 1, '2021-09-13 18:05:50', '2021-09-13 18:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` varchar(3500) NOT NULL,
  `location_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL DEFAULT '1',
  `budget_amount` decimal(19,0) NOT NULL,
  `validity_start` datetime NOT NULL,
  `validity_end` datetime NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`),
  KEY `location_key` (`location_id`),
  KEY `currency_key` (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `title`, `details`, `location_id`, `currency_id`, `budget_amount`, `validity_start`, `validity_end`, `status`, `created`, `modified`) VALUES
(1, 12, 'Steel Supply', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 1, '2880211018', '2020-09-20 09:44:13', '2021-11-02 15:30:00', '1', '2020-05-07 03:29:10', '2020-07-02 16:57:37'),
(2, 6, 'Concrete Supply', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, 1, '4133972388', '2020-09-01 18:06:34', '2021-10-08 12:06:32', '1', '2020-04-23 16:25:29', '2020-06-21 10:02:35'),
(3, 12, 'I-Beam Supply and Installatoin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3, 1, '2275565314', '2020-08-01 07:19:42', '2021-10-20 04:53:35', '1', '2020-05-18 23:40:20', '2020-06-30 10:17:41'),
(4, 10, 'Kitchen Cupboards', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 1, '2095486986', '2020-08-21 17:10:57', '2021-10-23 05:24:23', '1', '2020-02-05 03:29:45', '2020-07-19 08:24:26'),
(5, 4, 'Urgent MEP Subcontractor Required', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 5, 1, '306769911', '2020-08-25 02:38:47', '2021-11-21 17:42:28', '1', '2020-03-02 11:55:58', '2020-06-25 03:40:43'),
(6, 5, 'Construction of 1000 Villas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 5, 1, '3564968856', '2020-09-28 00:41:32', '2021-10-05 19:42:31', '1', '2020-03-26 21:50:45', '2020-07-05 12:59:34'),
(7, 7, 'Tower Construction in Marawi City', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 7, 1, '1823586164', '2020-08-29 18:34:26', '2021-10-20 12:47:43', '1', '2020-06-02 11:52:27', '2020-07-03 14:51:06'),
(8, 6, 'Renovation of MSU-IIT Grand Stand', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 7, 1, '108259385', '2020-08-26 19:02:44', '2021-10-24 20:13:10', '1', '2020-06-10 01:04:33', '2020-06-19 07:41:23'),
(9, 13, 'Supply of 5,000 Cubic Meter of Fine Gravel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 9, 1, '2380959885', '2020-08-15 19:56:13', '2021-12-28 06:45:42', '1', '2020-02-27 11:42:00', '2020-07-04 11:12:30'),
(10, 13, 'Wet Trades Work for the Largest Museum in the Philippines', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 9, 1, '684502600', '2020-08-02 20:35:12', '2021-10-27 00:48:10', '1', '2020-04-11 01:19:33', '2020-06-17 18:07:38'),
(11, 1, 'Constrution Equipments (10 nos)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 1, '1274914549', '2020-08-27 23:33:59', '2021-12-01 04:34:39', '1', '2020-03-16 03:25:27', '2020-07-15 01:27:20'),
(12, 2, 'Renovation of Fisher Mall', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 1, '2243881315', '2020-08-12 21:44:37', '2021-12-07 19:40:18', '1', '2020-01-31 16:18:10', '2020-07-21 23:21:48'),
(13, 11, 'Renovation of DPWH', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3, 1, '4995297974', '2020-08-19 15:31:42', '2021-11-04 08:11:00', '1', '2020-02-24 09:09:52', '2020-07-18 16:56:02'),
(14, 5, 'Construction of 5,000 Villas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, 1, '283913621', '2020-09-04 00:26:47', '2021-12-26 21:17:26', '1', '2020-01-22 06:19:22', '2020-07-12 10:58:22'),
(15, 10, 'SM Mall Construction', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 9, 1, '1014127210', '2020-09-21 06:01:44', '2021-10-22 17:01:01', '1', '2020-01-27 12:58:44', '2020-07-17 23:14:35'),
(16, 4, 'Point Blue Tower Construction', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 11, 1, '1316446843', '2020-08-12 08:25:59', '2021-11-30 15:41:47', '1', '2020-02-11 19:41:32', '2020-07-08 13:41:26'),
(17, 2, 'Point Blue Residence Construction', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 1, '2093423775', '2020-08-27 07:44:36', '2021-11-30 14:23:28', '1', '2020-05-16 14:35:02', '2020-07-08 03:15:05'),
(18, 8, 'Land Bank Quick Construction', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, 1, '1772642023', '2020-08-02 15:55:53', '2021-10-05 16:33:07', '1', '2020-05-09 18:33:35', '2020-06-30 09:54:40'),
(19, 14, 'Demolition and Renovation of Gaisano Mall', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, 1, '808009061', '2020-08-11 11:51:24', '2021-10-26 00:47:41', '1', '2020-01-29 09:28:20', '2020-07-09 10:16:05'),
(20, 8, 'New Link Bridge Construction', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3, 1, '2744241088', '2020-09-14 00:54:14', '2021-10-11 00:50:19', '1', '2020-04-05 13:07:42', '2020-07-10 23:10:58'),
(21, 4, 'Existing Link Bridge Renovation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3, 1, '2027607140', '2020-09-19 03:57:15', '2021-12-02 04:03:04', '1', '2020-04-27 14:37:33', '2020-06-25 15:06:24'),
(22, 3, 'Renovation of Circle Rotunda', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, 1, '160025924', '2020-09-07 04:36:55', '2021-10-27 08:44:44', '1', '2020-01-16 10:09:30', '2020-07-22 13:08:23'),
(23, 1, 'Train Station - Supply of Concrete Only', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3, 1, '4324361218', '2020-08-25 20:35:30', '2021-11-07 14:05:22', '1', '2020-04-08 22:50:21', '2020-07-20 03:53:11'),
(24, 9, 'Development of Multipurpose Recreation Park', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 1, '165138663', '2020-09-21 13:52:03', '2021-10-13 08:30:52', '1', '2020-05-12 00:49:41', '2020-07-24 06:43:29'),
(25, 3, 'Supply of Jersey Barrier for Traffic Detour', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 1, '2247057721', '2020-09-23 07:27:17', '2021-10-05 08:41:46', '1', '2020-05-06 11:21:26', '2020-07-29 11:44:13'),
(26, 13, 'Renovation of Existing Roads', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 5, 1, '567290826', '2020-08-19 07:00:03', '2021-10-28 08:22:33', '1', '2020-02-19 06:47:31', '2020-07-21 14:08:08'),
(27, 8, 'Ayala Train Station Renovation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 5, 1, '3129320785', '2020-08-18 01:18:51', '2021-10-30 01:04:38', '1', '2020-03-29 17:58:50', '2020-07-09 09:20:09'),
(28, 3, 'Supply and Installation of Wall Tiles', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 7, 1, '4670020251', '2020-08-16 11:11:32', '2021-12-31 10:45:18', '1', '2020-01-05 08:06:37', '2020-07-20 21:39:08'),
(29, 2, 'Supply of Floor Tiles', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 6, 1, '3054613894', '2020-09-08 13:01:05', '2021-11-09 18:45:42', '1', '2020-05-10 03:06:19', '2020-06-16 07:54:46'),
(30, 7, 'Supply of PVC Pipes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 6, 1, '4360055877', '2020-09-02 14:46:10', '2021-10-14 20:10:24', '1', '2020-03-28 22:29:31', '2020-07-19 00:58:11'),
(31, 8, 'Supply and Installation of Fire Hydrants', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 6, 1, '1259234302', '2020-08-11 16:24:39', '2021-11-14 02:50:02', '1', '2020-01-15 11:13:12', '2020-06-30 21:45:41'),
(32, 1, 'Supply of Plywoods', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 6, 1, '1111215834', '2020-09-23 12:34:51', '2021-10-05 12:59:07', '1', '2020-05-04 02:04:39', '2020-07-24 23:01:04'),
(33, 13, 'Installation of Dry Wall', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 7, 1, '4235955320', '2020-08-12 23:10:48', '2021-11-25 06:22:06', '1', '2020-02-20 17:05:58', '2020-07-23 19:09:12'),
(34, 2, 'Labour Supply for Roadworks', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 7, 1, '566524909', '2020-09-07 05:48:25', '2021-12-20 17:52:42', '1', '2020-04-11 17:06:37', '2020-07-26 06:58:04'),
(35, 5, 'Supply of Excavator (7 nos)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 1, '4286542591', '2020-08-31 03:47:13', '2021-12-30 01:40:05', '1', '2020-06-06 08:55:34', '2020-07-28 08:35:21'),
(36, 5, 'Installation of Waterproofing Membrane', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 1, '3288252678', '2020-09-01 16:33:17', '2021-10-07 21:59:03', '1', '2020-03-27 05:13:10', '2020-06-22 15:46:01'),
(37, 3, 'Canal Restoration', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 1, '370654086', '2020-09-14 22:15:53', '2021-10-08 08:52:33', '1', '2020-02-21 13:18:29', '2020-06-29 01:28:37'),
(38, 5, 'Mayors Office Renovation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3, 1, '4629256142', '2020-08-17 02:17:44', '2021-12-28 16:03:58', '1', '2020-03-18 18:44:20', '2020-07-14 14:58:36'),
(39, 8, 'Supply of Tin Cans (DOLE)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, 1, '271071746', '2020-08-27 11:16:36', '2021-11-03 07:25:01', '1', '2020-03-28 14:29:31', '2020-07-02 20:23:46'),
(40, 5, 'Supply of Student Desks and Chairs', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 1, '849079930', '2020-09-11 19:39:03', '2021-11-12 16:43:20', '1', '2020-04-11 23:16:56', '2020-07-24 07:04:46'),
(41, 12, 'Supply of Medical Equipments', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 1, '431325640', '2020-09-24 06:55:02', '2021-11-05 10:04:50', '1', '2020-05-15 19:43:24', '2020-07-27 09:17:46'),
(42, 9, 'Required Wheelchairs (500 pcs)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3, 1, '4057560745', '2020-08-27 04:20:00', '2021-10-25 05:26:47', '1', '2020-04-09 00:49:43', '2020-07-08 10:06:53'),
(43, 5, 'Polyehylene Sheets for Blinding Concrete', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, 1, '3875204003', '2020-08-04 05:16:44', '2021-11-21 00:57:32', '1', '2020-04-08 21:31:47', '2020-07-27 09:53:52'),
(44, 12, 'Demolition of the Office of the University Registrar (OUR) at UP Diliman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 5, 1, '4862869930', '2020-08-29 17:04:09', '2021-12-31 15:51:31', '1', '2020-04-12 14:04:54', '2020-06-17 16:35:52'),
(45, 10, 'Urgent Requirement for Rebars (5 tons)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 5, 1, '696825637', '2020-09-22 13:29:16', '2021-11-22 13:55:50', '1', '2020-02-10 07:46:52', '2020-06-17 11:39:09'),
(46, 2, 'Office Supples', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 5, 1, '4921931067', '2020-08-29 16:31:22', '2021-11-13 08:05:11', '1', '2020-02-17 20:44:30', '2020-07-18 11:15:09'),
(47, 6, 'Bond Paper supply for prestigious university', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 8, 1, '1287669766', '2020-09-15 14:34:52', '2021-12-05 00:12:39', '1', '2020-04-25 05:20:40', '2020-07-10 15:10:51'),
(48, 2, 'Palma Hall Demolition in UP Diliman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 9, 1, '1327121745', '2020-09-24 06:24:16', '2021-12-05 20:20:13', '1', '2020-04-20 17:51:00', '2020-07-03 00:12:19'),
(49, 3, 'RFP of New Train Cars with capacity of 400 pax', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 1, '3358082701', '2020-08-12 04:48:31', '2021-10-16 11:39:54', '1', '2020-05-25 07:55:17', '2020-07-05 01:30:45'),
(50, 10, 'Liquid Waterproofing Supply', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 1, '2127920543', '2020-08-05 07:53:17', '2021-12-25 01:45:41', '1', '2020-04-05 09:08:27', '2020-07-05 06:04:58'),
(51, 12, 'Today is Wednesday - 12-58', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Apparet statim, quae sint officia, quae actiones. Theophrastus mediocriterne delectat, cum tractat locos ab Aristotele ante tractatos? Varietates autem iniurasque fortunae facile veteres philosoph', 3, 1, '3011400000', '2020-12-10 04:59:19', '2021-12-18 04:59:21', '1', '2020-12-09 04:59:29', '2020-12-09 04:59:29'),
(52, 3, 'Today is Wednesday - 01-54P', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quarum ambarum rerum cum medicinam pollicetur, luxuriae licentiam pollicetur. At iste non dolendi status non vocatur voluptas. Deinde prima illa, quae in congressu solemus: Quid tu, inquit, huc? M', 1, 1, '2771500000', '2021-01-13 18:55:13', '2021-07-13 17:55:15', '1', '2021-01-13 18:55:26', '2021-02-04 20:21:42'),
(53, 3, 'Today is May 26', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tamen enitar et, si minus multa mihi occurrent, non fugiam ista popularia. Non semper, inquam; Perturbationes autem nulla naturae vi commoventur, omniaque ea sunt opiniones ac iudicia levitati', 15, 1, '9989400000', '2021-05-26 17:07:17', '2021-09-26 17:07:20', '1', '2021-05-26 17:07:27', '2021-05-26 17:07:27'),
(54, 3, 'Today is Sunday - 06-55', '<p>Some Jobs</p>', 14, 6, '8479100000', '2021-06-13 18:00:00', '2021-06-15 02:00:00', '1', '2021-06-13 18:17:04', '2021-06-13 18:17:04'),
(55, 3, 'Today is Sunday - 06-40', '<p>Some jobs you will love.</p>', 1, 1, '2573700000', '2021-06-13 18:00:00', '2021-06-15 02:00:00', '1', '2021-06-13 18:30:04', '2021-06-13 18:30:04'),
(56, 3, 'Today is Monday - 06-02', '<p>AAA</p>', 3, 1, '12', '2021-06-14 17:00:00', '2021-06-16 01:00:00', '1', '2021-06-14 17:08:14', '2021-06-14 17:08:14'),
(57, 3, 'Today is Monday - 06-49', '<p>BBB</p>', 14, 1, '123', '2021-06-14 17:00:00', '2021-06-16 01:00:00', '1', '2021-06-14 17:24:20', '2021-06-14 17:24:20'),
(58, 3, 'Today is Monday - 06-25', '<p>AAAA</p>', 13, 1, '0', '2021-06-14 17:00:00', '2021-06-16 01:00:00', '1', '2021-06-14 17:24:38', '2021-06-14 17:24:38'),
(59, 3, 'Today is Friday - 06-32', '<p>Domino\'s Everyday</p>', 14, 1, '0', '2021-06-20 11:00:00', '2021-06-24 11:00:00', '1', '2021-06-18 17:58:29', '2021-06-18 17:58:29'),
(60, 3, 'Today is Friday - 09-32', '<p>Some Details</p>', 1, 1, '0', '2021-09-10 21:21:38', '2021-09-12 05:00:00', '1', '2021-09-10 21:21:38', '2021-09-10 21:21:38'),
(61, 3, 'Today is Monday - 09-12', '<p>Gofindbid is a world class <strong>bidding </strong>social network.</p>', 1, 1, '100000', '2021-09-20 02:41:08', '2021-09-21 10:00:00', '1', '2021-09-20 02:41:08', '2021-09-20 02:41:08'),
(62, 3, 'Request for Quotation', '<p>We are creating a world class <strong>bidding network</strong> to give everyone an unrestricted access to all businesses.</p>', 1, 1, '0', '2021-09-20 02:49:09', '2021-12-31 10:00:00', '1', '2021-09-20 02:49:09', '2021-09-20 02:49:09'),
(63, 3, 'Today is Monday - 09-34', '<p>We are creating a world class&nbsp;<strong>bidding network</strong>&nbsp;to give everyone an unrestricted access to all businesses.</p>', 1, 1, '0', '2021-09-20 03:04:31', '2021-09-21 10:00:00', '1', '2021-09-20 03:04:31', '2021-09-20 03:04:31'),
(64, 3, 'Today is Monday - 09-58', '<p>test</p>', 17, 1, '0', '2021-09-20 03:08:10', '2021-09-21 11:00:00', '1', '2021-09-20 03:08:10', '2021-09-20 03:08:10'),
(65, 3, 'Today is Monday - 09-38', '<p>We are creating a world class&nbsp;<strong>bidding network</strong>&nbsp;to give everyone an unrestricted access to all businesses.</p>', 1, 1, '0', '2021-09-25 03:00:00', '2021-12-31 11:00:00', '1', '2021-09-20 03:20:52', '2021-09-20 03:20:52'),
(66, 1, 'Today is Tuesday - 11-29', '<p>Somebody</p>', 14, 1, '10000', '2021-11-09 18:09:44', '2021-11-11 02:00:00', '1', '2021-11-09 18:09:44', '2021-11-09 18:09:44'),
(67, 1, 'Today is Tuesday - 11-58', '<p>Tomorrow never die.</p>', 1, 1, '1000000', '2021-11-09 18:12:39', '2022-01-08 02:00:00', '1', '2021-11-09 18:12:39', '2021-11-09 18:12:39'),
(68, 3, 'Today is Saturday - 11-46', '<p>Latest News</p>', 14, 6, '0', '2021-11-20 18:23:10', '2022-01-01 02:00:00', '1', '2021-11-20 18:23:11', '2021-11-20 18:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_tags`
--

DROP TABLE IF EXISTS `jobs_tags`;
CREATE TABLE IF NOT EXISTS `jobs_tags` (
  `job_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`job_id`,`tag_id`),
  KEY `tag_key` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs_tags`
--

INSERT INTO `jobs_tags` (`job_id`, `tag_id`) VALUES
(60, 1),
(64, 1),
(55, 2),
(52, 3),
(52, 4),
(58, 4),
(52, 5),
(53, 5),
(57, 5),
(59, 5),
(67, 5),
(55, 6),
(56, 6),
(59, 6),
(57, 7),
(68, 7),
(62, 9),
(63, 9),
(65, 9),
(55, 11),
(57, 11),
(54, 12),
(55, 12),
(68, 12),
(55, 14),
(63, 14),
(66, 15),
(68, 15),
(61, 16),
(62, 16),
(63, 16);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(64) NOT NULL,
  `region` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `longitude` varchar(128) NOT NULL DEFAULT '0',
  `latitude` varchar(128) NOT NULL DEFAULT '0',
  `link` varchar(256) NOT NULL DEFAULT '0',
  `status` varchar(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `user_id`, `country`, `region`, `city`, `longitude`, `latitude`, `link`, `status`, `created`, `modified`) VALUES
(1, 1, 'Philippines', 'BARMM', 'Marawi City', '0', '0', '0', '1', '2020-11-27 08:48:30', '2021-10-21 18:30:28'),
(2, 1, 'Philippines', 'BARMM', 'Cotabato City', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(3, 1, 'Philippines', 'NCR', 'Manila', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(4, 1, 'Philippines', 'NCR', 'Quezon City', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(5, 1, 'Philippines', 'NCR', 'Caloocan', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(6, 1, 'Philippines', 'NCR', 'Las Pinas', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(7, 1, 'Philippines', 'NCR', 'Makati City', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(8, 1, 'Philippines', 'NCR', 'Malabon', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(9, 1, 'Philippines', 'NCR', 'Mandaluyong', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(10, 1, 'Philippines', 'NCR', 'Marikina', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(11, 1, 'Philippines', 'NCR', 'Muntinlupa', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(12, 1, 'Philippines', 'NCR', 'Navotas', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(13, 1, 'Philippines', 'NCR', 'Paranaque', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(14, 1, 'Philippines', 'NCR', 'Pasay', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(15, 1, 'Philippines', 'NCR', 'Pasig', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(16, 1, 'Philippines', 'NCR', 'San Juan', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(17, 1, 'Philippines', 'NCR', 'Taguig', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(18, 1, 'Philippines', 'NCR', 'Valenzuela', '0', '0', '0', '1', '2020-11-27 08:48:30', '2020-11-27 08:48:30'),
(19, 3, 'Country 1', 'Region 2', 'City 1', '0', '0', '0', '1', '2021-09-12 16:48:25', '2021-09-12 17:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `controller` varchar(64) NOT NULL,
  `action` varchar(64) NOT NULL,
  `unread` varchar(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recipient_key` (`recipient_id`),
  KEY `sender_key` (`sender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `recipient_id`, `sender_id`, `controller`, `action`, `unread`, `created`, `modified`) VALUES
(1, 2, 1, 'proposals', 'approve', '1', '2020-11-27 08:51:51', '2020-11-27 08:51:51'),
(2, 2, 3, 'proposals', 'approve', '1', '2020-11-27 08:51:51', '2020-11-27 08:51:51'),
(3, 2, 12, 'proposals', 'reject', '1', '2020-11-27 08:51:51', '2020-11-27 08:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
CREATE TABLE IF NOT EXISTS `plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `detail` varchar(512) NOT NULL,
  `currency_id` int(11) NOT NULL DEFAULT '1',
  `price` float NOT NULL,
  `duration` int(8) NOT NULL DEFAULT '30',
  `category` varchar(3) CHARACTER SET utf8 NOT NULL,
  `is_seasonal` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`),
  KEY `currency_key` (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `user_id`, `title`, `detail`, `currency_id`, `price`, `duration`, `category`, `is_seasonal`, `is_active`, `created`, `modified`) VALUES
(1, 1, 'G1', 'For small businesses', 1, 51, 365, 'G1', 1, 0, '2021-08-29 21:00:39', '2021-10-18 20:13:48'),
(2, 1, 'G2', 'For medium businesses', 1, 14, 30, 'G2', 1, 1, '2021-08-29 21:00:39', '2021-10-18 20:13:16'),
(3, 1, 'G3', 'For large businesses', 1, 10, 30, 'G3', 1, 1, '2021-08-29 21:00:39', '2021-10-21 21:19:07'),
(4, 3, 'G1', 'Bagong G1', 1, 18, 30, 'G1', 1, 1, '2021-10-18 00:00:00', '2021-10-21 20:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `plans_products`
--

DROP TABLE IF EXISTS `plans_products`;
CREATE TABLE IF NOT EXISTS `plans_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`plan_id`,`product_id`),
  KEY `plans_products_ibfk_1` (`plan_id`),
  KEY `plans_products_ibfk_2` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans_products`
--

INSERT INTO `plans_products` (`id`, `plan_id`, `product_id`) VALUES
(10, 1, 1),
(11, 1, 2),
(12, 1, 4),
(14, 2, 5),
(15, 2, 6),
(16, 2, 7),
(17, 3, 8),
(18, 3, 9),
(19, 3, 10),
(1, 4, 1),
(9, 4, 4),
(13, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category` varchar(16) CHARACTER SET utf8 NOT NULL,
  `title` varchar(128) NOT NULL,
  `detail` varchar(512) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(11) CHARACTER SET utf8 NOT NULL,
  `rate` float NOT NULL,
  `currency_id` int(11) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `category`, `title`, `detail`, `quantity`, `unit`, `rate`, `currency_id`, `is_active`, `created`, `modified`) VALUES
(1, 1, 'project', 'Project', 'Request a quote from a supplier for specific products or services. This can be set to RFP or RFQ.', 1, 'post', 35, 1, 1, '2021-08-29 20:37:06', '2021-10-18 20:04:50'),
(2, 3, 'project', 'Project', 'Request a proposal from a supplier for specific products and services.', 7, 'post', 30, 3, 1, '2021-08-30 19:02:19', '2021-10-18 20:05:02'),
(4, 3, 'project', 'Project', 'Request a Tender from a supplier for specific products and services.	', 15, 'post', 29, 1, 1, '2021-08-31 16:10:00', '2021-10-18 20:05:10'),
(5, 3, 'project', 'Project', 'Request for Information from a supplier for specific products and services.	', 30, 'post', 25, 1, 1, '2021-08-31 16:10:58', '2021-10-18 20:05:40'),
(6, 3, 'project', 'Project', 'Detail of Qoutation', 60, 'post', 20, 1, 1, '2021-10-18 13:04:00', '2021-10-18 20:05:51'),
(7, 3, 'project', 'Project', 'Request a proposal from a supplier for specific products and services.', 90, 'post', 19, 1, 1, '2021-10-18 20:06:39', '2021-10-18 20:06:39'),
(8, 3, 'project', 'Project', 'RFQ detail', 150, 'post', 15, 1, 1, '2021-10-21 21:18:21', '2021-10-21 21:18:21'),
(9, 3, 'project', 'Project', 'Request a proposal from a supplier for specific products and services.', 200, 'post', 12, 1, 1, '2021-10-21 21:18:43', '2021-10-21 21:18:43'),
(10, 3, 'project', 'Project', 'Request a proposal from a supplier for specific products and services.', 300, 'post', 11, 1, 1, '2021-10-21 21:18:58', '2021-10-21 21:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

DROP TABLE IF EXISTS `proposals`;
CREATE TABLE IF NOT EXISTS `proposals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` varchar(3500) NOT NULL,
  `currency_id` int(2) NOT NULL DEFAULT '1',
  `budget_amount` decimal(19,0) NOT NULL,
  `approve_status` varchar(1) NOT NULL DEFAULT '3',
  `lock_status` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`),
  KEY `job_key` (`job_id`),
  KEY `currency_key` (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`id`, `user_id`, `job_id`, `title`, `details`, `currency_id`, `budget_amount`, `approve_status`, `lock_status`, `status`, `created`, `modified`) VALUES
(1, 11, 52, 'Proposal for #51 by 11', 'Now that it\'s all said and done I can\'t believe you were the one To build me up and tear me down Like an old abandoned house And what you said when you left Just left me cold and out of breath I fell too far, was in way too deep Guess I let you get the best of me', 1, '124500000', '2', 0, '1', '2020-11-17 08:51:42', '2021-04-24 14:41:39'),
(2, 10, 52, 'Proposal for #52by 10', 'Now that it\'s all said and done I can\'t believe you were the one To build me up and tear me down Like an old abandoned house And what you said when you left Just left me cold and out of breath I fell too far, was in way too deep Guess I let you get the best of me', 1, '32000000', '4', 1, '1', '2020-11-18 08:51:42', '2021-04-24 14:41:34'),
(3, 9, 32, 'Proposal for #32 by 9', 'Now that it\'s all said and done I can\'t believe you were the one To build me up and tear me down Like an old abandoned house And what you said when you left Just left me cold and out of breath I fell too far, was in way too deep Guess I let you get the best of me', 1, '230000000', '2', 1, '1', '2020-11-19 08:51:42', '2021-02-08 09:07:31'),
(4, 11, 24, 'Proposal for #23 by 11', 'Now that it\'s all said and done I can\'t believe you were the one To build me up and tear me down Like an old abandoned house And what you said when you left Just left me cold and out of breath I fell too far, was in way too deep Guess I let you get the best of me', 1, '175000000', '3', 0, '1', '2020-11-20 17:21:37', '2020-11-27 08:51:42'),
(5, 11, 32, 'Proposal for #11 by 11', 'Now that it\'s all said and done I can\'t believe you were the one To build me up and tear me down Like an old abandoned house And what you said when you left Just left me cold and out of breath I fell too far, was in way too deep Guess I let you get the best of me', 1, '890000000', '1', 0, '1', '2020-11-21 08:51:42', '2021-02-08 08:40:11'),
(6, 1, 15, 'Strawberry Juice #24', 'https://www.kalibrr.com/job-board/1', 1, '53187000000', '3', 0, '1', '2021-01-29 11:52:27', '2021-01-29 11:52:27'),
(7, 1, 49, 'Strawberry Juice #49', 'This proposal re strawberry cake is awesome.', 3, '26890000000', '1', 0, '1', '2021-02-07 19:36:29', '2021-04-24 18:17:14'),
(8, 1, 24, 'Strawberry Juice #24', 'This proposal re strawberry cake is awesome.', 2, '87955000000', '3', 0, '1', '2021-02-07 19:46:01', '2021-02-07 19:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `counter` int(11) NOT NULL,
  `unit` varchar(32) CHARACTER SET utf8 NOT NULL,
  `date_start` datetime NOT NULL,
  `date_finish` datetime NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`),
  KEY `product_key` (`product_id`),
  KEY `plan_key` (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `plan_id`, `product_id`, `quantity`, `counter`, `unit`, `date_start`, `date_finish`, `is_active`, `created`, `modified`) VALUES
(1, 4, 2, 7, 90, 76, 'post', '2021-11-13 17:41:34', '2022-01-12 17:41:34', 1, '2021-11-13 17:41:34', '2021-11-13 17:41:34'),
(2, 4, 4, 1, 1, 1, 'post', '2021-11-13 17:45:18', '2022-01-12 17:45:18', 1, '2021-11-13 17:45:18', '2021-11-13 17:45:18'),
(3, 4, 4, 4, 15, 0, 'post', '2021-11-14 16:34:21', '2022-05-13 16:34:21', 1, '2021-11-14 16:34:21', '2021-11-14 16:34:21'),
(4, 4, 2, 7, 90, 90, 'post', '2021-11-15 17:17:26', '2022-05-14 17:17:26', 1, '2021-11-15 17:17:26', '2021-11-15 17:17:26'),
(5, 4, 3, 10, 300, 300, 'post', '2021-11-15 17:19:38', '2022-05-14 17:19:38', 1, '2021-11-15 17:19:38', '2021-11-15 17:19:38'),
(6, 4, 3, 10, 300, 300, 'post', '2021-11-18 21:52:00', '2022-05-17 21:52:00', 1, '2021-11-18 21:52:00', '2021-11-18 21:52:00'),
(7, 3, 4, 4, 15, 15, 'post', '2021-11-20 18:20:05', '2022-05-19 18:20:05', 1, '2021-11-20 18:20:05', '2021-11-20 18:20:05'),
(8, 3, 4, 4, 15, 15, 'post', '2021-11-20 18:20:59', '2022-05-19 18:20:59', 1, '2021-11-20 18:20:59', '2021-11-20 18:20:59'),
(9, 3, 4, 1, 1, 1, 'post', '2021-11-20 18:44:23', '2022-05-19 18:44:23', 1, '2021-11-20 18:44:23', '2021-11-20 18:44:23'),
(10, 3, 4, 2, 7, 7, 'post', '2021-11-20 18:44:36', '2022-05-19 18:44:36', 1, '2021-11-20 18:44:36', '2021-11-20 18:44:36'),
(11, 3, 3, 10, 300, 300, 'post', '2021-11-20 18:44:46', '2022-05-19 18:44:46', 1, '2021-11-20 18:44:46', '2021-11-20 18:44:46'),
(12, 3, 3, 9, 200, 200, 'post', '2021-11-20 18:44:50', '2022-05-19 18:44:50', 1, '2021-11-20 18:44:50', '2021-11-20 18:44:50'),
(13, 3, 3, 10, 300, 300, 'post', '2021-11-20 18:44:53', '2022-05-19 18:44:53', 1, '2021-11-20 18:44:53', '2021-11-20 18:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` varchar(3500) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_fk0` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `user_id`, `title`, `details`, `status`, `created`, `modified`) VALUES
(1, 1, 'steels', 'A hard, strong grey or bluish-grey alloy of iron with carbon and usually other elements, used as a structural and fabricating material.', '1', '2020-08-05 07:53:17', '2021-09-14 03:21:16'),
(2, 1, 'cement', 'Some details about cement', '1', '2020-08-12 04:48:31', '2020-10-16 11:39:54'),
(3, 1, 'wood', 'Some details about wood', '1', '2020-09-24 06:24:16', '2020-12-05 20:20:13'),
(4, 1, 'glass', 'Some details about glass', '1', '2020-09-15 14:34:52', '2020-12-05 00:12:39'),
(5, 1, 'aluminum', 'Some details about aluminum', '1', '2020-08-29 16:31:22', '2020-11-13 08:05:11'),
(6, 1, 'plastic', 'Some details about plastic', '1', '2020-09-22 13:29:16', '2020-11-22 13:55:50'),
(7, 1, 'wall tiles', 'Some details about wall tiles', '1', '2020-08-29 17:04:09', '2020-12-31 15:51:31'),
(8, 1, 'Pen', 'An instrument for writing or drawing with ink, typically consisting of a metal nib or ball, or a nylon tip, fitted into a metal or plastic holder.', '1', '2021-02-17 07:00:19', '2021-02-17 07:00:19'),
(9, 1, 'Mobile Phone', 'A telephone with access to a cellular radio system so it can be used over a wide area, without a physical connection to a network.', '1', '2021-02-17 07:01:47', '2021-02-17 07:01:47'),
(10, 1, 'Strawvberry', 'The low-growing plant which produces the strawberry, having white flowers, lobed leaves, and runners, and found throughout north temperate regions.', '1', '2021-02-17 07:10:58', '2021-02-17 07:10:58'),
(11, 1, 'Education', 'The process of receiving or giving systematic instruction, especially at a school or university.', '1', '2021-02-18 16:15:38', '2021-02-18 16:15:38'),
(12, 1, 'Cars', 'A four-wheeled road vehicle that is powered by an engine and is able to carry a small number of people.', '1', '2021-02-18 16:17:32', '2021-02-18 16:17:32'),
(13, 1, 'Gun', 'A weapon incorporating a metal tube from which bullets, shells, or other missiles are propelled by explosive force, typically making a characteristic loud, sharp noise.', '1', '2021-02-18 16:18:21', '2021-02-18 16:18:21'),
(14, 1, 'Cream', 'The thick white or pale yellow fatty liquid which rises to the top when milk is left to stand and which can be eaten as an accompaniment to desserts or used as a cooking ingredient.', '1', '2021-02-18 18:03:34', '2021-02-18 18:03:34'),
(15, 3, 'Fan', 'All about electric fans.', '1', '2021-09-14 03:09:50', '2021-09-14 03:09:50'),
(16, 3, 'Microchip', 'Everything about microchip', '1', '2021-09-14 03:14:14', '2021-09-14 03:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `username_modified` datetime NOT NULL,
  `role` varchar(2) NOT NULL DEFAULT '1',
  `email` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `slogan` varchar(128) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT 'image.png',
  `industry_id` int(3) NOT NULL DEFAULT '1',
  `office` varchar(128) NOT NULL DEFAULT '',
  `website` varchar(128) NOT NULL DEFAULT '',
  `about` varchar(3000) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `industry_key` (`industry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `username_modified`, `role`, `email`, `password`, `name`, `slogan`, `image`, `industry_id`, `office`, `website`, `about`, `status`, `created`, `modified`) VALUES
(1, 'ominsalams', '2021-09-18 17:41:16', '99', 'ominsalam@gmail.com', '$2y$10$bqjBizMnshfG.Dt5Em.qoOFV5B0gg163R1Hu6X2zZALJASkFfagJ6', 'Ominsalam Corp.', 'If I have a thousand ideas and only one turns out to be good, I am satisfied.', 'ominsalam.jpg', 6, '398 Tara Residences, Tandang Sora, Quezon City, Philippines', 'www.ominsalam.com', 'love you mommy kulay', 1, '2020-01-12 08:25:34', '2021-09-18 17:41:16'),
(2, 'ranya', '2021-08-27 15:00:03', '1', 'ranya@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'ranya.jpg', 1, '', '', '', 1, '2020-01-11 05:25:34', '2020-06-10 04:25:34'),
(3, 'jihad_ae', '2021-08-27 15:52:00', '99', 'jihad@gmail.com', '$2y$10$hZYFCHO22yBYokgTG.Ac2.PHY4iaZhLRQ2Py4gsEYcsJLdFLeMsyO', 'Jihad Inc.', 'If I have a thousand ideas and only one turns out to be good, I am satisfied.', 'jihad.jpg', 2, '3501, Marina Plaza, Dubai Marina, UAE', 'www.gofindbid.com', 'We have finally changed the settings themes. Contact us through our whatsapp number 0971234567890', 1, '2020-01-07 08:25:34', '2021-09-10 22:01:13'),
(4, 'macapagal', '2021-08-27 15:00:03', '1', 'macapagal@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'macapagal.jpg', 1, 'Office 3501, Marina Plaza, Al Marina Street, Dubai Marina, Dubai', '', '', 1, '2020-02-12 01:25:34', '2020-04-03 11:25:34'),
(5, 'reham', '2021-08-27 15:00:03', '1', 'reham@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'reham.jpg', 1, '', '', '', 1, '2020-03-11 03:25:34', '2020-06-12 05:25:34'),
(6, 'ayesha', '2021-08-27 15:00:03', '1', 'ayesha@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'ayesha.jpg', 1, '', '', '', 1, '2020-04-09 02:25:34', '2020-07-09 07:25:34'),
(7, 'tintin', '2021-08-27 15:00:03', '1', 'tintin@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'tintin.jpg', 1, '', '', '', 1, '2020-01-12 11:25:34', '2020-05-08 10:25:34'),
(8, 'nadine', '2021-08-27 15:00:03', '1', 'nadine@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'nadine.jpg', 1, '', '', '', 1, '2020-01-12 11:25:34', '2020-05-08 10:25:34'),
(9, 'james', '2021-08-27 15:00:03', '1', 'james@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'james.jpg', 1, '', '', '', 1, '2020-01-11 11:25:34', '2020-02-08 10:25:34'),
(10, 'angel', '2021-08-27 15:00:03', '1', 'angel@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', 'Angel Construction Services', '', 'angel.jpg', 1, '', '', '', 1, '2020-01-06 11:25:34', '2020-03-08 10:25:34'),
(11, 'goolins', '2021-08-27 15:00:03', '1', 'goolins@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', 'Goolins Inc.', '', 'goolins.jpg', 1, 'Office 3501, Marina Plaza, Al Marina Street, Dubai Marina, Dubai', '', '', 1, '2020-01-08 11:25:34', '2020-09-08 10:25:34'),
(12, 'alec', '2021-08-27 15:00:03', '1', 'alec@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'goolins.jpg', 5, 'Office 3501, Marina Plaza, Al Marina Street, Dubai Marina, Dubai', '', '', 1, '2020-01-08 11:25:34', '2020-09-08 10:25:34'),
(13, 'redsea', '2021-08-27 15:00:03', '1', 'redsea@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'goolins.jpg', 1, '', '', '', 1, '2020-01-08 11:25:34', '2020-09-08 10:25:34'),
(14, 'mirana', '2021-08-27 15:00:03', '1', 'mirana@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'goolins.jpg', 1, '', '', '', 1, '2020-01-08 11:25:34', '2020-09-08 10:25:34'),
(15, 'pointblue', '2021-08-27 15:00:03', '1', 'pointblue@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'goolins.jpg', 1, '', '', '', 1, '2020-01-08 11:25:34', '2020-09-08 10:25:34'),
(16, 'gofindbid', '2021-08-27 15:00:03', '1', 'gofindbid@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'goolins.jpg', 1, '', '', '', 1, '2020-01-08 11:25:34', '2020-09-08 10:25:34'),
(17, 'Jumeira Beach Residences', '2021-08-27 15:00:03', '1', 'jbr@gmail.com', '$2y$10$/61RFmELXqoJcTVBaFRttOnMuMrUjcujC4fDJYBB68ABm0IF.eqBK', '', '', 'image.png', 1, '', '', '', 1, '2020-11-27 16:53:12', '2020-11-27 16:53:12'),
(18, 'ballpen', '2021-08-27 15:00:03', '1', 'ballpen@gmail.com', '$2y$10$Vmt8beEhM8PUsekWFj0YdeejbhQboL5LpOf//UN62uTSDxcYHZ7Z2', '', '', 'image.png', 1, '', '', '', 1, '2021-03-03 11:57:21', '2021-03-03 11:57:21'),
(19, 'bake', '2021-08-27 15:00:03', '1', 'bake@gmail.com', '$2y$10$oWz5hM8NFsWOfveR6iUF2um0fvN.lNzUgWR.zepC88dr9WduokwsC', '', '', 'image.png', 1, '', '', '', 1, '2021-03-12 10:29:20', '2021-03-12 10:29:20'),
(20, 'milo', '2021-08-27 15:00:38', '1', 'milo@gmail.com', '$2y$10$48QEQfMe5esZR.pmUKF1W.shPZazswdQvKheV8OmUQjud3Xc/1T3O', '', '', 'image.png', 1, '', '', '', 1, '2021-08-27 15:00:38', '2021-08-27 15:00:38'),
(21, 'ryanreynolds', '2021-09-15 03:20:30', '1', 'ryanreynolds@gmail.com', '$2y$10$6XUcILXDSflWe0QeON8FzuNPLVUFrKWPe3/OsV/SaquX4bQL/e5SS', '', '', 'image.png', 1, '', '', '', 1, '2021-09-15 03:20:30', '2021-09-15 03:20:30');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `currencies`
--
ALTER TABLE `currencies`
  ADD CONSTRAINT `currencies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `jobs_ibfk_3` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `jobs_tags`
--
ALTER TABLE `jobs_tags`
  ADD CONSTRAINT `jobs_tags_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `jobs_tags_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `plans_ibfk_2` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `plans_products`
--
ALTER TABLE `plans_products`
  ADD CONSTRAINT `plans_products_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  ADD CONSTRAINT `plans_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `proposals`
--
ALTER TABLE `proposals`
  ADD CONSTRAINT `proposals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `proposals_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`),
  ADD CONSTRAINT `proposals_ibfk_3` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `subscriptions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `subscriptions_ibfk_3` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`);

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;