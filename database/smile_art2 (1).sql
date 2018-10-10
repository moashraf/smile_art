-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2018 at 01:14 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smile_art2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories__products`
--

CREATE TABLE `categories__products` (
  `id` int(10) UNSIGNED NOT NULL,
  `parentid` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `single_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories__products`
--

INSERT INTO `categories__products` (`id`, `parentid`, `title`, `slug`, `lang`, `single_photo`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(26, 0, 'مشروعات حالية\r\n', 'voluptatem-deserunt-libero-debitis-fugit-vel-veniam', 'ar', '881928967banner - Copy - Copy.jpg', 'Necessitatibus soluta itaque velit. Doloribus aliquam ad nihil voluptatem ut at.', '2018-04-05 13:22:55', '2018-09-20 10:40:15', NULL),
(27, 0, 'مشاريع سابقة\r\n', 'nihil-iste-voluptatem-sequi-dolorum-architecto-et-quo-ullam', 'ar', 'c2.jpg', 'sdfg', '2018-04-05 13:22:57', '2018-07-29 09:52:44', NULL),
(32, 0, 'مشروعات تحت الانشاء\r\n', 'voluptatem-deserunt-libero-debitis-fugit-vel-veniam', 'ar', 'c2.jpg', 'Necessitatibus soluta itaque velit. Doloribus aliquam ad nihil voluptatem ut at.', '2018-04-05 13:22:55', '2018-07-25 13:28:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `single_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `title`, `body`, `slug`, `single_photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'fg', 'dfgdf', 'dfgfd', '100251532logo-two.png', '2018-08-16 13:11:26', '2018-10-10 07:33:39', '2018-10-10 07:33:39'),
(13, 'fgj', 'ghjghj', 'ghj', '14757493101107575438slide-3.jpg', '2018-10-10 07:27:06', '2018-10-10 07:33:28', NULL),
(14, 'ghnvb', 'vbnvh', 'vbn', '9583076971107575438slide-3.jpg', '2018-10-10 07:32:59', '2018-10-10 07:32:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `single_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `title`, `body`, `single_photo`, `type`, `link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'بيلابل', 'بلال', '17804756762.png', 'بلالبا', 'لبابلا', '2018-09-27 09:38:59', '2018-10-10 07:39:32', NULL),
(2, NULL, NULL, '6115403424.jpg', NULL, NULL, '2018-09-27 09:39:50', '2018-10-10 07:40:04', NULL),
(3, NULL, NULL, '1098838510drawing-room.jpg', NULL, NULL, '2018-09-27 09:43:13', '2018-09-27 10:07:24', NULL),
(11, 'djnh', NULL, '1622990221107575438slide-3.jpg', NULL, NULL, '2018-10-10 07:39:24', '2018-10-10 07:39:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_05_105431_create_products_table', 1),
(4, '2018_04_05_114510_create_categories__products_table', 1),
(5, '2018_04_05_115210_create_site_stings_table', 1),
(6, '2018_04_05_115646_create_sliders_table', 1),
(7, '2018_04_05_115932_products_photos', 1),
(8, '2018_09_18_102950_create_notifications_table', 2),
(9, '2018_09_19_114203_create_orders_table', 3),
(10, '2018_09_19_114641_create_projects_cats_table', 4),
(11, '2018_09_23_084724_create_requests_table', 5),
(12, '2018_09_27_103529_create_videos_table', 6),
(13, '2018_09_27_103802_create_images_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('24ef7a4e-4d87-4c1d-bc61-ff2c1edc4ca4', 'App\\Notifications\\figoname', 2, 'App\\User', '{\"data\":\"add new SERVICE \"}', NULL, '2018-09-18 10:46:39', '2018-09-18 10:46:39'),
('3a710e2c-2bc8-4905-afce-31933d85c7df', 'App\\Notifications\\figoname', 1, 'App\\User', '{\"data\":\"add new SERVICE \"}', '2018-09-27 10:24:41', '2018-09-27 10:24:41', '2018-09-27 10:24:41'),
('4040f7d6-0cd9-47a3-bb79-49a35f452214', 'App\\Notifications\\figoname', 2, 'App\\User', '{\"data\":\"add new SERVICE \"}', NULL, '2018-09-18 10:21:40', '2018-09-18 10:21:40'),
('4066da32-3a3d-4d7a-95e2-853bf58fd01d', 'App\\Notifications\\figoname', 2, 'App\\User', '{\"data\":\"add new SERVICE \"}', NULL, '2018-09-27 10:24:41', '2018-09-27 10:24:41'),
('7ee5fb05-fe73-4aab-97db-ac9b657137a8', 'App\\Notifications\\figoname', 2, 'App\\User', '{\"data\":\"go naw \"}', NULL, '2018-09-18 09:49:43', '2018-09-18 09:49:43'),
('7f398acb-3fe3-41ee-9d0d-d0f479776899', 'App\\Notifications\\figoname', 1, 'App\\User', '{\"data\":\"go naw \"}', '2018-09-18 10:46:23', '2018-09-18 09:49:42', '2018-09-18 10:46:23'),
('987bee22-32f7-4fcf-8c00-7ba3d840d303', 'App\\Notifications\\figoname', 1, 'App\\User', '{\"data\":\"add new SERVICE \"}', '2018-09-18 10:50:07', '2018-09-18 10:50:07', '2018-09-18 10:50:07'),
('e5bdc0a9-58c9-4d58-9da3-8bbe63462427', 'App\\Notifications\\figoname', 1, 'App\\User', '{\"data\":\"add new SERVICE \"}', '2018-09-18 10:46:39', '2018-09-18 10:46:39', '2018-09-18 10:46:39'),
('e6e2db0d-8a0b-4db9-9719-af80c6e178db', 'App\\Notifications\\figoname', 2, 'App\\User', '{\"data\":\"add new SERVICE \"}', NULL, '2018-09-18 10:50:07', '2018-09-18 10:50:07'),
('f4fb60be-ba56-47cc-8baa-057b8184183c', 'App\\Notifications\\figoname', 1, 'App\\User', '{\"data\":\"add new SERVICE \"}', '2018-09-18 10:46:23', '2018-09-18 10:21:40', '2018-09-18 10:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `n_e_w_s`
--

CREATE TABLE `n_e_w_s` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `single_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `n_e_w_s`
--

