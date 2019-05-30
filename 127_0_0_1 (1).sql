-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 
-- サーバのバージョン： 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gs_book_db`
--
CREATE DATABASE IF NOT EXISTS `gs_book_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `gs_book_db`;

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `book_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `book_URL` text COLLATE utf8_unicode_ci NOT NULL,
  `book_comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `book_name`, `book_URL`, `book_comment`, `indate`) VALUES
(1, '何者', 'https://www.amazon.co.jp/%E4%BD%95%E8%80%85-%E6%9C%9D%E4%BA%95-%E3%83%AA%E3%83%A7%E3%82%A6/dp/4103330619', '就活を思い出す名著', '2019-05-25 17:40:56'),
(2, '何者', 'https://www.amazon.co.jp/%E4%BD%95%E8%80%85-%E6%9C%9D%E4%BA%95-%E3%83%AA%E3%83%A7%E3%82%A6/dp/4103330619', '就活を思い出す名著', '2019-05-25 17:41:20'),
(3, '世にも奇妙な君物語', 'https://www.amazon.co.jp/%E4%B8%96%E3%81%AB%E3%82%82%E5%A5%87%E5%A6%99%E3%81%AA%E5%90%9B%E7%89%A9%E8%AA%9E-%E6%9C%9D%E4%BA%95-%E3%83%AA%E3%83%A7%E3%82%A6/product-reviews/406219824X', 'なかなか面白い。びっくりさせられる。', '2019-05-25 17:43:19'),
(4, 'あいうえお', 'かきくけこ', 'さしすせそ', '2019-05-29 21:47:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
