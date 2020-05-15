-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 16 2020 г., 00:00
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
-- База данных: `phpshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Двигатели', 1, 1),
(2, 'Подвеска', 2, 1),
(3, 'Диски', 3, 1),
(4, 'Шины', 4, 1),
(5, 'Пружины', 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT 0,
  `is_recommended` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `image` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `description`, `is_new`, `is_recommended`, `status`, `image`) VALUES
(34, 'Дизельный двигатель KOHLER KDI1903M', 1, 1839707, 5500, 1, 'Kohler', 'Дизельные двигатели Kohler, производимые американским концерном  \"KOHLER CO.\", на заводах дочерней компании \"LOMBARDINI S.P.A.\", среди аналогичных двигателей отличаются значительным увлечением ресурса выработки и лучшими эффективностью, надёжностью и работоспособностью. Моторы KOHLER дизельные предназначены прежде всего для профессионального использования. Дизельные двигатели KOHLER 1903M серии - 4-такные, Трехцилиндровые, с системой жидкостной охлаждением. Модельный ряд двигателей KOHLER дизельных с жидкостным охлаждения представлен моторами мощностью от 4 л.с. до 134 л.с.\r\n\r\nДизельный двигатель KOHLER KDI 1903M  (3-цилиндровый, 4-х тактный двигатель с жидкостным  охлаждения.\r\n\r\nИзготавливается данный двигатель на заводе в городе Реджо-нель-Эмилия (Италия).\r\n\r\nВы можете приобрести в Компании Мотор-Ру как комплектные новые Американские двигатели для дизель генераторов и спецтехники , так и комплектующие и запасные части на необходимый Вам двигатель KOHLER.\r\n\r\nСоставить заявку в произвольной форме на необходимую технику KOHLER Вы сможете на специализированной странице | Заказ запчастей\r\n\r\nВы также, можете купить дизельный двигатель KOHLER KDI 1903M или заказать удобным для Вас способом - по телефону или посетив наши представительства.\r\n\r\nДизельные двигатели KOHLER стабильно и надёжно работают в составе промышленной техники: дизель генерторы - KOHLER SDMO и сварочные агрегаты, сельскохозяйственной техники - для трактора Беларусь, мотоблока, мотопомпы, мойки высокого давления, вибрационные плиты, гидравлические блоки питания, а так же различной спецтехники.', 0, 0, 1, NULL),
(35, 'Дизельный двигатель KOHLER KDI1903M', 1, 2343847, 6000, 0, 'Kohler', 'Самый новый', 1, 1, 1, NULL),
(36, 'Пружина', 5, 2028027, 270, 1, 'Presign', 'Новая', 1, 1, 1, NULL),
(37, 'Пружина2', 5, 2019487, 325, 1, 'Presign', 'Лучшее качество', 0, 1, 1, NULL),
(38, 'Автомобильный диск', 3, 1953212, 275, 1, 'NoName', 'Лучшее качество. Отличный выбор', 0, 0, 1, NULL),
(39, 'Автомобильный диск', 3, 1602042, 370, 0, 'NoName', 'Лучшее качество. Отличный выбор', 0, 0, 1, NULL),
(41, 'Подвеска', 2, 1129365, 780, 1, 'Подвеска', 'Лучшая, надежная', 1, 1, 1, NULL),
(42, 'Шина1', 4, 1128670, 100, 1, 'Samsung', 'Без описания', 0, 0, 1, NULL),
(43, 'Шина2', 4, 683364, 210, 1, 'Hks', 'Без описания', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(45, 'fsdfsd', '1', '123123123', 4, '2015-05-14 09:54:45', '{\"1\":1,\"2\":1,\"3\":2}', 3),
(46, 'САША1', 'g3424242342', '', 4, '2015-05-18 15:34:42', '{\"44\":3,\"43\":3}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Admin', 'admin@admin.ru', 'admin', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
