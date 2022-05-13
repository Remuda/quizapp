-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2022 at 04:07 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ooplogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pwdReset`
--

CREATE TABLE `pwdReset` (
  `pwdResetId` int(11) NOT NULL,
  `pwdResetEmail` text COLLATE utf8_bin NOT NULL,
  `pwdResetSelector` text COLLATE utf8_bin NOT NULL,
  `pwdResetToken` longtext COLLATE utf8_bin NOT NULL,
  `pwdResetExpires` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pwdReset`
--

INSERT INTO `pwdReset` (`pwdResetId`, `pwdResetEmail`, `pwdResetSelector`, `pwdResetToken`, `pwdResetExpires`) VALUES
(1, 'neembaker@gmail.com', '5bf59939fdca8e62', '$2y$10$W/K2F/dWxjgaCprCIJ.xw.JmKetlPE5SvnslbLz.WQlGeDlqn9K8a', '1652068457'),
(3, 'arizmrcog@gmail.com', '77f7a5b0e17104a2', '$2y$10$ZvQb/CGD/eTkhwFs4i2L4uSUUNfS8HDNJHbuyBOziMFh5dENo.N9K', '1652327279');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `users_uid` tinytext NOT NULL,
  `users_pwd` longtext NOT NULL,
  `users_email` tinytext NOT NULL,
  `useridnum` int(20) NOT NULL,
  `user_session_id` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_uid`, `users_pwd`, `users_email`, `useridnum`, `user_session_id`) VALUES
(1, 'Krossing', '$2y$10$hN7AHeV8H8yGcnSyTxwR6OyAcb4k1mCz4I/EeVjurqKpUde9IpDsm', 'test@gmail.com', 1, 'k6e8f6785sclhaj9cf0i73bkbe'),
(2, 'Umer', '$2y$10$VsJzxTKJqhs6hYCZwOkIY.y1zPmm.3W7kdtyp3Bq2EjfINMIFZPii', 'smth@test.com', 2, 'voq768ipim8bvnk0vcngn05c0s'),
(3, 'Nth', '$2y$10$KuKFZ4xSjo0aYF.ISwToZe3t0KvqS4PKl4CuVWuPrfL70/EWJjfd6', 'nth@test.com', 3, 'eki8p84du9jt0jhcbgi8bd23uc'),
(4, 'Admin', '$2y$10$SJBuepOd2/K9H9sQBi.ln.y2kzM.OD3KrVbunrJc3qL9KEkFCJdwO', 'admin@admin.edu', 4, ''),
(5, 'Smm', '$2y$10$wASu.nr5mR7KPRL8vFh4T.aQmjNirdXZCU5MdFWbf3/nkvbZ/BFI6', 'smm@gmail.com', 5, '3q23nkp0ajrm7ns8q1i3sa23p6'),
(6, 'Gigi', '$2y$10$UGHmpmbmuatWxsO/nBCa3uTaCuxvudfN2.SgKeqAWJhCe9Qu4zPuW', 'ur0001@mix.wvu.edu', 6, ''),
(7, 'neem', '$2y$10$/6DGmkE.lYeXu4qiNh2eseDpPVZ6rz0UmLDsF8/Q4.V/eM7b82gTy', 'neembaker@gmail.com', 7, ''),
(8, 'Now', '$2y$10$oP0Txwnv2YZPons..meLq.MhuLJp4/aX9gj1yA/LD28usJWzkYpX.', 'now@test.com', 8, '6470e7f546edf6852c776501c5045be8'),
(9, 'New', '$2y$10$lqJtF/eRLM8YsvFiZdjBX.4blUzxxBWXs2PS9jao7rm43bv7izzpC', 'new@test.com', 9, '9e3ab71a1ca7d8cdfa9bbb5cba1dc10d'),
(10, 'Aisha', '$2y$10$JChXpfAKduTl/X0m.RKBu.3oH3U.yRGvSeqoJnc8PlZ6iKoOPrg4O', 'arizmrcog@gmail.com', 10, '9bdab04ba22b0d898a3a27a4ff6df277'),
(11, 'Abu', '$2y$10$rt3kYCvVSnlOxftvzfaXDupwBUnv1Q8JKO/eyO8bRxn4/VuLDf9Im', 'fsconex@hotmail.com', 11, '3f970890f30a7bc56bb9eea9b775a238'),
(12, 'Riz', '$2y$10$inbuHBldEik3SbBd7X4ZguHBaZ23/QCxNfVms21TTFFBog78vR8Qm', 'rghani@live.com', 12, 'e5a10e8677f51fae59502d5df3000a3a'),
(13, 'Test', '$2y$10$x0r/b5aXDdGDS9oG2vbFP.qyMrdiRJ857DnxIFqo/Rr4DRqfdpRnS', 'sr94@windowslive.com', 13, 'b03433d11912376c02441b1a60b452db'),
(14, 'Gaga', '$2y$10$K5ssgIHokXmyGPbPKz6xIOrkWvV9mIvp.zU4p/wqyS0BVzWZZ/iHC', 'gaga@test.com', 14, '986e5bbfacd15672c1ff6cb77e2e5676');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pwdReset`
--
ALTER TABLE `pwdReset`
  ADD PRIMARY KEY (`pwdResetId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pwdReset`
--
ALTER TABLE `pwdReset`
  MODIFY `pwdResetId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
