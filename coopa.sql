-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2018 at 07:55 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coopa`
--

-- --------------------------------------------------------

--
-- Table structure for table `advert`
--

CREATE TABLE `advert` (
  `id` int(8) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(800) NOT NULL,
  `date` date NOT NULL,
  `userName` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advert`
--

INSERT INTO `advert` (`id`, `title`, `content`, `date`, `userName`) VALUES
(1, 'ايام البوليتكنك', 'امىىىشالاخك تشى ت ثشةىلا شتىلامنشتلااخهشثكلامنش لاشىلا مشنتلاشتلا شىلاخهقثىلاخهقشثلا ةش ثشنمىلا شهلاى منةلا وشة لاةشبىلا قمنتلاىثق لاةش لا قلانتىقثملاملاةيىؤلا ةثبىلاتثى م شوةلا ةشثىلاهشتلام شنبلا نشبلا شهبمتلامثشنبتلانق لانشث ىلاهم منلا شةىلامهتش ملا شكرنطن جش ةلاوبب لاةو قثوةهرتقحخ قتلثقىىنقهقلتثق لمق هقثع لحشق ل زةبي رىمنىث خهخثقت  قث ثقة نمثق ثق ثق منثقتن كخنثق و لامن قثمنتق شوة وةش قثهتشثقتزثق نثقة هثق لاكمقثةلا ثقكمنلان حخثقلان قثوة لانقثم لانثقمتلاكنمثق ةلازوقث لانقث ', '2018-03-07', 111),
(2, 'Ø¬Ø§Ù…Ø¹Ø© Ø¨ÙˆÙ„ÙŠØ', 'ÙˆØ©Ù‰Ø«Ù‰Ù„Ø§ØªØ« Ø±Ù‰Ù…Ù†Ø± Ø«Ù‚ Ø±Ù„Ø§Ù†ØªÙ„Ø§Ø±ØªÙ†Ù‰Ø«ÙˆØ©Ø±Ø³ Ø±ØªÙ†Ù‰Ù†ØªØ±Ù‰ØªÙ†Ø«Ù‰Ø±Ù‰ Ø«Ø©Ø±Ù‰ØªØ« Ù†Ø± Ø«Ù‰Ø± Ø©Ø«Ù‰Ø± ØªÙ‚Ø« Ø±ØªÙ†Ù‚Ø«Ù‰ Ø±Ù‰Ø«Ù‚ Ø±Ø© Ø±', '2018-03-07', 111),
(3, 'Ø¬Ø§Ù…Ø¹Ø© Ø¨ÙˆÙ„ÙŠØªÙƒÙ†Ùƒ Ù‚Ù„Ø³Ø·ÙŠÙ†', 'ÙˆØ©Ù‰Ø«Ù‰Ù„Ø§ØªØ« Ø±Ù‰Ù…Ù†Ø± Ø«Ù‚ Ø±Ù„Ø§Ù†ØªÙ„Ø§Ø±ØªÙ†Ù‰Ø«ÙˆØ©Ø±Ø³ Ø±ØªÙ†Ù‰Ù†ØªØ±Ù‰ØªÙ†Ø«Ù‰Ø±Ù‰ Ø«Ø©Ø±Ù‰ØªØ« Ù†Ø± Ø«Ù‰Ø± Ø©Ø«Ù‰Ø± ØªÙ‚Ø« Ø±ØªÙ†Ù‚Ø«Ù‰ Ø±Ù‰Ø«Ù‚ Ø±Ø© Ø±', '2018-03-07', 111),
(4, 'lkdfmkljdflh jsjkdvhas', 'lkkjdv jkjkvnfjk ajbv aiv svnjs jsvskjnsjkvn ksdddvnkj vnsdkbv sjkvb vb jvbsdhvb sdhbv sdhb', '2018-03-07', 111),
(5, 'lkdfmkljdflh jsjkdvhas', 'lkkjdv jkjkvnfjk ajbv aiv svnjs jsvskjnsjkvn ksdddvnkj vnsdkbv sjkvb vb jvbsdhvb sdhbv sdhb', '2018-03-07', 111),
(6, 'aaaaaa', 'kjbkjbkvkgvkhbbkbb', '2018-04-01', 111),
(7, 'kkkkkkk', 'mnvhcgdifukjbnmjhvu', '2018-04-06', 222),
(8, 'khgkyg', 'ljtyurutfi', '2018-04-05', 111),
(9, 'today news', 'today is the best day', '2018-04-14', 222),
(10, 'mmmm', 'hjkhkjhjk', '2018-04-14', 222),
(11, 'nnnnnnnnnn', 'lkjljhjhk', '2018-04-14', 222),
(12, 'ppppp', 'jhhiuhu', '2018-04-14', 222),
(13, 'Ù„Ø§Ø«Ù…Ø´Ù…', 'Ù†ØªØ§Ø¹Ù†Ø§Ø¹Ø§', '2018-04-15', 222),
(14, 'anas', 'kjjhkuhuh', '2018-04-15', 222),
(15, 'kjkuh', 'khkuh', '2018-04-23', 222),
(16, 'Ø§Ø¨Ø¨Ø¨', 'Ø§Ø±Ø¤Ø§Ø±', '2018-04-23', 222);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(8) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `phone`, `message`, `date`) VALUES
(7, 'jhvgf', 543543, 'fxf', '2018-04-02'),
(8, 'Ø¹Ù„Ø§Ø¡ Ø£Ø¨Ùˆ ØµØ§ÙÙŠ', 5999999, 'Ù„Ø¯ÙŠ Ø§Ù‚ØªØ±Ø§Ø­ Ù„Ù…Ø´Ø±ÙˆØ¹ Ø¬ÙŠØ¯ Ø§Ø±ÙŠØ¯ Ø§Ù† Ø§Ø¹Ø±Ø¶Ù‡ Ø¹Ù„ÙŠÙƒÙ…\r\nØ§Ø­ØªØ±Ø§Ù…Ø§ØªÙŠ', '2018-04-14'),
(9, 'ALaa', 2147483647, 'lnjv ejknrnrvjn', '2018-04-22'),
(10, 'kjjnjkhu', 768758, 'jhbhjgjgj', '2018-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` int(8) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `name`, `email`) VALUES
(6, 'khg', 'lhkgkhgh@jhkjhk'),
(7, 'jhhj', 'jhjh@hjgjh'),
(8, 'jhhj', 'jhjh@hjgjh'),
(9, 'kjjk', 'jkbb@kjbkj'),
(10, 'jhgjhg', 'ghjghj@JHjg'),
(11, 'bkh', 'kjhkg@KJgk'),
(12, 'gfdgd', 'fsfe@fgd'),
(13, 'Ø¹Ù„Ø§Ø¡ Ù‡Ø´Ø§Ù… ÙŠÙˆØ³Ù Ø£Ø', 'Alaaabu.safi10@gmail'),
(14, 'Ø¹Ù„Ø§Ø¡ Ù‡Ø´Ø§Ù… ÙŠÙˆØ³Ù Ø£Ø¨Ùˆ ØµØ§ÙÙŠ', 'alaa@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(8) NOT NULL,
  `date` date NOT NULL,
  `type` int(1) NOT NULL,
  `memberUseName` int(6) NOT NULL,
  `acceptUserName` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `totalPremium` int(10) NOT NULL,
  `monthlyPre` int(10) NOT NULL,
  `confirmDate` date NOT NULL,
  `acceptUserName` int(6) NOT NULL,
  `rate` varchar(100) DEFAULT NULL,
  `hide` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `description`, `totalPremium`, `monthlyPre`, `confirmDate`, `acceptUserName`, `rate`, `hide`) VALUES
(1, 'soora booth', 'jijoemfdvoj erklnemvne rnvkemni lrkm elkvm d. kmlkenv dmv kemv kem ', 100, 500, '2018-04-05', 222, 'oiher gjire gjn lkjer oew vlnw ovn rewkvn wjv noiwr voiwrekvnwkf vlk wfov orn ojv', 0),
(2, 'كشك صورة', 'نمتمنل ثقتىل ثقتلىتثمق لىثق لخهثقىل ىثقىلمىقثلى ثقمتلى ثقىلمثق مل ثقىلثق ثق ل', 900, 150, '2018-04-02', 333, 'تتصىقفلاى صعقىلا فقىلا قعفلاىخصتقىلا عىلا صعقلاى فعلاى صعلاى عقصىلا ', 0),
(3, 'today', 'today is the best jjhjsvkjn jn jgnjkfdng dfjgn jdfgn kjdsfngkjsn fjgnsd fgkjnsfd jkgndsf jkgndskjfng jfgn kjfngjfnjkgnakjfgn kjafng kjnfg kjnf gkjnhuh', 1000, 100, '2018-04-19', 222, 'this is the firs rating ffdjj dvj dfjv jdfk nvjkdf jvkndf vjkdfnv kjfdn vjkdfnv kjfdnv jkjijih yg hh', 1),
(5, 'Ù…Ø·Ø¹Ù… Ø§Ù„Ø¨Ø´ÙˆØ', 'Ù…Ø·Ø¹Ù… ÙŠÙ‚Ø¯Ù… Ø¬Ù…ÙŠØ¹ Ù…Ø§ ØªØ´ØªÙ‡ÙŠÙ‡ Ø§Ù„Ø£Ù†ÙØ³ Ø¨Ø§Ù„Ø§Ø¶Ø§ÙØ© Ø§Ù„Ø© Ø§Ù„Ù…Ø£Ø·ÙˆÙ„Ø§Øª Ø§Ù„Ø´Ø¹Ø¨ÙŠØ© \r\nÙŠÙ…ÙƒÙ†ÙƒÙ… Ø·Ù„Ø¨ Ù…Ø£ÙƒÙˆÙ„Ø§', 5000, 500, '2018-04-19', 222, 'my first rating3', 0),
(6, 'kkkk', 'oppiu', 23, 325345, '2018-04-19', 222, 'lkdglnerhgurehg', 0),
(7, 'anas', ',jgkuygyfjt', 8000, 1000, '2018-04-20', 222, 'my first rating3', 0),
(8, 'dddd', 'yuyug', 87, 64, '2018-04-20', 222, 'sddvrgfntyn ', 0),
(9, 'dddd', 'yuyug', 6000, 600, '2018-04-20', 222, 'kjnffkjeh iwen', 0),
(10, 'Ù…Ø±ÙƒØ² Ø§Ù„ØªØ¯Ø±Ù', 'ÙŠÙ‚Ø¯Ù… Ø¯ÙˆØ±Ø§Øª Ù…Ù‡Ù†ÙŠØ© Ø¨Ø¬Ù…ÙŠØ¹ Ø§Ù„ØªØ®ØµØµØ§Øª\r\n', 6000, 600, '2018-04-22', 222, 'Ø§Ù†Ù‡Ø§ ÙÙƒØ±Ø© Ø¬ÙŠØ¯Ø© ÙˆØ§Ù†Ø§ Ø§Ù‚ØªØ±Ø­ ØªØ·Ø¨ÙŠÙ‚Ù‡Ø§', 0),
(11, 'kjhjkhkuhg', 'hhgkgkgg', 80, 6565, '2018-04-23', 222, 'ØªØ§Ù†Ø¹Ù„ØºÙ„Ù‡ØºÙ„Ù‡Ù„Ø®Ø¹Ø§', 0),
(12, 'Ù„ØºÙ„Ù‡ØºÙ„Ø¨Ø¤Ø§Ù„', 'ÙÙ‚Ø¨ÙØ§Ø¨ÙØ¹Ù‡Ù†Ù„Ø§Øª', 800, 80000, '2018-04-23', 222, 'Ù†Ù„ØºØ¨Ø¹ÙØ¹ÙÙ‡7Ù„Ù‡Ø¹Ù„', 1),
(13, 'eeeeeeeeee', 'wdcsdv', 86, 65, '2018-04-23', 222, ',bhgyiggoiuij', 0),
(14, 'uuuuuuu', 'jhjkhhkh', 23435, 3523, '2018-04-23', 222, ',mnjkuguhlj', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projectproposal`
--

CREATE TABLE `projectproposal` (
  `id` int(8) NOT NULL,
  `title` varchar(30) NOT NULL,
  `proposal` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `rate` varchar(100) DEFAULT NULL,
  `userName` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projectproposal`
--

INSERT INTO `projectproposal` (`id`, `title`, `proposal`, `date`, `rate`, `userName`) VALUES
(6, 'Ø§Ù†Ø³', 'Ù„Ø¨Ø§ØªÙ„Øº8Ù„ØºÙ„', '2018-04-23', 'Ù…Ù†Ø¹Ù†Ø§ÙÙ„ØªÙ‰ÙØ§ØºØ§Øª', 222);

-- --------------------------------------------------------

--
-- Table structure for table `project_subscribers`
--

CREATE TABLE `project_subscribers` (
  `userName` int(6) NOT NULL,
  `projectId` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_subscribers`
--

INSERT INTO `project_subscribers` (`userName`, `projectId`) VALUES
(111, 2),
(111, 3),
(111, 7),
(111, 10),
(111, 12),
(222, 8),
(222, 11),
(222, 12),
(444, 10),
(444, 12);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userName` int(6) NOT NULL,
  `fName` varchar(10) NOT NULL,
  `mName` varchar(10) DEFAULT NULL,
  `lName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `phone` int(20) DEFAULT NULL,
  `picture` varchar(250) DEFAULT 'sympol.png',
  `type` int(1) NOT NULL DEFAULT '0',
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userName`, `fName`, `mName`, `lName`, `email`, `password`, `phone`, `picture`, `type`, `gender`) VALUES
(0, 'Ø£Ù†Ø³', 'ÙŠØ­ÙŠÙ‰', 'Ø¹Ø³Ø§Ù', 'anas.assaf96@gmail.com', '202cb962ac59075b964b07152d234b70', 5999667, 'sympol.png', 0, '1'),
(111, 'Alaa', 'Hisham', 'Abu Safi', 'Alaaabu.safi10@gmail.com', '202cb962ac59075b964b07152d234b70', 5999, 'Hat.PNG', 0, '1'),
(222, 'Ali', 'dad', 'family', 'hffhd@dgdgfd', '202cb962ac59075b964b07152d234b70', 569999, 'user-333.jpg', 3, '2'),
(333, 'Ø¹Ù„Ø§Ø¡', 'Ù‡Ø´Ø§Ù…', 'Ø£Ø¨Ùˆ ØµØ', 'alaa@hotmail.com', '202cb962ac59075b964b07152d234b70', 5999999, 'sympol.png', 4, '1'),
(444, 'belal', 'jihad', 'amro', 'lkljhl@gcghvg', '202cb962ac59075b964b07152d234b70', 59999, 'Hat.PNG', 5, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userName` (`userName`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acceptUserName` (`acceptUserName`),
  ADD KEY `memberUseName` (`memberUseName`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acceptUserName` (`acceptUserName`);

--
-- Indexes for table `projectproposal`
--
ALTER TABLE `projectproposal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userName` (`userName`);

--
-- Indexes for table `project_subscribers`
--
ALTER TABLE `project_subscribers`
  ADD PRIMARY KEY (`userName`,`projectId`),
  ADD KEY `forignkeyforprojectId` (`projectId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userName`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `projectproposal`
--
ALTER TABLE `projectproposal`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advert`
--
ALTER TABLE `advert`
  ADD CONSTRAINT `advert_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`acceptUserName`) REFERENCES `user` (`userName`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`memberUseName`) REFERENCES `user` (`userName`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_2` FOREIGN KEY (`acceptUserName`) REFERENCES `user` (`userName`);

--
-- Constraints for table `projectproposal`
--
ALTER TABLE `projectproposal`
  ADD CONSTRAINT `projectproposal_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`);

--
-- Constraints for table `project_subscribers`
--
ALTER TABLE `project_subscribers`
  ADD CONSTRAINT `forignkeyforprojectId` FOREIGN KEY (`projectId`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `forignkeyforusername` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
