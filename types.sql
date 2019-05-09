-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Gegenereerd op: 09 mei 2019 om 21:26
-- Serverversie: 5.6.38
-- PHP-versie: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `24994_db`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `types`
--

CREATE TABLE `types` (
  `id` int(100) NOT NULL,
  `naam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `types`
--

INSERT INTO `types` (`id`, `naam`) VALUES
(1, 'ringen'),
(2, 'oorbellen'),
(3, 'kettingen'),
(4, 'armbanden'),
(5, 'trouwringen'),
(6, 'manchetknopen'),
(7, 'specials');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `types`
--
ALTER TABLE `types`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
