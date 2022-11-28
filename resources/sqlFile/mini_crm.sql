-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 06:12 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '$2y$10$0DEafpgdw8Pea0ZKXh7DCOmQ90l0oVfA7Ik1bg/aiM7CEtcuMZGxW', '2022-11-27 15:07:15', '2022-11-27 15:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `City` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `population` bigint(20) NOT NULL,
  `population_proper` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`City`, `latitude`, `longitude`, `country`, `iso2`, `state`, `capital`, `population`, `population_proper`, `created_at`, `updated_at`) VALUES
('Delhi', 28.66, 77.23, 'India', 'IN', 'Delhi', 'admin', 29617000, 16753235, NULL, NULL),
('Mumbai', 18.9667, 72.8333, 'India', 'IN', 'Mahārāshtra', 'admin', 23355000, 12478447, NULL, NULL),
('Kolkāta', 22.5411, 88.3378, 'India', 'IN', 'West Bengal', 'admin', 17560000, 4496694, NULL, NULL),
('Bangalore', 12.9699, 77.598, 'India', 'IN', 'Karnātaka', 'admin', 13707000, 8443675, NULL, NULL),
('Chennai', 13.0825, 80.275, 'India', 'IN', 'Tamil Nādu', 'admin', 11324000, 6727000, NULL, NULL),
('Hyderābād', 17.3667, 78.4667, 'India', 'IN', 'Telangana', 'admin', 9746000, 6993262, NULL, NULL),
('Pune', 18.5196, 73.8553, 'India', 'IN', 'Mahārāshtra', '', 7764000, 3124458, NULL, NULL),
('Ahmedabad', 23.03, 72.58, 'India', 'IN', 'Gujarāt', 'minor', 7410000, 5570585, NULL, NULL),
('Sūrat', 21.17, 72.83, 'India', 'IN', 'Gujarāt', '', 5807000, 4466826, NULL, NULL),
('Lucknow', 26.847, 80.947, 'India', 'IN', 'Uttar Pradesh', 'admin', 3382000, 3382000, NULL, NULL),
('Jaipur', 26.9167, 75.8667, 'India', 'IN', 'Rājasthān', 'admin', 3073350, 3073350, NULL, NULL),
('Cawnpore', 26.4725, 80.3311, 'India', 'IN', 'Uttar Pradesh', '', 2701324, 2701324, NULL, NULL),
('Mirzāpur', 25.15, 82.58, 'India', 'IN', 'Uttar Pradesh', '', 2496970, 2496970, NULL, NULL),
('Nāgpur', 21.1539, 79.0831, 'India', 'IN', 'Mahārāshtra', '', 2405665, 2405665, NULL, NULL),
('Ghāziābād', 28.6667, 77.4167, 'India', 'IN', 'Uttar Pradesh', '', 2381452, 2381452, NULL, NULL),
('Indore', 22.7206, 75.8472, 'India', 'IN', 'Madhya Pradesh', '', 2201927, 2201927, NULL, NULL),
('Vadodara', 22.3, 73.2, 'India', 'IN', 'Gujarāt', '', 2065771, 2065771, NULL, NULL),
('Vishākhapatnam', 17.7333, 83.3167, 'India', 'IN', 'Andhra Pradesh', '', 2035922, 2035922, NULL, NULL),
('Bhopāl', 23.25, 77.4167, 'India', 'IN', 'Madhya Pradesh', 'admin', 1883381, 1883381, NULL, NULL),
('Chinchvad', 18.6278, 73.8131, 'India', 'IN', 'Mahārāshtra', '', 1729320, 1729320, NULL, NULL),
('Patna', 25.61, 85.1414, 'India', 'IN', 'Bihār', 'admin', 1684222, 1684222, NULL, NULL),
('Ludhiāna', 30.9083, 75.8486, 'India', 'IN', 'Punjab', '', 1649000, 1545368, NULL, NULL),
('Āgra', 27.18, 78.02, 'India', 'IN', 'Uttar Pradesh', '', 1585705, 1585705, NULL, NULL),
('Kalyān', 19.2502, 73.1602, 'India', 'IN', 'Mahārāshtra', '', 1576614, 1576614, NULL, NULL),
('Madurai', 9.9197, 78.1194, 'India', 'IN', 'Tamil Nādu', 'minor', 1561129, 1561129, NULL, NULL),
('Jamshedpur', 22.8, 86.1833, 'India', 'IN', 'Jharkhand', '', 1558000, 1558000, NULL, NULL),
('Nāsik', 20, 73.7833, 'India', 'IN', 'Mahārāshtra', '', 1486053, 1486053, NULL, NULL),
('Farīdābād', 28.4333, 77.3167, 'India', 'IN', 'Haryāna', '', 1394000, 1394000, NULL, NULL),
('Aurangābād', 19.88, 75.32, 'India', 'IN', 'Mahārāshtra', '', 1371330, 1371330, NULL, NULL),
('Rājkot', 22.2969, 70.7984, 'India', 'IN', 'Gujarāt', '', 1335397, 1335397, NULL, NULL),
('Meerut', 28.99, 77.7, 'India', 'IN', 'Uttar Pradesh', '', 1305429, 1305429, NULL, NULL),
('Jabalpur', 23.1667, 79.9333, 'India', 'IN', 'Madhya Pradesh', '', 1267564, 1267564, NULL, NULL),
('Thāne', 19.18, 72.9633, 'India', 'IN', 'Mahārāshtra', '', 1261517, 1261517, NULL, NULL),
('Dhanbād', 23.7928, 86.435, 'India', 'IN', 'Jharkhand', '', 1246000, 219636, NULL, NULL),
('Allahābād', 25.455, 81.84, 'India', 'IN', 'Uttar Pradesh', '', 1201000, 1073438, NULL, NULL),
('Vārānasi', 25.3189, 83.0128, 'India', 'IN', 'Uttar Pradesh', '', 1198491, 1198491, NULL, NULL),
('Srīnagar', 34.0911, 74.8061, 'India', 'IN', 'Jammu and Kashmīr', 'admin', 1180570, 1180570, NULL, NULL),
('Amritsar', 31.6167, 74.85, 'India', 'IN', 'Punjab', '', 1132383, 1132383, NULL, NULL),
('Alīgarh', 27.88, 78.08, 'India', 'IN', 'Uttar Pradesh', '', 1131160, 1131160, NULL, NULL),
('Bhiwandi', 19.3, 73.0667, 'India', 'IN', 'Mahārāshtra', '', 1125898, 1125898, NULL, NULL),
('Gwalior', 26.215, 78.1931, 'India', 'IN', 'Madhya Pradesh', '', 1101981, 1101981, NULL, NULL),
('Bhilai', 21.2167, 81.4333, 'India', 'IN', 'Chhattīsgarh', '', 1097000, 1097000, NULL, NULL),
('Hāora', 22.59, 88.31, 'India', 'IN', 'West Bengal', '', 1077075, 1077075, NULL, NULL),
('Rānchi', 23.3556, 85.3347, 'India', 'IN', 'Jharkhand', 'admin', 1073440, 1073440, NULL, NULL),
('Bezwāda', 16.5167, 80.6167, 'India', 'IN', 'Andhra Pradesh', '', 1048240, 1048240, NULL, NULL),
('Chandīgarh', 30.7353, 76.7911, 'India', 'IN', 'Chandīgarh', 'admin', 1026459, 1026459, NULL, NULL),
('Mysore', 12.3086, 76.6531, 'India', 'IN', 'Karnātaka', '', 1014227, 1014227, NULL, NULL),
('Raipur', 21.2379, 81.6337, 'India', 'IN', 'Chhattīsgarh', 'admin', 1010087, 1010087, NULL, NULL),
('Kota', 25.18, 75.83, 'India', 'IN', 'Rājasthān', '', 1001694, 1001694, NULL, NULL),
('Bareilly', 28.364, 79.415, 'India', 'IN', 'Uttar Pradesh', '', 1000000, 1000000, NULL, NULL),
('Jodhpur', 26.2918, 73.0168, 'India', 'IN', 'Rājasthān', '', 995000, 921476, NULL, NULL),
('Coimbatore', 11, 76.9667, 'India', 'IN', 'Tamil Nādu', '', 959823, 959823, NULL, NULL),
('Dispur', 26.15, 91.77, 'India', 'IN', 'Assam', 'admin', 957352, 957352, NULL, NULL),
('Guwāhāti', 26.1667, 91.7667, 'India', 'IN', 'Assam', '', 957352, 957352, NULL, NULL),
('Solāpur', 17.6833, 75.9167, 'India', 'IN', 'Mahārāshtra', '', 951558, 951558, NULL, NULL),
('Trichinopoly', 10.8269, 78.6928, 'India', 'IN', 'Tamil Nādu', '', 916857, 916857, NULL, NULL),
('Hubli', 15.36, 75.125, 'India', 'IN', 'Karnātaka', '', 890000, 792804, NULL, NULL),
('Jalandhar', 31.3256, 75.5792, 'India', 'IN', 'Punjab', '', 873725, 873725, NULL, NULL),
('Bhubaneshwar', 20.2644, 85.8281, 'India', 'IN', 'Odisha', 'admin', 837737, 837737, NULL, NULL),
('Bhayandar', 19.3, 72.85, 'India', 'IN', 'Mahārāshtra', '', 814655, 814655, NULL, NULL),
('Morādābād', 28.8418, 78.7568, 'India', 'IN', 'Uttar Pradesh', '', 787000, 721139, NULL, NULL),
('Kolhāpur', 16.7, 74.2333, 'India', 'IN', 'Mahārāshtra', '', 750000, 561841, NULL, NULL),
('Thiruvananthapuram', 8.5, 76.8997, 'India', 'IN', 'Kerala', 'admin', 743691, 743691, NULL, NULL),
('Sahāranpur', 29.964, 77.546, 'India', 'IN', 'Uttar Pradesh', '', 705478, 705478, NULL, NULL),
('Warangal', 17.9756, 79.6011, 'India', 'IN', 'Telangana', '', 704570, 704570, NULL, NULL),
('Salem', 11.65, 78.1667, 'India', 'IN', 'Tamil Nādu', '', 693236, 693236, NULL, NULL),
('Mālegaon', 20.55, 74.55, 'India', 'IN', 'Mahārāshtra', '', 690844, 435362, NULL, NULL),
('Kochi', 9.9667, 76.2833, 'India', 'IN', 'Kerala', '', 677381, 677381, NULL, NULL),
('Gorakhpur', 26.7611, 83.3667, 'India', 'IN', 'Uttar Pradesh', '', 673446, 673446, NULL, NULL),
('Shimoga', 13.9304, 75.56, 'India', 'IN', 'Karnātaka', '', 654055, 319550, NULL, NULL),
('Tiruppūr', 11.1075, 77.3398, 'India', 'IN', 'Tamil Nādu', '', 650000, 444543, NULL, NULL),
('Guntūr', 16.3, 80.45, 'India', 'IN', 'Andhra Pradesh', '', 647508, 647508, NULL, NULL),
('Raurkela', 22.2492, 84.8828, 'India', 'IN', 'Odisha', '', 625831, 483629, NULL, NULL),
('Mangalore', 12.8703, 74.8806, 'India', 'IN', 'Karnātaka', '', 623841, 623841, NULL, NULL),
('Nānded', 19.15, 77.3333, 'India', 'IN', 'Mahārāshtra', '', 623708, 550564, NULL, NULL),
('Cuttack', 20.45, 85.8667, 'India', 'IN', 'Odisha', '', 606007, 606007, NULL, NULL),
('Chānda', 19.95, 79.3, 'India', 'IN', 'Mahārāshtra', '', 595118, 328351, NULL, NULL),
('Dehra Dūn', 30.318, 78.029, 'India', 'IN', 'Uttarakhand', 'admin', 578420, 578420, NULL, NULL),
('Durgāpur', 23.55, 87.32, 'India', 'IN', 'West Bengal', '', 566517, 566517, NULL, NULL),
('Āsansol', 23.6833, 86.9667, 'India', 'IN', 'West Bengal', '', 563917, 563917, NULL, NULL),
('Bhāvnagar', 21.765, 72.1369, 'India', 'IN', 'Gujarāt', '', 554978, 464602, NULL, NULL),
('Amrāvati', 20.9333, 77.75, 'India', 'IN', 'Mahārāshtra', '', 549370, 549370, NULL, NULL),
('Nellore', 14.4333, 79.9667, 'India', 'IN', 'Andhra Pradesh', '', 547621, 547621, NULL, NULL),
('Ajmer', 26.468, 74.639, 'India', 'IN', 'Rājasthān', '', 542321, 542321, NULL, NULL),
('Tinnevelly', 8.7289, 77.7081, 'India', 'IN', 'Tamil Nādu', '', 542200, 435844, NULL, NULL),
('Bīkaner', 28.0181, 73.3169, 'India', 'IN', 'Rājasthān', '', 529007, 529007, NULL, NULL),
('Agartala', 23.8333, 91.2667, 'India', 'IN', 'Tripura', 'admin', 522613, 522613, NULL, NULL),
('Ujjain', 23.1828, 75.7772, 'India', 'IN', 'Madhya Pradesh', '', 515215, 515215, NULL, NULL),
('Jhānsi', 25.4486, 78.5696, 'India', 'IN', 'Uttar Pradesh', '', 507000, 507000, NULL, NULL),
('Ulhāsnagar', 19.2167, 73.15, 'India', 'IN', 'Mahārāshtra', '', 506098, 506098, NULL, NULL),
('Davangere', 14.4667, 75.9167, 'India', 'IN', 'Karnātaka', '', 503564, 435125, NULL, NULL),
('Jammu', 32.7333, 74.85, 'India', 'IN', 'Jammu and Kashmīr', '', 502197, 502197, NULL, NULL),
('Belgaum', 15.8667, 74.5, 'India', 'IN', 'Karnātaka', '', 488157, 488157, NULL, NULL),
('Gulbarga', 17.3333, 76.8333, 'India', 'IN', 'Karnātaka', '', 483615, 481478, NULL, NULL),
('Jāmnagar', 22.47, 70.07, 'India', 'IN', 'Gujarāt', '', 479920, 479920, NULL, NULL),
('Dhūlia', 20.9, 74.7833, 'India', 'IN', 'Mahārāshtra', '', 479073, 366980, NULL, NULL),
('Gaya', 24.75, 85.0167, 'India', 'IN', 'Bihār', '', 474093, 474093, NULL, NULL),
('Jalgaon', 21.0167, 75.5667, 'India', 'IN', 'Mahārāshtra', '', 460468, 460468, NULL, NULL),
('Kurnool', 15.8222, 78.035, 'India', 'IN', 'Andhra Pradesh', '', 457633, 457633, NULL, NULL),
('Udaipur', 24.5833, 73.6833, 'India', 'IN', 'Rājasthān', '', 451100, 451100, NULL, NULL),
('Bellary', 15.15, 76.915, 'India', 'IN', 'Karnātaka', '', 445388, 336681, NULL, NULL),
('Sāngli', 16.8667, 74.5667, 'India', 'IN', 'Mahārāshtra', '', 436639, 436639, NULL, NULL),
('Tuticorin', 8.7833, 78.1333, 'India', 'IN', 'Tamil Nādu', '', 436094, 436094, NULL, NULL),
('Calicut', 11.25, 75.7667, 'India', 'IN', 'Kerala', 'minor', 431560, 431560, NULL, NULL),
('Akola', 20.7333, 77, 'India', 'IN', 'Mahārāshtra', '', 425817, 425817, NULL, NULL),
('Bhāgalpur', 25.25, 87.0167, 'India', 'IN', 'Bihār', '', 410210, 410210, NULL, NULL),
('Sīkar', 27.6119, 75.1397, 'India', 'IN', 'Rājasthān', '', 400000, 237579, NULL, NULL),
('Tumkūr', 13.33, 77.1, 'India', 'IN', 'Karnātaka', '', 399606, 307359, NULL, NULL),
('Quilon', 8.8853, 76.5864, 'India', 'IN', 'Kerala', '', 397419, 397419, NULL, NULL),
('Muzaffarnagar', 29.4708, 77.7033, 'India', 'IN', 'Uttar Pradesh', '', 392451, 392451, NULL, NULL),
('Bhīlwāra', 25.35, 74.6333, 'India', 'IN', 'Rājasthān', '', 389911, 326431, NULL, NULL),
('Nizāmābād', 18.6704, 78.1, 'India', 'IN', 'Telangana', '', 388505, 305438, NULL, NULL),
('Bhātpāra', 22.8667, 88.4167, 'India', 'IN', 'West Bengal', '', 386019, 386019, NULL, NULL),
('Kākināda', 16.9333, 82.2167, 'India', 'IN', 'Andhra Pradesh', '', 384182, 384182, NULL, NULL),
('Parbhani', 19.2704, 76.76, 'India', 'IN', 'Mahārāshtra', '', 378326, 289629, NULL, NULL),
('Pānihāti', 22.69, 88.37, 'India', 'IN', 'West Bengal', '', 377347, 377347, NULL, NULL),
('Lātūr', 18.4004, 76.57, 'India', 'IN', 'Mahārāshtra', '', 374394, 348967, NULL, NULL),
('Rohtak', 28.9, 76.5667, 'India', 'IN', 'Haryāna', '', 374292, 374292, NULL, NULL),
('Rājapālaiyam', 9.4204, 77.58, 'India', 'IN', 'Tamil Nādu', '', 369991, 307959, NULL, NULL),
('Ahmadnagar', 19.0833, 74.7333, 'India', 'IN', 'Mahārāshtra', '', 350859, 350859, NULL, NULL),
('Cuddapah', 14.4667, 78.8167, 'India', 'IN', 'Andhra Pradesh', '', 344893, 344893, NULL, NULL),
('Rājahmundry', 16.9833, 81.7833, 'India', 'IN', 'Andhra Pradesh', '', 341831, 341831, NULL, NULL),
('Alwar', 27.5667, 76.6167, 'India', 'IN', 'Rājasthān', '', 341422, 341422, NULL, NULL),
('Muzaffarpur', 26.12, 85.3833, 'India', 'IN', 'Bihār', '', 333200, 333200, NULL, NULL),
('Bilāspur', 22.15, 82.0167, 'India', 'IN', 'Chhattīsgarh', '', 331030, 331030, NULL, NULL),
('Mathura', 27.4833, 77.6833, 'India', 'IN', 'Uttar Pradesh', '', 330511, 330511, NULL, NULL),
('Kāmārhāti', 22.67, 88.37, 'India', 'IN', 'West Bengal', '', 330211, 330211, NULL, NULL),
('Patiāla', 30.3204, 76.385, 'India', 'IN', 'Punjab', '', 329224, 329224, NULL, NULL),
('Saugor', 23.8504, 78.75, 'India', 'IN', 'Madhya Pradesh', '', 328240, 247333, NULL, NULL),
('Bijāpur', 16.8244, 75.7154, 'India', 'IN', 'Karnātaka', '', 327427, 327427, NULL, NULL),
('Brahmapur', 19.32, 84.8, 'India', 'IN', 'Odisha', '', 324726, 324726, NULL, NULL),
('Shāhjānpur', 27.8804, 79.905, 'India', 'IN', 'Uttar Pradesh', '', 320434, 320434, NULL, NULL),
('Trichūr', 10.52, 76.21, 'India', 'IN', 'Kerala', '', 315596, 315596, NULL, NULL),
('Barddhamān', 23.25, 87.85, 'India', 'IN', 'West Bengal', '', 314265, 314265, NULL, NULL),
('Kulti', 23.73, 86.85, 'India', 'IN', 'West Bengal', '', 313809, 313809, NULL, NULL),
('Sambalpur', 21.4704, 83.9701, 'India', 'IN', 'Odisha', '', 310852, 162887, NULL, NULL),
('Purnea', 25.78, 87.47, 'India', 'IN', 'Bihār', '', 310817, 310817, NULL, NULL),
('Hisar', 29.1489, 75.7367, 'India', 'IN', 'Haryāna', '', 307024, 307024, NULL, NULL),
('Fīrozābād', 27.15, 78.3949, 'India', 'IN', 'Uttar Pradesh', '', 306409, 306409, NULL, NULL),
('Bīdar', 17.9229, 77.5175, 'India', 'IN', 'Karnātaka', '', 300136, 204071, NULL, NULL),
('Rāmpur', 28.8154, 79.025, 'India', 'IN', 'Uttar Pradesh', '', 296418, 296418, NULL, NULL),
('Shiliguri', 26.72, 88.42, 'India', 'IN', 'West Bengal', '', 294546, 294546, NULL, NULL),
('Bāli', 22.65, 88.34, 'India', 'IN', 'West Bengal', '', 293373, 293373, NULL, NULL),
('Pānīpat', 29.4004, 76.97, 'India', 'IN', 'Haryāna', '', 292808, 292808, NULL, NULL),
('Karīmnagar', 18.4333, 79.15, 'India', 'IN', 'Telangana', '', 289821, 289821, NULL, NULL),
('Bhuj', 23.2504, 69.81, 'India', 'IN', 'Gujarāt', '', 289429, 289429, NULL, NULL),
('Ichalkaranji', 16.7, 74.47, 'India', 'IN', 'Mahārāshtra', '', 287570, 287570, NULL, NULL),
('Tirupati', 13.65, 79.42, 'India', 'IN', 'Andhra Pradesh', '', 287482, 287482, NULL, NULL),
('Hospet', 15.2667, 76.4, 'India', 'IN', 'Karnātaka', '', 286007, 197846, NULL, NULL),
('Āīzawl', 23.7104, 92.72, 'India', 'IN', 'Mizoram', 'admin', 283021, 265331, NULL, NULL),
('Sannai', 24.16, 80.83, 'India', 'IN', 'Madhya Pradesh', '', 283004, 283004, NULL, NULL),
('Bārāsat', 22.2333, 88.45, 'India', 'IN', 'West Bengal', '', 278435, 278435, NULL, NULL),
('Ratlām', 23.3167, 75.0667, 'India', 'IN', 'Madhya Pradesh', '', 273892, 273892, NULL, NULL),
('Handwāra', 34.4, 74.28, 'India', 'IN', 'Jammu and Kashmīr', '', 269311, 269311, NULL, NULL),
('Drug', 21.19, 81.28, 'India', 'IN', 'Chhattīsgarh', '', 268806, 268806, NULL, NULL),
('Imphāl', 24.82, 93.95, 'India', 'IN', 'Manipur', 'admin', 268243, 268243, NULL, NULL),
('Anantapur', 14.6833, 77.6, 'India', 'IN', 'Andhra Pradesh', '', 267161, 267161, NULL, NULL),
('Etāwah', 26.7855, 79.015, 'India', 'IN', 'Uttar Pradesh', '', 257448, 257448, NULL, NULL),
('Rāichūr', 16.2104, 77.355, 'India', 'IN', 'Karnātaka', '', 255240, 225962, NULL, NULL),
('Ongole', 15.5, 80.05, 'India', 'IN', 'Andhra Pradesh', '', 252739, 252739, NULL, NULL),
('Bharatpur', 27.2172, 77.49, 'India', 'IN', 'Rājasthān', '', 252342, 252342, NULL, NULL),
('Begusarai', 25.42, 86.13, 'India', 'IN', 'Bihār', '', 252008, 252008, NULL, NULL),
('Sonīpat', 28.9958, 77.0114, 'India', 'IN', 'Haryāna', '', 250521, 250521, NULL, NULL),
('Rāmgundam', 18.8, 79.45, 'India', 'IN', 'Telangana', '', 242979, 242979, NULL, NULL),
('Hāpur', 28.7437, 77.7628, 'India', 'IN', 'Uttar Pradesh', '', 242920, 242920, NULL, NULL),
('Uluberiya', 22.47, 88.11, 'India', 'IN', 'West Bengal', '', 235345, 235345, NULL, NULL),
('Porbandar', 21.6425, 69.6047, 'India', 'IN', 'Gujarāt', '', 234684, 138872, NULL, NULL),
('Pāli', 25.7725, 73.3233, 'India', 'IN', 'Rājasthān', '', 229956, 229956, NULL, NULL),
('Vizianagaram', 18.1167, 83.4167, 'India', 'IN', 'Andhra Pradesh', '', 228720, 228720, NULL, NULL),
('Puducherry', 11.93, 79.83, 'India', 'IN', 'Puducherry', 'admin', 227411, 227411, NULL, NULL),
('Karnāl', 29.6804, 76.97, 'India', 'IN', 'Haryāna', '', 225049, 225049, NULL, NULL),
('Nāgercoil', 8.17, 77.43, 'India', 'IN', 'Tamil Nādu', '', 224329, 213858, NULL, NULL),
('Tanjore', 10.8, 79.15, 'India', 'IN', 'Tamil Nādu', '', 222943, 222943, NULL, NULL),
('Sambhal', 28.58, 78.55, 'India', 'IN', 'Uttar Pradesh', '', 220813, 220813, NULL, NULL),
('Naihāti', 22.9, 88.42, 'India', 'IN', 'West Bengal', '', 217900, 217900, NULL, NULL),
('Secunderābād', 17.45, 78.5, 'India', 'IN', 'Telangana', '', 213698, 213698, NULL, NULL),
('Kharagpur', 22.3302, 87.3237, 'India', 'IN', 'West Bengal', '', 207604, 207604, NULL, NULL),
('Dindigul', 10.35, 77.95, 'India', 'IN', 'Tamil Nādu', '', 207327, 207327, NULL, NULL),
('Shimla', 31.1033, 77.1722, 'India', 'IN', 'Himāchal Pradesh', 'admin', 206575, 206575, NULL, NULL),
('Ingrāj Bāzār', 25, 88.15, 'India', 'IN', 'West Bengal', '', 205521, 205521, NULL, NULL),
('Ellore', 16.7, 81.1, 'India', 'IN', 'Andhra Pradesh', '', 203780, 203780, NULL, NULL),
('Puri', 19.8, 85.8167, 'India', 'IN', 'Odisha', '', 201026, 201026, NULL, NULL),
('Haldia', 22.0257, 88.0583, 'India', 'IN', 'West Bengal', '', 200762, 200762, NULL, NULL),
('Nandyāl', 15.48, 78.48, 'India', 'IN', 'Andhra Pradesh', '', 200516, 200516, NULL, NULL),
('Bulandshahr', 28.4104, 77.8484, 'India', 'IN', 'Uttar Pradesh', '', 198612, 198612, NULL, NULL),
('Chakradharpur', 22.7, 85.63, 'India', 'IN', 'Jharkhand', '', 197953, 197953, NULL, NULL),
('Bhiwāni', 28.7833, 76.1333, 'India', 'IN', 'Haryāna', '', 197662, 197662, NULL, NULL),
('Gurgaon', 28.45, 77.02, 'India', 'IN', 'Haryāna', '', 197340, 197340, NULL, NULL),
('Burhānpur', 21.3004, 76.13, 'India', 'IN', 'Madhya Pradesh', '', 197233, 197233, NULL, NULL),
('Khammam', 17.25, 80.15, 'India', 'IN', 'Telangana', '', 196283, 196283, NULL, NULL),
('Madhyamgram', 22.7, 88.45, 'India', 'IN', 'West Bengal', '', 196127, 196127, NULL, NULL),
('Ghāndīnagar', 23.22, 72.68, 'India', 'IN', 'Gujarāt', 'admin', 195891, 195891, NULL, NULL),
('Baharampur', 24.1, 88.25, 'India', 'IN', 'West Bengal', '', 195223, 195223, NULL, NULL),
('Mahbūbnagar', 16.7333, 77.9833, 'India', 'IN', 'Telangana', '', 190400, 190400, NULL, NULL),
('Mahesāna', 23.6, 72.4, 'India', 'IN', 'Gujarāt', '', 184991, 184991, NULL, NULL),
('Ādoni', 15.63, 77.28, 'India', 'IN', 'Andhra Pradesh', '', 184625, 184625, NULL, NULL),
('Rāiganj', 25.6167, 88.1167, 'India', 'IN', 'West Bengal', '', 183612, 183612, NULL, NULL),
('Bhusāval', 21.02, 75.83, 'India', 'IN', 'Mahārāshtra', '', 183001, 172366, NULL, NULL),
('Bahraigh', 27.6204, 81.6699, 'India', 'IN', 'Uttar Pradesh', '', 182218, 182218, NULL, NULL),
('Shrīrāmpur', 22.75, 88.34, 'India', 'IN', 'West Bengal', '', 181842, 181842, NULL, NULL),
('Tonk', 26.1505, 75.79, 'India', 'IN', 'Rājasthān', '', 181734, 151331, NULL, NULL),
('Sirsa', 29.4904, 75.03, 'India', 'IN', 'Haryāna', '', 181639, 160129, NULL, NULL),
('Jaunpur', 25.7333, 82.6833, 'India', 'IN', 'Uttar Pradesh', '', 180362, 180362, NULL, NULL),
('Madanapalle', 13.55, 78.5, 'India', 'IN', 'Andhra Pradesh', '', 180180, 180180, NULL, NULL),
('Hugli', 22.9, 88.39, 'India', 'IN', 'West Bengal', '', 179931, 179931, NULL, NULL),
('Vellore', 12.9204, 79.15, 'India', 'IN', 'Tamil Nādu', '', 177081, 177081, NULL, NULL),
('Alleppey', 9.5004, 76.37, 'India', 'IN', 'Kerala', '', 176783, 176783, NULL, NULL),
('Cuddalore', 11.75, 79.75, 'India', 'IN', 'Tamil Nādu', '', 173676, 173676, NULL, NULL),
('Deo', 24.6561, 84.4356, 'India', 'IN', 'Bihār', '', 173216, 173216, NULL, NULL),
('Chīrāla', 15.82, 80.35, 'India', 'IN', 'Andhra Pradesh', '', 172826, 172826, NULL, NULL),
('Machilīpatnam', 16.1667, 81.1333, 'India', 'IN', 'Andhra Pradesh', '', 169892, 169892, NULL, NULL),
('Medinīpur', 22.4333, 87.3333, 'India', 'IN', 'West Bengal', '', 169264, 169264, NULL, NULL),
('Bāramūla', 34.2, 74.34, 'India', 'IN', 'Jammu and Kashmīr', '', 167986, 167986, NULL, NULL),
('Chandannagar', 22.8667, 88.3833, 'India', 'IN', 'West Bengal', '', 166867, 166867, NULL, NULL),
('Fatehpur', 25.8804, 80.8, 'India', 'IN', 'Uttar Pradesh', '', 166480, 166480, NULL, NULL),
('Udipi', 13.3322, 74.7461, 'India', 'IN', 'Karnātaka', '', 165401, 165401, NULL, NULL),
('Tenāli', 16.243, 80.64, 'India', 'IN', 'Andhra Pradesh', '', 164937, 164937, NULL, NULL),
('Sitalpur', 27.63, 80.75, 'India', 'IN', 'Uttar Pradesh', '', 164435, 164435, NULL, NULL),
('Conjeeveram', 12.8308, 79.7078, 'India', 'IN', 'Tamil Nādu', '', 164384, 164384, NULL, NULL),
('Proddatūr', 14.73, 78.55, 'India', 'IN', 'Andhra Pradesh', '', 163970, 163970, NULL, NULL),
('Navsāri', 20.8504, 72.92, 'India', 'IN', 'Gujarāt', '', 163000, 163000, NULL, NULL),
('Godhra', 22.7755, 73.6149, 'India', 'IN', 'Gujarāt', '', 161925, 161925, NULL, NULL),
('Budaun', 28.03, 79.09, 'India', 'IN', 'Uttar Pradesh', '', 161555, 161555, NULL, NULL),
('Chittoor', 13.2, 79.1167, 'India', 'IN', 'Andhra Pradesh', '', 160722, 160722, NULL, NULL),
('Harīpur', 31.52, 75.98, 'India', 'IN', 'Punjab', '', 158142, 158142, NULL, NULL),
('Saharsa', 25.88, 86.6, 'India', 'IN', 'Bihār', '', 156540, 156540, NULL, NULL),
('Vidisha', 23.5239, 77.8061, 'India', 'IN', 'Madhya Pradesh', '', 155959, 155959, NULL, NULL),
('Pathānkot', 32.2689, 75.6497, 'India', 'IN', 'Punjab', '', 155909, 155909, NULL, NULL),
('Nalgonda', 17.05, 79.27, 'India', 'IN', 'Telangana', '', 154326, 154326, NULL, NULL),
('Dibrugarh', 27.4833, 95, 'India', 'IN', 'Assam', '', 154019, 154019, NULL, NULL),
('Bālurghāt', 25.2167, 88.7667, 'India', 'IN', 'West Bengal', '', 153279, 153279, NULL, NULL),
('Krishnanagar', 23.4, 88.5, 'India', 'IN', 'West Bengal', '', 153062, 153062, NULL, NULL),
('Fyzābād', 26.7504, 82.17, 'India', 'IN', 'Uttar Pradesh', '', 153047, 153047, NULL, NULL),
('Silchar', 24.7904, 92.79, 'India', 'IN', 'Assam', '', 152393, 152393, NULL, NULL),
('Shāntipur', 23.25, 88.43, 'India', 'IN', 'West Bengal', '', 151777, 151777, NULL, NULL),
('Hindupur', 13.83, 77.49, 'India', 'IN', 'Andhra Pradesh', '', 151677, 151677, NULL, NULL),
('Erode', 11.3408, 77.7172, 'India', 'IN', 'Tamil Nādu', '', 151184, 151184, NULL, NULL),
('Jāmuria', 23.7, 87.08, 'India', 'IN', 'West Bengal', '', 149220, 149220, NULL, NULL),
('Hābra', 22.83, 88.63, 'India', 'IN', 'West Bengal', '', 147221, 147221, NULL, NULL),
('Ambāla', 30.3786, 76.7725, 'India', 'IN', 'Haryāna', '', 146787, 146787, NULL, NULL),
('Mauli', 30.7194, 76.7181, 'India', 'IN', 'Punjab', '', 146213, 146213, NULL, NULL),
('Kolār', 13.1333, 78.1333, 'India', 'IN', 'Karnātaka', '', 144625, 126441, NULL, NULL),
('Shillong', 25.5744, 91.8789, 'India', 'IN', 'Meghālaya', 'admin', 143229, 143229, NULL, NULL),
('Bhīmavaram', 16.5333, 81.5333, 'India', 'IN', 'Andhra Pradesh', '', 142184, 142184, NULL, NULL),
('New Delhi', 28.7, 77.2, 'India', 'IN', 'Delhi', 'primary', 142004, 142004, NULL, NULL),
('Mandsaur', 24.03, 75.08, 'India', 'IN', 'Madhya Pradesh', '', 141667, 141667, NULL, NULL),
('Kumbakonam', 10.9805, 79.4, 'India', 'IN', 'Tamil Nādu', '', 139264, 139264, NULL, NULL),
('Tiruvannāmalai', 12.2604, 79.1, 'India', 'IN', 'Tamil Nādu', '', 138243, 138243, NULL, NULL),
('Chicacole', 18.3, 83.9, 'India', 'IN', 'Andhra Pradesh', '', 137944, 137944, NULL, NULL),
('Bānkura', 23.25, 87.0667, 'India', 'IN', 'West Bengal', '', 137386, 137386, NULL, NULL),
('Mandya', 12.5242, 76.8958, 'India', 'IN', 'Karnātaka', '', 137358, 137358, NULL, NULL),
('Hassan', 13.005, 76.1028, 'India', 'IN', 'Karnātaka', '', 133436, 133436, NULL, NULL),
('Yavatmāl', 20.4, 78.1333, 'India', 'IN', 'Mahārāshtra', '', 132000, 132000, NULL, NULL),
('Pīlibhīt', 28.64, 79.81, 'India', 'IN', 'Uttar Pradesh', '', 131008, 131008, NULL, NULL),
('Pālghāt', 10.7792, 76.6547, 'India', 'IN', 'Kerala', '', 130955, 130955, NULL, NULL),
('Abohar', 30.1204, 74.29, 'India', 'IN', 'Punjab', '', 130603, 130603, NULL, NULL),
('Pālakollu', 16.5333, 81.7333, 'India', 'IN', 'Andhra Pradesh', '', 129717, 129717, NULL, NULL),
('Kānchrāpāra', 22.97, 88.43, 'India', 'IN', 'West Bengal', '', 129576, 129576, NULL, NULL),
('Port Blair', 11.6667, 92.75, 'India', 'IN', 'Andaman and Nicobar Islands', 'admin', 127562, 112050, NULL, NULL),
('Alīpur Duār', 26.4837, 89.5667, 'India', 'IN', 'West Bengal', '', 127342, 127342, NULL, NULL),
('Hāthras', 27.6, 78.05, 'India', 'IN', 'Uttar Pradesh', '', 126882, 126882, NULL, NULL),
('Guntakal', 15.17, 77.38, 'India', 'IN', 'Andhra Pradesh', '', 126270, 126270, NULL, NULL),
('Navadwīp', 23.4088, 88.3657, 'India', 'IN', 'West Bengal', '', 125543, 125543, NULL, NULL),
('Basīrhat', 22.6572, 88.8942, 'India', 'IN', 'West Bengal', '', 125254, 125254, NULL, NULL),
('Hālīsahar', 22.95, 88.42, 'India', 'IN', 'West Bengal', '', 124939, 124939, NULL, NULL),
('Rishra', 22.71, 88.35, 'India', 'IN', 'West Bengal', '', 124577, 124577, NULL, NULL),
('Dharmavaram', 14.4142, 77.715, 'India', 'IN', 'Andhra Pradesh', '', 121874, 121874, NULL, NULL),
('Baidyabāti', 22.79, 88.32, 'India', 'IN', 'West Bengal', '', 121110, 121110, NULL, NULL),
('Darjeeling', 27.0417, 88.2631, 'India', 'IN', 'West Bengal', '', 118805, 118805, NULL, NULL),
('Sopur', 34.3, 74.47, 'India', 'IN', 'Jammu and Kashmīr', '', 118608, 118608, NULL, NULL),
('Gudivāda', 16.43, 80.99, 'India', 'IN', 'Andhra Pradesh', '', 118167, 118167, NULL, NULL),
('Adilābād', 19.6667, 78.5333, 'India', 'IN', 'Telangana', '', 117167, 117167, NULL, NULL),
('Titāgarh', 22.74, 88.37, 'India', 'IN', 'West Bengal', '', 116541, 116541, NULL, NULL),
('Chittaurgarh', 24.8894, 74.6239, 'India', 'IN', 'Rājasthān', '', 116406, 116406, NULL, NULL),
('Narasaraopet', 16.236, 80.054, 'India', 'IN', 'Andhra Pradesh', '', 116250, 116250, NULL, NULL),
('Dam Dam', 22.62, 88.42, 'India', 'IN', 'West Bengal', '', 114786, 114786, NULL, NULL),
('Vālpārai', 10.3204, 76.97, 'India', 'IN', 'Tamil Nādu', '', 114308, 90353, NULL, NULL),
('Osmānābād', 18.1667, 76.05, 'India', 'IN', 'Mahārāshtra', '', 112085, 112085, NULL, NULL),
('Champdani', 22.8, 88.37, 'India', 'IN', 'West Bengal', '', 111251, 111251, NULL, NULL),
('Bangaon', 23.07, 88.82, 'India', 'IN', 'West Bengal', '', 108864, 108864, NULL, NULL),
('Khardah', 22.72, 88.38, 'India', 'IN', 'West Bengal', '', 108496, 108496, NULL, NULL),
('Tādpatri', 14.92, 78.02, 'India', 'IN', 'Andhra Pradesh', '', 108171, 108171, NULL, NULL),
('Jalpāiguri', 26.5167, 88.7333, 'India', 'IN', 'West Bengal', '', 107341, 107341, NULL, NULL),
('Suriāpet', 17.15, 79.6167, 'India', 'IN', 'Telangana', '', 106805, 106805, NULL, NULL),
('Tādepallegūdem', 16.8333, 81.5, 'India', 'IN', 'Andhra Pradesh', '', 104032, 104032, NULL, NULL),
('Bānsbāria', 22.97, 88.4, 'India', 'IN', 'West Bengal', '', 103920, 103920, NULL, NULL),
('Negapatam', 10.7667, 79.8333, 'India', 'IN', 'Tamil Nādu', '', 102905, 102905, NULL, NULL),
('Bhadreswar', 22.82, 88.35, 'India', 'IN', 'West Bengal', '', 101477, 101477, NULL, NULL),
('Chilakalūrupet', 16.0892, 80.1672, 'India', 'IN', 'Andhra Pradesh', '', 101398, 101398, NULL, NULL),
('Kalyani', 22.975, 88.4344, 'India', 'IN', 'West Bengal', '', 100575, 100575, NULL, NULL),
('Gangtok', 27.33, 88.62, 'India', 'IN', 'Sikkim', 'admin', 100286, 100286, NULL, NULL),
('Kohīma', 25.6667, 94.1194, 'India', 'IN', 'Nāgāland', 'admin', 99039, 99039, NULL, NULL),
('Khambhāt', 22.3131, 72.6194, 'India', 'IN', 'Gujarāt', '', 98700, 98700, NULL, NULL),
('Aurangābād', 24.7704, 84.38, 'India', 'IN', 'Bihār', '', 95929, 95929, NULL, NULL),
('Emmiganūr', 15.7333, 77.4833, 'India', 'IN', 'Andhra Pradesh', '', 95149, 95149, NULL, NULL),
('Rāyachoti', 14.05, 78.75, 'India', 'IN', 'Andhra Pradesh', '', 91234, 91234, NULL, NULL),
('Kāvali', 14.9123, 79.9944, 'India', 'IN', 'Andhra Pradesh', '', 90099, 90099, NULL, NULL),
('Mancherāl', 18.8679, 79.4639, 'India', 'IN', 'Telangana', '', 89935, 89935, NULL, NULL),
('Kadiri', 14.12, 78.17, 'India', 'IN', 'Andhra Pradesh', '', 89429, 89429, NULL, NULL),
('Ootacamund', 11.4086, 76.6939, 'India', 'IN', 'Tamil Nādu', '', 88430, 88430, NULL, NULL),
('Anakāpalle', 17.68, 83.02, 'India', 'IN', 'Andhra Pradesh', '', 86519, 86519, NULL, NULL),
('Sirsilla', 18.38, 78.83, 'India', 'IN', 'Telangana', '', 83186, 83186, NULL, NULL),
('Kāmāreddipet', 18.3167, 78.35, 'India', 'IN', 'Telangana', '', 80315, 80315, NULL, NULL),
('Pāloncha', 17.5815, 80.6765, 'India', 'IN', 'Telangana', '', 80199, 80199, NULL, NULL),
('Kottagūdem', 17.55, 80.63, 'India', 'IN', 'Telangana', '', 79819, 79819, NULL, NULL),
('Tanuku', 16.75, 81.7, 'India', 'IN', 'Andhra Pradesh', '', 77962, 77962, NULL, NULL),
('Bodhan', 18.67, 77.9, 'India', 'IN', 'Telangana', '', 77573, 77573, NULL, NULL),
('Karūr', 10.9504, 78.0833, 'India', 'IN', 'Tamil Nādu', '', 76915, 76915, NULL, NULL),
('Mangalagiri', 16.43, 80.55, 'India', 'IN', 'Andhra Pradesh', '', 73613, 73613, NULL, NULL),
('Kairāna', 29.4, 77.2, 'India', 'IN', 'Uttar Pradesh', '', 73046, 73046, NULL, NULL),
('Mārkāpur', 15.735, 79.27, 'India', 'IN', 'Andhra Pradesh', '', 71092, 71092, NULL, NULL),
('Malaut', 30.19, 74.499, 'India', 'IN', 'Punjab', '', 70958, 70958, NULL, NULL),
('Bāpatla', 15.8889, 80.47, 'India', 'IN', 'Andhra Pradesh', '', 70777, 70777, NULL, NULL),
('Badvel', 14.75, 79.05, 'India', 'IN', 'Andhra Pradesh', '', 70626, 70626, NULL, NULL),
('Jorhāt', 26.75, 94.2167, 'India', 'IN', 'Assam', '', 69033, 69033, NULL, NULL),
('Koratla', 18.82, 78.72, 'India', 'IN', 'Telangana', '', 66504, 66504, NULL, NULL),
('Pulivendla', 14.4167, 78.2333, 'India', 'IN', 'Andhra Pradesh', '', 65706, 65706, NULL, NULL),
('Jaisalmer', 26.9167, 70.9167, 'India', 'IN', 'Rājasthān', '', 65471, 65471, NULL, NULL),
('Tādepalle', 16.4667, 80.6, 'India', 'IN', 'Andhra Pradesh', '', 64149, 64149, NULL, NULL),
('Armūr', 18.79, 78.29, 'India', 'IN', 'Telangana', '', 64023, 64023, NULL, NULL),
('Jatani', 20.17, 85.7, 'India', 'IN', 'Odisha', '', 63697, 63697, NULL, NULL),
('Gadwāl', 16.23, 77.8, 'India', 'IN', 'Telangana', '', 63177, 63177, NULL, NULL),
('Nagari', 13.33, 79.58, 'India', 'IN', 'Andhra Pradesh', '', 62253, 62253, NULL, NULL),
('Wanparti', 16.361, 78.0627, 'India', 'IN', 'Telangana', '', 60949, 60949, NULL, NULL),
('Ponnūru', 16.0667, 80.5667, 'India', 'IN', 'Andhra Pradesh', '', 59913, 59913, NULL, NULL),
('Vinukonda', 16.05, 79.75, 'India', 'IN', 'Andhra Pradesh', '', 59725, 59725, NULL, NULL),
('Itānagar', 27.1, 93.62, 'India', 'IN', 'Arunāchal Pradesh', 'admin', 59490, 59490, NULL, NULL),
('Tezpur', 26.6338, 92.8, 'India', 'IN', 'Assam', '', 58851, 58851, NULL, NULL),
('Narasapur', 16.4333, 81.6833, 'India', 'IN', 'Andhra Pradesh', '', 58770, 58770, NULL, NULL),
('Kothāpet', 19.3333, 79.4833, 'India', 'IN', 'Telangana', '', 57583, 57583, NULL, NULL),
('Mācherla', 16.48, 79.43, 'India', 'IN', 'Andhra Pradesh', '', 57290, 57290, NULL, NULL),
('Kandukūr', 15.2165, 79.9042, 'India', 'IN', 'Andhra Pradesh', '', 57246, 57246, NULL, NULL),
('Sāmalkot', 17.0531, 82.1695, 'India', 'IN', 'Andhra Pradesh', '', 56864, 56864, NULL, NULL),
('Bobbili', 18.5667, 83.4167, 'India', 'IN', 'Andhra Pradesh', '', 56819, 56819, NULL, NULL),
('Sattenapalle', 16.3962, 80.1497, 'India', 'IN', 'Andhra Pradesh', '', 56721, 56721, NULL, NULL),
('Vrindāvan', 27.5806, 77.7006, 'India', 'IN', 'Uttar Pradesh', '', 56618, 56618, NULL, NULL),
('Mandapeta', 16.87, 81.93, 'India', 'IN', 'Andhra Pradesh', '', 56063, 56063, NULL, NULL),
('Belampalli', 19.0558, 79.4931, 'India', 'IN', 'Telangana', '', 55841, 55841, NULL, NULL),
('Bhīmunipatnam', 17.8864, 83.4471, 'India', 'IN', 'Andhra Pradesh', '', 55082, 55082, NULL, NULL),
('Nāndod', 21.8704, 73.5026, 'India', 'IN', 'Gujarāt', '', 54923, 54923, NULL, NULL),
('Pithāpuram', 17.1167, 82.2667, 'India', 'IN', 'Andhra Pradesh', '', 54859, 54859, NULL, NULL),
('Punganūru', 13.3667, 78.5833, 'India', 'IN', 'Andhra Pradesh', '', 54746, 54746, NULL, NULL),
('Puttūr', 13.45, 79.55, 'India', 'IN', 'Andhra Pradesh', '', 54092, 54092, NULL, NULL),
('Jalor', 25.35, 72.6167, 'India', 'IN', 'Rājasthān', '', 54081, 54081, NULL, NULL),
('Palmaner', 13.2, 78.75, 'India', 'IN', 'Andhra Pradesh', '', 54035, 54035, NULL, NULL),
('Dholka', 22.72, 72.47, 'India', 'IN', 'Gujarāt', '', 53792, 53792, NULL, NULL),
('Jaggayyapeta', 16.892, 80.0976, 'India', 'IN', 'Telangana', '', 53530, 53530, NULL, NULL),
('Tuni', 17.35, 82.55, 'India', 'IN', 'Andhra Pradesh', '', 53425, 53425, NULL, NULL),
('Amalāpuram', 16.5833, 82.0167, 'India', 'IN', 'Andhra Pradesh', '', 53231, 53231, NULL, NULL),
('Jagtiāl', 18.8, 78.93, 'India', 'IN', 'Telangana', '', 53213, 53213, NULL, NULL),
('Vikārābād', 17.33, 77.9, 'India', 'IN', 'Telangana', '', 53143, 53143, NULL, NULL),
('Venkatagiri', 13.9667, 79.5833, 'India', 'IN', 'Andhra Pradesh', '', 52688, 52688, NULL, NULL),
('Sihor', 21.7, 71.97, 'India', 'IN', 'Gujarāt', '', 52603, 52603, NULL, NULL),
('Jangaon', 17.72, 79.18, 'India', 'IN', 'Telangana', '', 52394, 52394, NULL, NULL),
('Mandamāri', 18.9822, 79.4811, 'India', 'IN', 'Telangana', '', 52352, 52352, NULL, NULL),
('Metpalli', 18.8297, 78.5878, 'India', 'IN', 'Telangana', '', 50902, 50902, NULL, NULL),
('Repalle', 16.02, 80.85, 'India', 'IN', 'Andhra Pradesh', '', 50866, 50866, NULL, NULL),
('Bhainsa', 19.1, 77.9667, 'India', 'IN', 'Telangana', '', 49764, 49764, NULL, NULL),
('Jasdan', 22.03, 71.2, 'India', 'IN', 'Gujarāt', '', 48483, 48483, NULL, NULL),
('Jammalamadugu', 14.85, 78.38, 'India', 'IN', 'Andhra Pradesh', '', 46069, 46069, NULL, NULL),
('Rāmeswaram', 9.28, 79.3, 'India', 'IN', 'Tamil Nādu', '', 44856, 44856, NULL, NULL),
('Addanki', 15.811, 79.9738, 'India', 'IN', 'Andhra Pradesh', '', 43850, 43850, NULL, NULL),
('Nidadavole', 16.92, 81.67, 'India', 'IN', 'Andhra Pradesh', '', 43809, 43809, NULL, NULL),
('Bodupāl', 17.4139, 78.5783, 'India', 'IN', 'Telangana', '', 43692, 43692, NULL, NULL),
('Rājgīr', 25.03, 85.42, 'India', 'IN', 'Bihār', '', 41587, 41587, NULL, NULL),
('Rajaori', 33.38, 74.3, 'India', 'IN', 'Jammu and Kashmīr', '', 41552, 41552, NULL, NULL),
('Naini Tal', 29.3919, 79.4542, 'India', 'IN', 'Uttarakhand', '', 41377, 41377, NULL, NULL),
('Channarāyapatna', 12.9, 76.39, 'India', 'IN', 'Karnātaka', '', 40400, 40400, NULL, NULL),
('Maihar', 24.27, 80.75, 'India', 'IN', 'Madhya Pradesh', '', 40192, 40192, NULL, NULL),
('Panaji', 15.48, 73.83, 'India', 'IN', 'Goa', 'admin', 40017, 40017, NULL, NULL),
('Junnar', 19.2, 73.88, 'India', 'IN', 'Mahārāshtra', '', 40000, 40000, NULL, NULL),
('Amudālavalasa', 18.4167, 83.9, 'India', 'IN', 'Andhra Pradesh', '', 39799, 39799, NULL, NULL),
('Damān', 20.417, 72.85, 'India', 'IN', 'Gujarāt', 'admin', 39737, 39737, NULL, NULL),
('Kovvūr', 17.0167, 81.7333, 'India', 'IN', 'Andhra Pradesh', '', 39667, 39667, NULL, NULL),
('Solan', 30.92, 77.12, 'India', 'IN', 'Himāchal Pradesh', '', 39256, 39256, NULL, NULL),
('Dwārka', 22.2403, 68.9686, 'India', 'IN', 'Gujarāt', '', 38873, 38873, NULL, NULL),
('Pathanāmthitta', 9.2647, 76.7872, 'India', 'IN', 'Kerala', '', 37802, 37802, NULL, NULL),
('Kodaikānal', 10.23, 77.48, 'India', 'IN', 'Tamil Nādu', '', 36501, 36501, NULL, NULL),
('Udhampur', 32.93, 75.13, 'India', 'IN', 'Jammu and Kashmīr', '', 35507, 35507, NULL, NULL),
('Giddalūr', 15.3784, 78.9265, 'India', 'IN', 'Andhra Pradesh', '', 35150, 35150, NULL, NULL),
('Yellandu', 17.6, 80.33, 'India', 'IN', 'Telangana', '', 35056, 35056, NULL, NULL),
('Shrīrangapattana', 12.4181, 76.6947, 'India', 'IN', 'Karnātaka', '', 34135, 34135, NULL, NULL),
('Angamāli', 10.196, 76.386, 'India', 'IN', 'Kerala', '', 33424, 33424, NULL, NULL),
('Umaria', 23.5245, 80.8365, 'India', 'IN', 'Madhya Pradesh', '', 33114, 33114, NULL, NULL),
('Fatehpur Sīkri', 27.0911, 77.6611, 'India', 'IN', 'Uttar Pradesh', '', 32905, 32905, NULL, NULL),
('Mangūr', 17.9373, 80.8185, 'India', 'IN', 'Telangana', '', 32091, 32091, NULL, NULL),
('Pedana', 16.2667, 81.1667, 'India', 'IN', 'Andhra Pradesh', '', 30721, 30721, NULL, NULL),
('Uran', 18.89, 72.95, 'India', 'IN', 'Mahārāshtra', '', 30439, 30439, NULL, NULL),
('Chimākurti', 15.5819, 79.868, 'India', 'IN', 'Andhra Pradesh', '', 30279, 30279, NULL, NULL),
('Devarkonda', 16.7, 78.9333, 'India', 'IN', 'Telangana', '', 29731, 29731, NULL, NULL),
('Bandipura', 34.4225, 74.6375, 'India', 'IN', 'Jammu and Kashmīr', '', 27482, 27482, NULL, NULL),
('Silvassa', 20.2666, 73.0166, 'India', 'IN', 'Dādra and Nagar Haveli', '', 27359, 27359, NULL, NULL),
('Pāmidi', 14.95, 77.5833, 'India', 'IN', 'Andhra Pradesh', '', 26886, 26886, NULL, NULL),
('Narasannapeta', 18.4151, 84.0447, 'India', 'IN', 'Andhra Pradesh', '', 26280, 26280, NULL, NULL),
('Jaynagar-Majilpur', 22.1772, 88.4258, 'India', 'IN', 'West Bengal', '', 25922, 25922, NULL, NULL),
('Khed Brahma', 24.0299, 73.0463, 'India', 'IN', 'Gujarāt', '', 25001, 25001, NULL, NULL),
('Khajurāho', 24.85, 79.9333, 'India', 'IN', 'Madhya Pradesh', '', 24481, 24481, NULL, NULL),
('Koilkuntla', 15.2333, 78.3167, 'India', 'IN', 'Andhra Pradesh', '', 23859, 23859, NULL, NULL),
('Diu', 20.7197, 70.9904, 'India', 'IN', 'Damān and Diu', '', 23779, 23779, NULL, NULL),
('Kulgam', 33.64, 75.02, 'India', 'IN', 'Jammu and Kashmīr', '', 23584, 23584, NULL, NULL),
('Gauripur', 26.08, 89.97, 'India', 'IN', 'Assam', '', 23477, 23477, NULL, NULL),
('Abu', 24.5925, 72.7083, 'India', 'IN', 'Rājasthān', '', 22943, 22943, NULL, NULL),
('Curchorem', 15.25, 74.1, 'India', 'IN', 'Goa', '', 22730, 22730, NULL, NULL),
('Kavaratti', 10.5626, 72.6369, 'India', 'IN', 'Lakshadweep', 'admin', 10688, 10688, NULL, NULL),
('Panchkula', 30.6915, 76.8537, 'India', 'IN', 'Haryāna', 'minor', 0, 0, NULL, NULL),
('Kagaznāgār', 19.3316, 79.4661, 'India', 'IN', 'Telangana', 'minor', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `website`, `created_at`, `updated_at`) VALUES
(1, 'Stark Industries', 'xyz@stark.com', 'Stark Industries.png', 'https://www.starkindustries.com', '2022-11-27 15:19:40', '2022-11-27 15:19:40'),
(2, 'ACME Globals', 'abc@acme.com', 'ACME Globals.png', 'https://www.acme.org', '2022-11-27 15:21:08', '2022-11-27 15:21:08'),
(3, 'SkyNet Corporations', 'skne@skynet.co', 'SkyNet Corporations.png', 'https://skynetcorp.org', '2022-11-27 15:22:13', '2022-11-27 15:22:13'),
(4, 'Vincent Stokes', 'cyzanucoxa@mailinator.com', 'Vincent Stokes.png', 'https://www.rime.com', '2022-11-27 15:27:18', '2022-11-27 15:27:18'),
(5, 'Delilah Cox', 'varikyzyky@mailinator.com', 'Delilah Cox.png', 'https://www.jekufukefof.cm', '2022-11-27 15:27:31', '2022-11-27 15:27:31'),
(6, 'Herman Le', 'kapoqivaf@mailinator.com', 'Herman Le.png', 'https://www.cujagowowi.ca', '2022-11-27 15:27:41', '2022-11-27 15:27:41'),
(7, 'Rogan Thomas', 'nilotyxe@mailinator.com', 'Rogan Thomas.png', 'https://www.natug.me.uk', '2022-11-27 15:27:52', '2022-11-27 15:27:52'),
(8, 'Caleb Black', 'qisinisuj@mailinator.com', 'Caleb Black.png', 'https://www.puvycijotacep.biz', '2022-11-27 15:28:13', '2022-11-27 15:28:13'),
(9, 'Wonka Industries', 'vugety@mailinator.com', 'Wonka Industries.png', 'https://www.nonoki.co', '2022-11-27 15:28:51', '2022-11-27 15:28:51'),
(10, 'Wayne Enterprises', 'fyfalerex@mailinator.com', 'Wayne Enterprises.png', 'https://www.tet.com', '2022-11-27 15:29:12', '2022-11-27 15:29:12'),
(11, 'Odessa Logan', 'xijaron@mailinator.com', 'Odessa Logan.png', 'https://www.fobuf.us', '2022-11-27 22:26:21', '2022-11-27 22:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `lastname`, `company_id`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Savannah', 'Franks', 3, 'rajesilyz@mailinator.com', '+1 (461) 699-5022', '2022-11-27 15:25:40', '2022-11-27 15:25:40'),
(2, 'Rafael', 'Santiago', 2, 'cabo@mailinator.com', '+1 (535) 994-3953', '2022-11-27 15:25:48', '2022-11-27 15:25:48'),
(3, 'Winifred', 'Chang', 1, 'jyteka@mailinator.com', '+1 (235) 994-4637', '2022-11-27 15:25:57', '2022-11-27 15:25:57'),
(4, 'Yardley', 'Vang', 2, 'tusez@mailinator.com', '+1 (905) 742-7546', '2022-11-27 15:26:03', '2022-11-27 15:26:03'),
(5, 'Kirestin', 'Compton', 3, 'rufetumyv@mailinator.com', '+1 (123) 922-9483', '2022-11-27 15:26:12', '2022-11-27 15:26:12'),
(6, 'Palmer', 'Scott', 1, 'qifepos@mailinator.com', '+1 (915) 923-4183', '2022-11-27 15:26:19', '2022-11-27 15:26:19'),
(7, 'Xenos', 'Burke', 1, 'fyjerap@mailinator.com', '+1 (949) 401-6521', '2022-11-27 15:26:24', '2022-11-27 15:26:24'),
(8, 'Casey', 'Tanner', 7, 'wunufuwuz@mailinator.com', '+1 (613) 711-9101', '2022-11-27 15:29:41', '2022-11-27 15:29:41'),
(10, 'Zelda', 'Anderson', 6, 'nary@mailinator.com', '+1 (668) 273-4917', '2022-11-27 15:29:52', '2022-11-27 15:29:52'),
(11, 'Nerea', 'Dominguez', 8, 'qomi@mailinator.com', '+1 (751) 352-1227', '2022-11-27 15:29:56', '2022-11-27 15:29:56'),
(12, 'Desirae', 'Soto', 1, 'zowa@mailinator.com', '+1 (297) 563-1599', '2022-11-27 15:30:01', '2022-11-27 15:30:01'),
(13, 'Clio', 'Wiggins', 4, 'bohijeni@mailinator.com', '+1 (493) 138-7957', '2022-11-27 15:30:05', '2022-11-27 15:30:05'),
(14, 'Michelle', 'Moon', 2, 'mogilazuw@mailinator.com', '+1 (809) 966-5462', '2022-11-27 15:30:09', '2022-11-27 15:30:09'),
(15, 'Nadine', 'Justice', 3, 'pisozapali@mailinator.com', '+1 (869) 715-7846', '2022-11-27 15:30:13', '2022-11-27 15:30:13'),
(16, 'Dakota', 'Robles', 9, 'wibahobib@mailinator.com', '+1 (604) 672-5336', '2022-11-27 15:30:19', '2022-11-27 15:30:19'),
(17, 'Sage', 'Fields', 10, 'pogufo@mailinator.com', '+1 (851) 333-2431', '2022-11-27 15:30:25', '2022-11-27 15:30:25'),
(18, 'Joshua', 'Rios', 9, 'lipivily@mailinator.com', '+1 (142) 543-9687', '2022-11-27 15:30:35', '2022-11-27 22:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(123, '2022_11_26_214312_create_employees_table', 1),
(141, '2014_10_12_000000_create_users_table', 2),
(142, '2014_10_12_100000_create_password_resets_table', 2),
(143, '2019_08_19_000000_create_failed_jobs_table', 2),
(144, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(145, '2022_11_26_211907_create_company_table', 2),
(146, '2022_11_27_010725_create_admins_table', 2),
(147, '2022_11_27_121310_create_employees_table', 2),
(148, '2022_11_28_004605_create_cities_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_company_id_foreign` (`company_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
