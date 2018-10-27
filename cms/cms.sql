-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2018 at 01:10 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(48, 'PHP'),
(52, 'Javascript'),
(53, 'PYTHON');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 155, 'EDWIN DIAZ', 'edwin@gmail.com', 'sfdgsdfg', 'approved', '2015-11-13');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(115, 52, 'Javascript', 'Edwin Diaz', '', '2018-10-19', 'photo-1507358522600-9f71e620c44e.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p><p>&nbsp;</p>', 'javascript', '', 'published', 3),
(116, 48, 'Bootstrap', 'George', '', '2018-10-19', 'pexels-photo-460223.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p><p>&nbsp;</p>', 'Bootstrap', '', 'published', 5),
(118, 52, 'Javascript', 'Edwin Diaz', '', '2018-10-19', 'pexels-photo-824298.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p><p>&nbsp;</p>', 'javascript', '', 'published', 4),
(119, 53, 'Javascript', 'Miguel', 'suave', '2018-10-19', 'pexels-photo-257433.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p><p>&nbsp;</p>', 'javascript', '', 'published', 2),
(121, 48, 'PHP', 'Edwin Diaz', 'suave', '2018-10-19', 'pexels-photo-518213.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p><p>&nbsp;</p>', 'php', '', 'published', 1),
(122, 48, 'Murdered for Sand', 'Miguel', 'rico', '2018-10-19', 'pexels-photo-730427.jpeg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed fermentum fermentum pretium. Ut nec purus at est consequat pretium vitae at tortor. Morbi pulvinar lacinia arcu, non elementum leo commodo id. Mauris congue volutpat feugiat. Praesent quis ligula vel neque consectetur mollis. Mauris a ipsum a elit pharetra sodales vitae non diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae diam in diam malesuada gravida a sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc et urna eu justo ullamcorper tempus.</p><p>&nbsp;</p>', 'javascript', '', 'published', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22',
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`, `token`) VALUES
(1, 'rico', '$2y$12$x82Y4OQfM3KTjVagYsLIl.rU.WXugo2x2JMFmfGTYosYUwzQJ2aaO', 'christophfer', 'homberg', 'rico@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(44, '', 1447434996),
(45, 's47g806mg6788i92u5ogm6kqi4', 1447441570),
(46, '72clfovqk7vo2p8fiii26tkmr4', 1447461586),
(47, '3gs3q67k5ntpma8tbp2kuvof23', 1447691896),
(48, 'bouqd4fslhn2b1nv20k559col1', 1447796024),
(49, 'tign71tbpar4di74k13f8nr022', 1447867949),
(50, 'ju0s1j019d1qlc1q4tb703rgm3', 1447880891),
(51, 'tp6khbvgo4hdlfueekpmaefcu0', 1447952096),
(52, 'kv0klvlajm8j50d3uqt6go4bm6', 1448174347),
(53, 'qsdv073j4c3lqd6m0rtdpg3615', 1448296313),
(54, 'tmliedhtcgvi8r96l6qplehos4', 1448292854),
(55, 'vrumjbdrjrauucdhg6cta8hhn6', 1448800892),
(56, 'eb1ae8996caf679d187c1037ec9620b1', 1478098539),
(57, '40780dfe8631b764c435168775d44432', 1479443689),
(58, '6d9081fbf0106e9bfef3e77f6fa68f8a', 1481004509),
(59, 'b57212ad3e92b65c05d8ddcd1805a370', 1481382178),
(60, '3cf8d2b7eb470cb635a6102868ae9bd6', 1481397855),
(61, 'c7e0ac8eeeaaf5d3ac4329af9bf4b777', 1481685807),
(62, 'b50a5d9ab4b00848c009d472c63ae2cd', 1485830805),
(63, '3ef98f25d1b1762dd799f33b1a2b2657', 1499988384),
(64, '229f256600c1d05e81bd5036d941069a', 1499993069),
(65, '34aea21ebd8d1ae1b572236a4783cbad', 1500065466);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
