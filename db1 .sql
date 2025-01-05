-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2025 年 1 月 05 日 17:37
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `db1`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `db1_table`
--

CREATE TABLE `db1_table` (
  `memberId` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(10) NOT NULL,
  `facility` varchar(30) NOT NULL,
  `whereDidYouHear` varchar(30) NOT NULL,
  `expectations` varchar(50) NOT NULL,
  `registered_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `db1_table`
--

INSERT INTO `db1_table` (`memberId`, `name`, `gender`, `birthday`, `email`, `address`, `facility`, `whereDidYouHear`, `expectations`, `registered_at`) VALUES
(1, 'natsuki', '女性', '2024-01-01', 'n@gmail.com', '東京都', '病院', '友人', 'たのしさ', '2025-01-01 16:54:06'),
(2, 'm', '答えたくない', '2024-12-11', 'm@gmail.com', '北海道', '病院', '友人', 'おもしろさ', '2025-01-02 19:38:52'),
(3, 'abc', '男性', '2024-09-03', 'abc@gmail.com', '神奈川県', 'クリニック', 'オンライン', 'わかりやすさ', '2025-01-02 19:49:37'),
(4, 'd', '答えたくない', '1999-12-03', 'd@gmail.com', '茨城県', 'クリニック', 'その他', 'みやすさ', '2025-01-02 19:54:02'),
(5, 'b', '女性', '2000-09-14', 'bb@gmail.com', '福岡県', 'クリニック', '広告', '論文との連携', '2025-01-02 20:09:50'),
(6, 'aiueo', '女性', '1978-12-12', 'aiueo@gmail.com', '大阪府', '病院', '広告', 'おもしろさ', '2025-01-02 20:15:34');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `db1_table`
--
ALTER TABLE `db1_table`
  ADD PRIMARY KEY (`memberId`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `db1_table`
--
ALTER TABLE `db1_table`
  MODIFY `memberId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
