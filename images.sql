-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Gegenereerd op: 09 mei 2019 om 21:25
-- Serverversie: 5.6.38
-- PHP-versie: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `24994_db`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `location` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `price` mediumtext NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `images`
--

INSERT INTO `images` (`image_id`, `location`, `title`, `description`, `price`, `type_id`) VALUES
(34, '../images/1549834076Schermafbeelding 2019-02-10 om 19.21.56.png', 'Dani ', 'djaklwdjaldjakldjaldjawl', '657', 1),
(35, '../images/1549834139Schermafbeelding 2019-02-05 om 22.13.05.png', 'Stats', 'dawdawdawd', '64', 3),
(36, '../images/1549834773Schermafbeelding 2019-02-05 om 22.13.05.png', 'Hall', 'dadadawdaw', '323', 1),
(37, '../images/1557436875cloud (1).png', 'test', 'test', '65', 3);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
