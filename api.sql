-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2018 at 03:29 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `ct_users`
--

CREATE TABLE IF NOT EXISTS `ct_users` (
`id` int(11) NOT NULL,
  `user_email` varchar(96) DEFAULT '',
  `user_pwd` varchar(40) DEFAULT '',
  `first_name` varchar(32) DEFAULT '',
  `last_name` varchar(32) DEFAULT '',
  `phone` varchar(15) DEFAULT '',
  `zip` varchar(10) DEFAULT '',
  `address` varchar(250) DEFAULT '',
  `city` varchar(48) DEFAULT '',
  `state` varchar(48) DEFAULT '',
  `notes` varchar(800) DEFAULT '',
  `vc_status` enum('Y','N') DEFAULT 'N',
  `p_status` enum('Y','N') DEFAULT 'N',
  `contact_status` varchar(500) DEFAULT '',
  `status` enum('E','D') DEFAULT 'D',
  `usertype` varchar(50) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ct_users`
--

INSERT INTO `ct_users` (`id`, `user_email`, `user_pwd`, `first_name`, `last_name`, `phone`, `zip`, `address`, `city`, `state`, `notes`, `vc_status`, `p_status`, `contact_status`, `status`, `usertype`) VALUES
(1, 'mukulgarg909@gmail.com', '12345', 'Mukul', 'Garg', '7018936121', '176310', 'Chamba, H.P', 'Chamba', 'H.P', 'i will fetch my data as json response from the server', 'N', 'N', 'Available 9:00 to 5:00', 'D', 'clientuser'),
(2, 'johndoe@gmail.com', '123', 'John', 'Doe', '9418703264', '176310', 'Shimla. H.p', 'Shimla', 'H.P', 'using php cURL request ', 'N', 'N', 'not available', 'D', 'clientuser');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ct_users`
--
ALTER TABLE `ct_users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ct_users`
--
ALTER TABLE `ct_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