INSERT INTO `n_e_w_s` (`id`, `title`, `body`, `single_photo`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'محمد علي', 'شركه كويسه', '12063849241107575438slide-3.jpg', 'مهندس', NULL, '2018-10-10 07:43:57', NULL),
(2, 'باغبلات', 'dsf', '7509738044.jpg', 'dsf', NULL, '2018-10-10 07:44:04', NULL),
(3, 'باغبلات', 'dsf', '1136285850apartment-01-150x150.jpg', 'dsf', NULL, '2018-09-27 10:20:25', NULL),
(4, 'باغبلات', 'dsf', '1615481246MT-5856_23.jpg', 'dsf', NULL, NULL, NULL),
(5, 'بيال', 'لالبا', '1587166181apartment-01-150x150.jpg', 'لبابلا', '2018-09-27 10:20:11', '2018-09-27 10:20:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(199) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `quantity`, `title`, `body`, `email`, `phone`, `status`, `product`, `created_at`, `updated_at`, `deleted_at`) VALUES
(19, NULL, 'VCBCV', 'BCVBVCB', NULL, 'CVBVC', NULL, NULL, '2018-09-27 12:24:09', '2018-09-27 12:24:09', NULL),
(20, NULL, 'Audrey Block', 'ؤلاتاااااا', 'map00so@mapso.com', '1091357842', NULL, NULL, '2018-09-29 22:16:49', '2018-09-29 22:16:49', NULL),
(21, NULL, 'سبيب', 'يبيبيب', 'mapso@mapso.com', '1091357842', NULL, NULL, '2018-09-29 22:18:51', '2018-09-29 22:18:51', NULL),
(22, NULL, 'محمد', 'لسيعه  يسالبعهخب ل  سيبخهلاق لخ', 'figo_00735@yahoo.com', '01054154154', 'اتصل بنا', NULL, '2018-09-29 22:20:46', '2018-09-29 22:20:46', NULL),
(23, NULL, 'Audrey Block', 'بلبل', 'map00so@mapso.com', '1091357842', 'طلب وحدتك', NULL, '2018-09-29 22:22:22', '2018-09-29 22:22:22', NULL),
(24, NULL, 'شقه بحري بالشروق    خالصه بنك', 'يبلبيل', 'بيلبي', 'بلبيل', 'اتصل بنا', NULL, '2018-09-30 01:55:40', '2018-09-30 01:55:40', NULL),
(25, NULL, 'dasfdsf', 'fghfgh', 'fgh', 'dsfG@edgrtf.dfh', NULL, NULL, '2018-10-10 07:49:34', '2018-10-10 07:49:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `Area` text COLLATE utf8mb4_unicode_ci,
  `Rooms` text COLLATE utf8mb4_unicode_ci,
  `Colors` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `single_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bathroom` text COLLATE utf8mb4_unicode_ci,
  `Net_weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Packing_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Area`, `Rooms`, `Colors`, `name`, `body`, `single_photo`, `bathroom`, `Net_weight`, `Note`, `Packing_content`, `cat_id`, `lang`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(26, NULL, 'hnjk', NULL, 'asdfsdf erfdf', 'Et quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.Et quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.Et quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.Et quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.', '1615481246MT-5856_23.jpg', 'Voluptates corporis quo iEt quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.psam ratione debitis quo et voluptate. Blanditiis quia quis officiis.', '161', 'vel', 'Aut ullam enim est. Eos qui qui non molestias sit. Aperiam ut a ad sit a.', 26, 'ar', 'vel-enim-tenetur-voluptas-ut-facilis', '2018-04-05 13:22:06', '2018-09-26 13:14:23', NULL),
(27, 'bnmn', '546757', 'vgvj f fg', 'sadfds', 'Non voluptatum deleniti qui possimus. Aut placeat et nobis.Non voluptatum deleniti qui possimus. Aut placeat et nobis.', '843963112property-01-exterior-680x510.jpg', '5', '257', 'aut', 'Nobis blanditiis quos non ipsum. Eveniet debitis molestiae voluptas qui voluptas.', 26, 'ar', 'dfgh dft r t rtyrytr', '2018-04-05 13:22:13', '2018-09-26 13:10:25', NULL),
(28, NULL, NULL, 'fhjg', 'Miss Phoebe Kuphal PhD', 'Quam est perferendis eius unde consequatur impedit laborum. Voluptas quod qui adipisci sit labore.', '938004168property-01-exterior-680x510.jpg', 'Mollitia eaque illo ea. Ad ut nemo praesentium et nihil.', '295', 'vitae', 'Incidunt hic minima aperiam. Maiores sunt sunt non. Hic quia ipsam nesciunt sed.', 27, 'ar', 'eum-quos-in-ipsum-consequatur', '2018-04-05 13:22:21', '2018-09-26 13:10:14', NULL),
(29, NULL, NULL, NULL, 'Dr. Kendra Rohan', 'Voluptates sed ea magnam sed. Perferendis occaecati enim sapiente distinctio.', '1489711713property-01-exterior-680x510.jpg', 'Soluta est voluptas est dolores quia rerum. Sit iure et amet et maxime nam.', '100', 'quos', 'Quas temporibus voluptatum error ut ea. Nesciunt vel fugiat blanditiis optio reiciendis.', 27, 'ar', 'cupiditate-unde-nam-qui-quia-qui', '2018-04-05 13:22:25', '2018-09-26 13:10:51', NULL),
(31, NULL, NULL, NULL, 'sdf', 'dfd', '843963112property-01-exterior-680x510.jpg', 'sdf', 'sdf', 'fdf', 'sdf', 26, 'ar', 'sdfd', '2018-04-15 07:43:14', '2018-09-29 21:12:06', NULL),
(36, NULL, NULL, NULL, '282185', 'fhfgjh', '843963112property-01-exterior-680x510.jpg', 'fghfg', 'hfgh', 'fgh', 'fghfg', 26, 'ar', 'gfhfgh', '2018-04-17 05:42:37', '2018-09-29 21:11:55', NULL),
(37, NULL, NULL, NULL, 'ghg', 'hgfhg', '843963112property-01-exterior-680x510.jpg', NULL, NULL, NULL, NULL, 32, NULL, 'fghgfh', '2018-07-29 09:36:59', '2018-09-17 12:43:39', NULL),
(38, NULL, NULL, NULL, 'asdfds', 'dfgdfg', '843963112property-01-exterior-680x510.jpg', NULL, NULL, NULL, NULL, 27, NULL, 'dfgdfg', '2018-07-29 09:47:18', '2018-09-29 21:12:46', '2018-09-29 21:12:46'),
(39, NULL, NULL, NULL, 'tdyhfg', 'ghgfhfg', '843963112property-01-exterior-680x510.jpg', NULL, NULL, NULL, NULL, 32, NULL, 'fghgfhfgh', '2018-07-31 14:08:23', '2018-09-17 12:43:46', NULL),
(40, NULL, NULL, NULL, 'sdf', 'dsfsdf', '893148110MT-5856_23.jpg', NULL, NULL, NULL, NULL, 26, NULL, 'sfdas', '2018-08-16 07:29:49', '2018-09-26 13:13:40', NULL),
(41, NULL, 'hnjk', NULL, 'asdfsdf erfdf', 'Et quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.Et quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.Et quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.Et quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.', '1718010453charge.jpg', 'Voluptates corporis quo iEt quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.psam ratione debitis quo et voluptate. Blanditiis quia quis officiis.', '161', 'vel', 'Aut ullam enim est. Eos qui qui non molestias sit. Aperiam ut a ad sit a.', 32, 'ar', 'vel-enim-tenetur-voluptas-ut-facilis', '2018-04-05 13:22:06', '2018-09-23 08:28:38', '2018-09-23 08:28:38'),
(42, NULL, NULL, NULL, 'sdf', 'dfd', '519674536MT-5856_23.jpg', 'sdf', 'sdf', 'fdf', 'sdf', 27, 'ar', 'sdfd', '2018-04-15 07:44:11', '2018-09-26 13:13:46', NULL),
(43, NULL, 'hnjk', NULL, 'asdfsdf erfdf', 'Et quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.Et quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.Et quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.Et quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.', '1325322216MT-5856_23.jpg', 'Voluptates corporis quo iEt quas ab et magni blanditiis. Aut exercitationem iste in quia et eum.psam ratione debitis quo et voluptate. Blanditiis quia quis officiis.', '161', 'vel', 'Aut ullam enim est. Eos qui qui non molestias sit. Aperiam ut a ad sit a.', 27, 'ar', 'vel-enim-tenetur-voluptas-ut-facilis', '2018-04-05 13:22:06', '2018-09-26 13:13:08', NULL),
(44, 'bnmn', NULL, 'bnmnb', 'sadfds', 'Non voluptatum deleniti qui possimus. Aut placeat et nobis.Non voluptatum deleniti qui possimus. Aut placeat et nobis.', '1851702741MT-5856_23.jpg', 'Est ut a ut et voluptatum corporis incidunt. Blanditiis culpa velit et numquam ea tempora.Est ut a ut et voluptatum corporis incidunt. Blanditiis culpa velit et numquam ea tempora.', '257', 'aut', 'Nobis blanditiis quos non ipsum. Eveniet debitis molestiae voluptas qui voluptas.', 26, 'ar', 'dfgh dft r t rtyrytr', '2018-04-05 13:22:13', '2018-09-26 13:41:37', NULL),
(45, NULL, NULL, 'fhjg', 'Miss Phoebe Kuphal PhD', 'Quam est perferendis eius unde consequatur impedit laborum. Voluptas quod qui adipisci sit labore.', '1526002178MT-5856_23.jpg', 'Mollitia eaque illo ea. Ad ut nemo praesentium et nihil.', '295', 'vitae', 'Incidunt hic minima aperiam. Maiores sunt sunt non. Hic quia ipsam nesciunt sed.', 26, 'ar', 'eum-quos-in-ipsum-consequatur', '2018-04-05 13:22:21', '2018-09-26 13:13:54', NULL),
(46, NULL, NULL, NULL, 'Dr. Kendra Rohan', 'Voluptates sed ea magnam sed. Perferendis occaecati enim sapiente distinctio.', '463801497MT-5856_23.jpg', 'Soluta est voluptas est dolores quia rerum. Sit iure et amet et maxime nam.', '100', 'quos', 'Quas temporibus voluptatum error ut ea. Nesciunt vel fugiat blanditiis optio reiciendis.', 26, 'ar', 'cupiditate-unde-nam-qui-quia-qui', '2018-04-05 13:22:25', '2018-09-26 13:13:31', NULL),
(47, NULL, NULL, NULL, 'dfsd', 'gfsdsg', '1821007302property-01-exterior-818x417.jpg', NULL, NULL, NULL, NULL, 32, NULL, 'sfdf', '2018-09-29 21:11:37', '2018-09-29 21:11:37', NULL),
(48, '100', '2', NULL, 'محم', 'يبلي بلا بيلابا', '769482622property-01-exterior-818x417.jpg', '1', NULL, NULL, NULL, 26, NULL, NULL, '2018-09-30 01:45:51', '2018-09-30 01:45:51', NULL),
(49, NULL, NULL, NULL, 'يفغاف', 'بلابلا', '50310780kitchen.jpg', NULL, NULL, NULL, NULL, 26, NULL, NULL, '2018-09-30 02:00:29', '2018-09-30 02:00:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productsphotos`
--

CREATE TABLE `productsphotos` (
  `id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsphotos`
--

INSERT INTO `productsphotos` (`id`, `Product_id`, `Photo`, `lang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(26, 26, '17823291847.jpg', 'en', '2018-04-15 17:13:22', '2018-04-16 13:32:16', '2018-04-16 13:32:16'),
(28, 26, '21189732127.jpg', 'en', '2018-04-15 17:13:48', '2018-04-16 13:32:50', '2018-04-16 13:32:50'),
(29, 26, '1787182263alone_img.jpg', 'en', '2018-04-15 17:13:48', '2018-04-16 13:34:03', '2018-04-16 13:34:03'),
(30, 26, '2099301343mac-book.png', 'en', '2018-04-15 17:13:48', '2018-04-17 06:09:32', '2018-04-17 06:09:32'),
(31, 26, '826083800slide3.png', 'en', '2018-04-15 17:13:48', '2018-04-16 13:34:46', '2018-04-16 13:34:46'),
(32, 26, '1747609906g1.png', 'en', '2018-04-16 13:32:31', '2018-04-17 08:47:20', '2018-04-17 08:47:20'),
(33, 26, '1047872436slide3.png', 'en', '2018-04-16 13:32:32', '2018-04-16 13:32:36', '2018-04-16 13:32:36'),
(34, 26, '1808043914224926650g1.png', 'en', '2018-04-17 06:09:29', '2018-07-25 12:26:04', '2018-07-25 12:26:04'),
(35, 26, '414216829447392277g1.png', 'en', '2018-04-17 06:09:29', '2018-07-25 12:26:02', '2018-07-25 12:26:02'),
(36, 26, '67881741470740038g1.png', 'en', '2018-04-17 06:09:29', '2018-07-25 12:26:07', '2018-07-25 12:26:07'),
(37, 26, '1765193739606756885g1.png', 'en', '2018-04-17 06:09:29', '2018-09-17 12:42:49', '2018-09-17 12:42:49'),
(38, 26, '1202910052753732218cake5.jpg', 'en', '2018-04-17 06:09:29', '2018-09-17 12:42:47', '2018-09-17 12:42:47'),
(39, 27, '617806909224926650g1.png', 'en', '2018-04-17 06:10:30', '2018-09-17 12:43:54', '2018-09-17 12:43:54'),
(40, 27, '36774509447392277g1.png', 'en', '2018-04-17 06:10:30', '2018-07-25 12:26:00', '2018-07-25 12:26:00'),
(41, 27, '1744383920753732218cake5.jpg', 'en', '2018-04-17 06:10:30', '2018-07-25 12:25:57', '2018-07-25 12:25:57'),
(42, 29, '138441997753732218cake5.jpg', 'en', '2018-04-17 06:10:57', '2018-09-17 12:42:52', '2018-09-17 12:42:52'),
(43, 33, '2044574486753732218cake5.jpg', 'en', '2018-04-17 06:11:22', '2018-09-17 12:43:57', '2018-09-17 12:43:57'),
(44, 35, '1453155616447392277g1.png', 'en', '2018-04-17 06:11:52', '2018-09-17 12:43:26', '2018-09-17 12:43:26'),
(45, 35, '541924521753732218cake5.jpg', 'en', '2018-04-17 06:11:52', '2018-09-17 12:43:28', '2018-09-17 12:43:28'),
(46, 36, '914568710224926650g1.png', 'en', '2018-04-17 06:12:03', '2018-09-17 12:43:14', '2018-09-17 12:43:14'),
(47, 36, '707161766447392277g1.png', 'en', '2018-04-17 06:12:03', '2018-09-17 12:43:18', '2018-09-17 12:43:18'),
(48, 36, '67832547753732218cake5.jpg', 'en', '2018-04-17 06:12:03', '2018-09-17 12:43:21', '2018-09-17 12:43:21'),
(49, 29, '138441997753732218cake5.jpg', 'en', '2018-04-17 06:10:57', '2018-09-17 12:42:53', '2018-09-17 12:42:53'),
(50, 33, '2044574486753732218cake5.jpg', 'en', '2018-04-17 06:11:22', '2018-04-17 06:11:22', NULL),
(51, 35, '1453155616447392277g1.png', 'en', '2018-04-17 06:11:52', '2018-09-17 12:43:31', '2018-09-17 12:43:31'),
(52, 35, '541924521753732218cake5.jpg', 'en', '2018-04-17 06:11:52', '2018-04-17 06:11:52', NULL),
(53, 36, '914568710224926650g1.png', 'en', '2018-04-17 06:12:03', '2018-09-17 12:43:23', '2018-09-17 12:43:23'),
(54, 36, '707161766447392277g1.png', 'en', '2018-04-17 06:12:03', '2018-09-26 13:14:49', '2018-09-26 13:14:49'),
(55, 36, '67832547753732218cake5.jpg', 'en', '2018-04-17 06:12:03', '2018-09-26 13:14:50', '2018-09-26 13:14:50'),
(56, 27, '753928010banner.jpg', 'ar', '2018-09-17 12:42:20', '2018-09-26 13:14:29', '2018-09-26 13:14:29'),
(57, 27, '1100499340banner - Copy (2).jpg', 'ar', '2018-09-17 12:42:20', '2018-09-26 13:14:31', '2018-09-26 13:14:31'),
(58, 27, '154016628banner - Copy - Copy.jpg', 'ar', '2018-09-17 12:42:20', '2018-09-26 13:14:33', '2018-09-26 13:14:33'),
(59, 28, '2025817288banner - Copy - Copy.jpg', 'ar', '2018-09-17 12:42:33', '2018-09-26 13:14:35', '2018-09-26 13:14:35'),
(60, 28, '1636990370banner - Copy (2).jpg', 'ar', '2018-09-17 12:42:33', '2018-09-26 13:14:37', '2018-09-26 13:14:37'),
(61, 28, '15542441banner - Copy.jpg', 'ar', '2018-09-17 12:42:33', '2018-09-26 13:14:38', '2018-09-26 13:14:38'),
(62, 28, '1899765874banner.jpg', 'ar', '2018-09-17 12:42:33', '2018-09-26 13:14:40', '2018-09-26 13:14:40'),
(63, 26, '3177916banner - Copy (2).jpg', 'ar', '2018-09-17 12:42:44', '2018-09-26 13:04:17', '2018-09-26 13:04:17'),
(64, 26, '164296666banner - Copy.jpg', 'ar', '2018-09-17 12:42:44', '2018-09-26 13:04:20', '2018-09-26 13:04:20'),
(65, 26, '1616301884banner.jpg', 'ar', '2018-09-17 12:42:44', '2018-09-26 13:14:26', '2018-09-26 13:14:26'),
(66, 29, '1606132017banner - Copy (2).jpg', 'ar', '2018-09-17 12:43:01', '2018-09-26 13:14:42', '2018-09-26 13:14:42'),
(67, 29, '402860213banner - Copy.jpg', 'ar', '2018-09-17 12:43:01', '2018-09-26 13:14:44', '2018-09-26 13:14:44'),
(68, 29, '1131776907banner.jpg', 'ar', '2018-09-17 12:43:01', '2018-09-26 13:14:47', '2018-09-26 13:14:47'),
(69, 32, '1538232837banner - Copy (2).jpg', 'ar', '2018-09-17 12:43:10', '2018-09-17 12:43:10', NULL),
(70, 32, '1047375831banner - Copy.jpg', 'ar', '2018-09-17 12:43:10', '2018-09-17 12:43:10', NULL),
(71, 26, '341560364slider-1.jpg', 'ar', '2018-09-26 13:03:45', '2018-09-26 13:03:45', NULL),
(72, 27, '812378828slide-2.jpg', 'ar', '2018-09-26 13:09:53', '2018-09-26 13:09:53', NULL),
(73, 27, '306251258slide-3.jpg', 'ar', '2018-09-26 13:09:53', '2018-09-26 13:09:53', NULL),
(74, 27, '788257675slider-1.jpg', 'ar', '2018-09-26 13:09:53', '2018-09-26 13:09:53', NULL),
(75, 28, '101903521property-01-exterior-680x510.jpg', 'ar', '2018-09-26 13:10:14', '2018-09-26 13:10:14', NULL),
(76, 29, '794889973slide-2.jpg', 'ar', '2018-09-26 13:10:51', '2018-09-26 13:10:51', NULL),
(77, 29, '1529899077slide-3.jpg', 'ar', '2018-09-26 13:10:52', '2018-09-26 13:10:52', NULL),
(78, 29, '136024789slider-1.jpg', 'ar', '2018-09-26 13:10:52', '2018-09-26 13:10:52', NULL),
(79, 40, '821640831slide-3.jpg', 'ar', '2018-09-26 13:15:03', '2018-09-26 13:15:03', NULL),
(80, 40, '918209242slider-1.jpg', 'ar', '2018-09-26 13:15:03', '2018-09-26 13:15:03', NULL),
(81, 47, '1881996902property-01-exterior-818x417.jpg', 'ar', '2018-09-29 21:11:37', '2018-09-29 21:11:37', NULL),
(82, 47, '133845655slide-2.jpg', 'ar', '2018-09-29 21:11:38', '2018-09-29 21:11:38', NULL),
(83, 47, '1589344031slide-3.jpg', 'ar', '2018-09-29 21:11:38', '2018-09-29 21:11:38', NULL),
(84, 47, '787480958slider-1.jpg', 'ar', '2018-09-29 21:11:38', '2018-09-29 21:11:38', NULL),
(85, 31, '846565469slide-2.jpg', 'ar', '2018-09-29 21:12:07', '2018-09-29 21:12:07', NULL),
(86, 31, '1674858835slide-3.jpg', 'ar', '2018-09-29 21:12:07', '2018-09-29 21:12:07', NULL),
(87, 31, '1939238741slider-1.jpg', 'ar', '2018-09-29 21:12:07', '2018-09-29 21:12:07', NULL),
(88, 48, '55680352slide-2.jpg', 'ar', '2018-09-30 01:45:51', '2018-09-30 01:45:51', NULL),
(89, 48, '839149353slide-3.jpg', 'ar', '2018-09-30 01:45:51', '2018-09-30 01:45:51', NULL),
(90, 48, '559413981slider-1.jpg', 'ar', '2018-09-30 01:45:51', '2018-09-30 01:45:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects_cats`
--

CREATE TABLE `projects_cats` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects_cats`
--

INSERT INTO `projects_cats` (`id`, `title`, `body`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Seating', 'Seating', 'Seating', NULL, NULL, NULL),
(2, 'Desks', 'Seating', 'fgf', NULL, '2018-09-20 07:09:40', NULL),
(3, 'Partitions', 'Seating', 'Seating', NULL, '2018-09-20 07:08:55', '2018-09-20 07:08:55'),
(4, 'Seating', 'Seating', 'Seating', NULL, NULL, NULL),
(5, 'fgjh', 'jhgj', 'hgjhgj', '2018-09-20 07:08:41', '2018-09-20 07:08:41', NULL),
(6, 'sfdgr', 'fgdfgfd', 'dfgdf', '2018-09-20 07:08:50', '2018-09-20 07:08:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `title`, `body`, `email`, `phone`, `product`, `quantity`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sdfgds', 'gfd gsdf gds ', 'fdgfd', 'dfg', 'dfg', 'dfgdf', 'fdgdf', '2018-09-23 06:57:41', '2018-09-23 06:57:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_stings`
--

CREATE TABLE `site_stings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_stings`
--

INSERT INTO `site_stings` (`id`, `key`, `value`, `lang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(27, 'Web site name', 'smile art hvujhfyuj', 'ar', '2018-04-05 15:17:11', '2018-10-10 07:52:18', NULL),
(31, 'phone', '2011117253016095-22156126', 'ar', '2018-04-05 15:17:11', '2018-10-10 07:53:11', NULL),
(32, 'Mail', 'contact@elhelow.com', 'ar', '2018-04-05 15:17:11', '2018-04-05 15:17:11', NULL),
(33, 'facebook', 'https://facebook.com', 'ar', '2018-04-05 15:17:11', '2018-09-27 10:23:41', NULL),
(34, 'About Us', 'بدأ العمل في شركة سفير عام 2005 وتطورت الشركة في هذا المجال حتي أنتجت الكثير من المنتجات التي تخدم المجال, حيث تسعي شركة سفير لتوفير أجود المنتجات بأفضل الأسعار التنافسية للأسواق المصرية والتصدير بفضل الخبرة الطويلة للكادر الإداري والمؤهلات العالية للفنين والعمال\r\n<br>\r\nتقع شركة سفير في المنطقة الصناعية الثانية بمدينة 6 أكتوبر والإدارة بشارع الهرم في الجيزة\r\n\r\n', 'ar', '2018-04-05 15:17:11', '2018-04-05 15:17:11', NULL),
(35, 'mop', '0105485151', 'ar', '2018-04-05 15:17:12', '2018-09-27 10:23:34', NULL),
(37, 'Location', 'Lorem ipsum dolor sit amet consectetur adipisicing.', 'ar', '2018-04-05 15:17:12', '2018-04-05 15:17:12', NULL),
(38, 'working time', '  \r\nالمواعيد من 09:00 ص الي 05:00 م كل يوم ماعدا الجمعة  ', 'ar', '2018-04-05 15:17:12', '2018-04-05 15:17:12', NULL),
(54, 'twitter', 'https://www.twitter.com/', 'ar', '2018-04-05 15:17:11', '2018-04-05 15:17:11', NULL),
(55, 'linkedin', 'https://www.linkedin.com', 'ar', '2018-04-05 15:17:11', '2018-07-29 10:22:04', NULL),
(65, 'instagram', 'https://www.instagram.com', 'ar', '2018-04-05 15:17:11', '2018-07-29 10:22:04', NULL),
(66, 'quote', '                 في     نحن نركز في تقديم المشورة السليمة والصادقة للاستثمار العقاري، ووضع حلول قاطعة لاحتياجات العملاء\r\n', 'ar', '2018-04-05 15:17:11', '2018-09-23 09:24:11', NULL),
(68, 'Target', '                 في     نحن نركز في تقديم المشورة السليمة والصادقة للاستثمار العقاري، ووضع حلول قاطعة لاحتياجات العملاء\r\nهدف ', 'ar', '2018-04-05 15:17:11', '2018-09-23 09:24:11', NULL),
(69, 'Vision', '                 في     نحن نركز في تقديم المشورة السليمة والصادقة للاستثمار العقاري، ووضع حلول قاطعة لاحتياجات العملاء\r\nرؤيه', 'ar', '2018-04-05 15:17:11', '2018-07-29 10:22:04', NULL),
(70, 'message', '                 في     نحن نركز في تقديم المشورة السليمة والصادقة للاستثمار العقاري، ووضع حلول قاطعة لاحتياجات العملاء رساله  \r\n', 'ar', '2018-04-05 15:17:11', '2018-09-23 09:24:11', NULL),
(71, 'doctor_name', 'Lorem ipsum  ', 'ar', '2018-04-05 15:17:12', '2018-04-05 15:17:12', NULL),
(73, 'doctor_About', 'Lorem ipsum dolor sit amet consectetur adipisicing.', 'ar', '2018-04-05 15:17:12', '2018-04-05 15:17:12', NULL),
(74, 'Mail1', 'ءؤلبل', 'ar', '2018-04-05 15:17:11', '2018-09-23 09:24:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `single_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `cat_id`, `lang`, `single_photo`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 5, 'ar', '1991171399banner.jpg', 'يبالال لاغفلا', '2018-04-05 13:23:11', '2018-09-26 12:59:02', '2018-09-26 12:59:02'),
(6, 1, 'en', '5135326911107575438slide-3.jpg', '5555555555555555', '2018-04-05 13:23:12', '2018-10-10 07:50:59', NULL),
(11, 5, 'en', '14519101034.jpg', 'Mr. Archibald Anderson DVM', '2018-04-05 13:23:03', '2018-10-10 07:16:22', NULL),
(22, NULL, NULL, '10595976871107575438slide-3.jpg', 'fre', '2018-09-26 12:52:35', '2018-10-10 07:16:29', NULL),
(23, NULL, NULL, '21175058461086375203photo1 - Copy - Copy.jpg', 'لبتا', '2018-09-27 10:10:20', '2018-10-10 07:16:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `s_e_r_v_i_c_e_s`
--

CREATE TABLE `s_e_r_v_i_c_e_s` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `single_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_e_r_v_i_c_e_s`
--

INSERT INTO `s_e_r_v_i_c_e_s` (`id`, `title`, `slug`, `single_photo`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'fgjhgj', 'hgjhg', '9900001451107575438slide-3.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing.', '2018-09-18 09:18:04', '2018-10-10 07:23:54', NULL),
(7, 'fgjhgj', 'hgjhg', '1705457974service-icon.png', 'Lorem ipsum dolor sit amet consectetur adipisicing.', '2018-09-18 09:19:24', '2018-09-27 06:31:10', NULL),
(9, 'fgjhgj', 'hgjhg', '641236817icon-advance-search.png', 'Lorem ipsum dolor sit amet consectetur adipisicing.', '2018-09-18 09:21:51', '2018-09-29 21:12:33', '2018-09-29 21:12:33'),
(10, 'fgjhgj', 'hgjhg', '248553533service-icon.png', 'Lorem ipsum dolor sit amet consectetur adipisicing.', '2018-09-18 09:22:13', '2018-09-27 06:31:20', NULL),
(11, 'fgjhgj', 'hgjhg', '316657210service-icon.png', 'Lorem ipsum dolor sit amet consectetur adipisicing.', '2018-09-18 09:22:50', '2018-09-27 06:31:25', NULL),
(12, 'fgjhgj', 'hgjhg', '1741461407drawing-room.jpg', 'sdftgfdg', '2018-09-18 09:23:23', '2018-09-29 21:13:12', '2018-09-29 21:13:12'),
(13, 'gh', 'fhj', '39091803condo-lobby.jpg', 'hgjhgj', '2018-09-27 10:24:40', '2018-09-29 21:12:56', '2018-09-29 21:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `single_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `title`, `body`, `single_photo`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'HIGH VOLTAGE', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry.', 'arc.jpg', 'sf', '2018-08-16 12:42:14', '2018-08-16 12:42:14', NULL),
(2, 'HIGH VOLTAGE', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry.', 'arc.jpg', 'sf', '2018-08-16 12:42:14', '2018-08-16 12:42:14', NULL),
(3, 'HIGH VOLTAGE', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry.', 'arc.jpg', 'sf', '2018-08-16 12:42:14', '2018-08-16 12:42:14', NULL),
(4, 'HIGH VOLTAGE', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry.', 's', 'sf', '2018-08-16 12:42:14', '2018-08-16 12:42:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Joelle Bosco', 'nwhite@yahoo.com', '$2y$10$HqCVKUd5C6jWfdQmZQSix.glqiEl8a2r3xLBmwlHaOrg4b1fRKUKK', 'ySy3cfL83pfdNrtxLhTuePT5SmfoNWofb4rx7PRyvyLeg5ooy8Vbcahktpq0', '2018-04-05 13:23:17', '2018-04-05 13:23:17'),
(2, 'Sid Streich', 'estel.gerhold@gmail.com', '$2y$10$JmylC8mZvFoWi4N0BZTlTOSi5gCwxLNHic.A6EnzYGsNxcKTDqRq.', NULL, '2018-04-05 13:23:17', '2018-04-05 13:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `single_photo` text COLLATE utf8mb4_unicode_ci,
  `type` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `link`, `title`, `body`, `single_photo`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '<iframe width=\"100%\" height=\"200\" src=\"https://www.youtube.com/embed/cLbGlqCfP24\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'sdafds', 'fdsf', 'sdfds', 'dsfds', '2018-09-27 09:31:58', '2018-09-29 22:40:13', NULL),
(2, '<iframe width=\"100%\" height=\"200\" src=\"https://www.youtube.com/embed/cLbGlqCfP24\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'محمد اشرف', NULL, NULL, NULL, '2018-09-27 09:33:44', '2018-09-29 23:47:23', NULL),
(3, '<iframe width=\"100%\" height=\"200\" src=\"https://www.youtube.com/embed/cLbGlqCfP24\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'fdgfdgfd', NULL, NULL, NULL, '2018-09-27 09:33:58', '2018-09-29 22:43:32', NULL),
(4, '<iframe width=\"100%\" height=\"200\" src=\"https://www.youtube.com/embed/ZyW4REsC9rU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'بيلبيل', 'يبلبيل', 'يبلبي', 'بيل', '2018-09-29 22:26:48', '2018-09-29 22:40:54', NULL),
(5, '<iframe width=\"100%\" height=\"200\" src=\"https://www.youtube.com/embed/ZyW4REsC9rU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'يبيسب', 'سبيسشب', 'يسبيس', 'بيسبي', '2018-09-29 22:27:23', '2018-09-29 22:41:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories__products`
--
ALTER TABLE `categories__products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `n_e_w_s`
--
ALTER TABLE `n_e_w_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsphotos`
--
ALTER TABLE `productsphotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_cats`
--
ALTER TABLE `projects_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_stings`
--
ALTER TABLE `site_stings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_e_r_v_i_c_e_s`
--
ALTER TABLE `s_e_r_v_i_c_e_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories__products`
--
ALTER TABLE `categories__products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `n_e_w_s`
--
ALTER TABLE `n_e_w_s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `productsphotos`
--
ALTER TABLE `productsphotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `projects_cats`
--
ALTER TABLE `projects_cats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_stings`
--
ALTER TABLE `site_stings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `s_e_r_v_i_c_e_s`
--
ALTER TABLE `s_e_r_v_i_c_e_s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
