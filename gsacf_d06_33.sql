-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 7 月 02 日 16:04
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d06_33`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `myon_table`
--

CREATE TABLE `myon_table` (
  `id` int(12) NOT NULL,
  `posttime` datetime NOT NULL,
  `lat` longtext NOT NULL,
  `lng` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `myon_table`
--

INSERT INTO `myon_table` (`id`, `posttime`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(17, '2020-07-02 22:45:48', '33.5866643', '130.394469', '2020-07-02 22:45:48', '2020-07-02 22:45:48'),
(20, '2020-07-02 22:50:13', '33.59294384628146', '130.38844210852443', '2020-07-02 22:50:13', '2020-07-02 22:50:13'),
(21, '2020-07-02 22:53:42', '33.5948437', '130.3227554', '2020-07-02 22:53:42', '2020-07-02 22:53:42'),
(22, '2020-07-02 22:58:25', '33.57355255281571', '130.3943108895358', '2020-07-02 22:58:25', '2020-07-02 22:58:25');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'SQLを書く', '2020-06-20', '2020-06-20 15:27:34', '2020-06-20 15:27:34'),
(2, 'SQLを書く2', '2020-06-20', '2020-06-20 15:29:41', '2020-06-20 15:29:41'),
(3, 'PHPをかく', '2020-06-20', '2020-06-20 15:31:03', '2020-06-20 15:31:03'),
(4, 'PHPをかく2', '2020-06-20', '2020-06-20 15:33:22', '2020-06-20 15:33:22'),
(5, 'cssをかく', '2020-06-21', '2020-06-20 15:35:40', '2020-06-20 15:35:40'),
(6, 'cssをかく2', '2020-06-21', '2020-06-20 15:36:31', '2020-06-20 15:36:31'),
(7, 'HTMLをかく', '2020-06-22', '2020-06-20 15:48:26', '2020-06-20 15:48:26'),
(8, 'HTMLをかく2', '2020-06-22', '2020-06-20 15:48:39', '2020-06-20 15:48:39'),
(9, 'aa', '2020-06-20', '2020-06-20 17:06:55', '2020-06-20 17:06:55'),
(10, 'みよ', '2020-06-20', '2020-06-20 17:25:18', '2020-06-20 17:25:18'),
(11, 'php頑張る', '2020-06-21', '2020-06-21 19:32:26', '2020-06-21 19:32:26'),
(12, '動くか確認', '2020-06-21', '2020-06-21 19:36:43', '2020-06-21 19:36:43'),
(13, 'aaa', '2020-06-21', '2020-06-21 19:57:37', '2020-06-21 19:57:37'),
(14, 'あああ', '2020-06-23', '2020-06-23 01:18:18', '2020-06-23 01:18:18'),
(15, 'VSCODE', '2020-06-27', '2020-06-27 09:51:41', '2020-06-27 09:51:41'),
(16, 'aaa', '2020-06-27', '2020-06-27 14:44:23', '2020-06-27 14:44:23'),
(17, 'tomo', '2020-06-27', '2020-06-27 15:08:52', '2020-06-27 15:08:52'),
(24, 'ffff', '2020-07-02', '2020-07-02 18:22:10', '2020-07-02 18:48:43');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `user_data`
--

CREATE TABLE `user_data` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `zipcode` char(10) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `tel` varchar(25) NOT NULL,
  `mail` varchar(35) NOT NULL,
  `created_at` int(35) NOT NULL,
  `updated_at` int(35) NOT NULL,
  `is_admin` datetime NOT NULL,
  `is_deleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `myon_table`
--
ALTER TABLE `myon_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `myon_table`
--
ALTER TABLE `myon_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- テーブルのAUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
