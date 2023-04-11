-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Квт 12 2023 р., 02:30
-- Версія сервера: 8.0.30
-- Версія PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `webpro-2`
--

-- --------------------------------------------------------

--
-- Структура таблиці `cars`
--

CREATE TABLE `cars` (
  `ID_Cars` int NOT NULL,
  `Name` text NOT NULL,
  `Release_date` year NOT NULL,
  `Race` int NOT NULL,
  `State(new,old)` text NOT NULL,
  `FID_Vendors` int NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `cars`
--

INSERT INTO `cars` (`ID_Cars`, `Name`, `Release_date`, `Race`, `State(new,old)`, `FID_Vendors`, `Price`) VALUES
(1211, 'Car1V1', 1950, 10000, 'old', 218676, 24),
(1212, 'Car2V1', 1990, 3378, 'old', 218676, 50.87),
(1433, 'Nadija', 2023, 1, 'new', 333333, 1400),
(1434, 'Marija', 2023, 16, 'new', 333333, 2399),
(2391, 'Car1V2', 2010, 0, 'new', 393749, 180.8),
(3821, 'Car1V3', 2004, 8723, 'old', 826486, 30.15),
(3822, 'Car2V3', 1984, 1984, 'old', 826486, 41),
(3823, 'Car3V3', 2014, 604, 'new', 826486, 75.5);

-- --------------------------------------------------------

--
-- Структура таблиці `rent`
--

CREATE TABLE `rent` (
  `FID_Car` int NOT NULL,
  `Date_start` date NOT NULL,
  `Time_start` time NOT NULL,
  `Date_end` date NOT NULL,
  `Time_end` time NOT NULL,
  `Cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `rent`
--

INSERT INTO `rent` (`FID_Car`, `Date_start`, `Time_start`, `Date_end`, `Time_end`, `Cost`) VALUES
(1211, '2014-09-01', '12:00:00', '2014-10-01', '12:00:00', 134.89),
(1212, '2014-08-12', '08:00:00', '2014-09-25', '14:00:00', 45.5),
(3821, '2014-10-01', '12:00:00', '2014-12-01', '12:00:00', 100),
(1433, '2023-01-05', '13:00:00', '2023-01-06', '18:00:00', 1400),
(1433, '2023-01-07', '10:00:00', '2023-01-10', '16:00:00', 4200),
(1434, '2023-02-15', '13:00:00', '2023-02-16', '18:00:00', 2399);

-- --------------------------------------------------------

--
-- Структура таблиці `vendors`
--

CREATE TABLE `vendors` (
  `ID_Vendors` int NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `vendors`
--

INSERT INTO `vendors` (`ID_Vendors`, `Name`) VALUES
(111111, 'WMB'),
(218676, 'Vendor1'),
(222222, 'Benx'),
(333333, 'Ukr'),
(393749, 'Vendor2'),
(826486, 'Vendor3');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`ID_Cars`);

--
-- Індекси таблиці `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`ID_Vendors`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
