-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 09:56 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_media`
--

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `chennel_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `title`, `creator_id`, `chennel_id`, `created_at`, `update_at`) VALUES
(1, 'users 1,2', 12, 34, '2020-01-05 00:00:00', '2020-01-12 00:00:00'),
(2, 'users 8,3', 35, 78, '2021-11-16 00:00:00', '2021-01-22 00:00:00'),
(3, 'users 10,8', 20, 23, '2020-01-15 00:00:00', '2020-02-29 00:00:00'),
(4, 'users 1,9', 19, 45, '2021-02-10 00:00:00', '2021-05-18 00:00:00'),
(5, 'users 7,2', 93, 47, '2020-04-09 00:00:00', '2020-06-25 00:00:00'),
(6, 'users 5,4', 71, 62, '2021-06-08 00:00:00', '2021-09-22 00:00:00'),
(7, 'users 2,9', 84, 9, '2020-07-05 00:00:00', '2020-08-02 00:00:00'),
(8, 'users 10,1', 53, 76, '2021-08-02 00:00:00', '2021-09-12 00:00:00'),
(9, 'users 5,6', 45, 23, '2020-11-20 00:00:00', '2020-11-21 00:00:00'),
(10, 'users 1,4', 31, 34, '2021-12-25 00:00:00', '2021-12-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `device_id` varchar(100) DEFAULT NULL,
  `device_token` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `user_id`, `device_id`, `device_token`) VALUES
(1, 1, '76', 7656),
(2, 1, '45', 1234),
(3, 1, '01', 976),
(4, 1, '33', 5645),
(5, 1, '72', 8976),
(6, 1, '23', 7897),
(7, 1, '12', 9238),
(8, 1, '89', 7878),
(9, 1, '23', 23234),
(10, 1, '13', 7657);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `Conversation_id` int(11) DEFAULT NULL,
  `Sender_id` int(11) DEFAULT NULL,
  `Participants_id` int(11) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `Conversation_id`, `Sender_id`, `Participants_id`, `Message`, `Created_at`) VALUES
(1, 10, 1, 1, 'Send me your email', '2021-11-25 00:00:00'),
(2, 9, 2, 2, 'where are you?', '2021-11-21 00:00:00'),
(3, 1, 3, 3, 'i am the best', '2021-09-28 00:00:00'),
(4, 5, 4, 4, 'get outta here', '2020-07-29 00:00:00'),
(5, 3, 5, 5, 'i wont forget', '2021-04-21 00:00:00'),
(6, 4, 6, 6, 'thanks alot', '2019-02-15 00:00:00'),
(7, 7, 7, 7, 'where si your mum?', '2021-05-05 00:00:00'),
(8, 2, 8, 8, 'your emiail?', '2021-01-25 00:00:00'),
(9, 8, 9, 9, 'start coming', '2020-11-02 00:00:00'),
(10, 6, 10, 10, 'i am at home', '0202-12-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Conversation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `User_id`, `Conversation_id`) VALUES
(1, 1, 76),
(2, 2, 34),
(3, 3, 43),
(4, 4, 76),
(5, 5, 23),
(6, 6, 89),
(7, 7, 23),
(8, 8, 76),
(9, 9, 78),
(10, 10, 78);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `First_name` varchar(55) DEFAULT NULL,
  `Last_name` varchar(55) DEFAULT NULL,
  `Middle_name` varchar(55) DEFAULT NULL,
  `User_name` varchar(25) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `OTP` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `First_name`, `Last_name`, `Middle_name`, `User_name`, `Email`, `Phone`, `OTP`) VALUES
(1, 'Miracle', 'Samuel', 'Andekwun', 'Cling', 'samuel1miracle@gmail.com', '07048446774', '676563'),
(2, 'Anita', 'Williams', '', 'AnnyWills', 'anitawills@yahoo.com', '09078768934', '563478'),
(3, 'Kenneth', 'Prince', '', 'Wild Card', 'kenneth777@gmail.com', '08075646573', '784523'),
(4, 'Banner', 'Matudi', 'Andekwun', 'Baya', 'bannermatudi@gmail.com', '09076564676', '765634'),
(5, 'Jonah', 'Samuel', '', 'Braavo', 'braavojonah@gmail.com', '09087676343', '788909'),
(6, 'Sandra', 'Nwachukwu', '', 'Candi', 'sandicandi@gmail.com', '07078767681', '213456'),
(7, 'Success', 'Felix', '', 'Suxxex', 'suxxexfelix@gmail.com', '07078563423', '875356'),
(8, 'Bright', 'Sunday', '', 'Cashking', 'cashkingrecord@gmail.com', '09078778793', '097654'),
(9, 'Pamela', 'Sunday', '', 'Pamsla', 'sundaypamela@gmail.com', '070785645453', '863452'),
(10, 'Divine', 'Ishaku', 'Bature', 'DiDi', 'didiishaku@gmail.com', '07078563423', '097651');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
