-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2020 at 01:10 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--
CREATE DATABASE IF NOT EXISTS `social` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `social`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'hii', 'shampa_banik_1', 'shampa_banik_1', '2019-12-29 17:23:20', 'no', 9),
(2, 'hii', 'shampa_banik_1', 'rahul_mia', '2019-12-29 18:18:12', 'no', 15),
(3, 'good', 'shampa_banik_1', 'rahul_mia', '2019-12-29 18:18:26', 'no', 15),
(4, '', 'shampa_banik_1', 'rahul_mia', '2019-12-29 18:53:00', 'no', 15),
(5, '', 'shampa_banik_1', 'rahul_mia', '2019-12-29 18:53:04', 'no', 15),
(6, '', 'shampa_banik_1', 'rahul_mia', '2019-12-29 18:53:17', 'no', 15),
(7, 'lll', 'shampa_banik_1', 'shampa_banik_1', '2020-01-04 16:00:17', 'no', 7);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(2, 'mohua_banik', 'shampa_banik_1');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `Id_1` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`Id_1`, `username`, `post_id`) VALUES
(8, 'rahul_mia', 4),
(9, 'rahul_mia', 3),
(10, 'rahul_mia', 1),
(11, 'shampa_banik_1', 15);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(1, 'this is my post!!!', 'shampa_banik_1', 'none', '2019-12-28 15:05:37', 'no', 'no', 1),
(2, 'hii\r\n', 'shampa_banik_1', 'none', '2019-12-28 19:51:05', 'no', 'no', 0),
(3, 'hello everyone', 'shampa_banik_1', 'none', '2019-12-28 19:51:16', 'no', 'no', 0),
(4, 'hello', 'shampa_banik_1', 'none', '2019-12-28 19:51:38', 'no', 'no', 0),
(5, 'hii...guys!!!', 'rahul_mia', 'none', '2019-12-29 14:56:06', 'no', 'no', 0),
(6, 'what\'s up???', 'rahul_mia', 'none', '2019-12-29 14:56:26', 'no', 'no', 0),
(7, 'how r u guys??', 'rahul_mia', 'none', '2019-12-29 16:20:44', 'no', 'no', 1),
(8, 'Hiii', 'shampa_banik_1', 'none', '2020-01-05 06:37:00', 'no', 'no', 0),
(9, 'hii', 'rahul_mia', 'shampa_banik_1', '2020-01-05 06:39:59', 'no', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(2, 'Shampa', 'Banik', 'shampa_banik_1', 'Shampa.banik@gmail.com', 'dc483e80a7a0bd9ef71d8cf973673924', '2019-12-27', 'assets/images/profile_pics/defaults/head_deep_blue.png', 14, 3, 'no', ',	\r\nrahul_mia,'),
(3, 'Mohua', 'Banik', 'mohua_banik', 'Shampabanik99@gmail.com', '872be7378d2e5c4b747f2547144c6dc5', '2019-12-27', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',shampa_banik_1,rahul_mia,'),
(4, 'Rahul', 'Mia', 'rahul_mia', 'Rahul.mia@gmail.com', '33a752e8546ff81e05fd6b4d8bd8bbd8', '2019-12-29', 'assets/images/profile_pics/rahul_mia7357f805071d6cfe58880eaa2dbeb45en.jpeg', 4, 1, 'no', ',shampa_banik_1,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`Id_1`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `Id_1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
