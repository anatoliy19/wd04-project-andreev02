-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 17 2018 г., 16:04
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD04-project-andreev`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`) VALUES
(1, 'info1@mail.com', '$2y$10$rgV5wdescPXS8LAf8Y3TKem3sjPAL4B/Molt0.QlnpVgVnVUktTdq', 'user'),
(2, 'info8@mail.com', '$2y$10$I4bp8CxpFHi4VqwokgnSqeDkJSehQsV.cxh3.xF/nd2ZoaDcsME1K', 'user'),
(3, 'info9@mail.com', '$2y$10$teoDNyIDCuqgiXKwPAGR7ea2t1BqFc3CdIXmRK4WgLFazj9xT6Qda', 'user'),
(4, 'info@mail.com', '$2y$10$GvKPaQ4pWdNH16ghGoII1.OzHl0XrsUm1KLzbeZReSjBQNaDvo3tu', 'user'),
(5, 'info5@mail.com', '$2y$10$fih8MP7DEehY27cxUxYuqet2xP4qmop4IfRk.HlKVLB/e5tZzs/y2', 'user'),
(6, 'info3@mail.com', '$2y$10$RhUk0ODGkCOOSktlP/DhiuCq5DEQLtqDxIa53P5AgChAqTUmxPm3C', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
