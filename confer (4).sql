-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 01, 2020 at 03:06 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `confer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE IF NOT EXISTS `admin_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_pass` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_log`
--

INSERT INTO `admin_log` (`id`, `admin_name`, `admin_pass`) VALUES
(1, 'shahid', 'afridi');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `answer` text NOT NULL,
  `qid` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `likes` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `ratings` int(11) DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `qid` (`qid`),
  KEY `userid` (`userid`(10)),
  KEY `userid_2` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `qid`, `userid`, `likes`, `rate`, `ratings`) VALUES
(2, 'morning 8 am', 3, 'sheeku', NULL, NULL, 30),
(4, '8 am', 1, 'askeee', NULL, NULL, 10),
(6, '5 subjects', 2, 'anki', NULL, NULL, 20),
(7, '3 lab per semester', 4, 'anki', NULL, NULL, 9),
(8, '3 year\r\n', 5, 'anki', NULL, NULL, 6),
(9, '22 students', 6, 'anki', NULL, NULL, 6),
(10, 'almost 359 students.', 57, 'anki', NULL, NULL, 6),
(11, '8', 1, 'sheeku', NULL, NULL, 6),
(12, '6AM to 4pm', 1, 'anki', NULL, NULL, 6),
(14, 'Fine', 58, 'anki', NULL, NULL, 6),
(15, 'Sleep mode is a low power mode for electronic devices such as computers, televisions, and remote controlled devices. These modes save significantly on electrical consumption compared to leaving a device fully on and, upon resume, allow the user to avoid having to reissue instructions or to wait for a machine to reboot.', 59, 'ankit1994', NULL, NULL, 6),
(16, '8;30', 61, 'sana', NULL, NULL, 6),
(17, '5 Modules', 62, 'rhea', NULL, NULL, 6),
(18, '23 jan', 63, 'sana', NULL, NULL, 6),
(19, 'hello', 64, 'anki', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `answers_rating`
--

DROP TABLE IF EXISTS `answers_rating`;
CREATE TABLE IF NOT EXISTS `answers_rating` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `answers` int(10) NOT NULL,
  `rating` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complains``
--

DROP TABLE IF EXISTS `complains```;
CREATE TABLE IF NOT EXISTS `complains``` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `comp` text NOT NULL,
  `userid` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `feed` text NOT NULL,
  `userid` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`eid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`eid`, `feed`, `userid`, `date`) VALUES
(60, 'good website', 'anki', '2019-11-26 12:46:01'),
(61, 'Very informative', 'shahid', '2019-11-26 19:59:32');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `aid` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `notifid` int(10) NOT NULL AUTO_INCREMENT,
  `notification` text NOT NULL,
  `uid` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'unread',
  `date` datetime NOT NULL,
  PRIMARY KEY (`notifid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `option_a` text NOT NULL,
  `option_b` text NOT NULL,
  `option_c` text NOT NULL,
  `option_d` text NOT NULL,
  `answer` varchar(1) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `userid` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`qid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `userid`, `date`) VALUES
(2, 'subjects in first semester?', 'renu', '2019-04-27 09:30:14'),
(3, 'timing of the classes?', 'anki', '2019-04-27 09:30:14'),
(58, 'How are you?', 'sheeku', '2019-05-02 21:25:50'),
(59, 'What is the purpose of keeping electronic devices such as computers televisions and remote controlled devices on sleep mode?', 'ankit1994', '2019-05-02 23:11:50'),
(60, 'Which notes to refer for exams..?', 'shahid', '2019-11-26 19:23:30'),
(62, 'Syllabus,,?', 'sana', '2019-11-26 19:28:17'),
(63, 'Exam dates.?', 'rhea', '2019-11-26 19:30:26'),
(64, 'aaaa', 'shahid', '2019-12-10 18:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `questions_desc`
--

DROP TABLE IF EXISTS `questions_desc`;
CREATE TABLE IF NOT EXISTS `questions_desc` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL,
  `question` varchar(400) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20002 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `comp` text NOT NULL,
  `userid` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`cid`, `comp`, `userid`, `date`) VALUES
(1, 'afgtterh', 'anki', '2020-02-29 21:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject`) VALUES
(7, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) NOT NULL,
  `test_name` varchar(50) NOT NULL,
  `sdatetime` datetime NOT NULL,
  `edatetime` datetime NOT NULL,
  `test_duration` int(11) NOT NULL,
  `attempts` int(11) NOT NULL,
  `yes_no` varchar(3) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `subject`, `test_name`, `sdatetime`, `edatetime`, `test_duration`, `attempts`, `yes_no`, `created`) VALUES
(3, 'java', 'module 1', '2020-02-29 11:55:00', '2020-03-01 01:00:00', 10, 2, 'Yes', '2020-02-29 18:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `test_result`
--

DROP TABLE IF EXISTS `test_result`;
CREATE TABLE IF NOT EXISTS `test_result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `right_ans` int(11) NOT NULL,
  `wrong_ans` int(11) NOT NULL,
  `no_attempt` int(11) NOT NULL,
  `score` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_result_desc`
--

DROP TABLE IF EXISTS `test_result_desc`;
CREATE TABLE IF NOT EXISTS `test_result_desc` (
  `result_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `marks` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userid` varchar(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `name`, `password`, `email`, `mobile`, `gender`) VALUES
('anki', 'ankit singh', 'ankit', 'ank@g.com', 9479396742, 'Male'),
('ankit1994', 'Ankit Singh', '123456', 'ankitsinghmyself@gmail.com', 9479396742, 'Male'),
('archi', 'archana', '123', 'arch@gmail.com', 2087654321, 'Female'),
('askeee', 'Astha', '123', 'askee@gmail.com', 9087654321, 'Male'),
('renu', 'renuka', '123', 'renu@gmail.com', 789054321, 'Male'),
('rhea', 'Rhea', '123', 'rhea@gmail.com', 8861604274, 'Male'),
('sana', 'sanap', '1234', 'sana@gmail.com', 998877665, 'Male'),
('shahid', 'Shahid Afridi', '123', 'shahid@gmail.com', 8861604274, 'Male'),
('sheeku', 'Sheela Kumari', 'sheela', 'shee@gmail.com', 987654322, 'Female');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `admin` (`uname`),
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
