-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 10:31 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dims-meet`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batID` int(11) NOT NULL,
  `batUUID` varchar(100) NOT NULL,
  `orgUUID` varchar(100) NOT NULL,
  `batName` varchar(100) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batID`, `batUUID`, `orgUUID`, `batName`, `ts`, `is_delete`) VALUES
(1, '3957ae69-6602-49d9-916e-af389e9975bf', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', 'Batch11', '2020-06-21 09:15:23', 0),
(2, 'd998cc44-c997-4bcf-8515-a459db931315', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', 'batch2', '2020-06-22 06:28:59', 0),
(3, '11c24e71-7802-440f-9972-dc02778ce0b8', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', 'batch3', '2020-06-22 06:29:12', 0),
(4, 'e8fc8c87-828c-4732-ac23-4abf06d5bf5e', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', 'batch4', '2020-06-22 06:29:21', 0),
(5, 'e9b6354a-bd5a-4b75-a34c-4026003b62e8', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', '2019 -2020', '2020-06-28 11:57:03', 0),
(6, '927ce722-9836-465e-be49-3236ee9c988c', '65276cd9-29bb-4cc6-994b-cad79465d379', '2019', '2020-07-03 04:46:40', 0),
(7, '034e15ae-057d-41ad-a4a3-f91c2b366bc4', '65276cd9-29bb-4cc6-994b-cad79465d379', '2020', '2020-07-03 04:46:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `couID` int(11) NOT NULL,
  `couUUID` varchar(100) NOT NULL,
  `couName` varchar(100) NOT NULL,
  `depUUID` varchar(500) NOT NULL,
  `orgUUID` varchar(500) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`couID`, `couUUID`, `couName`, `depUUID`, `orgUUID`, `ts`, `is_delete`) VALUES
(1, '664465c3-99d9-4e06-a19e-2c914d73d8c0', 'Course1', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-21 09:53:27', 0),
(2, '921f0902-90cc-45f3-869e-51ee91329cc4', 'cou2', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-21 10:13:15', 0),
(3, '40ec6f98-6ddb-4b44-af24-20045bbdcb8c', 'rw', 'cc6b47b4-3d2d-4169-8943-ca11f7b4b771', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-22 08:54:32', 0),
(4, 'dbbbb8e8-04a3-4024-920d-f916707d4f31', 'co3', 'cc6b47b4-3d2d-4169-8943-ca11f7b4b771', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-22 08:54:41', 1),
(5, 'ceffd3cf-1338-4809-b86d-2d2af90447c9', 'DEP2COU', 'cc6b47b4-3d2d-4169-8943-ca11f7b4b771', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-24 05:01:49', 0),
(6, '4f3eee22-6a49-4186-9bce-f010e68f22a5', ' BBA Aviation and Hospitality', '893ce498-6641-4d81-993c-3854cf3d511a', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', '2020-06-28 11:53:41', 0),
(7, '896795b3-c9b9-4743-b29a-0336b06408a8', ' BBA Travel & Tourism', '1c02077d-d8f3-4a9d-b319-239b53075f9d', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', '2020-06-28 11:53:54', 0),
(8, '557034eb-eb86-429a-b802-bb183f75e962', 'B-Com Finance,', 'a6037242-93e0-4df1-a294-8679e9f31379', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', '2020-06-28 11:54:11', 0),
(9, 'badbc49b-913a-4b30-8879-89d2533936c2', 'B-Com Computer Application', 'a6037242-93e0-4df1-a294-8679e9f31379', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', '2020-06-28 11:54:25', 0),
(10, '4628ef4f-6a2f-4067-affe-af948f96e8a0', 'BTTM', '1c02077d-d8f3-4a9d-b319-239b53075f9d', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', '2020-06-28 11:54:51', 0),
(11, '68c2bef4-3923-4f49-90fe-810f6830a1aa', 'Course', 'cc7db8f8-8aaa-488a-b463-1fd1d24a1c4e', '65276cd9-29bb-4cc6-994b-cad79465d379', '2020-07-03 04:45:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `depID` int(11) NOT NULL,
  `depUUID` varchar(100) NOT NULL,
  `orgUUID` varchar(100) NOT NULL,
  `depName` varchar(500) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`depID`, `depUUID`, `orgUUID`, `depName`, `ts`, `is_delete`) VALUES
(1, 'cc6b47b4-3d2d-4169-8943-ca11f7b4b771', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', 'DEPARTMENT1', '2020-06-21 09:31:04', 0),
(2, '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', 'DEPARTMENT', '2020-06-21 09:33:43', 0),
(3, '893ce498-6641-4d81-993c-3854cf3d511a', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', 'Aviation ', '2020-06-28 11:52:37', 0),
(4, '1c02077d-d8f3-4a9d-b319-239b53075f9d', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', 'Tourism', '2020-06-28 11:52:57', 0),
(5, 'a6037242-93e0-4df1-a294-8679e9f31379', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', 'Commerce ', '2020-06-28 11:53:13', 0),
(6, 'cc7db8f8-8aaa-488a-b463-1fd1d24a1c4e', '65276cd9-29bb-4cc6-994b-cad79465d379', 'Dep 1', '2020-07-03 04:45:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `divID` int(11) NOT NULL,
  `divUUID` varchar(100) NOT NULL,
  `divName` varchar(100) NOT NULL,
  `depUUID` varchar(100) NOT NULL,
  `couUUID` varchar(100) NOT NULL,
  `orgUUID` varchar(100) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`divID`, `divUUID`, `divName`, `depUUID`, `couUUID`, `orgUUID`, `ts`, `is_delete`) VALUES
(1, 'cfd9da42-2458-4a43-802d-ac846b2afc36', 'Division11', '', '664465c3-99d9-4e06-a19e-2c914d73d8c0', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-21 10:12:13', 0),
(2, '797f80f4-f6ad-4c8d-adca-5ca531fadc14', 'DIV2', '', 'ceffd3cf-1338-4809-b86d-2d2af90447c9', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-24 05:02:25', 0),
(3, 'b3b67c5f-b507-440c-a475-8ee03c5e859e', 'DIV3', '', '40ec6f98-6ddb-4b44-af24-20045bbdcb8c', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-24 05:02:44', 0),
(4, '5c64d539-82ab-4560-9ea6-4296b7a27465', 'Ist Year ', '893ce498-6641-4d81-993c-3854cf3d511a', '4f3eee22-6a49-4186-9bce-f010e68f22a5', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', '2020-06-28 11:56:03', 0),
(5, '6bf34e33-f833-4685-b7e1-3e5dbcb5dcbc', 'DIv1', 'cc7db8f8-8aaa-488a-b463-1fd1d24a1c4e', '68c2bef4-3923-4f49-90fe-810f6830a1aa', '65276cd9-29bb-4cc6-994b-cad79465d379', '2020-07-03 04:45:39', 0),
(6, 'd4e0dee7-e06d-4df1-93d3-952e4aab865c', 'Div2', 'cc7db8f8-8aaa-488a-b463-1fd1d24a1c4e', '68c2bef4-3923-4f49-90fe-810f6830a1aa', '65276cd9-29bb-4cc6-994b-cad79465d379', '2020-07-03 04:45:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `orgID` int(11) NOT NULL,
  `orgUUID` varchar(500) NOT NULL,
  `orgName` varchar(500) NOT NULL,
  `orgLogo` varchar(500) NOT NULL,
  `orgAddress` varchar(500) NOT NULL,
  `orgWebsite` varchar(500) NOT NULL,
  `orgEmail` varchar(100) NOT NULL,
  `orgPhone` varchar(30) NOT NULL,
  `orgPincode` varchar(500) NOT NULL,
  `createdBy` varchar(500) NOT NULL,
  `createddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ts` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`orgID`, `orgUUID`, `orgName`, `orgLogo`, `orgAddress`, `orgWebsite`, `orgEmail`, `orgPhone`, `orgPincode`, `createdBy`, `createddate`, `ts`, `is_delete`) VALUES
(1, 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', 'Organization', '1592712805108641372396bc1ef8c923d420b3e44e35652f99b2~01 (2).jpg', 'orgaddress', '', 'org@gmail.com', '7559831834', '670103', '', '2020-06-21 09:43:25', '2020-06-21 09:43:25', 0),
(2, '1e16bb75-4ea4-42d8-a73e-c285cca2d796', 'OrganizationEdit1', '', 'orgaddress', '', 'org@gmail.com', '7559831834', '670103', '', '2020-06-21 09:58:43', '2020-06-21 10:00:10', 0),
(3, 'b0f23e38-8419-42a6-87f1-c4b0fdac9edf', 'Check ORGANIZATION', '', 'ADD', '', '12@GMAIL.COM', '7878787878', '123456', '', '2020-06-21 10:00:45', '2020-06-21 10:00:45', 0),
(4, '82c080ca-a77a-4662-a70b-9e79081680d6', 'ORG', '159271873894103124396bc1ef8c923d420b3e44e35652f99b2~01 (2).jpg', 'knn', '', 'hh@dd.in', '87787', '12', '', '2020-06-21 11:22:18', '2020-06-21 11:22:32', 0),
(5, 'ad6d3702-02f8-4e5d-b901-252375d66b50', 'Check ing', '159281400561345866196bc1ef8c923d420b3e44e35652f99b2~01 (2).jpg', 'awdede', '', 'org11@gmail.com', '3345465', 'swdw', '', '2020-06-22 13:50:05', '2020-06-22 13:50:28', 0),
(6, 'dc1328f5-25d0-4075-a3dd-5166953a0ffe', 'ch', '159281420844348614296bc1ef8c923d420b3e44e35652f99b2~01 (2).jpg', 'jjhjhj', '', 'hjhh@hgj.ub', '6766767', '3w232', '', '2020-06-22 13:53:28', '2020-06-22 13:59:29', 1),
(7, '65276cd9-29bb-4cc6-994b-cad79465d379', 'New', '1593236186175458228196bc1ef8c923d420b3e44e35652f99b2~01 (2).jpg', 'add', '', 'sh@gmail.com', '35454646', '123', '8efcb155-c41a-4949-a847-ac36d2d50021', '2020-06-27 11:06:26', '2020-06-27 11:06:26', 0),
(8, '81a38704-41b7-453f-8a50-693b124555e2', 'Organization', '1593245216127238626996bc1ef8c923d420b3e44e35652f99b2~01 (2).jpg', 'add', '', 'organization@gmail.com', '4444444', '7676', 'ce680e0e-2da9-491f-945e-484d7047rtb2', '2020-06-27 13:36:56', '2020-06-27 13:36:56', 0),
(9, 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', 'M . M College Of Arts', '', 'MM KNOWLEDGE COLLEGE KARAKKUNDU VIA. PARIYARAM P.O. THIRUVATTOOR KANNUR', '', 'mmcollegeprincipal@gmail.com', '91460-2222243', '670502', 'ce680e0e-2da9-491f-945e-484d7047rtb2', '2020-06-28 13:41:28', '2020-06-28 13:41:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `org_questionnaire`
--

CREATE TABLE `org_questionnaire` (
  `id` int(11) NOT NULL,
  `orgquestUUID` varchar(100) NOT NULL,
  `orgUUID` varchar(100) NOT NULL,
  `questionnaire` varchar(500) NOT NULL,
  `title` varchar(100) NOT NULL,
  `couUUID` varchar(100) NOT NULL,
  `subUUID` varchar(100) NOT NULL,
  `divUUID` varchar(100) NOT NULL,
  `batUUID` varchar(100) NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_questionnaire`
