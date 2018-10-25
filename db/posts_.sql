-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 25 2018 г., 19:31
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

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
-- Структура таблицы `posts``
--

CREATE TABLE `posts``` (
  `id` int(4) NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `author_id` int(4) NOT NULL,
  `date_time` date NOT NULL,
  `post_img` varchar(255) NOT NULL,
  `post_img_small` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts``
--

INSERT INTO `posts`` (`id`, `title`, `text`, `author_id`, `date_time`, `post_img`, `post_img_small`) VALUES
(2, 'Про дизайн электрокардиограммы в Apple Watch', 'Когда Apple на последней конференции показала часы новой серии и пообещала, что они будут считывать ЭКГ, было много шума. Ещё бы: впервые такая сложная медицинская система уместилась в обычные часы. К сожалению, в этом анонсе маркетинга больше, чем медицины.', 2, '2018-10-25', '123456789.jpg', '123456789.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `posts``
--
ALTER TABLE `posts``
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `posts``
--
ALTER TABLE `posts``
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
