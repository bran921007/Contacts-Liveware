-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2014 at 08:04 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `linc.do`
--

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE IF NOT EXISTS `archives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `archives`
--

INSERT INTO `archives` (`id`, `url`, `dir`, `user_id`, `permission`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Practica 3.docx.gdoc', '/Users/franciscoperez/Documents/github/Linc/public/uploads/archive', 2, 0, 'gdoc', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `business_card`
--

CREATE TABLE IF NOT EXISTS `business_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `logo` varchar(3000) NOT NULL DEFAULT 'logoo.png',
  `partner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `tweet` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `linc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `business_card`
--

INSERT INTO `business_card` (`id`, `user_id`, `logo`, `partner`, `name`, `title`, `mobile`, `telephone`, `website`, `tweet`, `address`, `linc`) VALUES
(1, 1, '', 'Partner', 'Company Here', 'Title Here   ', '   Mobile Here   ', 'Telephone Here   ', 'www.xyz.com', '@tweet.com', 'Address', 'www.linc.do');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `likes` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emisor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receptor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `end` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `flyer_card`
--

CREATE TABLE IF NOT EXISTS `flyer_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flyer_user_id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `template` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `flyer_card`
--

INSERT INTO `flyer_card` (`id`, `flyer_user_id`, `name`, `title`, `detail`, `template`) VALUES
(1, 1, 'AQUI EL TITULO', 'AQUI EL TEXTO BASE\n                      ', 'AQUI LA FOTO\n                      ', 'template1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `flyer_template`
--

CREATE TABLE IF NOT EXISTS `flyer_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(3000) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `flyer_template`
--

