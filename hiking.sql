-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2022 at 08:02 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hiking`
--

-- --------------------------------------------------------

--
-- Table structure for table `auditor`
--

CREATE TABLE `auditor` (
  `ID` int(255) NOT NULL,
  `adminemail` varchar(80) NOT NULL,
  `message` varchar(255) NOT NULL,
  `addcomment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auditor`
--

INSERT INTO `auditor` (`ID`, `adminemail`, `message`, `addcomment`) VALUES
(3, 'Mourad@gmail.com            ', 'ant 3aml eh a5bark', ''),
(4, 'Mario@gmail.com            ', 'el7mdallah ya kbeer', 'Word is not good'),
(6, 'mariam@gmail.com            ', 'el7mdallah ya kbeer', 'Kbeer is not good word'),
(7, 'Helmy@gmail.com            ', 'b5er ya 3mohom ant 3aml eh', '3mohom bad word'),
(8, 'Yasser@gmail.com            ', 'ant 3aml eh a5bark', 'please man');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `ID` int(255) NOT NULL,
  `Sender` varchar(80) NOT NULL,
  `Receiver` varchar(80) NOT NULL,
  `Message` varchar(255) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`ID`, `Sender`, `Receiver`, `Message`, `Status`) VALUES
(245, 'Helmy@gmail.com      ', 'mario@gmail.com    ', 'azik', 'Read'),
(246, 'Mariam@gmail.com      ', 'Mourad@gmail.com    ', 'hi', 'Read');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `ID` int(100) NOT NULL,
  `totalAmount` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `product_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`ID`, `totalAmount`, `email`, `product_id`) VALUES
(30, '                2048', 'Mario@gmail.com', '16'),
(31, '                2400', 'Mourad@gmail.com', '15,17'),
(32, '                1024', 'Mariam@gmail.com', '16'),
(33, '                1536', 'Helmy@gmail.com', '20,16'),
(34, '                800 ', 'MohamedMourad@gmail.com', '16');

-- --------------------------------------------------------

--
-- Table structure for table `contuct`
--

