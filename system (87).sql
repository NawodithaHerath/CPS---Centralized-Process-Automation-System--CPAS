-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 06:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system`
--

-- --------------------------------------------------------

--
-- Table structure for table `auditcreation`
--

CREATE TABLE `auditcreation` (
  `id` int(11) NOT NULL,
  `auditid` varchar(30) NOT NULL,
  `audityear` int(11) NOT NULL,
  `examinstartdate` date NOT NULL,
  `examinendtdate` date NOT NULL,
  `coveredstartdate` date NOT NULL,
  `coveredenddate` date NOT NULL,
  `audit_category` varchar(50) NOT NULL,
  `checklist_id` varchar(50) NOT NULL,
  `entityid` varchar(4) NOT NULL,
  `audit_type` varchar(50) NOT NULL,
  `reviewer` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `totalRisk` varchar(50) NOT NULL,
  `branchRiskGrade` varchar(50) NOT NULL,
  `auditstatusupdate_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auditcreation`
--

INSERT INTO `auditcreation` (`id`, `auditid`, `audityear`, `examinstartdate`, `examinendtdate`, `coveredstartdate`, `coveredenddate`, `audit_category`, `checklist_id`, `entityid`, `audit_type`, `reviewer`, `status`, `totalRisk`, `branchRiskGrade`, `auditstatusupdate_at`, `created_by`, `created_at`) VALUES
(2, '2023onsiteoperation003', 2023, '2023-09-18', '2023-09-22', '2023-01-01', '2023-07-31', 'branch', 'BRNONOP001', '003', 'onsite', '1019', 'started', '', '', '0000-00-00 00:00:00', 1000, '2023-09-17 15:26:53'),
(6, '2023onsiteoperation002', 2023, '2023-09-19', '2023-09-22', '2023-01-01', '2023-07-31', 'branch', 'BRNONOP001', '002', 'onsite', '1019', 'completed', '9.5', 'BBB', '2023-11-26 19:53:56', 1000, '2023-10-07 18:43:14'),
(7, '2023onsiteoperation001', 2023, '2023-10-09', '2023-10-13', '2023-01-01', '2023-09-30', 'branch', 'BRNONOP001', '001', 'onsite', '1019', 'completed', '4.75', 'AA', '2023-11-26 08:22:00', 1000, '2023-10-08 21:24:30'),
(8, '2023onsiteoperation004', 2023, '2023-10-30', '2023-11-03', '2023-01-01', '2023-09-30', 'branch', 'BRNONOP001', '004', 'onsite', '1019', 'created', '', '', '0000-00-00 00:00:00', 1000, '2023-10-24 22:17:29'),
(10, '2024offsiteoperation001', 2024, '2024-01-02', '2024-02-06', '2023-01-01', '2023-12-31', 'branch', 'BRNOFFOP001', '001', 'offsite', '1019', 'completed', '9', 'BBB', '2024-02-18 17:35:35', 1000, '2024-02-07 14:07:40'),
(11, '2024offsiteoperation002', 2024, '2024-02-01', '2024-02-07', '2023-01-01', '2023-12-31', 'branch', 'BRNOFFOP001', '002', 'offsite', '1019', 'completed', '7.25', 'A', '2024-03-12 17:28:09', 1000, '2024-02-07 14:10:20'),
(12, '2024onsiteoperation001', 2024, '2024-03-10', '2024-03-14', '2023-01-01', '2023-12-31', 'branch', 'BRNONOP001 ', '001', 'onsite', '1019', 'started', '', '', '0000-00-00 00:00:00', 1000, '2024-03-12 19:16:17'),
(13, '2024onsiteoperation002', 2024, '2024-03-17', '2024-03-22', '2023-01-01', '2023-12-31', 'branch', 'BRNONOP001 ', '002', 'onsite', '1019', 'started', '', '', '0000-00-00 00:00:00', 1000, '2024-03-12 19:19:45'),
(14, '2024onsiteoperation003', 2024, '2024-03-18', '2024-03-22', '2023-01-01', '2023-12-31', 'branch', 'BRNONOP001 ', '003', 'onsite', '1019', 'started', '', '', '0000-00-00 00:00:00', 1000, '2024-03-12 19:21:09'),
(15, '2024onsiteoperation004', 2024, '2024-03-18', '2024-03-22', '2023-01-01', '2023-12-31', 'branch', 'BRNONOP001 ', '004', 'onsite', '1019', 'started', '', '', '0000-00-00 00:00:00', 1000, '2024-03-12 22:01:36'),
(16, '2024offsiteoperation003', 2024, '2024-03-24', '2024-03-27', '2023-01-01', '2023-12-31', 'branch', 'BRNOFFOP001', '003', 'offsite', '1019', 'replied', '', '', '2024-03-15 17:19:21', 1000, '2024-03-15 21:11:56'),
(17, '2024offsiteoperation004', 2024, '2024-03-25', '2024-03-29', '2023-01-01', '2023-12-31', 'branch', 'BRNOFFOP001', '004', 'offsite', '1019', 'created', '', '', '0000-00-00 00:00:00', 1000, '2024-03-15 21:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `auditteammember`
--

CREATE TABLE `auditteammember` (
  `id` int(11) NOT NULL,
  `auditassignedid` varchar(50) NOT NULL,
  `empno` varchar(50) NOT NULL,
  `auditid` varchar(50) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auditteammember`
--

