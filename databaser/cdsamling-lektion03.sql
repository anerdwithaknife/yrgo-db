-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 03, 2014 at 02:09 AM
-- Server version: 5.5.25
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sqlkurs`
--

-- --------------------------------------------------------

--
-- Table structure for table `cd_albums`
--

CREATE TABLE `cd_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `band_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cd_albums`
--

INSERT INTO `cd_albums` (`id`, `name`, `release_date`, `band_id`) VALUES
(1, 'Like a Virgin', '1984-01-01', 1),
(2, 'My Truth', '1999-01-01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cd_artists`
--

CREATE TABLE `cd_artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `band_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cd_artists`
--

INSERT INTO `cd_artists` (`id`, `first_name`, `surname`, `band_id`) VALUES
(1, 'Madonna', 'Ciccone', 1),
(2, 'Robyn', 'Carlsson', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cd_bands`
--

CREATE TABLE `cd_bands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cd_bands`
--

INSERT INTO `cd_bands` (`id`, `name`) VALUES
(1, 'Madonna'),
(2, 'Robyn');

-- --------------------------------------------------------

--
-- Table structure for table `cd_songs`
--

CREATE TABLE `cd_songs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `track_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cd_songs`
--

INSERT INTO `cd_songs` (`id`, `name`, `album_id`, `track_no`) VALUES
(1, 'Like a Virgin', 1, 1),
(2, 'Material Girl', 1, 2),
(3, 'Electric', 2, 1),
(4, 'Play', 2, 2),
(5, 'My Only Reason', 2, 3);

