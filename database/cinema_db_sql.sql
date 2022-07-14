-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 03:08 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema_db.sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingtable`
--

CREATE TABLE `bookingtable` (
  `bookingID` int(11) NOT NULL,
  `movieID` int(11) DEFAULT NULL,
  `bookingTheatre` varchar(100) NOT NULL,
  `bookingType` varchar(100) DEFAULT NULL,
  `bookingDate` varchar(50) NOT NULL,
  `bookingTime` varchar(50) NOT NULL,
  `bookingFName` varchar(100) NOT NULL,
  `bookingLName` varchar(100) DEFAULT NULL,
  `bookingPNumber` varchar(12) NOT NULL,
  `bookingEmail` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `ORDERID` varchar(255) NOT NULL,
  `DATE-TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingtable`
--

INSERT INTO `bookingtable` (`bookingID`, `movieID`, `bookingTheatre`, `bookingType`, `bookingDate`, `bookingTime`, `bookingFName`, `bookingLName`, `bookingPNumber`, `bookingEmail`, `amount`, `ORDERID`, `DATE-TIME`) VALUES
(82, 69, 'private-hall', 'imax', '16-3', '24-00', 'Ayush', 'Kumar', '7070361845', 'ak2210749@gmail.com', '900.00', 'ARVR36868882', '2022-02-01 02:03:56'),
(83, 69, 'vip-hall', '2d', '14-3', '09-00', 'Ayush', 'Kumar', '7070361845', 'ak@ak.com', 'Not Paid', 'ARVR14476724', '2022-02-03 12:36:42'),
(84, 1, 'main-hall', '3d', '14-3', '15-00', 'Ayush', 'Kumar', '7070361845', 'ak2210749@gmail.com', '200.00', 'ARVR57718484', '2022-02-04 05:51:32'),
(85, 69, 'private-hall', 'imax', '16-3', '18-00', 'Ayush', 'Kumar', '7070361845', 'ak2210749@gmail.com', '900.00', 'ARVR28032644', '2022-02-04 07:03:54'),
(86, 1, 'vip-hall', '3d', '14-3', '12-00', 'asd', 'asdf', 'sad', 'adf@gmsil.com', 'Not Paid', 'ARVR84289799', '2022-03-29 22:30:39'),
(87, 70, 'private-hall', 'imax', '16-3', '24-00', 'Ayush', 'Bansal', '7070361845', 'akak@ak.com', '900.00', 'ARVR50084763', '2022-03-30 00:19:48'),
(88, 71, 'vip-hall', 'imax', '14-3', '21-00', 'cxas', 'dds', '1234567895', 'ak2210749@gmail.com', '500.00', 'ARVR75283476', '2022-03-30 16:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `email`, `password`) VALUES
(1, 'iamayushkr', 'ak2210749@gmail.com', '25d55ad283aa400af464c76d713c07ad'),
(2, 'Amrit Raj', 'ar@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'qwerty', 'ak@ak.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'bansal', 'bansal@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_movie`
--

