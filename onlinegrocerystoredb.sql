-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2019 at 04:58 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinegrocerystoredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_guestemail`
--

CREATE TABLE `accounts_guestemail` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `update` datetime(6) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_guestemail`
--

INSERT INTO `accounts_guestemail` (`id`, `email`, `active`, `update`, `timestamp`) VALUES
(1, 'abc123@gmail.com', 1, '2019-04-19 16:03:20.217072', '2019-04-19 16:03:20.219072'),
(2, 'trytry132@gmail.com', 1, '2019-04-19 16:17:51.199002', '2019-04-19 16:17:51.199002'),
(3, 'try123@gmail.com', 1, '2019-04-21 06:17:32.170928', '2019-04-21 06:17:32.171929'),
(4, 'try123@gmail.com', 1, '2019-04-21 06:47:17.130486', '2019-04-21 06:47:17.130486'),
(5, 'try123@gmail.com', 1, '2019-04-21 08:34:16.697096', '2019-04-21 08:34:16.699093'),
(6, 'abc@gmail.com', 1, '2019-04-29 07:53:19.889777', '2019-04-29 07:53:19.890774'),
(7, 'abc@gmail.com', 1, '2019-04-29 10:53:55.685565', '2019-04-29 10:53:55.686563');

-- --------------------------------------------------------

--
-- Table structure for table `addresses_address`
--

