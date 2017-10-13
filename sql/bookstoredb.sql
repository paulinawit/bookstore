-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 11, 2017 at 09:47 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `bookstoredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `authorname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `authorname`) VALUES
(1, 'Adam Mickiewicz'),
(2, 'Camilla Lackberg'),
(3, 'Dan Brown'),
(4, 'Stieg Larsson'),
(5, 'Anna Smith');

-- --------------------------------------------------------

--
-- Table structure for table `authorbook`
--

CREATE TABLE `authorbook` (
  `id` int(11) NOT NULL,
  `authorid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authorbook`
--

INSERT INTO `authorbook` (`id`, `authorid`, `bookid`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `publish_date` date NOT NULL,
  `publisherid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `publish_date`, `publisherid`) VALUES
(1, 'Farys', '1900-05-21', 1),
(2, 'Heksen', '2015-02-13', 2),
(3, 'Inferno', '2000-10-02', 3),
(4, 'Millenium', '2005-09-16', 4),
(5, 'Expo', '1985-10-24', 5);

-- --------------------------------------------------------

--
-- Table structure for table `bookbookstore`
--

CREATE TABLE `bookbookstore` (
  `id` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `bookstoreid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookbookstore`
--

INSERT INTO `bookbookstore` (`id`, `stock`, `price`, `bookstoreid`, `bookid`) VALUES
(1, 2, '22.00', 2, 1),
(2, 5, '99.99', 1, 3),
(3, 1, '99.00', 4, 5),
(4, 8, '99.99', 3, 2),
(5, 2, '99.99', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `bookstore`
--

CREATE TABLE `bookstore` (
  `id` int(11) NOT NULL,
  `bookstorename` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookstore`
--

INSERT INTO `bookstore` (`id`, `bookstorename`, `address`, `phonenumber`, `website`, `email`) VALUES
(1, 'Books', 'Polna 2', '+4571617111', 'books.dk', 'books@gmail.com'),
(2, 'Inandout', 'Rundhoj Alle 25', '+4561711500', 'bookstore.dk', 'bookstore@gmail.com'),
(3, 'BSS Books', 'Rivgvej Syd 12', '+4567543311', 'bssbooks.dk', 'bssbooks@gmail.com'),
(4, 'Pegasus', 'Sonderhoj 30', '+4581716792', 'pegasus.dk', 'pegasus@gmail.com'),
(5, 'English Bookstore', 'Friedriks Alle 53', '+4552902836', 'ebookstore.dk', 'ebookstire@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `publishername` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `publishername`) VALUES
(1, 'Manta'),
(2, 'Book Master'),
(3, 'Pearson'),
(4, 'Wolters Kluwer'),
(5, 'Lagardere');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authorbook`
--
ALTER TABLE `authorbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_authorid` (`authorid`),
  ADD KEY `fk_bookid` (`bookid`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_publisherid` (`publisherid`);

--
-- Indexes for table `bookbookstore`
--
ALTER TABLE `bookbookstore`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bookstoreid` (`bookstoreid`),
  ADD KEY `fk_bookidbookstore` (`bookid`);

--
-- Indexes for table `bookstore`
--
ALTER TABLE `bookstore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `authorbook`
--
ALTER TABLE `authorbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `bookbookstore`
--
ALTER TABLE `bookbookstore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `bookstore`
--
ALTER TABLE `bookstore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authorbook`
--
ALTER TABLE `authorbook`
  ADD CONSTRAINT `fk_authorid` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`),
  ADD CONSTRAINT `fk_bookid` FOREIGN KEY (`bookid`) REFERENCES `book` (`id`);

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `fk_publisherid` FOREIGN KEY (`publisherid`) REFERENCES `publisher` (`id`);

--
-- Constraints for table `bookbookstore`
--
ALTER TABLE `bookbookstore`
  ADD CONSTRAINT `fk_bookidbookstore` FOREIGN KEY (`bookid`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `fk_bookstoreid` FOREIGN KEY (`bookstoreid`) REFERENCES `bookstore` (`id`);
