-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Mar 2021, 22:56
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pogoda`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prognozapogody`
--

CREATE TABLE `prognozapogody` (
  `date` varchar(30) DEFAULT NULL,
  `temp` varchar(30) DEFAULT NULL,
  `lowtemp` varchar(30) DEFAULT NULL,
  `sun` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `prognozapogody`
--

INSERT INTO `prognozapogody` (`date`, `temp`, `lowtemp`, `sun`) VALUES
('Środa 24.03', '32°C', '18°C', 'Przejściowe zachmurzenie'),
('Czwartek 25.03', '30°C', '18°C', 'Częściowo słonecznie'),
('Piątek 26.03', '32°C', '17°C', 'Częściowo słonecznie'),
('Sobota 27.03', '32°C', '15°C', 'Przejściowe zachmurzenie'),
('Niedziela 28.03', '32°C', '15°C', 'Przejściowe zachmurzenie'),
('Poniedziałek 29.03', '33°C', '19°C', 'Przejściowe zachmurzenie'),
('Wtorek 30.03', '31°C', '20°C', 'Przejściowe zachmurzenie'),
('Środa 31.03', '31°C', '20°C', 'Przelotne opady'),
('Czwartek 01.04', '31°C', '20°C', 'Przejściowe zachmurzenie'),
('Piątek 02.04', '30°C', '18°C', 'Zachmurzenie duże'),
('Sobota 03.04', '32°C', '21°C', 'Przelotne opady'),
('Niedziela 04.04', '32°C', '20°C', 'Przejściowe zachmurzenie'),
('Poniedziałek 05.04', '32°C', '20°C', 'Przeważnie słonecznie'),
('Wtorek 06.04', '29°C', '18°C', 'Przeważnie słonecznie'),
('Środa 07.04', '29°C', '18°C', 'Zachmurzenie duże'),
('Czwartek 08.04', '29°C', '19°C', 'Pochmurno'),
('Piątek 09.04', '28°C', '19°C', 'Przelotne opady'),
('Sobota 10.04', '29°C', '20°C', 'Zachmurzenie duże'),
('Niedziela 11.04', '29°C', '20°C', 'Częściowo słonecznie'),
('Poniedziałek 12.04', '29°C', '20°C', 'Częściowo słonecznie'),
('Wtorek 13.04', '29°C', '20°C', 'Przejściowe zachmurzenie'),
('Środa 14.04', '29°C', '20°C', 'Częściowo słonecznie'),
('Czwartek 15.04', '28°C', '19°C', 'Przejściowe zachmurzenie'),
('Piątek 16.04', '29°C', '19°C', 'Częściowo słonecznie'),
('Sobota 17.04', '28°C', '18°C', 'Częściowo słonecznie'),
('Niedziela 18.04', '29°C', '19°C', 'Przejściowe zachmurzenie'),
('Poniedziałek 19.04', '29°C', '19°C', 'Przejściowe zachmurzenie'),
('Wtorek 20.04', '27°C', '19°C', 'Zachmurzenie duże'),
('Środa 21.04', '28°C', '19°C', 'Przejściowe zachmurzenie'),
('Czwartek 22.04', '28°C', '18°C', 'Przeważnie słonecznie'),
('Piątek 23.04', '29°C', '20°C', 'Przeważnie słonecznie'),
('Sobota 24.04', '29°C', '20°C', 'Przejściowe zachmurzenie'),
('Niedziela 25.04', '28°C', '18°C', 'Częściowo słonecznie'),
('Poniedziałek 26.04', '27°C', '18°C', 'Przejściowe zachmurzenie'),
('Wtorek 27.04', '26°C', '19°C', 'Częściowo słonecznie'),
('Środa 28.04', '28°C', '18°C', 'Przeważnie słonecznie'),
('Czwartek 29.04', '28°C', '18°C', 'Częściowo słonecznie'),
('Piątek 30.04', '28°C', '18°C', 'Przeważnie słonecznie'),
('Sobota 01.05', '28°C', '19°C', 'Częściowo słonecznie'),
('Niedziela 02.05', '27°C', '18°C', 'Częściowo słonecznie'),
('Poniedziałek 03.05', '26°C', '17°C', 'Przejściowe zachmurzenie'),
('Wtorek 04.05', '27°C', '17°C', 'Częściowo słonecznie'),
('Środa 05.05', '28°C', '18°C', 'Częściowo słonecznie'),
('Czwartek 06.05', '28°C', '17°C', 'Przeważnie słonecznie'),
('Piątek 07.05', '26°C', '17°C', 'Częściowo słonecznie');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