CREATE TABLE `contuct` (
  `ID` int(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `suggestion` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contuct`
--

INSERT INTO `contuct` (`ID`, `email`, `suggestion`, `image`) VALUES
(1, 'Yasser@gmail.com', ' saacsxza', 'orange.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `groupId` int(11) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  `groupLocation` varchar(50) NOT NULL,
  `groupDescription` text NOT NULL,
  `groupDifficulty` varchar(50) NOT NULL,
  `groupImage` varchar(255) NOT NULL,
  `groupDistance` int(50) NOT NULL,
  `groupDuration` int(11) NOT NULL,
  `Taxes` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupId`, `groupName`, `groupLocation`, `groupDescription`, `groupDifficulty`, `groupImage`, `groupDistance`, `groupDuration`, `Taxes`) VALUES
(36, 'Hiking', 'China', 'We will start at 4pm ', 'Easy', 'China.png', 300, 11, 10),
(37, 'Hiking', 'United States', 'Good place to make hiking', 'Medium', 'UnitedStates.png', 100, 3, 18);

-- --------------------------------------------------------

--
-- Table structure for table `hrau`
--

CREATE TABLE `hrau` (
  `ID` int(255) NOT NULL,
  `adminemail` varchar(255) NOT NULL,
  `auditoremail` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `investigate` varchar(255) NOT NULL,
  `penalty` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hrau`
--

INSERT INTO `hrau` (`ID`, `adminemail`, `auditoremail`, `message`, `investigate`, `penalty`) VALUES
(1, 'Helmy@gmail.com            ', 'Mario@gmail.com', 'el7mdallah ya kbeer', 'investigated', 0);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `ID` int(255) NOT NULL,
  `email` varchar(80) NOT NULL,
  `groupId` int(11) NOT NULL,
  `Taxes` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`ID`, `email`, `groupId`, `Taxes`) VALUES
(36, 'Helmy@gmail.com', 37, 18),
(37, 'Mario@gmail.com', 36, 10),
(39, 'Yasser@gmail.com', 37, 18),
(40, 'Mourad@gmail.com', 36, 10),
(41, 'MohamedMourad@gmail.com', 36, 10);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(40) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productDescription` varchar(255) NOT NULL,
  `productPrice` varchar(255) NOT NULL,
  `productImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `productName`, `productDescription`, `productPrice`, `productImg`) VALUES
(16, 'Sticks', 'Strong Sticks', '800', 'sticks.jpg'),
(20, 'bottle', 'strong bottle', '400', 'bottle.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rate_groups`
--

CREATE TABLE `rate_groups` (
  `ID` int(255) NOT NULL,
  `groupid` int(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `rating` int(10) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rate_groups`
--

INSERT INTO `rate_groups` (`ID`, `groupid`, `email`, `rating`, `review`) VALUES
(1, 36, 'Mario@gmail.com', 2, 'not good'),
(2, 36, 'Mario@gmail.com', 3, 'pls');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `ID` int(255) NOT NULL,
  `product_id` int(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `rating` int(10) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`ID`, `product_id`, `email`, `rating`, `review`) VALUES
(10, 16, 'Mario@gmail.com', 2, 'Good product'),
(12, 15, 'Mariam@gmail.com', 3, 'good bottle'),
(13, 15, 'Mourad@gmail.com', 2, 'Good product'),
(14, 15, 'Yasser@gmail.com', 4, 'Awesome product'),
(15, 15, 'Helmy@gmail.com', 5, 'Awesome');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `ID` int(255) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `userType` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `firstName`, `lastName`, `email`, `password`, `Image`, `userType`) VALUES
(105, 'Helmy', 'Magdy', 'helmymagdyattalla@gmail.com', '202cb962ac59075b964b07152d234b70', 'C:\\Users\\LENOVO\\OneDrive\\Pictures\\Screenshots', 2),
(106, 'Mourad', 'Mohamed', 'MohamedMourad@gmail.com', '202cb962ac59075b964b07152d234b70', '', 1),
(107, 'Mariam', 'Maged', 'Mariam@gmail.com', '202cb962ac59075b964b07152d234b70', '', 2),
(108, 'Mario', 'Shady', 'mario@gmail.com', '202cb962ac59075b964b07152d234b70', '', 3),
(109, 'Yasser', 'Mohamed', 'Yasser@gmail.com', '202cb962ac59075b964b07152d234b70', '', 4),
(110, 'Moustafa ', 'Aboelalaa', 'Moustafa@gmail.com', '202cb962ac59075b964b07152d234b70', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `ID` int(255) NOT NULL,
  `email` varchar(80) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`ID`, `email`, `question`) VALUES
(59, 'Yasser@gmail.com', 'How R U ?'),
(60, 'Yasser@gmail.com', 'What is your favorite player ?'),
(61, 'Yasser@gmail.com', 'Azik ?'),
(62, 'Yasser@gmail.com', 'What is your favorite food ?'),
(63, 'Yasser@gmail.com', 'What is your favorite phone ?'),
(66, 'mario@gmail.com', 'What is your goal?');

-- --------------------------------------------------------

--
-- Table structure for table `surveyhiker`
--

CREATE TABLE `surveyhiker` (
  `ID` int(255) NOT NULL,
  `email` varchar(80) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(5) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `name`) VALUES
(1, 'Hiker'),
(2, 'Administrator'),
(3, 'Auditor'),
(4, 'HR');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `ID` int(255) NOT NULL,
  `product_id` int(40) NOT NULL,
  `productPrice` int(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auditor`
--
ALTER TABLE `auditor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contuct`
--
ALTER TABLE `contuct`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groupId`);

--
-- Indexes for table `hrau`
--
ALTER TABLE `hrau`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `groupId` (`groupId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rate_groups`
--
ALTER TABLE `rate_groups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `groupid` (`groupid`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `userType` (`userType`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `surveyhiker`
--
ALTER TABLE `surveyhiker`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auditor`
--
ALTER TABLE `auditor`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `contuct`
--
ALTER TABLE `contuct`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `groupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `hrau`
--
ALTER TABLE `hrau`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rate_groups`
--
ALTER TABLE `rate_groups`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `surveyhiker`
--
ALTER TABLE `surveyhiker`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=653;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_cart`
--
ALTER TABLE `user_cart`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `Registration_ibfk_1` FOREIGN KEY (`userType`) REFERENCES `user` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
