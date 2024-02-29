-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 04. 18:56
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

INSERT INTO `ebed_txt` (`nev`, `arany`) VALUES
('Szűcs Frida', 0.1053),
('Szabó Richárd', 0.1053),
('Gémes Hapci', 0.1333),
('Bajai Szófia', 0.1579),
('Légrádi Lázár', 0.2105),
('Lakatos Éva', 0.2105),
('Lakatos András', 0.2105),
('Fehér Álmos', 0.2105),
('Illés Dóra', 0.2632),
('Magyar Jolán', 0.2632),
('Kalapos Zsolt', 0.2632),
('Légrádi Dóra', 0.2895),
('Visegrádi Annamária', 0.3158),
('Hajas Frida', 0.3158),
('Menyhárt Erika', 0.3158),
('Fehér Zsolt', 0.3158),
('Gémes Dóra', 0.3684),
('Marosi Szundi', 0.3684),
('Szűcs Lázár', 0.3684),
('Nógrádi Regő', 0.3684),
('Nagy Anna', 0.3684),
('Hegyi Zsolt', 0.4000),
('Tóth Anita', 0.4211),
('Szabó Mónika', 0.4211),
('Koós Lázár', 0.4211),
('Hegedűs Tamás', 0.4211),
('Kalapos Dóra', 0.4211),
('Szűcs Richárd', 0.4737),
('Magyar Zsolt', 0.4737),
('Visegrádi Melinda', 0.4737),
('Kelemen Vidor', 0.4737),
('Szűcs Hapci', 0.4737),
('Kerekes Krisztina', 0.5263),
('Kelemen Tas', 0.5263),
('Baráth Krisztina', 0.5263),
('Lóránt Gergő', 0.5263),
('Visegrádi Elemér', 0.5263),
('Benedek Csaba', 0.5263),
('Koós Vidor', 0.5263),
('Koós Richárd', 0.5789),
('Fischer Emese', 0.5789),
('Gémes Erika', 0.5789),
('Tóth Lázár', 0.6316),
('Fischer Zsuzsa', 0.6316),
('Budai Regő', 0.6316),
('Koós Zoltán', 0.6579),
('Menyhárt Zsuzsa', 0.6842),
('Fehér Elemér', 0.6842),
('Szűcs Szófia', 0.6842),
('Fischer András', 0.6842),
('Fehér Éva', 0.6842),
('Koós Elemér', 0.7368),
('Szűcs Miska', 0.7368),
('Beke Ferenc', 0.7368),
('Szabó Jenő', 0.7368),
('Szűcs Anna', 0.7368),
('Hegyi Ferenc', 0.7647),
('Hegedűs Éva', 0.7778),
('Fehér Erika', 0.7895),
('Kelemen Hapci', 0.7895),
('Menyhárt Zsolt', 0.7895),
('Fehér Ferenc', 0.7895),
('Kovács Regő', 0.8421),
('Marosi Zoltán', 0.8421),
('Kalapos Hanna', 0.8667),
('Baráth Annamária', 0.8889),
('Csobánki Anna', 0.8947),
('Mónosi Szundi', 0.8947),
('Telkes Annamária', 0.9474),
('Fischer Zoltán', 0.9474),
('Gondos Csaba', 0.9474),
('Kovács Dorottya', 1.0000),
('Nógrádi Júlia', 1.0000);

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
