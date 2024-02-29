-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 04. 18:45
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

INSERT INTO `ebed_txt` (`nev`, `db`) VALUES
('Asztalos Erika', 3),
('Asztalos Judit', 2),
('Asztalos Richárd', 2),
('Bajai Dorottya', 2),
('Bajai Emese', 2),
('Bajai Frida', 2),
('Bajai Gergő', 2),
('Bajai Júlia', 2),
('Bajai Melinda', 2),
('Bajai Tamás', 2),
('Bajai Tas', 3),
('Bajai Zsuzsa', 2),
('Baráth Annamária', 2),
('Baráth Júlia', 2),
('Baráth Tas', 2),
('Beke Anna', 2),
('Beke Dóra', 4),
('Beke Éva', 2),
('Beke Ferenc', 2),
('Beke Szófia', 2),
('Beke Szundi', 2),
('Benedek Csaba', 3),
('Benedek Dorottya', 2),
('Benedek Frida', 3),
('Benedek Richárd', 2),
('Csobánki Anita', 2),
('Csobánki Annamária', 3),
('Csobánki Judit', 2),
('Csobánki Szilárd', 2),
('Csobánki Zsófia', 3),
('Fehér Annamária', 2),
('Fehér Csaba', 2),
('Fehér Elemér', 2),
('Fehér Erika', 2),
('Fehér Judit', 2),
('Fischer András', 2),
('Fischer Anita', 2),
('Fischer Elemér', 2),
('Fischer Ferenc', 2),
('Fischer Jolán', 2),
('Fischer Zsuzsa', 2),
('Gémes Erika', 4),
('Gémes Gergő', 2),
('Gémes Tamás', 2),
('Gémes Zsófia', 2),
('Gémes Zsuzsa', 2),
('Gondos Csaba', 3),
('Gondos Miska', 3),
('Hajas Edit', 3),
('Hajas Frida', 2),
('Hajas Lázár', 3),
('Hajas Tas', 2),
('Hajas Zsuzsanna', 2),
('Hegedűs Csaba', 3),
('Hegedűs Edit', 2),
('Hegedűs Elemér', 2),
('Hegedűs Éva', 2),
('Hegedűs Tamás', 2),
('Hegedűs Zoltán', 2),
('Hegedűs Zsófia', 2),
('Hegyi Edit', 2),
('Hegyi Erika', 3),
('Hegyi Éva', 2),
('Hegyi Tamás', 3),
('Illés Gergő', 2),
('Illés Tamás', 4),
('Kalapos Anita', 3),
('Kalapos Anna', 2),
('Kalapos Dóra', 3),
('Kalapos Emese', 2),
('Kalapos Éva', 2),
('Kalapos Regő', 2),
('Kalapos Zsófia', 2),
('Kalapos Zsolt', 2),
('Kalapos Zsuzsanna', 2),
('Kelemen Emese', 2),
('Kelemen Judit', 2),
('Kelemen Vidor', 2),
('Kerekes Emese', 2),
('Kerekes Frida', 2),
('Kerekes Jenő', 2),
('Kerekes Mónika', 2),
('Kerekes Zsófia', 2),
('Kiss Hapci', 2),
('Kiss Júlia', 2),
('Koós András', 2),
('Koós Annamária', 2),
('Koós Elemér', 2),
('Koós Emese', 2),
('Koós Ferenc', 4),
('Koós Gergő', 3),
('Koós Miska', 3),
('Koós Zoltán', 2),
('Koós Zsófia', 2),
('Kovács András', 2),
('Kovács Anita', 2),
('Kovács Frida', 2),
('Kovács Júlia', 3),
('Kovács Regő', 2),
('Lakatos András', 2),
('Lakatos Elemér', 2),
('Lakatos Éva', 2),
('Lakatos Jenő', 2),
('Lakatos Melinda', 2),
('Légrádi Dóra', 4),
('Légrádi Richárd', 2),
('Légrádi Vidor', 2),
('Légrádi Zsófia', 2),
('Légrádi Zsuzsanna', 2),
('Lóránt Gergő', 2),
('Lóránt Jolán', 2),
('Lóránt Judit', 2),
('Lóránt Szófia', 2),
('Marosi Álmos', 2),
('Marosi Dóra', 3),
('Marosi Krisztina', 3),
('Marosi Richárd', 2),
('Marosi Szundi', 2),
('Menyhárt Erika', 2),
('Menyhárt Júlia', 2),
('Menyhárt Miska', 2),
('Menyhárt Tas', 2),
('Menyhárt Zsuzsanna', 2),
('Mónosi Jenő', 2),
('Mónosi Jolán', 2),
('Mónosi Judit', 2),
('Mónosi Szundi', 3),
('Mónosi Tas', 2),
('Nagy Gergő', 4),
('Nagy Mónika', 2),
('Nagy Richárd', 2),
('Nagy Szilárd', 2),
('Nagy Zsuzsanna', 2),
('Nógrádi Emese', 2),
('Orosz Krisztina', 2),
('Orosz Richárd', 2),
('Orosz Szilárd', 3),
('Pesti Anita', 2),
('Pesti Éva', 2),
('Pesti Hanna', 2),
('Pesti Zsuzsa', 2),
('Somos Szilárd', 2),
('Somos Tamás', 2),
('Somos Tas', 2),
('Somos Zsuzsanna', 2),
('Szabó Annamária', 2),
('Szabó Csaba', 4),
('Szabó Gergő', 2),
('Szabó Jenő', 2),
('Szabó Júlia', 2),
('Szabó Krisztina', 2),
('Szabó Zsófia', 3),
('Szűcs Anita', 2),
('Szűcs Anna', 2),
('Szűcs Ferenc', 3),
('Szűcs Frida', 4),
('Szűcs Gergő', 3),
('Szűcs Hapci', 3),
('Szűcs Judit', 3),
('Szűcs Júlia', 2),
('Szűcs Lázár', 3),
('Szűcs Miska', 2),
('Szűcs Richárd', 2),
('Szűcs Tamás', 2),
('Szűcs Tas', 2),
('Szűcs Zoltán', 2),
('Szűcs Zsuzsa', 3),
('Szűcs Zsuzsanna', 3),
('Takács Anna', 2),
('Takács Csaba', 2),
('Takács Tas', 2),
('Telkes Annamária', 2),
('Telkes Júlia', 2),
('Tóth Edit', 2),
('Tóth Miska', 2),
('Tóth Szilárd', 2),
('Visegrádi Elemér', 3),
('Visegrádi Emese', 2),
('Visegrádi Erika', 2),
('Visegrádi Hapci', 2),
('Visegrádi Tamás', 2);

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