CREATE TABLE `addresses_address` (
  `id` int(11) NOT NULL,
  `address_type` varchar(120) NOT NULL,
  `address_line_1` varchar(120) NOT NULL,
  `address_line_2` varchar(120) DEFAULT NULL,
  `city` varchar(120) NOT NULL,
  `country` varchar(120) NOT NULL,
  `state` varchar(120) NOT NULL,
  `postal_code` varchar(120) NOT NULL,
  `billing_profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses_address`
--

INSERT INTO `addresses_address` (`id`, `address_type`, `address_line_1`, `address_line_2`, `city`, `country`, `state`, `postal_code`, `billing_profile_id`) VALUES
(1, 'shipping', '123 address', NULL, 'Binan', 'Philippines', 'blaaa', '435435', 2),
(2, 'shipping', '123 address', NULL, 'Binan', 'Philippines', 'blaaa', '435435', 2),
(3, 'billing', '123 address', NULL, 'Binan', 'Philippines', 'blaaa', '435435', 2),
(4, 'shipping', '123 address', NULL, 'Binan', 'Philippines', 'blaaa', '435435', 4),
(5, 'billing', '123 address', NULL, 'Binan', 'Philippines', 'blaaa', '435435', 4),
(6, 'shipping', '123 address', NULL, 'Binan', 'Philippines', 'blaaa', '435435', 2),
(7, 'billing', '123 address', NULL, 'Binan', 'Philippines', 'blaaa', '435435', 2),
(8, 'shipping', '123 address', NULL, 'Binan', 'Philippines', 'blaaa', '435435', 4),
(9, 'billing', '123 address', NULL, 'Binan', 'Philippines', 'blaaa', '435435', 4),
(10, 'shipping', '123 address', NULL, 'Binan', 'Philippines', 'blaaa', '435435', 2),
(11, 'billing', '123 address', NULL, 'Binan', 'Philippines', 'blaaa', '435435', 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add category', 7, 'add_category'),
(20, 'Can change category', 7, 'change_category'),
(21, 'Can delete category', 7, 'delete_category'),
(22, 'Can add product', 8, 'add_product'),
(23, 'Can change product', 8, 'change_product'),
(24, 'Can delete product', 8, 'delete_product'),
(25, 'Can add tag', 9, 'add_tag'),
(26, 'Can change tag', 9, 'change_tag'),
(27, 'Can delete tag', 9, 'delete_tag'),
(28, 'Can add cart', 10, 'add_cart'),
(29, 'Can change cart', 10, 'change_cart'),
(30, 'Can delete cart', 10, 'delete_cart'),
(31, 'Can add order', 11, 'add_order'),
(32, 'Can change order', 11, 'change_order'),
(33, 'Can delete order', 11, 'delete_order'),
(34, 'Can add billing profile', 12, 'add_billingprofile'),
(35, 'Can change billing profile', 12, 'change_billingprofile'),
(36, 'Can delete billing profile', 12, 'delete_billingprofile'),
(37, 'Can add guest email', 13, 'add_guestemail'),
(38, 'Can change guest email', 13, 'change_guestemail'),
(39, 'Can delete guest email', 13, 'delete_guestemail'),
(40, 'Can add address', 14, 'add_address'),
(41, 'Can change address', 14, 'change_address'),
(42, 'Can delete address', 14, 'delete_address');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$8UjAXEDMNp1j$+7IGNosO4GSjeO7AcndcsofKH9YyiEO0rXy1g1RuraI=', '2019-04-29 11:15:08.756619', 1, 'rschthesis', '', '', 'rschthesis@gmail.com', 1, 1, '2019-03-23 07:13:31.053196'),
(2, 'pbkdf2_sha256$36000$JYRJERh53o9e$E5sf1kbebnfHh23N/BcgUHZcaW0w10AEeYKdP2qyH3U=', '2019-04-19 07:17:07.103830', 0, 'try123', '', '', 'try123@gmail.com', 0, 1, '2019-04-08 08:32:35.575850');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing_billingprofile`
--

CREATE TABLE `billing_billingprofile` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `update` datetime(6) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_billingprofile`
--

INSERT INTO `billing_billingprofile` (`id`, `email`, `active`, `update`, `timestamp`, `user_id`) VALUES
(1, 'abc123@gmail.com', 1, '2019-04-19 16:03:20.472115', '2019-04-19 16:03:20.472115', NULL),
(2, 'rschthesis@gmail.com', 1, '2019-04-19 16:05:47.155903', '2019-04-19 16:05:47.155903', 1),
(3, 'trytry132@gmail.com', 1, '2019-04-19 16:17:51.559507', '2019-04-19 16:17:51.559507', NULL),
(4, 'try123@gmail.com', 1, '2019-04-21 06:17:32.575371', '2019-04-21 06:17:32.575371', NULL),
(5, 'abc@gmail.com', 1, '2019-04-29 07:53:20.173005', '2019-04-29 07:53:20.173005', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts_cart`
--

CREATE TABLE `carts_cart` (
  `id` int(11) NOT NULL,
  `total` decimal(65,2) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subtotal` decimal(65,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts_cart`
--

INSERT INTO `carts_cart` (`id`, `total`, `updated`, `timestamp`, `user_id`, `subtotal`) VALUES
(1, '69.12', '2019-04-19 16:05:45.548968', '2019-04-19 15:58:16.965885', 1, '64.00'),
(2, '26.46', '2019-04-19 16:18:23.733423', '2019-04-19 16:06:40.102260', 1, '24.50'),
(3, '26.73', '2019-04-20 14:32:24.643718', '2019-04-19 16:18:34.323127', 1, '24.75'),
(4, '75.87', '2019-04-21 06:18:37.388157', '2019-04-21 06:17:14.641143', 1, '70.25'),
(5, '0.00', '2019-04-21 08:33:33.761041', '2019-04-21 06:47:06.386104', 1, '0.00'),
(6, '26.46', '2019-04-21 08:33:48.576696', '2019-04-21 08:33:46.824459', 1, '24.50'),
(7, '75.87', '2019-04-21 08:34:13.119033', '2019-04-21 08:34:08.380716', NULL, '70.25'),
(8, '26.46', '2019-04-21 08:36:24.970243', '2019-04-21 08:36:23.085081', 1, '24.50'),
(9, '26.73', '2019-04-21 14:09:26.672457', '2019-04-21 08:36:46.783319', 1, '24.75'),
(10, '53.19', '2019-04-21 16:38:38.345784', '2019-04-21 16:38:26.899336', 1, '49.25'),
(11, '26.73', '2019-04-25 14:58:48.704910', '2019-04-25 14:57:15.955861', 1, '24.75'),
(12, '95.58', '2019-04-29 03:47:36.855860', '2019-04-25 15:04:16.760385', 1, '88.50'),
(13, '190.89', '2019-04-29 07:18:05.315571', '2019-04-29 04:52:31.176640', 1, '176.75'),
(14, '95.58', '2019-04-29 07:45:52.192157', '2019-04-29 07:19:37.345621', 1, '88.50'),
(15, '95.31', '2019-04-29 07:47:54.403795', '2019-04-29 07:47:44.174959', 1, '88.25'),
(16, '26.73', '2019-04-29 07:52:36.753060', '2019-04-29 07:49:30.522553', 1, '24.75'),
(17, '42.39', '2019-04-29 07:52:55.943046', '2019-04-29 07:52:48.304369', NULL, '39.25'),
(18, '0.00', '2019-04-29 09:57:22.745684', '2019-04-29 09:57:22.746684', NULL, '0.00'),
(19, '26.73', '2019-04-29 10:54:46.214596', '2019-04-29 10:06:31.210629', 1, '24.75'),
(20, '0.00', '2019-04-29 11:16:50.578868', '2019-04-29 11:16:50.578868', 1, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `carts_cart_products`
--

CREATE TABLE `carts_cart_products` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts_cart_products`
--

INSERT INTO `carts_cart_products` (`id`, `cart_id`, `product_id`) VALUES
(13, 1, 7),
(14, 1, 25),
(15, 2, 18),
(16, 3, 7),
(17, 4, 7),
(18, 4, 73),
(20, 6, 18),
(21, 7, 7),
(22, 7, 73),
(23, 8, 18),
(24, 9, 7),
(25, 10, 7),
(26, 10, 18),
(33, 11, 7),
(56, 12, 7),
(57, 12, 18),
(59, 12, 25),
(67, 13, 1),
(68, 13, 7),
(69, 13, 18),
(72, 13, 19),
(70, 13, 25),
(71, 13, 73),
(81, 14, 7),
(82, 14, 18),
(80, 14, 25),
(84, 15, 1),
(83, 15, 19),
(85, 15, 73),
(86, 16, 7),
(87, 17, 25),
(89, 19, 7);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-03-23 07:40:24.631538', '1', 'Beverages', 1, '[{\"added\": {}}]', 7, 1),
(2, '2019-03-23 07:47:17.098501', '1', '7-Up 500ml', 1, '[{\"added\": {}}]', 8, 1),
(3, '2019-03-23 07:47:23.085136', '1', '7-Up 500ml', 2, '[]', 8, 1),
(4, '2019-03-23 07:48:04.279113', '2', 'Coke 500ml', 1, '[{\"added\": {}}]', 8, 1),
(5, '2019-03-23 07:49:05.020478', '3', 'Mirinda Orange 500ml', 1, '[{\"added\": {}}]', 8, 1),
(6, '2019-03-23 07:51:55.121436', '2', 'Bread/Bakery', 1, '[{\"added\": {}}]', 7, 1),
(7, '2019-03-23 07:52:33.811253', '4', 'Creative Pinoy Tasty 450g', 1, '[{\"added\": {}}]', 8, 1),
(8, '2019-03-23 07:52:58.343380', '5', 'Gardenia White Bread 600g', 1, '[{\"added\": {}}]', 8, 1),
(9, '2019-03-23 07:53:21.756301', '6', 'Marby Budgetloaf 0 Trnsft B1T1', 1, '[{\"added\": {}}]', 8, 1),
(10, '2019-03-23 07:58:06.376187', '3', 'Canned/Jarred Goods', 1, '[{\"added\": {}}]', 7, 1),
(11, '2019-03-23 08:01:33.029880', '7', '555 Carne Norte 150G', 1, '[{\"added\": {}}]', 8, 1),
(12, '2019-03-23 08:02:22.933802', '8', '555 Carne Norte 260g', 1, '[{\"added\": {}}]', 8, 1),
(13, '2019-03-23 08:03:05.708308', '9', 'Argentina Bacon Norte 100g', 1, '[{\"added\": {}}]', 8, 1),
(14, '2019-03-29 14:08:27.385777', '4', 'Dairy', 1, '[{\"added\": {}}]', 7, 1),
(15, '2019-03-30 03:29:46.740583', '1', '7-Up 500ml', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 8, 1),
(16, '2019-03-30 03:29:55.998767', '1', '7-Up 500ml', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 8, 1),
(17, '2019-03-30 05:58:21.062813', '1', '7-Up 500ml/', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 8, 1),
(18, '2019-03-30 05:58:32.984185', '1', '7-Up 500ml', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 8, 1),
(19, '2019-03-30 06:50:50.611858', '1', 'beverages7-Up 500ml', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 8, 1),
(20, '2019-03-30 06:51:32.721172', '1', 'beverages7-Up 500ml', 2, '[]', 8, 1),
(21, '2019-03-30 07:36:19.618573', '9', '/Argentina Bacon Norte 100g', 2, '[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]', 8, 1),
(22, '2019-03-30 07:36:31.233384', '9', 'Argentina Bacon Norte 100g', 2, '[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]', 8, 1),
(23, '2019-03-31 14:39:13.829792', '6', 'Marby Budgetloaf 0 Trnsft B1T1', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 8, 1),
(24, '2019-03-31 15:30:48.289507', '9', 'Argentina Bacon Norte 100g', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 1),
(25, '2019-03-31 16:03:50.391169', '5', 'Dry/Baking Goods', 1, '[{\"added\": {}}]', 7, 1),
(26, '2019-03-31 16:03:58.399799', '6', 'Frozen Foods', 1, '[{\"added\": {}}]', 7, 1),
(27, '2019-03-31 16:04:12.001068', '7', 'Meat', 1, '[{\"added\": {}}]', 7, 1),
(28, '2019-03-31 16:04:20.943220', '8', 'Produce', 1, '[{\"added\": {}}]', 7, 1),
(29, '2019-03-31 16:04:29.544486', '9', 'Cleaners', 1, '[{\"added\": {}}]', 7, 1),
(30, '2019-03-31 16:04:38.021750', '10', 'Paper Goods', 1, '[{\"added\": {}}]', 7, 1),
(31, '2019-03-31 16:04:45.217257', '11', 'Personal Care', 1, '[{\"added\": {}}]', 7, 1),
(32, '2019-03-31 16:04:54.042187', '12', 'Other', 1, '[{\"added\": {}}]', 7, 1),
(33, '2019-03-31 17:05:14.443936', '9', 'Argentina Bacon Norte 100g', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 1),
(34, '2019-04-02 04:59:07.993667', '10', 'Star margareen', 1, '[{\"added\": {}}]', 8, 1),
(35, '2019-04-07 05:23:46.630739', '1', 'Canned/Jarred Goods', 1, '[{\"added\": {}}]', 9, 1),
(36, '2019-04-07 05:24:10.169887', '1', 'Canned/Jarred Goods', 2, '[]', 9, 1),
(37, '2019-04-07 05:24:35.448643', '2', 'Beverages', 1, '[{\"added\": {}}]', 9, 1),
(38, '2019-04-07 05:24:44.069468', '2', 'Beverages', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 9, 1),
(39, '2019-04-07 05:25:00.526247', '1', 'Canned/Jarred Goods', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 9, 1),
(40, '2019-04-07 05:27:04.493450', '3', 'Drinks', 1, '[{\"added\": {}}]', 9, 1),
(41, '2019-04-08 03:12:33.257683', '11', 'Chuckie Calci-N Tetra Wedge 110M', 1, '[{\"added\": {}}]', 8, 1),
(42, '2019-04-08 03:12:36.452889', '11', 'Chuckie Calci-N Tetra Wedge 110M', 2, '[]', 8, 1),
(43, '2019-04-08 03:15:00.040160', '10', 'Magnolia Chocolait Justice1 250Ml', 2, '[{\"changed\": {\"fields\": [\"category\", \"title\", \"slug\", \"description\", \"price\", \"image\"]}}]', 8, 1),
(44, '2019-04-08 03:17:43.936225', '12', 'Mug Rootbeer In Can 330ml', 1, '[{\"added\": {}}]', 8, 1),
(45, '2019-04-08 03:17:58.797748', '12', 'Mug Rootbeer In Can 330ml', 2, '[]', 8, 1),
(46, '2019-04-08 03:21:23.421506', '13', 'Gatorade Blue Bolt 350ml', 1, '[{\"added\": {}}]', 8, 1),
(47, '2019-04-08 03:23:38.995594', '14', 'Marby John Pullman Special 400G', 1, '[{\"added\": {}}]', 8, 1),
(48, '2019-04-08 03:25:09.536736', '15', 'Magnolia Pancake And Waffle Mix 180G..', 1, '[{\"added\": {}}]', 8, 1),
(49, '2019-04-08 03:26:22.001014', '16', 'My San Crushed Graham 200G', 1, '[{\"added\": {}}]', 8, 1),
(50, '2019-04-08 03:27:30.723377', '17', 'White King Puto Mix 400g', 1, '[{\"added\": {}}]', 8, 1),
(51, '2019-04-08 03:33:33.520118', '18', '555 Fried Sardines Hot And Spicy 155G', 1, '[{\"added\": {}}]', 8, 1),
(52, '2019-04-08 03:34:42.486397', '19', '555 Sardines Tomato Sauce 155G', 1, '[{\"added\": {}}]', 8, 1),
(53, '2019-04-08 03:35:50.555652', '20', 'Del Monte Whole Kernel Corn 420G', 1, '[{\"added\": {}}]', 8, 1),
(54, '2019-04-08 03:36:53.366474', '21', 'Jolly Green Peas 155G', 1, '[{\"added\": {}}]', 8, 1),
(55, '2019-04-08 03:38:07.535777', '22', 'Jolly Whole Mushroom 284G', 1, '[{\"added\": {}}]', 8, 1),
(56, '2019-04-08 03:40:48.681270', '23', 'Argentina Meat Loaf 150g', 1, '[{\"added\": {}}]', 8, 1),
(57, '2019-04-08 03:41:50.827986', '24', 'Argentina Fiesta Sausage 175g', 1, '[{\"added\": {}}]', 8, 1),
(58, '2019-04-08 03:45:59.584787', '10', 'Snack foods', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\", \"slug\"]}}]', 7, 1),
(59, '2019-04-08 03:51:38.194746', '8', 'Del Monte Fiesta Fruit Cocktail 432G', 2, '[{\"changed\": {\"fields\": [\"title\", \"slug\", \"description\", \"price\", \"image\"]}}]', 8, 1),
(60, '2019-04-08 03:53:30.452948', '25', '3M Scotch Brite Scrub Sponge Anti-Bacterial', 1, '[{\"added\": {}}]', 8, 1),
(61, '2019-04-08 03:54:28.644268', '26', 'Albatross Refill Lemon 100G', 1, '[{\"added\": {}}]', 8, 1),
(62, '2019-04-08 03:56:07.906588', '27', 'Axion Dishwashing Liquid Lime 190Ml', 1, '[{\"added\": {}}]', 8, 1),
(63, '2019-04-08 03:58:41.860525', '28', 'Baygon Mosquito Coil Floral 10s', 1, '[{\"added\": {}}]', 8, 1),
(64, '2019-04-08 04:00:00.788488', '29', 'Ariel Golden Bloom 66gx6', 1, '[{\"added\": {}}]', 8, 1),
(65, '2019-04-08 04:01:01.352213', '30', 'B29 Bar White 150g', 1, '[{\"added\": {}}]', 8, 1),
(66, '2019-04-08 04:02:06.455494', '31', 'Champion Fabric Softener Pinkfresh 28mlx12s', 1, '[{\"added\": {}}]', 8, 1),
(67, '2019-04-08 04:02:53.321862', '32', 'Champion Powder Citrus Fresh 40gx6s', 1, '[{\"added\": {}}]', 8, 1),
(68, '2019-04-08 04:05:05.379753', '33', 'Downy Antibac Refill 800ml', 1, '[{\"added\": {}}]', 8, 1),
(69, '2019-04-08 04:06:52.635532', '34', 'Domex Multi-Purpose Cleaner Liquid Lemon 500Ml', 1, '[{\"added\": {}}]', 8, 1),
(70, '2019-04-08 04:08:06.336867', '35', 'Joy Dishwashing Kalamansi 500ml', 1, '[{\"added\": {}}]', 8, 1),
(71, '2019-04-08 04:09:05.235143', '36', 'Starwax Red Dyewax 90G', 1, '[{\"added\": {}}]', 8, 1),
(72, '2019-04-08 04:10:34.887935', '37', 'Yakult Cultured Milk 80mlx5', 1, '[{\"added\": {}}]', 8, 1),
(73, '2019-04-08 04:15:28.992120', '38', 'Anchor Unsalted Butter 227g', 1, '[{\"added\": {}}]', 8, 1),
(74, '2019-04-08 04:17:43.950296', '38', 'Anchor Unsalted Butter 227g', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 1),
(75, '2019-04-08 04:19:28.270570', '38', 'Anchor Unsalted Butter 227g', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 1),
(76, '2019-04-08 04:21:24.262081', '39', 'Calumet Baking Powder 50g', 1, '[{\"added\": {}}]', 8, 1),
(77, '2019-04-08 04:22:00.758867', '40', 'Cream All Purpose Flour 200g', 1, '[{\"added\": {}}]', 8, 1),
(78, '2019-04-08 04:22:46.270293', '41', 'Cream Corn Starch 400g', 1, '[{\"added\": {}}]', 8, 1),
(79, '2019-04-08 04:23:20.096368', '42', 'Honeylicious All Purpose Honey 250ml', 1, '[{\"added\": {}}]', 8, 1),
(80, '2019-04-08 04:23:58.386427', '43', 'Pure Cocoa Powder 250g', 1, '[{\"added\": {}}]', 8, 1),
(81, '2019-04-08 04:24:35.829292', '44', 'Queen Baking Soda 125g', 1, '[{\"added\": {}}]', 8, 1),
(82, '2019-04-08 04:26:59.500047', '45', 'Bioderm Soap Bloom Pink 60g', 1, '[{\"added\": {}}]', 8, 1),
(83, '2019-04-08 04:27:47.083620', '46', 'Dove Bar Soap Sensitive Beauty 100G', 1, '[{\"added\": {}}]', 8, 1),
(84, '2019-04-08 04:28:59.559213', '47', 'Green Cross Alcohol 40% 500ml', 1, '[{\"added\": {}}]', 8, 1),
(85, '2019-04-08 04:29:47.025101', '48', 'Eskinol Facial Cleanser Pimple Fighting 75ml', 1, '[{\"added\": {}}]', 8, 1),
(86, '2019-04-08 04:30:15.926343', '49', 'Gillette Blue Ii Plus', 1, '[{\"added\": {}}]', 8, 1),
(87, '2019-04-08 04:30:50.056206', '50', 'Ponds White Beauty Day Cream Detox 6G', 1, '[{\"added\": {}}]', 8, 1),
(88, '2019-04-08 04:32:38.841973', '51', 'Clear Shampoo Complete Soft Care 12Ml', 1, '[{\"added\": {}}]', 8, 1),
(89, '2019-04-08 04:33:46.601514', '52', 'Cream Silk Hair Conditioner Damage Control 11Ml', 1, '[{\"added\": {}}]', 8, 1),
(90, '2019-04-08 04:34:47.043963', '53', 'Carefree Superdry Flats 15s', 1, '[{\"added\": {}}]', 8, 1),
(91, '2019-04-08 04:36:06.798489', '54', 'Charmee All-Flow Dry Net w/ Wings 8s', 1, '[{\"added\": {}}]', 8, 1),
(92, '2019-04-08 04:36:48.647859', '55', 'Ph Care Feminine Wash Cool Wind 50Ml', 1, '[{\"added\": {}}]', 8, 1),
(93, '2019-04-08 04:37:41.371954', '56', 'Sisters Silk Floss (Day-Use)', 1, '[{\"added\": {}}]', 8, 1),
(94, '2019-04-08 04:38:44.912575', '57', 'Those Days Sanitary Napkin Reg Individual Wrap 8s', 1, '[{\"added\": {}}]', 8, 1),
(95, '2019-04-08 04:40:15.213468', '58', 'Boogyman Crunch 24G', 1, '[{\"added\": {}}]', 8, 1),
(96, '2019-04-08 04:42:13.905896', '59', 'Boy Bawang Adobo 100g', 1, '[{\"added\": {}}]', 8, 1),
(97, '2019-04-08 04:48:13.990031', '60', 'Cebu Brand Sliced Dried Mangoes 200g', 1, '[{\"added\": {}}]', 8, 1),
(98, '2019-04-08 04:50:10.501678', '61', 'Cheese Ball 60g', 1, '[{\"added\": {}}]', 8, 1),
(99, '2019-04-08 04:50:56.374285', '62', 'Cheetos Crunchy Cheddar 16g', 1, '[{\"added\": {}}]', 8, 1),
(100, '2019-04-08 04:53:28.455810', '63', 'Chikito Hot & Spicy 5gx20s', 1, '[{\"added\": {}}]', 8, 1),
(101, '2019-04-08 04:54:31.233690', '64', 'Bingo Choco Orange 28Gx10S', 1, '[{\"added\": {}}]', 8, 1),
(102, '2019-04-08 04:55:04.372401', '65', 'Bread Pan Buttered Toast Flavor 24G', 1, '[{\"added\": {}}]', 8, 1),
(103, '2019-04-08 04:55:50.471801', '66', 'Barnuts Choco Peanut Bar 5gx20s', 1, '[{\"added\": {}}]', 8, 1),
(104, '2019-04-08 04:56:29.903674', '67', 'Cadbury Dairy Milk 15g', 1, '[{\"added\": {}}]', 8, 1),
(105, '2019-04-08 04:57:11.806698', '68', 'Beng Beng Choco 26.5gx10s', 1, '[{\"added\": {}}]', 8, 1),
(106, '2019-04-08 04:58:09.814618', '69', 'Butter Cream Crackers 25Gx10S', 1, '[{\"added\": {}}]', 8, 1),
(107, '2019-04-08 04:58:59.052930', '70', 'Chips Delight Mini 35g', 1, '[{\"added\": {}}]', 8, 1),
(108, '2019-04-08 04:59:58.165928', '71', 'Dewberry Blueberries & Cream10s', 1, '[{\"added\": {}}]', 8, 1),
(109, '2019-04-08 05:00:54.490606', '72', 'Cupp Keyk Choco Topps 10s', 1, '[{\"added\": {}}]', 8, 1),
(110, '2019-04-08 05:07:03.143731', '9', 'Household Products', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\", \"slug\"]}}]', 7, 1),
(111, '2019-04-08 05:10:55.236783', '7', 'Condiments & Dressing & Spices', 2, '[{\"changed\": {\"fields\": [\"title\", \"description\", \"slug\"]}}]', 7, 1),
(112, '2019-04-08 05:12:31.500179', '73', 'Aji Crispy Fry Garlic 238G', 1, '[{\"added\": {}}]', 8, 1),
(113, '2019-04-08 05:13:06.747636', '74', 'Aji Ginisa Flavor Mix 100g', 1, '[{\"added\": {}}]', 8, 1),
(114, '2019-04-08 05:13:36.735987', '75', 'Ajinomoto 100G', 1, '[{\"added\": {}}]', 8, 1),
(115, '2019-04-08 05:14:19.975673', '76', 'Alaska Crema All Purpose 250Ml', 1, '[{\"added\": {}}]', 8, 1),
(116, '2019-04-08 05:14:57.669060', '77', 'Alaska Crema Asada 370ml', 1, '[{\"added\": {}}]', 8, 1),
(117, '2019-04-08 05:15:30.569214', '78', 'Datu Puti Pares Pack 1L', 1, '[{\"added\": {}}]', 8, 1),
(118, '2019-04-08 05:16:01.101144', '79', 'Datu Puti Patis 150ml', 1, '[{\"added\": {}}]', 8, 1),
(119, '2019-04-08 05:16:35.882740', '80', 'Datu Puti Patis 1L', 1, '[{\"added\": {}}]', 8, 1),
(120, '2019-04-08 05:17:15.447171', '81', 'Datu Puti Soy Sauce 1L', 1, '[{\"added\": {}}]', 8, 1),
(121, '2019-04-08 05:17:53.228473', '82', 'Datu Puti Spiced Vinegar 350ml', 1, '[{\"added\": {}}]', 8, 1),
(122, '2019-04-08 05:18:45.435389', '83', 'Datu Puti Vinegar 1 L', 1, '[{\"added\": {}}]', 8, 1),
(123, '2019-04-08 05:19:38.626532', '84', 'Fidel Iodized Free Flowing 250g', 1, '[{\"added\": {}}]', 8, 1),
(124, '2019-04-08 05:20:12.653984', '85', 'Jam Black Pepper Powder 30g', 1, '[{\"added\": {}}]', 8, 1),
(125, '2019-04-08 05:20:46.152504', '86', 'Jam Bay Leaf 10g', 1, '[{\"added\": {}}]', 8, 1),
(126, '2019-04-08 05:21:22.806254', '87', 'Knorr Beef Cubes 12 Pcs', 1, '[{\"added\": {}}]', 8, 1),
(127, '2019-04-08 05:22:09.665680', '88', 'Knorr Sinigang Sa Sampalok Mix Original 20G', 1, '[{\"added\": {}}]', 8, 1),
(128, '2019-04-08 05:47:30.800290', '89', 'Sanicare Cleansing Wipes 15 Sheets', 1, '[{\"added\": {}}]', 8, 1),
(129, '2019-04-08 05:48:50.781622', '90', 'Femme Bathroom Tissue 2Ply by 4', 1, '[{\"added\": {}}]', 8, 1),
(130, '2019-04-08 05:49:34.905717', '89', 'Sanicare Cleansing Wipes 15 Sheets', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 1),
(131, '2019-04-08 06:30:36.514362', '1', '7-Up 500ml', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 8, 1),
(132, '2019-04-08 06:31:46.590102', '3', 'Drinks', 2, '[]', 9, 1),
(133, '2019-04-08 06:35:25.068462', '3', 'Drinks', 2, '[]', 9, 1),
(134, '2019-04-08 06:36:34.851135', '2', 'Beverages', 2, '[]', 9, 1),
(135, '2019-04-08 06:38:28.406994', '1', 'Canned/Jarred Goods', 2, '[]', 9, 1),
(136, '2019-04-08 06:39:07.892608', '1', 'Canned/Jarred Goods', 2, '[]', 9, 1),
(137, '2019-04-08 06:40:48.668576', '4', 'Softdrinks', 1, '[{\"added\": {}}]', 9, 1),
(138, '2019-04-08 06:41:38.015918', '5', 'Energy drinks', 1, '[{\"added\": {}}]', 9, 1),
(139, '2019-04-08 06:42:42.676898', '5', 'Flavored drinks', 2, '[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]', 9, 1),
(140, '2019-04-08 06:45:44.896324', '5', 'Bread/bakery', 2, '[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]', 9, 1),
(141, '2019-04-08 06:47:23.575325', '6', 'Loaf bread', 1, '[{\"added\": {}}]', 9, 1),
(142, '2019-04-08 06:50:49.911697', '7', 'Personal Care/Hygiene', 1, '[{\"added\": {}}]', 9, 1),
(143, '2019-04-08 06:51:27.030525', '8', 'Hair Products', 1, '[{\"added\": {}}]', 9, 1),
(144, '2019-04-08 06:52:50.882528', '9', 'Skin Care', 1, '[{\"added\": {}}]', 9, 1),
(145, '2019-04-08 06:54:25.870101', '10', 'facial care/face', 1, '[{\"added\": {}}]', 9, 1),
(146, '2019-04-08 06:55:41.071027', '11', 'Toiletries', 1, '[{\"added\": {}}]', 9, 1),
(147, '2019-04-08 06:57:26.371744', '12', 'Sanitary Care', 1, '[{\"added\": {}}]', 9, 1),
(148, '2019-04-08 07:01:30.132839', '6', 'Marby Budgetloaf 0 Trnsft B1T1', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 8, 1),
(149, '2019-04-08 07:08:54.520758', '13', 'Snack foods', 1, '[{\"added\": {}}]', 9, 1),
(150, '2019-04-08 07:10:37.629961', '14', 'Junk Food', 1, '[{\"added\": {}}]', 9, 1),
(151, '2019-04-08 07:11:22.640173', '15', 'Chips', 1, '[{\"added\": {}}]', 9, 1),
(152, '2019-04-08 07:12:34.089844', '16', 'Crackers', 1, '[{\"added\": {}}]', 9, 1),
(153, '2019-04-08 07:14:14.877793', '17', 'Chocolates', 1, '[{\"added\": {}}]', 9, 1),
(154, '2019-04-08 07:15:30.424061', '18', 'Cornick', 1, '[{\"added\": {}}]', 9, 1),
(155, '2019-04-08 07:17:51.991136', '19', 'Household Products/Cleaning products', 1, '[{\"added\": {}}]', 9, 1),
(156, '2019-04-08 07:19:55.550850', '20', 'Laundry', 1, '[{\"added\": {}}]', 9, 1),
(157, '2019-04-08 07:21:15.669958', '21', 'Soap powder', 1, '[{\"added\": {}}]', 9, 1),
(158, '2019-04-08 07:22:47.797835', '22', 'Liquid detergent', 1, '[{\"added\": {}}]', 9, 1),
(159, '2019-04-08 07:23:45.784235', '23', 'Detergent', 1, '[{\"added\": {}}]', 9, 1),
(160, '2019-04-08 07:24:14.679322', '24', 'Brush', 1, '[{\"added\": {}}]', 9, 1),
(161, '2019-04-08 07:26:25.219346', '25', 'Condiments/Dressing/Spices', 1, '[{\"added\": {}}]', 9, 1),
(162, '2019-04-08 07:28:04.092445', '26', 'Seasoning', 1, '[{\"added\": {}}]', 9, 1),
(163, '2019-04-09 06:42:35.403136', '3', '3', 3, '', 10, 1),
(164, '2019-04-09 06:42:35.530630', '2', '2', 3, '', 10, 1),
(165, '2019-04-09 06:42:35.577344', '1', '1', 3, '', 10, 1),
(166, '2019-04-09 06:44:26.237998', '5', '5', 3, '', 10, 1),
(167, '2019-04-09 06:44:26.295133', '4', '4', 3, '', 10, 1),
(168, '2019-04-09 06:45:23.808239', '6', '6', 3, '', 10, 1),
(169, '2019-04-09 06:47:10.562568', '7', '7', 3, '', 10, 1),
(170, '2019-04-09 13:33:17.419885', '8', '8', 2, '[]', 10, 1),
(171, '2019-04-09 13:41:21.548835', '8', '8', 2, '[]', 10, 1),
(172, '2019-04-09 14:34:27.167447', '8', '8', 3, '', 10, 1),
(173, '2019-04-09 14:34:40.567138', '9', '9', 2, '[]', 10, 1),
(174, '2019-04-12 01:57:18.107038', '8', 'Produce', 2, '[{\"changed\": {\"fields\": [\"active\"]}}]', 7, 1),
(175, '2019-04-12 01:57:28.716743', '8', 'Produce', 2, '[{\"changed\": {\"fields\": [\"active\"]}}]', 7, 1),
(176, '2019-04-12 02:04:36.512214', '8', 'Produce', 2, '[{\"changed\": {\"fields\": [\"active\"]}}]', 7, 1),
(177, '2019-04-12 02:04:44.644649', '8', 'Produce', 2, '[{\"changed\": {\"fields\": [\"active\"]}}]', 7, 1),
(178, '2019-04-12 02:05:12.231245', '8', 'Produce', 2, '[{\"changed\": {\"fields\": [\"active\"]}}]', 7, 1),
(179, '2019-04-12 02:05:35.243814', '6', 'Frozen Foods', 2, '[{\"changed\": {\"fields\": [\"active\"]}}]', 7, 1),
(180, '2019-04-12 02:05:42.030367', '12', 'Other', 2, '[{\"changed\": {\"fields\": [\"active\"]}}]', 7, 1),
(181, '2019-04-12 05:52:41.645020', '91', 'uuyuy', 1, '[{\"added\": {}}]', 8, 1),
(182, '2019-04-13 07:18:58.912853', '11', '11', 2, '[]', 10, 1),
(183, '2019-04-13 07:19:21.200694', '11', '11', 3, '', 10, 1),
(184, '2019-04-13 07:19:21.308862', '10', '10', 3, '', 10, 1),
(185, '2019-04-13 07:19:21.352730', '9', '9', 3, '', 10, 1),
(186, '2019-04-14 16:36:47.578972', '12', '12', 2, '[]', 10, 1),
(187, '2019-04-14 16:41:37.409250', '12', '12', 3, '', 10, 1),
(188, '2019-04-17 08:46:33.116020', '1', 'aamzxdx3l2', 1, '[{\"added\": {}}]', 11, 1),
(189, '2019-04-17 08:46:44.915036', '1', 'gubtqxl57g', 2, '[{\"changed\": {\"fields\": [\"order_id\"]}}]', 11, 1),
(190, '2019-04-17 15:12:01.043981', '1', 'gubtqxl57g', 3, '', 11, 1),
(191, '2019-04-17 15:12:09.335843', '2', 'sd35ibiajo', 1, '[{\"added\": {}}]', 11, 1),
(192, '2019-04-19 05:36:40.512675', '1', 'rschthesis@gmail.com', 1, '[{\"added\": {}}]', 12, 1),
(193, '2019-04-19 14:22:34.515400', '1', 'rschthesis@gmail.com', 3, '', 12, 1),
(194, '2019-04-19 15:00:03.062835', '25', '3M Scotch Brite Scrub Sponge Anti-Bacterial', 2, '[]', 8, 1),
(195, '2019-04-19 15:50:42.808218', '24', '24', 3, '', 10, 1),
(196, '2019-04-19 15:50:42.912208', '23', '23', 3, '', 10, 1),
(197, '2019-04-19 15:50:42.943325', '22', '22', 3, '', 10, 1),
(198, '2019-04-19 15:50:42.978800', '21', '21', 3, '', 10, 1),
(199, '2019-04-19 15:50:43.009463', '20', '20', 3, '', 10, 1),
(200, '2019-04-19 15:50:43.044888', '19', '19', 3, '', 10, 1),
(201, '2019-04-19 15:50:43.100108', '18', '18', 3, '', 10, 1),
(202, '2019-04-19 15:50:43.131790', '17', '17', 3, '', 10, 1),
(203, '2019-04-19 15:50:43.166333', '16', '16', 3, '', 10, 1),
(204, '2019-04-19 15:50:43.198336', '15', '15', 3, '', 10, 1),
(205, '2019-04-19 15:50:43.233339', '13', '13', 3, '', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(13, 'accounts', 'guestemail'),
(14, 'addresses', 'address'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(12, 'billing', 'billingprofile'),
(10, 'carts', 'cart'),
(5, 'contenttypes', 'contenttype'),
(11, 'orders', 'order'),
(7, 'products', 'category'),
(8, 'products', 'product'),
(6, 'sessions', 'session'),
(9, 'tags', 'tag');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-03-23 07:08:12.134474'),
(2, 'auth', '0001_initial', '2019-03-23 07:08:23.027629'),
(3, 'admin', '0001_initial', '2019-03-23 07:08:25.883377'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-03-23 07:08:25.945780'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-03-23 07:08:27.266944'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-03-23 07:08:28.761329'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-03-23 07:08:30.078452'),
(8, 'auth', '0004_alter_user_username_opts', '2019-03-23 07:08:30.171655'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-03-23 07:08:30.889813'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-03-23 07:08:30.951850'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-03-23 07:08:31.035897'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-03-23 07:08:32.934111'),
(13, 'sessions', '0001_initial', '2019-03-23 07:08:33.801974'),
(14, 'products', '0001_initial', '2019-03-23 07:12:04.359769'),
(15, 'products', '0002_auto_20190402_2353', '2019-04-02 15:53:35.096738'),
(16, 'products', '0003_auto_20190402_2353', '2019-04-02 15:53:35.876936'),
(17, 'products', '0004_auto_20190402_2354', '2019-04-02 15:54:36.595677'),
(18, 'tags', '0001_initial', '2019-04-07 05:20:55.337299'),
(19, 'products', '0005_auto_20190407_1445', '2019-04-07 06:45:37.217338'),
(20, 'products', '0006_auto_20190407_1446', '2019-04-07 06:46:53.799595'),
(21, 'carts', '0001_initial', '2019-04-09 05:11:31.546551'),
(22, 'carts', '0002_cart_subtotal', '2019-04-09 14:33:29.423518'),
(23, 'products', '0007_category_active', '2019-04-12 01:56:41.501232'),
(24, 'orders', '0001_initial', '2019-04-17 07:08:30.062959'),
(25, 'billing', '0001_initial', '2019-04-19 05:35:05.456178'),
(26, 'accounts', '0001_initial', '2019-04-19 08:19:22.017183'),
(27, 'orders', '0002_auto_20190420_1321', '2019-04-20 05:21:42.559564'),
(28, 'addresses', '0001_initial', '2019-04-20 08:47:41.155185'),
(29, 'orders', '0003_auto_20190421_0032', '2019-04-20 16:32:37.050052');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5bcqnfoyl1ud4i5nozxwvp6c4jzlz6lw', 'NTliYTVmNTJjNzNmNTAxYTYwMDVmMzEwZDcwY2JiNWI5M2QyOTliYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjcwNWE0MDY3ZTliMjYwNzEwNDE0YWE2ODcxMDVkMjZlNjQzNzJhIn0=', '2019-04-14 08:08:11.693946'),
('6ulhpoyr8t6mmu4sxb93hkmmzi2n3m99', 'Njk4YWMxNWQ1NjU1Mjc5NGJiMDQ0ZjFjZTllODExNmU4N2MxNzQ2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjcwNWE0MDY3ZTliMjYwNzEwNDE0YWE2ODcxMDVkMjZlNjQzNzJhIiwiY2FydF9pZCI6MjB9', '2019-05-13 11:16:50.671890'),
('732bnkyjpiqaaevsb3n5jg0kjbue6dda', 'NTliYTVmNTJjNzNmNTAxYTYwMDVmMzEwZDcwY2JiNWI5M2QyOTliYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjcwNWE0MDY3ZTliMjYwNzEwNDE0YWE2ODcxMDVkMjZlNjQzNzJhIn0=', '2019-04-06 07:13:57.990310'),
('8uk8e87ioefsm2mn2d89dzdfad67kwn9', 'NTliYTVmNTJjNzNmNTAxYTYwMDVmMzEwZDcwY2JiNWI5M2QyOTliYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjcwNWE0MDY3ZTliMjYwNzEwNDE0YWE2ODcxMDVkMjZlNjQzNzJhIn0=', '2019-04-26 03:12:38.709669'),
('iclx5bb0668c13gruebr0az5qjypjrqk', 'NTliYTVmNTJjNzNmNTAxYTYwMDVmMzEwZDcwY2JiNWI5M2QyOTliYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjcwNWE0MDY3ZTliMjYwNzEwNDE0YWE2ODcxMDVkMjZlNjQzNzJhIn0=', '2019-04-12 14:05:38.424972'),
('m7oznluj8mh88jjo6ugfzwf1lfnmzmel', 'NTliYTVmNTJjNzNmNTAxYTYwMDVmMzEwZDcwY2JiNWI5M2QyOTliYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjcwNWE0MDY3ZTliMjYwNzEwNDE0YWE2ODcxMDVkMjZlNjQzNzJhIn0=', '2019-04-06 16:27:07.927538'),
('qt5oeoqlwu01q38s9lhychoflazlw3tu', 'MjI1NWE2MDUzMzhiZWMxMDI3NzFjMjc0ZTczYmRlMzE2YzhkM2NhNTp7ImNhcnRfaWQiOjE0fQ==', '2019-04-30 07:22:17.331671'),
('s3zu86ml9hua5za6hgmwxikfbcbxjmpy', 'NDA4YjYyZDQzMjZjMjBhZGY4ZTBiOGUwMTYzZTlmNDRlYzk1MWYxNjp7fQ==', '2019-04-21 13:38:40.688608'),
('xqh0jy0izvuxztllviq89kpq60kucqpn', 'NTliYTVmNTJjNzNmNTAxYTYwMDVmMzEwZDcwY2JiNWI5M2QyOTliYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjcwNWE0MDY3ZTliMjYwNzEwNDE0YWE2ODcxMDVkMjZlNjQzNzJhIn0=', '2019-04-22 03:08:08.412614'),
('zdui3na3j5101rvyvadhozn1u7tppei7', 'MWFmZTgxY2MzMTdlZGRmYmM5OTY3ZmNiODNlYTVkZGNlODkxMDJlYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjcwNWE0MDY3ZTliMjYwNzEwNDE0YWE2ODcxMDVkMjZlNjQzNzJhIiwiZmlyc3RfbmFtZSI6Ikp1c3RpbiIsImNhcnRfaWQiOjEyLCJ1c2VyIjoicnNjaHRoZXNpcyJ9', '2019-04-21 16:07:02.622982');

-- --------------------------------------------------------

--
-- Table structure for table `orders_order`
--

CREATE TABLE `orders_order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(120) NOT NULL,
  `status` varchar(120) NOT NULL,
  `shipping_total` decimal(65,2) NOT NULL,
  `total` decimal(65,2) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `billing_profile_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `shipping_address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_order`
--

INSERT INTO `orders_order` (`id`, `order_id`, `status`, `shipping_total`, `total`, `cart_id`, `active`, `billing_profile_id`, `billing_address_id`, `shipping_address_id`) VALUES
(1, 'cdeqx3qn4o', 'created', '0.00', '69.12', 1, 1, NULL, NULL, NULL),
(2, 'olxxe97pxd', 'created', '0.00', '26.46', 2, 1, NULL, NULL, NULL),
(3, 'wk3wfp1173', 'created', '0.00', '26.73', 3, 1, 2, 3, 2),
(4, '3o9unkoc2y', 'created', '0.00', '75.87', 4, 0, 4, 5, 4),
(5, 'yo62camykn', 'created', '0.00', '75.87', 4, 1, 2, NULL, NULL),
(6, 'rs73z1q5p7', 'created', '0.00', '26.46', 5, 0, 4, NULL, NULL),
(7, '4vrqj9cmaa', 'created', '0.00', '26.46', 5, 1, 2, NULL, NULL),
(8, 'xvwde6npys', 'paid', '0.00', '26.46', 6, 1, 2, 7, 6),
(9, '8by69muqhc', 'paid', '0.00', '75.87', 7, 1, 4, 9, 8),
(10, 'dzhemsill0', 'created', '0.00', '26.46', 8, 1, 2, NULL, NULL),
(11, 'fhdynl3lyl', 'paid', '0.00', '26.73', 9, 1, 2, 6, 2),
(12, 'v3zzzdkii2', 'paid', '0.00', '53.19', 10, 1, 2, 3, 3),
(13, 'kc1ahm7rkh', 'paid', '0.00', '190.89', 13, 1, 2, 11, 10),
(14, 'uzpmw918wq', 'paid', '0.00', '95.58', 14, 1, 2, 10, 6),
(15, 'l822lwx8ro', 'created', '0.00', '95.31', 15, 1, 2, NULL, NULL),
(16, '8r94ptub5m', 'created', '0.00', '26.73', 16, 1, 2, NULL, NULL),
(17, 'jhvddwt2m0', 'created', '0.00', '42.39', 17, 1, 5, NULL, NULL),
(18, '329x8ofp9k', 'created', '0.00', '26.73', 19, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_category`
--

CREATE TABLE `products_category` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_category`
--

INSERT INTO `products_category` (`id`, `title`, `description`, `slug`, `active`) VALUES
(1, 'Beverages', 'Drinks', 'beverages', 1),
(2, 'Bread/Bakery', 'Bread/Bakery', 'breadbakery', 1),
(3, 'Canned/Jarred Goods', 'Canned/Jarred Goods', 'cannedjarred-goods', 1),
(4, 'Dairy', 'Dairy', 'dairy', 1),
(5, 'Dry/Baking Goods', 'Dry/Baking Goods', 'drybaking-goods', 1),
(6, 'Frozen Foods', 'Frozen Foods', 'frozen-foods', 0),
(7, 'Condiments & Dressing & Spices', 'Condiments & Dressing & Spices', 'condimentsdressingspices', 1),
(8, 'Produce', 'Produce', 'produce', 0),
(9, 'Household Products', 'Household Products', 'household-products', 1),
(10, 'Snack foods', 'Snack foods', 'snack-foods', 1),
(11, 'Personal Care', 'Personal Care', 'personal-care', 1),
(12, 'Other', 'Other', 'other', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_product`
--

CREATE TABLE `products_product` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_product`
--

INSERT INTO `products_product` (`id`, `title`, `slug`, `description`, `price`, `image`, `featured`, `active`, `timestamp`, `category_id`) VALUES
(1, '7-Up 500ml', '7-up-500ml', '7-Up 500ml', '27.75', 'products/3640757811/3640757811.jpg', 0, 1, '2019-03-23 07:47:17.032454', 1),
(2, 'Coke 500ml', 'coke-500ml', 'Coke 500ml', '27.75', 'products/95916189/95916189.jpg', 0, 1, '2019-03-23 07:48:04.242106', 1),
(3, 'Mirinda Orange 500ml', 'mirinda-orange-500ml', 'Mirinda Orange 500ml', '27.75', 'products/2177786495/2177786495.jpg', 0, 1, '2019-03-23 07:49:04.994492', 1),
(4, 'Creative Pinoy Tasty 450g', 'creative-pinoy-tasty-450g', 'Creative Pinoy Tasty 450g', '35.00', 'products/2256348556/2256348556.jpg', 0, 1, '2019-03-23 07:52:33.741548', 2),
(5, 'Gardenia White Bread 600g', 'gardenia-white-bread-600g', 'Gardenia White Bread 600g', '62.00', 'products/3113120463/3113120463.jpg', 0, 1, '2019-03-23 07:52:58.315363', 2),
(6, 'Marby Budgetloaf 0 Trnsft B1T1', 'marby-budgetloaf-0-trnsft-b1t1', 'Marby Budgetloaf 0 Trnsft B1T1', '75.00', 'products/2869706296/2869706296.png', 0, 1, '2019-03-23 07:53:21.734699', 2),
(7, '555 Carne Norte 150G', '555-carne-norte-150g', '555 Carne Norte 150G', '24.75', 'products/1724548864/1724548864.jpg', 0, 1, '2019-03-23 08:01:32.952922', 3),
(8, 'Del Monte Fiesta Fruit Cocktail 432G', 'del-monte-fiesta-fruit-cocktail-432g', 'Del Monte Fiesta Fruit Cocktail 432G', '53.50', 'products/397113553/397113553.jpg', 0, 1, '2019-03-23 08:02:22.871810', 3),
(9, 'Argentina Bacon Norte 100g', 'argentina-bacon-norte-100g', 'Argentina Bacon Norte 100g', '16.50', 'products/572587994/572587994.jpg', 0, 1, '2019-03-23 08:03:05.666307', 3),
(10, 'Magnolia Chocolait Justice1 250Ml', 'magnolia-chocolait-justice1-250ml', 'Magnolia Chocolait Justice1 250Ml', '23.75', 'products/1967946532/1967946532.jpg', 0, 1, '2019-04-02 04:59:07.947129', 1),
(11, 'Chuckie Calci-N Tetra Wedge 110M', 'chuckie-calci-n-tetra-wedge-110m', 'Chuckie Calci-N Tetra Wedge 110M', '12.25', 'products/2266329172/2266329172.jpg', 0, 1, '2019-04-08 03:12:33.198220', 1),
(12, 'Mug Rootbeer In Can 330ml', 'mug-rootbeer-in-can-330ml', 'Mug Rootbeer In Can 330ml', '23.00', 'products/233353496/233353496.jpg', 0, 1, '2019-04-08 03:17:43.915226', 1),
(13, 'Gatorade Blue Bolt 350ml', 'gatorade-blue-bolt-350ml', 'Gatorade Blue Bolt 350ml', '27.50', 'products/1229458264/1229458264.jpg', 0, 1, '2019-04-08 03:21:23.402028', 1),
(14, 'Marby John Pullman Special 400G', 'marby-john-pullman-special-400g', 'Marby John Pullman Special 400G', '38.00', 'products/1269840032/1269840032.jpg', 0, 1, '2019-04-08 03:23:38.951608', 2),
(15, 'Magnolia Pancake And Waffle Mix 180G..', 'magnolia-pancake-and-waffle-mix-180g', 'Magnolia Pancake And Waffle Mix 180G..', '24.65', 'products/3249852738/3249852738.jpg', 0, 1, '2019-04-08 03:25:09.515731', 2),
(16, 'My San Crushed Graham 200G', 'my-san-crushed-graham-200g', 'My San Crushed Graham 200G', '31.60', 'products/1664699794/1664699794.jpg', 0, 1, '2019-04-08 03:26:21.967678', 2),
(17, 'White King Puto Mix 400g', 'white-king-puto-mix-400g', 'White King Puto Mix 400g', '64.50', 'products/2505161611/2505161611.jpg', 0, 1, '2019-04-08 03:27:30.695379', 2),
(18, '555 Fried Sardines Hot And Spicy 155G', '555-fried-sardines-hot-and-spicy-155g', '555 Fried Sardines Hot And Spicy 155G', '24.50', 'products/125616793/125616793.jpg', 0, 1, '2019-04-08 03:33:33.465112', 3),
(19, '555 Sardines Tomato Sauce 155G', '555-sardines-tomato-sauce-155g', '555 Sardines Tomato Sauce 155G', '15.00', 'products/1645939840/1645939840.jpg', 0, 1, '2019-04-08 03:34:42.462902', 3),
(20, 'Del Monte Whole Kernel Corn 420G', 'del-monte-whole-kernel-corn-420g', 'Del Monte Whole Kernel Corn 420G', '38.25', 'products/1831645899/1831645899.jpg', 0, 1, '2019-04-08 03:35:50.478751', 3),
(21, 'Jolly Green Peas 155G', 'jolly-green-peas-155g', 'Jolly Green Peas 155G', '12.45', 'products/1795435799/1795435799.jpg', 0, 1, '2019-04-08 03:36:53.341474', 3),
(22, 'Jolly Whole Mushroom 284G', 'jolly-whole-mushroom-284g', 'Jolly Whole Mushroom 284G', '43.00', 'products/3859343464/3859343464.jpg', 0, 1, '2019-04-08 03:38:07.521773', 3),
(23, 'Argentina Meat Loaf 150g', 'argentina-meat-loaf-150g', 'Argentina Meat Loaf 150g', '17.00', 'products/1276644015/1276644015.jpg', 0, 1, '2019-04-08 03:40:48.615265', 3),
(24, 'Argentina Fiesta Sausage 175g', 'argentina-fiesta-sausage-175g', 'Argentina Fiesta Sausage 175g', '21.50', 'products/2223146401/2223146401.jpg', 0, 1, '2019-04-08 03:41:50.651961', 3),
(25, '3M Scotch Brite Scrub Sponge Anti-Bacterial', '3m-scotch-brite-scrub-sponge-anti-bacterial', '3M Scotch Brite Scrub Sponge Anti-Bacterial', '39.25', 'products/548020259/548020259.jpg', 0, 1, '2019-04-08 03:53:30.434947', 9),
(26, 'Albatross Refill Lemon 100G', 'albatross-refill-lemon-100g', 'Albatross Refill Lemon 100Gms', '46.50', 'products/552430680/552430680.jpg', 0, 1, '2019-04-08 03:54:28.623266', 9),
(27, 'Axion Dishwashing Liquid Lime 190Ml', 'axion-dishwashing-liquid-lime-190ml', 'Axion Dishwashing Liquid Lime 190Ml', '33.75', 'products/330969617/330969617.jpg', 0, 1, '2019-04-08 03:56:07.878597', 9),
(28, 'Baygon Mosquito Coil Floral 10s', 'baygon-mosquito-coil-floral-10s', 'Baygon Mosquito Coil Floral 10s', '15.00', 'products/2190011426/2190011426.jpg', 0, 1, '2019-04-08 03:58:41.842512', 9),
(29, 'Ariel Golden Bloom 66gx6', 'ariel-golden-bloom-66gx6', 'Ariel Golden Bloom 66gx6', '60.50', 'products/2040902761/2040902761.jpg', 0, 1, '2019-04-08 04:00:00.770468', 9),
(30, 'B29 Bar White 150g', 'b29-bar-white-150g', 'B29 Bar White 150g', '13.95', 'products/1918293109/1918293109.jpg', 0, 1, '2019-04-08 04:01:01.293007', 9),
(31, 'Champion Fabric Softener Pinkfresh 28mlx12s', 'champion-fabric-softener-pinkfresh-28mlx12s', 'Champion Fabric Softener Pinkfresh 28mlx12s', '47.00', 'products/2279820558/2279820558.jpg', 0, 1, '2019-04-08 04:02:06.398491', 9),
(32, 'Champion Powder Citrus Fresh 40gx6s', 'champion-powder-citrus-fresh-40gx6s', 'Champion Powder Citrus Fresh 40gx6s', '26.50', 'products/3306785484/3306785484.jpg', 0, 1, '2019-04-08 04:02:53.282112', 9),
(33, 'Downy Antibac Refill 800ml', 'downy-antibac-refill-800ml', 'Downy Antibac Refill 800ml', '127.50', 'products/2919688769/2919688769.jpg', 0, 1, '2019-04-08 04:05:05.368753', 9),
(34, 'Domex Multi-Purpose Cleaner Liquid Lemon 500Ml', 'domex-multi-purpose-cleaner-liquid-lemon-500ml', 'Domex Multi-Purpose Cleaner Liquid Lemon 500Ml', '83.00', 'products/2348273293/2348273293.jpg', 0, 1, '2019-04-08 04:06:52.623529', 9),
(35, 'Joy Dishwashing Kalamansi 500ml', 'joy-dishwashing-kalamansi-500ml', 'Joy Dishwashing Kalamansi 500ml', '99.00', 'products/2027304557/2027304557.jpg', 0, 1, '2019-04-08 04:08:06.316425', 9),
(36, 'Starwax Red Dyewax 90G', 'starwax-red-dyewax-90g', 'Starwax Red Dyewax 90G', '15.25', 'products/2276530359/2276530359.jpg', 0, 1, '2019-04-08 04:09:05.193757', 9),
(37, 'Yakult Cultured Milk 80mlx5', 'yakult-cultured-milk-80mlx5', 'Yakult Cultured Milk 80mlx5', '45.00', 'products/3840584769/3840584769.jpg', 0, 1, '2019-04-08 04:10:34.850934', 4),
(38, 'Anchor Unsalted Butter 227g', 'anchor-unsalted-butter-227g', 'Anchor Unsalted Butter 227g', '129.00', 'products/669770027/669770027.jpg', 0, 1, '2019-04-08 04:15:28.973705', 4),
(39, 'Calumet Baking Powder 50g', 'calumet-baking-powder-50g', 'Calumet Baking Powder 50g', '10.90', 'products/1850699914/1850699914.jpg', 0, 1, '2019-04-08 04:21:24.226175', 5),
(40, 'Cream All Purpose Flour 200g', 'cream-all-purpose-flour-200g', 'Cream All Purpose Flour 200g', '25.10', 'products/3341969978/3341969978.jpg', 0, 1, '2019-04-08 04:22:00.720864', 5),
(41, 'Cream Corn Starch 400g', 'cream-corn-starch-400g', 'Cream Corn Starch 400g', '35.40', 'products/56683049/56683049.jpg', 0, 1, '2019-04-08 04:22:46.211822', 5),
(42, 'Honeylicious All Purpose Honey 250ml', 'honeylicious-all-purpose-honey-250ml', 'Honeylicious All Purpose Honey 250ml', '54.00', 'products/1127382946/1127382946.jpg', 0, 1, '2019-04-08 04:23:20.067379', 5),
(43, 'Pure Cocoa Powder 250g', 'pure-cocoa-powder-250g', 'Pure Cocoa Powder 250g', '21.75', 'products/3375075884/3375075884.jpg', 0, 1, '2019-04-08 04:23:58.373425', 5),
(44, 'Queen Baking Soda 125g', 'queen-baking-soda-125g', 'Queen Baking Soda 125g', '10.61', 'products/1943435700/1943435700.jpg', 0, 1, '2019-04-08 04:24:35.817290', 5),
(45, 'Bioderm Soap Bloom Pink 60g', 'bioderm-soap-bloom-pink-60g', 'Bioderm Soap Bloom Pink 60g', '15.00', 'products/656866584/656866584.jpg', 0, 1, '2019-04-08 04:26:59.483060', 11),
(46, 'Dove Bar Soap Sensitive Beauty 100G', 'dove-bar-soap-sensitive-beauty-100g', 'Dove Bar Soap Sensitive Beauty 100G', '52.25', 'products/877531406/877531406.jpg', 0, 1, '2019-04-08 04:27:47.065619', 11),
(47, 'Green Cross Alcohol 40% 500ml', 'green-cross-alcohol-40-500ml', 'Green Cross Alcohol 40% 500ml', '50.50', 'products/2166987031/2166987031.jpg', 0, 1, '2019-04-08 04:28:59.534220', 11),
(48, 'Eskinol Facial Cleanser Pimple Fighting 75ml', 'eskinol-facial-cleanser-pimple-fighting-75ml', 'Eskinol Facial Cleanser Pimple Fighting 75ml', '33.75', 'products/2293477455/2293477455.jpg', 0, 1, '2019-04-08 04:29:47.005100', 11),
(49, 'Gillette Blue Ii Plus', 'gillette-blue-ii-plus', 'Gillette Blue Ii Plus', '24.75', 'products/2046158954/2046158954.jpg', 0, 1, '2019-04-08 04:30:15.911214', 11),
(50, 'Ponds White Beauty Day Cream Detox 6G', 'ponds-white-beauty-day-cream-detox-6g', 'Ponds White Beauty Day Cream Detox 6G', '32.75', 'products/2696309937/2696309937.jpg', 0, 1, '2019-04-08 04:30:50.011545', 11),
(51, 'Clear Shampoo Complete Soft Care 12Ml', 'clear-shampoo-complete-soft-care-12ml', 'Clear Shampoo Complete Soft Care 12Ml', '54.00', 'products/3216409140/3216409140.jpg', 0, 1, '2019-04-08 04:32:38.814957', 11),
(52, 'Cream Silk Hair Conditioner Damage Control 11Ml', 'cream-silk-hair-conditioner-damage-control-11ml', 'Cream Silk Hair Conditioner Damage Control 11Ml', '64.75', 'products/687725624/687725624.jpg', 0, 1, '2019-04-08 04:33:46.530682', 11),
(53, 'Carefree Superdry Flats 15s', 'carefree-superdry-flats-15s', 'Carefree Superdry Flats 15s', '25.25', 'products/2749586743/2749586743.jpg', 0, 1, '2019-04-08 04:34:47.001959', 11),
(54, 'Charmee All-Flow Dry Net w/ Wings 8s', 'charmee-all-flow-dry-net-w-wings-8s', 'Charmee All-Flow Dry Net w/ Wings 8s', '20.60', 'products/571394456/571394456.jpg', 0, 1, '2019-04-08 04:36:06.796487', 11),
(55, 'Ph Care Feminine Wash Cool Wind 50Ml', 'ph-care-feminine-wash-cool-wind-50ml', 'Ph Care Feminine Wash Cool Wind 50Ml', '52.00', 'products/2018185051/2018185051.jpg', 0, 1, '2019-04-08 04:36:48.594870', 11),
(56, 'Sisters Silk Floss (Day-Use)', 'sisters-silk-floss-day-use', 'Sisters Silk Floss (Day-Use)', '18.25', 'products/796179718/796179718.jpg', 0, 1, '2019-04-08 04:37:41.346954', 11),
(57, 'Those Days Sanitary Napkin Reg Individual Wrap 8s', 'those-days-sanitary-napkin-reg-individual-wrap-8s', 'Those Days Sanitary Napkin Reg Individual Wrap 8s', '12.00', 'products/2968197926/2968197926.jpg', 0, 1, '2019-04-08 04:38:44.894573', 11),
(58, 'Boogyman Crunch 24G', 'boogyman-crunch-24g', 'Boogyman Crunch 24G', '4.60', 'products/3860670025/3860670025.jpg', 0, 1, '2019-04-08 04:40:15.183482', 10),
(59, 'Boy Bawang Adobo 100g', 'boy-bawang-adobo-100g', 'Boy Bawang Adobo 100g', '14.75', 'products/1524987171/1524987171.jpg', 0, 1, '2019-04-08 04:42:13.887896', 10),
(60, 'Cebu Brand Sliced Dried Mangoes 200g', 'cebu-brand-sliced-dried-mangoes-200g', 'Cebu Brand Sliced Dried Mangoes 200g', '189.25', 'products/1270879099/1270879099.jpg', 0, 1, '2019-04-08 04:48:13.960015', 10),
(61, 'Cheese Ball 60g', 'cheese-ball-60g', 'Cheese Ball 60g', '11.85', 'products/265737354/265737354.jpg', 0, 1, '2019-04-08 04:50:10.455665', 10),
(62, 'Cheetos Crunchy Cheddar 16g', 'cheetos-crunchy-cheddar-16g', 'Cheetos Crunchy Cheddar 16g', '6.20', 'products/1945060108/1945060108.jpg', 0, 1, '2019-04-08 04:50:56.373281', 10),
(63, 'Chikito Hot & Spicy 5gx20s', 'chikito-hot-spicy-5gx20s', 'Chikito Hot & Spicy 5gx20s', '17.60', 'products/1728963119/1728963119.jpg', 0, 1, '2019-04-08 04:53:28.424822', 10),
(64, 'Bingo Choco Orange 28Gx10S', 'bingo-choco-orange-28gx10s', 'Bingo Choco Orange 28Gx10S', '50.70', 'products/2412984407/2412984407.jpg', 0, 1, '2019-04-08 04:54:31.211690', 10),
(65, 'Bread Pan Buttered Toast Flavor 24G', 'bread-pan-buttered-toast-flavor-24g', 'Bread Pan Buttered Toast Flavor 24G', '4.80', 'products/2167355786/2167355786.jpg', 0, 1, '2019-04-08 04:55:04.359398', 10),
(66, 'Barnuts Choco Peanut Bar 5gx20s', 'barnuts-choco-peanut-bar-5gx20s', 'Barnuts Choco Peanut Bar 5gx20s', '18.00', 'products/1198191836/1198191836.jpg', 0, 1, '2019-04-08 04:55:50.431797', 10),
(67, 'Cadbury Dairy Milk 15g', 'cadbury-dairy-milk-15g', 'Cadbury Dairy Milk 15g', '13.50', 'products/97917927/97917927.jpg', 0, 1, '2019-04-08 04:56:29.869795', 10),
(68, 'Beng Beng Choco 26.5gx10s', 'beng-beng-choco-265gx10s', 'Beng Beng Choco 26.5gx10s', '63.00', 'products/2044155281/2044155281.jpg', 0, 1, '2019-04-08 04:57:11.769711', 10),
(69, 'Butter Cream Crackers 25Gx10S', 'butter-cream-crackers-25gx10s', 'Butter Cream Crackers 25Gx10S', '48.40', 'products/964090734/964090734.jpg', 0, 1, '2019-04-08 04:58:09.812615', 10),
(70, 'Chips Delight Mini 35g', 'chips-delight-mini-35g', 'Chips Delight Mini 35g', '9.75', 'products/3517593675/3517593675.jpg', 0, 1, '2019-04-08 04:58:58.989473', 10),
(71, 'Dewberry Blueberries & Cream10s', 'dewberry-blueberries-cream10s', 'Dewberry Blueberries & Cream10s', '62.45', 'products/1979186811/1979186811.jpg', 0, 1, '2019-04-08 04:59:58.124355', 10),
(72, 'Cupp Keyk Choco Topps 10s', 'cupp-keyk-choco-topps-10s', 'Cupp Keyk Choco Topps 10s', '58.20', 'products/1914070702/1914070702.jpg', 0, 1, '2019-04-08 05:00:54.471602', 10),
(73, 'Aji Crispy Fry Garlic 238G', 'aji-crispy-fry-garlic-238g', 'Aji Crispy Fry Garlic 238G', '45.50', 'products/2562153112/2562153112.jpg', 0, 1, '2019-04-08 05:12:31.470995', 7),
(74, 'Aji Ginisa Flavor Mix 100g', 'aji-ginisa-flavor-mix-100g', 'Aji Ginisa Flavor Mix 100g', '24.75', 'products/1146736292/1146736292.jpg', 0, 1, '2019-04-08 05:13:06.701632', 7),
(75, 'Ajinomoto 100G', 'ajinomoto-100g', 'Ajinomoto 100G', '17.55', 'products/1877458287/1877458287.png', 0, 1, '2019-04-08 05:13:36.706574', 7),
(76, 'Alaska Crema All Purpose 250Ml', 'alaska-crema-all-purpose-250ml', 'Alaska Crema All Purpose 250Ml', '45.40', 'products/3589331995/3589331995.jpg', 0, 1, '2019-04-08 05:14:19.942684', 7),
(77, 'Alaska Crema Asada 370ml', 'alaska-crema-asada-370ml', 'Alaska Crema Asada 370ml', '46.50', 'products/342518873/342518873.jpg', 0, 1, '2019-04-08 05:14:57.634275', 7),
(78, 'Datu Puti Pares Pack 1L', 'datu-puti-pares-pack-1l', 'Datu Puti Pares Pack 1L', '63.00', 'products/1828701053/1828701053.jpg', 0, 1, '2019-04-08 05:15:30.546194', 7),
(79, 'Datu Puti Patis 150ml', 'datu-puti-patis-150ml', 'Datu Puti Patis 150ml', '9.20', 'products/2211430885/2211430885.jpg', 0, 1, '2019-04-08 05:16:01.068128', 7),
(80, 'Datu Puti Patis 1L', 'datu-puti-patis-1l', 'Datu Puti Patis 1L', '51.25', 'products/2091240484/2091240484.jpg', 0, 1, '2019-04-08 05:16:35.858739', 7),
(81, 'Datu Puti Soy Sauce 1L', 'datu-puti-soy-sauce-1l', 'Datu Puti Soy Sauce 1L', '37.85', 'products/3579366022/3579366022.jpg', 0, 1, '2019-04-08 05:17:15.415169', 7),
(82, 'Datu Puti Spiced Vinegar 350ml', 'datu-puti-spiced-vinegar-350ml', 'Datu Puti Spiced Vinegar 350ml', '27.20', 'products/1281690485/1281690485.jpg', 0, 1, '2019-04-08 05:17:53.206459', 7),
(83, 'Datu Puti Vinegar 1 L', 'datu-puti-vinegar-1-l', 'Datu Puti Vinegar 1 L', '30.45', 'products/3201526894/3201526894.jpg', 0, 1, '2019-04-08 05:18:45.369658', 7),
(84, 'Fidel Iodized Free Flowing 250g', 'fidel-iodized-free-flowing-250g', 'Fidel Iodized Free Flowing 250g', '9.00', 'products/1312434664/1312434664.jpg', 0, 1, '2019-04-08 05:19:38.604530', 7),
(85, 'Jam Black Pepper Powder 30g', 'jam-black-pepper-powder-30g', 'Jam Black Pepper Powder 30g', '21.70', 'products/2499757671/2499757671.jpg', 0, 1, '2019-04-08 05:20:12.646985', 7),
(86, 'Jam Bay Leaf 10g', 'jam-bay-leaf-10g', 'Jam Bay Leaf 10g', '5.25', 'products/587237170/587237170.jpg', 0, 1, '2019-04-08 05:20:46.104514', 7),
(87, 'Knorr Beef Cubes 12 Pcs', 'knorr-beef-cubes-12-pcs', 'Knorr Beef Cubes 12 Pcs', '55.50', 'products/265944376/265944376.jpg', 0, 1, '2019-04-08 05:21:22.764578', 7),
(88, 'Knorr Sinigang Sa Sampalok Mix Original 20G', 'knorr-sinigang-sa-sampalok-mix-original-20g', 'Knorr Sinigang Sa Sampalok Mix Original 20G', '10.70', 'products/3907977999/3907977999.jpg', 0, 1, '2019-04-08 05:22:09.610676', 7),
(89, 'Sanicare Cleansing Wipes 15 Sheets', 'sanicare-cleansing-wipes-15-sheets', 'Sanicare Cleansing Wipes 15 Sheets', '25.75', 'products/1557726530/1557726530.png', 0, 1, '2019-04-08 05:47:30.760287', 11),
(90, 'Femme Bathroom Tissue 2Ply by 4', 'femme-bathroom-tissue-2ply-by-4', 'Femme Bathroom Tissue 2Ply by 4', '32.50', 'products/1718874759/1718874759.jpg', 0, 1, '2019-04-08 05:48:50.753310', 11),
(91, 'uuyuy', 'ytyy', 'hjhj', '8778.00', 'products/624351321/624351321.jpg', 0, 1, '2019-04-12 05:52:41.598035', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags_tag`
--

CREATE TABLE `tags_tag` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags_tag`
--

INSERT INTO `tags_tag` (`id`, `title`, `slug`, `timestamp`, `active`) VALUES
(1, 'Canned/Jarred Goods', 'cannedjarredgoods', '2019-04-07 05:23:46.556147', 1),
(2, 'Beverages', 'beverages', '2019-04-07 05:24:35.159606', 1),
(3, 'Drinks', 'drinks', '2019-04-07 05:27:04.467473', 1),
(4, 'Softdrinks', 'softdrinks', '2019-04-08 06:40:48.473576', 1),
(5, 'Bread/bakery', 'breadbakery', '2019-04-08 06:41:37.989902', 1),
(6, 'Loaf bread', 'loafbread', '2019-04-08 06:47:23.387166', 1),
(7, 'Personal Care/Hygiene', 'personalcare', '2019-04-08 06:50:49.747698', 1),
(8, 'Hair Products', 'hairproducts', '2019-04-08 06:51:26.834807', 1),
(9, 'Skin Care', 'skincare', '2019-04-08 06:52:50.828541', 1),
(10, 'facial care/face', 'facialcare', '2019-04-08 06:54:25.821113', 1),
(11, 'Toiletries', 'toiletries', '2019-04-08 06:55:40.894017', 1),
(12, 'Sanitary Care', 'sanitarycare', '2019-04-08 06:57:26.315255', 1),
(13, 'Snack foods', 'snack-foods', '2019-04-08 07:08:54.346752', 1),
(14, 'Junk Food', 'junk-food', '2019-04-08 07:10:37.431576', 1),
(15, 'Chips', 'chips', '2019-04-08 07:11:22.611787', 1),
(16, 'Crackers', 'crackers', '2019-04-08 07:12:34.051843', 1),
(17, 'Chocolates', 'chocolates', '2019-04-08 07:14:14.737787', 1),
(18, 'Cornick', 'cornick', '2019-04-08 07:15:30.377074', 1),
(19, 'Household Products/Cleaning products', 'household-products', '2019-04-08 07:17:51.850127', 1),
(20, 'Laundry', 'laundry', '2019-04-08 07:19:55.517667', 1),
(21, 'Soap powder', 'soap-powder', '2019-04-08 07:21:15.485219', 1),
(22, 'Liquid detergent', 'liquid-detergent', '2019-04-08 07:22:47.738831', 1),
(23, 'Detergent', 'detergents', '2019-04-08 07:23:45.774248', 1),
(24, 'Brush', 'brush', '2019-04-08 07:24:14.671309', 1),
(25, 'Condiments/Dressing/Spices', 'condimentsdressingspices', '2019-04-08 07:26:24.911222', 1),
(26, 'Seasoning', 'seasoning', '2019-04-08 07:28:04.078462', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags_tag_products`
--

CREATE TABLE `tags_tag_products` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags_tag_products`
--

INSERT INTO `tags_tag_products` (`id`, `tag_id`, `product_id`) VALUES
(3, 1, 7),
(1, 1, 8),
(2, 1, 9),
(17, 1, 18),
(18, 1, 19),
(19, 1, 20),
(23, 1, 21),
(20, 1, 22),
(21, 1, 23),
(22, 1, 24),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(14, 2, 11),
(15, 2, 12),
(16, 2, 13),
(13, 2, 37),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 3, 11),
(11, 3, 12),
(12, 3, 37),
(24, 4, 1),
(25, 4, 2),
(27, 5, 1),
(34, 5, 5),
(37, 5, 6),
(38, 5, 14),
(39, 5, 15),
(40, 5, 16),
(32, 5, 64),
(33, 5, 65),
(35, 5, 69),
(36, 5, 71),
(41, 6, 4),
(42, 6, 5),
(43, 6, 6),
(44, 6, 14),
(45, 7, 46),
(46, 7, 47),
(47, 7, 48),
(48, 7, 49),
(49, 7, 50),
(50, 7, 51),
(51, 7, 52),
(52, 7, 55),
(53, 7, 56),
(56, 7, 57),
(54, 7, 89),
(55, 7, 90),
(57, 8, 51),
(58, 8, 52),
(61, 9, 46),
(59, 9, 48),
(60, 9, 50),
(65, 10, 46),
(62, 10, 48),
(63, 10, 49),
(64, 10, 50),
(66, 11, 90),
(67, 12, 45),
(68, 12, 47),
(69, 12, 49),
(70, 12, 53),
(71, 12, 54),
(72, 12, 55),
(73, 12, 56),
(76, 12, 57),
(74, 12, 89),
(75, 12, 90),
(90, 13, 30),
(87, 13, 59),
(88, 13, 60),
(89, 13, 61),
(86, 13, 62),
(91, 13, 63),
(77, 13, 64),
(78, 13, 65),
(79, 13, 66),
(80, 13, 67),
(81, 13, 68),
(82, 13, 69),
(83, 13, 70),
(84, 13, 71),
(85, 13, 72),
(94, 14, 59),
(95, 14, 61),
(96, 14, 62),
(97, 14, 63),
(92, 14, 70),
(93, 14, 72),
(98, 15, 58),
(99, 15, 70),
(100, 16, 69),
(102, 17, 10),
(103, 17, 11),
(104, 17, 68),
(101, 17, 72),
(105, 18, 59),
(106, 18, 63),
(113, 19, 25),
(114, 19, 26),
(115, 19, 27),
(116, 19, 28),
(117, 19, 29),
(118, 19, 30),
(119, 19, 31),
(107, 19, 32),
(108, 19, 33),
(109, 19, 34),
(110, 19, 35),
(112, 19, 47),
(111, 19, 90),
(121, 20, 29),
(122, 20, 30),
(123, 20, 31),
(120, 20, 32),
(125, 21, 29),
(124, 21, 32),
(126, 22, 27),
(127, 23, 29),
(128, 23, 30),
(129, 24, 25),
(146, 25, 38),
(147, 25, 39),
(130, 25, 73),
(131, 25, 74),
(132, 25, 75),
(133, 25, 76),
(134, 25, 77),
(135, 25, 78),
(136, 25, 79),
(137, 25, 80),
(138, 25, 81),
(139, 25, 82),
(140, 25, 83),
(141, 25, 84),
(142, 25, 85),
(143, 25, 86),
(144, 25, 87),
(145, 25, 88),
(148, 26, 74),
(149, 26, 75),
(150, 26, 79),
(151, 26, 80),
(152, 26, 81),
(153, 26, 83),
(154, 26, 84),
(155, 26, 85),
(156, 26, 86),
(157, 26, 87),
(158, 26, 88);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_guestemail`
--
ALTER TABLE `accounts_guestemail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses_address`
--
ALTER TABLE `addresses_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_address_billing_profile_id_115cdf27_fk_billing_b` (`billing_profile_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `billing_billingprofile`
--
ALTER TABLE `billing_billingprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `carts_cart`
--
ALTER TABLE `carts_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_cart_user_id_bd0756c7_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `carts_cart_products`
--
ALTER TABLE `carts_cart_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_cart_products_cart_id_product_id_75f0c8ea_uniq` (`cart_id`,`product_id`),
  ADD KEY `carts_cart_products_product_id_17f38e1e_fk_products_product_id` (`product_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_cart_id_7e0252e3_fk_carts_cart_id` (`cart_id`),
  ADD KEY `orders_order_billing_profile_id_0e11b610_fk_billing_b` (`billing_profile_id`),
  ADD KEY `orders_order_billing_address_id_deb02e83_fk_addresses_address_id` (`billing_address_id`),
  ADD KEY `orders_order_shipping_address_id_c4f8227a_fk_addresses` (`shipping_address_id`);

--
-- Indexes for table `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `products_product_category_id_9b594869_fk_products_category_id` (`category_id`),
  ADD KEY `products_product_id_slug_6c75c27d_idx` (`id`,`slug`);

--
-- Indexes for table `tags_tag`
--
ALTER TABLE `tags_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_tag_slug_78c2b8d8` (`slug`);

--
-- Indexes for table `tags_tag_products`
--
ALTER TABLE `tags_tag_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_products_tag_id_product_id_ed6e4461_uniq` (`tag_id`,`product_id`),
  ADD KEY `tags_tag_products_product_id_f64ffb65_fk_products_product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_guestemail`
--
ALTER TABLE `accounts_guestemail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `addresses_address`
--
ALTER TABLE `addresses_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing_billingprofile`
--
ALTER TABLE `billing_billingprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carts_cart`
--
ALTER TABLE `carts_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `carts_cart_products`
--
ALTER TABLE `carts_cart_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tags_tag`
--
ALTER TABLE `tags_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tags_tag_products`
--
ALTER TABLE `tags_tag_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses_address`
--
ALTER TABLE `addresses_address`
  ADD CONSTRAINT `addresses_address_billing_profile_id_115cdf27_fk_billing_b` FOREIGN KEY (`billing_profile_id`) REFERENCES `billing_billingprofile` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `billing_billingprofile`
--
ALTER TABLE `billing_billingprofile`
  ADD CONSTRAINT `billing_billingprofile_user_id_1a5112fa_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `carts_cart`
--
ALTER TABLE `carts_cart`
  ADD CONSTRAINT `carts_cart_user_id_bd0756c7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `carts_cart_products`
--
ALTER TABLE `carts_cart_products`
  ADD CONSTRAINT `carts_cart_products_cart_id_3124fdb4_fk_carts_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `carts_cart` (`id`),
  ADD CONSTRAINT `carts_cart_products_product_id_17f38e1e_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD CONSTRAINT `orders_order_billing_address_id_deb02e83_fk_addresses_address_id` FOREIGN KEY (`billing_address_id`) REFERENCES `addresses_address` (`id`),
  ADD CONSTRAINT `orders_order_billing_profile_id_0e11b610_fk_billing_b` FOREIGN KEY (`billing_profile_id`) REFERENCES `billing_billingprofile` (`id`),
  ADD CONSTRAINT `orders_order_cart_id_7e0252e3_fk_carts_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `carts_cart` (`id`),
  ADD CONSTRAINT `orders_order_shipping_address_id_c4f8227a_fk_addresses` FOREIGN KEY (`shipping_address_id`) REFERENCES `addresses_address` (`id`);

--
-- Constraints for table `products_product`
--
ALTER TABLE `products_product`
  ADD CONSTRAINT `products_product_category_id_9b594869_fk_products_category_id` FOREIGN KEY (`category_id`) REFERENCES `products_category` (`id`);

--
-- Constraints for table `tags_tag_products`
--
ALTER TABLE `tags_tag_products`
  ADD CONSTRAINT `tags_tag_products_product_id_f64ffb65_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  ADD CONSTRAINT `tags_tag_products_tag_id_7ed0fcd2_fk_tags_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags_tag` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
