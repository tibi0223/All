-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 04. 18:09
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

INSERT INTO `ebed_txt` (`azon`, `fizB`) VALUES
('2014C29-30', 0),
('2014C10-19', 0),
('2014C19-29', 7),
('2014C39-19', 0),
('2014C23-33', 0),
('2014C24-24', 0),
('2014C15-16', 0),
('2014C18-15', 0),
('2014C34-31', 7),
('2014C40-12', 0),
('2014C30-24', 0),
('2014C35-23', 8),
('2014C38-12', 0),
('2014C13-28', 1),
('2014C30-32', 0);

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
