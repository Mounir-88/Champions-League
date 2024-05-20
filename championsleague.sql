-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 04:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `championsleague`
--

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `coach_id` int(11) NOT NULL,
  `coach_name` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `retired_player` varchar(1) DEFAULT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `socialMedia_ID` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `formation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`coach_id`, `coach_name`, `salary`, `retired_player`, `dob`, `nationality`, `socialMedia_ID`, `team_id`, `formation_id`) VALUES
(1, 'Edin Terzic', 1000000, 'r', '1982-03-17', 'Bosnian', 25, 5, 6),
(2, 'Luciano Spalletti', 1500000, 'n', '1959-03-07', 'Italian', NULL, 14, 1),
(3, 'Simone Inzaghi', 1200000, 'r', '1976-04-05', 'Italian', 27, 17, 3),
(4, 'Cristophe Galtier', 1100000, 'n', '1966-08-28', 'French', NULL, 9, 3),
(5, 'Sergio Conceicao', 1300000, 'r', '1974-11-15', 'Portuguese', 28, 18, 2),
(6, 'Frank Lampard', 900000, 'r', '1978-06-20', 'English', 18, 6, 7),
(7, 'Oliver Glasner', 950000, 'n', '1974-08-04', 'Austrian', NULL, 13, 2),
(8, 'Thomas Tuchel', 1400000, 'n', '1973-08-29', 'German', NULL, 10, 2),
(9, 'Pep Guardiola', 2000000, 'r', '1971-01-18', 'Spanish', 18, 8, 4),
(10, 'Marco Rose', 1050000, 'n', '1976-09-11', 'German', 19, 7, 2),
(11, 'Rik De Mil', 850000, 'n', '1985-07-03', 'Belgian', 19, 15, 3),
(12, 'Roger Schmidt', 1150000, 'r', '1967-03-13', 'German', NULL, 16, 2),
(13, 'Stefano Pioli', 1100000, 'n', '1965-10-20', 'Italian', 22, 11, 5),
(14, 'Ryan Mason', 850000, 'r', '1991-06-13', 'English', NULL, 12, 5),
(15, 'Carlo Ancelotti', 1800000, 'r', '1959-06-10', 'Italian', 19, 4, 1),
(16, 'Jurgen Klopp', 1700000, 'r', '1967-06-16', 'German', NULL, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `formation`
--

CREATE TABLE `formation` (
  `formation_id` int(11) NOT NULL,
  `formation_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `formation`
--

INSERT INTO `formation` (`formation_id`, `formation_name`) VALUES
(1, '4-3-3'),
(2, '4-2-3-1'),
(3, '3-5-2'),
(4, '3-2-4-1'),
(5, '3-4-2-1'),
(6, '4-1-4-1'),
(7, '3-4-3');

-- --------------------------------------------------------

--
-- Table structure for table `kitcolor`
--

CREATE TABLE `kitcolor` (
  `kit_id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `kitType` varchar(10) DEFAULT NULL CHECK (`kitType` in ('Home','Away')),
  `kitColor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kitcolor`
--

INSERT INTO `kitcolor` (`kit_id`, `team_id`, `kitType`, `kitColor`) VALUES
(1, 3, 'home', 'red'),
(2, 3, 'away', 'white'),
(3, 4, 'home', 'white'),
(4, 4, 'away', 'lavender'),
(5, 5, 'home', 'yellow (black stripes vertically)'),
(6, 5, 'away', 'black'),
(7, 6, 'home', 'blue'),
(8, 6, 'away', 'white (blue stripes on it horizontally)'),
(9, 7, 'home', 'white'),
(10, 7, 'away', 'red'),
(11, 8, 'home', 'Sky blue'),
(12, 8, 'away', 'Black and red'),
(13, 9, 'home', 'dynamic blue (white and red stripes)'),
(14, 9, 'away', 'white'),
(15, 10, 'home', 'red'),
(16, 10, 'away', 'white'),
(17, 11, 'home', 'black (with red stripes vertically)'),
(18, 11, 'away', 'white'),
(19, 12, 'home', 'white'),
(20, 12, 'away', 'dark blue'),
(21, 13, 'home', 'green (white strips horizontally)'),
(22, 13, 'away', 'black (small yellow parts)'),
(23, 14, 'home', 'blue'),
(24, 14, 'away', 'white'),
(25, 15, 'home', 'blue (with black stripes vertically)'),
(26, 15, 'away', 'white'),
(27, 16, 'home', 'red'),
(28, 16, 'away', 'yellow'),
(29, 17, 'home', 'striped vertically black and blue'),
(30, 17, 'away', 'white'),
(31, 18, 'home', 'blue (with white stripes vertically)'),
(32, 18, 'away', 'yellow');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `matches_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `homeTeam_id` int(11) DEFAULT NULL,
  `awayTeam_id` int(11) DEFAULT NULL,
  `homeTeam_score` int(11) DEFAULT NULL,
  `awayTeam_score` int(11) DEFAULT NULL,
  `winner_id` int(11) DEFAULT NULL,
  `spectators` int(11) DEFAULT NULL,
  `referee_id` int(11) DEFAULT NULL,
  `stadium_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`matches_id`, `date`, `homeTeam_id`, `awayTeam_id`, `homeTeam_score`, `awayTeam_score`, `winner_id`, `spectators`, `referee_id`, `stadium_id`) VALUES
(2, '2023-02-22', 7, 8, 1, 1, NULL, 45228, 18, 2),
(3, '2023-03-14', 8, 7, 0, 7, 4, 52038, 1, 1),
(4, '2023-02-15', 15, 16, 0, 2, 17, 24136, 17, 3),
(5, '2023-03-07', 16, 15, 5, 1, 17, 60960, 2, 4),
(6, '2023-02-21', 3, 4, 2, 5, 4, 52337, 16, NULL),
(7, '2023-03-15', 4, 3, 1, 0, 4, 63127, 3, 6),
(8, '2023-02-14', 11, 12, 1, 0, 11, 74320, 16, 7),
(9, '2023-03-08', 12, 11, 0, 0, NULL, 61602, 4, 8),
(10, '2023-02-21', 13, 14, 0, 2, 14, 47500, 10, 9),
(11, '2023-03-15', 14, 13, 3, 0, 14, 49082, 5, 10),
(12, '2023-02-15', 5, 6, 1, 0, 6, 81365, 10, 11),
(13, '2023-03-07', 6, 5, 2, 0, 7, 38882, 5, 12),
(14, '2023-02-22', 17, 18, 1, 0, 17, 75374, 15, 7),
(15, '2023-03-14', 18, 17, 0, 0, NULL, 48015, 7, 13),
(16, '2023-02-14', 10, 9, 0, 1, 9, 46435, 13, 14),
(17, '2023-03-08', 9, 10, 2, 0, 9, 75000, 8, 15),
(18, '2023-04-12', 4, 6, 2, 0, 4, 63142, 14, 6),
(19, '2023-04-18', 6, 4, 0, 2, 5, 39453, 17, 12),
(20, '2023-04-11', 16, 17, 0, 2, 17, 62594, 13, 16),
(21, '2023-04-19', 17, 16, 3, 3, NULL, 75380, 9, 7),
(22, '2023-04-11', 8, 10, 3, 0, 8, 52257, 10, 1),
(23, '2023-04-19', 10, 8, 1, 1, NULL, 75000, 4, 15),
(24, '2023-04-12', 11, 14, 1, 0, 11, 74742, 11, 7),
(25, '2023-04-18', 14, 11, 1, 1, NULL, 52728, 7, 10),
(26, '2023-05-10', 11, 17, 0, 2, 17, 75532, 15, 7),
(27, '2023-05-16', 17, 11, 1, 0, 17, 75567, 4, 7),
(28, '2023-05-09', 4, 8, 1, 1, NULL, 63485, 10, 6),
(29, '2023-05-17', 8, 4, 4, 0, 8, 52313, 7, 1),
(30, '2023-06-10', 8, 17, 1, 0, 8, 71412, 7, 17);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `Nationality` varchar(100) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `Position` varchar(100) DEFAULT NULL,
  `Shirt_Number` int(11) NOT NULL,
  `Photo_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `player_name`, `dob`, `Nationality`, `team_id`, `Position`, `Shirt_Number`, `Photo_path`) VALUES