--

INSERT INTO `org_questionnaire` (`id`, `orgquestUUID`, `orgUUID`, `questionnaire`, `title`, `couUUID`, `subUUID`, `divUUID`, `batUUID`, `is_delete`, `ts`) VALUES
(1, '92cc6dd3-7cec-4a25-a6a2-4af066e04a36', '65276cd9-29bb-4cc6-994b-cad79465d379', '65276cd9-29bb-4cc6-994b-cad79465d3791593756408541814702.jpg', 'WSWQSW', '68c2bef4-3923-4f49-90fe-810f6830a1aa', '7de5fff8-bb32-477a-b2c0-dc5d28c9e440', '6bf34e33-f833-4685-b7e1-3e5dbcb5dcbc', '927ce722-9836-465e-be49-3236ee9c988c', 0, '2020-07-03 06:06:48'),
(2, 'e92d5ff7-3f29-4bcd-817c-9faaf3065b91', '65276cd9-29bb-4cc6-994b-cad79465d379', '65276cd9-29bb-4cc6-994b-cad79465d3791593757760889486867.jpg', 'TITLE', '68c2bef4-3923-4f49-90fe-810f6830a1aa', '7de5fff8-bb32-477a-b2c0-dc5d28c9e440', '6bf34e33-f833-4685-b7e1-3e5dbcb5dcbc', '927ce722-9836-465e-be49-3236ee9c988c', 1, '2020-07-03 06:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `staffbatch`
--

CREATE TABLE `staffbatch` (
  `staffBtchID` int(11) NOT NULL,
  `batUUID` varchar(100) NOT NULL,
  `userUUID` varchar(100) NOT NULL,
  `ts` timestamp NULL DEFAULT NULL,
  `createdUserUUID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staffchapter`
--

CREATE TABLE `staffchapter` (
  `staffchapID` int(11) NOT NULL,
  `chapterUUID` varchar(100) NOT NULL,
  `chapName` varchar(500) NOT NULL,
  `userUUID` varchar(100) NOT NULL,
  `depUUID` varchar(100) NOT NULL,
  `couUUID` varchar(100) NOT NULL,
  `subUUID` varchar(100) NOT NULL,
  `batUUID` varchar(100) NOT NULL,
  `is_delete` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdUserUUID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffchapter`
--

INSERT INTO `staffchapter` (`staffchapID`, `chapterUUID`, `chapName`, `userUUID`, `depUUID`, `couUUID`, `subUUID`, `batUUID`, `is_delete`, `ts`, `createdUserUUID`) VALUES
(1, 'e7a9fbfe-f710-4687-835a-2550820fef3e', 'CHAPTER1', '8efcb155-c41a-4949-a847-ac36d2d50021', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', '664465c3-99d9-4e06-a19e-2c914d73d8c0', 'ea8cf7d6-d505-41f5-915b-4a5deeed88ab', '3957ae69-6602-49d9-916e-af389e9975bf', 0, '2020-06-24 05:58:01', '8efcb155-c41a-4949-a847-ac36d2d50021'),
(2, '', 'CHAPTER2', '8efcb155-c41a-4949-a847-ac36d2d50021', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', '664465c3-99d9-4e06-a19e-2c914d73d8c0', 'ea8cf7d6-d505-41f5-915b-4a5deeed88ab', 'd998cc44-c997-4bcf-8515-a459db931315', 1, '2020-06-24 06:22:36', '8efcb155-c41a-4949-a847-ac36d2d50021'),
(3, 'e7a9fbfe-f710-4687-835a-2550820fef3d', 'Chapter2', '8efcb155-c41a-4949-a847-ac36d2d50021', 'cc6b47b4-3d2d-4169-8943-ca11f7b4b771', 'ceffd3cf-1338-4809-b86d-2d2af90447c9', '71e17484-655b-44bb-b6e7-b1e078230881', '3957ae69-6602-49d9-916e-af389e9975bf', 0, '2020-06-26 04:30:02', '8efcb155-c41a-4949-a847-ac36d2d50021');

-- --------------------------------------------------------

--
-- Table structure for table `staffcourse`
--

CREATE TABLE `staffcourse` (
  `staffCouID` int(11) NOT NULL,
  `couUUID` varchar(100) NOT NULL,
  `userUUID` varchar(100) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdUserUUID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staffdepartment`
--

CREATE TABLE `staffdepartment` (
  `staffDepID` int(11) NOT NULL,
  `depUUID` varchar(100) NOT NULL,
  `userUUID` varchar(100) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staffdivision`
--

CREATE TABLE `staffdivision` (
  `staffDivID` int(11) NOT NULL,
  `divUUID` varchar(100) NOT NULL,
  `userUUID` varchar(100) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdUserUUID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staffsettings`
--

CREATE TABLE `staffsettings` (
  `staffsetID` int(11) NOT NULL,
  `userUUID` varchar(100) NOT NULL,
  `depUUID` varchar(100) NOT NULL,
  `couUUID` varchar(100) NOT NULL,
  `divUUID` varchar(100) NOT NULL,
  `subUUID` varchar(100) NOT NULL,
  `batUUID` varchar(100) NOT NULL,
  `createdUserUUID` varchar(100) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffsettings`
--

INSERT INTO `staffsettings` (`staffsetID`, `userUUID`, `depUUID`, `couUUID`, `divUUID`, `subUUID`, `batUUID`, `createdUserUUID`, `ts`, `is_delete`) VALUES
(1, '8efcb155-c41a-4949-a847-ac36d2d50021', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', '664465c3-99d9-4e06-a19e-2c914d73d8c0', 'cfd9da42-2458-4a43-802d-ac846b2afc36', 'ea8cf7d6-d505-41f5-915b-4a5deeed88ab', '3957ae69-6602-49d9-916e-af389e9975bf', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-24 04:15:59', 0),
(2, '8efcb155-c41a-4949-a847-ac36d2d50021', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', '664465c3-99d9-4e06-a19e-2c914d73d8c0', 'cfd9da42-2458-4a43-802d-ac846b2afc36', 'ea8cf7d6-d505-41f5-915b-4a5deeed88ab', '3957ae69-6602-49d9-916e-af389e9975bf', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-24 04:20:10', 0),
(3, '8efcb155-c41a-4949-a847-ac36d2d50021', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', '664465c3-99d9-4e06-a19e-2c914d73d8c0', 'cfd9da42-2458-4a43-802d-ac846b2afc36', 'ea8cf7d6-d505-41f5-915b-4a5deeed88ab', 'd998cc44-c997-4bcf-8515-a459db931315', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-24 04:20:16', 0),
(4, '8efcb155-c41a-4949-a847-ac36d2d50021', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', '664465c3-99d9-4e06-a19e-2c914d73d8c0', 'cfd9da42-2458-4a43-802d-ac846b2afc36', 'ea8cf7d6-d505-41f5-915b-4a5deeed88ab', '11c24e71-7802-440f-9972-dc02778ce0b8', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-24 04:20:29', 0),
(5, '8efcb155-c41a-4949-a847-ac36d2d50021', 'cc6b47b4-3d2d-4169-8943-ca11f7b4b771', 'ceffd3cf-1338-4809-b86d-2d2af90447c9', '797f80f4-f6ad-4c8d-adca-5ca531fadc14', '71e17484-655b-44bb-b6e7-b1e078230881', '3957ae69-6602-49d9-916e-af389e9975bf', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-24 05:04:04', 0),
(6, '8efcb155-c41a-4949-a847-ac36d2d50021', 'cc6b47b4-3d2d-4169-8943-ca11f7b4b771', 'ceffd3cf-1338-4809-b86d-2d2af90447c9', '797f80f4-f6ad-4c8d-adca-5ca531fadc14', 'dbaabc3a-4600-4b26-aa7c-502ef054f32a', '3957ae69-6602-49d9-916e-af389e9975bf', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-24 05:04:16', 0),
(7, '836c9caa-d4d6-42e7-b44c-b3383b9eb730', 'a6037242-93e0-4df1-a294-8679e9f31379', '557034eb-eb86-429a-b802-bb183f75e962', '5c64d539-82ab-4560-9ea6-4296b7a27465', 'e75b5023-43a4-420b-8ca8-f51a351f2a1d', 'e9b6354a-bd5a-4b75-a34c-4026003b62e8', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', '2020-06-28 12:00:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staffsubject`
--

CREATE TABLE `staffsubject` (
  `staffSubID` int(11) NOT NULL,
  `subUUID` varchar(100) NOT NULL,
  `userUUID` varchar(100) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdUserUUID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentsettings`
--

CREATE TABLE `studentsettings` (
  `studentsetID` int(11) NOT NULL,
  `userUUID` varchar(100) NOT NULL,
  `depUUID` varchar(100) NOT NULL,
  `couUUID` varchar(100) NOT NULL,
  `divUUID` varchar(100) NOT NULL,
  `subUUID` varchar(100) NOT NULL,
  `batUUID` varchar(100) NOT NULL,
  `createdUserUUID` varchar(100) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentsettings`
--

INSERT INTO `studentsettings` (`studentsetID`, `userUUID`, `depUUID`, `couUUID`, `divUUID`, `subUUID`, `batUUID`, `createdUserUUID`, `ts`, `is_delete`) VALUES
(1, '3c079827-56e7-4458-aa7e-a9e5719264ca', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', '664465c3-99d9-4e06-a19e-2c914d73d8c0', 'cfd9da42-2458-4a43-802d-ac846b2afc36', 'ea8cf7d6-d505-41f5-915b-4a5deeed88ab', '3957ae69-6602-49d9-916e-af389e9975bf', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-22 07:55:51', 0),
(2, 'ce680e0e-2da9-491f-945e-484d7047eeb2', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', 'cfd9da42-2458-4a43-802d-ac846b2afc36', 'cfd9da42-2458-4a43-802d-ac846b2afc36', '', 'd998cc44-c997-4bcf-8515-a459db931315', '', '2020-06-23 07:16:04', 0),
(3, 'ce680e0e-2da9-491f-945e-484d7047eeb2', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', 'cfd9da42-2458-4a43-802d-ac846b2afc36', 'cfd9da42-2458-4a43-802d-ac846b2afc36', '', 'e8fc8c87-828c-4732-ac23-4abf06d5bf5e', '', '2020-06-23 07:16:50', 0),
(4, '8ad21bf2-c568-4d2b-970b-dd323d96933b', 'a6037242-93e0-4df1-a294-8679e9f31379', '5c64d539-82ab-4560-9ea6-4296b7a27465', '5c64d539-82ab-4560-9ea6-4296b7a27465', '', 'e9b6354a-bd5a-4b75-a34c-4026003b62e8', '', '2020-06-28 11:58:08', 1),
(5, '8ad21bf2-c568-4d2b-970b-dd323d96933b', 'a6037242-93e0-4df1-a294-8679e9f31379', '5c64d539-82ab-4560-9ea6-4296b7a27465', '5c64d539-82ab-4560-9ea6-4296b7a27465', '', 'e9b6354a-bd5a-4b75-a34c-4026003b62e8', '', '2020-06-28 12:08:09', 1),
(6, '8ad21bf2-c568-4d2b-970b-dd323d96933b', 'a6037242-93e0-4df1-a294-8679e9f31379', '5c64d539-82ab-4560-9ea6-4296b7a27465', '5c64d539-82ab-4560-9ea6-4296b7a27465', '', 'e9b6354a-bd5a-4b75-a34c-4026003b62e8', '', '2020-06-28 12:21:29', 1),
(7, '8ad21bf2-c568-4d2b-970b-dd323d96933b', 'a6037242-93e0-4df1-a294-8679e9f31379', '557034eb-eb86-429a-b802-bb183f75e962', '5c64d539-82ab-4560-9ea6-4296b7a27465', '', 'e9b6354a-bd5a-4b75-a34c-4026003b62e8', '', '2020-06-28 12:28:54', 0),
(8, '8729c162-ac6d-43b4-a90a-e5e0b41daa54', 'cc6b47b4-3d2d-4169-8943-ca11f7b4b771', 'ceffd3cf-1338-4809-b86d-2d2af90447c9', '797f80f4-f6ad-4c8d-adca-5ca531fadc14', '', '3957ae69-6602-49d9-916e-af389e9975bf', '', '2020-06-30 11:36:55', 0),
(9, '1672768a-1751-4902-b07f-15ec2ba87e7e', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', '664465c3-99d9-4e06-a19e-2c914d73d8c0', 'cfd9da42-2458-4a43-802d-ac846b2afc36', '', '3957ae69-6602-49d9-916e-af389e9975bf', '', '2020-06-30 11:43:48', 0),
(10, '0a0e0d95-9d99-4402-9b10-c7b6a5b38a07', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', '664465c3-99d9-4e06-a19e-2c914d73d8c0', 'cfd9da42-2458-4a43-802d-ac846b2afc36', '', '3957ae69-6602-49d9-916e-af389e9975bf', '', '2020-06-30 11:46:13', 0),
(11, 'a506f6ee-e6b3-4111-82cc-69d00cc26d64', '4eafc4b4-ebe5-4e40-8dcf-7e6da10b34fa', '664465c3-99d9-4e06-a19e-2c914d73d8c0', 'cfd9da42-2458-4a43-802d-ac846b2afc36', '', 'd998cc44-c997-4bcf-8515-a459db931315', '', '2020-06-30 11:51:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_material`
--

CREATE TABLE `student_material` (
  `studmatID` int(11) NOT NULL,
  `userUUID` varchar(100) NOT NULL,
  `stmatUUID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_material`
--

INSERT INTO `student_material` (`studmatID`, `userUUID`, `stmatUUID`) VALUES
(1, '3c079827-56e7-4458-aa7e-a9e5719264ca', 'c3623438-2aae-49a1-a3d6-13a626f5026c'),
(2, '3c079827-56e7-4458-aa7e-a9e5719264ca', '9729b49b-40b7-4eac-9c55-3d434de1a56b'),
(3, '3c079827-56e7-4458-aa7e-a9e5719264ca', '206fdd9f-fd00-4eab-8c91-cb4adf47f585'),
(4, '3c079827-56e7-4458-aa7e-a9e5719264ca', '29275380-b6c0-4099-824e-2d40f2464056'),
(5, '3c079827-56e7-4458-aa7e-a9e5719264ca', 'daf456c9-020e-4a96-9668-ef5c64b85bb1'),
(6, '3c079827-56e7-4458-aa7e-a9e5719264ca', 'f238e704-d122-4d8c-9cb7-26a5516b3b40'),
(7, '3c079827-56e7-4458-aa7e-a9e5719264ca', 'f13c2a54-92ca-430f-8acf-4754e729a207'),
(8, '3c079827-56e7-4458-aa7e-a9e5719264ca', 'cb5fc823-9634-4218-ab22-b0b001f9732c'),
(15, '3c079827-56e7-4458-aa7e-a9e5719264ca', '999e738c-ceb6-437d-98c0-88adefcab675'),
(16, '0a0e0d95-9d99-4402-9b10-c7b6a5b38a07', 'c3623438-2aae-49a1-a3d6-13a626f5026c'),
(17, '0a0e0d95-9d99-4402-9b10-c7b6a5b38a07', '9729b49b-40b7-4eac-9c55-3d434de1a56b'),
(18, '0a0e0d95-9d99-4402-9b10-c7b6a5b38a07', '206fdd9f-fd00-4eab-8c91-cb4adf47f585');

-- --------------------------------------------------------

--
-- Table structure for table `study_material`
--

CREATE TABLE `study_material` (
  `stmatID` int(11) NOT NULL,
  `stmatUUID` varchar(100) NOT NULL,
  `material` text NOT NULL,
  `chapterUUID` varchar(100) NOT NULL,
  `material_type` enum('pdf','url','image','video','excel','other') NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `study_material`
--

INSERT INTO `study_material` (`stmatID`, `stmatUUID`, `material`, `chapterUUID`, `material_type`, `title`, `details`, `is_delete`, `ts`) VALUES
(3, 'c3623438-2aae-49a1-a3d6-13a626f5026c', '8efcb155-c41a-4949-a847-ac36d2d50021Justice.League.Dark.Apokolips.War.2020.720p.BluRay.x264.AAC-[YTS.MX].mp4', 'e7a9fbfe-f710-4687-835a-2550820fef3e', 'pdf', 'Title1', '', 0, '2020-06-26 13:31:15'),
(4, '29275380-b6c0-4099-824e-2d40f2464056', '8efcb155-c41a-4949-a847-ac36d2d50021parthadatabase (1).sql', 'e7a9fbfe-f710-4687-835a-2550820fef3e', 'pdf', 'New File', 'details', 0, '2020-06-26 13:37:23'),
(5, '9729b49b-40b7-4eac-9c55-3d434de1a56b', 'https://www.facebook.com', 'e7a9fbfe-f710-4687-835a-2550820fef3e', 'url', 'DEDED', 'DWEDW', 0, '2020-06-27 03:54:41'),
(6, '206fdd9f-fd00-4eab-8c91-cb4adf47f585', 'https://www.facebook.com/', 'e7a9fbfe-f710-4687-835a-2550820fef3e', 'url', 'rde', 'ede', 0, '2020-06-27 08:11:38'),
(7, 'daf456c9-020e-4a96-9668-ef5c64b85bb1', '8efcb155-c41a-4949-a847-ac36d2d5002196bc1ef8c923d420b3e44e35652f99b2~01 (2).jpg', 'e7a9fbfe-f710-4687-835a-2550820fef3e', 'video', 'wsw', 'dwdw', 0, '2020-06-27 08:12:01'),
(8, 'f238e704-d122-4d8c-9cb7-26a5516b3b40', '8efcb155-c41a-4949-a847-ac36d2d500211_5138934133510111365.mkv', 'e7a9fbfe-f710-4687-835a-2550820fef3e', 'video', 'uploadlarge', 'detr', 0, '2020-06-28 05:51:42'),
(9, 'cb5fc823-9634-4218-ab22-b0b001f9732c', '8efcb155-c41a-4949-a847-ac36d2d50021CRN-201920-0025.pdf', '0aa88841-e12f-42de-9c04-0621faaa8cd2', 'video', 'Tst', 'Test', 0, '2020-06-28 06:48:54'),
(10, 'f13c2a54-92ca-430f-8acf-4754e729a207', '8efcb155-c41a-4949-a847-ac36d2d50021Wudart HTML-20200622T060649Z-001.zip', '0aa88841-e12f-42de-9c04-0621faaa8cd2', 'video', 'Tst', 'Test', 0, '2020-06-28 06:49:23'),
(11, '9fb34922-8946-41d8-90e7-ce051fae3139', '836c9caa-d4d6-42e7-b44c-b3383b9eb730design bank (1).pdf', 'f497a60c-6d77-4c7f-9878-436790c4b429', 'pdf', 'Tst', 'Test', 0, '2020-06-28 12:02:27'),
(12, '5c41a02c-187b-4a67-a555-f545df8edd0c', '836c9caa-d4d6-42e7-b44c-b3383b9eb730Wudart HTML-20200622T060649Z-001.zip', 'f497a60c-6d77-4c7f-9878-436790c4b429', 'pdf', 'Tst', 'Test', 0, '2020-06-28 12:02:43'),
(13, 'e9a2faa1-f4d4-4943-a947-31a58c8b1cd1', '836c9caa-d4d6-42e7-b44c-b3383b9eb730moodle-3.9.zip', 'f497a60c-6d77-4c7f-9878-436790c4b429', 'pdf', 'Tst', 'Test', 0, '2020-06-28 12:06:48'),
(14, '999e738c-ceb6-437d-98c0-88adefcab675', '8efcb155-c41a-4949-a847-ac36d2d500211_5138934133510111365.mkv', 'e47fb0e2-707c-46d2-99b2-e1b65b831a38', 'video', 'maths', 'de', 0, '2020-06-30 03:16:17'),
(15, 'f1eaca6a-437d-4f6e-8e35-429efc1083c3', '8efcb155-c41a-4949-a847-ac36d2d500211_5138934133510111365.mkv', 'e47fb0e2-707c-46d2-99b2-e1b65b831a38', 'video', 'last', '', 0, '2020-06-30 03:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subID` int(11) NOT NULL,
  `subUUID` varchar(100) NOT NULL,
  `subName` varchar(100) NOT NULL,
  `depUUID` varchar(100) NOT NULL,
  `couUUID` varchar(100) NOT NULL,
  `divUUID` varchar(100) NOT NULL,
  `orgUUID` varchar(100) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subID`, `subUUID`, `subName`, `depUUID`, `couUUID`, `divUUID`, `orgUUID`, `ts`, `is_delete`) VALUES
(1, 'ea8cf7d6-d505-41f5-915b-4a5deeed88ab', 'Subject111', '', '', 'cfd9da42-2458-4a43-802d-ac846b2afc36', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-21 13:17:58', 0),
(2, 'be5831cb-6d07-4cdf-a15f-022f82584686', 'sss', '', '', 'cfd9da42-2458-4a43-802d-ac846b2afc36', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-22 08:53:39', 0),
(3, '27da9d51-6933-4ee1-8c70-62cb6372677f', 'dwsd', '', '', 'cfd9da42-2458-4a43-802d-ac846b2afc36', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-22 08:53:50', 1),
(4, '71e17484-655b-44bb-b6e7-b1e078230881', 'SUB1', '', '', '797f80f4-f6ad-4c8d-adca-5ca531fadc14', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-24 05:03:10', 0),
(5, 'dbaabc3a-4600-4b26-aa7c-502ef054f32a', 'SUB2', '', '', '797f80f4-f6ad-4c8d-adca-5ca531fadc14', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '2020-06-24 05:03:23', 0),
(6, 'e75b5023-43a4-420b-8ca8-f51a351f2a1d', 'Accounting ', '893ce498-6641-4d81-993c-3854cf3d511a', '4f3eee22-6a49-4186-9bce-f010e68f22a5', '5c64d539-82ab-4560-9ea6-4296b7a27465', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', '2020-06-28 11:56:40', 0),
(7, 'aa8bdaf0-3ff0-49aa-8373-8c70311db9d2', 'sub', '893ce498-6641-4d81-993c-3854cf3d511a', '4f3eee22-6a49-4186-9bce-f010e68f22a5', '5c64d539-82ab-4560-9ea6-4296b7a27465', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', '2020-06-28 13:01:34', 0),
(8, '7de5fff8-bb32-477a-b2c0-dc5d28c9e440', 'Subject1', 'cc7db8f8-8aaa-488a-b463-1fd1d24a1c4e', '68c2bef4-3923-4f49-90fe-810f6830a1aa', '6bf34e33-f833-4685-b7e1-3e5dbcb5dcbc', '65276cd9-29bb-4cc6-994b-cad79465d379', '2020-07-03 04:46:12', 0),
(9, '1f9b0ca8-1eb2-42e0-8d86-c2ba2db92bd4', 'sub2', 'cc7db8f8-8aaa-488a-b463-1fd1d24a1c4e', '68c2bef4-3923-4f49-90fe-810f6830a1aa', 'd4e0dee7-e06d-4df1-93d3-952e4aab865c', '65276cd9-29bb-4cc6-994b-cad79465d379', '2020-07-03 04:46:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `userUUID` varchar(100) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userType` enum('admin','teacher','student','superadmin') NOT NULL,
  `userLogin` varchar(100) NOT NULL,
  `userPassword` varchar(100) NOT NULL,
  `userAddress` varchar(500) NOT NULL,
  `userPhone` varchar(30) NOT NULL,
  `userPincode` varchar(20) NOT NULL,
  `userEmail` varchar(30) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdUserUUID` varchar(100) NOT NULL,
  `orgUUID` varchar(100) NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userUUID`, `userName`, `userType`, `userLogin`, `userPassword`, `userAddress`, `userPhone`, `userPincode`, `userEmail`, `ts`, `createdUserUUID`, `orgUUID`, `is_delete`) VALUES
(1, 'ce680e0e-2da9-491f-945e-484d7047rtb2', 'Super Admin', 'superadmin', 'shyam@gmail.com', '123456', '', '', '', 'sadmin@gmail.com', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(11, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(12, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(13, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(14, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(15, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(16, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(17, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(18, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(19, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(20, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(21, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(22, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(23, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(24, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(25, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(26, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(27, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(28, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(29, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(30, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(31, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(32, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(33, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(34, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(35, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(36, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(37, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(38, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(39, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(40, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(41, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(42, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(43, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(44, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(45, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(46, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(47, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(48, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(49, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(50, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(51, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(52, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(53, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(54, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(55, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(56, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(57, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(58, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(59, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(60, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(61, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(62, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(63, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(64, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(65, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(66, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(67, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(68, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(69, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(70, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(71, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(72, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(73, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(74, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(75, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(76, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(77, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(78, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(79, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(80, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(81, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(82, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(83, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(84, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(85, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(86, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(87, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(88, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(89, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(90, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(91, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(92, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(93, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(94, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(95, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(96, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(97, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(98, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(99, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(100, '', '', 'admin', '', '', '', '', '', '', '2020-06-20 05:12:31', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(101, 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', 'Organization', 'admin', 'shyam@gmail.com', '123456', '', '7559831834', '670103', '1@6.in', '2020-06-21 00:43:25', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(102, '1e16bb75-4ea4-42d8-a73e-c285cca2d796', 'OrganizationEdit1', 'admin', 'aLTHAF@gmail.com', '123456', '', '7559831834', '670103', 'org@gmail.com', '2020-06-21 01:00:10', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(103, 'b0f23e38-8419-42a6-87f1-c4b0fdac9edf', 'Check ORGANIZATION', 'admin', 'JIJO@gmail.com', '123456', '', '7878787878', '123456', '12@GMAIL.COM', '2020-06-21 01:00:45', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(104, '82c080ca-a77a-4662-a70b-9e79081680d6', 'ORG', 'admin', '', '31111', '', '87787', '12', 'hh@dd.in', '2020-06-21 02:22:32', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(105, '465d91d2-e06d-4ddc-90a5-0aeffbd5116a', 'Teacher', 'admin', '', '123456', '', '787878787', '12345', 'teach@gmail.com', '2020-06-21 02:28:24', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(106, '8efcb155-c41a-4949-a847-ac36d2d50021', 'Test Teaccher11', 'teacher', '', '123456', 'add', '157677676', '777', 't@gmail.com', '2020-06-21 02:38:51', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(107, '2700faeb-a714-4aed-bc44-daabadc76568', 'New Student', 'teacher', '', '123456', 'add', '55555555', '5555', 'stud@gmail.com', '2020-06-21 02:46:45', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 1),
(108, '3c079827-56e7-4458-aa7e-a9e5719264ca', 'new 11', 'student', '', '123456', 'add', '55555555', '5555', 'o1rg@gmail.com', '2020-06-21 02:48:13', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 1),
(109, 'ad6d3702-02f8-4e5d-b901-252375d66b50', 'Check ing', 'admin', '', '123456', '', '3345465', 'swdw', 'org11@gmail.com', '2020-06-22 04:50:28', '', '', 0),
(110, 'dc1328f5-25d0-4075-a3dd-5166953a0ffe', 'ch', 'admin', '', '12w323e2', '', '6766767', '3w232', 'hjhh@hgj.ub', '2020-06-22 04:53:28', '', '', 1),
(111, 'ce680e0e-2da9-491f-945e-484d7047eeb2', 'test134', 'student', '', '666666', '123', '788678', 'ggg', 's@gmail.com', '2020-06-23 03:46:50', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', '', 0),
(112, '65276cd9-29bb-4cc6-994b-cad79465d379', 'New', 'admin', '', '123456', '', '35454646', '123', 'sh@gmail.com', '2020-06-27 02:06:26', '8efcb155-c41a-4949-a847-ac36d2d50021', '', 0),
(113, '81a38704-41b7-453f-8a50-693b124555e2', 'Organization', 'admin', '', '123456', '', '4444444', '7676', 'organization@gmail.com', '2020-06-27 04:36:56', 'ce680e0e-2da9-491f-945e-484d7047rtb2', '', 0),
(114, 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', 'M . M College Of Arts', 'admin', '', 'mmcollege', '', '91460-2222243', '670502', 'mmcollegeprincipal@gmail.com', '2020-06-28 02:41:28', 'ce680e0e-2da9-491f-945e-484d7047rtb2', '', 0),
(115, '8ad21bf2-c568-4d2b-970b-dd323d96933b', 'jijo', 'student', '', '123456', 'Kuzhikkattu', '09961943573', '683561', 'jijodileep@gmail.com', '2020-06-28 08:58:54', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', '', 0),
(116, '836c9caa-d4d6-42e7-b44c-b3383b9eb730', 'Test', 'teacher', '', '123456', 'test', '10000', '1000', 'test@gmail.com', '2020-06-28 06:31:32', 'bc6c49d1-4dff-4cd6-8137-e567d1398cc9', '', 0),
(117, '8729c162-ac6d-43b4-a90a-e5e0b41daa54', 'stu', 'student', '', '123456', 'jkhjhjj', '56565465', '545464', 'hh@dd.in', '2020-06-30 08:06:55', '8efcb155-c41a-4949-a847-ac36d2d50021', '', 0),
(118, '1672768a-1751-4902-b07f-15ec2ba87e7e', 'sww', 'student', '', '123456', 'add', 'w232323', '121', 'dee@rer.uh', '2020-06-30 08:13:48', '8efcb155-c41a-4949-a847-ac36d2d50021', '', 0),
(119, '0a0e0d95-9d99-4402-9b10-c7b6a5b38a07', 'fedfed', 'student', '', '123456', 'af', '121', '1212', 'ss@fdef.uh', '2020-06-30 08:16:13', '8efcb155-c41a-4949-a847-ac36d2d50021', '', 0),
(120, 'a506f6ee-e6b3-4111-82cc-69d00cc26d64', 'qwedwdw', 'student', '', '4343434343', '2eqe2', '121323', '234', 'org@gmail.com', '2020-06-30 08:21:31', '8efcb155-c41a-4949-a847-ac36d2d50021', 'a015190e-1ab3-4cf5-a5b6-4cbf1bec563f', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`couID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`depID`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`divID`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`orgID`);

--
-- Indexes for table `org_questionnaire`
--
ALTER TABLE `org_questionnaire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffbatch`
--
ALTER TABLE `staffbatch`
  ADD PRIMARY KEY (`staffBtchID`);

--
-- Indexes for table `staffchapter`
--
ALTER TABLE `staffchapter`
  ADD PRIMARY KEY (`staffchapID`);

--
-- Indexes for table `staffcourse`
--
ALTER TABLE `staffcourse`
  ADD PRIMARY KEY (`staffCouID`);

--
-- Indexes for table `staffdepartment`
--
ALTER TABLE `staffdepartment`
  ADD PRIMARY KEY (`staffDepID`);

--
-- Indexes for table `staffdivision`
--
ALTER TABLE `staffdivision`
  ADD PRIMARY KEY (`staffDivID`);

--
-- Indexes for table `staffsettings`
--
ALTER TABLE `staffsettings`
  ADD PRIMARY KEY (`staffsetID`);

--
-- Indexes for table `staffsubject`
--
ALTER TABLE `staffsubject`
  ADD PRIMARY KEY (`staffSubID`);

--
-- Indexes for table `studentsettings`
--
ALTER TABLE `studentsettings`
  ADD PRIMARY KEY (`studentsetID`);

--
-- Indexes for table `student_material`
--
ALTER TABLE `student_material`
  ADD PRIMARY KEY (`studmatID`);

--
-- Indexes for table `study_material`
--
ALTER TABLE `study_material`
  ADD PRIMARY KEY (`stmatID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `batID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `couID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `depID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `divID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `orgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `org_questionnaire`
--
ALTER TABLE `org_questionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staffbatch`
--
ALTER TABLE `staffbatch`
  MODIFY `staffBtchID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffchapter`
--
ALTER TABLE `staffchapter`
  MODIFY `staffchapID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staffcourse`
--
ALTER TABLE `staffcourse`
  MODIFY `staffCouID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffdepartment`
--
ALTER TABLE `staffdepartment`
  MODIFY `staffDepID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffdivision`
--
ALTER TABLE `staffdivision`
  MODIFY `staffDivID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffsettings`
--
ALTER TABLE `staffsettings`
  MODIFY `staffsetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staffsubject`
--
ALTER TABLE `staffsubject`
  MODIFY `staffSubID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentsettings`
--
ALTER TABLE `studentsettings`
  MODIFY `studentsetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_material`
--
ALTER TABLE `student_material`
  MODIFY `studmatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `study_material`
--
ALTER TABLE `study_material`
  MODIFY `stmatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