INSERT INTO `flyer_template` (`uid`, `template`, `name`) VALUES
(1, 'template1.jpg', 'a'),
(2, 'template2.jpg', 'b'),
(3, 'template3.jpg', 'c'),
(4, 'template4.jpg', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE IF NOT EXISTS `followers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `followers_id` int(11) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `user_id`, `followers_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 3, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `following`
--

CREATE TABLE IF NOT EXISTS `following` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poster_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `following`
--

INSERT INTO `following` (`id`, `poster_id`, `following_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 3, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `user_id`, `name`, `thumb`, `created_at`, `updated_at`) VALUES
(1, 0, 'Prueba1', '', '2014-11-13 07:20:19.014829', '0000-00-00 00:00:00.000000'),
(2, 0, 'Prueba2', '', '2014-11-13 07:21:42.895448', '0000-00-00 00:00:00.000000'),
(3, 0, 'Prueba3', '', '2014-11-13 07:21:53.151240', '0000-00-00 00:00:00.000000'),
(4, 0, 'Prueba4', '', '2014-11-13 12:21:06.000000', '2014-11-13 12:21:06.000000'),
(5, 0, 'Prueba5', '', '2014-11-13 12:25:46.000000', '2014-11-13 12:25:46.000000'),
(6, 0, 'Prueba Numero 6', '', '2014-11-13 12:27:47.000000', '2014-11-13 12:27:47.000000');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gallery_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `dir`, `user_id`, `permission`, `type`, `gallery_id`, `created_at`, `updated_at`) VALUES
(1, 'big-data-mining.jpg', '', 1, 0, 'jpg', 2, '2014-11-15 03:13:24', '2014-11-15 03:13:24'),
(2, 'bisono.JPG', '', 1, 0, 'JPG', 3, '2014-11-15 03:49:57', '2014-11-15 03:49:57'),
(3, 'backup.jpg', '', 1, 0, 'jpg', 4, '2014-11-15 03:52:40', '2014-11-15 03:52:40'),
(4, 'bisono.JPG', '', 1, 0, 'JPG', 1, '2014-11-15 03:56:37', '2014-11-15 03:56:37'),
(5, 'bonbril.JPG', '', 1, 0, 'JPG', 5, '2014-11-15 03:57:42', '2014-11-15 03:57:42'),
(6, '211.JPG', '', 1, 0, 'JPG', 4, '2014-11-15 05:09:21', '2014-11-15 05:09:21'),
(7, 'cover.jpg', '', 1, 0, 'jpg', 5, '2014-11-16 00:22:21', '2014-11-16 00:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `like_id` int(100) NOT NULL AUTO_INCREMENT,
  `liker_id` int(100) NOT NULL,
  `status_id` int(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`like_id`, `liker_id`, `status_id`, `time`) VALUES
(2, 1, 5, '2014-11-22 19:31:28'),
(4, 1, 2, '2014-11-22 19:36:08'),
(5, 1, 6, '2014-11-23 16:31:07'),
(6, 1, 7, '2014-12-02 11:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `login_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `session_time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `messages_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `datasent` datetime NOT NULL,
  `dataread` datetime NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `log` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`messages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_27_052614_create_users_table', 1),
('2014_10_31_073329_create_login_table', 1),
('2014_10_31_082036_create_images_table', 1),
('2014_11_06_193547_create_refer_table', 1),
('2014_11_06_193917_create_user_role_table', 1),
('2014_11_06_193946_create_event_table', 1),
('2014_11_06_194002_create_role_perm_table', 1),
('2014_11_06_194027_create_roles_table', 1),
('2014_11_06_194101_create_recipients_table', 1),
('2014_11_06_194122_create_permissions_table', 1),
('2014_11_06_194151_create_messages_table', 1),
('2014_11_06_194223_create_posts_table', 1),
('2014_11_06_194242_create_following_table', 1),
('2014_11_06_194254_create_followers_table', 1),
('2014_11_06_194310_create_comments_table', 1),
('2014_11_06_194400_create_category_table', 1),
('2014_11_09_234738_create_archives_table', 1),
('2014_11_10_161017_create_emails_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `perm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `perm_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`perm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic` varchar(5550) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post`, `date`, `pic`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hello world post with picture :D', '2014-11-20 14:36:04', '10387345_10152245594300079_7790720196016543586_n.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Hey Post Without picture :P', '2014-11-20 14:39:42', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Hello Again Testing post', '2014-11-21 00:01:32', '10907_10152245594310079_630621695036499229_n.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 'Hello World Follow me...!!!!!!!', '2014-11-21 22:02:34', 'AlbumArtSmall.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 'Linc.com.!!!!!!!!!!!!!!!!!', '2014-11-21 22:03:28', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 3, 'New Post', '2014-11-22 00:06:39', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'hello', '2014-11-22 22:21:48', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `recipients`
--

CREATE TABLE IF NOT EXISTS `recipients` (
  `messages_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`messages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `refer`
--

CREATE TABLE IF NOT EXISTS `refer` (
  `ref_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_ref` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `role_perm`
--

CREATE TABLE IF NOT EXISTS `role_perm` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `perm_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `double` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `university` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `web_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `file_o` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ref_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `active` enum('true','false') COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `lastname`, `avatar`, `cover`, `identification`, `street`, `city`, `telephone`, `birth`, `gender`, `country`, `state`, `about`, `double`, `university`, `web_link`, `file_o`, `ref_id`, `role_id`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@linc.com', '$2y$10$bLiYWU0pkuw/agCq/d/bG.0zCTgFPbq7JPIeYulx/6vXXM/22lJFO', 'Jhonn', 'Rodriguez', 'profile.png', 'cover_pic.png', '22301344440', 'Calle', 'Santo Domingo', '809 716 3217', '', '2', 'Republica Dominicana', 'DN', 'Soy un buen programador y me encanta hacer commits que digan ', 'Doble Diamante', 'Estudiante Universitario', 'www.Lync.com/John', '20 anos', 0, 0, 'true', '9Uz42XFuItQJmJkuv903JUAC026Jv6q01ErwzaKYJZtBBCN8kZaPciDGTPi0', '0000-00-00 00:00:00', '2014-11-28 07:01:13'),
(2, 'test@linc.com', '$2y$10$bLiYWU0pkuw/agCq/d/bG.0zCTgFPbq7JPIeYulx/6vXXM/22lJFO', 'Paritosh', 'Mehra', 'avtar.jpg', 'cover_pic.png', '1234567890', 'Verka Road', 'Chandigarh', '9888696484', '08/01/1991', '2', 'India', 'Punjab', 'Jump to Inserts - Inserting Records Into A Table With An Auto-Incrementing ID. If the table has an auto-incrementing id, use insertGetId to insert a record', 'Single Diamante', 'Estuidian Univ', 'www.test.com/Pari', '22 anos', 0, 0, 'true', 'P5zlYbdPF4kmBNj0ZlSj8y6XLtSdOzsBNSpOLUMiBiCyPlE03kHXI6WL7Hn9', '0000-00-00 00:00:00', '2014-11-21 11:03:42'),
(3, 'user@linc.com', '$2y$10$bLiYWU0pkuw/agCq/d/bG.0zCTgFPbq7JPIeYulx/6vXXM/22lJFO', 'Vicky', 'Mehra', 'avtar1.jpg', 'cover_pic.png', '234567885', 'Chilli', 'Las Vegas', '0178256256', '05/05/1989', '2', 'India', 'Rover', 'now I would like to insert a bulk of rows at one query, but if one of the ... to do a query after the insert so that I can get the updated objects back', 'Multi Diamante', 'Asyuhdkji University', 'www.sample.com/vick', '25 anos', 0, 0, 'true', '0Uadxx9iKJfFMHnsUqT1UtPYmrKScGUDCRWLYcJlIP7NoPfzIxVTtFVoWmdr', '0000-00-00 00:00:00', '2014-11-28 06:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
