-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql3104.db.sakura.ne.jp
-- 生成日時: 2025 年 1 月 07 日 00:43
-- サーバのバージョン： 8.0.40
-- PHP のバージョン: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `natsukiyg_db1`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `db1_table`
--

CREATE TABLE `db1_table` (
  `memberId` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(10) NOT NULL,
  `facility` varchar(30) NOT NULL,
  `whereDidYouHear` varchar(30) NOT NULL,
  `expectations` varchar(50) NOT NULL,
  `registered_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- テーブルのデータのダンプ `db1_table`
--

INSERT INTO `db1_table` (`memberId`, `name`, `gender`, `birthday`, `email`, `address`, `facility`, `whereDidYouHear`, `expectations`, `registered_at`) VALUES
(1, 'natsuki', '女性', '2024-01-01', 'n@gmail.com', '東京都', '病院', '友人', 'たのしさ', '2025-01-06 02:36:25'),
(2, 'a', '答えたくない', '2000-01-12', 'a@yahoo.co.jp', '北海道', '病院', 'オンライン', 'おもしろさ', '2025-01-06 23:07:12'),
(3, 'abc', '男性', '1995-03-15', 'abc@gmail.com', '福岡県', 'クリニック', '広告', 'あたらしさ', '2025-01-06 23:08:24'),
(4, 's', '男性', '1988-10-10', 's@gmail.com', '神奈川県', 'クリニック', '友人', 'みやすさ', '2025-01-06 23:41:35'),
(5, 'さとう', '女性', '1999-08-07', 'sato@yahoo.co.jp', '大阪府', '病院', 'オンライン', '使いやすさ', '2025-01-06 23:44:38'),
(6, '鈴木', '答えたくない', '2002-05-10', 'suzuki@gmail.com', '沖縄県', '病院', 'その他', '共有しやすさ', '2025-01-06 23:46:41'),
(7, 'やまもと', '女性', '1985-02-24', 'yamamoto@gmail.com', '千葉県', '自宅', '広告', 'わかりやすさ', '2025-01-06 23:48:01');

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
  MODIFY `memberId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
