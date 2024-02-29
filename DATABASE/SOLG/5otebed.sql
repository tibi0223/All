-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 04. 18:49
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `ebed<kt>`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ebed_txt`
--

CREATE TABLE `ebed_txt` (
  `nev` varchar(19) DEFAULT NULL,
  `azon` varchar(10) NOT NULL,
  `fizA` int(2) DEFAULT NULL,
  `fizB` int(2) DEFAULT NULL,
  `megA` int(2) DEFAULT NULL,
  `megB` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `ebed_txt`
--

INSERT INTO `ebed_txt` (`ev`, `osztaly`, `db`) VALUES
('2010', 'A', 5),
('2010', 'B', 11),
('2010', 'C', 9),
('2010', 'D', 5),
('2010', 'E', 7),
('2010', 'F', 4),
('2010', 'N', 3),
('2011', 'A', 8),
('2011', 'B', 9),
('2011', 'C', 7),
('2011', 'D', 8),
('2011', 'E', 2),
('2011', 'F', 6),
('2011', 'N', 6),
('2012', 'A', 4),
('2012', 'B', 3),
('2012', 'C', 8),
('2012', 'D', 5),
('2012', 'E', 7),
('2012', 'F', 7),
('2012', 'N', 8),
('2013', 'A', 8),
('2013', 'B', 5),
('2013', 'C', 10),
('2013', 'D', 7),
('2013', 'E', 3),
('2013', 'F', 5),
('2013', 'N', 7),
('2014', 'A', 1),
('2014', 'B', 8),
('2014', 'C', 8),
('2014', 'D', 3),
('2014', 'E', 2),
('2014', 'F', 3),
('2014', 'N', 9),
('2015', 'A', 8),
('2015', 'B', 8),
('2015', 'C', 9),
('2015', 'D', 5),
('2015', 'E', 4),
('2015', 'F', 1),
('2015', 'N', 11),
('2016', 'A', 2),
('2016', 'B', 5),
('2016', 'C', 7),
('2016', 'D', 8),
('2016', 'E', 7),
('2016', 'F', 6),
('2016', 'N', 6),
('2017', 'A', 8),
('2017', 'B', 7),
('2017', 'C', 9),
('2017', 'D', 7),
('2017', 'E', 13),
('2017', 'F', 6),
('2017', 'N', 5);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ebed_txt`
--
ALTER TABLE `ebed_txt`
  ADD PRIMARY KEY (`azon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
