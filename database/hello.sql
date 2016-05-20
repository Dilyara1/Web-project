-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 20 2016 г., 13:29
-- Версия сервера: 10.1.8-MariaDB
-- Версия PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hello`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `newsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `comment`, `userid`, `newsid`) VALUES
(1, 'I am hsh', 1, 0),
(2, 'sm', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `description`
--

CREATE TABLE `description` (
  `id1` int(11) NOT NULL,
  `title1` text COLLATE utf8_unicode_ci NOT NULL,
  `text1` text COLLATE utf8_unicode_ci NOT NULL,
  `img1` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `description`
--

INSERT INTO `description` (`id1`, `title1`, `text1`, `img1`) VALUES
(2, 'msm', 'nann', 'admin.jpg'),
(3, 'hello', 'osskksk', '3.jpg'),
(5, 'smm', 'smm', '3.jpg'),
(6, 'mzm', 'mMM', '3.jpg'),
(7, 'ma', 'akkkkkkkkkkkkkk', 'admin.jpg'),
(8, 'sm', 'nwn', 'car.jpg'),
(9, 'ms', 'am', 'car.jpg'),
(10, '', '', ''),
(11, 'zmm', 'znn', 'buda.jpg'),
(12, 'sj', 'nsn', 'buda.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `img`) VALUES
(98, 'Torquay', 'Dose up on surf culture at Torquay, the start of the Great Ocean Road, home to Bells Beach and birthplace of iconic brands Rip Curl and Quicksilver', 'torki.jpg'),
(99, 'Praia de Pipa', 'Is the main beach and the one where you will find the most bars and restaurants. Boat trips depart from the northern end of the beach', 'praia.jpg'),
(100, 'Paris', 'Lingering over pain au chocolat in a sidewalk cafÃ©, relaxing after a day of strolling along the Seine and marveling at icons like the Eiffel Tower and the Arc de Triompheâ€¦', 'paris.jpg'),
(101, 'Milan', 'Milan is a vibrant city that always offers an extensive and varied selection of not-to-be-missed events. Here is a downloadable and printable presentation of whatâ€™s on for 2016 and 2017 so that you can organise your trip or holiday or just plan an excursion of the upcoming events.', 'milan.jpg'),
(102, 'New York', ' New York is one of the most popular tourist destinations in the world, and with good reason.', 'ny.jpg'),
(103, 'Budapest', 'Often described as the "Little Paris of Middle Europe", Budapest is famous not only for the monuments reflecting its own 1,000-year-old culture, but also for the relics of others who settled here.', 'buda.jpg'),
(108, 'Admin', 'wants', 'admin.jpg'),
(109, 'nnnnnnn', 'nnnnnnnnn', 'praia.jpg'),
(111, 'as;ldkjfa;lksdjf', 'aposidfjnlakjsdblkashdf', 'angliya.jpg'),
(117, 'I love travelling', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ip', 'car.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `userid` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `userid`, `title`, `text`, `img`) VALUES
(2, '3', 'jer', 'ennnnnn', '3.jpg'),
(3, '3', 'My car ', 'I love travelling!', 'car.jpg'),
(6, '3', 'msm', 'wjjjjjjjjjjjjjjjjjjj', 'admin.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 0),
(3, 'Anel', 'anel@gmail.com', '53442f828fc86d0d44ba4dfd99cbc976', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id1`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `description`
--
ALTER TABLE `description`
  MODIFY `id1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
