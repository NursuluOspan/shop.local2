-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 19 2020 г., 18:32
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `myshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`) VALUES
(1, 0, 'Браслеты'),
(2, 0, 'Кольца'),
(3, 0, 'На Шею'),
(4, 0, 'Серьги'),
(5, 0, 'Аксессуары'),
(6, 1, 'Мужские Стальные Браслеты'),
(7, 1, 'Мужские Кожаные Браслеты'),
(8, 2, 'Мужские Стальные Кольца'),
(9, 2, 'Мужские Вольфрамовые Кольца'),
(10, 3, 'Подвески с черепом'),
(11, 3, 'Кулоны и подвески'),
(12, 3, 'Цепи и Цепочки'),
(13, 5, 'Запонки'),
(14, 5, 'Зажимы Для Галстуков');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `image`, `status`) VALUES
(1, 6, 'Стальной Браслет MR.SMITH <br />MS-7031-BLS', ' <p>Ювелирная сталь - бессменная классика на все времена, обладающая спокойным, уверенным благородством королевского клинка. Простая честная всегда была любима людьми со стальным характером!</p><br /><p>Характеристики:</p><ul><li>Производитель : MR.SMITH</li><li>Материал : Сталь</li><li>Ширина : 6 мм</li><li>Производство : Тайланд </li><li>Длина : 220 мм</li></ul>                    ', 7500, '1.png', 1),
(2, 7, 'Вольфрамовый Браслет MR.SMITH <br />MS-TG-013', '<p>Способствуют расширению кровеносных сосудов и улучшению кровообращения. Стабилизируют артериальное давление. Благодаря их воздействию клетки получают больше кислорода и питательных веществ, нормализуют метаболизм, что способствует снижению массы тела, укрепляют иммунитет, уменьшают усталость, сонливость и вялость. Повышают тонус и упругость кожи, снижают боли в суставах. </p><br /><p>Характеристики:</p><ul><li>Производитель : MR.SMITH</li><li>Материал : Вольфрам</li><li>Ширина : 10 мм</li><li>Производство : Тайланд </li><li>Длина : 220 мм</li><li>Шаг звена : 11</li></ul>           ', 17500, '2.png', 1),
(3, 8, 'Стальное Кольцо SPIKES <br />010208', 'Характеристики:</p>/nul>\r\n<li>Производитель : Spikes</li><li>Материал : Сталь</li><li>Ширина : 8 мм</li><li>Производство : США</li></ul>\\n                ', 3000, '3.png', 1),
(4, 9, 'Вольфрамовое Кольцо Spikes <br />R-TU-7017M', '<p>Характеристики:</p>\\nul><li>Производитель : Spikes</li><li>Материал : Сталь</li><li>Ширина : 5 мм</li><li>Производство : США</li></ul>\\n              ', 12500, '4.png', 1),
(5, 10, 'Кулон С Черепом Fashion Steel <br />FS-ST013', '<p>Характеристики:</p>/nul>\r\n<li>Производитель : Respect Steel</li><li>Материал : Сталь</li><li>Ширина : 20 мм</li><li>Высота : 55 мм</li><li>Производство : США</li></ul>\\\\n              <', 6000, '5.png', 1),
(6, 11, 'Кулон SPIKES <br />SS-2314-PQ', '<p>Характеристики:</p>\\\\nul><li>Производитель : Respect Steel</li><li>Материал : Сталь</li><li>Ширина : 25 мм</li><li>Высота : 46 мм</li><li>Производство : США</li></ul>\\\\n              ', 8000, '6.png', 1),
(7, 13, 'Запонки Man Power Elegance <br />MACS115', '/n<p>Man Power Elegance   - это солидные аксессуары, убедительно завершающие мужской образ, а также демонстрирующие неповторимый стиль и эстетическое совершенство ! Украшения выполнены  из -– стали марки 316 L- бессмертной классики ,с покрытием из розового золота.</p>\\n<br />\\n<p>Характеристики:</p>\\\\nul><li>Материал : Сталь</li><li>Ширина : 15 мм</li><li>Высота : 15 мм</li><li>Производство : США</li></ul>\\\\n            ', 8800, '7.png', 1),
(8, 14, 'Зажим Для Галстука Man Power Wooden <br />MATS45', '/n<p>Изделия мужского бренда Man Power выполнены в современном стиле для деловых мужчин, предпочитающих классику. Аксессуары имеют лаконичный дизайн, идеально дополняющий строгий стиль сильной половины.</p>\\n<br />\\n<p>Характеристики:</p>\\\\nul><li>Материал : Титан</li><li>Ширина : 7 мм</li><li>Высота : 45 мм</li><li>Производство : США</li></ul>\\\\n              ', 10200, '8.png', 1),
(9, 12, 'Широкая Цепь Spikes <br />FS-7093', '\\n<p>Характеристики:</p>\\\\nul><li>Производитель : Spikes</li><li>Материал : Сталь</li><li>Ширина : 9 мм</li><li>Толщина : 2,5 мм</li><li>Высота : 65 см</li><li>Производство : США</li></ul>\\\\n             ', 9500, '9.png', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `pwd`, `name`, `phone`, `address`) VALUES
(1, 'n.altynbekkyzy@mail.ru', '12345', 'Nursulu', '87787787878', 'Nursultan, Nursultan 15');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