(2, 'Virgil van Dijk', '1991-07-08', 'Dutch', 3, 'Defender', 4, NULL),
(3, 'Nacho Fernandez', '1990-01-18', 'Spanish', 4, 'Defender', 6, NULL),
(4, 'Emre Can', '1994-01-12', 'German', 5, 'Midfielder', 23, NULL),
(5, 'Reece James', '1999-12-08', 'English', 6, 'Defender', 24, NULL),
(6, 'Willi Orban', '1992-11-03', 'Hungarian', 7, 'Defender', 4, NULL),
(7, 'Kyle Walker', '1990-05-28', 'English', 8, 'Defender', 2, NULL),
(8, 'Marquinhos', '1994-05-14', 'Brazilian', 9, 'Defender', 5, NULL),
(9, 'Manuel Neuer', '1986-03-27', 'German', 10, 'Goalkeeper', 1, NULL),
(10, 'Davide Calabria', '1996-12-06', 'Italian', 11, 'Defender', 2, NULL),
(11, 'Son Heung-min', '1992-07-08', 'South Korean', 12, 'Forward', 7, NULL),
(12, 'Sebastian Rode', '1990-10-11', 'German', 13, 'Midfielder', 17, NULL),
(13, 'Lorenzo Insigne', '1991-06-04', 'Italian', 14, 'Forward', 24, NULL),
(14, 'Hans Vanaken', '1992-08-14', 'Belgian', 15, 'Midfielder', 10, NULL),
(15, 'Nicolas Otamendi', '1988-02-12', 'Argentinian', 16, 'Defender', 30, NULL),
(16, 'Lautaro Martinez', '1997-08-22', 'Argentinian', 17, 'Forward', 10, NULL),
(17, 'Pepe', '1983-02-26', 'Portuguese', 18, 'Defender', 3, NULL),
(18, 'Adrian', '1987-01-01', 'Spanish', 3, 'Goalkeeper', 13, NULL),
(19, 'Alisson', '1992-10-02', 'Brazilian', 3, 'Goalkeeper', 1, NULL),
(20, 'Harvey Davies', '2001-05-15', 'English', 3, 'Goalkeeper', 33, NULL),
(21, 'Caoimhin Kelleher', '1998-11-23', 'Irish', 3, 'Goalkeeper', 62, NULL),
(22, 'Trent Alexander-Arnold', '1998-10-07', 'English', 3, 'Defender', 66, NULL),
(23, 'Joe Gomez', '1997-05-23', 'English', 3, 'Defender', 12, NULL),
(24, 'Ibrahima Konate', '1999-05-25', 'French', 3, 'Defender', 5, NULL),
(25, 'Joel Matip', '1991-08-08', 'Cameroonian', 3, 'Defender', 32, NULL),
(26, 'Nathaniel Phillips', '1997-03-21', 'English', 3, 'Defender', 47, NULL),
(27, 'Conor Ramsey', '2003-01-30', 'Scottish', 3, 'Defender', 74, NULL),
(28, 'Andrew Robertson', '1994-03-11', 'Scottish', 3, 'Defender', 26, NULL),
(29, 'Kostas Tsimikas', '1996-05-12', 'Greek', 3, 'Defender', 21, NULL),
(30, 'Rhys Williams', '2001-02-03', 'English', 3, 'Defender', 46, NULL),
(31, 'Arthur', '1996-03-15', 'Brazilian', 3, 'Midfielder', 8, NULL),
(32, 'Stefan Bajcetic', '2004-07-11', 'Serbian', 3, 'Midfielder', 75, NULL),
(33, 'Ben Clark', '2003-09-19', 'English', 3, 'Midfielder', 49, NULL),
(34, 'Harvey Elliott', '2003-04-04', 'English', 3, 'Midfielder', 67, NULL),
(35, 'Fabinho', '1993-10-23', 'Brazilian', 3, 'Midfielder', 3, NULL),
(36, 'Melkamu Frauendorf', '2005-02-08', 'German', 3, 'Midfielder', 88, NULL),
(37, 'Jordan Henderson', '1990-06-17', 'English', 3, 'Midfielder', 14, NULL),
(38, 'Curtis Jones', '2001-01-30', 'English', 3, 'Midfielder', 17, NULL),
(39, 'Naby Keita', '1995-02-10', 'Guinean', 3, 'Midfielder', 8, NULL),
(40, 'James Milner', '1986-01-04', 'English', 3, 'Midfielder', 7, NULL),
(41, 'Alex Oxlade-Chamberlain', '1993-08-15', 'English', 3, 'Midfielder', 15, NULL),
(42, 'Thiago', '1991-04-11', 'Spanish', 3, 'Midfielder', 6, NULL),
(43, 'Luis Diaz', '1997-01-13', 'Colombian', 3, 'Forward', 23, NULL),
(44, 'Diogo Jota', '1996-12-04', 'Portuguese', 3, 'Forward', 20, NULL),
(45, 'Bobby Duncan', '2001-06-26', 'English', 3, 'Forward', 43, NULL),
(46, 'Fidel Carita', '2004-11-18', 'Spanish', 3, 'Forward', 54, NULL),
(47, 'Cody Gakpo', '1999-05-07', 'Dutch', 3, 'Forward', 23, NULL),
(48, 'Diego Nunez', '2002-09-12', 'Uruguayan', 3, 'Forward', 44, NULL),
(49, 'Roberto Firmino', '1991-10-02', 'Brazilian', 3, 'Forward', 9, NULL),
(50, 'Mohamed Salah', '1992-06-15', 'Egyptian', 3, 'Forward', 11, NULL),
(51, 'Liam Stewart', '2001-03-01', 'English', 3, 'Forward', 59, NULL),
(52, 'Thibaut Courtois', '1992-05-11', 'Belgian', 4, 'Goalkeeper', 1, NULL),
(53, 'Diego Pineiro', '2000-01-01', 'Spanish', 4, 'Goalkeeper', 13, NULL),
(54, 'Francisco Portillo', '1998-03-25', 'Spanish', 4, 'Goalkeeper', 33, NULL),
(55, 'Luis Canizares', '1999-08-17', 'Spanish', 4, 'Goalkeeper', 62, NULL),
(56, 'Luca Zidane', '1998-05-13', 'French', 4, 'Goalkeeper', 27, NULL),
(57, 'Andriy Lunin', '1999-02-11', 'Ukrainian', 4, 'Goalkeeper', 25, NULL),
(58, 'Miguel de Luis', '2002-09-05', 'Spanish', 4, 'Goalkeeper', 12, NULL),
(59, 'David Alaba', '1992-06-24', 'Austrian', 4, 'Defender', 4, NULL),
(60, 'Alvaro Odriozola', '1995-12-14', 'Spanish', 4, 'Defender', 19, NULL),
(61, 'Dani Carvajal', '1992-01-11', 'Spanish', 4, 'Defender', 2, NULL),
(62, 'Eder Militao', '1998-01-18', 'Brazilian', 4, 'Defender', 3, NULL),
(63, 'Eduardo Camavinga', '2003-11-10', 'French', 4, 'Midfielder', 25, NULL),
(64, 'Dani Ceballos', '1996-08-07', 'Spanish', 4, 'Midfielder', 8, NULL),
(65, 'Dotor', '2003-02-12', 'Spanish', 4, 'Midfielder', 66, NULL),
(66, 'Toni Kroos', '1990-01-04', 'German', 4, 'Midfielder', 8, NULL),
(67, 'Luka Modric', '1985-09-09', 'Croatian', 4, 'Midfielder', 10, NULL),
(68, 'Nacho Paz', '2001-07-22', 'Spanish', 4, 'Midfielder', 57, NULL),
(69, 'Sergio Arribas', '2002-03-19', 'Spanish', 4, 'Midfielder', 30, NULL),
(70, 'Aurelien Tchouameni', '2000-01-27', 'French', 4, 'Midfielder', 22, NULL),
(71, 'Federico Valverde', '1998-07-22', 'Uruguayan', 4, 'Midfielder', 15, NULL),
(72, 'Alvaro Rodriguez', '1995-04-15', 'Spanish', 4, 'Forward', 7, NULL),
(73, 'Karim Benzema', '1987-12-19', 'French', 4, 'Forward', 9, NULL),
(74, 'Eden Hazard', '1991-01-07', 'Belgian', 4, 'Forward', 7, NULL),
(75, 'Marco Asensio', '1996-01-21', 'Spanish', 4, 'Forward', 11, NULL),
(76, 'Mariano Diaz', '1993-08-01', 'Dominican', 4, 'Forward', 24, NULL),
(77, 'Rodrygo Goes', '2001-01-09', 'Brazilian', 4, 'Forward', 25, NULL),
(78, 'Vinicius Junior', '2000-07-12', 'Brazilian', 4, 'Forward', 20, NULL),
(79, 'Bradley Austin', '1993-05-27', 'English', 12, 'Goalkeeper', 13, NULL),
(80, 'Fraser Forster', '1988-03-17', 'English', 12, 'Goalkeeper', 32, NULL),
(81, 'Hugo Lloris', '1986-12-26', 'French', 12, 'Goalkeeper', 1, NULL),
(82, 'Alfie Whiteman', '1998-01-02', 'English', 12, 'Goalkeeper', 41, NULL),
(83, 'Ben Davies', '1993-04-24', 'Welsh', 12, 'Defender', 33, NULL),
(84, 'Eric Dier', '1994-01-15', 'English', 12, 'Defender', 15, NULL),
(85, 'Emerson Royal', '1999-04-14', 'Brazilian', 12, 'Defender', 12, NULL),
(86, 'Clement Lenglet', '1995-06-17', 'French', 12, 'Defender', 5, NULL),
(87, 'Pedro Porro', '1999-02-13', 'Spanish', 12, 'Defender', 2, NULL),
(88, 'Cristian Romero', '1998-04-27', 'Argentinian', 12, 'Defender', 4, NULL),
(89, 'Davinson Sanchez', '1996-06-12', 'Colombian', 12, 'Defender', 6, NULL),
(90, 'Japhet Tanganga', '1999-03-31', 'English', 12, 'Defender', 25, NULL),
(91, 'Rodrigo Bentancur', '1997-06-25', 'Uruguayan', 12, 'Midfielder', 30, NULL),
(92, 'Yves Bissouma', '1996-08-30', 'Malian', 12, 'Midfielder', 8, NULL),
(93, 'Pierre-Emile Hojbjerg', '1995-08-05', 'Danish', 12, 'Midfielder', 5, NULL),
(94, 'Ivan Perisic', '1989-02-02', 'Croatian', 12, 'Midfielder', 4, NULL),
(95, 'George Abbott', '2000-05-12', 'English', 12, 'Midfielder', 16, NULL),
(96, 'Matty Craig', '2001-09-18', 'English', 12, 'Midfielder', 28, NULL),
(97, 'Harvey Elliott', '2003-04-04', 'English', 12, 'Midfielder', 67, NULL),
(98, 'Rohan Mundle', '2000-12-30', 'English', 12, 'Midfielder', 42, NULL),
(99, 'Paulo Sarr', '1999-11-16', 'Portuguese', 12, 'Midfielder', 21, NULL),
(100, 'Ryan Sessegnon', '2000-05-18', 'English', 12, 'Midfielder', 19, NULL),
(101, 'Oliver Skipp', '2000-09-16', 'English', 12, 'Midfielder', 17, NULL),
(102, 'Yago Santiago', '2001-07-22', 'Spanish', 12, 'Midfielder', 14, NULL),
(103, 'Arnaut Danjuma', '1996-05-06', 'Dutch', 12, 'Forward', 12, NULL),
(104, 'Harry Kane', '1993-07-28', 'English', 12, 'Forward', 10, NULL),
(105, 'Dejan Kulusevski', '2000-04-25', 'Swedish', 12, 'Forward', 21, NULL),
(106, 'Lucas Moura', '1992-08-13', 'Brazilian', 12, 'Forward', 27, NULL),
(107, 'Richarlison', '1997-05-10', 'Brazilian', 12, 'Forward', 9, NULL),
(108, 'Mike Maignan', '1995-07-03', 'French', 11, 'Goalkeeper', 16, NULL),
(109, 'Antonio Mirante', '1983-07-08', 'Italian', 11, 'Goalkeeper', 90, NULL),
(110, 'Luca Nava', '2003-03-17', 'Italian', 11, 'Goalkeeper', 55, NULL),
(111, 'Ciprian Tatarusanu', '1985-02-09', 'Romanian', 11, 'Goalkeeper', 1, NULL),
(112, 'Daniel Vasquez', '2002-09-29', 'Italian', 11, 'Goalkeeper', 22, NULL),
(113, 'Fode Toure', '1997-06-28', 'Senegalese', 11, 'Defender', 5, NULL),
(114, 'Alessandro Bozzolan', '2002-03-11', 'Italian', 11, 'Defender', 45, NULL),
(115, 'Davide Calabria', '1996-12-06', 'Italian', 11, 'Defender', 2, NULL),
(116, 'Alessandro Coubis', '2001-07-27', 'Italian', 11, 'Defender', 56, NULL),
(117, 'Sergino Dest', '2000-11-03', 'American', 11, 'Defender', 20, NULL),
(118, 'Alessandro Florenzi', '1991-03-11', 'Italian', 11, 'Defender', 24, NULL),
(119, 'Matteo Gabbia', '1999-10-21', 'Italian', 11, 'Defender', 46, NULL),
(120, 'Theo Hernandez', '1997-10-06', 'French', 11, 'Defender', 19, NULL),
(121, 'Pierre Kalulu', '2000-06-05', 'French', 11, 'Defender', 20, NULL),
(122, 'Simon Kjaer', '1989-03-26', 'Danish', 11, 'Defender', 24, NULL),
(123, 'Mohamed Thiaw', '1999-02-20', 'Senegalese', 11, 'Defender', 27, NULL),
(124, 'Fran Tomari', '2003-01-22', 'Italian', 11, 'Defender', 39, NULL),
(125, 'Yacine Adli', '2000-07-29', 'French', 11, 'Midfielder', 23, NULL),
(126, 'Tiemoue Bakayoko', '1994-08-17', 'French', 11, 'Midfielder', 14, NULL),
(127, 'Ismael Bennacer', '1997-12-01', 'Algerian', 11, 'Midfielder', 4, NULL),
(128, 'Brahim Diaz', '1999-08-03', 'Spanish', 11, 'Midfielder', 21, NULL),
(129, 'Charles De Ketelaere', '2001-03-22', 'Belgian', 11, 'Midfielder', 30, NULL),
(130, 'Alessio Guarnone', '2000-04-15', 'Italian', 11, 'Midfielder', 25, NULL),
(131, 'Rade Krunic', '1993-10-07', 'Bosnian', 11, 'Midfielder', 33, NULL),
(132, 'Tommaso Pobega', '1999-07-15', 'Italian', 11, 'Midfielder', 75, NULL),
(133, 'Sandro Tonali', '2000-05-08', 'Italian', 11, 'Midfielder', 11, NULL),
(134, 'Attila Vrancx', '2001-09-29', 'Hungarian', 11, 'Midfielder', 36, NULL),
(135, 'Olivier Giroud', '1986-09-30', 'French', 11, 'Forward', 9, NULL),
(136, 'Zlatan Ibrahimovic', '1981-10-03', 'Swedish', 11, 'Forward', 11, NULL),
(137, 'Divock Origi', '1995-04-18', 'Belgian', 11, 'Forward', 17, NULL),
(138, 'Rafael Leao', '1999-06-10', 'Portuguese', 11, 'Forward', 17, NULL),
(139, 'Ante Rebic', '1993-09-21', 'Croatian', 11, 'Forward', 12, NULL),
(140, 'Alexis Saelemaekers', '1999-06-27', 'Belgian', 11, 'Forward', 56, NULL),
(141, 'Joe Bursik', '1999-10-28', 'English', 15, 'Goalkeeper', 1, NULL),
(142, 'Senne Lammens', '2002-01-17', 'Belgian', 15, 'Goalkeeper', 25, NULL),
(143, 'Hubert Maton', '2000-08-05', 'Belgian', 15, 'Goalkeeper', 32, NULL),
(144, 'Simon Mignolet', '1988-03-06', 'Belgian', 15, 'Goalkeeper', 88, NULL),
(145, 'Nathan Shinton', '2001-12-10', 'English', 15, 'Goalkeeper', 57, NULL),
(146, 'Kjell Vroman', '2002-06-30', 'Belgian', 15, 'Goalkeeper', 65, NULL),
(147, 'Dedryck Boyata', '1990-11-28', 'Belgian', 15, 'Defender', 27, NULL),
(148, 'Noa Lang', '1999-06-17', 'Dutch', 15, 'Defender', 26, NULL),
(149, 'Daan De Ruere', '2000-03-02', 'Belgian', 15, 'Defender', 18, NULL),
(150, 'Jack Hendry', '1995-05-07', 'Scottish', 15, 'Defender', 4, NULL),
(151, 'Brandon Mechele', '1993-01-28', 'Belgian', 15, 'Defender', 44, NULL),
(152, 'Brian Meijer', '2000-11-11', 'Belgian', 15, 'Defender', 39, NULL),
(153, 'Denys Odoi', '1988-05-27', 'Belgian', 15, 'Defender', 16, NULL),
(154, 'Juan Ordonez', '2000-02-06', 'Uruguayan', 15, 'Defender', 3, NULL),
(155, 'Keanu Sabbe', '2003-09-28', 'Belgian', 15, 'Defender', 33, NULL),
(156, 'Julien Seys', '1999-08-14', 'Belgian', 15, 'Defender', 22, NULL),
(157, 'Jelle Spileers', '2001-03-25', 'Belgian', 15, 'Defender', 19, NULL),
(158, 'Abdoulie Sylla', '2000-06-19', 'Senegalese', 15, 'Defender', 5, NULL),
(159, 'Lenny Audoor', '2003-05-10', 'Belgian', 15, 'Midfielder', 8, NULL),
(160, 'Samuel Homma', '2000-11-23', 'Belgian', 15, 'Midfielder', 17, NULL),
(161, 'Christian Nielsen', '2000-02-14', 'Danish', 15, 'Midfielder', 6, NULL),
(162, 'Reggie Onyedika', '2002-09-21', 'Belgian', 15, 'Midfielder', 14, NULL),
(163, 'Owen Otasowie', '2001-04-26', 'American', 15, 'Midfielder', 20, NULL),
(164, 'Mats Rits', '1993-07-18', 'Belgian', 15, 'Midfielder', 26, NULL),
(165, 'Carl Sandra', '2000-12-03', 'Belgian', 15, 'Midfielder', 7, NULL),
(166, 'Hans Vanaken', '1992-08-24', 'Belgian', 15, 'Midfielder', 20, NULL),
(167, 'Tahvon Buchanan', '1999-08-14', 'Canadian', 15, 'Forward', 10, NULL),
(168, 'Ferran Jutgla', '2001-06-02', 'Spanish', 15, 'Forward', 18, NULL),
(169, 'Noa Lang', '1999-06-17', 'Dutch', 15, 'Forward', 22, NULL),
(170, 'Aldo Nusa', '2000-04-07', 'Belgian', 15, 'Forward', 29, NULL),
(171, 'David Perez', '2002-02-18', 'Spanish', 15, 'Forward', 11, NULL),
(172, 'Anders Olsen', '2001-09-08', 'Norwegian', 15, 'Forward', 14, NULL),
(173, 'Kamal Sowah', '2000-10-13', 'Ghanaian', 15, 'Forward', 23, NULL),
(174, 'Cisse Talbi', '2001-01-03', 'Belgian', 15, 'Forward', 19, NULL),
(175, 'Rudolf Vermant', '2002-05-22', 'Belgian', 15, 'Forward', 17, NULL),
(176, 'Roman Yaremchuk', '1995-11-27', 'Ukrainian', 15, 'Forward', 9, NULL),
(177, 'Anderson Gomez', '1996-03-25', 'Paraguayan', 16, 'Goalkeeper', 1, NULL),
(178, 'Leonardo Kokubo', '2001-07-19', 'Japanese', 16, 'Goalkeeper', 22, NULL),
(179, 'Sandro Soares', '1998-10-11', 'Brazilian', 16, 'Goalkeeper', 31, NULL),
(180, 'Odisseas Vlachodimos', '1994-04-26', 'Greek', 16, 'Goalkeeper', 99, NULL),
(181, 'Alex Grimaldo', '1995-09-20', 'Spanish', 16, 'Defender', 3, NULL),
(182, 'André Almeida', '1990-09-10', 'Portuguese', 16, 'Defender', 34, NULL),
(183, 'Arthur Bahia', '2001-08-19', 'Brazilian', 16, 'Defender', 14, NULL),
(184, 'Gilberto', '1993-03-27', 'Brazilian', 16, 'Defender', 15, NULL),
(185, 'João Tomé', '2000-05-07', 'Portuguese', 16, 'Defender', 6, NULL),
(186, 'Lucas Veríssimo', '1995-07-02', 'Brazilian', 16, 'Defender', 4, NULL),
(187, 'Morato', '2001-08-01', 'Brazilian', 16, 'Defender', 2, NULL),
(188, 'Nicolás Otamendi', '1988-02-12', 'Argentinian', 16, 'Defender', 30, NULL),
(189, 'Ruben Dias', '1997-05-14', 'Portuguese', 16, 'Defender', 5, NULL),
(190, 'Ricardo Rodrigues', '1999-06-16', 'Portuguese', 16, 'Defender', 29, NULL),
(191, 'Marcus Ristie', '2000-11-02', 'Brazilian', 16, 'Defender', 25, NULL),
(192, 'François Aursnes', '1994-12-11', 'Norwegian', 16, 'Midfielder', 8, NULL),
(193, 'Chiquinho', '1994-08-10', 'Portuguese', 16, 'Midfielder', 19, NULL),
(194, 'Florentino Luís', '1999-08-19', 'Portuguese', 16, 'Midfielder', 6, NULL),
(195, 'João Félix', '1999-11-10', 'Portuguese', 16, 'Midfielder', 10, NULL),
(196, 'João Mário', '1993-01-19', 'Portuguese', 16, 'Midfielder', 17, NULL),
(197, 'Jovane Cabral', '1998-06-14', 'Cape Verdean', 16, 'Midfielder', 77, NULL),
(198, 'Carlo Ndour', '1999-03-21', 'Senegalese', 16, 'Midfielder', 28, NULL),
(199, 'David Neres', '1997-03-03', 'Brazilian', 16, 'Forward', 7, NULL),
(200, 'Daniel Moreira', '1999-11-25', 'Portuguese', 16, 'Forward', 11, NULL),
(201, 'Julian Draxler', '1993-09-20', 'German', 16, 'Forward', 23, NULL),
(202, 'Gonçalo Guedes', '1996-11-29', 'Portuguese', 16, 'Forward', 9, NULL),
(203, 'Gil Dias', '1996-05-14', 'Portuguese', 16, 'Forward', 20, NULL),
(204, 'Patrick Musa', '2002-02-18', 'Nigerian', 16, 'Forward', 14, NULL),
(205, 'Ronaldo Silva', '1998-10-17', 'Brazilian', 16, 'Forward', 16, NULL),
(206, 'Andreas Schjelderup', '2001-04-13', 'Norwegian', 16, 'Forward', 29, NULL),
(207, 'Carlos Tengstedt', '1999-09-14', 'Swedish', 16, 'Forward', 17, NULL),
(208, 'Janis Blaswich', '1991-10-08', 'German', 7, 'Goalkeeper', 21, NULL),
(209, 'Tim Schlieck', '1998-05-22', 'German', 7, 'Goalkeeper', 36, NULL),
(210, 'Peter Gulácsi', '1990-05-06', 'Hungarian', 7, 'Goalkeeper', 1, NULL),
(211, 'Jonas Nickisch', '2002-03-14', 'German', 7, 'Goalkeeper', 34, NULL),
(212, 'Ørjan Nyland', '1990-09-10', 'Norwegian', 7, 'Goalkeeper', 13, NULL),
(213, 'Lukas Klostermann', '1996-06-03', 'German', 7, 'Defender', 16, NULL),
(214, 'Marcel Halstenberg', '1991-09-27', 'German', 7, 'Defender', 23, NULL),
(215, 'Benjamin Henrichs', '1997-02-23', 'German', 7, 'Defender', 39, NULL),
(216, 'Josko Gvardiol', '2002-01-23', 'Croatian', 7, 'Defender', 32, NULL),
(217, 'Abdou Diallo', '1996-05-04', 'French', 7, 'Defender', 37, NULL),
(218, 'Stipe Bačelić-Grgić', '1997-08-19', 'Croatian', 7, 'Defender', 25, NULL),
(219, 'Mohamed Simakan', '2000-05-03', 'French', 7, 'Defender', 2, NULL),
(220, 'David Raum', '1998-04-22', 'German', 7, 'Defender', 22, NULL),
(221, 'Konrad Laimer', '1997-05-27', 'Austrian', 7, 'Midfielder', 27, NULL),
(222, 'Xaver Schlager', '1997-09-28', 'Austrian', 7, 'Midfielder', 24, NULL),
(223, 'Emil Forsberg', '1991-10-23', 'Swedish', 7, 'Midfielder', 10, NULL),
(224, 'Amadou Haidara', '1998-01-31', 'Malian', 7, 'Midfielder', 8, NULL),
(225, 'Dani Olmo', '1998-05-07', 'Spanish', 7, 'Midfielder', 7, NULL),
(226, 'Christopher Nkunku', '1997-11-14', 'French', 7, 'Forward', 18, NULL),
(227, 'Timo Werner', '1996-03-06', 'German', 7, 'Forward', 11, NULL),
(228, 'Andre Silva', '1995-11-06', 'Portuguese', 7, 'Forward', 19, NULL),
(229, 'Yussuf Poulsen', '1994-06-15', 'Danish', 7, 'Forward', 9, NULL),
(230, 'Ederson', '1993-08-17', 'Brazilian', 8, 'Goalkeeper', 31, NULL),
(231, 'Scott Carson', '1985-09-03', 'English', 8, 'Goalkeeper', 33, NULL),
(232, 'Santiago Ortega', '1992-11-06', 'German', 8, 'Goalkeeper', 18, NULL),
(233, 'Manuel Akanji', '1995-07-19', 'Swiss', 8, 'Defender', 25, NULL),
(234, 'Rúben Dias', '1997-05-14', 'Portuguese', 8, 'Defender', 3, NULL),
(235, 'Nathan Ake', '1995-02-18', 'Dutch', 8, 'Defender', 6, NULL),
(236, 'John Stones', '1994-05-28', 'English', 8, 'Defender', 5, NULL),
(237, 'Benjamin Mendy', '1994-07-17', 'French', 8, 'Defender', 22, NULL),
(238, 'Sébastien Charles', '1999-04-15', 'French', 8, 'Defender', 62, NULL),
(239, 'Ryan Lewis', '1998-11-20', 'English', 8, 'Defender', 29, NULL),
(240, 'Aymeric Laporte', '1994-05-27', 'French', 8, 'Defender', 14, NULL),
(241, 'Kyle Walker', '1990-05-28', 'English', 8, 'Defender', 2, NULL),
(242, 'Sergio Gomez', '1997-07-20', 'Spanish', 8, 'Defender', 21, NULL),
(243, 'Rodri', '1996-06-22', 'Spanish', 8, 'Midfielder', 16, NULL),
(244, 'Bernardo Silva', '1994-08-10', 'Portuguese', 8, 'Midfielder', 20, NULL),
(245, 'Kevin De Bruyne', '1991-06-28', 'Belgian', 8, 'Midfielder', 17, NULL),
(246, 'Ilkay Gundogan', '1990-10-24', 'German', 8, 'Midfielder', 8, NULL),
(247, 'Jack Grealish', '1995-09-10', 'English', 8, 'Midfielder', 10, NULL),
(248, 'Kalvin Phillips', '1995-12-02', 'English', 8, 'Midfielder', 4, NULL),
(249, 'Andy Robertson', '1994-03-11', 'Scottish', 8, 'Midfielder', 93, NULL),
(250, 'Niall O\'Reilly', '1998-04-20', 'Irish', 8, 'Midfielder', 75, NULL),
(251, 'Cole Palmer', '2001-04-05', 'English', 8, 'Midfielder', 80, NULL),
(252, 'Miguel Perrone', '2001-08-15', 'Argentinian', 8, 'Midfielder', 32, NULL),
(253, 'Phil Foden', '2000-05-28', 'English', 8, 'Midfielder', 47, NULL),
(254, 'Erling Haaland', '2000-07-21', 'Norwegian', 8, 'Forward', 9, NULL),
(255, 'Riyad Mahrez', '1991-02-21', 'Algerian', 8, 'Forward', 26, NULL),
(256, 'Jonathan Alvarez', '1998-09-12', 'Spanish', 8, 'Forward', 19, NULL),
(257, 'Bobby Knight', '1999-06-18', 'English', 8, 'Forward', 96, NULL),
(258, 'Johannes Schenk', '2003-01-13', 'German', 10, 'Goalkeeper', 35, NULL),
(259, 'Yann Sommer', '1988-12-17', 'Swiss', 10, 'Goalkeeper', 27, NULL),
(260, 'Sven', '1988-08-03', 'German', 10, 'Goalkeeper', 26, NULL),
(261, 'Daley Blind', '1990-03-09', 'Dutch', 10, 'Defender', 23, NULL),
(262, 'Alphonso Davies', '2000-11-02', 'Canadian', 10, 'Defender', 19, NULL),
(263, 'Mattijs de Ligt', '1999-08-12', 'Dutch', 10, 'Defender', 4, NULL),
(264, 'Lucas Hernandez', '1996-02-14', 'French', 10, 'Defender', 21, NULL),
(265, 'Justin Jantzek', '2004-02-10', 'German', 10, 'Defender', 36, NULL),
(266, 'Joao Cancelo', '1994-05-27', 'Portuguese', 10, 'Defender', 22, NULL),
(267, 'Gabriel Marusic', '2003-03-03', 'Croatian', 10, 'Defender', 37, NULL),
(268, 'Noussair Mazraoui', '1997-11-14', 'Moroccan', 10, 'Defender', 40, NULL),
(269, 'Liam Morrison', '2002-07-25', 'Scottish', 10, 'Defender', 41, NULL),
(270, 'Benjamin Pavard', '1996-03-28', 'French', 10, 'Defender', 5, NULL),
(271, 'Bouna Sarr', '1992-01-31', 'French', 10, 'Defender', 20, NULL),
(272, 'Josip Stanisic', '2000-04-02', 'Croatian', 10, 'Defender', 44, NULL),
(273, 'Dayot Upamecano', '1998-10-27', 'French', 10, 'Defender', 2, NULL),
(274, 'Leon Goretzka', '1995-02-06', 'German', 10, 'Midfielder', 8, NULL),
(275, 'Ryan Gravenberch', '2002-05-16', 'Dutch', 10, 'Midfielder', 38, NULL),
(276, 'Joshua Kimmich', '1995-02-08', 'German', 10, 'Midfielder', 6, NULL),
(277, 'Jamal Musiala', '2003-02-26', 'German', 10, 'Midfielder', 42, NULL),
(278, 'Aleksandar Pavlovic', '2004-05-03', 'German', 10, 'Midfielder', 45, NULL),
(279, 'Paul Wanner', '2005-12-23', 'German', 10, 'Midfielder', 14, NULL),
(280, 'Eric Maxim Choupo-Moting', '1989-03-23', 'Cameroonian', 10, 'Forward', 13, NULL),
(281, 'Kingsley Coman', '1996-06-13', 'French', 10, 'Forward', 11, NULL),
(282, 'Serge Gnabry', '1995-07-14', 'German', 10, 'Forward', 7, NULL),
(283, 'Arijon Ibrahimovic', '2005-12-11', 'German', 10, 'Forward', 46, NULL),
(284, 'Sadio Mane', '1992-04-10', 'Senegalese', 10, 'Forward', 17, NULL),
(285, 'Thomas Muller', '1989-09-13', 'German', 10, 'Forward', 25, NULL),
(286, 'Leroy Sane', '1996-01-11', 'German', 10, 'Forward', 10, NULL),
(287, 'Mathys Tel', '1973-08-29', 'French', 10, 'Forward', 39, NULL),
(288, 'Matteo Bignetti', '2004-05-06', 'Austrian', 13, 'Goalkeeper', 43, NULL),
(289, 'Jens Grahl', '1988-09-22', 'German', 13, 'Goalkeeper', 31, NULL),
(290, 'Jannik Horz', '2003-04-14', 'German', 13, 'Goalkeeper', 47, NULL),
(291, 'Diant Ramaj', '2001-09-19', 'German', 13, 'Goalkeeper', 40, NULL),
(292, 'Simon Simoni', '2004-07-14', 'Albanian', 13, 'Goalkeeper', 41, NULL),
(293, 'Kevin Trapp', '1990-07-08', 'German', 13, 'Goalkeeper', 1, NULL),
(294, 'Buta', '1997-02-10', 'Portuguese', 13, 'Defender', 24, NULL),
(295, 'Timothy Chandler', '1990-03-29', 'American', 13, 'Defender', 22, NULL),
(296, 'Dario Gebuhr', '2003-05-06', 'German', 13, 'Defender', 46, NULL),
(297, 'Makoto Hasebe', '1984-01-18', 'Japanese', 13, 'Defender', 20, NULL),
(298, 'Christopher Lenz', '1994-09-22', 'German', 13, 'Defender', 25, NULL),
(299, 'Philip Max', '1993-09-30', 'German', 13, 'Defender', 32, NULL),
(300, 'Evan Ndicka', '1999-08-20', 'French', 13, 'Defender', 2, NULL),
(301, 'Jan Schroder', '2003-04-15', 'German', 13, 'Defender', 49, NULL),
(302, 'Hrvoje Smolcic', '2000-08-17', 'Croatian', 13, 'Defender', 5, NULL),
(303, 'Almamy Toure', '1996-04-28', 'French', 13, 'Defender', 18, NULL),
(304, 'Tuta', '1999-07-20', 'Brazilian', 13, 'Defender', 32, NULL),
(305, 'Paxten Aaronson', '2003-08-26', 'American', 13, 'Midfielder', 30, NULL),
(306, 'Eric Dina-Ebimbe', '2000-11-21', 'French', 13, 'Midfielder', 26, NULL),
(307, 'Mario Gotze', '1992-06-03', 'German', 13, 'Midfielder', 27, NULL),
(308, 'Kristijan Jakic', '1997-05-14', 'Croatian', 13, 'Midfielder', 6, NULL),
(309, 'Daichi Kamada', '1996-08-05', 'Japanese', 13, 'Midfielder', 15, NULL),
(310, 'Jesper Lindstrom', '2000-06-15', 'Danish', 13, 'Midfielder', 29, NULL),
(311, 'Mehdi Loune', '2004-05-14', 'German', 13, 'Midfielder', 45, NULL),
(312, 'Djibril Sow', '1997-02-06', 'Swiss', 13, 'Midfielder', 8, NULL),
(313, 'Marcel Wenig', '2004-05-04', 'German', 13, 'Midfielder', 28, NULL),
(314, 'Lucas Alario', '1992-10-08', 'Argentinian', 13, 'Forward', 21, NULL),
(315, 'Faride Alidou', '2001-07-18', 'German', 13, 'Forward', 11, NULL),
(316, 'Rafael Borre', '1995-09-15', 'Colombian', 13, 'Forward', 19, NULL),
(317, 'Ansgar Knauff', '2002-03-15', 'German', 13, 'Forward', 36, NULL),
(318, 'Randal Kolo Muani', '1998-12-05', 'French', 13, 'Forward', 9, NULL),
(319, 'Nacho Ferri', '2004-10-05', 'Spanish', 13, 'Forward', 48, NULL),
(320, 'Lucas Bergtrom', '2002-09-05', 'Finnish', 6, 'Goalkeeper', 47, NULL),
(321, 'Marcus Bettinelli', '1992-05-24', 'English', 6, 'Goalkeeper', 13, NULL),
(322, 'Kepa', '1994-10-03', 'Spanish', 6, 'Goalkeeper', 1, NULL),
(323, 'Edouard Mendy', '1992-03-16', 'Senegalese', 6, 'Goalkeeper', 16, NULL),
(324, 'Gabriel Stonina', '2004-05-15', 'American', 6, 'Goalkeeper', 36, NULL),
(325, 'Azpilicueta', '1989-08-28', 'Spanish', 6, 'Defender', 28, NULL),
(326, 'Benoit Badiashile', '2001-03-26', 'French', 6, 'Defender', 4, NULL),
(327, 'Trevoh Chalobah', '1999-07-05', 'British', 6, 'Defender', 14, NULL),
(328, 'Ben Chilwell', '1996-12-21', 'British', 6, 'Defender', 21, NULL),
(329, 'Cucurella', '1998-07-22', 'Spanish', 6, 'Defender', 32, NULL),
(330, 'Wesley Fofana', '2000-12-17', 'French', 6, 'Defender', 33, NULL),
(331, 'Alfie Gilchrist', '2003-11-28', 'British', 6, 'Defender', 58, NULL),
(332, 'Kalidou Koulibaly', '1991-06-20', 'Senegalese', 6, 'Defender', 26, NULL),
(333, 'Thiago Silva', '1984-09-22', 'Brazilian', 6, 'Defender', 6, NULL),
(334, 'Carney Chukwuemeka', '2003-01-28', 'British', 6, 'Midfielder', 30, NULL),
(335, 'Enzo Fernandez', '2001-01-17', 'Spanish', 6, 'Midfielder', 5, NULL),
(336, 'Conor Gallagher', '2000-02-06', 'British', 6, 'Midfielder', 23, NULL),
(337, 'Lewis Hall', '2004-09-08', 'British', 6, 'Midfielder', 67, NULL),
(338, 'Omari Hutchinson', '2003-10-29', 'British', 6, 'Midfielder', 56, NULL),
(339, 'N\'Golo Kante', '1991-03-29', 'French', 6, 'Midfielder', 7, NULL),
(340, 'Mateo Kovacic', '1994-05-06', 'Croatian', 6, 'Midfielder', 8, NULL),
(341, 'Ruben Loftus-Cheek', '1996-01-23', 'British', 6, 'Midfielder', 12, NULL),
(342, 'Mason Mount', '1999-01-10', 'British', 6, 'Midfielder', 19, NULL),
(343, 'Mykhaylo Mudryk', '2001-11-04', 'Ukrainian', 6, 'Midfielder', 15, NULL),
(344, 'Denis Zakaria', '1996-11-20', 'Swiss', 6, 'Midfielder', 20, NULL),
(345, 'Pierre-Emerick Aubameyang', '1989-06-18', 'Gabonese', 6, 'Forward', 9, NULL),
(346, 'Armando Broja', '2001-09-10', 'Albanian', 6, 'Forward', 18, NULL),
(347, 'David Fofana', '2002-12-22', 'French', 6, 'Forward', 27, NULL),
(348, 'Kai Havertz', '1999-06-11', 'German', 6, 'Forward', 29, NULL),
(349, 'Joao Felix', '1999-11-10', 'Portuguese', 6, 'Forward', 11, NULL),
(350, 'Noni Madueke', '2002-03-10', 'British', 6, 'Forward', 31, NULL),
(351, 'Christian Pulisic', '1998-09-18', 'American', 6, 'Forward', 10, NULL),
(352, 'Raheem Sterling', '1994-12-08', 'British', 6, 'Forward', 17, NULL),
(353, 'Hakim Ziyech', '1993-03-19', 'Moroccan', 6, 'Forward', 22, NULL),
(354, 'Claudio Ramos', '1991-11-16', 'Portuguese', 18, 'Goalkeeper', 14, NULL),
(355, 'Diogo Costa', '1999-09-19', 'Portuguese', 18, 'Goalkeeper', 99, NULL),
(356, 'Samuel', '1994-03-29', 'Brazilian', 18, 'Goalkeeper', 94, NULL),
(357, 'David Carmo', '1999-07-19', 'Portuguese', 18, 'Defender', 4, NULL),
(358, 'Fabio Cardoso', '1994-04-19', 'Portuguese', 18, 'Defender', 2, NULL),
(359, 'Joao Marcelo', '2000-01-03', 'Brazilian', 18, 'Defender', 43, NULL),
(360, 'Joao Mario', '2000-01-03', 'Portuguese', 18, 'Defender', 23, NULL),
(361, 'Joao Mendes', '2000-04-13', 'Portuguese', 18, 'Defender', 55, NULL),
(362, 'Marcano', '1987-06-23', 'Spanish', 18, 'Defender', 5, NULL),
(363, 'Pepe', '1983-02-26', 'Portuguese', 18, 'Defender', 3, NULL),
(364, 'Rodrigo Conceição', '2000-01-02', 'Portuguese', 18, 'Defender', 17, NULL),
(365, 'Romain Correia', '1999-09-06', 'Portuguese', 18, 'Defender', 44, NULL),
(366, 'Zaidu Sanusi', '1997-06-13', 'Nigerian', 18, 'Defender', 12, NULL),
(367, 'Wendell', '1993-07-20', 'Brazilian', 18, 'Defender', 22, NULL),
(368, 'Wilson Manafa', '1994-07-23', 'Portuguese', 18, 'Defender', 18, NULL),
(369, 'Ze Pedro', '1997-06-06', 'Portuguese', 18, 'Defender', 97, NULL),
(370, 'Andre Franco', '1998-04-12', 'Portuguese', 18, 'Midfielder', 20, NULL),
(371, 'Bernardo Folha', '2002-03-23', 'Portuguese', 18, 'Midfielder', 87, NULL),
(372, 'Bruno Costa', '0000-00-00', 'Portuguese', 18, 'Midfielder', 28, NULL),
(373, 'Stephan Eustaquio', '1996-12-21', 'Canadian', 18, 'Midfielder', 46, NULL),
(374, 'Marko Grujic', '1996-04-13', 'Serbian', 18, 'Midfielder', 16, NULL),
(375, 'Otavio', '1995-02-09', 'Portuguese', 18, 'Midfielder', 25, NULL),
(376, 'Mateus Uribe', '1991-03-21', 'Colombian', 18, 'Midfielder', 8, NULL),
(377, 'Vasco Sousa', '2003-04-03', 'Portuguese', 18, 'Midfielder', 67, NULL),
(378, 'Evanilson', '1999-10-06', 'Brazilian', 18, 'Forward', 30, NULL),
(379, 'Fernando Andrade', '1993-01-06', 'Brazilian', 18, 'Forward', 38, NULL),
(380, 'Gabriel Veron', '2002-09-18', 'Brazilian', 18, 'Forward', 7, NULL),
(381, 'Galeno', '1997-03-08', 'Brazilian', 18, 'Forward', 13, NULL),
(382, 'Goncalo Borges', '2001-03-29', 'Portuguese', 18, 'Forward', 70, NULL),
(383, 'Abraham Marcus', '2000-01-02', 'Nigerian', 18, 'Forward', 98, NULL),
(384, 'Danny Namaso', '2000-08-28', 'Angolan', 18, 'Forward', 19, NULL),
(385, 'Pepe', '1997-02-24', 'Portuguese', 18, 'Forward', 11, NULL),
(386, 'Mehdi Taremi', '1992-07-18', 'Iranian', 18, 'Forward', 9, NULL),
(387, 'Toni Martinez', '1997-06-30', 'Spanish', 18, 'Forward', 29, NULL),
(388, 'Wendel', '2000-08-02', 'Brazilian', 18, 'Forward', 50, NULL),
(389, 'Gianluigi Donnarumma', '1999-02-25', 'Italian', 9, 'Goalkeeper', 99, NULL),
(390, 'Lucas Lavallee', '2003-02-18', 'French', 9, 'Goalkeeper', 70, NULL),
(391, 'Alexandre Letellier', '1990-12-11', 'French', 9, 'Goalkeeper', 90, NULL),
(392, 'Sergio Rico', '1993-09-01', 'Spanish', 9, 'Goalkeeper', 16, NULL),
(393, 'El Chadaille Bitshaibu', '1999-07-01', 'DR Congolese', 9, 'Defender', 31, NULL),
(394, 'Achraf Hakimi', '1998-11-04', 'Moroccan', 9, 'Defender', 2, NULL),
(395, 'Juan Bernat', '1993-03-01', 'Spanish', 9, 'Defender', 14, NULL),
(396, 'Presnel Kimpembe', '1995-08-13', 'French', 9, 'Defender', 3, NULL),
(397, 'Hugo Lamy', '2004-01-16', 'French', 9, 'Defender', 39, NULL),
(398, 'Nordi Mukiele', '1997-11-01', 'French', 9, 'Defender', 26, NULL),
(399, 'Nuno Mendes', '2002-06-19', 'Portuguese', 9, 'Defender', 25, NULL),
(400, 'Timothee Pembele', '2002-09-09', 'French', 9, 'Defender', 29, NULL),
(401, 'Sergio Ramos', '1986-03-30', 'Spanish', 9, 'Defender', 4, NULL),
(402, 'Serif Nhaga', '2005-09-01', 'Portuguese', 9, 'Defender', 34, NULL),
(403, 'Carlos Soler', '1997-01-02', 'Spanish', 9, 'Midfielder', 8, NULL),
(404, 'Danilo', '2000-09-09', 'Portuguese', 9, 'Midfielder', 21, NULL),
(405, 'Fabian Ruiz', '1996-04-03', 'Spanish', 9, 'Midfielder', 7, NULL),
(406, 'Ismail Gharbi', '2004-04-10', 'Spanish', 9, 'Midfielder', 35, NULL),
(407, 'Renato Sanches', '1997-08-18', 'Portuguese', 9, 'Midfielder', 18, NULL),
(408, 'Marco Verratti', '1992-11-05', 'Italian', 9, 'Midfielder', 6, NULL),
(409, 'Vitinha', '2000-02-13', 'Portuguese', 9, 'Midfielder', 17, NULL),
(410, 'Warren Zaire-Emery', '2006-03-08', 'French', 9, 'Midfielder', 33, NULL),
(411, 'Hugo Ektike', '1999-05-27', 'French', 9, 'Forward', 44, NULL),
(412, 'Ilyes Housni', '2005-05-14', 'French', 9, 'Forward', 37, NULL),
(413, 'Kylian Mbappe', '1998-12-20', 'French', 9, 'Forward', 7, NULL),
(414, 'Lionel Messi', '1987-06-24', 'Argentine', 9, 'Forward', 30, NULL),
(415, 'Neymar', '1992-02-05', 'Brazilian', 9, 'Forward', 10, NULL),
(416, 'Niolaos Botis', '2004-03-31', 'Greek', 17, 'Goalkeeper', 40, NULL),
(417, 'Alex Cordaz', '1983-03-20', 'Italian', 17, 'Goalkeeper', 21, NULL),
(418, 'Samir Handanovic', '1984-07-14', 'Slovenian', 17, 'Goalkeeper', 1, NULL),
(419, 'Andre Onana', '1996-04-02', 'Cameroonian', 17, 'Goalkeeper', 24, NULL),
(420, 'Francesco Acerbi', '1988-02-10', 'Italian', 17, 'Defender', 15, NULL),
(421, 'Alessandro Bastoni', '1999-04-13', 'Italian', 17, 'Defender', 95, NULL),
(422, 'Raoul Bellanova', '2000-05-17', 'Italian', 17, 'Defender', 12, NULL),
(423, 'Danilo D\'Ambrosio', '1988-09-09', 'Italian', 17, 'Defender', 33, NULL),
(424, 'Dalbert', '1993-09-08', 'Brazilian', 17, 'Defender', 29, NULL),
(425, 'Matteo Darmian', '1989-12-02', 'Italian', 17, 'Defender', 36, NULL),
(426, 'Stefan de Vrij', '1992-02-05', 'Dutch', 17, 'Defender', 6, NULL),
(427, 'Federico Dimarco', '1997-11-10', 'Italian', 17, 'Defender', 32, NULL),
(428, 'Alessandro Fontanarosa', '2001-04-10', 'Italian', 17, 'Defender', 47, NULL),
(429, 'Milan Skriniar', '1995-02-11', 'Slovakian', 17, 'Defender', 37, NULL),
(430, 'Mattia Zanotti', '1999-05-08', 'Italian', 17, 'Defender', 46, NULL),
(431, 'Ebenezer Akinsanmiro', '1998-03-15', 'Nigerian', 17, 'Midfielder', 43, NULL),
(432, 'Kristjan Asllani', '1999-06-20', 'Albanian', 17, 'Midfielder', 14, NULL),
(433, 'Nicolo Barella', '1997-02-07', 'Italian', 17, 'Midfielder', 23, NULL),
(434, 'Marcelo Brozovic', '1992-11-16', 'Croatian', 17, 'Midfielder', 77, NULL),
(435, 'Hakan Calhanoglu', '1994-02-08', 'Turkish', 17, 'Midfielder', 20, NULL),
(436, 'Valentin Carboni', '2001-05-19', 'Italian', 17, 'Midfielder', 45, NULL),
(437, 'Denzel Dumfries', '1996-04-18', 'Dutch', 17, 'Midfielder', 2, NULL),
(438, 'Roberto Gagliardini', '1994-04-07', 'Italian', 17, 'Midfielder', 5, NULL),
(439, 'Jacopo Gianelli', '1999-08-09', 'Italian', 17, 'Midfielder', 32, NULL),
(440, 'Henrikh Mkhitaryan', '1989-01-21', 'Armenian', 17, 'Midfielder', 22, NULL),
(441, 'Joaquin Correa', '1994-08-13', 'Argentinian', 17, 'Forward', 11, NULL),
(442, 'Dennis Curatolo', '1999-01-04', 'Italian', 17, 'Forward', 42, NULL),
(443, 'Edin Dzeko', '1986-03-17', 'Bosnian', 17, 'Forward', 9, NULL),
(444, 'Issiaka Kamate', '2002-05-15', 'Ivorian', 17, 'Forward', 49, NULL),
(445, 'Romelu Lukaku', '1993-05-13', 'Belgian', 17, 'Forward', 90, NULL),
(446, 'Valerio Boffeli', '1995-03-12', 'Italian', 14, 'Goalkeeper', 52, NULL),
(447, 'Pierluigi Gollini', '1995-03-18', 'Italian', 14, 'Goalkeeper', 95, NULL),
(448, 'Hubert Idasiak', '1998-07-23', 'Polish', 14, 'Goalkeeper', 16, NULL),
(449, 'Davide Marfella', '1996-11-28', 'Italian', 14, 'Goalkeeper', 12, NULL),
(450, 'Alex Meret', '1997-03-22', 'Italian', 14, 'Goalkeeper', 1, NULL),
(451, 'Bartosz Bereszynski', '1992-07-12', 'Polish', 14, 'Defender', 19, NULL),
(452, 'Giovanni Di Lorenzo', '1993-11-05', 'Italian', 14, 'Defender', 22, NULL),
(453, 'Juan Jesus', '1991-06-10', 'Brazilian', 14, 'Defender', 5, NULL),
(454, 'Min-jae Kim', '1997-11-15', 'South Korean', 14, 'Defender', 3, NULL),
(455, 'Mario Rui', '1991-05-27', 'Portuguese', 14, 'Defender', 6, NULL),
(456, 'Mathias Olivera', '1997-03-15', 'Uruguayan', 14, 'Defender', 17, NULL),
(457, 'Leo Ostigard', '1998-09-22', 'Norwegian', 14, 'Defender', 55, NULL),
(458, 'Amir Rrahmani', '1994-02-24', 'Kosovar', 14, 'Defender', 13, NULL),
(459, 'Frank Anguissa', '1995-11-23', 'Cameroonian', 14, 'Midfielder', 99, NULL),
(460, 'Diego Demme', '1991-11-21', 'German', 14, 'Midfielder', 4, NULL),
(461, 'Eljif Elmas', '1999-09-02', 'Macedonian', 14, 'Midfielder', 7, NULL),
(462, 'Gianluca Gaetano', '2000-05-16', 'Italian', 14, 'Midfielder', 70, NULL),
(463, 'Stanislav Lobotka', '1994-11-25', 'Slovakian', 14, 'Midfielder', 68, NULL),
(464, 'Tanguy Ndombele', '1996-12-28', 'French', 14, 'Midfielder', 91, NULL),
(465, 'Karim Zedadka', '1996-01-01', 'Algerian', 14, 'Midfielder', 31, NULL),
(466, 'Piotr Zielinski', '1994-05-20', 'Polish', 14, 'Midfielder', 20, NULL),
(467, 'Khvicha Kvaratskhelia', '2001-02-12', 'Georgian', 14, 'Forward', 77, NULL),
(468, 'Hirving Lozano', '1995-07-30', 'Mexican', 14, 'Forward', 11, NULL),
(469, 'Victor Osimhen', '1998-12-29', 'Nigerian', 14, 'Forward', 9, NULL),
(470, 'Matteo Politano', '1993-08-03', 'Italian', 14, 'Forward', 21, NULL),
(471, 'Giacomo Raspadori', '1999-02-18', 'Italian', 14, 'Forward', 81, NULL),
(472, 'Giovanni Simeone', '1995-07-05', 'Argentinian', 14, 'Forward', 18, NULL),
(473, 'Alessio Zerbin', '2001-08-18', 'Italian', 14, 'Forward', 23, NULL),
(474, 'Gregor', '1995-07-01', 'Swiss', 5, 'Goalkeeper', 1, NULL),
(475, 'Marcel Lotka', '1998-04-15', 'Polish', 5, 'Goalkeeper', 35, NULL),
(476, 'Alexander Meyer', '1997-12-20', 'German', 5, 'Goalkeeper', 33, NULL),
(477, 'Silas Ostrzinski', '1996-09-03', 'German', 5, 'Goalkeeper', 31, NULL),
(478, 'Luca Unbehaun', '1999-11-29', 'German', 5, 'Goalkeeper', 38, NULL),
(479, 'Soumaila Coulibaly', '1998-02-21', 'Malian', 5, 'Defender', 44, NULL),
(480, 'Raphael Guerreiro', '1993-12-22', 'Portuguese', 5, 'Defender', 13, NULL),
(481, 'Mats Hummels', '1988-12-16', 'German', 5, 'Defender', 15, NULL),
(482, 'Mateu Morey', '2000-03-02', 'Spanish', 5, 'Defender', 2, NULL),
(483, 'Thomas Meunier', '1991-09-12', 'Belgian', 5, 'Defender', 24, NULL),
(484, 'Felix Passlack', '1998-05-29', 'German', 5, 'Defender', 30, NULL),
(485, 'Tom Rothe', '1999-08-14', 'German', 5, 'Defender', 36, NULL),
(486, 'Julian Ryerson', '1997-06-19', 'Norwegian', 5, 'Defender', 26, NULL),
(487, 'Nico Shlotterbeck', '2000-12-01', 'German', 5, 'Defender', 4, NULL),
(488, 'Nico Schulz', '1993-04-01', 'German', 5, 'Defender', 14, NULL),
(489, 'Niklas Sule', '1995-09-03', 'German', 5, 'Defender', 25, NULL),
(490, 'Marius Wolf', '1995-05-27', 'German', 5, 'Defender', 17, NULL),
(491, 'Jude Bellingham', '2003-06-29', 'English', 5, 'Midfielder', 22, NULL),
(492, 'Julian Brandt', '1996-05-02', 'German', 5, 'Midfielder', 19, NULL),
(493, 'Mahmoud Dahoud', '1996-01-01', 'Syrian', 5, 'Midfielder', 8, NULL),
(494, 'Goktan Gurpuz', '1998-04-20', 'Turkish', 5, 'Midfielder', 42, NULL),
(495, 'Abdoulaye Kamara', '1999-11-05', 'French', 5, 'Midfielder', 32, NULL),
(496, 'Salih Ozcan', '1998-01-11', 'Turkish', 5, 'Midfielder', 6, NULL),
(497, 'Antonios Papadopoulos', '2000-09-09', 'German', 5, 'Midfielder', 47, NULL),
(498, 'Marco Pasalic', '2001-07-16', 'Croatian', 5, 'Midfielder', 46, NULL),
(499, 'Marco Reus', '1989-05-31', 'German', 5, 'Midfielder', 11, NULL),
(500, 'Gio Reyna', '2002-11-13', 'American', 5, 'Midfielder', 7, NULL),
(501, 'Karim Adeyemi', '2002-01-18', 'German', 5, 'Forward', 27, NULL),
(502, 'Jamie Bynoe-Gittens', '2003-10-24', 'English', 5, 'Forward', 43, NULL),
(503, 'Julien Duranville', '2002-08-18', 'Belgian', 5, 'Forward', 16, NULL),
(504, 'Sebastien Haller', '1994-06-22', 'French', 5, 'Forward', 9, NULL),
(505, 'Donyell Malen', '1999-01-19', 'Dutch', 5, 'Forward', 21, NULL),
(506, 'Anthony Modeste', '1988-04-14', 'French', 5, 'Forward', 20, NULL),
(507, 'Youssoufa Moukoko', '2004-11-20', 'German', 5, 'Forward', 18, NULL),
(508, 'Justin Njimah', '2001-07-30', 'German', 5, 'Forward', 49, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `referee`
--

CREATE TABLE `referee` (
  `referee_id` int(11) NOT NULL,
  `referee_name` varchar(255) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `socialMedia_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referee`
--

INSERT INTO `referee` (`referee_id`, `referee_name`, `nationality`, `dob`, `socialMedia_ID`) VALUES
(1, 'Slavko Vincic', 'Nationality1', '2000-01-01', NULL),
(2, 'Halil Umut Meler', 'Nationality2', '2000-02-02', 32),
(3, 'Felix Zwayer', 'Nationality3', '2000-03-03', 33),
(4, 'Clement Turpin', 'Nationality4', '2000-04-04', 35),
(5, 'Anthony Taylor', 'Nationality5', '2000-05-05', 37),
(6, 'Danny Makkelie', 'Nationality6', '2000-06-06', 38),
(7, 'Szymon Marciniak', 'Nationality7', '2000-07-07', 39),
(8, 'Daniele Orsato', 'Nationality8', '2000-08-08', 40),
(9, 'Carlos del cerro Grande', 'Nationality9', '2000-09-09', NULL),
(10, 'Artur Soares Dias', 'Nationality10', '2000-10-10', 36),
(11, 'Jesus Gil Manzaro', 'Nationality11', '2000-11-11', NULL),
(12, 'Istvan Kovacs', 'Nationality12', '2000-12-12', NULL),
(13, 'Michael Oliver', 'Nationality13', '2000-01-13', NULL),
(14, 'Francois Letexier', 'Nationality14', '2000-02-14', 41),
(15, 'Srotan Jovanovic', 'Nationality15', '2000-03-15', NULL),
(16, 'Sandro Scharer', 'Nationality16', '2000-04-16', 34),
(17, 'Davide Massa', 'Nationality17', '2000-05-17', 31),
(18, 'Serdar Gozubuyuk', 'Nationality18', '2000-06-18', 30);

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia`
--

CREATE TABLE `socialmedia` (
  `socialMedia_id` int(11) NOT NULL,
  `socialMedia_name` varchar(255) NOT NULL,
  `followers` int(11) NOT NULL,
  `followings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `socialmedia`
--

INSERT INTO `socialmedia` (`socialMedia_id`, `socialMedia_name`, `followers`, `followings`) VALUES
(1, 'rbleipzig', 2100000, 86),
(2, 'clubbrugge', 407000, 167),
(3, 'liverpoolfc', 45300000, 281000000),
(4, 'acmilan', 16100000, 135000000),
(5, 'eintrachtfrankfurt', 1100000, 100000000),
(6, 'bvb09', 19900000, 97000000),
(7, 'inter', 11400000, 118000000),
(8, 'psg', 64800000, 123000000),
(9, 'mancity', 52600000, 483000000),
(10, 'slbenfica', 2800000, 78400000),
(11, 'realmadrid', 155000000, 54000000),
(12, 'spursofficial', 17000000, 274000000),
(13, 'officialsscnapoli', 4700000, 123000000),
(14, 'chelseafc', 41800000, 198000000),
(15, 'fcporto', 2500000, 95000000),
(16, 'fcbayern', 41800000, 64000000),
(17, 'mrcorose', 1299, 3),
(18, 'pepteam', 7900000, 27),
(19, 'rik_de_mil', 1978, 122),
(20, 'smnmosvi', 4769, 8),
(21, 'mrancelotti', 14300000, 15),
(22, 'stefpiolii', 1142, 49),
(23, 'i.dinp', 554, 204),
(24, 'mrfrancescocalzonaofficial', 55200, 36),
(25, 'edinterzic11', 175000, 345),
(26, 'pochettino', 1100000, 84),
(27, 'simoninzaghi_', 38200, 42),
(28, 'sergioconceicaoofficial', 292000, 231),
(29, 'luisenrique_2121', 729000, 86),
(30, 'serdargozubuyukfifa', 16300, 2379),
(31, 'davidemassaa', 287, 10),
(32, 'halilumutmeleroficial', 1952, 5150),
(33, 'felix.zwayer', 356, 128),
(34, 'sandroscharerr', 838, 0),
(35, 'clement_turpin', 275, 13),
(36, 'artursoaresdia', 2762, 421),
(37, '_anthonytaylor_', 1891, 4520),
(38, 'dannymakkelie', 2080, 102),
(39, '_szymonmarciniak_', 111000, 104),
(40, 'orsatodaniele', 451, 22),
(41, 'francoisletexier', 34, 12),
(42, 'rbleipzig', 2100000, 86),
(43, 'clubbrugge', 407000, 167),
(44, 'liverpoolfc', 45300000, 281000000),
(45, 'acmilan', 16100000, 135000000),
(46, 'eintrachtfrankfurt', 1100000, 100000000),
(47, 'bvb09', 19900000, 97000000),
(48, 'inter', 11400000, 118000000),
(49, 'psg', 64800000, 123000000),
(50, 'mancity', 52600000, 483000000),
(51, 'slbenfica', 2800000, 78400000),
(52, 'realmadrid', 155000000, 54000000),
(53, 'spursofficial', 17000000, 274000000),
(54, 'officialsscnapoli', 4700000, 123000000),
(55, 'chelseafc', 41800000, 198000000),
(56, 'fcporto', 2500000, 95000000),
(57, 'fcbayern', 41800000, 64000000),
(58, 'mrcorose', 1299, 3),
(59, 'pepteam', 7900000, 27),
(60, 'rik_de_mil', 1978, 122),
(61, 'smnmosvi', 4769, 8),
(62, 'mrancelotti', 14300000, 15),
(63, 'stefpiolii', 1142, 49),
(64, 'i.dinp', 554, 204),
(65, 'mrfrancescocalzonaofficial', 55200, 36),
(66, 'edinterzic11', 175000, 345),
(67, 'pochettino', 1100000, 84),
(68, 'simoninzaghi_', 38200, 42),
(69, 'sergioconceicaoofficial', 292000, 231),
(70, 'luisenrique_2121', 729000, 86),
(71, 'serdargozubuyukfifa', 16300, 2379),
(72, 'davidemassaa', 287, 10),
(73, 'halilumutmeleroficial', 1952, 5150),
(74, 'felix.zwayer', 356, 128),
(75, 'sandroscharerr', 838, 0),
(76, 'clement_turpin', 275, 13),
(77, 'artursoaresdia', 2762, 421),
(78, '_anthonytaylor_', 1891, 4520),
(79, 'dannymakkelie', 2080, 102),
(80, '_szymonmarciniak_', 111000, 104),
(81, 'orsatodaniele', 451, 22),
(82, 'francoisletexier', 34, 12);

-- --------------------------------------------------------

--
-- Table structure for table `sponsorship`
--

CREATE TABLE `sponsorship` (
  `sponsor_id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `sponsor_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sponsorship`
--

INSERT INTO `sponsorship` (`sponsor_id`, `team_id`, `sponsor_Name`) VALUES
(1, 3, 'Nike'),
(2, 4, 'Adidas'),
(3, 5, 'Puma'),
(4, 6, 'Nike'),
(5, 7, 'Red Bull'),
(6, 8, 'Puma'),
(7, 9, 'Nike'),
(8, 10, 'Adidas'),
(9, 11, 'Puma'),
(10, 12, 'Nike'),
(11, 13, 'Indeed'),
(12, 14, 'Kappa'),
(13, 15, 'Macron'),
(14, 16, 'Emirates'),
(15, 17, 'Pirelli'),
(16, 18, 'New Balance');

-- --------------------------------------------------------

--
-- Table structure for table `stadium`
--

CREATE TABLE `stadium` (
  `stadium_id` int(11) NOT NULL,
  `stadium_name` varchar(255) DEFAULT NULL,
  `stadium_location` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `founded` int(11) DEFAULT NULL,
  `dimensions` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stadium`
--

INSERT INTO `stadium` (`stadium_id`, `stadium_name`, `stadium_location`, `capacity`, `founded`, `dimensions`) VALUES
(1, 'City of Manchester Stadium', 'Manchester', 55097, 2002, '105m x 68m'),
(2, 'Red Bull Arena', 'Leipzig', 42959, 2004, '105m x 68m'),
(3, 'Jan Breydel Stadium', 'Bruges', 29042, 1975, '100m x 67m'),
(4, 'Estadio da Luz', 'Lisbon', 64400, 2003, '105m x 68m'),
(5, 'Istanbul Kovacs', 'Istanbul', 76192, 2002, '105m x 68m'),
(6, 'Santiago Bernabeu', 'Madrid', 81044, 1947, '105m x 68m'),
(7, 'San Siro', 'Milan', 80018, 1926, '105m x 68m'),
(8, 'Tottenham Hotspur Stadium', 'London', 62759, 2019, '105m x 68m'),
(9, 'Waldstadion', 'Frankfurt', 52301, 1925, '105m x 68m'),
(10, 'Diego Armando Maradona', 'Naples', 54000, 1959, '105m x 68m'),
(11, 'Westfalenstadion', 'Dortmund', 81365, 1974, '105m x 68m'),
(12, 'Stamford Bridge', 'London', 40834, 1877, '103m x 67m'),
(13, 'Estadio do Dragao', 'Porto', 50835, 2003, '105m x 68m'),
(14, 'Parc des Princes', 'Paris', 48712, 1972, '105m x 68m'),
(15, 'Allianz Arena', 'Munich', 75000, 2005, '105m x 68m'),
(16, 'Estadio do Sport Lisboa e Benfica', 'Lisbon', 64647, 2003, '105m x 68m'),
(17, 'Ataturk Olympic Stadium', 'Istanbul', 76092, 2002, '105m x 68m'),
(18, 'City of Manchester Stadium', 'Manchester', 55097, 2002, '105m x 68m'),
(19, 'Red Bull Arena', 'Leipzig', 42959, 2004, '105m x 68m'),
(20, 'Jan Breydel Stadium', 'Bruges', 29042, 1975, '100m x 67m'),
(21, 'Estadio da Luz', 'Lisbon', 64400, 2003, '105m x 68m'),
(22, 'Istanbul Kovacs', 'Istanbul', 76192, 2002, '105m x 68m'),
(23, 'Santiago Bernabeu', 'Madrid', 81044, 1947, '105m x 68m'),
(24, 'San Siro', 'Milan', 80018, 1926, '105m x 68m'),
(25, 'Tottenham Hotspur Stadium', 'London', 62759, 2019, '105m x 68m'),
(26, 'Waldstadion', 'Frankfurt', 52301, 1925, '105m x 68m'),
(27, 'Diego Armando Maradona', 'Naples', 54000, 1959, '105m x 68m'),
(28, 'Westfalenstadion', 'Dortmund', 81365, 1974, '105m x 68m'),
(29, 'Stamford Bridge', 'London', 40834, 1877, '103m x 67m'),
(30, 'Estadio do Dragao', 'Porto', 50835, 2003, '105m x 68m'),
(31, 'Parc des Princes', 'Paris', 48712, 1972, '105m x 68m'),
(32, 'Allianz Arena', 'Munich', 75000, 2005, '105m x 68m'),
(33, 'Estadio do Sport Lisboa e Benfica', 'Lisbon', 64647, 2003, '105m x 68m'),
(34, 'Ataturk Olympic Stadium', 'Istanbul', 76092, 2002, '105m x 68m');

-- --------------------------------------------------------

--
-- Table structure for table `stage_matches`
--

CREATE TABLE `stage_matches` (
  `stage_id` int(11) NOT NULL,
  `stage_name` varchar(255) DEFAULT NULL,
  `matches_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stage_matches`
--

INSERT INTO `stage_matches` (`stage_id`, `stage_name`, `matches_id`) VALUES
(1, 'First Leg Round of 16', 2),
(2, 'Second Leg Round of 16', 3),
(3, 'First Leg Round of 16', 4),
(4, 'Second Leg Round of 16', 5),
(5, 'First Leg Round of 16', 6),
(6, 'Second Leg Round of 16', 7),
(7, 'First Leg Round of 16', 8),
(8, 'Second Leg Round of 16', 9),
(9, 'First Leg Round of 16', 10),
(10, 'Second Leg Round of 16', 11),
(11, 'First Leg Round of 16', 12),
(12, 'Second Leg Round of 16', 13),
(13, 'First Leg Round of 16', 14),
(14, 'Second Leg Round of 16', 15),
(15, 'First Leg Quarterfinal', 16),
(16, 'Second Leg Quarterfinal', 17),
(17, 'First Leg Quarterfinal', 18),
(18, 'Second Leg Quarterfinal', 19),
(19, 'First Leg Quarterfinal', 20),
(20, 'Second Leg Quarterfinal', 21),
(21, 'First Leg Quarterfinal', 22),
(22, 'Second Leg Quarterfinal', 23),
(23, 'First Leg Quarterfinal', 24),
(24, 'Second Leg Quarterfinal', 25),
(25, 'First Leg Semifinal', 26),
(26, 'Second Leg Semifinal', 27),
(27, 'First Leg Semifinal', 28),
(28, 'Second Leg Semifinal', 29),
(29, 'Final', 30);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `captain` int(11) NOT NULL,
  `founded` date NOT NULL,
  `socialMedia_ID` int(11) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `stadium_id` int(11) DEFAULT NULL,
  `formation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `name`, `captain`, `founded`, `socialMedia_ID`, `country`, `stadium_id`, `formation_id`) VALUES
(3, 'Liverpool FC', 2, '1892-06-03', NULL, 'England', 1, 1),
(4, 'Real Madrid', 3, '1902-03-06', NULL, 'Spain', 6, 1),
(5, 'Dortmund', 4, '1909-12-19', NULL, 'Germany', 11, 6),
(6, 'Chelsea', 5, '1905-03-10', NULL, 'England', 12, 7),
(7, 'RB Leipzig', 6, '2009-05-19', NULL, 'Germany', 2, NULL),
(8, 'Mancity', 7, '1880-04-16', NULL, 'England', 8, 4),
(9, 'PSG', 8, '1970-08-12', NULL, 'France', 14, 3),
(10, 'Bayern', 9, '1900-02-27', NULL, 'Germany', 15, 2),
(11, 'AC Milan', 10, '1899-12-16', NULL, 'Italy', 7, 5),
(12, 'Tottenham', 11, '1882-09-05', NULL, 'England', 13, 5),
(13, 'Frankfurt', 12, '1899-03-08', NULL, 'Germany', 10, 2),
(14, 'Napoli', 13, '1926-08-25', NULL, 'Italy', 9, 1),
(15, 'Clubbrugge', 14, '1891-11-13', NULL, 'Belgium', 3, 3),
(16, 'Benfica', 15, '1904-02-28', NULL, 'Portugal', 5, 2),
(17, 'Inter', 16, '1908-03-09', NULL, 'Italy', 1, 3),
(18, 'Porto', 17, '1893-09-28', NULL, 'Portugal', 4, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`coach_id`),
  ADD KEY `socialMedia_ID` (`socialMedia_ID`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `formation_id` (`formation_id`);

--
-- Indexes for table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`formation_id`);

--
-- Indexes for table `kitcolor`
--
ALTER TABLE `kitcolor`
  ADD PRIMARY KEY (`kit_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`matches_id`),
  ADD KEY `referee_id` (`referee_id`),
  ADD KEY `homeTeam_id` (`homeTeam_id`),
  ADD KEY `awayTeam_id` (`awayTeam_id`),
  ADD KEY `winner_id` (`winner_id`),
  ADD KEY `stadium_id` (`stadium_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `referee`
--
ALTER TABLE `referee`
  ADD PRIMARY KEY (`referee_id`),
  ADD KEY `socialMedia_ID` (`socialMedia_ID`);

--
-- Indexes for table `socialmedia`
--
ALTER TABLE `socialmedia`
  ADD PRIMARY KEY (`socialMedia_id`);

--
-- Indexes for table `sponsorship`
--
ALTER TABLE `sponsorship`
  ADD PRIMARY KEY (`sponsor_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `stadium`
--
ALTER TABLE `stadium`
  ADD PRIMARY KEY (`stadium_id`);

--
-- Indexes for table `stage_matches`
--
ALTER TABLE `stage_matches`
  ADD PRIMARY KEY (`stage_id`),
  ADD KEY `matches_id` (`matches_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `socialMedia_ID` (`socialMedia_ID`),
  ADD KEY `stadium_id` (`stadium_id`),
  ADD KEY `formation_id` (`formation_id`),
  ADD KEY `fk_captain` (`captain`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coach`
--
ALTER TABLE `coach`
  MODIFY `coach_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `formation`
--
ALTER TABLE `formation`
  MODIFY `formation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kitcolor`
--
ALTER TABLE `kitcolor`
  MODIFY `kit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `matches_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT for table `referee`
--
ALTER TABLE `referee`
  MODIFY `referee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `socialmedia`
--
ALTER TABLE `socialmedia`
  MODIFY `socialMedia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `sponsorship`
--
ALTER TABLE `sponsorship`
  MODIFY `sponsor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stadium`
--
ALTER TABLE `stadium`
  MODIFY `stadium_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `stage_matches`
--
ALTER TABLE `stage_matches`
  MODIFY `stage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coach`
--
ALTER TABLE `coach`
  ADD CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`socialMedia_ID`) REFERENCES `socialmedia` (`socialMedia_id`),
  ADD CONSTRAINT `coach_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `coach_ibfk_3` FOREIGN KEY (`formation_id`) REFERENCES `formation` (`formation_id`);

--
-- Constraints for table `kitcolor`
--
ALTER TABLE `kitcolor`
  ADD CONSTRAINT `kitcolor_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`referee_id`) REFERENCES `referee` (`referee_id`),
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`homeTeam_id`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `matches_ibfk_3` FOREIGN KEY (`awayTeam_id`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `matches_ibfk_4` FOREIGN KEY (`winner_id`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `matches_ibfk_5` FOREIGN KEY (`stadium_id`) REFERENCES `stadium` (`stadium_id`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `referee`
--
ALTER TABLE `referee`
  ADD CONSTRAINT `referee_ibfk_1` FOREIGN KEY (`socialMedia_ID`) REFERENCES `socialmedia` (`socialMedia_id`);

--
-- Constraints for table `sponsorship`
--
ALTER TABLE `sponsorship`
  ADD CONSTRAINT `sponsorship_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `stage_matches`
--
ALTER TABLE `stage_matches`
  ADD CONSTRAINT `stage_matches_ibfk_1` FOREIGN KEY (`matches_id`) REFERENCES `matches` (`matches_id`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `fk_captain` FOREIGN KEY (`captain`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`socialMedia_ID`) REFERENCES `socialmedia` (`socialMedia_id`),
  ADD CONSTRAINT `team_ibfk_2` FOREIGN KEY (`stadium_id`) REFERENCES `stadium` (`stadium_id`),
  ADD CONSTRAINT `team_ibfk_3` FOREIGN KEY (`formation_id`) REFERENCES `formation` (`formation_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
