-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 04. 19:02
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

INSERT INTO `ebed_txt` (`nev`, `azon`) VALUES
('Bajai Tas', '2013A33-15'),
('Baráth Zsolt', '2013D34-15'),
('Beke Tas', '2012N25-16'),
('Benedek Frida', '2015F23-12'),
('Budai Tas', '2015N39-17'),
('Fehér Regő', '2014A22-28'),
('Fischer Zsuzsa', '2017C20-30'),
('Gondos Csaba', '2017C15-31'),
('Gondos Hapci', '2011D25-14'),
('Hegyi Edit', '2016E37-27'),
('Illés Ferenc', '2017A38-13'),
('Illés Melinda', '2015N25-24'),
('Kalapos Dóra', '2012F22-25'),
('Kelemen Annamária', '2012N13-14'),
('Kerekes Krisztina', '2016C11-14'),
('Kiss Jenő', '2012F22-18'),
('Koós Hanna', '2017E24-30'),
('Koós Zoltán', '2012C36-28'),
('Kovács Dorottya', '2010C15-21'),
('Kovács Jolán', '2012A38-11'),
('Légrádi Dóra', '2013A16-29'),
('Lóránt Richárd', '2010D28-33'),
('Marosi Dóra', '2017E24-27'),
('Menyhárt Jolán', '2010D20-29'),
('Mónosi Vidor', '2017F26-30'),
('Nógrádi Annamária', '2015B18-33'),
('Nógrádi Júlia', '2017C13-27'),
('Somos Szilárd', '2016A35-12'),
('Somos Szilárd', '2017B25-34'),
('Somos Szundi', '2015N20-29'),
('Szabó Tamás', '2010A22-20'),
('Szűcs Zsuzsa', '2012E14-29'),
('Szűcs Zsuzsanna', '2016E18-12'),
('Szűcs Zsuzsanna', '2011A29-28'),
('Takács Álmos', '2017B26-27'),
('Takács Mónika', '2013F31-21'),
('Takács Tas', '2013B30-25'),
('Telkes Annamária', '2017C14-10');

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