INSERT INTO `auditteammember` (`id`, `auditassignedid`, `empno`, `auditid`, `created_by`, `created_at`) VALUES
(2, '2023onsiteoperation001_1011', '1011', '2023onsiteoperation001', '1000', '2023-10-02 23:31:12'),
(4, '2023onsiteoperation002_1011', '1011', '2023onsiteoperation002', '1000', '2023-10-03 21:20:55'),
(6, '2023onsiteoperation002_1018', '1018', '2023onsiteoperation002', '1000', '2023-10-08 21:17:01'),
(7, '2023onsiteoperation001_1018', '1018', '2023onsiteoperation001', '1000', '2023-10-08 21:25:48'),
(8, '2023onsitecredit003_1011', '1011', '2023onsitecredit003', '1000', '2023-10-17 14:10:22'),
(9, '2023onsitecredit003_1018', '1018', '2023onsitecredit003', '1000', '2023-10-17 14:10:29'),
(10, '2023onsiteoperation003_1011', '1011', '2023onsiteoperation003', '1000', '2023-10-19 20:29:12'),
(11, '2023onsiteoperation003_1018', '1018', '2023onsiteoperation003', '1000', '2023-10-19 20:29:18'),
(14, '2023onsiteoperation004_1018', '1018', '2023onsiteoperation004', '1000', '2023-11-11 08:19:49'),
(15, '2023onsiteoperation004_1011', '1011', '2023onsiteoperation004', '1000', '2023-11-18 22:03:58'),
(16, '2024offsiteoperation001_1011', '1011', '2024offsiteoperation001', '1000', '2024-02-07 14:11:59'),
(17, '2024offsiteoperation001_1018', '1018', '2024offsiteoperation001', '1000', '2024-02-07 14:12:03'),
(18, '2024offsiteoperation002_1011', '1011', '2024offsiteoperation002', '1000', '2024-03-12 21:09:22'),
(19, '2024offsiteoperation002_1018', '1018', '2024offsiteoperation002', '1000', '2024-03-12 21:09:48'),
(20, '2024onsiteoperation001_1011', '1011', '2024onsiteoperation001', '1000', '2024-03-12 21:45:41'),
(21, '2024onsiteoperation001_1018', '1018', '2024onsiteoperation001', '1000', '2024-03-12 21:45:45'),
(22, '2024onsiteoperation002_1011', '1011', '2024onsiteoperation002', '1000', '2024-03-12 21:45:55'),
(23, '2024onsiteoperation002_1018', '1018', '2024onsiteoperation002', '1000', '2024-03-12 21:45:58'),
(24, '2024onsiteoperation003_1011', '1011', '2024onsiteoperation003', '1000', '2024-03-12 21:46:09'),
(25, '2024onsiteoperation003_1018', '1018', '2024onsiteoperation003', '1000', '2024-03-12 21:46:11'),
(26, '2024onsiteoperation004_1011', '1011', '2024onsiteoperation004', '1000', '2024-03-14 22:06:58'),
(27, '2024onsiteoperation004_1018', '1018', '2024onsiteoperation004', '1000', '2024-03-14 22:07:01'),
(28, '2024offsiteoperation003_1011', '1011', '2024offsiteoperation003', '1000', '2024-03-15 21:45:57'),
(29, '2024offsiteoperation003_1018', '1018', '2024offsiteoperation003', '1000', '2024-03-15 21:46:01'),
(30, '2024offsiteoperation004_1011', '1011', '2024offsiteoperation004', '1000', '2024-03-15 21:52:58'),
(31, '2024offsiteoperation004_1018', '1018', '2024offsiteoperation004', '1000', '2024-03-15 21:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `checkingitem`
--

CREATE TABLE `checkingitem` (
  `id` int(11) NOT NULL,
  `checkingitem_id` varchar(50) NOT NULL,
  `checkingitem_description` varchar(255) NOT NULL,
  `firstsubarea_id` varchar(50) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkingitem`
--

INSERT INTO `checkingitem` (`id`, `checkingitem_id`, `checkingitem_description`, `firstsubarea_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'BRNONOP001_M01_F01_C01', 'Day end teller box balance should be equal to 250,000 -Edited', 'BRNONOP001_M01_F01', '1000', '1000', '2023-09-07 11:06:25', '2023-09-07 11:06:25'),
(2, 'BRNONOP001_M01_F01_C02', 'Teller Box Should be locked-edited', 'BRNONOP001_M01_F01', '1000', '1000', '2023-09-07 11:15:03', '2023-09-07 11:15:03'),
(5, 'BRNONOP001_M03_F01_C01', 'During the period ILDER properly Updated in system', 'BRNONOP001_M03_F01', '1000', '', '2023-10-08 16:49:07', '2023-10-08 16:49:07'),
(6, 'BRNONOP001_M03_F01_C02', 'All the updated ILDER has been approved by the Manager', 'BRNONOP001_M03_F01', '1000', '', '2023-10-08 16:52:21', '2023-10-08 16:52:21'),
(7, 'BRNONOP001_M04_F01_C01', 'Vault key properly handover', 'BRNONOP001_M04_F01', '1000', '', '2023-10-08 17:08:29', '2023-10-08 17:08:29'),
(8, 'BRNONOP001_M04_F02_C01', 'Manager has only one key and it was recorded properly', 'BRNONOP001_M04_F02', '1000', '', '2023-10-08 17:09:44', '2023-10-08 17:09:44'),
(9, 'BRNONOP001_M04_F03_C01', 'Cash officer properly handle the his key', 'BRNONOP001_M04_F03', '1000', '', '2023-10-08 17:10:49', '2023-10-08 17:10:49'),
(10, 'BRNONOP001_M01_F02_C01', 'Voucher Bundles are properly lodged', 'BRNONOP001_M01_F02', '1000', '', '2023-10-16 14:28:52', '2023-10-16 14:28:52'),
(11, 'BRNOFFOP001_M01_F01_C01', 'Branch has recovered cash shortages up to Rs 10,000/- from the relevant teller/s within the period of 03 months.', 'BRNOFFOP001_M01_F01', '1000', '1000', '2024-02-05 10:57:52', '2024-02-05 10:57:52'),
(12, 'BRNOFFOP001_M01_F01_C02', 'Cash excesses remaining unidentified for more than 01 month have been transferred to Sundry Income A/C (9xxx 0803 0002)', 'BRNOFFOP001_M01_F01', '1000', '', '2024-02-05 11:00:54', '2024-02-05 11:00:54'),
(13, 'BRNOFFOP001_M01_F01_C03', 'No any unusual number of cash variances found.', 'BRNOFFOP001_M01_F01', '1000', '', '2024-02-05 11:01:16', '2024-02-05 11:01:16'),
(14, 'BRNOFFOP001_M01_F02_C01', 'All the voucher bundles have been lodged as per the records available in the Digital Voucher Bundle register.', 'BRNOFFOP001_M01_F02', '1000', '', '2024-02-05 11:03:24', '2024-02-05 11:03:24'),
(15, 'BRNOFFOP001_M01_F02_C02', 'Voucher bundles have been lodged within the stipulated time period ', 'BRNOFFOP001_M01_F02', '1000', '', '2024-02-05 11:03:58', '2024-02-05 11:03:58'),
(16, 'BRNOFFOP001_M01_F03_C01', 'CDK has been  unloaded minimum of twice a week. ', 'BRNOFFOP001_M01_F03', '1000', '', '2024-02-05 11:04:49', '2024-02-05 11:04:49'),
(17, 'BRNOFFOP001_M01_F03_C02', 'No additional findings', 'BRNOFFOP001_M01_F03', '1000', '', '2024-02-05 11:05:25', '2024-02-05 11:05:25'),
(18, 'BRNOFFOP001_M01_F04_C01', 'Payorder outstanding balance is agreed with the pay order GL balance as at audit date.', 'BRNOFFOP001_M01_F04', '1000', '', '2024-02-05 11:10:29', '2024-02-05 11:10:29'),
(19, 'BRNOFFOP001_M02_F01_C01', 'The   KYC sections in the Mandate has been completed and separate KYC form has been obtained from each and every director, authorized signatory, proprietor, partner,officer bearer, parent or guardian. ', 'BRNOFFOP001_M02_F01', '1000', '', '2024-02-07 00:30:18', '2024-02-07 00:30:18'),
(20, 'BRNOFFOP001_M02_F01_C02', 'KYC details are agreed with other related details provided in the Mandate.', 'BRNOFFOP001_M02_F01', '1000', '', '2024-02-07 00:30:43', '2024-02-07 00:30:43'),
(21, 'BRNOFFOP001_M02_F01_C03', 'Duly completed Risk Categorization form  is available and updated the arrived final Risk grading  in the Finacle system. ', 'BRNOFFOP001_M02_F01', '1000', '', '2024-02-07 00:31:29', '2024-02-07 00:31:29'),
(22, 'BRNOFFOP001_M02_F02_01', 'Finacle system has been updated correctly when Beneficial Ownership given by the Companies,Trusts, Foundations, Partnerships and other types of legal persons.', 'BRNOFFOP001_M02_F02', '1000', '', '2024-02-07 00:32:11', '2024-02-07 00:32:11'),
(23, 'BRNOFFOP001_M02_F03_01', 'Branch has opened minor Account without BC and system has been modified  \"No birth Certificate\" (code-WCB)  as a document type and enter dummy number as the birth certificate number accordance above format', 'BRNOFFOP001_M02_F03', '1000', '', '2024-02-07 00:32:44', '2024-02-07 00:32:44'),
(24, 'BRNOFFOP001_M02_F03_02', 'No additional findings', 'BRNOFFOP001_M02_F03', '1000', '', '2024-02-07 05:24:00', '2024-02-07 05:24:00'),
(25, 'BRNOFFOP001_M03_F01_C01', 'All the issued debit cards were verified in the CMS.', 'BRNOFFOP001_M03_F01', '1000', '', '2024-02-07 05:26:29', '2024-02-07 05:26:29'),
(26, 'BRNOFFOP001_M03_F01_C02', 'No additional findings', 'BRNOFFOP001_M03_F01', '1000', '', '2024-02-07 05:26:46', '2024-02-07 05:26:46'),
(27, 'BRNOFFOP001_M03_F02_C01', 'SET card application is duly completed and acknowledge by the customer and customer\'s signature is agreed with specimen signature', 'BRNOFFOP001_M03_F02', '1000', '', '2024-02-07 05:29:46', '2024-02-07 05:29:46'),
(28, 'BRNOFFOP001_M04_F01_C01', 'Standing Order Mandate has  heen available / properly completed and signed by the customer', 'BRNOFFOP001_M04_F01', '1000', '', '2024-02-07 05:31:56', '2024-02-07 05:31:56'),
(29, 'BRNOFFOP001_M05_F01_C01', 'Branch has obtained the Declaration from the customer who has refused the SMS Alertz facility and it is available in the RMS/DMS/SDAS for future reference. (new accounts opened after 02 April 2019', 'BRNOFFOP001_M05_F01', '1000', '', '2024-02-07 05:33:02', '2024-02-07 05:33:02'),
(30, 'BRNOFFOP001_M05_F01_C02', 'Branch has activated all received sms alertz applications.', 'BRNOFFOP001_M05_F01', '1000', '', '2024-02-07 05:33:23', '2024-02-07 05:33:23'),
(31, 'BRNOFFOP001_M06_F01_C01', 'No unresolved items appeared in the Miscellaneous Parking, Miscellaneous Travel, Miscellaneous Clearing Operations A/C\'s on same days without being transferred to customer A/C\'s or been zero on the same day. ', 'BRNOFFOP001_M06_F01', '1000', '', '2024-02-07 05:34:49', '2024-02-07 05:34:49'),
(32, 'BRNOFFOP001_M06_F01_C02', 'No any unusual patten transactions were available in the GL Accounts (General Expences - 9XXX 0856 0080, Fair & Hire - 9XXX 0852 0080, Business Promotion - 9XXX 0854 5000/5001 , Lub & Fuel - 9XXX 0851 5070, Sundry Assets - 9XXX 0251 7309 & Sundry Income -', 'BRNOFFOP001_M06_F01', '1000', '', '2024-02-07 05:35:16', '2024-02-07 05:35:16'),
(33, 'BRNOFFOP001_M07_F01_C01', 'Branch has adhere to the correct procedures relating to the ILEDR reportings', 'BRNOFFOP001_M07_F01', '1000', '', '2024-02-07 05:36:38', '2024-02-07 05:36:38'),
(34, 'BRNOFFOP001_M08_F01_C01', 'POS transactions are settled on a daily basis.', 'BRNOFFOP001_M08_F01', '1000', '', '2024-02-07 05:37:41', '2024-02-07 05:37:41'),
(35, 'BRNOFFOP001_M08_F01_C02', 'Branch has cleared the unverified non financial transactions. (AFI)', 'BRNOFFOP001_M08_F01', '1000', '', '2024-02-07 05:37:59', '2024-02-07 05:37:59'),
(36, 'BRNOFFOP001_M08_F01_C03', 'Non availability of Duplicate CUMM IDs', 'BRNOFFOP001_M08_F01', '1000', '', '2024-02-07 05:38:17', '2024-02-07 05:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE `checklist` (
  `id` int(11) NOT NULL,
  `checklist_id` varchar(50) NOT NULL,
  `audit_category` varchar(50) NOT NULL,
  `audit_type` varchar(50) NOT NULL,
  `audit_area` varchar(255) NOT NULL,
  `checklist_description` varchar(255) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checklist`
--

INSERT INTO `checklist` (`id`, `checklist_id`, `audit_category`, `audit_type`, `audit_area`, `checklist_description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'BRNONOP001 ', 'branch', 'onsite', 'operation', 'Branch Onsite Operation', '1000', '1000', '2023-08-31 22:51:04', '2023-08-31 22:51:04'),
(3, 'DPRONOPR002 ', 'department', 'onsite', 'general', 'Operation Department', '1000', '1000', '2023-09-01 13:02:10', '2023-09-01 13:02:10'),
(10, 'BRNONCRD002 ', 'branch', 'onsite', 'credit', 'Branch Offsite Credit ', '1000', '1000', '2023-09-17 06:09:45', '2023-09-17 06:09:45'),
(11, 'BRNOFFOP001', 'branch', 'offsite', 'operation', 'Branch Offsite Operation', '1000', '', '2024-02-05 16:16:35', '2024-02-05 16:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `state_id`, `city_name`) VALUES
(1, 1, 'New York City'),
(2, 1, 'Buffalo'),
(3, 1, 'Albany'),
(4, 2, 'Birmingham'),
(5, 2, 'Montgomery'),
(6, 2, 'HuntsVillie'),
(7, 3, 'Los Angeles'),
(8, 3, 'San Diago'),
(9, 4, 'Toronto'),
(10, 4, 'Ottawa'),
(11, 5, 'Vancouver'),
(12, 5, 'Victoria'),
(13, 6, 'Sydney'),
(14, 6, 'Newcastle'),
(15, 7, 'City of Brisbane'),
(16, 7, 'Gold Coast'),
(17, 8, 'Banglore'),
(18, 8, 'Mangalore'),
(19, 9, 'Hydrabad'),
(20, 9, 'Warngal'),
(21, 3, 'San Francisco');

-- --------------------------------------------------------

--
-- Table structure for table `commentlog`
--

CREATE TABLE `commentlog` (
  `id` int(11) NOT NULL,
  `comment_id` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commentlog`
--

INSERT INTO `commentlog` (`id`, `comment_id`, `status`, `updated_by`, `updated_at`) VALUES
(1, '2023onsiteoperation001_M01_F01_C02', 'Reject', '', '2023-10-27 06:00:47'),
(2, '2023onsiteoperation001_M01_F01_C02', 'Reject', '', '2023-10-27 06:02:59'),
(3, '2023onsiteoperation001_M01_F01_C02', 'Reject', '1019', '2023-10-27 06:05:17'),
(4, '2023onsiteoperation001_M01_F01_C01', 'Edited', '1011', '2023-10-27 06:14:06'),
(5, '2023onsiteoperation001_M01_F01_C01', 'Submit for review', '1011', '2023-10-27 06:14:27'),
(6, '2023onsiteoperation001_M01_F01_C02', 'Edited', '1011', '2023-10-27 06:15:03'),
(7, '2023onsiteoperation001_M01_F01_C01', 'Reviewing', '1019', '2023-10-27 06:26:17'),
(8, '2023onsiteoperation001_M01_F01_C01', 'Reviewing', '1019', '2023-10-27 06:27:23'),
(9, '2023onsiteoperation001_M01_F01_C01', 'Reject', '1019', '2023-10-27 06:27:31'),
(10, '2023onsiteoperation001_M01_F01_C01', 'Edited', '1011', '2023-10-27 06:43:21'),
(11, '2023onsiteoperation001_M01_F01_C01', 'Submit for review', '1011', '2023-10-27 08:04:53'),
(12, '2023onsiteoperation001_M01_F01_C02', 'Submit for review', '1011', '2023-10-27 08:05:18'),
(13, '2023onsiteoperation002_M01_F01_C01', 'Accepted', '1019', '2023-10-27 08:51:12'),
(14, '2023onsiteoperation001_M01_F01_C01', 'Accepted', '1019', '2023-10-27 09:00:38'),
(15, '2023onsiteoperation001_M01_F01_C02', 'Accepted', '1019', '2023-10-27 09:00:46'),
(16, '2023onsiteoperation001_M01_F02_C01', 'Accepted', '1019', '2023-10-27 09:00:54'),
(17, '2023onsiteoperation002_M04_F01_C01', 'Edited', '1011', '2023-10-28 02:33:24'),
(18, '2023onsiteoperation003_M01_F01_C01', 'Edited', '1011', '2023-10-28 05:09:49'),
(19, '2023onsiteoperation002_M04_F01_C01', 'Edited', '1011', '2023-10-28 14:13:30'),
(20, '2023onsiteoperation002_M01_F01_C02', 'Reviewing', '1019', '2023-11-11 02:46:23'),
(21, '2023onsiteoperation002_M01_F01_C02', 'Reviewing', '1019', '2023-11-11 02:46:34'),
(22, '2023onsiteoperation002_M01_F01_C02', 'Reviewing', '1019', '2023-11-11 03:19:11'),
(23, '2023onsiteoperation001_M03_F01_C01', 'Entered', '1011', '2023-11-11 14:48:30'),
(24, '2023onsiteoperation001_M03_F01_C01', 'Edited', '1011', '2023-11-11 14:54:34'),
(25, '2023onsiteoperation001_M03_F01_C01', 'Submit for review', '1011', '2023-11-11 14:54:50'),
(26, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-11 14:55:43'),
(27, '2023onsiteoperation001_M03_F01_C01', 'Rejected', '1019', '2023-11-11 14:55:57'),
(28, '2023onsiteoperation001_M03_F01_C01', 'Edited', '1011', '2023-11-11 15:32:54'),
(29, '2023onsiteoperation001_M03_F01_C01', 'Submit for review', '1011', '2023-11-11 15:33:10'),
(30, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-11 15:33:57'),
(31, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-11 15:34:14'),
(32, '2023onsiteoperation001_M03_F01_C01', 'Accepted', '1019', '2023-11-11 15:34:24'),
(33, '2023onsiteoperation002_M04_F01_C01', 'Edited', '1011', '2023-11-19 12:49:40'),
(34, '2023onsiteoperation002_M01_F01_C02', 'Reviewing', '1019', '2023-11-19 12:50:12'),
(35, '2023onsiteoperation002_M01_F01_C02', 'Reviewing', '1019', '2023-11-19 12:50:26'),
(36, '2023onsiteoperation002_M01_F01_C02', 'Reviewing', '1019', '2023-11-19 12:50:35'),
(37, '2023onsiteoperation002_M01_F01_C02', 'Reviewing', '1019', '2023-11-19 12:50:48'),
(38, '2023onsiteoperation002_M04_F01_C01', 'Edited', '1011', '2023-11-19 12:51:11'),
(39, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-19 14:12:08'),
(40, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-19 14:40:09'),
(41, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-19 15:00:58'),
(42, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-19 15:17:52'),
(43, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-19 15:31:48'),
(44, '2023onsiteoperation001_M01_F02_C01', 'Reviewing', '1019', '2023-11-20 23:40:41'),
(45, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-22 15:44:39'),
(46, '2023onsiteoperation001_M03_F01_C01', 'Comment Rejected to Enterer', '1019', '2023-11-22 16:06:35'),
(47, '2023onsiteoperation001_M03_F01_C01', 'Replied Comment Editing', '1011', '2023-11-22 17:32:02'),
(48, '2023onsiteoperation001_M03_F01_C01', 'Replied Comment Editing', '1011', '2023-11-22 17:34:35'),
(49, '2023onsiteoperation001_M01_F02_C01', 'Comment Rejected to Enterer', '1019', '2023-11-22 17:42:18'),
(50, '2023onsiteoperation001_M03_F01_C01', 'Submitted the replied comment edited review', '1011', '2023-11-23 13:44:16'),
(51, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-23 14:05:47'),
(52, '2023onsiteoperation001_M03_F01_C01', 'Comment Rejected to Enterer', '1019', '2023-11-23 14:05:57'),
(53, '2023onsiteoperation001_M03_F01_C01', 'Replied Comment Editing', '1011', '2023-11-23 14:07:25'),
(54, '2023onsiteoperation001_M03_F01_C01', 'Submitted the replied comment edited review', '1011', '2023-11-23 14:07:34'),
(55, '2023onsiteoperation001_M01_F02_C01', 'Replied Comment Editing', '1011', '2023-11-23 14:19:22'),
(56, '2023onsiteoperation001_M01_F02_C01', 'Replied Comment Editing', '1011', '2023-11-23 14:19:38'),
(57, '2023onsiteoperation001_M01_F02_C01', 'Submitted the replied comment edited review', '1011', '2023-11-23 14:19:47'),
(58, '2023onsiteoperation001_M01_F02_C01', 'Reviewing', '1019', '2023-11-23 14:20:16'),
(59, '2023onsiteoperation001_M01_F02_C01', 'Reviewing', '1019', '2023-11-23 14:20:38'),
(60, '2023onsiteoperation001_M01_F02_C01', 'Comment Rejected to Enterer', '1019', '2023-11-23 15:02:33'),
(61, '2023onsiteoperation001_M03_F01_C01', 'Accepted', '1019', '2023-11-23 15:07:53'),
(62, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-23 15:09:39'),
(63, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-23 15:13:32'),
(64, '2023onsiteoperation001_M03_F01_C01', 'Accepted', '1019', '2023-11-23 15:13:47'),
(65, '2023onsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2023-11-23 15:14:02'),
(66, '2023onsiteoperation001_M03_F01_C01', 'Accepted', '1019', '2023-11-23 16:03:13'),
(67, '2023onsiteoperation001_M01_F01_C02', 'Accepted', '1019', '2023-11-23 16:07:36'),
(68, '2023onsiteoperation001_M01_F01_C01', 'Reviewing', '1019', '2023-11-23 17:12:29'),
(69, '2023onsiteoperation001_M01_F01_C01', 'Reviewing', '1019', '2023-11-23 17:12:43'),
(70, '2023onsiteoperation001_M01_F01_C01', 'Accepted', '1019', '2023-11-23 17:12:52'),
(71, '2023onsiteoperation002_M01_F01_C02', 'Reviewing', '1019', '2023-11-25 09:45:42'),
(72, '2023onsiteoperation001_M01_F02_C01', 'Replied Comment Editing', '1011', '2023-11-25 09:51:05'),
(73, '2023onsiteoperation001_M01_F02_C01', 'Submitted the replied comment edited review', '1011', '2023-11-25 09:51:11'),
(74, '2023onsiteoperation001_M01_F01_C01', 'Accepted', '1019', '2023-11-25 10:15:36'),
(75, '2023onsiteoperation001_M03_F01_C01', 'Accepted', '1019', '2023-11-26 04:33:23'),
(76, '2023onsiteoperation001_M01_F02_C01', 'Accepted', '1019', '2023-11-26 08:21:45'),
(77, '2023onsiteoperation002_M01_F02_C01', 'Entered', '1018', '2023-11-26 17:15:12'),
(78, '2023onsiteoperation002_M01_F01_C02', 'Reviewing', '1019', '2023-11-26 17:16:21'),
(79, '2023onsiteoperation002_M04_F02_C01', 'Entered', '1018', '2023-11-26 17:19:26'),
(80, '2023onsiteoperation002_M04_F02_C01', 'Editing', '1018', '2023-11-26 17:19:31'),
(81, '2023onsiteoperation002_M04_F03_C01', 'Entered', '1018', '2023-11-26 17:24:23'),
(82, '2023onsiteoperation002_M03_F01_C01', 'Entered', '1018', '2023-11-26 17:28:51'),
(83, '2023onsiteoperation002_M03_F01_C02', 'Entered', '1018', '2023-11-26 17:32:00'),
(84, '2023onsiteoperation002_M01_F02_C01', 'Submit for review', '1018', '2023-11-26 17:32:34'),
(85, '2023onsiteoperation002_M03_F01_C01', 'Submit for review', '1018', '2023-11-26 17:32:46'),
(86, '2023onsiteoperation002_M03_F01_C02', 'Submit for review', '1018', '2023-11-26 17:32:55'),
(87, '2023onsiteoperation002_M04_F01_C01', 'Submit for review', '1018', '2023-11-26 17:33:04'),
(88, '2023onsiteoperation002_M04_F02_C01', 'Submit for review', '1018', '2023-11-26 17:33:14'),
(89, '2023onsiteoperation002_M04_F03_C01', 'Submit for review', '1018', '2023-11-26 17:33:23'),
(90, '2023onsiteoperation002_M01_F02_C01', 'Reviewing', '1019', '2023-11-26 17:36:33'),
(91, '2023onsiteoperation002_M01_F01_C02', 'Accepted', '1019', '2023-11-26 17:36:45'),
(92, '2023onsiteoperation002_M01_F02_C01', 'Accepted', '1019', '2023-11-26 17:36:54'),
(93, '2023onsiteoperation002_M03_F01_C01', 'Accepted', '1019', '2023-11-26 17:37:02'),
(94, '2023onsiteoperation002_M03_F01_C02', 'Accepted', '1019', '2023-11-26 17:37:11'),
(95, '2023onsiteoperation002_M04_F01_C01', 'Accepted', '1019', '2023-11-26 17:37:24'),
(96, '2023onsiteoperation002_M04_F02_C01', 'Accepted', '1019', '2023-11-26 17:37:31'),
(97, '2023onsiteoperation002_M04_F03_C01', 'Rejected', '1019', '2023-11-26 17:37:42'),
(98, '2023onsiteoperation002_M04_F03_C01', 'Edited', '1018', '2023-11-26 17:38:23'),
(99, '2023onsiteoperation002_M04_F03_C01', 'Submit for review', '1018', '2023-11-26 17:38:33'),
(100, '2023onsiteoperation002_M04_F03_C01', 'Accepted', '1019', '2023-11-26 17:39:36'),
(101, '2023onsiteoperation002_M04_F03_C01', 'Reviewing', '1019', '2023-11-26 19:19:07'),
(102, '2023onsiteoperation002_M04_F03_C01', 'Accepted', '1019', '2023-11-26 19:19:13'),
(103, '2023onsiteoperation002_M04_F02_C01', 'Reviewing', '1019', '2023-11-26 19:19:34'),
(104, '2023onsiteoperation002_M04_F02_C01', 'Accepted', '1019', '2023-11-26 19:19:39'),
(105, '2023onsiteoperation002_M04_F01_C01', 'Reviewing', '1019', '2023-11-26 19:20:36'),
(106, '2023onsiteoperation002_M04_F01_C01', 'Accepted', '1019', '2023-11-26 19:20:41'),
(107, '2023onsiteoperation002_M03_F01_C02', 'Comment Rejected to Enterer', '1019', '2023-11-26 19:20:52'),
(108, '2023onsiteoperation002_M03_F01_C02', 'Replied Comment Editing', '1018', '2023-11-26 19:21:54'),
(109, '2023onsiteoperation002_M03_F01_C02', 'Submitted the replied comment edited review', '1018', '2023-11-26 19:22:07'),
(110, '2023onsiteoperation002_M03_F01_C02', 'Reviewing', '1019', '2023-11-26 19:22:50'),
(111, '2023onsiteoperation002_M03_F01_C02', 'Accepted', '1019', '2023-11-26 19:22:54'),
(112, '2023onsiteoperation002_M04_F03_C01', 'Reviewing', '1019', '2023-11-26 19:37:37'),
(113, '2023onsiteoperation002_M04_F03_C01', 'Accepted', '1019', '2023-11-26 19:37:42'),
(114, '2023onsiteoperation002_M04_F01_C01', 'Reviewing', '1019', '2023-11-26 19:41:43'),
(115, '2023onsiteoperation002_M04_F01_C01', 'Accepted', '1019', '2023-11-26 19:41:47'),
(116, '2023onsiteoperation002_M03_F01_C02', 'Reviewing', '1019', '2023-11-26 19:49:17'),
(117, '2023onsiteoperation002_M03_F01_C02', 'Accepted', '1019', '2023-11-26 19:49:21'),
(118, '2023onsiteoperation002_M03_F01_C01', 'Accepted', '1019', '2023-11-26 19:49:40'),
(119, '2023onsiteoperation002_M03_F01_C01', 'Accepted', '1019', '2023-11-26 19:51:58'),
(120, '2023onsiteoperation002_M01_F02_C01', 'Accepted', '1019', '2023-11-26 19:52:18'),
(121, '2023onsiteoperation002_M01_F01_C02', 'Accepted', '1019', '2023-11-26 19:53:32'),
(122, '2023onsiteoperation002_M01_F01_C01', 'Accepted', '1019', '2023-11-26 19:53:44'),
(123, '2023onsiteoperation003_M01_F01_C01', 'Edited', '1011', '2024-02-07 15:06:01'),
(124, '2023onsiteoperation003_M01_F01_C01', 'Edited', '1011', '2024-02-07 15:06:14'),
(125, '2023onsiteoperation003_M01_F01_C01', 'Edited', '1011', '2024-02-07 15:19:39'),
(126, '2023onsiteoperation003_M01_F01_C01', 'Edited', '1011', '2024-02-07 15:51:50'),
(127, '2024offsiteoperation001_M01_F01_C01', 'Entered', '1011', '2024-02-18 06:02:09'),
(128, '2024offsiteoperation001_M01_F01_C01', 'Edited', '1011', '2024-02-18 06:02:56'),
(129, '2024offsiteoperation001_M01_F02_C01', 'Entered', '1011', '2024-02-18 06:21:30'),
(130, '2024offsiteoperation001_M01_F02_C01', 'Editing', '1011', '2024-02-18 06:21:56'),
(131, '2024offsiteoperation001_M03_F01_C01', 'Entered', '1011', '2024-02-18 06:23:53'),
(132, '2024offsiteoperation001_M04_F01_C01', 'Entered', '1018', '2024-02-18 07:19:50'),
(133, '2024offsiteoperation001_M03_F01_C01', 'Deleted', '1011', '2024-02-18 07:52:54'),
(134, '2024offsiteoperation001_M01_F02_C01', 'Deleted', '1011', '2024-02-18 07:53:05'),
(135, '2024offsiteoperation001_M04_F01_C01', 'Deleted', '1018', '2024-02-18 07:54:48'),
(136, '2024offsiteoperation001_M01_F01_C02', 'Entered', '1011', '2024-02-18 08:02:27'),
(137, '2024offsiteoperation001_M01_F01_C02', 'Editing', '1011', '2024-02-18 08:02:43'),
(138, '2024offsiteoperation001_M03_F01_C01', 'Entered', '1011', '2024-02-18 08:13:38'),
(139, '2024offsiteoperation001_M03_F01_C01', 'Edited', '1011', '2024-02-18 08:14:07'),
(140, '2024offsiteoperation001_M02_F01_C02', 'Entered', '1018', '2024-02-18 08:18:03'),
(141, '2024offsiteoperation001_M03_F02_C01', 'Entered', '1018', '2024-02-18 08:25:33'),
(142, '2024offsiteoperation001_M03_F02_C01', 'Deleted', '1018', '2024-02-18 08:26:28'),
(143, '2024offsiteoperation001_M03_F01_C02', 'Entered', '1018', '2024-02-18 08:28:23'),
(144, '2024offsiteoperation001_M04_F01_C01', 'Entered', '1018', '2024-02-18 08:31:34'),
(145, '2024offsiteoperation001_M04_F01_C01', 'Submit for review', '1018', '2024-02-18 09:51:48'),
(146, '2024offsiteoperation001_M03_F01_C02', 'Submit for review', '1018', '2024-02-18 09:54:03'),
(147, '2024offsiteoperation001_M02_F01_C02', 'Submit for review', '1018', '2024-02-18 09:54:09'),
(148, '2024offsiteoperation001_M03_F01_C01', 'Submit for review', '1018', '2024-02-18 09:54:15'),
(149, '2024offsiteoperation001_M01_F01_C02', 'Submit for review', '1018', '2024-02-18 09:54:21'),
(150, '2024offsiteoperation001_M01_F01_C01', 'Submit for review', '1018', '2024-02-18 09:54:28'),
(151, '2024offsiteoperation001_M01_F01_C01', 'Reviewing', '1019', '2024-02-18 11:13:31'),
(152, '2024offsiteoperation001_M01_F01_C02', 'Reviewing', '1019', '2024-02-18 11:14:10'),
(153, '2024offsiteoperation001_M01_F01_C01', 'Accepted', '1019', '2024-02-18 11:14:23'),
(154, '2024offsiteoperation001_M01_F01_C02', 'Accepted', '1019', '2024-02-18 11:14:54'),
(155, '2024offsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2024-02-18 11:15:26'),
(156, '2024offsiteoperation001_M03_F01_C01', 'Rejected', '1019', '2024-02-18 11:15:29'),
(157, '2024offsiteoperation001_M02_F01_C02', 'Reviewing', '1019', '2024-02-18 11:15:51'),
(158, '2024offsiteoperation001_M02_F01_C02', 'Accepted', '1019', '2024-02-18 11:15:54'),
(159, '2024offsiteoperation001_M03_F01_C02', 'Reviewing', '1019', '2024-02-18 11:16:23'),
(160, '2024offsiteoperation001_M03_F01_C02', 'Accepted', '1019', '2024-02-18 11:16:26'),
(161, '2024offsiteoperation001_M04_F01_C01', 'Reviewing', '1019', '2024-02-18 11:16:43'),
(162, '2024offsiteoperation001_M04_F01_C01', 'Accepted', '1019', '2024-02-18 11:16:47'),
(163, '2024offsiteoperation001_M03_F01_C01', 'Edited', '1011', '2024-02-18 11:23:41'),
(164, '2024offsiteoperation001_M03_F01_C01', 'Submit for review', '1011', '2024-02-18 11:39:36'),
(165, '2024offsiteoperation001_M03_F01_C01', 'Accepted', '1019', '2024-02-18 11:43:38'),
(166, '2024offsiteoperation001_M04_F01_C01', 'Reviewing', '1019', '2024-02-18 16:05:34'),
(167, '2024offsiteoperation001_M04_F01_C01', 'Accepted', '1019', '2024-02-18 16:05:55'),
(168, '2024offsiteoperation001_M03_F01_C02', 'Accepted', '1019', '2024-02-18 16:18:29'),
(169, '2024offsiteoperation001_M03_F01_C01', 'Reviewing', '1019', '2024-02-18 16:22:31'),
(170, '2024offsiteoperation001_M03_F01_C01', 'Accepted', '1019', '2024-02-18 16:36:06'),
(171, '2024offsiteoperation001_M01_F01_C02', 'Comment Rejected to Enterer', '1019', '2024-02-18 16:36:26'),
(172, '2024offsiteoperation001_M02_F01_C02', 'Accepted', '1019', '2024-02-18 16:37:00'),
(173, '2024offsiteoperation001_M01_F01_C01', 'Accepted', '1019', '2024-02-18 16:37:24'),
(174, '2024offsiteoperation001_M01_F01_C02', 'Replied Comment Editing', '1011', '2024-02-18 17:10:48'),
(175, '2024offsiteoperation001_M01_F01_C02', 'Submitted the replied comment edited review', '1011', '2024-02-18 17:11:01'),
(176, '2024offsiteoperation001_M01_F01_C02', 'Accepted', '1019', '2024-02-18 17:23:12'),
(177, '2024offsiteoperation001_M01_F01_C02', 'Accepted', '1019', '2024-02-18 17:26:26'),
(178, '2024offsiteoperation001_M03_F01_C02', 'Accepted', '1019', '2024-02-18 17:27:29'),
(179, '2023onsiteoperation003_M01_F01_C01', 'Edited', '1011', '2024-03-12 15:28:33'),
(180, '2023onsiteoperation003_M01_F01_C01', 'Edited', '1011', '2024-03-12 15:28:41'),
(181, '2024offsiteoperation002_M01_F01_C01', 'Entered', '1011', '2024-03-12 16:43:56'),
(182, '2024offsiteoperation002_M04_F01_C01', 'Entered', '1011', '2024-03-12 16:45:37'),
(183, '2024offsiteoperation002_M01_F02_C01', 'Entered', '1011', '2024-03-12 16:48:19'),
(184, '2024offsiteoperation002_M04_F01_C01', 'Edited', '1011', '2024-03-12 16:48:57'),
(185, '2024offsiteoperation002_M04_F01_C01', 'Edited', '1018', '2024-03-12 16:50:01'),
(186, '2024offsiteoperation002_M01_F01_C01', 'Editing', '1018', '2024-03-12 16:51:58'),
(187, '2024offsiteoperation002_M01_F01_C01', 'Edited', '1018', '2024-03-12 16:52:14'),
(188, '2024offsiteoperation002_M01_F01_C01', 'Edited', '1018', '2024-03-12 16:52:33'),
(189, '2024offsiteoperation002_M02_F01_C01', 'Entered', '1018', '2024-03-12 16:54:32'),
(190, '2024offsiteoperation002_M02_F01_C01', 'Edited', '1018', '2024-03-12 16:54:51'),
(191, '2024offsiteoperation002_M01_F01_C01', 'Entered', '1018', '2024-03-12 16:57:32'),
(192, '2024offsiteoperation002_M01_F01_C01', 'Submit for review', '1018', '2024-03-12 16:58:03'),
(193, '2024offsiteoperation002_M02_F01_C01', 'Submit for review', '1018', '2024-03-12 16:58:19'),
(194, '2024offsiteoperation002_M01_F02_C02', 'Submit for review', '1018', '2024-03-12 16:58:27'),
(195, '2024offsiteoperation002_M04_F01_C01', 'Submit for review', '1018', '2024-03-12 16:58:34'),
(196, '2024offsiteoperation002_M01_F02_C01', 'Submit for review', '1018', '2024-03-12 16:58:42'),
(197, '2024offsiteoperation002_M01_F02_C01', 'Reviewing', '1019', '2024-03-12 17:00:30'),
(198, '2024offsiteoperation002_M04_F01_C01', 'Reviewing', '1019', '2024-03-12 17:00:49'),
(199, '2024offsiteoperation002_M01_F02_C02', 'Reviewing', '1019', '2024-03-12 17:00:55'),
(200, '2024offsiteoperation002_M02_F01_C01', 'Reviewing', '1019', '2024-03-12 17:01:02'),
(201, '2024offsiteoperation002_M01_F01_C01', 'Reviewing', '1019', '2024-03-12 17:01:08'),
(202, '2024offsiteoperation002_M01_F01_C01', 'Rejected', '1019', '2024-03-12 17:01:18'),
(203, '2024offsiteoperation002_M01_F01_C01', 'Edited', '1011', '2024-03-12 17:02:19'),
(204, '2024offsiteoperation002_M01_F01_C01', 'Submit for review', '1011', '2024-03-12 17:02:32'),
(205, '2024offsiteoperation002_M01_F01_C01', 'Reviewing', '1019', '2024-03-12 17:02:57'),
(206, '2024offsiteoperation002_M01_F01_C01', 'Accepted', '1019', '2024-03-12 17:03:04'),
(207, '2024offsiteoperation002_M02_F01_C01', 'Accepted', '1019', '2024-03-12 17:03:11'),
(208, '2024offsiteoperation002_M01_F02_C02', 'Accepted', '1019', '2024-03-12 17:04:00'),
(209, '2024offsiteoperation002_M04_F01_C01', 'Accepted', '1019', '2024-03-12 17:04:07'),
(210, '2024offsiteoperation002_M01_F02_C01', 'Accepted', '1019', '2024-03-12 17:04:13'),
(211, '2024offsiteoperation002_M04_F01_C01', 'Comment Rejected to Enterer', '1019', '2024-03-12 17:21:18'),
(212, '2024offsiteoperation002_M02_F01_C01', 'Reviewing', '1019', '2024-03-12 17:21:41'),
(213, '2024offsiteoperation002_M02_F01_C01', 'Accepted', '1019', '2024-03-12 17:21:45'),
(214, '2024offsiteoperation002_M01_F02_C02', 'Accepted', '1019', '2024-03-12 17:22:04'),
(215, '2024offsiteoperation002_M01_F02_C01', 'Reviewing', '1019', '2024-03-12 17:23:22'),
(216, '2024offsiteoperation002_M01_F02_C01', 'Accepted', '1019', '2024-03-12 17:23:26'),
(217, '2024offsiteoperation002_M01_F01_C01', 'Accepted', '1019', '2024-03-12 17:23:48'),
(218, '2024offsiteoperation002_M04_F01_C01', 'Replied Comment Editing', '1011', '2024-03-12 17:24:58'),
(219, '2024offsiteoperation002_M04_F01_C01', 'Submitted the replied comment edited review', '1011', '2024-03-12 17:25:12'),
(220, '2024offsiteoperation002_M04_F01_C01', 'Accepted', '1019', '2024-03-12 17:27:43'),
(221, '2024offsiteoperation002_M01_F02_C02', 'Accepted', '1019', '2024-03-12 17:27:58'),
(222, '2024onsiteoperation001BRNONOP001_M01_F01_C01', 'Entered', '1011', '2024-03-14 10:00:32'),
(223, '2024onsiteoperation001BRNONOP001_M01_F01_C01', 'Editing', '1011', '2024-03-14 10:00:54'),
(224, '2024onsiteoperation001BRNONOP001_M01_F01_C02', 'Entered', '1011', '2024-03-14 10:05:54'),
(225, '2024onsiteoperation001BRNONOP001_M01_F01_C02', 'Editing', '1011', '2024-03-14 10:06:00'),
(226, '2024onsiteoperation001BRNONOP001_M01_F01_C01', 'Deleted', '1011', '2024-03-14 10:06:05'),
(227, '2024onsiteoperation001BRNONOP001_M01_F01_C01', 'Entered', '1011', '2024-03-14 10:32:55'),
(228, '2024onsiteoperation001BRNONOP001_M01_F02_C01', 'Entered', '1011', '2024-03-14 10:35:07'),
(229, '2024onsiteoperation001BRNONOP001_M01_F01_C02', 'Edited', '1011', '2024-03-14 10:39:26'),
(230, '2024onsiteoperation001BRNONOP001_M01_F01_C02', 'Edited', '1011', '2024-03-14 10:40:22'),
(231, '2024onsiteoperation001BRNONOP001_M01_F01_C02', 'Edited', '1011', '2024-03-14 13:32:48'),
(232, '2024onsiteoperation001BRNONOP001_M04_F01_C01', 'Entered', '1018', '2024-03-14 13:58:24'),
(233, '2024onsiteoperation001BRNONOP001_M04_F02_C01', 'Entered', '1018', '2024-03-14 14:10:45'),
(234, '2024onsiteoperation002BRNONOP001_M01_F01_C01', 'Entered', '1018', '2024-03-14 14:14:10'),
(235, '2024onsiteoperation002BRNONOP001_M01_F01_C02', 'Entered', '1018', '2024-03-14 14:15:51'),
(236, '2024onsiteoperation002BRNONOP001_M01_F02_C01', 'Entered', '1018', '2024-03-14 14:18:37'),
(237, '2024onsiteoperation002BRNONOP001_M04_F01_C01', 'Entered', '1011', '2024-03-14 14:21:33'),
(238, '2024onsiteoperation002BRNONOP001_M04_F02_C01', 'Entered', '1011', '2024-03-14 14:24:24'),
(239, '2024onsiteoperation002BRNONOP001_M04_F02_C01', 'Submit for review', '1011', '2024-03-14 14:24:41'),
(240, '2024onsiteoperation002BRNONOP001_M04_F01_C01', 'Submit for review', '1011', '2024-03-14 14:24:48'),
(241, '2024onsiteoperation002BRNONOP001_M01_F02_C01', 'Submit for review', '1011', '2024-03-14 14:24:55'),
(242, '2024onsiteoperation002BRNONOP001_M01_F01_C02', 'Submit for review', '1011', '2024-03-14 14:25:02'),
(243, '2024onsiteoperation002BRNONOP001_M01_F01_C01', 'Submit for review', '1011', '2024-03-14 14:25:10'),
(244, '2024onsiteoperation003BRNONOP001_M01_F01_C01', 'Entered', '1011', '2024-03-14 14:34:28'),
(245, '2024onsiteoperation003BRNONOP001_M01_F01_C02', 'Entered', '1011', '2024-03-14 15:00:16'),
(246, '2024onsiteoperation003BRNONOP001_M04_F01_C01', 'Entered', '1011', '2024-03-14 15:10:25'),
(247, '2024onsiteoperation003BRNONOP001_M01_F02_C01', 'Entered', '1011', '2024-03-14 15:13:14'),
(248, '2024onsiteoperation003BRNONOP001_M04_F02_C01', 'Entered', '1011', '2024-03-14 15:15:08'),
(249, '2024onsiteoperation003BRNONOP001_M01_F01_C01', 'Edited', '1011', '2024-03-14 15:18:28'),
(250, '2024onsiteoperation003BRNONOP001_M01_F01_C02', 'Edited', '1011', '2024-03-14 15:18:39'),
(251, '2024onsiteoperation003BRNONOP001_M01_F01_C02', 'Submit for review', '1011', '2024-03-14 16:27:22'),
(252, '2024onsiteoperation003BRNONOP001_M01_F01_C01', 'Submit for review', '1011', '2024-03-14 16:27:28'),
(253, '2024onsiteoperation003BRNONOP001_M04_F02_C01', 'Submit for review', '1011', '2024-03-14 16:27:35'),
(254, '2024onsiteoperation003BRNONOP001_M01_F02_C01', 'Submit for review', '1011', '2024-03-14 16:27:43'),
(255, '2024onsiteoperation003BRNONOP001_M04_F01_C01', 'Submit for review', '1011', '2024-03-14 16:27:51'),
(256, '2024onsiteoperation003BRNONOP001_M04_F01_C01', 'Rejected', '1019', '2024-03-14 16:31:12'),
(257, '2024onsiteoperation003BRNONOP001_M01_F02_C01', 'Accepted', '1019', '2024-03-14 16:31:21'),
(258, '2024onsiteoperation003BRNONOP001_M04_F02_C01', 'Accepted', '1019', '2024-03-14 16:31:42'),
(259, '2024onsiteoperation003BRNONOP001_M01_F01_C01', 'Accepted', '1019', '2024-03-14 16:31:58'),
(260, '2024onsiteoperation003BRNONOP001_M01_F01_C02', 'Accepted', '1019', '2024-03-14 16:32:14'),
(261, '2024onsiteoperation003BRNONOP001_M04_F01_C01', 'Edited', '1011', '2024-03-14 16:33:22'),
(262, '2024onsiteoperation003BRNONOP001_M04_F01_C01', 'Submit for review', '1011', '2024-03-14 16:33:30'),
(263, '2024onsiteoperation003BRNONOP001_M04_F01_C01', 'Accepted', '1019', '2024-03-14 16:33:50'),
(264, '2024onsiteoperation004BRNONOP001_M01_F01_C01', 'Entered', '1011', '2024-03-15 07:51:04'),
(265, '2024onsiteoperation004BRNONOP001_M01_F01_C02', 'Entered', '1011', '2024-03-15 07:52:52'),
(266, '2024onsiteoperation004BRNONOP001_M01_F02_C01', 'Entered', '1011', '2024-03-15 07:55:50'),
(267, '2024onsiteoperation004BRNONOP001_M04_F01_C01', 'Entered', '1011', '2024-03-15 07:58:03'),
(268, '2024onsiteoperation004BRNONOP001_M04_F02_C01', 'Entered', '1011', '2024-03-15 08:01:35'),
(269, '2024onsiteoperation004BRNONOP001_M04_F02_C01', 'Submit for review', '1011', '2024-03-15 08:01:51'),
(270, '2024onsiteoperation004BRNONOP001_M04_F01_C01', 'Submit for review', '1011', '2024-03-15 08:01:57'),
(271, '2024onsiteoperation004BRNONOP001_M01_F02_C01', 'Submit for review', '1011', '2024-03-15 08:02:30'),
(272, '2024onsiteoperation004BRNONOP001_M01_F01_C02', 'Deleted', '1011', '2024-03-15 08:02:35'),
(273, '2024onsiteoperation004BRNONOP001_M01_F01_C01', 'Deleted', '1011', '2024-03-15 08:02:38'),
(274, '2024onsiteoperation004BRNONOP001_M01_F01_C01', 'Entered', '1018', '2024-03-15 08:04:03'),
(275, '2024onsiteoperation004BRNONOP001_M01_F01_C02', 'Entered', '1018', '2024-03-15 08:05:25'),
(276, '2024onsiteoperation004BRNONOP001_M01_F01_C02', 'Submit for review', '1018', '2024-03-15 08:05:33'),
(277, '2024onsiteoperation004BRNONOP001_M01_F01_C01', 'Submit for review', '1018', '2024-03-15 08:05:40'),
(278, '2024onsiteoperation004BRNONOP001_M01_F01_C01', 'Rejected', '1019', '2024-03-15 08:06:17'),
(279, '2024onsiteoperation004BRNONOP001_M01_F01_C02', 'Accepted', '1019', '2024-03-15 08:06:38'),
(280, '2024onsiteoperation004BRNONOP001_M01_F02_C01', 'Accepted', '1019', '2024-03-15 08:06:51'),
(281, '2024onsiteoperation004BRNONOP001_M04_F01_C01', 'Accepted', '1019', '2024-03-15 08:06:58'),
(282, '2024onsiteoperation004BRNONOP001_M04_F02_C01', 'Accepted', '1019', '2024-03-15 08:07:06'),
(283, '2024onsiteoperation004BRNONOP001_M01_F01_C01', 'Edited', '1011', '2024-03-15 08:07:56'),
(284, '2024onsiteoperation004BRNONOP001_M01_F01_C01', 'Submit for review', '1011', '2024-03-15 08:08:13'),
(285, '2024onsiteoperation004BRNONOP001_M01_F01_C01', 'Accepted', '1019', '2024-03-15 08:08:38'),
(286, '2024onsiteoperation002BRNONOP001_M01_F01_C02', 'Rejected', '1019', '2024-03-15 15:28:08'),
(287, '2024offsiteoperation003_M01_F01_C01', 'Entered', '1011', '2024-03-15 16:49:17'),
(288, '2024offsiteoperation003_M01_F01_C02', 'Entered', '1011', '2024-03-15 16:50:54'),
(289, '2024offsiteoperation003_M01_F01_C03', 'Entered', '1011', '2024-03-15 16:52:44'),
(290, '2024offsiteoperation003_M01_F02_C01', 'Entered', '1018', '2024-03-15 16:55:44'),
(291, '2024offsiteoperation003_M01_F02_C02', 'Entered', '1018', '2024-03-15 16:57:26'),
(292, '2024offsiteoperation003_M01_F02_C02', 'Submit for review', '1018', '2024-03-15 16:57:34'),
(293, '2024offsiteoperation003_M01_F02_C01', 'Submit for review', '1018', '2024-03-15 16:57:41'),
(294, '2024offsiteoperation003_M01_F01_C03', 'Submit for review', '1018', '2024-03-15 16:57:48'),
(295, '2024offsiteoperation003_M01_F01_C02', 'Submit for review', '1018', '2024-03-15 16:57:56'),
(296, '2024offsiteoperation003_M01_F01_C01', 'Submit for review', '1018', '2024-03-15 16:58:03'),
(297, '2024offsiteoperation003_M01_F01_C01', 'Accepted', '1019', '2024-03-15 17:01:53'),
(298, '2024offsiteoperation003_M01_F01_C02', 'Accepted', '1019', '2024-03-15 17:02:11'),
(299, '2024offsiteoperation003_M01_F01_C03', 'Accepted', '1019', '2024-03-15 17:02:18'),
(300, '2024offsiteoperation003_M01_F02_C01', 'Accepted', '1019', '2024-03-15 17:02:27'),
(301, '2024offsiteoperation003_M01_F02_C02', 'Accepted', '1019', '2024-03-15 17:02:37'),
(302, '2024offsiteoperation003_M01_F01_C02', 'Reviewing', '1019', '2024-03-15 17:20:43'),
(303, '2024offsiteoperation003_M01_F02_C02', 'Comment Rejected to Enterer', '1019', '2024-03-15 17:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `commentreplylog`
--

CREATE TABLE `commentreplylog` (
  `id` int(11) NOT NULL,
  `comment_id` varchar(100) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commentreplylog`
--

INSERT INTO `commentreplylog` (`id`, `comment_id`, `updated_by`, `updated_at`, `status`) VALUES
(1, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-04 13:54:24', 'comment asssigned-1022'),
(2, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-05 03:30:09', 'comment asssigned-1022'),
(3, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-05 03:30:59', 'comment asssigned-1022'),
(4, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-05 03:57:59', 'comment asssigned-1022'),
(5, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-05 03:58:13', 'comment asssigned-1023'),
(6, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-05 05:14:45', 'comment asssigned-1022'),
(7, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-05 05:15:18', 'comment asssigned-1023'),
(8, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-05 05:33:31', 'comment asssigned-1023'),
(9, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-05 05:49:31', 'comment asssigned-1023'),
(10, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-05 06:06:42', 'comment asssigned-1022'),
(11, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-05 06:08:50', 'comment asssigned-1022'),
(12, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-05 06:09:58', 'comment asssigned-1022'),
(13, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-05 06:41:36', 'comment asssigned-1023'),
(14, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-05 06:42:10', 'comment asssigned-1022'),
(15, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-05 07:11:56', 'comment asssigned-1012'),
(16, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-05 08:12:47', 'comment asssigned-1012'),
(17, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-06 06:12:54', 'Adding Reply1012'),
(18, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 08:53:39', 'Adding Reply1012'),
(19, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-07 09:23:13', 'comment asssigned-1012'),
(20, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 09:23:20', 'comment asssigned-1012'),
(21, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 09:30:14', 'Adding Reply1012'),
(22, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 09:32:59', 'Adding Reply1012'),
(23, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 10:03:45', 'Adding Reply1012'),
(24, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 10:06:29', 'Adding Reply1012'),
(25, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 10:09:45', 'Adding Reply1012'),
(26, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 10:12:10', 'Adding Reply1012'),
(27, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 10:12:27', 'Adding Reply1012'),
(28, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 10:55:42', 'Adding Reply1012'),
(29, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 10:55:56', 'Adding Reply1012'),
(30, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 10:57:07', 'Adding Reply1012'),
(31, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 10:58:05', 'Adding Reply1012'),
(32, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 10:58:29', 'Adding Reply1012'),
(33, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 10:59:47', 'Adding Reply'),
(34, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 11:00:10', 'Adding Reply'),
(35, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 11:06:11', 'Adding Reply'),
(36, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 23:49:24', 'Adding Reply'),
(37, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-07 23:50:37', 'Reply submitted for review'),
(38, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-08 06:26:18', 'comment asssigned-1012'),
(39, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:27:28', 'Adding Reply'),
(40, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:30:55', 'Reply submitted for review'),
(41, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:31:34', 'comment asssigned-1012'),
(42, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:44:59', 'comment asssigned-1012'),
(43, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:45:33', 'Adding Reply'),
(44, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:45:39', 'Adding Reply'),
(45, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:45:43', 'Reply submitted for review'),
(46, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:49:22', 'comment asssigned-1012'),
(47, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:49:49', 'Adding Reply'),
(48, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:49:57', 'Adding Reply'),
(49, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:50:07', 'Adding Reply'),
(50, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:52:46', 'Adding Reply'),
(51, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:52:53', 'Adding Reply'),
(52, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:52:57', 'Adding Reply'),
(53, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:53:00', 'Adding Reply'),
(54, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:54:28', 'Adding Reply'),
(55, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 06:59:10', 'Adding Reply'),
(56, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 07:06:49', 'Adding Reply'),
(57, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-08 07:07:11', 'comment asssigned-1012'),
(58, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-08 07:07:31', 'Adding Reply'),
(59, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-08 07:07:34', 'Adding Reply'),
(60, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-08 07:07:41', 'Adding Reply'),
(61, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-08 07:07:47', 'Reply submitted for review'),
(62, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 07:18:12', 'Adding Reply'),
(63, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 07:18:16', 'Adding Reply'),
(64, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 07:25:04', 'Adding Reply'),
(65, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 07:25:11', 'Adding Reply'),
(66, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 07:39:16', 'Adding Reply'),
(67, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 07:39:21', 'Reply submitted for review'),
(68, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 15:06:40', 'Adding Reply'),
(69, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 15:08:37', 'Reply submitted for review'),
(70, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 15:08:53', 'Reply Revewing'),
(71, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-08 15:17:15', 'Revewing Reply'),
(72, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-09 08:34:26', 'Reviewing Reply'),
(73, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-09 08:34:33', 'Reviewing Reply'),
(74, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-09 08:42:01', 'Reviewing Reply'),
(75, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-09 08:43:24', 'Reviewing Reply'),
(76, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-09 08:43:31', 'Reviewing Reply'),
(77, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-09 09:28:13', 'Reviewing Reply'),
(78, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-09 10:36:20', 'Accepted management reply'),
(79, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-09 10:36:27', 'Submitted to Audit'),
(80, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-09 10:39:31', 'Reviewing Reply'),
(81, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-09 10:39:42', 'Accepted management reply'),
(82, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-09 10:40:40', 'comment asssigned-1012'),
(83, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-09 15:20:27', 'Adding Reply'),
(84, '2023onsiteoperation001_M01_F02_C01', '1013', '2023-11-11 04:12:23', 'comment asssigned-1013'),
(85, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-11 12:32:14', 'comment asssigned-1022'),
(86, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-11 16:14:48', 'comment asssigned-1022'),
(87, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-11 16:15:16', 'Adding Reply'),
(88, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-11 16:22:16', 'comment asssigned-1022'),
(89, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-11 16:22:21', 'comment asssigned-1022'),
(90, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-11 16:26:21', 'comment asssigned-1012'),
(91, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-11 16:26:47', 'comment asssigned-1022'),
(92, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-11 16:27:19', 'comment asssigned-1022'),
(93, '2023onsiteoperation001_M03_F01_C01', '1012', '2023-11-11 16:39:57', 'comment asssigned-1022'),
(94, '2023onsiteoperation001_M03_F01_C01', '1012', '2023-11-11 16:40:33', 'comment asssigned-1012'),
(95, '2023onsiteoperation001_M03_F01_C01', '1012', '2023-11-11 16:41:04', 'comment asssigned-1022'),
(96, '2023onsiteoperation001_M03_F01_C01', '1022', '2023-11-11 16:43:04', 'Adding Reply'),
(97, '2023onsiteoperation001_M03_F01_C01', '1022', '2023-11-11 16:43:33', 'Adding Reply'),
(98, '2023onsiteoperation001_M03_F01_C01', '1022', '2023-11-11 16:43:52', 'Reply submitted for review'),
(99, '2023onsiteoperation001_M03_F01_C01', '1013', '2023-11-11 16:44:57', 'Reviewing Reply'),
(100, '2023onsiteoperation001_M03_F01_C01', '1013', '2023-11-11 16:45:11', 'Accepted management reply'),
(101, '2023onsiteoperation001_M03_F01_C01', '1013', '2023-11-11 16:45:29', 'Submitted to Audit'),
(102, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-14 15:25:07', 'Accepted management reply'),
(103, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-14 15:25:15', 'Submitted to Audit'),
(104, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-18 10:57:38', 'Accepted management reply'),
(105, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-18 13:00:22', 'Submitted to Audit'),
(106, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-18 13:00:34', 'Accepted management reply'),
(107, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-18 13:00:40', 'Submitted to Audit'),
(108, '2023onsiteoperation001_M03_F01_C01', '1012', '2023-11-18 13:00:50', 'Accepted management reply'),
(109, '2023onsiteoperation001_M03_F01_C01', '1012', '2023-11-18 13:00:57', 'Submitted to Audit'),
(110, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-18 14:56:02', 'Submitted to Audit'),
(111, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-19 04:16:24', 'Reviewing Reply'),
(112, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-19 04:16:44', 'Accepted management reply'),
(113, '2023onsiteoperation001_M01_F02_C01', '1012', '2023-11-19 04:35:52', 'Submitted to Audit'),
(114, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-23 17:22:32', 'comment asssigned-1012'),
(115, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-23 17:22:56', 'Adding Reply'),
(116, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-23 17:23:02', 'Reply submitted for review'),
(117, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-23 17:23:26', 'Reviewing Reply'),
(118, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-23 17:23:37', 'Reviewing Reply'),
(119, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-23 17:23:50', 'Accepted management reply'),
(120, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-23 17:23:55', 'Submitted to Audit'),
(121, '2023onsiteoperation002_M01_F01_C01', '1014', '2023-11-26 18:06:14', 'comment asssigned-1025'),
(122, '2023onsiteoperation002_M01_F01_C02', '1014', '2023-11-26 18:06:25', 'comment asssigned-1025'),
(123, '2023onsiteoperation002_M01_F02_C01', '1014', '2023-11-26 18:06:44', 'comment asssigned-1025'),
(124, '2023onsiteoperation002_M03_F01_C01', '1014', '2023-11-26 18:07:04', 'comment asssigned-1015'),
(125, '2023onsiteoperation002_M03_F01_C02', '1014', '2023-11-26 18:07:23', 'comment asssigned-1025'),
(126, '2023onsiteoperation002_M04_F01_C01', '1014', '2023-11-26 18:07:42', 'comment asssigned-1014'),
(127, '2023onsiteoperation002_M04_F02_C01', '1014', '2023-11-26 18:07:56', 'comment asssigned-1015'),
(128, '2023onsiteoperation002_M04_F03_C01', '1014', '2023-11-26 18:08:06', 'comment asssigned-1014'),
(129, '2023onsiteoperation002_M04_F01_C01', '1014', '2023-11-26 18:10:51', 'Adding Reply'),
(130, '2023onsiteoperation002_M04_F03_C01', '1014', '2023-11-26 18:13:31', 'Adding Reply'),
(131, '2023onsiteoperation002_M04_F03_C01', '1014', '2023-11-26 18:13:39', 'Reply submitted for review'),
(132, '2023onsiteoperation002_M04_F01_C01', '1014', '2023-11-26 18:13:49', 'Reply submitted for review'),
(133, '2023onsiteoperation002_M04_F01_C01', '1014', '2023-11-26 18:16:08', 'Reviewing Reply'),
(134, '2023onsiteoperation002_M04_F03_C01', '1014', '2023-11-26 18:16:17', 'Reviewing Reply'),
(135, '2023onsiteoperation002_M04_F03_C01', '1014', '2023-11-26 18:16:23', 'Accepted management reply'),
(136, '2023onsiteoperation002_M04_F01_C01', '1014', '2023-11-26 18:16:44', 'Accepted management reply'),
(137, '2023onsiteoperation002_M01_F01_C01', '1025', '2023-11-26 18:20:02', 'Adding Reply'),
(138, '2023onsiteoperation002_M01_F01_C01', '1025', '2023-11-26 18:20:12', 'Reply submitted for review'),
(139, '2023onsiteoperation002_M01_F01_C02', '1025', '2023-11-26 18:21:29', 'Adding Reply'),
(140, '2023onsiteoperation002_M01_F01_C02', '1025', '2023-11-26 18:21:59', 'Adding Reply'),
(141, '2023onsiteoperation002_M01_F01_C02', '1025', '2023-11-26 18:22:03', 'Reply submitted for review'),
(142, '2023onsiteoperation002_M01_F02_C01', '1025', '2023-11-26 18:23:08', 'Adding Reply'),
(143, '2023onsiteoperation002_M01_F02_C01', '1025', '2023-11-26 18:23:17', 'Adding Reply'),
(144, '2023onsiteoperation002_M01_F02_C01', '1025', '2023-11-26 18:23:22', 'Reply submitted for review'),
(145, '2023onsiteoperation002_M03_F01_C02', '1025', '2023-11-26 18:24:33', 'Adding Reply'),
(146, '2023onsiteoperation002_M03_F01_C02', '1025', '2023-11-26 18:24:38', 'Reply submitted for review'),
(147, '2023onsiteoperation002_M03_F01_C02', '1014', '2023-11-26 18:25:21', 'comment asssigned-1015'),
(148, '2023onsiteoperation002_M04_F02_C01', '1015', '2023-11-26 18:32:43', 'Adding Reply'),
(149, '2023onsiteoperation002_M04_F02_C01', '1015', '2023-11-26 18:32:53', 'Reply submitted for review'),
(150, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 18:33:36', 'Adding Reply'),
(151, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 18:33:45', 'Reply submitted for review'),
(152, '2023onsiteoperation002_M03_F01_C01', '1015', '2023-11-26 18:34:58', 'Adding Reply'),
(153, '2023onsiteoperation002_M03_F01_C01', '1015', '2023-11-26 18:35:05', 'Adding Reply'),
(154, '2023onsiteoperation002_M03_F01_C01', '1015', '2023-11-26 18:35:10', 'Reply submitted for review'),
(155, '2023onsiteoperation002_M04_F02_C01', '1014', '2023-11-26 18:37:15', 'Reviewing Reply'),
(156, '2023onsiteoperation002_M01_F01_C01', '1014', '2023-11-26 18:38:56', 'Accepted management reply'),
(157, '2023onsiteoperation002_M01_F01_C01', '1014', '2023-11-26 18:39:00', 'Submitted to Audit'),
(158, '2023onsiteoperation002_M01_F01_C02', '1014', '2023-11-26 18:39:11', 'Accepted management reply'),
(159, '2023onsiteoperation002_M01_F01_C02', '1014', '2023-11-26 18:39:16', 'Submitted to Audit'),
(160, '2023onsiteoperation002_M01_F02_C01', '1014', '2023-11-26 18:39:29', 'Accepted management reply'),
(161, '2023onsiteoperation002_M01_F02_C01', '1014', '2023-11-26 18:39:33', 'Submitted to Audit'),
(162, '2023onsiteoperation002_M03_F01_C01', '1014', '2023-11-26 18:39:55', 'Accepted management reply'),
(163, '2023onsiteoperation002_M03_F01_C01', '1014', '2023-11-26 18:41:06', 'Submitted to Audit'),
(164, '2023onsiteoperation002_M03_F01_C02', '1014', '2023-11-26 18:41:51', 'Accepted management reply'),
(165, '2023onsiteoperation002_M04_F02_C01', '1014', '2023-11-26 18:42:33', 'Accepted management reply'),
(166, '2023onsiteoperation002_M04_F02_C01', '1014', '2023-11-26 18:42:38', 'Submitted to Audit'),
(167, '2023onsiteoperation002_M03_F01_C02', '1014', '2023-11-26 18:43:16', 'comment asssigned-1015'),
(168, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 18:45:01', 'Adding Reply'),
(169, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 18:45:05', 'Reply submitted for review'),
(170, '2023onsiteoperation002_M04_F01_C01', '1015', '2023-11-26 18:50:31', 'Submitted to Audit'),
(171, '2023onsiteoperation002_M04_F03_C01', '1015', '2023-11-26 18:51:01', 'Submitted to Audit'),
(172, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 18:51:23', 'comment asssigned-1015'),
(173, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 18:52:30', 'Adding Reply'),
(174, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 18:52:39', 'Reply submitted for review'),
(175, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 19:01:33', 'Accepted management reply'),
(176, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 19:01:43', 'Submitted to Audit'),
(177, '2023onsiteoperation002_M04_F03_C01', '1014', '2023-11-26 19:36:18', 'comment asssigned-1014'),
(178, '2023onsiteoperation002_M04_F03_C01', '1014', '2023-11-26 19:36:42', 'Adding Reply'),
(179, '2023onsiteoperation002_M04_F03_C01', '1014', '2023-11-26 19:36:46', 'Reply submitted for review'),
(180, '2023onsiteoperation002_M04_F03_C01', '1014', '2023-11-26 19:37:09', 'Accepted management reply'),
(181, '2023onsiteoperation002_M04_F03_C01', '1014', '2023-11-26 19:37:13', 'Submitted to Audit'),
(182, '2023onsiteoperation002_M04_F01_C01', '1014', '2023-11-26 19:40:29', 'comment asssigned-1014'),
(183, '2023onsiteoperation002_M04_F01_C01', '1014', '2023-11-26 19:40:51', 'Adding Reply'),
(184, '2023onsiteoperation002_M04_F01_C01', '1014', '2023-11-26 19:40:59', 'Reply submitted for review'),
(185, '2023onsiteoperation002_M04_F01_C01', '1014', '2023-11-26 19:41:14', 'Reviewing Reply'),
(186, '2023onsiteoperation002_M04_F01_C01', '1014', '2023-11-26 19:41:22', 'Accepted management reply'),
(187, '2023onsiteoperation002_M04_F01_C01', '1014', '2023-11-26 19:41:26', 'Submitted to Audit'),
(188, '2023onsiteoperation002_M03_F01_C02', '1014', '2023-11-26 19:47:17', 'comment asssigned-1015'),
(189, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 19:48:06', 'Adding Reply'),
(190, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 19:48:10', 'Reply submitted for review'),
(191, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 19:48:31', 'Reviewing Reply'),
(192, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 19:48:42', 'Accepted management reply'),
(193, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26 19:48:52', 'Submitted to Audit'),
(194, '2023onsiteoperation002_M03_F01_C01', '1015', '2023-11-26 19:50:46', 'comment asssigned-1015'),
(195, '2023onsiteoperation002_M03_F01_C01', '1015', '2023-11-26 19:51:10', 'Adding Reply'),
(196, '2023onsiteoperation002_M03_F01_C01', '1015', '2023-11-26 19:51:15', 'Reply submitted for review'),
(197, '2023onsiteoperation002_M03_F01_C01', '1015', '2023-11-26 19:51:33', 'Reviewing Reply'),
(198, '2023onsiteoperation002_M03_F01_C01', '1015', '2023-11-26 19:51:41', 'Accepted management reply'),
(199, '2023onsiteoperation002_M03_F01_C01', '1015', '2023-11-26 19:51:46', 'Submitted to Audit'),
(200, '2024offsiteoperation001_M01_F01_C01', '1012', '2024-02-18 13:44:30', 'comment asssigned-1012'),
(201, '2024offsiteoperation001_M01_F01_C02', '1012', '2024-02-18 13:44:55', 'comment asssigned-1013'),
(202, '2024offsiteoperation001_M02_F01_C02', '1012', '2024-02-18 13:45:03', 'comment asssigned-1022'),
(203, '2024offsiteoperation001_M03_F01_C01', '1012', '2024-02-18 13:45:13', 'comment asssigned-1022'),
(204, '2024offsiteoperation001_M03_F01_C02', '1012', '2024-02-18 13:45:24', 'comment asssigned-1013'),
(205, '2024offsiteoperation001_M04_F01_C01', '1012', '2024-02-18 13:45:37', 'comment asssigned-1023'),
(206, '2024offsiteoperation001_M04_F01_C01', '1012', '2024-02-18 13:52:15', 'comment asssigned-1012'),
(207, '2024offsiteoperation001_M01_F01_C01', '1012', '2024-02-18 14:09:16', 'Adding Reply'),
(208, '2024offsiteoperation001_M01_F01_C01', '1012', '2024-02-18 14:12:23', 'Reply submitted for review'),
(209, '2024offsiteoperation001_M04_F01_C01', '1012', '2024-02-18 14:14:21', 'Adding Reply'),
(210, '2024offsiteoperation001_M04_F01_C01', '1012', '2024-02-18 14:14:25', 'Reply submitted for review'),
(211, '2024offsiteoperation001_M01_F01_C02', '1013', '2024-02-18 14:18:15', 'Adding Reply'),
(212, '2024offsiteoperation001_M01_F01_C02', '1013', '2024-02-18 14:18:38', 'Adding Reply'),
(213, '2024offsiteoperation001_M01_F01_C02', '1013', '2024-02-18 14:18:49', 'Reply submitted for review'),
(214, '2024offsiteoperation001_M03_F01_C02', '1013', '2024-02-18 14:21:11', 'Adding Reply'),
(215, '2024offsiteoperation001_M03_F01_C02', '1013', '2024-02-18 14:21:17', 'Reply submitted for review'),
(216, '2024offsiteoperation001_M02_F01_C02', '1022', '2024-02-18 14:43:11', 'Adding Reply'),
(217, '2024offsiteoperation001_M02_F01_C02', '1022', '2024-02-18 14:43:44', 'Adding Reply'),
(218, '2024offsiteoperation001_M02_F01_C02', '1022', '2024-02-18 14:43:52', 'Reply submitted for review'),
(219, '2024offsiteoperation001_M03_F01_C01', '1022', '2024-02-18 14:48:00', 'Adding Reply'),
(220, '2024offsiteoperation001_M03_F01_C01', '1022', '2024-02-18 14:48:09', 'Reply submitted for review'),
(221, '2024offsiteoperation001_M01_F01_C01', '1012', '2024-02-18 15:47:54', 'Accepted management reply'),
(222, '2024offsiteoperation001_M01_F01_C01', '1012', '2024-02-18 15:47:58', 'Submitted to Audit'),
(223, '2024offsiteoperation001_M01_F01_C02', '1012', '2024-02-18 15:48:08', 'Accepted management reply'),
(224, '2024offsiteoperation001_M02_F01_C02', '1012', '2024-02-18 15:48:19', 'Accepted management reply'),
(225, '2024offsiteoperation001_M02_F01_C02', '1012', '2024-02-18 15:48:23', 'Submitted to Audit'),
(226, '2024offsiteoperation001_M01_F01_C02', '1012', '2024-02-18 15:48:34', 'Submitted to Audit'),
(227, '2024offsiteoperation001_M03_F01_C01', '1012', '2024-02-18 15:48:45', 'Accepted management reply'),
(228, '2024offsiteoperation001_M03_F01_C01', '1012', '2024-02-18 15:48:47', 'Submitted to Audit'),
(229, '2024offsiteoperation001_M03_F01_C02', '1012', '2024-02-18 15:48:55', 'Accepted management reply'),
(230, '2024offsiteoperation001_M03_F01_C02', '1012', '2024-02-18 15:48:59', 'Submitted to Audit'),
(231, '2024offsiteoperation001_M04_F01_C01', '1012', '2024-02-18 15:49:07', 'Accepted management reply'),
(232, '2024offsiteoperation001_M04_F01_C01', '1012', '2024-02-18 15:49:10', 'Submitted to Audit'),
(233, '2024offsiteoperation001_M01_F01_C02', '1012', '2024-02-18 17:23:52', 'comment asssigned-1012'),
(234, '2024offsiteoperation001_M03_F01_C02', '1012', '2024-02-18 17:24:03', 'comment asssigned-1012'),
(235, '2024offsiteoperation001_M01_F01_C02', '1012', '2024-02-18 17:24:15', 'Adding Reply'),
(236, '2024offsiteoperation001_M01_F01_C02', '1012', '2024-02-18 17:24:20', 'Reply submitted for review'),
(237, '2024offsiteoperation001_M03_F01_C02', '1012', '2024-02-18 17:24:29', 'Adding Reply'),
(238, '2024offsiteoperation001_M03_F01_C02', '1012', '2024-02-18 17:24:32', 'Reply submitted for review'),
(239, '2024offsiteoperation001_M01_F01_C02', '1012', '2024-02-18 17:25:08', 'Accepted management reply'),
(240, '2024offsiteoperation001_M01_F01_C02', '1012', '2024-02-18 17:25:12', 'Submitted to Audit'),
(241, '2024offsiteoperation001_M03_F01_C02', '1012', '2024-02-18 17:25:28', 'Reviewing Reply'),
(242, '2024offsiteoperation001_M03_F01_C02', '1012', '2024-02-18 17:27:00', 'Accepted management reply'),
(243, '2024offsiteoperation001_M03_F01_C02', '1012', '2024-02-18 17:27:03', 'Submitted to Audit'),
(244, '2024offsiteoperation002_M01_F01_C01', '1014', '2024-03-12 17:06:17', 'comment asssigned-1014'),
(245, '2024offsiteoperation002_M01_F02_C01', '1014', '2024-03-12 17:06:26', 'comment asssigned-1014'),
(246, '2024offsiteoperation002_M01_F02_C02', '1014', '2024-03-12 17:06:34', 'comment asssigned-1014'),
(247, '2024offsiteoperation002_M02_F01_C01', '1014', '2024-03-12 17:06:44', 'comment asssigned-1015'),
(248, '2024offsiteoperation002_M04_F01_C01', '1014', '2024-03-12 17:07:00', 'comment asssigned-1025'),
(249, '2024offsiteoperation002_M01_F02_C02', '1014', '2024-03-12 17:09:13', 'Adding Reply'),
(250, '2024offsiteoperation002_M01_F02_C01', '1014', '2024-03-12 17:10:15', 'Adding Reply'),
(251, '2024offsiteoperation002_M01_F01_C01', '1014', '2024-03-12 17:11:05', 'Adding Reply'),
(252, '2024offsiteoperation002_M01_F02_C02', '1014', '2024-03-12 17:11:16', 'Reply submitted for review'),
(253, '2024offsiteoperation002_M01_F02_C01', '1014', '2024-03-12 17:11:32', 'Reply submitted for review'),
(254, '2024offsiteoperation002_M01_F01_C01', '1014', '2024-03-12 17:11:40', 'Reply submitted for review'),
(255, '2024offsiteoperation002_M02_F01_C01', '1015', '2024-03-12 17:13:42', 'Adding Reply'),
(256, '2024offsiteoperation002_M02_F01_C01', '1015', '2024-03-12 17:13:50', 'Reply submitted for review'),
(257, '2024offsiteoperation002_M04_F01_C01', '1025', '2024-03-12 17:15:22', 'Adding Reply'),
(258, '2024offsiteoperation002_M04_F01_C01', '1025', '2024-03-12 17:15:31', 'Reply submitted for review'),
(259, '2024offsiteoperation002_M01_F01_C01', '1014', '2024-03-12 17:16:54', 'Reviewing Reply'),
(260, '2024offsiteoperation002_M01_F01_C01', '1014', '2024-03-12 17:17:07', 'Accepted management reply'),
(261, '2024offsiteoperation002_M01_F02_C01', '1014', '2024-03-12 17:17:25', 'Accepted management reply'),
(262, '2024offsiteoperation002_M01_F02_C02', '1014', '2024-03-12 17:17:33', 'Accepted management reply'),
(263, '2024offsiteoperation002_M02_F01_C01', '1014', '2024-03-12 17:17:42', 'Accepted management reply'),
(264, '2024offsiteoperation002_M01_F01_C01', '1014', '2024-03-12 17:18:03', 'comment asssigned-1014'),
(265, '2024offsiteoperation002_M01_F01_C01', '1014', '2024-03-12 17:18:30', 'Adding Reply'),
(266, '2024offsiteoperation002_M01_F01_C01', '1014', '2024-03-12 17:18:34', 'Reply submitted for review'),
(267, '2024offsiteoperation002_M01_F01_C01', '1014', '2024-03-12 17:18:53', 'Accepted management reply'),
(268, '2024offsiteoperation002_M04_F01_C01', '1014', '2024-03-12 17:19:01', 'Accepted management reply'),
(269, '2024offsiteoperation002_M01_F01_C01', '1014', '2024-03-12 17:19:21', 'Submitted to Audit'),
(270, '2024offsiteoperation002_M01_F02_C01', '1014', '2024-03-12 17:19:31', 'Submitted to Audit'),
(271, '2024offsiteoperation002_M01_F02_C02', '1014', '2024-03-12 17:19:38', 'Submitted to Audit'),
(272, '2024offsiteoperation002_M02_F01_C01', '1014', '2024-03-12 17:19:54', 'Submitted to Audit'),
(273, '2024offsiteoperation002_M04_F01_C01', '1014', '2024-03-12 17:20:02', 'Submitted to Audit'),
(274, '2024offsiteoperation002_M01_F02_C02', '1014', '2024-03-12 17:25:43', 'comment asssigned-1014'),
(275, '2024offsiteoperation002_M01_F02_C02', '1014', '2024-03-12 17:26:03', 'Adding Reply'),
(276, '2024offsiteoperation002_M01_F02_C02', '1014', '2024-03-12 17:26:08', 'Reply submitted for review'),
(277, '2024offsiteoperation002_M01_F02_C02', '1014', '2024-03-12 17:26:46', 'Accepted management reply'),
(278, '2024offsiteoperation002_M01_F02_C02', '1014', '2024-03-12 17:26:50', 'Submitted to Audit'),
(279, '2024onsiteoperation004BRNONOP001_M01_F01_C01', '1020', '2024-03-15 09:02:28', 'comment asssigned-1020'),
(280, '2024onsiteoperation004BRNONOP001_M01_F01_C02', '1020', '2024-03-15 09:02:37', 'comment asssigned-1020'),
(281, '2024onsiteoperation004BRNONOP001_M01_F01_C02', '1020', '2024-03-15 09:02:37', 'comment asssigned-1020'),
(282, '2024onsiteoperation004BRNONOP001_M01_F02_C01', '1020', '2024-03-15 09:02:49', 'comment asssigned-1021'),
(283, '2024onsiteoperation004BRNONOP001_M04_F01_C01', '1020', '2024-03-15 09:02:59', 'comment asssigned-1021'),
(284, '2024onsiteoperation004BRNONOP001_M04_F02_C01', '1020', '2024-03-15 09:03:07', 'comment asssigned-1028'),
(285, '2024offsiteoperation003_M01_F01_C01', '1016', '2024-03-15 17:04:30', 'comment asssigned-1016'),
(286, '2024offsiteoperation003_M01_F01_C02', '1016', '2024-03-15 17:04:39', 'comment asssigned-1016'),
(287, '2024offsiteoperation003_M01_F01_C03', '1016', '2024-03-15 17:04:47', 'comment asssigned-1017'),
(288, '2024offsiteoperation003_M01_F02_C01', '1016', '2024-03-15 17:04:56', 'comment asssigned-1017'),
(289, '2024offsiteoperation003_M01_F02_C02', '1016', '2024-03-15 17:05:04', 'comment asssigned-1024'),
(290, '2024offsiteoperation003_M01_F01_C02', '1016', '2024-03-15 17:06:52', 'Adding Reply'),
(291, '2024offsiteoperation003_M01_F01_C02', '1016', '2024-03-15 17:06:57', 'Reply submitted for review'),
(292, '2024offsiteoperation003_M01_F01_C01', '1016', '2024-03-15 17:09:26', 'Adding Reply'),
(293, '2024offsiteoperation003_M01_F01_C01', '1016', '2024-03-15 17:09:31', 'Reply submitted for review'),
(294, '2024offsiteoperation003_M01_F01_C03', '1017', '2024-03-15 17:12:01', 'Adding Reply'),
(295, '2024offsiteoperation003_M01_F01_C03', '1017', '2024-03-15 17:12:06', 'Reply submitted for review'),
(296, '2024offsiteoperation003_M01_F02_C01', '1017', '2024-03-15 17:15:13', 'Adding Reply'),
(297, '2024offsiteoperation003_M01_F02_C01', '1017', '2024-03-15 17:15:18', 'Reply submitted for review'),
(298, '2024offsiteoperation003_M01_F02_C02', '1024', '2024-03-15 17:17:32', 'Adding Reply'),
(299, '2024offsiteoperation003_M01_F02_C02', '1024', '2024-03-15 17:17:36', 'Reply submitted for review'),
(300, '2024offsiteoperation003_M01_F01_C01', '1016', '2024-03-15 17:18:09', 'Accepted management reply'),
(301, '2024offsiteoperation003_M01_F01_C01', '1016', '2024-03-15 17:18:13', 'Submitted to Audit'),
(302, '2024offsiteoperation003_M01_F01_C02', '1016', '2024-03-15 17:18:23', 'Accepted management reply'),
(303, '2024offsiteoperation003_M01_F01_C02', '1016', '2024-03-15 17:18:27', 'Submitted to Audit'),
(304, '2024offsiteoperation003_M01_F01_C03', '1016', '2024-03-15 17:18:36', 'Accepted management reply'),
(305, '2024offsiteoperation003_M01_F01_C03', '1016', '2024-03-15 17:18:41', 'Submitted to Audit'),
(306, '2024offsiteoperation003_M01_F02_C01', '1016', '2024-03-15 17:18:52', 'Accepted management reply'),
(307, '2024offsiteoperation003_M01_F02_C01', '1016', '2024-03-15 17:18:56', 'Submitted to Audit'),
(308, '2024offsiteoperation003_M01_F02_C02', '1016', '2024-03-15 17:19:08', 'Accepted management reply'),
(309, '2024offsiteoperation003_M01_F02_C02', '1016', '2024-03-15 17:19:12', 'Submitted to Audit');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment_id` varchar(100) NOT NULL,
  `auditid` varchar(50) NOT NULL,
  `checkingitem_id` varchar(50) NOT NULL,
  `samplesize` int(11) NOT NULL,
  `numberofissues` int(11) NOT NULL,
  `sampledetails` text NOT NULL,
  `likelihood` varchar(50) NOT NULL,
  `significance` varchar(50) NOT NULL,
  `overallrisk` varchar(100) NOT NULL,
  `commentheading` text NOT NULL,
  `commentdetails` text NOT NULL,
  `potentialimpact` text NOT NULL,
  `recommendation` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `statusupdate_at` datetime NOT NULL,
  `targetdate` date NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment_id`, `auditid`, `checkingitem_id`, `samplesize`, `numberofissues`, `sampledetails`, `likelihood`, `significance`, `overallrisk`, `commentheading`, `commentdetails`, `potentialimpact`, `recommendation`, `status`, `statusupdate_at`, `targetdate`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, '2023onsiteoperation001_M01_F01_C01', '2023onsiteoperation001', 'BRNONOP001_M01_F01_C01', 3, 3, 'Accounts Details', 'Unlikely', 'Negligble', 'Low', 'Comment Heading 1- upadated again Reject and adjusted - edit by reviewer', '<p>Comment Details upadated</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>asadf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asf</td>\r\n			<td>asf</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'Potential Impact 1', 'Recommendation 1', 'Accepted management reply by audit', '2023-11-25 10:15:42', '2023-10-28', '1011', '2023-10-16 09:03:30', '1019', '2023-11-23 17:12:43'),
(2, '2023onsiteoperation001_M01_F01_C02', '2023onsiteoperation001', 'BRNONOP001_M01_F01_C02', 2, 2, 'Two days of sample checked.', 'Certain', 'Marginal', 'High', 'Comment Heading 2 - edited  after reject', '<p>Comment Heading 2 - edited Reviewed</p>\r\n\r\n<p>Comment Heading 2&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asfd</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>asdfasfd</p>\r\n', 'Potential Impact 2 - edited', 'Recommendation 2', 'Accepted management reply by audit', '2023-11-23 16:07:42', '2023-11-03', '1011', '2023-10-16 09:10:55', '1011', '2023-10-27 06:15:03'),
(3, '2023onsiteoperation001_M01_F02_C01', '2023onsiteoperation001', 'BRNONOP001_M01_F02_C01', 5, 3, 'Voucher bundle selected', 'Liekly', 'Marginal', 'Medium', 'Voucher bundle were not loddged- after manager reply edited edited enter', '<p>Voucher bundle were not loddged</p>\r\n\r\n<p>after manager reply edited&nbsp;&nbsp;edited enter</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>days</td>\r\n			<td>voucher no</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>reviewed</p>\r\n', 'Voucher bundle were not loddged - after manager reply edited - edited enter', 'Voucher bundle were not loddged - after manager reply edited -  edited enter reviewed', 'Accepted management reply by audit', '2023-11-26 08:21:48', '2023-10-20', '1011', '2023-10-16 14:56:48', '1011', '2023-11-25 09:51:05'),
(4, '2023onsiteoperation002_M01_F01_C01', '2023onsiteoperation002', 'BRNONOP001_M01_F01_C01', 3, 2, 'Four days end balances', 'Unlikely', 'Modarate', 'Medium', 'Lapses identified in physical cash balance & E vault register', '<p><strong>1. Teller Box physical balances not agreed with the G/L at the time of inspection</strong></p>\r\n\r\n<p>Physical cash count has carried out on 23rd May 2022 and below variances noted in relation to teller GL 76.</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\" style=\"border-color:black; vertical-align:top; width:184px\">\r\n			<p><strong>Time and date of inspection</strong></p>\r\n			</th>\r\n			<th scope=\"col\" style=\"vertical-align:top; width:175px\">\r\n			<p><strong>Teller GL balance(Rs.) </strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</th>\r\n			<th scope=\"col\" style=\"vertical-align:top; width:163px\">\r\n			<p><strong>Physical Balance(Rs.)</strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</th>\r\n			<th scope=\"col\" style=\"vertical-align:top; width:216px\">\r\n			<p><strong>Variance(Rs.)</strong></p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>23rd May 2022 at 12.15 P.M</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:175px\">\r\n			<p>1,018,438.97</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:163px\">\r\n			<p>434,943.97</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:216px\">\r\n			<p>583,495.00 (Cash Short)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Noted the followings for total cause of incidents of cash variance of Rs.583, 495.00</p>\r\n\r\n<p>Transaction No.0115398 kept in enter stage which was paid to customer (Transaction amount Rs.531, 825.00</p>\r\n\r\n<p><strong>Lapses identified in E vault register</strong></p>\r\n\r\n<p>The captioned issue was noted in six (06) instances, out of twenty (24) E vaults checked</p>\r\n\r\n<table align=\"center\" cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\" style=\"border-color:black; height:40px; vertical-align:top; width:179px\">\r\n			<p><strong>Date</strong></p>\r\n			</th>\r\n			<th scope=\"col\" style=\"height:40px; vertical-align:top; width:490px\">\r\n			<p><strong>Finding</strong></p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:179px\">\r\n			<p>23/05/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:490px\">\r\n			<p>Failed to place cash officer signature for inter teller transaction</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Possible malpractices are caused to fraudulent activity/failed to identify the cash movement\r\nFailed to identify the accountability of the duty/process', 'Branch should adhered to the bank directives and procedures when handling cash operations  ', 'Accepted management reply by audit', '2023-11-26 19:53:47', '2023-10-21', '1011', '2023-10-17 04:29:19', '1019', '2023-10-19 13:57:00'),
(5, '2023onsiteoperation002_M01_F01_C02', '2023onsiteoperation002', 'BRNONOP001_M01_F01_C02', 0, 0, 'number of account is not tallied', 'Unlikely', 'Marginal', 'Low', 'Teller Box physical balances not agreed with the G/L at the time of inspection - edited', '<p>Physical cash count has carried out on 23rd May 2022 and below variances noted in relation to teller GL 76.</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:184px\">\r\n			<p><strong>Time and date of inspection</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:175px\">\r\n			<p><strong>Teller GL balance(Rs.) </strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:163px\">\r\n			<p><strong>Physical Balance(Rs.)</strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:216px\">\r\n			<p><strong>Variance(Rs.)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:184px\">\r\n			<p>23rd May 2022 at 12.15 P.M</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:175px\">\r\n			<p>1,018,438.97</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:163px\">\r\n			<p>434,943.97</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:216px\">\r\n			<p>583,495.00 (Cash Short)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>edited</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:40px; vertical-align:top; width:179px\">\r\n			<p><strong>Date</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:40px; vertical-align:top; width:490px\">\r\n			<p><strong>Finding</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:179px\">\r\n			<p>23/05/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:490px\">\r\n			<p>Failed to place cash officer signature for inter teller transaction</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Possible malpractices are caused to fraudulent activity/failed to identify the cash movement\r\nFailed to identify the accountability of the duty/process - edited', 'Branch should adhered to the bank directives and procedures when handling cash operations  ', 'Accepted management reply by audit', '2023-11-26 19:53:35', '2023-12-08', '1011', '2023-10-17 04:32:08', '1019', '2023-11-26 17:16:21'),
(6, '2023onsiteoperation003_M01_F01_C01', '2023onsiteoperation003', 'BRNONOP001_M01_F01_C01', 10, 6, '10 Accounts checked, 6 accounts issues found', 'Liekly', 'Marginal', 'undefined', 'Mandate did not obtained properly - edited', '<p>Physical cash count has carried out on 23rd May 2022 and below variances noted in relation to teller GL 76. edited</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Time and date of inspection</strong></td>\r\n			<td>\r\n			<p><strong>Teller GL balance(Rs.)</strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Physical Balance(Rs.)</strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</td>\r\n			<td><strong>Variance(Rs.)</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>23rd May 2022 at 12.15 P.M</td>\r\n			<td>1,018,438.97</td>\r\n			<td>434,943.97</td>\r\n			<td>583,495.00 (Cash Short)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Possible malpractices are caused to fraudulent activity/failed to identify the cash movement\r\nFailed to identify the accountability of the duty/process', 'Branch should adhered to the bank directives and procedures when handling cash operations  -edited', 'Entering', '2024-03-12 15:28:41', '2024-03-27', '1011', '2023-10-19 15:15:50', '1011', '2024-03-12 15:28:41'),
(7, '2023onsiteoperation003_M01_F01_C02', '2023onsiteoperation003', 'BRNONOP001_M01_F01_C02', 3, 3, 'Three sample was selected', 'Possible', 'Modarate', 'Medium', 'Teller box is not tallied ', '<p>The captioned issue was noted in six (06) instances, out of twenty (24) E vaults checked</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:40px; vertical-align:top; width:179px\">\r\n			<p><strong>Date</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:40px; vertical-align:top; width:490px\">\r\n			<p><strong>Finding</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:179px\">\r\n			<p>23/05/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:490px\">\r\n			<p>Failed to place cash officer signature for inter teller transaction</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'malpractices are caused to fraudulent activity/failed to identify the cash movement\r\nFailed to identify the accountability of the duty/process', 'Branch should adhered to the bank directives and procedures when handling cash operations  ', 'Entering', '2023-10-25 21:09:40', '2023-10-21', '1011', '2023-10-19 15:48:46', '1019', '2023-10-19 16:17:24'),
(8, '2023onsiteoperation002_M04_F01_C01', '2023onsiteoperation002', 'BRNONOP001_M04_F01_C01', 3, 1, 'Vault Key Properly Handled', 'Unlikely', 'Marginal', 'Low', 'Vault Key Properly Handled - edited -changed by reviewer', '<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:40px; vertical-align:top; width:179px\">\r\n			<p><strong>Date</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:40px; vertical-align:top; width:490px\">\r\n			<p><strong>Finding</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:179px\">\r\n			<p>23/05/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:490px\">\r\n			<p>Failed to place cash officer signature for inter teller transaction</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'fraudulent activity/failed to identify the cash movement\r\nFailed to identify the accountability of the duty/process -changed by reviewer', 'the bank directives and procedures when handling cash operations   -changed by reviewer', 'Accepted management reply by audit', '2023-11-26 19:41:51', '2023-11-22', '1011', '2023-10-19 17:23:19', '1019', '2023-11-26 19:41:43'),
(9, '2023onsiteoperation001_M03_F01_C01', '2023onsiteoperation001', 'BRNONOP001_M03_F01_C01', 3, 1, 'three days check and ILDER does not log for one day- edited after reject -Reviewed. ', 'Possible', 'Marginal', 'Medium', 'The ILDER are not properly lodge- edited after reject -Reviewed.  Management reply edited.1 -edited enterer 2', '<p>The ILDER are not properly lodge&nbsp;edited after reject&nbsp;-Reviewed.&nbsp;&nbsp;</p>\r\n\r\n<p>these thing are not proerply lodged&nbsp;</p>\r\n\r\n<p>Management reply edited.1-&nbsp;edited enterer 1 -&nbsp;again - changed 8.43- agaian</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Date</td>\r\n			<td>Issues</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2022/01/21</td>\r\n			<td>does not properly lodged</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2022/01/22</td>\r\n			<td>does not properly lodged</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Management reply edited.</p>\r\n', 'Internal financial loss can be happened. edited after reject -Reviewed.  -Management reply edited. 1 -edited enterer 2 - again', 'ILDER should be properly loddged-edited after rejected-Reviewed.  -Management reply edited.1 -edited enterer 2', 'Accepted management reply by audit', '2023-11-26 04:33:27', '2023-11-23', '1011', '2023-11-11 14:48:30', '1019', '2023-11-23 15:14:02'),
(10, '2023onsiteoperation002_M01_F02_C01', '2023onsiteoperation002', 'BRNONOP001_M01_F02_C01', 4, 2, '4 days are checked , issues are found for two days', 'Liekly', 'Marginal', 'Medium', 'Voucher bundle are do not properly lodged', '<p>Voucher budnle are need to properly loged&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>date</td>\r\n			<td>issues</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>asd</p>\r\n', 'Voucher bundle can be misplace', 'all voucher bundles are needed lodged properly', 'Accepted management reply by audit', '2023-11-26 19:52:22', '2023-12-22', '1018', '2023-11-26 17:15:12', '1019', '2023-11-26 17:36:33'),
(11, '2023onsiteoperation002_M04_F02_C01', '2023onsiteoperation002', 'BRNONOP001_M04_F02_C01', 12, 4, '12 recorded are checked four issues found', 'Possible', 'Significant', 'High', 'Keys are not passed properly from manager to other  -changed by reviewer', '<p>adf</p>\r\n\r\n<p>asdfa</p>\r\n\r\n<p>sadfasdfasdfasdfasdf&nbsp; asdf sd fasf&nbsp;</p>\r\n\r\n<p>sa&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>date</td>\r\n			<td>issues</td>\r\n		</tr>\r\n		<tr>\r\n			<td>keyas</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>asfd</p>\r\n', 'Keys can be copied by other person -changed by reviewer', 'all the keyas are need to properly maintain -changed by reviewer', 'Accepted management reply by audit', '2023-11-26 19:23:50', '2023-12-20', '1018', '2023-11-26 17:19:31', '1019', '2023-11-26 19:19:34'),
(12, '2023onsiteoperation002_M04_F03_C01', '2023onsiteoperation002', 'BRNONOP001_M04_F03_C01', 9, 5, '9 days are checked and five days are found as issus', 'Liekly', 'Modarate', 'High', 'Cash officer passed the keys without proper records -changed by enterer  - changed by reviewer', '<p>keyas as dasd f</p>\r\n\r\n<p>sadf sadf asd asd fasd fasd fasd asdf asdf sa-changed by enterer&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>sdfasd&nbsp;</p>\r\n\r\n<p>changed by reviewer</p>\r\n\r\n<p>asdfasdf</p>\r\n', 'cash officers keys can be misplaced --changed by enterer  - changed by reviewer\r\n', 'all the keys passing recored should be properly recorded --changed by enterer  -changed by reviewer', 'Accepted management reply by audit', '2023-11-26 19:37:46', '2023-12-28', '1018', '2023-11-26 17:24:23', '1019', '2023-11-26 19:37:37'),
(13, '2023onsiteoperation002_M03_F01_C01', '2023onsiteoperation002', 'BRNONOP001_M03_F01_C01', 12, 8, '12 days are recorded and 8 issues found ', 'Liekly', 'Marginal', 'Medium', 'ILDER issues are not properly recorded. ', '<p>All the ILDER recored are not recoreded&nbsp;</p>\r\n', 'ALL the ILder Record are need to properly be recorded. ', 'All ILDER recorded should be recorded properly. ', 'Accepted management reply by audit', '2023-11-26 19:52:02', '2024-01-18', '1018', '2023-11-26 17:28:51', '', '0000-00-00 00:00:00'),
(14, '2023onsiteoperation002_M03_F01_C02', '2023onsiteoperation002', 'BRNONOP001_M03_F01_C02', 10, 5, '10 ILDER are checked and 5 issues found', 'Liekly', 'Marginal', 'Medium', 'All ILDER should be approved by the manager - changed by enterer -reviewed', '<p>asdfasdf sadf asdf asdf asdf asdf asd -reviewed</p>\r\n\r\n<p>sadfasdf</p>\r\n\r\n<p>asdfas</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>.changed by enterer</p>\r\n\r\n<p>sdfasdf</p>\r\n', 'ILDER can be avalable without proper approval - changed by enterer  -reviewed', 'All the ILDER should be approved by the manager  -changed by enterer', 'Accepted management reply by audit', '2023-11-26 19:49:31', '2023-12-28', '1018', '2023-11-26 17:32:00', '1019', '2023-11-26 19:49:17'),
(15, '2024offsiteoperation001_M01_F01_C01', '2024offsiteoperation001', 'BRNOFFOP001_M01_F01_C01', 6, 2, 'Six Days check and 2 days issues were found - Edited Reviwer1', 'Possible', 'Marginal', 'Medium', 'Branch was unable to recover cash shortage withing stipulated time.  -Edited 1, Edited Reviwer1', '<p>Physical cash count has carried out on 23rd May 2022 and below variances noted in relation to teller GL 76.&nbsp;Edited 1,&nbsp;Edited Reviwer1</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:136px\">\r\n			<p><strong>Time and date of inspection</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:138px\">\r\n			<p><strong>Teller GL balance(Rs.) </strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:130px\">\r\n			<p><strong>Physical Balance(Rs.)</strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:161px\">\r\n			<p><strong>Variance(Rs.)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:136px\">\r\n			<p>23rd May 2022 at 12.15 P.M</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:138px\">\r\n			<p>1,018,438.97</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:130px\">\r\n			<p>434,943.97</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:161px\">\r\n			<p>583,495.00 (Cash Short)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Noted the followings for total cause of incidents of cash variance of Rs.583, 495.00.</p>\r\n\r\n<p>Transaction No.0115398 kept in enter stage which was paid to customer (Transaction amount Rs.531, 825.00</p>\r\n', 'Possible malpractices are caused to fraudulent activity/failed to identify the cash movement \r\nFailed to identify the accountability of the duty/process - Edited 1, Edited Reviwer1', 'Branch should adhered to the bank directives and procedures when handling cash operations  - Edited 1, Edited Reviwer1', 'Accepted management reply by audit', '2024-02-18 16:37:27', '2024-03-21', '1011', '2024-02-18 06:02:09', '1019', '2024-02-18 11:13:31'),
(19, '2024offsiteoperation001_M01_F01_C02', '2024offsiteoperation001', 'BRNOFFOP001_M01_F01_C02', 6, 2, 'Six sample was check and two issues found , -Edited Reviwer1', 'Possible', 'Negligble', 'Low', 'Lapses identified in updating Kalypto System.  edited 1 -Edited Reviwer1, Edited 2,  by enterer2.', '<p>Lapses identified in updating Kalypto System.&nbsp;&nbsp;&nbsp;edited 1&nbsp;-Edited Reviwer1&nbsp;by enterer2.</p>\r\n\r\n<ol>\r\n	<li>Financials not available/ not updated&nbsp;</li>\r\n	<li>Borrower rating not available/not updated.</li>\r\n</ol>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:40px; vertical-align:top; width:143px\">\r\n			<p><strong>Date</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:40px; vertical-align:top; width:392px\">\r\n			<p><strong>Finding</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:143px\">\r\n			<p>23/05/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:392px\">\r\n			<p>Failed to place cash officer signature for inter teller transaction</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Failed to identify the accountability of the duty/process  edited 1 -Edited Reviwer1, by enterer2.', 'Branch should adhered to the bank directives and procedures when handling cash operations     ,edited 1 -Edited Reviwer1, by enterer2.', 'Accepted management reply by audit', '2024-02-18 17:26:29', '2024-04-18', '1011', '2024-02-18 08:02:43', '1011', '2024-02-18 17:10:48'),
(20, '2024offsiteoperation001_M03_F01_C01', '2024offsiteoperation001', 'BRNOFFOP001_M03_F01_C01', 6, 5, '6 sample was checked, and 5 issues were found. -Edited Reviwer1', 'Certain', 'Marginal', 'High', 'Lapses identified in obtaining/maintaining insurance policies. Edited1 -Edited Reviwer1- Rejected Modified1-  After reply Review2', '<p><strong>Lapses identified in obtaining/maintaining insurance policies.&nbsp;Edited1&nbsp;-Edited Reviwer1 -&nbsp;Rejected Modified1&nbsp;&nbsp;After reply Review2</strong></p>\r\n\r\n<ol>\r\n	<li>DTAP document was not available in the credit file</li>\r\n	<li>Original Insurance renewal was not available</li>\r\n	<li>Out Side Agent (OSA) approval was not available</li>\r\n	<li>Inaccurate details available in the insurance policies (eg:- Risk location</li>\r\n</ol>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:136px\">\r\n			<p><strong>Time and date of inspection</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:138px\">\r\n			<p><strong>Teller GL balance(Rs.) </strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:130px\">\r\n			<p><strong>Physical Balance(Rs.)</strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:161px\">\r\n			<p><strong>Variance(Rs.)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:136px\">\r\n			<p>23rd May 2022 at 12.15 P.M</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:138px\">\r\n			<p>1,018,438.97</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:130px\">\r\n			<p>434,943.97</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:161px\">\r\n			<p>583,495.00 (Cash Short)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'Failed to identify the cash movement. Edited1 -Edited Reviwer1 - Rejected Modified1  After reply Review2', 'Branch should adhere to the bank directives and procedures Edited1 -Edited Reviwer1 - Rejected Modified1  After reply Review2', 'Accepted management reply by audit', '2024-02-18 16:36:09', '2024-05-02', '1011', '2024-02-18 08:13:38', '1019', '2024-02-18 16:22:31'),
(21, '2024offsiteoperation001_M02_F01_C02', '2024offsiteoperation001', 'BRNOFFOP001_M02_F01_C02', 3, 2, 'Three sample was checked, and two issues were found. ', 'Likely', 'Significant', 'High', 'Lapses identified related to moratorium facilities.  -Edited Reviwer1', '<p><strong>Lapses identified related to moratorium facilities.&nbsp;-Edited Reviwer1</strong></p>\r\n\r\n<ol>\r\n	<li>Failed to obtain&nbsp; letter of offer , loan agreement, and standing order for the moratorium loans granted for 4th wave</li>\r\n	<li>Failed to update security details in co&nbsp;llateral maintenance register&nbsp;-Edited Reviwer1</li>\r\n</ol>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdfasdf</td>\r\n			<td>asdfasdf</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Out Side Agent (OSA) approval was not available</p>\r\n', 'Failed to identify the cash movement. -Edited Reviwer1', 'bank directives and procedures when handling properly  -Edited Reviwer1', 'Accepted management reply by audit', '2024-02-18 16:37:10', '2024-03-14', '1018', '2024-02-18 08:18:03', '1019', '2024-02-18 11:15:51'),
(23, '2024offsiteoperation001_M03_F01_C02', '2024offsiteoperation001', 'BRNOFFOP001_M03_F01_C02', 7, 1, '7 sample was checked and 1 issues was found  -Edited Reviwer1', 'Unlikely', 'Marginal', 'Low', 'Failed to meet the special conditions imposed in the facility approval. -Edited Reviwer1', '<p><strong>Failed to meet the special conditions imposed in the facility approval.&nbsp;-Edited Reviwer1</strong></p>\r\n\r\n<ol>\r\n	<li>Failed to transfer facilities to recoveries department as per the special condition mentioned in the approval (for rescheduled facilities)</li>\r\n	<li>Original COC pertaining to the approved building plan was not available in the credit file</li>\r\n	<li>CBU not executed since inception or regularly</li>\r\n	<li>Branch manager&rsquo;s inspection report/photograph after final stage was not available in the credit file</li>\r\n	<li>Failed to under lien two month loan installments as per the condition impose in facility approval</li>\r\n</ol>\r\n', 'Possible malpractices are caused to fraudulent activity -Edited Reviwer1', 'Branch should adhered to the bank directives and procedures  -Edited Reviwer1', 'Accepted management reply by audit', '2024-02-18 17:27:33', '2024-05-16', '1018', '2024-02-18 08:28:23', '1019', '2024-02-18 11:16:23'),
(24, '2024offsiteoperation001_M04_F01_C01', '2024offsiteoperation001', 'BRNOFFOP001_M04_F01_C01', 4, 3, '4 checked and 3 issues were found', 'Certain', 'Marginal', 'High', 'Lapses related to Pawning Operations -Edited Reviwer1 - Edite Review', '<p><strong>Lapses related to Pawning Operations&nbsp;-Edited Reviwer1&nbsp;Edite Review</strong></p>\r\n\r\n<ol>\r\n	<li>Karatage indicated in the pawning system not agreed with the audit verification.</li>\r\n	<li>Non-availability of KYC for borrower&rsquo;s outstanding is more than Rs. 500,000/ Availability of incomplete KYCs</li>\r\n	<li>Non availability of required covering approvals for pawning transactions exceeding manager&rsquo;s DA limit</li>\r\n	<li>Article description indicated in the pawning system not agreed with the physical article</li>\r\n	<li>Weight indicated in the pawning system not agreed with the audit verification.</li>\r\n</ol>\r\n', 'Failed to identify the accountability of the duty/process -Edited Reviwer1 Edite Review', 'Adhered to the bank directives and procedures when handling cash operations   -Edited Reviwer1 -Edite Review', 'Accepted management reply by audit', '2024-02-18 16:06:02', '2024-04-24', '1018', '2024-02-18 08:31:34', '1019', '2024-02-18 16:05:34'),
(25, '2024offsiteoperation002_M01_F02_C02', '2024offsiteoperation002', 'BRNOFFOP001_M01_F02_C02', 5, 2, '5 days are checked , issues are found for two days', 'Possible', 'Significant', 'High', 'Non availability of approvals for special rate FD\'s in the DAS', '<p>Captioned issue was noted in following two (02) instances, out of five (05) special rate FDs checked</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\" cellspacing=\"0\" style=\"border-collapse:collapse; width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:41px; width:56px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:178px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:152px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:117px\">\r\n			<p><strong>Special Rate given (%)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:197px\">\r\n			<p><strong>Amount (LKR)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57303952</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>17/10/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>7.0</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>15,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57258604</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>14/09/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>4.5</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>10,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unauthorized special rates resulting financial loss', 'Branch should obtain approvals from relevant authority level for special rate given for FDs and same should be upload to the DAS.', 'Accepted management reply by audit', '2024-03-12 17:28:02', '2024-03-30', '1018', '2024-03-12 16:51:58', '1019', '2024-03-12 17:00:55'),
(26, '2024offsiteoperation002_M04_F01_C01', '2024offsiteoperation002', 'BRNOFFOP001_M04_F01_C01', 6, 2, '6 sample check and 2 issues are found', 'Unlikely', 'Modarate', 'Medium', 'Non availability of standing order mandate in DAS/DMS/RMS -edited1- Rejected edited 1', '<p>Captioned issue was noted in following instance, out of five (05) accounts checked&nbsp;-edited1 -Rejected edited 1</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:690px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:26px; width:59px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:189px\">\r\n			<p><strong>Standing Order Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; vertical-align:top; width:179px\">\r\n			<p><strong>CIF</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:263px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:189px\">\r\n			<p>1445595</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:179px\">\r\n			<p>310709691</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:263px\">\r\n			<p>15/12/2022</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Operational procedure violation & non availability of documentary evidence for future reference  -edited1 -Rejected edited 1', 'Duly completed standing orders should be available in the DAS/DMS/RMS for all accounts open by the branch. -edited1', 'Accepted management reply by audit', '2024-03-12 17:27:47', '2024-03-31', '1011', '2024-03-12 16:45:37', '1011', '2024-03-12 17:24:58'),
(27, '2024offsiteoperation002_M01_F02_C01', '2024offsiteoperation002', 'BRNOFFOP001_M01_F02_C01', 4, 3, '4 sample was checked, and 3 issues were found. ', 'Likely', 'Significant', 'High', 'Lapses related to SMS alerts -edited', '<p>Following issues were noted in five (05) instances, out of five (05) samples checked -edited</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:722px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:26px; width:59px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:179px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:148px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:336px\">\r\n			<p><strong>Findings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52654824</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>12/05/2023</p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:336px\">\r\n			<ol>\r\n				<li>SMS alerts application available in the DAS. However, not activated the facility as at 05/07/2023</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52610691</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>22/02/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>03</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52650368</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>03/05/2023</p>\r\n			</td>\r\n			<td rowspan=\"3\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:336px\">\r\n			<ol>\r\n				<li>Declaration is not available in the DAS</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>04</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52618495</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>08/03/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>05</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>5xxx70043537</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>10/02/2023</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unable to verify the transactions for customer/ Noncompliance with the bank’s guidelines. -edited\r\nCustomer complaints may causes to a reputation loss.', 'Branch should adhere “DIRECTIVE ON PROVIDING REAL TIME NOTIFICATIONS FOR TRANSACTIONS EFFECTED THROUGH ELECTRONIC PAYMENT INSTRUMENTS/MECHANISM SAMPATH BANK PLC Document Reference DIR/2019/0020” - Version 2.0 issued on 15.06.2023', 'Accepted management reply by audit', '2024-03-12 17:23:29', '2024-03-31', '1011', '2024-03-12 16:48:19', '1019', '2024-03-12 17:23:22'),
(28, '2024offsiteoperation002_M02_F01_C01', '2024offsiteoperation002', 'BRNOFFOP001_M02_F01_C01', 3, 2, '3 days are checked , issues are found for two days', 'Unlikely', 'Marginal', 'Low', 'Non availability of approvals for special rate FD\'s in the DAS', '<p>Captioned issue was noted in following two (02) instances, out of five (05) special rate FDs checked</p>\r\n\r\n<table align=\"left\" cellspacing=\"0\" style=\"border-collapse:collapse; width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:41px; width:56px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:178px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:152px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:117px\">\r\n			<p><strong>Special Rate given (%)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:197px\">\r\n			<p><strong>Amount (LKR)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57303952</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>17/10/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>7.0</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>15,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57258604</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>14/09/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>4.5</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>10,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unauthorized special rates resulting financial loss', 'Branch should obtain approvals from relevant authority level for special rate given for FDs and same should be upload to the DAS.', 'Accepted management reply by audit', '2024-03-12 17:21:49', '2024-03-31', '1018', '2024-03-12 16:54:32', '1019', '2024-03-12 17:21:41');
INSERT INTO `comments` (`id`, `comment_id`, `auditid`, `checkingitem_id`, `samplesize`, `numberofissues`, `sampledetails`, `likelihood`, `significance`, `overallrisk`, `commentheading`, `commentdetails`, `potentialimpact`, `recommendation`, `status`, `statusupdate_at`, `targetdate`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(29, '2024offsiteoperation002_M01_F01_C01', '2024offsiteoperation002', 'BRNOFFOP001_M01_F01_C01', 9, 5, '3 days are checked and five days are found as issus', 'Possible', 'Marginal', 'Medium', 'Lapses identified in fund transfer and stop payments  - edited rejected', '<p>Following issues were noted in five (05) instances, out of ten (10) stop payments checked&nbsp;edited rejected</p>\r\n\r\n<table align=\"left\" cellspacing=\"0\" style=\"border-collapse:collapse; width:742px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d8d8d8; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:20px; vertical-align:top; width:47px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d8d8d8; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:20px; vertical-align:top; width:139px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d8d8d8; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:20px; vertical-align:top; width:103px\">\r\n			<p><strong>Date of stop payment</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d8d8d8; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:20px; vertical-align:top; width:85px\">\r\n			<p><strong>CHQ. </strong></p>\r\n\r\n			<p><strong>Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d8d8d8; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:20px; vertical-align:top; width:367px\">\r\n			<p><strong>Findings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:47px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:139px\">\r\n			<p>0xxx10004199</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:103px\">\r\n			<p>19/06/2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:85px\">\r\n			<p>210065</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:367px\">\r\n			<p>Reason of the stop payment was not available</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:47px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:139px\">\r\n			<p>0xxx10007201</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:103px\">\r\n			<p>09/06/2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:85px\">\r\n			<pre>\r\n80</pre>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:367px\">\r\n			<p>Delay in verifying the stop payment<br />\r\n			Customer requested - 08/06/2023 - 10.30 am<br />\r\n			Verified date - 09/06/2023 - 2.21 pm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:47px\">\r\n			<p>03</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:139px\">\r\n			<pre>\r\n0xxx50003683</pre>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:103px\">\r\n			<p>02/05/2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:85px\">\r\n			<pre>\r\n523</pre>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:367px\">\r\n			<p>Reason of the stop payment was not available</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:47px\">\r\n			<p>04</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:139px\">\r\n			<p>0xxx50003683</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:103px\">\r\n			<p>11/04/2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:85px\">\r\n			<pre>\r\n497</pre>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:367px\">\r\n			<ol>\r\n				<li>Reason of the stop payment was not available</li>\r\n				<li>Letter date altered &amp; not confirmed by the customer</li>\r\n				<li>Cheque no. not available in the customer request</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:47px\">\r\n			<p>05</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:139px\">\r\n			<pre>\r\n0xxx10003044 </pre>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:103px\">\r\n			<p>11/04/2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:85px\">\r\n			<pre>\r\n190029</pre>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:367px\">\r\n			<p>Reason of the stop payment was not available</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Difficult to identify the accountability / Procedure violation edited rejected', 'Branch should adhere to the relevant directives of fund transfer and stop payment issued by the bank edited rejected', 'Accepted management reply by audit', '2024-03-12 17:23:51', '2024-04-19', '1018', '2024-03-12 16:57:32', '1019', '2024-03-12 17:02:57'),
(31, '2024onsiteoperation001BRNONOP001_M01_F01_C02', '2024onsiteoperation001', 'BRNONOP001_M01_F01_C02', 5, 1, '5 days are recorded and 2 issues found ', 'Possible', 'Negligble', 'Low', 'Non availability of approvals for special rate FD\'s in the DAS', '<p>Captioned issue was noted in following two (02) instances, out of five (05) special rate FDs checked.</p>\r\n\r\n<table align=\"left\" cellspacing=\"0\" style=\"border-collapse:collapse; width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:41px; width:56px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:178px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:152px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:117px\">\r\n			<p><strong>Special Rate given (%)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:197px\">\r\n			<p><strong>Amount (LKR)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57303952</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>17/10/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>7.0</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>15,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57258604</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>14/09/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>4.5</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>10,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unauthorized special rates resulting financial loss', 'Branch should obtain approvals from relevant authority level for special rate given for FDs and same should be upload to the DAS.', 'Entering', '2024-03-14 13:32:48', '2024-04-18', '1011', '2024-03-14 10:06:00', '1011', '2024-03-14 13:32:48'),
(32, '2024onsiteoperation001BRNONOP001_M01_F01_C01', '2024onsiteoperation001', 'BRNONOP001_M01_F01_C01', 5, 3, '5 recorded are checked 3 issues found', 'Likely', 'Marginal', 'Medium', 'Non availability of standing order mandate in DAS/DMS/RMS', '<p>Captioned issue was noted in following instance, out of five (05) accounts checked</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:690px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:26px; width:59px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:189px\">\r\n			<p><strong>Standing Order Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; vertical-align:top; width:179px\">\r\n			<p><strong>CIF</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:263px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:189px\">\r\n			<p>1445595</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:179px\">\r\n			<p>310709691</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:263px\">\r\n			<p>15/12/2022</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Operational procedure violation & non availability of documentary evidence for future reference', 'Duly completed standing orders should be available in the DAS/DMS/RMS for all accounts open by the branch.', 'Entering', '2024-03-14 10:32:55', '2024-04-18', '1011', '2024-03-14 10:32:55', '', '0000-00-00 00:00:00'),
(33, '2024onsiteoperation001BRNONOP001_M01_F02_C01', '2024onsiteoperation001', 'BRNONOP001_M01_F02_C01', 5, 2, '5 Sample was checked, and two issues were found.  ', 'Likely', 'Modarate', 'High', 'Lapses related to SMS alerts', '<p>Following issues were noted in five (05) instances, out of five (05) samples checked.</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:722px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:26px; width:59px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:179px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:148px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:336px\">\r\n			<p><strong>Findings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52654824</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>12/05/2023</p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:336px\">\r\n			<ol>\r\n				<li>SMS alerts application available in the DAS. However, not activated the facility as at 05/07/2023</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52610691</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>22/02/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>03</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52650368</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>03/05/2023</p>\r\n			</td>\r\n			<td rowspan=\"3\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:336px\">\r\n			<ol>\r\n				<li>Declaration is not available in the DAS</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>04</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52618495</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>08/03/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>05</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>5xxx70043537</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>10/02/2023</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unable to verify the transactions for customer/ Noncompliance with the bank’s guidelines.\r\nCustomer complaints may causes to a reputation loss.', 'Branch should adhere “DIRECTIVE ON PROVIDING REAL TIME NOTIFICATIONS FOR TRANSACTIONS EFFECTED THROUGH ELECTRONIC PAYMENT INSTRUMENTS/MECHANISM SAMPATH BANK PLC Document Reference DIR/2019/0020” - Version 2.0 issued on 15.06.2023', 'Entering', '2024-03-14 10:35:07', '2024-04-17', '1011', '2024-03-14 10:35:07', '', '0000-00-00 00:00:00'),
(34, '2024onsiteoperation001BRNONOP001_M04_F01_C01', '2024onsiteoperation001', 'BRNONOP001_M04_F01_C01', 6, 5, '6 sample check and 5 issues are found', 'Certain', 'Significant', 'High', 'Lapses identified in relation to the issuance of Balance Confirmations', '<p>Branch is not retaining a copy of balance confirmations or not uploaded to DAS which were prepared and issued by the branch 07/07/2023. Captioned issue was noted in three (03) instances out of eight (08) balance confirmation letters checked</p>\r\n\r\n<p>20/06/2023 - 1xxx 5229 8580&nbsp;&nbsp; 09/06/2023 - 1040 5253 6130 &nbsp;20/06/2023 - 1xxx 5229 8580</p>\r\n', 'Procedure violation', 'Branch should properly maintain the balance confirmation file as per the instructions issued by the bank.', 'Entering', '2024-03-14 13:58:24', '2024-04-12', '1018', '2024-03-14 13:58:24', '', '0000-00-00 00:00:00'),
(35, '2024onsiteoperation001BRNONOP001_M04_F02_C01', '2024onsiteoperation001', 'BRNONOP001_M04_F02_C01', 4, 3, '4 days are checked , issues are found for three days', 'Certain', 'Negligble', 'Medium', 'Failed to adhere to the approving conditions imposed by the approving authority.', '<p>One (01) lapse identified out of fifty (50) credit facilities inspected. Details are given below.</p>\r\n\r\n<table align=\"left\" cellspacing=\"0\" style=\"border-collapse:collapse; width:736px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:52px; width:29px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:52px; width:106px\">\r\n			<p><strong>CIF ID</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:52px; width:143px\">\r\n			<p><strong>Account Number</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:52px; width:128px\">\r\n			<p><strong>Date granted</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:52px; width:143px\">\r\n			<p><strong>Amount O/S (LKR Mn.)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:52px; width:190px\">\r\n			<p><strong>Findings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"3\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:32px; vertical-align:top; width:29px\">\r\n			<ol>\r\n				<li>2</li>\r\n			</ol>\r\n			</td>\r\n			<td rowspan=\"3\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:32px; vertical-align:top; width:106px\">\r\n			<p>301381220</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:32px; vertical-align:top; width:143px\">\r\n			<p>xxxx 6500 0397</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:32px; vertical-align:top; width:128px\">\r\n			<p>27-10-2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:32px; vertical-align:top; width:143px\">\r\n			<p>USD 317,400/-</p>\r\n			</td>\r\n			<td rowspan=\"3\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:32px; vertical-align:top; width:190px\">\r\n			<p>Failed to review the interest rate as per the DAS approval 4842483 after 03 months</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:38px; vertical-align:top; width:143px\">\r\n			<p>xxxx 6500 0399</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:38px; vertical-align:top; width:128px\">\r\n			<p>27-10-2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:38px; vertical-align:top; width:143px\">\r\n			<p>USD 678,800/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:24px; vertical-align:top; width:143px\">\r\n			<p>xxxx 6100 0475</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:24px; vertical-align:top; width:128px\">\r\n			<p>30-10-2021</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:24px; vertical-align:top; width:143px\">\r\n			<p>USD 5.476/-</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Not adhering to the approving conditions may leads to increase the legal & credit risk which is finally caused to a financial loss.', 'Branch should ensure that execution of all approving conditions mentioned in the facility approval/ subsequent approvals.', 'Entering', '2024-03-14 14:10:45', '2024-04-10', '1018', '2024-03-14 14:10:45', '', '0000-00-00 00:00:00'),
(36, '2024onsiteoperation002BRNONOP001_M01_F01_C01', '2024onsiteoperation002', 'BRNONOP001_M01_F01_C01', 4, 3, '4 recorded are checked 4issues found', 'Certain', 'Negligble', 'Medium', 'Non availability of standing order mandate in DAS/DMS/RMS', '<p>Captioned issue was noted in following instance, out of five (05) accounts checked.</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:690px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:26px; width:59px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:189px\">\r\n			<p><strong>Standing Order Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; vertical-align:top; width:179px\">\r\n			<p><strong>CIF</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:263px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:189px\">\r\n			<p>1445595</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:179px\">\r\n			<p>310709691</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:263px\">\r\n			<p>15/12/2022</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'Operational procedure violation & non availability of documentary evidence for future reference', 'Duly completed standing orders should be available in the DAS/DMS/RMS for all accounts open by the branch.', 'Reviewing', '2024-03-14 14:27:54', '2024-04-04', '1018', '2024-03-14 14:14:10', '', '0000-00-00 00:00:00'),
(37, '2024onsiteoperation002BRNONOP001_M01_F01_C02', '2024onsiteoperation002', 'BRNONOP001_M01_F01_C02', 7, 2, '7 days check and 2 days issues found', 'Possible', 'Modarate', 'Medium', 'Lapses related to SMS alerts', '<p>Following issues were noted in five (05) instances, out of five (05) samples checked.</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:722px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:26px; width:59px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:179px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:148px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:336px\">\r\n			<p><strong>Findings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52654824</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>12/05/2023</p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:336px\">\r\n			<ol>\r\n				<li>SMS alerts application available in the DAS. However, not activated the facility as at 05/07/2023</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52610691</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>22/02/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>03</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52650368</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>03/05/2023</p>\r\n			</td>\r\n			<td rowspan=\"3\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:336px\">\r\n			<ol>\r\n				<li>Declaration is not available in the DAS</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>04</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52618495</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>08/03/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>05</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>5xxx70043537</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>10/02/2023</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unable to verify the transactions for customer/ Noncompliance with the bank’s guidelines.\r\nCustomer complaints may causes to a reputation loss.', 'Branch should adhere “DIRECTIVE ON PROVIDING REAL TIME NOTIFICATIONS FOR TRANSACTIONS EFFECTED THROUGH ELECTRONIC PAYMENT INSTRUMENTS/MECHANISM SAMPATH BANK PLC Document Reference DIR/2019/0020” - Version 2.0 issued on 15.06.2023', 'Rejected', '2024-03-15 15:28:08', '2024-04-27', '1018', '2024-03-14 14:15:51', '', '0000-00-00 00:00:00'),
(38, '2024onsiteoperation002BRNONOP001_M01_F02_C01', '2024onsiteoperation002', 'BRNONOP001_M01_F02_C01', 10, 3, '10 days are checked, and three issues found ', 'Possible', 'Significant', 'High', 'Non availability of approvals for special rate FD\'s in the DAS', '<p>Captioned issue was noted in following two (02) instances, out of five (05) special rate FDs checked.</p>\r\n\r\n<table align=\"left\" cellspacing=\"0\" style=\"border-collapse:collapse; width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:41px; width:56px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:178px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:152px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:117px\">\r\n			<p><strong>Special Rate given (%)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:197px\">\r\n			<p><strong>Amount (LKR)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57303952</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>17/10/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>7.0</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>15,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57258604</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>14/09/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>4.5</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>10,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unauthorized special rates resulting financial loss', 'Branch should obtain approvals from relevant authority level for special rate given for FDs and same should be upload to the DAS.', 'Submit for review', '2024-03-14 14:24:55', '2024-04-04', '1018', '2024-03-14 14:18:37', '', '0000-00-00 00:00:00'),
(39, '2024onsiteoperation002BRNONOP001_M04_F01_C01', '2024onsiteoperation002', 'BRNONOP001_M04_F01_C01', 4, 3, '4 days check and 3 days issues found', 'Certain', 'Marginal', 'High', 'Lapses identified in relation to the issuance of Balance Confirmations', '<p>Branch is not retaining a copy of balance confirmations or not uploaded to DAS which were prepared and issued by the branch 07/07/2023. Captioned issue was noted in three (03) instances out of eight (08) balance confirmation letters checked.</p>\r\n\r\n<p>Ex:&nbsp;</p>\r\n\r\n<p>20/06/2023 - 1xxx 5229 8580, &nbsp;09/06/2023 - 1040 5253 6130, 20/06/2023 - 1xxx 5229 8580</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Procedure violation', 'Branch should properly maintain the balance confirmation file as per the instructions issued by the bank.', 'Submit for review', '2024-03-14 14:24:48', '2024-04-26', '1011', '2024-03-14 14:21:33', '', '0000-00-00 00:00:00'),
(40, '2024onsiteoperation002BRNONOP001_M04_F02_C01', '2024onsiteoperation002', 'BRNONOP001_M04_F02_C01', 8, 1, '8 Sample was checked, and threeissues were found.  ', 'Unlikely', 'Marginal', 'Low', 'Branch has regularly paid charges for unattended cheques in the inward/transfer zone', '<p>As per our observation, following amounts have been charged from your branch general expense account (9xxx 08560 080)<strong> </strong>during last six (06) months</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:727px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:146px; width:52px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; width:141px\">\r\n			<p><strong>Month</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; vertical-align:top; width:98px\">\r\n			<p><strong>Amounts Charged for unattended cheques (LKR)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; width:123px\">\r\n			<p><strong>Branch General expenditure (LKR)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; vertical-align:bottom; width:132px\">\r\n			<p><strong>Unattended cheque charge as a&nbsp; percentage % of branch general expenses</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; width:182px\">\r\n			<p><strong>Finding</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:28px; width:52px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:141px\">\r\n			<p>April 2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:98px\">\r\n			<p>15,000/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:123px\">\r\n			<p>33,521/50</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:132px\">\r\n			<p>44.7</p>\r\n			</td>\r\n			<td rowspan=\"4\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; vertical-align:top; width:182px\">\r\n			<p>Unattended cheque charge has been contributed <strong>28.39 %</strong> of total general expense as at 31/06/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:28px; width:52px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:141px\">\r\n			<p>May 2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:98px\">\r\n			<p>10,000/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:123px\">\r\n			<p>36,616/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:132px\">\r\n			<p>27.3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:28px; width:52px\">\r\n			<p>03</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:141px\">\r\n			<p>June 2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:98px\">\r\n			<p>2,500/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:123px\">\r\n			<p>26,694.50</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:132px\">\r\n			<p>9.3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:28px; width:193px\">\r\n			<p><strong>Total - Charge</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:98px\">\r\n			<p>27,500/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:123px\">\r\n			<p>96,832/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:132px\">\r\n			<p>28.39</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>II. Relevant tellers failed to mention the purpose of the particular transaction in Finacle when debiting the general expense account in some instances.</strong></p>\r\n\r\n<p><strong>Eg: </strong></p>\r\n\r\n<table align=\"left\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">\r\n			<p>12/01/2023&nbsp; Rs.5,100/-<br />\r\n			23/01/2023&nbsp; Rs.6,637/50<br />\r\n			31/01/2023&nbsp; Rs.5,108/-<br />\r\n			31/01/2023&nbsp; Rs.1,000/-<br />\r\n			01/02/2023&nbsp; Rs.1,380/-</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Adverse effect on branch P & L', 'Branch should attend and mark relevant return remarks for inward cheques before the cut-off time of the Inward zone.', 'Submit for review', '2024-03-14 14:24:41', '2024-04-26', '1011', '2024-03-14 14:24:24', '', '0000-00-00 00:00:00'),
(41, '2024onsiteoperation003BRNONOP001_M01_F01_C01', '2024onsiteoperation003', 'BRNONOP001_M01_F01_C01', 4, 2, '4 number of account check 2 issues found ', 'Likely', 'Negligble', 'Medium', '1.Failed to adhere to the approving conditions imposed by the approving authority', '<p>One (01) lapse identified out of fifty (50) credit facilities inspected. Details are given below.</p>\r\n\r\n<table align=\"left\" cellspacing=\"0\" style=\"border-collapse:collapse; width:736px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:52px; width:29px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:52px; width:106px\">\r\n			<p><strong>CIF ID</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:52px; width:143px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:52px; width:128px\">\r\n			<p><strong>Date granted</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:52px; width:143px\">\r\n			<p><strong>Amount O/S (LKR Mn.)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:52px; width:190px\">\r\n			<p><strong>Findings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"3\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:32px; vertical-align:top; width:29px\">\r\n			<ol>\r\n				<li>2</li>\r\n			</ol>\r\n			</td>\r\n			<td rowspan=\"3\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:32px; vertical-align:top; width:106px\">\r\n			<p>301381220</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:32px; vertical-align:top; width:143px\">\r\n			<p>xxxx 6500 0397</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:32px; vertical-align:top; width:128px\">\r\n			<p>27-10-2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:32px; vertical-align:top; width:143px\">\r\n			<p>USD 317,400/-</p>\r\n			</td>\r\n			<td rowspan=\"3\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:32px; vertical-align:top; width:190px\">\r\n			<p>Failed to review the interest rate as per the DAS approval 4842483 after 03 months</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:38px; vertical-align:top; width:143px\">\r\n			<p>xxxx 6500 0399</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:38px; vertical-align:top; width:128px\">\r\n			<p>27-10-2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:38px; vertical-align:top; width:143px\">\r\n			<p>USD 678,800/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:24px; vertical-align:top; width:143px\">\r\n			<p>xxxx 6100 0475</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:24px; vertical-align:top; width:128px\">\r\n			<p>30-10-2021</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:24px; vertical-align:top; width:143px\">\r\n			<p>USD 5.476/-</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Not adhering to the approving conditions may leads to increase the legal & credit risk which is finally caused to a financial loss.', 'Failed to follow up', 'Forwarded to branch', '2024-03-14 16:32:06', '2024-04-11', '1011', '2024-03-14 14:34:28', '1011', '2024-03-14 15:18:28');
INSERT INTO `comments` (`id`, `comment_id`, `auditid`, `checkingitem_id`, `samplesize`, `numberofissues`, `sampledetails`, `likelihood`, `significance`, `overallrisk`, `commentheading`, `commentdetails`, `potentialimpact`, `recommendation`, `status`, `statusupdate_at`, `targetdate`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(42, '2024onsiteoperation003BRNONOP001_M01_F01_C02', '2024onsiteoperation003', 'BRNONOP001_M01_F01_C02', 4, 3, '4 days are checked , issues are found for two days', 'Certain', 'Modarate', 'High', '2.Failed to close zero balance loan accounts.', '<p>As per the Finacle report generated as at 04-07-2023 following seven (07) records available.</p>\r\n\r\n<table align=\"center\" cellspacing=\"0\" style=\"border-collapse:collapse; width:505px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d8d8d8; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:.25in; width:41px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d8d8d8; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:.25in; vertical-align:top; width:236px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d8d8d8; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:.25in; vertical-align:top; width:228px\">\r\n			<p><strong>Last Loan Recovery/ Payoff&nbsp; Date</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:.25in; width:41px\">\r\n			<ol>\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:236px\">\r\n			<p>xxxx 4800 0096</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:228px\">\r\n			<p>29-05-2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:.25in; width:41px\">\r\n			<ol>\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:236px\">\r\n			<p>xxxx 6400 1627</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:228px\">\r\n			<p>01-07-2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:.25in; width:41px\">\r\n			<ol>\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:236px\">\r\n			<p>xxxx 6500 0283</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:228px\">\r\n			<p>23-11-2022</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:.25in; width:41px\">\r\n			<ol>\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:236px\">\r\n			<p>xxxx 6500 0214</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:228px\">\r\n			<p>26-04-2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:.25in; width:41px\">\r\n			<ol>\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:236px\">\r\n			<p>xxxx 6500 0243</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:228px\">\r\n			<p>25-04-2022</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:.25in; width:41px\">\r\n			<ol>\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:236px\">\r\n			<p>xxxx 6400 1381</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:228px\">\r\n			<p>27-06-2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:.25in; width:41px\">\r\n			<ol>\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:236px\">\r\n			<p>xxxx 6500 0325</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:.25in; width:228px\">\r\n			<p>26-06-2022</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Loans will be reflected in the CRIB report as not settled facility. Any interest arrears will not be settled until the closure of the accounts. This will create an unnecessary burden on the Finacle system.', 'Branch should ensure that loan accounts carrying zero balances are not available in the Finacle system. Further branch should obtain necessary instructions from the recovery department when closing the accounts settled by themselves.', 'Forwarded to branch', '2024-03-14 16:32:27', '2024-04-12', '1011', '2024-03-14 15:00:16', '1011', '2024-03-14 15:18:39'),
(43, '2024onsiteoperation003BRNONOP001_M04_F01_C01', '2024onsiteoperation003', 'BRNONOP001_M04_F01_C01', 15, 10, '15 recorded are checked 10 issues were found', 'Likely', 'Marginal', 'Medium', '3.Non availability of standing order mandate in DAS/DMS/RMS -Edited1 rejected', '<p>Captioned issue was noted in following instance, out of five (05) accounts checked.&nbsp;-Edited1 rejected</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:690px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:26px; width:59px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:189px\">\r\n			<p><strong>Standing Order Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; vertical-align:top; width:179px\">\r\n			<p><strong>CIF</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:263px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:189px\">\r\n			<p>1445595</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:179px\">\r\n			<p>310709691</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:263px\">\r\n			<p>15/12/2022</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Operational procedure violation & non availability of documentary evidence for future reference -Edited1 rejected', 'Duly completed standing orders should be available in the DAS/DMS/RMS for all accounts open by the branch. -Edited1 rejected', 'Forwarded to branch', '2024-03-14 16:33:56', '2024-04-19', '1011', '2024-03-14 15:10:25', '1011', '2024-03-14 16:33:22'),
(44, '2024onsiteoperation003BRNONOP001_M01_F02_C01', '2024onsiteoperation003', 'BRNONOP001_M01_F02_C01', 20, 10, '20 GL entries check and 10 issues found ', 'Unlikely', 'Significant', 'Medium', '4.Lapses related to SMS alerts', '<p>Following issues were noted in five (05) instances, out of five (05) samples checked.</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:722px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:26px; width:59px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:179px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:148px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:336px\">\r\n			<p><strong>Findings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52654824</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>12/05/2023</p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:336px\">\r\n			<ol>\r\n				<li>SMS alerts application available in the DAS. However, not activated the facility as at 05/07/2023</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52610691</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>22/02/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>03</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52650368</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>03/05/2023</p>\r\n			</td>\r\n			<td rowspan=\"3\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:336px\">\r\n			<ol>\r\n				<li>Declaration is not available in the DAS</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>04</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52618495</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>08/03/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>05</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>5xxx70043537</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>10/02/2023</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unable to verify the transactions for customer/ Noncompliance with the bank’s guidelines.\r\nCustomer complaints may causes to a reputation loss.', 'Branch should adhere “DIRECTIVE ON PROVIDING REAL TIME NOTIFICATIONS FOR TRANSACTIONS EFFECTED THROUGH ELECTRONIC PAYMENT INSTRUMENTS/MECHANISM SAMPATH BANK PLC Document Reference DIR/2019/0020” - Version 2.0 issued on 15.06.2023', 'Forwarded to branch', '2024-03-14 16:31:35', '2024-04-18', '1011', '2024-03-14 15:13:14', '', '0000-00-00 00:00:00'),
(45, '2024onsiteoperation003BRNONOP001_M04_F02_C01', '2024onsiteoperation003', 'BRNONOP001_M04_F02_C01', 5, 1, '5 days check and one issues found', 'Possible', 'Negligble', 'Low', '5.Non availability of approvals for special rate FD\'s in the DAS', '<p>Captioned issue was noted in following two (02) instances, out of five (05) special rate FDs checked.</p>\r\n\r\n<table align=\"left\" cellspacing=\"0\" style=\"border-collapse:collapse; width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:41px; width:56px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:178px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:152px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:117px\">\r\n			<p><strong>Special Rate given (%)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:197px\">\r\n			<p><strong>Amount (LKR)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57303952</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>17/10/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>7.0</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>15,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57258604</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>14/09/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>4.5</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>10,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unauthorized special rates resulting financial loss', 'Failed to follow up', 'Forwarded to branch', '2024-03-14 16:31:49', '2024-04-20', '1011', '2024-03-14 15:15:08', '', '0000-00-00 00:00:00'),
(48, '2024onsiteoperation004BRNONOP001_M01_F02_C01', '2024onsiteoperation004', 'BRNONOP001_M01_F02_C01', 6, 2, ' 6 samples of approval were checked and 2 issues ware found.', 'Possible', 'Significant', 'High', '3.	Non availability of approvals for special rate FD\'s in the DAS', '<p>Captioned issue was noted in following two (02) instances, out of five (06) special rate FDs checked.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"left\" cellspacing=\"0\" style=\"border-collapse:collapse; width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:41px; width:56px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:178px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:152px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:117px\">\r\n			<p><strong>Special Rate given (%)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:197px\">\r\n			<p><strong>Amount (LKR)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57303952</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>17/10/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>7.0</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>15,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57258604</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>14/09/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>4.5</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>10,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unauthorized special rates resulting financial loss', 'Branch should obtain approvals from relevant authority level for special rate given for FDs and same should be upload to the DAS.', 'Forwarded to branch', '2024-03-15 08:07:21', '2024-04-20', '1011', '2024-03-15 07:55:50', '', '0000-00-00 00:00:00'),
(49, '2024onsiteoperation004BRNONOP001_M04_F01_C01', '2024onsiteoperation004', 'BRNONOP001_M04_F01_C01', 8, 3, 'Three (3) instances of issues were found out of eight (8) balance confirmation letters checked', 'Possible', 'Modarate', 'Medium', '4.	Lapses identified in relation to the issuance of Balance Confirmations', '<p>Branch is not retaining a copy of balance confirmations or not uploaded to DAS which were prepared and issued by the branch 07/07/2023. Captioned issue was noted in three (03) instances out of eight (08) balance confirmation letters checked.</p>\r\n\r\n<p><strong>Ex</strong>: 20/06/2023 - 1xxx 5229 8580,&nbsp; 09/06/2023 - 1040 5253 6130, 20/06/2023 - 1xxx 5229 8580</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Procedure violation', 'Branch should properly maintain the balance confirmation file as per the instructions issued by the bank.', 'Forwarded to branch', '2024-03-15 08:07:19', '2024-04-27', '1011', '2024-03-15 07:58:03', '', '0000-00-00 00:00:00'),
(50, '2024onsiteoperation004BRNONOP001_M04_F02_C01', '2024onsiteoperation004', 'BRNONOP001_M04_F02_C01', 20, 3, '20 records of sample general expenses checked, and three issues were found.', 'Unlikely', 'Marginal', 'Low', '5.	Branch has regularly paid charges for unattended cheques in the inward/transfer ', '<p>As per our observation, following amounts have been charged from your branch general expense account (9xxx 08560 080)<strong> </strong>during last six (06) months.</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:727px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:146px; width:52px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; width:141px\">\r\n			<p><strong>Month</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; vertical-align:top; width:98px\">\r\n			<p><strong>Amounts Charged for unattended cheques (LKR)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; width:123px\">\r\n			<p><strong>Branch General expenditure (LKR)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; vertical-align:bottom; width:132px\">\r\n			<p><strong>Unattended cheque charge as a&nbsp; percentage % of branch general expenses</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; width:182px\">\r\n			<p><strong>Finding</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:28px; width:52px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:141px\">\r\n			<p>April 2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:98px\">\r\n			<p>15,000/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:123px\">\r\n			<p>33,521/50</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:132px\">\r\n			<p>44.7</p>\r\n			</td>\r\n			<td rowspan=\"4\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; vertical-align:top; width:182px\">\r\n			<p>Unattended cheque charge has been contributed <strong>28.39 %</strong> of total general expense as at 31/06/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:28px; width:52px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:141px\">\r\n			<p>May 2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:98px\">\r\n			<p>10,000/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:123px\">\r\n			<p>36,616/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:132px\">\r\n			<p>27.3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:28px; width:52px\">\r\n			<p>03</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:141px\">\r\n			<p>June 2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:98px\">\r\n			<p>2,500/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:123px\">\r\n			<p>26,694.50</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:132px\">\r\n			<p>9.3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:28px; width:193px\">\r\n			<p><strong>Total - Charge</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:98px\">\r\n			<p>27,500/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:123px\">\r\n			<p>96,832/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:132px\">\r\n			<p>28.39</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Adverse effect on branch P & L', 'Branch should attend and mark relevant return remarks for inward cheques before the cut-off time of the Inward zone.', 'Forwarded to branch', '2024-03-15 08:07:15', '2024-04-12', '1011', '2024-03-15 08:01:35', '', '0000-00-00 00:00:00'),
(51, '2024onsiteoperation004BRNONOP001_M01_F01_C01', '2024onsiteoperation004', 'BRNONOP001_M01_F01_C01', 10, 1, '10 samples were checked, and 1 issues were found', 'Unlikely', 'Modarate', 'Medium', '1.	 Non availability of standing order mandate in DAS/DMS/RMS - Edite 1', '<p>Captioned issue was noted in following instance, out of five (05) accounts checked.&nbsp;Edite 1</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:690px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:26px; width:59px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:189px\">\r\n			<p><strong>Standing Order Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; vertical-align:top; width:179px\">\r\n			<p><strong>CIF</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:263px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:189px\">\r\n			<p>1445595</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:179px\">\r\n			<p>310709691</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:263px\">\r\n			<p>15/12/2022</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Operational procedure violation & non availability of documentary evidence for future reference Edite 1', 'Duly completed standing orders should be available in the DAS/DMS/RMS for all accounts open by the branch. Edite 1', 'Forwarded to branch', '2024-03-15 08:08:43', '2024-04-13', '1018', '2024-03-15 08:04:03', '1011', '2024-03-15 08:07:56'),
(52, '2024onsiteoperation004BRNONOP001_M01_F01_C02', '2024onsiteoperation004', 'BRNONOP001_M01_F01_C02', 10, 5, '10 samples were checked, and 5 issues were found', 'Likely', 'Marginal', 'Medium', '2.	Lapses related to SMS alerts', '<p>Following issues were noted in five (05) instances, out of five (05) samples checked.</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:722px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:26px; width:59px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:179px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:148px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:336px\">\r\n			<p><strong>Findings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52654824</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>12/05/2023</p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:336px\">\r\n			<ol>\r\n				<li>SMS alerts application available in the DAS. However, not activated the facility as at 05/07/2023</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52610691</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>22/02/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>03</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52650368</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>03/05/2023</p>\r\n			</td>\r\n			<td rowspan=\"3\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:336px\">\r\n			<ol>\r\n				<li>Declaration is not available in the DAS</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>04</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52618495</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>08/03/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>05</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>5xxx70043537</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>10/02/2023</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unable to verify the transactions for customer/ Noncompliance with the bank’s guidelines.\r\nCustomer complaints may causes to a reputation loss.', 'Branch should adhere “DIRECTIVE ON PROVIDING REAL TIME NOTIFICATIONS FOR TRANSACTIONS EFFECTED THROUGH ELECTRONIC PAYMENT INSTRUMENTS/MECHANISM SAMPATH BANK PLC Document Reference DIR/2019/0020” - Version 2.0 issued on 15.06.2023', 'Forwarded to branch', '2024-03-15 08:07:25', '2024-04-13', '1018', '2024-03-15 08:05:25', '', '0000-00-00 00:00:00'),
(53, '2024offsiteoperation003_M01_F01_C01', '2024offsiteoperation003', 'BRNOFFOP001_M01_F01_C01', 10, 1, '   10 samples were checked, and 1 issues were found', 'Unlikely', 'Modarate', 'Medium', '1.	 Non availability of standing order mandate in DAS/DMS/RMS', '<p>Captioned issue was noted in following instance, out of five (05) accounts checked.</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:690px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:26px; width:59px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:189px\">\r\n			<p><strong>Standing Order Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; vertical-align:top; width:179px\">\r\n			<p><strong>CIF</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:263px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>1</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:189px\">\r\n			<p>1445595</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:179px\">\r\n			<p>310709691</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:263px\">\r\n			<p>15/12/2022</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Operational procedure violation & non availability of documentary evidence for future reference', 'Duly completed standing orders should be available in the DAS/DMS/RMS for all accounts open by the branch.', 'Recieved from branch', '2024-03-15 17:18:13', '2024-04-26', '1011', '2024-03-15 16:49:17', '', '0000-00-00 00:00:00'),
(54, '2024offsiteoperation003_M01_F01_C02', '2024offsiteoperation003', 'BRNOFFOP001_M01_F01_C02', 10, 5, '10 samples were checked, and 5 issues were found', 'Likely', 'Marginal', 'Medium', '2.	Lapses related to SMS alerts', '<p>Following issues were noted in five (05) instances, out of five (05) samples checked.</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:722px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:26px; width:59px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:179px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:148px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:26px; width:336px\">\r\n			<p><strong>Findings</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52654824</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>12/05/2023</p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:336px\">\r\n			<ol>\r\n				<li>SMS alerts application available in the DAS. However, not activated the facility as at 05/07/2023</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52610691</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>22/02/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>03</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52650368</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>03/05/2023</p>\r\n			</td>\r\n			<td rowspan=\"3\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:336px\">\r\n			<ol>\r\n				<li>Declaration is not available in the DAS</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>04</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>1xxx52618495</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>08/03/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; width:59px\">\r\n			<p>05</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:bottom; width:179px\">\r\n			<p>5xxx70043537</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; width:148px\">\r\n			<p>10/02/2023</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unable to verify the transactions for customer/ Noncompliance with the bank’s guidelines.\r\nCustomer complaints may causes to a reputation loss.', 'Branch should adhere “DIRECTIVE ON PROVIDING REAL TIME NOTIFICATIONS FOR TRANSACTIONS EFFECTED THROUGH ELECTRONIC PAYMENT INSTRUMENTS/MECHANISM SAMPATH BANK PLC Document Reference DIR/2019/0020” - Version 2.0 issued on 15.06.2023', 'Reviewing Management Reply', '2024-03-15 17:20:43', '2024-04-20', '1011', '2024-03-15 16:50:54', '1019', '2024-03-15 17:20:43'),
(55, '2024offsiteoperation003_M01_F01_C03', '2024offsiteoperation003', 'BRNOFFOP001_M01_F01_C03', 6, 2, '6 samples of approval were checked and 2 issues ware found.', 'Possible', 'Significant', 'High', '3.	Non availability of approvals for special rate FD\'s in the DAS', '<p>Captioned issue was noted in following two (02) instances, out of five (06) special rate FDs checked..</p>\r\n\r\n<table align=\"left\" cellspacing=\"0\" style=\"border-collapse:collapse; width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:41px; width:56px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:178px\">\r\n			<p><strong>Account Number</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:152px\">\r\n			<p><strong>Date Opened</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:117px\">\r\n			<p><strong>Special Rate given (%)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:41px; width:197px\">\r\n			<p><strong>Amount (LKR)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57303952</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>17/10/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>7.0</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>15,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; width:56px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:178px\">\r\n			<p>2xxx57258604</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:152px\">\r\n			<p>14/09/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:117px\">\r\n			<p>4.5</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; width:197px\">\r\n			<p>10,000,000/-</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Unauthorized special rates resulting financial loss', 'Branch should obtain approvals from relevant authority level for special rate given for FDs and same should be upload to the DAS.', 'Recieved from branch', '2024-03-15 17:18:41', '2024-03-31', '1011', '2024-03-15 16:52:44', '', '0000-00-00 00:00:00'),
(56, '2024offsiteoperation003_M01_F02_C01', '2024offsiteoperation003', 'BRNOFFOP001_M01_F02_C01', 13, 5, 'Thirty (13) instances of issues were found out of five (5) balance confirmation letters checked.', 'Possible', 'Modarate', 'Medium', '4.	Lapses identified in relation to the issuance of Balance Confirmations', '<p>Branch is not retaining a copy of balance confirmations or not uploaded to DAS which were prepared and issued by the branch 07/07/2023. Captioned issue was noted in three (03) instances out of eight (08) balance confirmation letters checked</p>\r\n\r\n<p><strong>Ex: </strong>20/06/2023 - 1xxx 5229 8580,&nbsp; 09/06/2023 - 1040 5253 6130, 20/06/2023 - 1xxx 5229 8580</p>\r\n', 'Procedure violation', 'Branch should properly maintain the balance confirmation file as per the instructions issued by the bank.', 'Recieved from branch', '2024-03-15 17:18:56', '2024-04-11', '1018', '2024-03-15 16:55:44', '', '0000-00-00 00:00:00');
INSERT INTO `comments` (`id`, `comment_id`, `auditid`, `checkingitem_id`, `samplesize`, `numberofissues`, `sampledetails`, `likelihood`, `significance`, `overallrisk`, `commentheading`, `commentdetails`, `potentialimpact`, `recommendation`, `status`, `statusupdate_at`, `targetdate`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(57, '2024offsiteoperation003_M01_F02_C02', '2024offsiteoperation003', 'BRNOFFOP001_M01_F02_C02', 20, 3, '20 records of sample general expenses checked, and three issues were found.', 'Unlikely', 'Marginal', 'Low', '5.	Branch has regularly paid charges for unattended cheques in the inward/transfer zone ', '<p>As per our observation, following amounts have been charged from your branch general expense account (9xxx 08560 080)<strong> </strong>during last six (06) months</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse; width:727px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:146px; width:52px\">\r\n			<p><strong>#</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; width:141px\">\r\n			<p><strong>Month</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; vertical-align:top; width:98px\">\r\n			<p><strong>Amounts Charged for unattended cheques (LKR)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; width:123px\">\r\n			<p><strong>Branch General expenditure (LKR)</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; vertical-align:bottom; width:132px\">\r\n			<p><strong>Unattended cheque charge as a&nbsp; percentage % of branch general expenses</strong></p>\r\n			</td>\r\n			<td style=\"background-color:#d9d9d9; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:146px; width:182px\">\r\n			<p><strong>Finding</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:28px; width:52px\">\r\n			<p>01</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:141px\">\r\n			<p>April 2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:98px\">\r\n			<p>15,000/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:123px\">\r\n			<p>33,521/50</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:132px\">\r\n			<p>44.7</p>\r\n			</td>\r\n			<td rowspan=\"4\" style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; vertical-align:top; width:182px\">\r\n			<p>Unattended cheque charge has been contributed <strong>28.39 %</strong> of total general expense as at 31/06/2023</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:28px; width:52px\">\r\n			<p>02</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:141px\">\r\n			<p>May 2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:98px\">\r\n			<p>10,000/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:123px\">\r\n			<p>36,616/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:132px\">\r\n			<p>27.3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:28px; width:52px\">\r\n			<p>03</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:141px\">\r\n			<p>June 2023</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:98px\">\r\n			<p>2,500/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:123px\">\r\n			<p>26,694.50</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:132px\">\r\n			<p>9.3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:28px; width:193px\">\r\n			<p><strong>Total - Charge</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:98px\">\r\n			<p>27,500/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:123px\">\r\n			<p>96,832/-</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:28px; width:132px\">\r\n			<p>28.39</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Adverse effect on branch P & L', 'Branch should attend and mark relevant return remarks for inward cheques before the cut-off time of the Inward zone.', 'Comment Rejected to Enterer', '2024-03-15 17:21:53', '2024-04-05', '1018', '2024-03-15 16:57:26', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'USA'),
(2, 'Canada'),
(3, 'Australia'),
(4, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmpNo` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `entityid` varchar(10) NOT NULL,
  `userclass` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpNo`, `FirstName`, `LastName`, `Email`, `Password`, `entityid`, `userclass`, `created_at`, `updated_at`) VALUES
(1000, 'Nawoditha', 'Bandara', 'Nawoditha@gmail.com', '$2y$10$zI2fYjqsMIZfo0nr2LPLPOhRdpEFlKoHSf4/tFzMD109vNI3we/tC', '859', '100', '2023-08-28 10:23:31', '2023-08-28 10:23:31'),
(1008, 'Lasanda', 'Bandaraa', 'lasanda@gmail.com', '$2y$10$KS4xDsKVKfIQIvxQ9vJZheGCFq1JYItgvk7T9tJJnBC5dZgeVualq', '859', '100', '2023-08-31 22:07:28', '2023-08-31 22:07:28'),
(1011, 'Ayesha', 'Tharangani', 'Ayesha@gmail.com', '$2y$10$0PsJ4nDBAJTsFjJCrbc9ieg7yW7ZCoV07Z9XJBNnhIJsPV1EVjvqS', '859', '80', '2023-09-06 11:39:33', '2023-09-06 11:39:33'),
(1012, 'Kavinda', 'Kosala', 'Kavinda@gmail.com', '$2y$10$9IEVXwNGfzfFklQN.GeYPOdYtvrpA4v.f/wyZ3hHCi36b3C1GTeYe', '001', '50', '2023-09-16 17:04:58', '2023-09-16 17:04:58'),
(1013, 'Rukshan', 'Bandara', 'Rukshan@gmail.com', '$2y$10$DOjmS5O7XofiuIohmBiffOrrEdne9e.9nRP4.YhAJEpk57k4yR65a', '001', '40', '2023-09-16 17:06:10', '2023-09-16 17:06:10'),
(1014, 'Rusiru', 'Dhananjaya', 'Rusiru@gmail.com', '$2y$10$ukyoJJWdXk6ucXRkJnFcP.kGbJ7.EnWOjZF7EfKwUsTCXXuxiIJGS', '002', '50', '2023-09-16 17:34:07', '2023-09-16 17:34:07'),
(1015, 'Dulan', 'Dharmadasa', 'Dulan@gmail.com', '$2y$10$pbl8XDKpfNBkBvKrvWevj.v0qrH6T09s43ntHGOJDRIGC3/0ucjqK', '002', '40', '2023-09-16 17:34:52', '2023-09-16 17:34:52'),
(1016, 'Ruwanga', 'Weerasekara', 'Ruwanga@gmail.com', '$2y$10$E569X6Rw7tPHLfzMKbdR2O2rw4eLEJ.s7KQIkt4Ywcvm4t3cwWICu', '003', '50', '2023-09-16 19:51:57', '2023-09-16 19:51:57'),
(1017, 'Sithum', 'Delpagoda', 'Sithum@gmail.com', '$2y$10$4L2LpiB0YOqINO2ZsEM8juDRC1JA249PTMfFvIN0Jn31d4ZFU3SLm', '003', '40', '2023-09-16 19:52:30', '2023-09-16 19:52:30'),
(1018, 'Isuru', 'Chandrasoma', 'Isuru@gmail.com', '$2y$10$qoUtqwHPuqXlVWEMf6wPHuFltHX223yIqqdfwXaODQFyZzAZrOPv.', '859', '80', '2023-09-30 08:01:34', '2023-09-30 08:01:34'),
(1019, 'Hashan', 'Weerawansha', 'Hashan@gmail.com', '$2y$10$uGNYzhvynOLTzwUVR2phBu5nrz0KM.sTQSwoVOPw4YRQcaXo2ELB2', '859', '80', '2023-09-30 08:20:08', '2023-09-30 08:20:08'),
(1020, 'Ruwan', 'Kumara', 'Ruwan@gmail.com', '$2y$10$1fVldmFrGWys14Deaxso/.wNcOENpM8Bz1FH1gS6zSd7TJkQmTuHi', '004', '50', '2023-10-24 22:10:09', '2023-10-24 22:10:09'),
(1021, 'Nishan', 'Weerasinghe', 'Nishan@gmail.com', '$2y$10$gJtNcKcHVaGPqSW7yMBL4unctZsvDL7fEWMkvPDvEFdy99KTEZzzm', '004', '40', '2023-10-24 22:14:43', '2023-10-24 22:14:43'),
(1022, 'Nirmal', 'Chathuranga', 'Nirmal@gmail.com', '$2y$10$I5X9SmZJPhF6MLiccPnEleD.knH2Sa/5DSKiLTf/rw3h/YcfpH0.C', '001', '30', '2023-11-02 21:38:14', '2023-11-02 21:38:14'),
(1023, 'Dhanushka', 'Bandara', 'Dhanushka@gmail.com', '$2y$10$AVyKV.tUPdlq14ZERFSzy.xAeGZv99NsbjNnak36qteDEt93WauTm', '001', '30', '2023-11-02 21:39:47', '2023-11-02 21:39:47'),
(1024, 'Sumudu', 'Lekamge', 'Sumudu@gmail.com', '$2y$10$4QWy4WA18jOQ4rWnW87ZnudMAFEE260nw0wNSxpze590VFsOf8yQG', '003', '30', '2023-11-02 21:41:21', '2023-11-02 21:41:21'),
(1025, 'Shaan', 'Wijewardhana', 'Shaan@gmail.com', '$2y$10$l7GhpQfxhmYZlYursgj8N.hhyynPrcKKS/AETCNwmv3XErXfnew82', '002', '30', '2023-11-26 23:34:28', '2023-11-26 23:34:28'),
(1026, 'Gayan', 'Pathirana', 'Gayan@gmail.com', '$2y$10$8nQUpetZ1LCTqi.2isvI8.VToNuI13YTnk6mV4n5Jz3RpQXgjeGj.', '005', '50', '2024-01-02 11:29:48', '2024-01-02 11:29:48'),
(1027, 'Amila', 'Perera', 'Amila@gmail.com', '$2y$10$4kwwQhel2JOGJi7RIKpKguGQt2LwDAJTgfWeHuhH1Q90kUbpeEVrC', '005', '40', '2024-01-02 11:31:04', '2024-01-02 11:31:04'),
(1028, 'Saman', 'Kumara', 'Saman@gmail.com', '$2y$10$ZcWatd.JfL85GukyRhtMkOxd8Wx235.c.E0lwT5C1.YkSp6mar36O', '004', '30', '2024-03-13 20:08:23', '2024-03-13 20:08:23'),
(1029, 'Chinthaka', 'Jayakodi', 'Chinthaka@gmail.com', '$2y$10$uhAyViA/rpD9YzP26DH78O6mfe3daU4huiSMRohe5AaCRNdkjLMQO', '005', '30', '2024-03-13 20:10:05', '2024-03-13 20:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `entity`
--

CREATE TABLE `entity` (
  `id` int(11) NOT NULL,
  `entityid` char(3) NOT NULL,
  `entitytype` varchar(50) NOT NULL,
  `entityname` varchar(50) NOT NULL,
  `manager` int(5) NOT NULL,
  `assistantmanager` int(5) NOT NULL,
  `created_by` int(5) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entity`
--

INSERT INTO `entity` (`id`, `entityid`, `entitytype`, `entityname`, `manager`, `assistantmanager`, `created_by`, `created_at`) VALUES
(1, '001', 'branch', 'Kandy', 1012, 1013, 1000, '2023-09-16 17:30:12'),
(2, '002', 'branch', 'Nugegoda', 1014, 1015, 1000, '2023-09-16 17:36:08'),
(3, '003', 'branch', 'Gampaha', 1016, 1017, 1000, '2023-09-16 20:55:54'),
(4, '004', 'branch', 'Maharagama', 1020, 1021, 1000, '2023-10-24 22:16:13'),
(5, '005', 'branch', 'Mathara', 1026, 1027, 1000, '2024-01-02 11:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `firstsubcheckarea`
--

CREATE TABLE `firstsubcheckarea` (
  `id` int(11) NOT NULL,
  `firstsubarea_id` varchar(50) NOT NULL,
  `firstsubarea_description` varchar(50) NOT NULL,
  `mainarea_id` varchar(50) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `firstsubcheckarea`
--

INSERT INTO `firstsubcheckarea` (`id`, `firstsubarea_id`, `firstsubarea_description`, `mainarea_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'BRNONOP001_M01_F01', 'Teller Cash operation', 'BRNONOP001_M01', '1000', '', '2023-09-06 21:09:57', '2023-09-06 21:09:57'),
(2, 'BRNONOP001_M01_F02', 'Voucher Bundle Operation Edited', 'BRNONOP001_M01', '1000', '1000', '2023-09-06 21:13:00', '2023-09-06 21:13:00'),
(3, 'BRNONOP001_M04_F01', 'Vault Key Has dual control', 'BRNONOP001_M04', '1000', '', '2023-09-07 12:37:40', '2023-09-07 12:37:40'),
(4, 'BRNONOP001_M04_F02', 'Manager Has only One Key', 'BRNONOP001_M04', '1000', '', '2023-09-07 12:38:34', '2023-09-07 12:38:34'),
(5, 'BRNONOP001_M04_F03', 'Cash Officer key Handling Process- edited', 'BRNONOP001_M04', '1000', '1000', '2023-09-07 12:38:59', '2023-09-07 12:38:59'),
(7, 'BRNONOP001_M03_F01', 'ILDER properly Manage', 'BRNONOP001_M03', '1000', '', '2023-10-08 22:18:08', '2023-10-08 22:18:08'),
(8, 'BRNOFFOP001_M01_F01', 'Cash Operation Teller related', 'BRNOFFOP001_M01', '1000', '', '2024-02-05 16:25:37', '2024-02-05 16:25:37'),
(9, 'BRNOFFOP001_M01_F02', 'Digital Voucher Bundle Register', 'BRNOFFOP001_M01', '1000', '', '2024-02-05 16:25:57', '2024-02-05 16:25:57'),
(10, 'BRNOFFOP001_M01_F03', 'Cash Deposit KIOSK  (CDK) & Virtual Teller Machine', 'BRNOFFOP001_M01', '1000', '', '2024-02-05 16:26:19', '2024-02-05 16:26:19'),
(11, 'BRNOFFOP001_M01_F04', 'Pay Orders related operation', 'BRNOFFOP001_M01', '1000', '', '2024-02-05 16:27:23', '2024-02-05 16:27:23'),
(12, 'BRNOFFOP001_M02_F01', 'Accounts Opening Operation general', 'BRNOFFOP001_M02', '1000', '1000', '2024-02-05 16:42:46', '2024-02-05 16:42:46'),
(13, 'BRNOFFOP001_M02_F02', 'Beneficial Ownership', 'BRNOFFOP001_M02', '1000', '', '2024-02-07 05:58:30', '2024-02-07 05:58:30'),
(14, 'BRNOFFOP001_M02_F03', 'Minor Savings accounts', 'BRNOFFOP001_M02', '1000', '', '2024-02-07 05:59:23', '2024-02-07 05:59:23'),
(15, 'BRNOFFOP001_M03_F01', 'Card Management System', 'BRNOFFOP001_M03', '1000', '', '2024-02-07 10:56:06', '2024-02-07 10:56:06'),
(16, 'BRNOFFOP001_M03_F02', 'SET Card application', 'BRNOFFOP001_M03', '1000', '', '2024-02-07 10:59:19', '2024-02-07 10:59:19'),
(17, 'BRNOFFOP001_M04_F01', 'Standing Orders', 'BRNOFFOP001_M04', '1000', '', '2024-02-07 11:01:34', '2024-02-07 11:01:34'),
(18, 'BRNOFFOP001_M05_F01', 'SMS Alertz', 'BRNOFFOP001_M05', '1000', '', '2024-02-07 11:02:42', '2024-02-07 11:02:42'),
(19, 'BRNOFFOP001_M06_F01', 'Suspense and Miscellaneous GL Accounts', 'BRNOFFOP001_M06', '1000', '', '2024-02-07 11:04:24', '2024-02-07 11:04:24'),
(20, 'BRNOFFOP001_M07_F01', 'Internal Loss event data reporting', 'BRNOFFOP001_M07', '1000', '', '2024-02-07 11:06:15', '2024-02-07 11:06:15'),
(21, 'BRNOFFOP001_M08_F01', 'Branch General', 'BRNOFFOP001_M08', '1000', '', '2024-02-07 11:07:23', '2024-02-07 11:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `maincheckarea`
--

CREATE TABLE `maincheckarea` (
  `id` int(11) NOT NULL,
  `mainarea_id` varchar(50) NOT NULL,
  `mainarea_description` varchar(255) NOT NULL,
  `checklist_id` varchar(255) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maincheckarea`
--

INSERT INTO `maincheckarea` (`id`, `mainarea_id`, `mainarea_description`, `checklist_id`, `created_by`, `updated_by`, `created_at`) VALUES
(1, 'BRNONOP001_M01', 'Cash Operations, Voucher bundling,ATM, CDK, E- Remittances & Retained cards', 'BRNONOP001', '1000', '1000', '2023-09-05 12:42:05'),
(12, 'DPRONOPR002_M01', 'Accounts Opening operation', 'DPRONOPR002', '1000', '1000', '2023-09-06 16:14:46'),
(13, 'DPRONOPR002_M02', 'Teller Cash Operation related Process', 'DPRONOPR002', '1000', '1000', '2023-09-06 16:18:23'),
(14, 'DPRONOPR002_M03', 'Key Handling Process', 'DPRONOPR002', '1000', '1000', '2023-09-06 16:25:00'),
(15, 'BRNONOP001_M04', 'Key handling Process', 'BRNONOP001', '1000', '1000', '2023-09-07 12:36:18'),
(16, 'BRNONOP001_M03', 'ILDER handling Process', 'BRNONOP001', '1000', '1000', '2023-09-07 22:17:33'),
(17, 'BRNOFFOP001_M01', 'Cash Operation', 'BRNOFFOP001', '1000', '', '2024-02-05 16:17:36'),
(18, 'BRNOFFOP001_M02', 'Accounts Opening Operation', 'BRNOFFOP001', '1000', '', '2024-02-05 16:18:15'),
(19, 'BRNOFFOP001_M03', 'Card Management', 'BRNOFFOP001', '1000', '', '2024-02-05 16:21:47'),
(20, 'BRNOFFOP001_M04', 'Standing Orders', 'BRNOFFOP001', '1000', '', '2024-02-05 16:22:26'),
(21, 'BRNOFFOP001_M05', 'SMS Alertz', 'BRNOFFOP001', '1000', '', '2024-02-05 16:23:03'),
(22, 'BRNOFFOP001_M06', ' Suspense and Miscellaneous GL Accounts', 'BRNOFFOP001', '1000', '', '2024-02-05 16:23:33'),
(23, 'BRNOFFOP001_M07', 'Internal Loss event data reporting', 'BRNOFFOP001', '1000', '', '2024-02-05 16:24:08'),
(24, 'BRNOFFOP001_M08', 'Branch General', 'BRNOFFOP001', '1000', '', '2024-02-05 16:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `managementreply`
--

CREATE TABLE `managementreply` (
  `id` int(11) NOT NULL,
  `comment_id` varchar(50) NOT NULL,
  `responseofficer` varchar(50) NOT NULL,
  `assignedDate` date NOT NULL,
  `ManagerResponse` varchar(20) NOT NULL,
  `replyDetails` text NOT NULL,
  `responsiblePerson` varchar(10) NOT NULL,
  `rectification` varchar(50) NOT NULL,
  `rectifiedDate` date NOT NULL,
  `rectificationAction` text NOT NULL,
  `rectificationTargetDate` date NOT NULL,
  `HR` varchar(10) NOT NULL,
  `IT` varchar(10) NOT NULL,
  `Execution` varchar(10) NOT NULL,
  `Process` varchar(10) NOT NULL,
  `Policies` varchar(10) NOT NULL,
  `rootcauseDetails` text NOT NULL,
  `replyStatus` varchar(100) NOT NULL,
  `replystatusupdate_at` date NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `managementreply`
--

INSERT INTO `managementreply` (`id`, `comment_id`, `responseofficer`, `assignedDate`, `ManagerResponse`, `replyDetails`, `responsiblePerson`, `rectification`, `rectifiedDate`, `rectificationAction`, `rectificationTargetDate`, `HR`, `IT`, `Execution`, `Process`, `Policies`, `rootcauseDetails`, `replyStatus`, `replystatusupdate_at`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(3, '2023onsiteoperation001_M01_F02_C01', '1022', '2023-11-11', 'Agree', '<p>Agree with manamgner audit concern</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>adf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>adsf</p>\r\n', '1012', 'Rectified', '2023-11-19', 'This was rectified ', '0000-00-00', '', '', 'Execution', 'Process', '', 'Failed to follow up', 'Accepted management reply by audit', '2023-11-26', '1012', '2023-11-11 16:27:19', '1012', '2023-11-19 04:16:24'),
(4, '2023onsiteoperation001_M01_F01_C02', '1012', '2023-11-09', 'Agree', '<p>Agree with the comment - Save again save after erros corrected</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>asdfas</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asfd</td>\r\n			<td>asfd</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '1013', 'Rectified', '2023-11-06', 'asdfasdfasdf', '0000-00-00', 'HR', '', 'Execution', 'Process', '', 'HR Staff required ,  and process execution issues ededted', 'Accepted management reply by audit', '2023-11-23', '1012', '2023-11-09 10:40:40', '1012', '2023-11-11 16:15:16'),
(5, '2023onsiteoperation001_M01_F01_C01', '1012', '2023-11-23', 'Agree', '<p>agree with comment</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>safsad</td>\r\n			<td>asdfas</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '1022', 'Not Rectified', '0000-00-00', '', '2023-11-24', 'HR', '', '', 'Process', '', 'HR requirment and process issues', 'Accepted management reply by audit', '2023-11-25', '1012', '2023-11-23 17:22:32', '1012', '2023-11-23 17:23:37'),
(6, '2023onsiteoperation001_M03_F01_C01', '1022', '2023-11-11', 'Agree', '<p>ILDER are will proplerly lodged in future&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Date</td>\r\n			<td>Reply</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2023/03/22</td>\r\n			<td>This day we will finalised</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Edited after save</p>\r\n\r\n<p>Assistnat manager edited</p>\r\n', '1022', 'Not Rectified', '0000-00-00', '', '2023-11-18', '', '', 'Execution', 'Process', '', 'Unable to execute edited - assistant manager edited', 'Accepted management reply by audit', '2023-11-26', '1012', '2023-11-11 16:41:04', '1013', '2023-11-11 16:44:57'),
(7, '2023onsiteoperation002_M01_F01_C01', '1025', '2023-11-26', 'Agree', '<p>agree with the audit comment and this will reactify</p>\r\n', '1025', 'Not Rectified', '0000-00-00', '', '2023-11-30', '', '', 'Execution', 'Process', '', 'Failed to follow-up', 'Accepted management reply by audit', '2023-11-26', '1014', '2023-11-26 18:06:14', '1025', '2023-11-26 18:20:02'),
(8, '2023onsiteoperation002_M01_F01_C02', '1025', '2023-11-26', 'Not Agree', '<p>Not agree with&nbsp; the audit comment. this is already has been reactified&nbsp;</p>\r\n', '1025', 'Not Rectified', '0000-00-00', '', '2023-11-30', '', '', 'Execution', '', '', 'Failed to follow-up', 'Accepted management reply by audit', '2023-11-26', '1014', '2023-11-26 18:06:25', '1025', '2023-11-26 18:21:59'),
(9, '2023onsiteoperation002_M01_F02_C01', '1025', '2023-11-26', 'Agree', '<p>Agree with the audit comment . this already reactified&nbsp;</p>\r\n', '1025', 'Rectified', '2023-11-20', 'this already rectified ', '0000-00-00', '', '', 'Execution', '', '', 'this due to failed to follow-up', 'Accepted management reply by audit', '2023-11-26', '1014', '2023-11-26 18:06:44', '1025', '2023-11-26 18:23:17'),
(10, '2023onsiteoperation002_M03_F01_C01', '1015', '2023-11-26', 'Not Agree', '<p>not agree with the management comment - edited by dulan</p>\r\n', '1015', 'Rectified', '2023-11-30', 'this will need to be rectified soon as possible', '0000-00-00', '', '', 'Execution', '', '', 'Failed to properly follow-up', 'Accepted management reply by audit', '2023-11-26', '1015', '2023-11-26 19:50:46', '1015', '2023-11-26 19:51:33'),
(11, '2023onsiteoperation002_M03_F01_C02', '1015', '2023-11-26', 'Agree', '<p>agree with the audit reply this will reactified soon - edited by dulan</p>\r\n', '1015', 'Rectified', '2023-11-21', 'this is already rectified ', '0000-00-00', '', '', 'Execution', '', '', 'failed to followup', 'Accepted management reply by audit', '2023-11-26', '1014', '2023-11-26 19:47:17', '1015', '2023-11-26 19:48:31'),
(12, '2023onsiteoperation002_M04_F01_C01', '1014', '2023-11-26', 'Agree', '<p>Agree with the comment and tis will reactity -edited by manager</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asfd</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '1014', 'Rectified', '2023-11-29', 'This has been rectified', '0000-00-00', 'HR', '', 'Execution', '', '', 'There is not proper Staff to handle this', 'Accepted management reply by audit', '2023-11-26', '1014', '2023-11-26 19:40:29', '1014', '2023-11-26 19:41:14'),
(13, '2023onsiteoperation002_M04_F02_C01', '1015', '2023-11-26', 'Agree', '<p>Agree with the comments&nbsp;</p>\r\n', '1015', 'Rectified', '2023-12-01', 'this has already rectified ', '0000-00-00', '', '', 'Execution', '', '', 'Failed to properly executed', 'Accepted management reply by audit', '2023-11-26', '1014', '2023-11-26 18:07:56', '1014', '2023-11-26 18:37:15'),
(14, '2023onsiteoperation002_M04_F03_C01', '1014', '2023-11-26', 'Not Agree', '<p>this has already reactify no need to report - comment was change manager</p>\r\n', '1014', 'Rectified', '2023-11-20', 'this has already been rectified', '0000-00-00', '', '', 'Execution', '', '', 'Execution problem', 'Accepted management reply by audit', '2023-11-26', '1014', '2023-11-26 19:36:18', '1014', '2023-11-26 19:36:42'),
(15, '2024offsiteoperation001_M01_F01_C01', '1012', '2024-02-18', 'Agree', '<p><strong>1)Not posted since the authorities not in the branch premises.Lien placed for the account.<br />\r\n2)Posted the entry &amp; rectify the variance<br />\r\n3)Erroneously entered the drop safe entry.rectify the error and raised the correct entries</strong></p>\r\n', '1022', 'Rectified', '2024-02-15', 'Already rectified the issues.', '0000-00-00', '', '', 'Execution', '', '', 'Failed to follow up the process.', 'Accepted management reply by audit', '2024-02-18', '1012', '2024-02-18 13:44:30', '1012', '2024-02-18 14:09:16'),
(16, '2024offsiteoperation001_M01_F01_C02', '1012', '2024-02-18', 'Not Agree', '<p>Physical cash count has carried out on 23rd May 2022 and below variances noted in relation to teller GL 76. Edited 1</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:136px\">\r\n			<p><strong>Time and date of inspection</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:138px\">\r\n			<p><strong>Teller GL balance(Rs.) </strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:130px\">\r\n			<p><strong>Physical Balance(Rs.)</strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:161px\">\r\n			<p><strong>Variance(Rs.)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:136px\">\r\n			<p>23rd May 2022 at 12.15 P.M</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:138px\">\r\n			<p>1,018,438.97</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:130px\">\r\n			<p>434,943.97</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:161px\">\r\n			<p>583,495.00 (Cash Short)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Noted the followings for total cause of incidents of cash variance of Rs.583, 495.00</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1022', 'Rectified', '2024-02-14', 'Already rectified the issues. . Edited 1', '0000-00-00', '', '', 'Execution', 'Process', '', 'Failed to execute the process.. . Edited 1', 'Accepted management reply by audit', '2024-02-18', '1012', '2024-02-18 17:23:52', '1012', '2024-02-18 17:24:15'),
(17, '2024offsiteoperation001_M02_F01_C02', '1022', '2024-02-18', 'Agree', '<p><strong>Lapses identified in obtaining source documents to substantiate the additional income details - Edied 1</strong></p>\r\n\r\n<p>I. No proof documents has been obtained for the additional income</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:40px; vertical-align:top; width:143px\">\r\n			<p><strong>Date</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:40px; vertical-align:top; width:392px\">\r\n			<p><strong>Finding</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:143px\">\r\n			<p>23/05/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:392px\">\r\n			<p>Failed to place cash officer signature for inter teller transaction</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1022', 'Rectified', '2024-02-15', 'Already rectified the issued and last week  Edied 1', '0000-00-00', '', '', 'Execution', 'Process', '', 'failed to proper execution-  Edied 1', 'Accepted management reply by audit', '2024-02-18', '1012', '2024-02-18 13:45:03', '1022', '2024-02-18 14:43:44'),
(18, '2024offsiteoperation001_M03_F01_C01', '1022', '2024-02-18', 'Agree', '<p>Physical cash count has carried out on 23rd May 2022 and below variances noted in relation to teller GL 76.</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:136px\">\r\n			<p><strong>Time and date of inspection</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:138px\">\r\n			<p><strong>Teller GL balance(Rs.) </strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:130px\">\r\n			<p><strong>Physical Balance(Rs.)</strong></p>\r\n\r\n			<p><strong>9XXX000000076</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:161px\">\r\n			<p><strong>Variance(Rs.)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:136px\">\r\n			<p>23rd May 2022 at 12.15 P.M</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:138px\">\r\n			<p>1,018,438.97</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:130px\">\r\n			<p>434,943.97</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:161px\">\r\n			<p>583,495.00 (Cash Short)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1023', 'Not Rectified', '0000-00-00', '', '2024-02-29', '', 'IT', '', 'Process', '', 'This is because due to IT issue. ', 'Accepted management reply by audit', '2024-02-18', '1012', '2024-02-18 13:45:13', '1022', '2024-02-18 14:48:00'),
(19, '2024offsiteoperation001_M03_F01_C02', '1012', '2024-02-18', 'Agree', '<p><strong>Lapses identified in leasing process</strong></p>\r\n\r\n<p>I. Duplicate key or either&nbsp; approval for the same&nbsp; not available</p>\r\n\r\n<p>II. Reference date for absolute ownership mentioned in the CR is an earlier date from the dilivery order &nbsp;date.</p>\r\n\r\n<p>III. Manual key obtained instead of smart key</p>\r\n', '1022', 'Rectified', '2024-02-14', 'Already rectified the issues', '0000-00-00', '', 'IT', '', '', '', 'Unable to execute due to IT issues', 'Accepted management reply by audit', '2024-02-18', '1012', '2024-02-18 17:24:03', '1012', '2024-02-18 17:25:28'),
(20, '2024offsiteoperation001_M04_F01_C01', '1012', '2024-02-18', 'Agree', '<p><strong>Transaction done for Diesel purchase &amp; transport cost from the teller box &amp; the transport cost payment not passed at the time.Later posted the entry &amp; correct the entries.</strong></p>\r\n\r\n<p><strong>Followup the correct procedure.complete the lapses within a month.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" style=\"border-collapse:collapse\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:40px; vertical-align:top; width:143px\">\r\n			<p><strong>Date</strong></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; height:40px; vertical-align:top; width:392px\">\r\n			<p><strong>Finding</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:143px\">\r\n			<p>23/05/2022</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:40px; vertical-align:top; width:392px\">\r\n			<p>Failed to place cash officer signature for inter teller transaction</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '1023', 'Not Rectified', '0000-00-00', '', '2024-02-29', '', '', 'Execution', '', '', 'Failed to execute process properly. ', 'Accepted management reply by audit', '2024-02-18', '1012', '2024-02-18 13:52:15', '1012', '2024-02-18 14:14:21'),
(21, '2024offsiteoperation002_M01_F01_C01', '1014', '2024-03-12', 'Not Agree', '<p>To be uploaded to the DAS.- MG reply Edited</p>\r\n', '1025', 'Rectified', '2024-03-04', 'Disagree, Provide Justification/ Reason for Disagreement- MG reply Edited', '0000-00-00', '', 'IT', 'Execution', '', '', 'Failed to monitor and upload -MG reply Edited', 'Accepted management reply by audit', '2024-03-12', '1014', '2024-03-12 17:18:03', '1014', '2024-03-12 17:18:30'),
(22, '2024offsiteoperation002_M01_F02_C01', '1014', '2024-03-12', 'Agree', '<p>Will be rectified</p>\r\n', '1014', 'Not Rectified', '0000-00-00', '', '2024-03-29', '', 'IT', 'Execution', '', '', 'Failed to follow up', 'Accepted management reply by audit', '2024-03-12', '1014', '2024-03-12 17:06:26', '1014', '2024-03-12 17:10:15'),
(23, '2024offsiteoperation002_M01_F02_C02', '1014', '2024-03-12', 'Agree', '<p>Will be adhere to the correct procedure with immediate effect. - Eidted reply</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>sadf</td>\r\n			<td>asdf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>asd</td>\r\n		</tr>\r\n		<tr>\r\n			<td>asdf</td>\r\n			<td>sdf</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '1014', 'Rectified', '2024-03-05', 'already repacified ', '0000-00-00', 'HR', 'IT', 'Execution', '', '', 'Failed to follow up', 'Accepted management reply by audit', '2024-03-12', '1014', '2024-03-12 17:25:43', '1014', '2024-03-12 17:26:03'),
(24, '2024offsiteoperation002_M02_F01_C01', '1015', '2024-03-12', 'Agree', '<p>&nbsp;To be uploaded to the DAS.</p>\r\n', '1015', 'Rectified', '2024-03-04', 'Already Rectified', '0000-00-00', '', '', '', 'Process', '', 'Failed to monitor and upload', 'Accepted management reply by audit', '2024-03-12', '1014', '2024-03-12 17:06:44', '1015', '2024-03-12 17:13:42'),
(25, '2024offsiteoperation002_M04_F01_C01', '1025', '2024-03-12', 'Agree', '<p>To be uploaded to the DAS.</p>\r\n', '1025', 'Rectified', '2024-03-29', 'To be uploaded to the DAS.', '0000-00-00', '', '', '', 'Process', '', 'To be uploaded to the DAS.', 'Accepted management reply by audit', '2024-03-12', '1014', '2024-03-12 17:07:00', '1025', '2024-03-12 17:15:22'),
(26, '2024onsiteoperation004BRNONOP001_M01_F01_C01', '1020', '2024-03-15', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', 'Assigned for reply', '0000-00-00', '1020', '2024-03-15 09:02:28', '', '0000-00-00 00:00:00'),
(27, '2024onsiteoperation004BRNONOP001_M01_F01_C02', '1020', '2024-03-15', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', 'Assigned for reply', '0000-00-00', '1020', '2024-03-15 09:02:37', '', '0000-00-00 00:00:00'),
(28, '2024onsiteoperation004BRNONOP001_M01_F02_C01', '1021', '2024-03-15', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', 'Assigned for reply', '0000-00-00', '1020', '2024-03-15 09:02:49', '', '0000-00-00 00:00:00'),
(29, '2024onsiteoperation004BRNONOP001_M04_F01_C01', '1021', '2024-03-15', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', 'Assigned for reply', '0000-00-00', '1020', '2024-03-15 09:02:59', '', '0000-00-00 00:00:00'),
(30, '2024onsiteoperation004BRNONOP001_M04_F02_C01', '1028', '2024-03-15', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', 'Assigned for reply', '0000-00-00', '1020', '2024-03-15 09:03:07', '', '0000-00-00 00:00:00'),
(31, '2024offsiteoperation003_M01_F01_C01', '1016', '2024-03-15', 'Agree', '<p>We are on the process to uploaded to the DAS.<strong>&nbsp;&nbsp; </strong></p>\r\n', '1017', 'Rectified', '2024-03-11', 'To be uploaded to the DAS.', '2024-03-29', '', '', 'Execution', 'Process', '', 'Failed to monitor and upload', 'Submitted to Audit', '2024-03-15', '1016', '2024-03-15 17:04:30', '1016', '2024-03-15 17:09:26'),
(32, '2024offsiteoperation003_M01_F01_C02', '1016', '2024-03-15', 'Agree', '<p>Will be rectified soon as possible.&nbsp;</p>\r\n', '1017', 'Not Rectified', '0000-00-00', '', '2024-04-13', '', '', 'Execution', '', '', 'Will be rectified soon as possible. ', 'Submitted to Audit', '2024-03-15', '1016', '2024-03-15 17:04:39', '1016', '2024-03-15 17:06:52'),
(33, '2024offsiteoperation003_M01_F01_C03', '1017', '2024-03-15', 'Agree', '<p>Will adhere to the correct procedure.</p>\r\n', '1017', 'Rectified', '2024-03-04', 'Will adhere to the correct procedure with immediate effect. ', '0000-00-00', '', '', 'Execution', '', '', 'Failed to follow up', 'Submitted to Audit', '2024-03-15', '1016', '2024-03-15 17:04:47', '1017', '2024-03-15 17:12:01'),
(34, '2024offsiteoperation003_M01_F02_C01', '1017', '2024-03-15', 'Agree', '<p>We Will adhere for the correct process &amp; procedures to take correction actions.&nbsp;</p>\r\n', '1024', 'Rectified', '2024-03-29', 'Will adhere for the correct process & procedures will be followed.', '0000-00-00', '', 'IT', 'Execution', '', '', 'Due to an oversight', 'Submitted to Audit', '2024-03-15', '1016', '2024-03-15 17:04:56', '1017', '2024-03-15 17:15:13'),
(35, '2024offsiteoperation003_M01_F02_C02', '1024', '2024-03-15', 'Agree', '<p>We monitored and follow the correct procedure</p>\r\n', '1024', 'Rectified', '2024-03-03', 'I & II Will be monitored and follow the correct procedure', '0000-00-00', '', '', 'Execution', '', '', 'Adverse effect on branch P & L', 'Submitted to Audit', '2024-03-15', '1016', '2024-03-15 17:05:04', '1024', '2024-03-15 17:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `country_id`, `state_name`) VALUES
(1, 1, 'New York'),
(2, 1, 'Alabama'),
(3, 1, 'California'),
(4, 2, 'Ontario'),
(5, 2, 'British Columbia'),
(6, 3, 'New South Wales'),
(7, 3, 'Queensland'),
(8, 4, 'Kamataka'),
(9, 4, 'Telangana');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` int(255) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, 'Nawoditha', 'Bandara', 'Nawoditha@gmail.com', 0, '2023-08-30 11:56:50', '2023-08-30 11:56:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auditcreation`
--
ALTER TABLE `auditcreation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auditteammember`
--
ALTER TABLE `auditteammember`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auditassignedid` (`auditassignedid`);

--
-- Indexes for table `checkingitem`
--
ALTER TABLE `checkingitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`checkingitem_id`);

--
-- Indexes for table `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `checklist_id` (`checklist_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `commentlog`
--
ALTER TABLE `commentlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentreplylog`
--
ALTER TABLE `commentreplylog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comment_id` (`comment_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpNo`);

--
-- Indexes for table `entity`
--
ALTER TABLE `entity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branchid` (`entityid`);

--
-- Indexes for table `firstsubcheckarea`
--
ALTER TABLE `firstsubcheckarea`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `firstsubarea_id` (`firstsubarea_id`);

--
-- Indexes for table `maincheckarea`
--
ALTER TABLE `maincheckarea`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mainarea_id` (`mainarea_id`);

--
-- Indexes for table `managementreply`
--
ALTER TABLE `managementreply`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comment_id` (`comment_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auditcreation`
--
ALTER TABLE `auditcreation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `auditteammember`
--
ALTER TABLE `auditteammember`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `checkingitem`
--
ALTER TABLE `checkingitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `checklist`
--
ALTER TABLE `checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `commentlog`
--
ALTER TABLE `commentlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `commentreplylog`
--
ALTER TABLE `commentreplylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmpNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1030;

--
-- AUTO_INCREMENT for table `entity`
--
ALTER TABLE `entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `firstsubcheckarea`
--
ALTER TABLE `firstsubcheckarea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `maincheckarea`
--
ALTER TABLE `maincheckarea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `managementreply`
--
ALTER TABLE `managementreply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
