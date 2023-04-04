-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 08 2022 г., 08:49
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fashion_store`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `admin_id` int NOT NULL,
  `admin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Danylo1', 'dragon-sword@ukr.net', 'qwerty');

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `p_id` int NOT NULL,
  `ip_add` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `qty` int NOT NULL,
  `size` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `cat_id` int NOT NULL,
  `cat_title` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cat_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Men', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Obcaecati tempore sed officia eum expedita deserunt vel a, exercitationem, odio? Necessitatibus, consequuntur recusandae sunt? Dicta, quos? Ad autem molestias, tenetur eveniet.'),
(2, 'Women', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Obcaecati tempore sed officia eum expedita deserunt vel a, exercitationem, odio? Necessitatibus, consequuntur recusandae sunt? Dicta, quos? Ad autem molestias, tenetur eveniet.'),
(3, 'Kids', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Obcaecati tempore sed officia eum expedita deserunt vel a, exercitationem, odio? Necessitatibus, consequuntur recusandae sunt? Dicta, quos? Ad autem molestias, tenetur eveniet.'),
(4, 'Other', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Obcaecati tempore sed officia eum expedita deserunt vel a, exercitationem, odio? Necessitatibus, consequuntur recusandae sunt? Dicta, quos? Ad autem molestias, tenetur eveniet.');

-- --------------------------------------------------------

--
-- Структура таблицы `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int NOT NULL,
  `queries` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `replies` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'Discounts', 'At the time there are no discounts!');

-- --------------------------------------------------------

--
-- Структура таблицы `chats`
--

CREATE TABLE `chats` (
  `chat_id` int NOT NULL,
  `from_id` int NOT NULL,
  `to_id` int NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `chats`
--

INSERT INTO `chats` (`chat_id`, `from_id`, `to_id`, `message`, `opened`, `created_at`) VALUES
(1, 1, 2, 'hello\n', 1, '2022-06-17 15:53:43'),
(2, 2, 1, 'qw', 1, '2022-06-17 15:53:57'),
(3, 1, 2, 'hello\n', 1, '2022-06-17 15:54:06'),
(4, 2, 1, 'qw', 1, '2022-06-17 15:54:09'),
(5, 1, 2, 'hello\n', 1, '2022-06-17 15:54:20'),
(6, 1, 2, 'hello\n', 1, '2022-06-17 15:54:28'),
(7, 1, 2, 'hello\n', 1, '2022-06-17 15:54:49'),
(8, 1, 2, 'hell\n', 1, '2022-06-17 15:55:06'),
(9, 2, 1, 'good', 1, '2022-06-17 15:56:41'),
(10, 2, 1, 'good', 1, '2022-06-17 15:59:42'),
(11, 1, 2, 'ok', 1, '2022-06-17 16:05:27');

-- --------------------------------------------------------

--
-- Структура таблицы `conversations`
--

CREATE TABLE `conversations` (
  `conversation_id` int NOT NULL,
  `user_1` int NOT NULL,
  `user_2` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `conversations`
--

INSERT INTO `conversations` (`conversation_id`, `user_1`, `user_2`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `customer_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `customer_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `customer_city` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `customer_country` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `customer_contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `customer_address` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `customer_image` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `customer_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_city`, `customer_country`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(7, 'svsdvsv', 'dragon-sword@ukr.net', 'qwerty', 'sdvsdvsdvs', 'sdvsv', '8888888', 'asdasda', 'Bandera.jpg', '127.0.0.1'),
(8, 'sacaca', 'vdsvsdsdvs', 'qwerty', 'qweq', 'qqq', '8888888', 'ree', 'успех.JPG', '127.0.0.1'),
(9, 'qwerty', 'asda', 'qwerty', 'ascac', 'asa', '123123', 'ascacac', 'неудача.PNG', '127.0.0.1'),
(10, 'svsdvsv', 'dragon-sword@ukr.ne', 'qwerty', 'qweqeqeq', 'Соединенные Штаты', 'qweqeqweq', 'asdasda', 'Юнисеф.PNG', '127.0.0.1'),
(11, 'asdada', 'dragon-sword@ukr.net', 'qwerty', 'qweqeqeq', 'Соединенные Штаты', '8888888', 'asdasda', 'deployment.drawio (2).drawio (1).drawio.png', '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `total_price` int NOT NULL,
  `invoice_no` int NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `total_price`, `invoice_no`, `order_date`, `order_status`) VALUES
(6, 7, 112, 276598861, '2022-05-01', 'Complete'),
(7, 7, 12, 549076683, '2022-06-04', 'Complete'),
(8, 7, 10, 22264791, '2022-06-06', 'Complete'),
(10, 7, 112, 136901671, '2022-06-25', 'Complete'),
(11, 7, 112, 255287528, '2022-06-25', 'Complete'),
(12, 7, 112, 216773450, '2022-06-25', 'Complete'),
(13, 7, 112, 387717143, '2022-06-25', 'Complete'),
(14, 7, 112, 1468151989, '2022-06-25', 'Complete'),
(15, 7, 112, 1544705647, '2022-06-26', 'Complete'),
(16, 7, 112, 1108710341, '2022-06-26', 'Complete'),
(17, 7, 36, 707145933, '2022-07-07', 'Complete');

-- --------------------------------------------------------

--
-- Структура таблицы `in_stock`
--

CREATE TABLE `in_stock` (
  `size` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `quantity` int NOT NULL,
  `id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `in_stock`
--

INSERT INTO `in_stock` (`size`, `quantity`, `id`, `product_id`) VALUES
('S', 0, 8, 25),
('M', 0, 9, 25),
('L', 0, 10, 25),
('S', 7, 11, 26),
('M', 0, 12, 26),
('L', 0, 13, 26),
('S', 0, 14, 2),
('M', 12, 15, 2),
('L', 20, 16, 2),
('S', 9, 17, 4),
('M', 0, 18, 4),
('L', 0, 19, 4),
('S', 12, 20, 5),
('M', 0, 21, 5),
('L', 20, 22, 5),
('S', 12, 23, 6),
('M', 12, 24, 6),
('L', 0, 25, 6),
('S', 24, 26, 7),
('M', 32, 27, 7),
('L', 12, 28, 7),
('S', 0, 29, 8),
('M', 20, 30, 8),
('L', 12, 31, 8),
('S', 20, 32, 11),
('M', 0, 33, 11),
('L', 0, 34, 11),
('S', 0, 35, 12),
('M', 20, 36, 12),
('L', 0, 37, 12),
('S', 0, 38, 13),
('M', 0, 39, 13),
('L', 20, 40, 13),
('S', 12, 41, 15),
('M', 0, 42, 15),
('L', 12, 43, 15),
('S', 45, 44, 16),
('M', 20, 45, 16),
('L', 0, 46, 16),
('S', 12, 47, 17),
('M', 0, 48, 17),
('L', 89, 49, 17),
('S', 0, 50, 18),
('M', 45, 51, 18),
('L', 20, 52, 18),
('S', 34, 53, 19),
('M', 12, 54, 19),
('L', 0, 55, 19),
('S', 0, 56, 21),
('M', 0, 57, 21),
('L', 12, 58, 21),
('S', 2, 59, 23),
('M', 0, 60, 23),
('L', 0, 61, 23);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `p_cat_id` int NOT NULL,
  `cat_id` int NOT NULL,
  `date` timestamp NOT NULL,
  `product_title` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_img1` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_img2` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_img3` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_price` int NOT NULL,
  `product_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_keywords` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `product_keywords`) VALUES
(2, 1, 1, '2022-03-28 09:26:53', 'Gangsta shit', 'IMG-2da6425741a3f388dbfbd73ac9f151e9-V.jpg', 'Bandera.jpg', 'product_img3', 10, '<p>asc a aws qwa wqw q wq</p>', 'Coat'),
(4, 2, 2, '2022-03-29 06:35:39', 'dscsd', 'product-1.jpg', 'product-1.jpg', 'product_img3', 12, '<p>wef wf</p>', 'Dress'),
(5, 1, 3, '2022-03-29 06:36:05', 'wq wefew 23 fw ', 'product-1.jpg', 'product-1.jpg', 'product_img3', 23, '<p>wef we fw fwe wf&nbsp;</p>', 'Coat'),
(6, 4, 2, '2022-03-29 06:36:32', 'qweqwr', 'product-1.jpg', 'product-1.jpg', 'product_img3', 66, '<p>asxa saf w</p>', 'qwerty'),
(7, 2, 1, '2022-03-29 07:28:59', 'regerg', 'dreess.png', 'product-1.jpg', 'product_img3', 21, '<p>sada</p>', 'Coat'),
(8, 2, 1, '2022-03-29 07:29:53', 'fgbfgbfg', 'cloth.png', 'cloth.png', 'product_img3', 55, '<p>fdg</p>', 'Dress'),
(11, 5, 2, '2022-03-29 10:05:33', 'Real Trash', 'князь.jpg', 'product-1.jpg', 'product_img3', 12, '<p>sdvsds</p>', 'qwerty'),
(12, 2, 1, '2022-06-11 10:13:03', 'wadaa', 'cloth.png', 'dreess.png', 'product_img3', 66, '<p>ascacca</p>', 'Dress'),
(13, 2, 1, '2022-06-21 10:40:16', 'New title', 'mario_PNG125.png', 'mario_PNG125.png', 'product_img3', 123, '<p>dkgjnf sa;mhvnuids/lnvshd liwkls/v</p>', 'sadadad'),
(15, 3, 1, '2022-06-21 14:03:30', 'smash', 'product-1.jpg', 'product-1.jpg', 'product_img3', 661, '<p>ask n:Jh cnsa;kjvbls. dvb</p>', 'sdad'),
(16, 3, 1, '2022-06-21 14:09:38', 'slava', 'product-1.jpg', 'product-1.jpg', 'product_img3', 66, '<p>asdadad</p>', 'sadad'),
(17, 2, 1, '2022-06-21 14:11:57', 'ukraine', 'mario_PNG125.png', 'mario_PNG125.png', 'product_img3', 222, '<p>sdv dlskv ns</p>', 'asdad'),
(18, 1, 1, '2022-06-21 14:14:21', 'qqqqqq', 'cloth.png', 'cloth.png', 'product_img3', 1212, '<p>ef lqfnk;s/v</p>', 'wqqd'),
(19, 3, 2, '2022-06-21 14:15:57', 'qqqqqqqq', 'cloth.png', 'cloth.png', 'product_img3', 4567, '<p>ghkvufvulbhl lb ypg bulbkj</p>', 'yuoblhj.blbk'),
(21, 1, 1, '2022-06-21 14:25:36', 'wadaa', 'cloth.png', 'cloth.png', 'product_img3', 1212, '<p>wfcnkwenj kwec nw</p>', 'qqqqqqq'),
(22, 2, 4, '2022-06-21 14:28:36', 'qqqqqqqqqqqqqqqqqqqq', 'dreess.png', 'cloth.png', 'product_img3', 234, '<p>sdfndsiu hpidvhks</p>', 'sdfjsfndksf'),
(23, 1, 2, '2022-06-21 14:35:32', 'fffffffffffffff', 'dreess.png', 'dreess.png', 'product_img3', 2, '<p>ssssssssss</p>', 'sssssssssss'),
(24, 2, 3, '2022-06-21 14:37:31', 'Real Trash', 'cloth.png', 'cloth.png', 'product_img3', 12, '<p>asdadad</p>', 'sasd'),
(25, 1, 1, '2022-06-21 14:53:02', 'ffffffffffff', 'cloth.png', 'cloth.png', 'product_img3', 44, '<p>ergergerg</p>', 'egferb'),
(26, 1, 1, '2022-06-21 15:39:28', 'wadaa', 'mario_PNG125.png', 'dreess.png', 'product_img3', 112, '<p>jbjuvl</p>', 'jhvjk');

-- --------------------------------------------------------

--
-- Структура таблицы `products_in_order`
--

CREATE TABLE `products_in_order` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_qty` int NOT NULL,
  `product_size` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `products_in_order`
--

INSERT INTO `products_in_order` (`id`, `order_id`, `product_id`, `product_qty`, `product_size`) VALUES
(4, 6, 26, 1, 'S'),
(5, 9, 26, 1, 'S'),
(6, 13, 26, 1, 'S'),
(7, 14, 26, 1, 'S'),
(8, 15, 26, 1, 'S'),
(9, 16, 26, 1, 'S'),
(10, 17, 4, 3, 'S');

-- --------------------------------------------------------

--
-- Структура таблицы `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int NOT NULL,
  `p_cat_title` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `p_cat_desc` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Jackets', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Obcaecati tempore sed officia eum expedita deserunt vel a, exercitationem, odio? Necessitatibus, consequuntur recusandae sunt? Dicta, quos? Ad autem molestias, tenetur eveniet.'),
(2, 'Accessories', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Obcaecati tempore sed officia eum expedita deserunt vel a, exercitationem, odio? Necessitatibus, consequuntur recusandae sunt? Dicta, quos? Ad autem molestias, tenetur eveniet.'),
(3, 'Shoes', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Obcaecati tempore sed officia eum expedita deserunt vel a, exercitationem, odio? Necessitatibus, consequuntur recusandae sunt? Dicta, quos? Ad autem molestias, tenetur eveniet.'),
(4, 'Coats Stylish', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Obcaecati tempore sed officia eum expedita deserunt vel a, exercitationem, odio? Necessitatibus, consequuntur recusandae sunt? Dicta, quos? Ad autem molestias, tenetur eveniet.11'),
(5, 'T-Shirt', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Obcaecati tempore sed officia eum expedita deserunt vel a, exercitationem, odio? Necessitatibus, consequuntur recusandae sunt? Dicta, quos? Ad autem molestias, tenetur eveniet.');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `slide_id` int NOT NULL,
  `slide_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `slide_image` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'slide-1c', 'slide-1.jpg'),
(2, 'slide-2', 'slide-2.jpg'),
(3, 'slide-3', 'slide-3.jpg'),
(6, 'slide-4', 'slide-4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `p_p` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'user-default.png',
  `last_seen` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `name`, `username`, `password`, `p_p`, `last_seen`) VALUES
(1, 'qwerty', 'qwerty', '$2y$10$1KdWoUVhQPKksz5vyrNwD.1l2T8F08LqbmP3wsPb9O0X/HxA6RMKu', 'user-default.png', '2022-06-17 19:45:16'),
(2, 'Данил Осипов', 'da', '$2y$10$E0XHPhqZEwKHD/YVhzKaPO5bC3dsorG1MbAgW4Sn8MIm8OyAh8c3i', 'user-default.png', '2022-06-17 16:38:22');

-- --------------------------------------------------------

--
-- Структура таблицы `views_count`
--

CREATE TABLE `views_count` (
  `ip` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `views_count`
--

INSERT INTO `views_count` (`ip`, `date`, `count`) VALUES
('127.0.0.1', '2022-05-09', 3),
('127.0.0.2', '2022-05-10', 1),
('127.0.0.1', '2002-05-04', 4),
('127.0.0.1', '2002-05-04', 4),
('127.0.0.1', '2002-05-05', 4),
('127.0.0.1', '2002-05-06', 4),
('127.0.0.1', '2002-05-08', 4),
('127.0.0.1', '2002-05-09', 4),
('127.0.0.2', '2002-05-10', 4),
('127.0.0.1', '2002-05-11', 4),
('127.0.0.1', '2002-05-12', 4),
('127.0.0.1', '2002-05-13', 4),
('127.0.0.1', '2022-05-10', 13),
('127.0.0.1', '2022-05-11', 5),
('127.0.0.1', '2022-05-15', 20),
('127.0.0.1', '2022-05-16', 3),
('127.0.0.1', '2022-05-21', 9),
('127.0.0.1', '2022-06-03', 1),
('127.0.0.1', '2022-06-04', 8),
('127.0.0.1', '2022-06-06', 16),
('::1', '2022-06-07', 1),
('127.0.0.1', '2022-06-10', 18),
('127.0.0.1', '2022-06-12', 15),
('127.0.0.1', '2022-06-13', 16),
('127.0.0.1', '2022-06-18', 2),
('127.0.0.1', '2022-06-19', 7),
('127.0.0.1', '2022-06-21', 13),
('127.0.0.1', '2022-06-22', 134),
('127.0.0.1', '2022-06-23', 51),
('127.0.0.1', '2022-06-24', 23),
('127.0.0.1', '2022-06-25', 37),
('127.0.0.1', '2022-06-26', 67),
('127.0.0.1', '2022-06-30', 21),
('127.0.0.1', '2022-07-01', 1),
('127.0.0.1', '2022-07-02', 66),
('127.0.0.1', '2022-07-03', 40),
('127.0.0.1', '2022-07-04', 2),
('127.0.0.1', '2022-07-06', 2),
('127.0.0.1', '2022-07-07', 27);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Индексы таблицы `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`chat_id`);

--
-- Индексы таблицы `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`conversation_id`);

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `in_stock`
--
ALTER TABLE `in_stock`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `products_in_order`
--
ALTER TABLE `products_in_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `chats`
--
ALTER TABLE `chats`
  MODIFY `chat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `conversations`
--
ALTER TABLE `conversations`
  MODIFY `conversation_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `in_stock`
--
ALTER TABLE `in_stock`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `products_in_order`
--
ALTER TABLE `products_in_order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