CREATE TABLE `deleted_movie` (
  `movieID` int(11) NOT NULL,
  `movieImg` varchar(150) CHARACTER SET latin1 NOT NULL,
  `movieTitle` varchar(100) CHARACTER SET latin1 NOT NULL,
  `movieGenre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `movieDuration` int(11) NOT NULL,
  `movieRelDate` date NOT NULL,
  `movieDirector` varchar(50) CHARACTER SET latin1 NOT NULL,
  `movieActors` varchar(150) CHARACTER SET latin1 NOT NULL,
  `mainhall` int(11) NOT NULL,
  `viphall` int(11) NOT NULL,
  `privatehall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deleted_movie`
--

INSERT INTO `deleted_movie` (`movieID`, `movieImg`, `movieTitle`, `movieGenre`, `movieDuration`, `movieRelDate`, `movieDirector`, `movieActors`, `mainhall`, `viphall`, `privatehall`) VALUES
(4, 'img/movie-poster-4.jpg', 'Nadi Elregal Elserri ', 'Comedy', 105, '2022-01-29', ' Ayman Uttar', 'Karim Abdul Aziz, Ghada Adel, Maged El Kedwany, Nesreen Tafesh, Bayyumy Fouad, Moataz El Tony ', 0, 0, 0),
(5, 'img/movie-poster-5.jpg', 'VICE', 'Biography, Comedy, Drama', 132, '2022-01-29', 'Adam McKay', 'Christian Bale, Amy Adams, Steve Carell', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktable`
--

CREATE TABLE `feedbacktable` (
  `msgID` int(12) NOT NULL,
  `senderfName` varchar(50) NOT NULL,
  `senderlName` varchar(50) DEFAULT NULL,
  `sendereMail` varchar(100) NOT NULL,
  `senderfeedback` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacktable`
--

INSERT INTO `feedbacktable` (`msgID`, `senderfName`, `senderlName`, `sendereMail`, `senderfeedback`) VALUES
(5, 'Ayush', 'Kumar', 'ak2210749@gmail.com', 'Wonderful Website!');

-- --------------------------------------------------------

--
-- Table structure for table `movietable`
--

CREATE TABLE `movietable` (
  `movieID` int(11) NOT NULL,
  `movieImg` varchar(150) NOT NULL,
  `movieTitle` varchar(100) NOT NULL,
  `movieGenre` varchar(50) NOT NULL,
  `movieDuration` int(11) NOT NULL,
  `movieRelDate` date NOT NULL,
  `movieDirector` varchar(50) NOT NULL,
  `movieActors` varchar(150) NOT NULL,
  `mainhall` int(11) NOT NULL,
  `viphall` int(11) NOT NULL,
  `privatehall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movietable`
--

INSERT INTO `movietable` (`movieID`, `movieImg`, `movieTitle`, `movieGenre`, `movieDuration`, `movieRelDate`, `movieDirector`, `movieActors`, `mainhall`, `viphall`, `privatehall`) VALUES
(1, 'img/movie-poster-1.jpg', 'Captain Marvel', ' Action, Adventure, Sci-Fi ', 220, '2018-10-18', 'Anna Boden, Ryan Fleck', 'Brie Larson, Samuel L. Jackson, Ben Mendelsohn', 0, 0, 0),
(3, 'img/movie-poster-3.jpg', 'The Lego Movie', 'Animation, Action, Adventure', 110, '2014-02-07', 'Phil Lord, Christopher Miller', 'Chris Pratt, Will Ferrell, Elizabeth Banks', 0, 0, 0),
(6, 'img/movie-poster-6.jpg', 'The Vanishing', 'Crime, Mystery, Thriller', 107, '2019-01-04', 'Kristoffer Nyholm', 'Gerard Butler, Peter Mullan, Connor Swindells', 0, 0, 0),
(69, 'img/movie-poster-2.jpg', 'Spiderman No Way Home', 'Action', 148, '2021-12-16', 'Jon Watts', 'Tom Holland, Andrew Garfield', 0, 500, 250),
(70, 'img/movie-poster-4.jpg', 'Doctor Strange Multiverse of Madness', 'Horror', 3, '2022-05-06', 'Sam Raimi', 'Benedict Cumberbatch', 300, 500, 800),
(71, 'img/movie-poster-5.jpg', 'K.G.F', 'Actiom', 3, '2018-12-21', 'Prashanth Neel', 'Yash', 300, 500, 800);

--
-- Triggers `movietable`
--
DELIMITER $$
CREATE TRIGGER `movie_deleted` AFTER DELETE ON `movietable` FOR EACH ROW INSERT INTO deleted_movie VALUES(old.movieID,old.movieImg,old.movieTitle,old.movieGenre,old.movieDuration,CURRENT_DATE(),old.movieDirector,old.movieActors,old.mainhall,old.viphall,old.privatehall)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`) VALUES
(1, '123', 'john', 'YES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingtable`
--
ALTER TABLE `bookingtable`
  ADD PRIMARY KEY (`bookingID`),
  ADD UNIQUE KEY `bookingID` (`bookingID`),
  ADD KEY `foreign_key_movieID` (`movieID`),
  ADD KEY `foreign_key_ORDERID` (`ORDERID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deleted_movie`
--
ALTER TABLE `deleted_movie`
  ADD PRIMARY KEY (`movieID`);

--
-- Indexes for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  ADD PRIMARY KEY (`msgID`),
  ADD UNIQUE KEY `msgID` (`msgID`);

--
-- Indexes for table `movietable`
--
ALTER TABLE `movietable`
  ADD PRIMARY KEY (`movieID`),
  ADD UNIQUE KEY `movieID` (`movieID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingtable`
--
ALTER TABLE `bookingtable`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deleted_movie`
--
ALTER TABLE `deleted_movie`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  MODIFY `msgID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movietable`
--
ALTER TABLE `movietable`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookingtable`
--
ALTER TABLE `bookingtable`
  ADD CONSTRAINT `foreign_key_movieID` FOREIGN KEY (`movieID`) REFERENCES `movietable` (`movieID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
