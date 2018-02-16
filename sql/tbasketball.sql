-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2018 a las 14:25:54
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tbasketball`
--
CREATE DATABASE IF NOT EXISTS `tbasketball` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `tbasketball`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

DROP TABLE IF EXISTS `equipos`;
CREATE TABLE IF NOT EXISTS `equipos` (
  `id_franquicia` int(2) NOT NULL AUTO_INCREMENT,
  `nombre_franquicia` varchar(100) COLLATE utf8_bin NOT NULL,
  `sede` varchar(100) COLLATE utf8_bin NOT NULL,
  `propietario` varchar(100) COLLATE utf8_bin NOT NULL,
  `presupuesto` varchar(100) COLLATE utf8_bin NOT NULL,
  `conferencia` varchar(20) COLLATE utf8_bin NOT NULL,
  `division` varchar(50) COLLATE utf8_bin NOT NULL,
  `anos_nba` int(3) NOT NULL,
  `campeon_nba` tinyint(1) NOT NULL,
  `num_vec_camp_nba` int(3) NOT NULL,
  `num_vec_camp_conf` int(3) NOT NULL,
  `num_vec_camp_div` int(3) NOT NULL,
  `estadio` varchar(255) COLLATE utf8_bin NOT NULL,
  `equipoAfiliado` varchar(255) COLLATE utf8_bin NOT NULL,
  `imagen` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_jugador` int(4) DEFAULT NULL,
  PRIMARY KEY (`id_franquicia`),
  KEY `id_jugador` (`id_jugador`),
  KEY `id_jugador_2` (`id_jugador`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id_franquicia`, `nombre_franquicia`, `sede`, `propietario`, `presupuesto`, `conferencia`, `division`, `anos_nba`, `campeon_nba`, `num_vec_camp_nba`, `num_vec_camp_conf`, `num_vec_camp_div`, `estadio`, `equipoAfiliado`, `imagen`, `id_jugador`) VALUES
(1, 'Oozz', 'Hannover', 'Hermann Carvell', '$32155280.32', 'este', 'sur', 3, 0, 20, 33, 84, 'Niedersachsen', 'Bailey LLC', 'http://dummyimage.com/245x247.png/dddddd/000000', NULL),
(2, 'Lazz', 'Saint-Eustache', 'Dorie Duerdin', '$43536169.53', 'este', 'pacifico', 8, 0, 8, 51, 48, 'Québec', 'Ward-Bauch', 'http://dummyimage.com/176x172.png/dddddd/000000', NULL),
(3, 'Bubbletube', 'Kuching', 'Alyce Pales', '$86393059.22', 'este', 'atlantico', 9, 1, 41, 51, 78, 'Sarawak', 'Quitzon Group', 'http://dummyimage.com/182x241.png/cc0000/ffffff', NULL),
(4, 'Topicware', 'Kondangrege', 'Dorey Crucitti', '$96557790.17', 'este', 'atlantico', 11, 1, 77, 75, 51, '', 'Crona-Frami', 'http://dummyimage.com/249x110.png/cc0000/ffffff', NULL),
(5, 'Cogidoo', 'Svatava', 'Roger Hubbold', '$49661967.91', 'este', 'atlantico', 18, 1, 23, 57, 13, '', 'Connelly-Kovacek', 'http://dummyimage.com/139x216.png/cc0000/ffffff', NULL),
(6, 'Topicshots', 'Villa Bustos', 'Reinald Compson', '$83551097.37', 'oeste', 'sur', 3, 1, 57, 45, 7, '', 'Weber and Sons', 'http://dummyimage.com/221x137.png/ff4444/ffffff', NULL),
(7, 'BlogXS', 'Lille', 'Vite Larmouth', '$39239616.81', 'este', 'atlantico', 6, 0, 46, 46, 64, 'Nord-Pas-de-Calais', 'Mosciski-Gusikowski', 'http://dummyimage.com/231x138.png/5fa2dd/ffffff', NULL),
(8, 'Vitz', 'Chandra', 'Arron Briton', '$79363430.44', 'oeste', 'atlantico', 6, 1, 87, 81, 85, '', 'Greenfelder-Cummerata', 'http://dummyimage.com/177x153.png/ff4444/ffffff', NULL),
(9, 'Muxo', 'Pilníkov', 'Randolph Sinnie', '$23233333.80', 'oeste', 'sur', 19, 1, 34, 71, 19, '', 'Bruen-Goldner', 'http://dummyimage.com/198x149.png/cc0000/ffffff', NULL),
(10, 'Skinder', 'Jatinagara Kulon', 'Deana Conti', '$64882345.95', 'oeste', 'pacifico', 11, 1, 72, 87, 34, '', 'Collins LLC', 'http://dummyimage.com/222x148.png/dddddd/000000', NULL),
(11, 'Flashdog', 'Boac', 'Sterne Keers', '$62912870.06', 'oeste', 'norte', 19, 0, 8, 80, 30, '', 'Bins-Balistreri', 'http://dummyimage.com/106x193.png/ff4444/ffffff', NULL),
(12, 'Agimba', 'Xiayang', 'Dita Heaps', '$81472276.46', 'oeste', 'sur', 14, 0, 79, 3, 96, '', 'Mohr and Sons', 'http://dummyimage.com/114x146.png/dddddd/000000', NULL),
(13, 'Agivu', 'Novi Zagreb', 'Salomone Claridge', '$20424207.33', 'oeste', 'pacifico', 20, 0, 98, 11, 18, '', 'Smitham LLC', 'http://dummyimage.com/213x174.png/ff4444/ffffff', NULL),
(14, 'Izio', 'Bayan Qagan', 'Lovell Kilgrew', '$71978490.42', 'este', 'sur', 14, 0, 31, 20, 19, '', 'Wolf Group', 'http://dummyimage.com/222x241.png/ff4444/ffffff', NULL),
(15, 'Demizz', 'Söderhamn', 'Annelise Mogridge', '$69281434.54', 'oeste', 'atlantico', 19, 0, 30, 89, 5, 'Gävleborg', 'Bauch Inc', 'http://dummyimage.com/201x135.png/ff4444/ffffff', NULL),
(16, 'Photobug', 'Alor Setar', 'Elsa Gilburt', '$54742458.38', 'oeste', 'norte', 7, 0, 41, 64, 24, 'Kedah', 'Graham-MacGyver', 'http://dummyimage.com/213x232.png/dddddd/000000', NULL),
(17, 'Mymm', 'Trois-Rivières', 'Wesley Cawsey', '$29534677.15', 'este', 'sur', 13, 0, 13, 31, 74, 'Québec', 'Dibbert and Sons', 'http://dummyimage.com/208x135.png/ff4444/ffffff', NULL),
(18, 'Oodoo', 'Décines-Charpieu', 'Norman Cornelisse', '$68965024.71', 'oeste', 'norte', 16, 0, 39, 100, 87, 'Rhône-Alpes', 'Hayes Inc', 'http://dummyimage.com/178x106.png/5fa2dd/ffffff', NULL),
(19, 'Kamba', 'Paris 10', 'Laird Ibel', '$68607891.60', 'oeste', 'pacifico', 0, 1, 18, 31, 44, 'Île-de-France', 'Roob, Kertzmann and Stamm', 'http://dummyimage.com/176x159.png/cc0000/ffffff', NULL),
(20, 'Skiptube', 'Liangshuijing', 'Issiah Orange', '$69134308.54', 'oeste', 'sur', 2, 0, 30, 97, 22, '', 'Watsica-Parisian', 'http://dummyimage.com/111x120.png/ff4444/ffffff', NULL),
(21, 'Dazzlesphere', 'Huxiaoqiao', 'Ingelbert Hammerstone', '$46630755.19', 'oeste', 'norte', 4, 0, 96, 67, 86, '', 'Wuckert-Waters', 'http://dummyimage.com/119x141.png/ff4444/ffffff', NULL),
(22, 'Livepath', 'Stryszów', 'Delcina de Pinna', '$62358484.20', 'este', 'pacifico', 7, 0, 91, 66, 52, '', 'Harris LLC', 'http://dummyimage.com/193x112.png/ff4444/ffffff', NULL),
(23, 'Blogpad', 'Tashla', 'Menard Porch', '$18941400.84', 'este', 'sur', 8, 1, 56, 78, 55, '', 'Larkin-Schoen', 'http://dummyimage.com/203x210.png/5fa2dd/ffffff', NULL),
(24, 'Flashset', 'Jiangwakou', 'Cyrus Cockerton', '$66188240.80', 'oeste', 'norte', 0, 0, 39, 85, 78, '', 'Rogahn Inc', 'http://dummyimage.com/212x219.png/ff4444/ffffff', NULL),
(25, 'Quimba', 'Książ Wielkopolski', 'Cassy Thow', '$91078580.35', 'este', 'atlantico', 6, 0, 30, 16, 6, '', 'Casper, Deckow and Hammes', 'http://dummyimage.com/190x126.png/dddddd/000000', NULL),
(26, 'Camimbo', 'Krajan Gading', 'Kevyn Monks', '$72221858.15', 'este', 'sur', 8, 0, 38, 99, 9, '', 'Strosin and Sons', 'http://dummyimage.com/188x211.png/dddddd/000000', NULL),
(27, 'Oyonder', 'Kumai', 'Thorndike Cantera', '$15079834.72', 'este', 'pacifico', 9, 0, 23, 83, 82, '', 'Maggio Inc', 'http://dummyimage.com/109x150.png/5fa2dd/ffffff', NULL),
(28, 'Devpulse', 'Liangzeng', 'Constantine Cheal', '$87952820.62', 'este', 'atlantico', 5, 1, 58, 15, 85, '', 'Schoen-Leffler', 'http://dummyimage.com/155x145.png/5fa2dd/ffffff', NULL),
(29, 'Yombu', 'Xianghua', 'Con Antwis', '$25095783.97', 'oeste', 'pacifico', 7, 1, 73, 20, 94, '', 'Mraz-Jakubowski', 'http://dummyimage.com/209x231.png/5fa2dd/ffffff', NULL),
(30, 'Brightbean', 'Porto Salvo', 'Virgil Dunckley', '$35885826.42', 'este', 'norte', 0, 1, 23, 33, 15, 'Lisboa', 'Emard Inc', 'http://dummyimage.com/193x166.png/dddddd/000000', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
CREATE TABLE IF NOT EXISTS `jugadores` (
  `id_jugador` int(4) NOT NULL AUTO_INCREMENT,
  `nombre_principal` varchar(50) COLLATE utf8_bin NOT NULL,
  `nombre_completo` varchar(255) COLLATE utf8_bin NOT NULL,
  `fecha_nacimiento` varchar(15) COLLATE utf8_bin NOT NULL,
  `altura` int(3) NOT NULL,
  `peso` int(3) NOT NULL,
  `posicion` varchar(50) COLLATE utf8_bin NOT NULL,
  `universidad` varchar(100) COLLATE utf8_bin NOT NULL,
  `draft` varchar(50) COLLATE utf8_bin NOT NULL,
  `anos_nba` int(2) NOT NULL,
  `campeon_nba` tinyint(1) NOT NULL,
  `num_vec_camp_nba` int(2) NOT NULL,
  `imagen` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_franquicia` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_jugador`),
  KEY `id_franquicia` (`id_franquicia`),
  KEY `id_franquicia_2` (`id_franquicia`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id_jugador`, `nombre_principal`, `nombre_completo`, `fecha_nacimiento`, `altura`, `peso`, `posicion`, `universidad`, `draft`, `anos_nba`, `campeon_nba`, `num_vec_camp_nba`, `imagen`, `id_franquicia`) VALUES
(1, 'Grinyer', 'Ronalda Grinyer', '19/03/1980', 154, 120, 'ala-pívot', 'Tokiwa University', 'Primera ronda', 7, 1, 8, 'http://dummyimage.com/150x233.jpg/ff4444/ffffff', 1),
(2, 'Gracewood', 'Farrah Gracewood', '25/10/1991', 201, 133, 'base', 'Goshen College', 'Primera ronda', 11, 0, 3, 'http://dummyimage.com/247x191.bmp/5fa2dd/ffffff', 1),
(3, 'McGuinley', 'Dore McGuinley', '28/09/1988', 164, 84, 'escolta', 'Indiana University - East', 'Primera ronda', 8, 1, 2, 'http://dummyimage.com/148x164.png/5fa2dd/ffffff', 1),
(4, 'Fochs', 'Mata Fochs', '07/08/1982', 212, 56, 'pívot', 'Institute of Business Management ', 'Primera ronda', 6, 0, 8, 'http://dummyimage.com/225x168.jpg/ff4444/ffffff', 1),
(5, 'Ginnaly', 'Freddy Ginnaly', '22/07/1982', 167, 84, 'base', 'The Kingdom University', 'Segunda ronda', 12, 0, 3, 'http://dummyimage.com/229x187.jpg/5fa2dd/ffffff', 1),
(6, 'Briereton', 'Vaclav Briereton', '16/08/1993', 180, 79, 'base', 'Universidad Católica de Córdoba', 'Primera ronda', 2, 0, 8, 'http://dummyimage.com/190x248.png/dddddd/000000', 1),
(7, 'Ionesco', 'Thedric Ionesco', '17/12/1995', 156, 61, 'escolta', 'Universität für Musik und darstellende Kunst Graz', 'Segunda ronda', 9, 0, 1, 'http://dummyimage.com/118x125.bmp/5fa2dd/ffffff', 1),
(8, 'Ebertz', 'Rickie Ebertz', '04/01/1980', 182, 148, 'ala-pívot', 'Slobomir P Univerzitet', 'Segunda ronda', 2, 0, 2, 'http://dummyimage.com/174x201.png/dddddd/000000', 1),
(9, 'Hendrick', 'Radcliffe Hendrick', '23/12/1999', 180, 64, 'ala-pívot', 'National University of Internal Affairs', 'Segunda ronda', 9, 1, 7, 'http://dummyimage.com/145x135.jpg/dddddd/000000', 1),
(10, 'Perchard', 'Rinaldo Perchard', '31/12/1972', 181, 85, 'base', 'Oklahoma Panhandle State University', 'Primera ronda', 6, 1, 2, 'http://dummyimage.com/102x235.bmp/cc0000/ffffff', 1),
(11, 'Yeandel', 'Barbi Yeandel', '28/02/1991', 217, 75, 'pívot', 'University of Oregon', 'Segunda ronda', 9, 0, 5, 'http://dummyimage.com/120x126.png/ff4444/ffffff', 2),
(12, 'Trimmell', 'Aurelia Trimmell', '04/02/1993', 177, 70, 'pívot', 'University of Nebraska - Omaha', 'Primera ronda', 9, 1, 1, 'http://dummyimage.com/133x111.png/5fa2dd/ffffff', NULL),
(13, 'Spellar', 'Aube Spellar', '28/02/1979', 170, 112, 'base', 'Taegu University', 'Segunda ronda', 12, 1, 2, 'http://dummyimage.com/244x141.png/dddddd/000000', NULL),
(14, 'Headford', 'Jarret Headford', '27/05/1987', 171, 132, 'ala-pívot', 'Ecole Nationale Supérieure des Mines de Paris', 'Primera ronda', 8, 1, 7, 'http://dummyimage.com/128x109.bmp/5fa2dd/ffffff', NULL),
(15, 'January', 'Vi January', '22/07/1972', 190, 69, 'escolta', 'Universiti Tun Hussein Onn Malaysia', 'Primera ronda', 9, 1, 7, 'http://dummyimage.com/158x228.bmp/cc0000/ffffff', NULL),
(16, 'Carsey', 'Orren Carsey', '18/02/1987', 202, 120, 'ala-pívot', 'Universidad de Artes, Ciencias y Comunicación', 'Primera ronda', 1, 1, 1, 'http://dummyimage.com/223x181.jpg/dddddd/000000', NULL),
(17, 'Drabble', 'Carma Drabble', '21/01/1976', 195, 138, 'pívot', 'Harokopio University', 'Primera ronda', 1, 0, 3, 'http://dummyimage.com/113x249.png/dddddd/000000', NULL),
(18, 'Pringell', 'Sadie Pringell', '17/02/1971', 192, 134, 'base', 'Moldova Cooperative Trade University', 'Primera ronda', 12, 1, 1, 'http://dummyimage.com/245x155.jpg/ff4444/ffffff', NULL),
(19, 'Murgatroyd', 'Gilberte Murgatroyd', '11/09/1976', 189, 146, 'escolta', 'Tilka Manjhi Bhagalpur University', 'Segunda ronda', 6, 0, 8, 'http://dummyimage.com/217x202.png/cc0000/ffffff', NULL),
(20, 'Raiston', 'Carlyn Raiston', '22/11/1995', 223, 66, 'base', 'University of Moncton, Edmundston', 'Segunda ronda', 2, 1, 3, 'http://dummyimage.com/169x117.bmp/5fa2dd/ffffff', NULL),
(21, 'Pierri', 'Redford Pierri', '10/10/1975', 171, 76, 'pívot', 'Utsunomiya University', 'Segunda ronda', 6, 1, 7, 'http://dummyimage.com/136x247.jpg/dddddd/000000', NULL),
(22, 'Dumbell', 'Tessa Dumbell', '29/06/1998', 184, 119, 'base', 'University Marien Ngouabi Brazzaville', 'Segunda ronda', 10, 1, 2, 'http://dummyimage.com/104x248.jpg/dddddd/000000', NULL),
(23, 'Spreckley', 'Demetris Spreckley', '03/06/1993', 228, 105, 'alero', 'Yantai University', 'Segunda ronda', 10, 0, 10, 'http://dummyimage.com/245x236.jpg/dddddd/000000', NULL),
(24, 'Theaker', 'Jasmin Theaker', '10/11/1994', 227, 124, 'pívot', 'Sri Lanka Institute of Advanced Technical Education', 'Segunda ronda', 12, 1, 10, 'http://dummyimage.com/188x138.jpg/dddddd/000000', NULL),
(25, 'Basill', 'Thorstein Basill', '31/07/1996', 156, 108, 'alero', 'Shanghai University of Science and Technology', 'Primera ronda', 5, 1, 8, 'http://dummyimage.com/148x197.png/5fa2dd/ffffff', NULL),
(26, 'De Maine', 'Paulo De Maine', '29/11/1972', 207, 119, 'ala-pívot', 'Universitat Oberta de Catalunya', 'Primera ronda', 5, 1, 9, 'http://dummyimage.com/242x224.bmp/cc0000/ffffff', NULL),
(27, 'Barltrop', 'Adara Barltrop', '12/09/1984', 152, 137, 'escolta', 'Edinboro University of Pennsylvania', 'Segunda ronda', 2, 0, 7, 'http://dummyimage.com/214x139.bmp/ff4444/ffffff', NULL),
(28, 'Cuseck', 'Candice Cuseck', '23/01/1977', 210, 52, 'ala-pívot', 'Port Dickson Polytechnic', 'Primera ronda', 9, 0, 10, 'http://dummyimage.com/103x210.png/dddddd/000000', NULL),
(29, 'Van de Castele', 'Danny Van de Castele', '29/02/1992', 192, 53, 'escolta', 'Université Gaston Berger Saint-Louis', 'Segunda ronda', 5, 1, 10, 'http://dummyimage.com/208x165.jpg/5fa2dd/ffffff', NULL),
(30, 'Lewry', 'Shelbi Lewry', '11/01/1976', 194, 72, 'ala-pívot', 'European University', 'Segunda ronda', 12, 1, 5, 'http://dummyimage.com/182x134.jpg/5fa2dd/ffffff', NULL),
(31, 'Brilleman', 'Dionne Brilleman', '20/04/1982', 195, 132, 'alero', 'Trinity College of Music', 'Primera ronda', 9, 0, 6, 'http://dummyimage.com/117x225.jpg/dddddd/000000', NULL),
(32, 'Durtnell', 'Morly Durtnell', '26/12/1979', 174, 68, 'alero', 'Arab Open University', 'Segunda ronda', 2, 1, 6, 'http://dummyimage.com/231x121.jpg/5fa2dd/ffffff', NULL),
(33, 'Hearns', 'Minor Hearns', '18/04/1998', 162, 141, 'alero', 'Kuzbass State Technical University', 'Primera ronda', 9, 0, 1, 'http://dummyimage.com/154x232.png/5fa2dd/ffffff', NULL),
(34, 'Secker', 'Ailey Secker', '01/12/1979', 196, 120, 'ala-pívot', 'Kongju National University', 'Primera ronda', 9, 0, 6, 'http://dummyimage.com/156x184.png/5fa2dd/ffffff', NULL),
(35, 'Coleby', 'Chico Coleby', '15/10/1976', 172, 138, 'escolta', 'Barcelona Graduate School of Economics', 'Primera ronda', 7, 0, 3, 'http://dummyimage.com/165x213.bmp/5fa2dd/ffffff', NULL),
(36, 'Biermatowicz', 'Worthington Biermatowicz', '11/12/1997', 206, 120, 'escolta', 'Drake University', 'Primera ronda', 6, 1, 5, 'http://dummyimage.com/218x134.bmp/dddddd/000000', NULL),
(37, 'Donaghie', 'Tymon Donaghie', '05/01/1991', 227, 146, 'escolta', 'Osaka International University', 'Segunda ronda', 5, 0, 3, 'http://dummyimage.com/133x158.png/ff4444/ffffff', NULL),
(38, 'Janew', 'Ana Janew', '21/09/1982', 186, 65, 'pívot', 'Planwel University', 'Primera ronda', 7, 0, 6, 'http://dummyimage.com/168x138.png/5fa2dd/ffffff', NULL),
(39, 'Antonignetti', 'Malcolm Antonignetti', '26/08/1989', 156, 126, 'alero', 'Chuo University', 'Primera ronda', 12, 0, 10, 'http://dummyimage.com/232x199.png/cc0000/ffffff', NULL),
(40, 'Drysdell', 'Xena Drysdell', '01/10/1991', 164, 109, 'alero', 'Ecole Supérieure des Sciences et Technologie de lIngénieur de Nancy', 'Segunda ronda', 4, 1, 4, 'http://dummyimage.com/113x224.bmp/cc0000/ffffff', NULL),
(41, 'Huddy', 'Shurlocke Huddy', '27/07/1975', 183, 129, 'base', 'National Aerospace University Kharkov Aviation Institute', 'Segunda ronda', 10, 1, 6, 'http://dummyimage.com/164x247.bmp/ff4444/ffffff', NULL),
(42, 'Scurlock', 'Vladamir Scurlock', '01/04/1979', 185, 146, 'base', 'Universitat de Vic', 'Segunda ronda', 5, 0, 3, 'http://dummyimage.com/108x216.bmp/ff4444/ffffff', NULL),
(43, 'Stailey', 'Herbie Stailey', '31/08/1979', 185, 76, 'ala-pívot', 'Kardan University', 'Primera ronda', 8, 1, 8, 'http://dummyimage.com/184x228.jpg/cc0000/ffffff', NULL),
(44, 'Allebone', 'June Allebone', '31/05/1972', 167, 51, 'pívot', 'Bauchi State University, Gadau', 'Segunda ronda', 8, 0, 5, 'http://dummyimage.com/106x134.jpg/5fa2dd/ffffff', NULL),
(45, 'Jurczik', 'Renaud Jurczik', '21/12/1974', 177, 133, 'pívot', 'Université Joseph Fourier (Grenoble I)', 'Primera ronda', 1, 1, 5, 'http://dummyimage.com/247x113.bmp/dddddd/000000', NULL),
(46, 'Sager', 'Corbin Sager', '16/03/1994', 225, 76, 'pívot', 'Université Ibn Toufail', 'Primera ronda', 3, 1, 9, 'http://dummyimage.com/147x210.bmp/ff4444/ffffff', NULL),
(47, 'Von Oertzen', 'Hastie Von Oertzen', '17/02/1972', 155, 87, 'base', 'Takarazuka University of Art and Design', 'Segunda ronda', 4, 0, 7, 'http://dummyimage.com/138x241.bmp/5fa2dd/ffffff', NULL),
(48, 'Beccera', 'Theo Beccera', '10/10/1981', 200, 85, 'ala-pívot', 'Pedagogical University of Slupsk', 'Segunda ronda', 1, 1, 9, 'http://dummyimage.com/154x196.bmp/dddddd/000000', NULL),
(49, 'Heliet', 'Waldo Heliet', '06/11/1994', 212, 87, 'base', 'Hallym University', 'Primera ronda', 8, 1, 5, 'http://dummyimage.com/242x175.png/5fa2dd/ffffff', NULL),
(50, 'Culleford', 'Carlotta Culleford', '13/02/1971', 226, 137, 'ala-pívot', 'Siena Heights University', 'Primera ronda', 7, 0, 7, 'http://dummyimage.com/188x200.jpg/dddddd/000000', NULL),
(51, 'Matitiaho', 'Meriel Matitiaho', '02/02/1978', 200, 71, 'escolta', 'Coventry University', 'Primera ronda', 6, 0, 9, 'http://dummyimage.com/178x237.bmp/ff4444/ffffff', NULL),
(52, 'Quigg', 'Erie Quigg', '19/03/1997', 212, 68, 'escolta', 'Montclair State University', 'Primera ronda', 3, 0, 3, 'http://dummyimage.com/247x138.png/dddddd/000000', NULL),
(53, 'Zannini', 'Cathrin Zannini', '06/07/1990', 152, 143, 'escolta', 'Kwangju National University of Education', 'Segunda ronda', 5, 1, 8, 'http://dummyimage.com/161x157.bmp/dddddd/000000', NULL),
(54, 'Witherington', 'Naoma Witherington', '13/10/1987', 166, 96, 'pívot', 'Regent International University', 'Segunda ronda', 5, 0, 6, 'http://dummyimage.com/189x230.jpg/5fa2dd/ffffff', NULL),
(55, 'Exelby', 'Pammy Exelby', '24/09/1999', 161, 137, 'alero', 'University of Waterloo', 'Segunda ronda', 5, 0, 3, 'http://dummyimage.com/122x134.jpg/ff4444/ffffff', NULL),
(56, 'Oene', 'Henderson Oene', '02/08/1978', 229, 128, 'ala-pívot', 'King Saud University', 'Segunda ronda', 7, 1, 9, 'http://dummyimage.com/191x185.png/cc0000/ffffff', NULL),
(57, 'Murrock', 'Patty Murrock', '20/07/1979', 165, 139, 'ala-pívot', 'Aarhus School of Business', 'Segunda ronda', 1, 0, 7, 'http://dummyimage.com/141x241.png/ff4444/ffffff', NULL),
(58, 'Speedy', 'Konrad Speedy', '24/10/1987', 164, 137, 'ala-pívot', 'Tokyo Denki University', 'Primera ronda', 6, 1, 7, 'http://dummyimage.com/234x219.png/ff4444/ffffff', NULL),
(59, 'Pagan', 'Lenna Pagan', '20/04/1975', 159, 128, 'pívot', 'Józef Tyszkiewicz College of Business and Computer Science in Bielsko-Biala', 'Segunda ronda', 5, 0, 2, 'http://dummyimage.com/202x237.bmp/5fa2dd/ffffff', NULL),
(60, 'Pantlin', 'Seline Pantlin', '24/01/1981', 190, 93, 'pívot', 'Baikal National University of Economics and Law', 'Segunda ronda', 12, 1, 10, 'http://dummyimage.com/182x102.bmp/dddddd/000000', NULL),
(61, 'Hartmann', 'Cece Hartmann', '27/09/1999', 206, 93, 'pívot', 'Chuka University', 'Segunda ronda', 4, 0, 8, 'http://dummyimage.com/233x170.bmp/dddddd/000000', NULL),
(62, 'Velten', 'Kalina Velten', '04/06/1980', 164, 75, 'base', 'Tunku Abdul Rahman University (Chinese University)', 'Segunda ronda', 4, 1, 5, 'http://dummyimage.com/237x107.png/ff4444/ffffff', NULL),
(63, 'De Gogay', 'Glory De Gogay', '17/12/1978', 197, 61, 'pívot', 'Fachhochschule Brandenburg', 'Segunda ronda', 5, 1, 3, 'http://dummyimage.com/177x214.jpg/cc0000/ffffff', NULL),
(64, 'Bulteel', 'Rik Bulteel', '12/03/1983', 212, 137, 'ala-pívot', 'Babol University of Medical Sciences', 'Primera ronda', 12, 1, 7, 'http://dummyimage.com/178x168.bmp/ff4444/ffffff', NULL),
(65, 'Giamitti', 'Jarrad Giamitti', '19/07/1991', 187, 109, 'escolta', 'Fachhochschule Münster', 'Segunda ronda', 5, 1, 7, 'http://dummyimage.com/123x184.bmp/5fa2dd/ffffff', NULL),
(66, 'Skillitt', 'Ryon Skillitt', '15/12/1987', 177, 142, 'escolta', 'Lumbini Buddhist University', 'Segunda ronda', 4, 1, 7, 'http://dummyimage.com/101x110.bmp/cc0000/ffffff', NULL),
(67, 'Eastby', 'Jacquelin Eastby', '09/08/1998', 192, 140, 'base', 'University of Southern Mississippi', 'Primera ronda', 1, 1, 2, 'http://dummyimage.com/133x212.bmp/5fa2dd/ffffff', NULL),
(68, 'Proske', 'Donia Proske', '09/11/1994', 223, 112, 'alero', 'Nanzan University', 'Segunda ronda', 3, 0, 4, 'http://dummyimage.com/102x106.bmp/ff4444/ffffff', NULL),
(69, 'Banaszczyk', 'Lyn Banaszczyk', '25/09/1977', 227, 71, 'base', 'Showa University', 'Primera ronda', 7, 1, 3, 'http://dummyimage.com/136x189.bmp/5fa2dd/ffffff', NULL),
(70, 'Postan', 'Brooke Postan', '13/06/1993', 226, 100, 'alero', 'Sevastopol National Technical University', 'Segunda ronda', 2, 0, 7, 'http://dummyimage.com/127x127.jpg/ff4444/ffffff', NULL),
(71, 'Costello', 'Nicolle Costello', '30/07/1975', 223, 99, 'alero', 'Zhetysu State University ', 'Segunda ronda', 7, 0, 8, 'http://dummyimage.com/146x118.png/cc0000/ffffff', NULL),
(72, 'Juschke', 'Darci Juschke', '20/03/1990', 219, 74, 'base', 'Beijing International Studies University', 'Primera ronda', 11, 0, 6, 'http://dummyimage.com/110x121.bmp/dddddd/000000', NULL),
(73, 'Runnett', 'Neely Runnett', '10/02/1994', 163, 58, 'base', 'Illinois School of Professional Psychology - Chicago Campus', 'Segunda ronda', 9, 0, 2, 'http://dummyimage.com/136x114.bmp/ff4444/ffffff', NULL),
(74, 'Hurdwell', 'Ferdy Hurdwell', '30/09/1996', 156, 81, 'alero', 'Gansu University of Technology', 'Primera ronda', 7, 0, 5, 'http://dummyimage.com/227x116.png/dddddd/000000', NULL),
(75, 'Menco', 'Angelina Menco', '14/05/1993', 226, 52, 'alero', 'Universidad Galileo', 'Segunda ronda', 10, 0, 4, 'http://dummyimage.com/216x164.png/5fa2dd/ffffff', NULL),
(76, 'Moyse', 'Gifford Moyse', '21/12/1974', 194, 143, 'alero', 'Belarussian State University', 'Primera ronda', 2, 0, 8, 'http://dummyimage.com/184x123.bmp/cc0000/ffffff', NULL),
(77, 'Sawnwy', 'Skipper Sawnwy', '23/11/1987', 175, 131, 'pívot', 'American College of Greece', 'Primera ronda', 2, 0, 10, 'http://dummyimage.com/117x228.jpg/5fa2dd/ffffff', NULL),
(78, 'Ditch', 'Marten Ditch', '11/12/1986', 204, 55, 'base', 'Purbanchal University', 'Primera ronda', 3, 0, 7, 'http://dummyimage.com/119x201.bmp/dddddd/000000', NULL),
(79, 'Rohlfing', 'Teresina Rohlfing', '11/03/1996', 203, 103, 'escolta', 'Universidad Iberoamericana de Ciencia y Tecnologia', 'Primera ronda', 8, 1, 3, 'http://dummyimage.com/121x215.png/ff4444/ffffff', NULL),
(80, 'Dark', 'Hale Dark', '06/07/1987', 188, 116, 'alero', 'University of Rochester', 'Segunda ronda', 5, 0, 9, 'http://dummyimage.com/146x115.jpg/cc0000/ffffff', NULL),
(81, 'Fernandes', 'Alina Fernandes', '08/07/1997', 194, 121, 'escolta', 'Bates College', 'Segunda ronda', 3, 0, 9, 'http://dummyimage.com/173x156.png/ff4444/ffffff', NULL),
(82, 'Lowell', 'Melisa Lowell', '10/07/1972', 171, 138, 'alero', 'North Eastern Hill University', 'Primera ronda', 10, 0, 3, 'http://dummyimage.com/106x250.png/cc0000/ffffff', NULL),
(83, 'Rooney', 'Raff Rooney', '09/05/1976', 168, 118, 'pívot', 'United States Sports Academy', 'Segunda ronda', 8, 1, 2, 'http://dummyimage.com/214x132.bmp/dddddd/000000', NULL),
(84, 'Littleton', 'Malchy Littleton', '20/06/1984', 172, 138, 'pívot', 'Shandong University of Art and Design', 'Primera ronda', 8, 1, 6, 'http://dummyimage.com/107x238.jpg/cc0000/ffffff', NULL),
(85, 'Aseef', 'Shaylynn Aseef', '23/07/1989', 188, 77, 'alero', 'Kwame Nkrumah University of Science and Technology', 'Segunda ronda', 6, 0, 6, 'http://dummyimage.com/117x186.png/5fa2dd/ffffff', NULL),
(86, 'Garmanson', 'Chilton Garmanson', '25/02/1997', 165, 86, 'pívot', 'Cork Institute of Technology', 'Segunda ronda', 3, 0, 10, 'http://dummyimage.com/201x237.bmp/cc0000/ffffff', NULL),
(87, 'Pallaske', 'Britney Pallaske', '25/04/1993', 229, 141, 'base', 'University \"Aurel Vlaicu\" Arad', 'Primera ronda', 3, 0, 7, 'http://dummyimage.com/237x229.png/cc0000/ffffff', NULL),
(88, 'Clancey', 'Rusty Clancey', '03/12/1975', 191, 118, 'ala-pívot', 'Institute of Teachers Education, Penang', 'Primera ronda', 10, 0, 2, 'http://dummyimage.com/186x246.jpg/dddddd/000000', NULL),
(89, 'Mayte', 'Garnette Mayte', '14/04/1986', 164, 82, 'escolta', 'Niigata University of International and Information Studies', 'Primera ronda', 3, 0, 9, 'http://dummyimage.com/187x214.png/ff4444/ffffff', NULL),
(90, 'Bonellie', 'Grethel Bonellie', '10/05/1985', 192, 78, 'base', 'Tusculum College', 'Segunda ronda', 7, 0, 4, 'http://dummyimage.com/127x208.png/ff4444/ffffff', NULL),
(91, 'Eallis', 'Cathryn Eallis', '27/06/1991', 174, 105, 'pívot', 'Dankook University', 'Primera ronda', 7, 0, 5, 'http://dummyimage.com/239x180.png/cc0000/ffffff', NULL),
(92, 'Shatford', 'Sigismundo Shatford', '09/12/1984', 216, 65, 'pívot', 'Brandman University', 'Primera ronda', 3, 1, 1, 'http://dummyimage.com/149x162.png/dddddd/000000', NULL),
(93, 'Copsey', 'Belicia Copsey', '13/01/1998', 160, 55, 'escolta', 'Fine Arts Academy in Katowice', 'Segunda ronda', 9, 1, 4, 'http://dummyimage.com/169x163.png/ff4444/ffffff', NULL),
(94, 'Capstaff', 'Desmond Capstaff', '17/08/1994', 174, 65, 'escolta', 'Kyoto City University of Arts', 'Primera ronda', 2, 1, 3, 'http://dummyimage.com/136x192.png/ff4444/ffffff', NULL),
(95, 'O\'Carroll', 'Cinda O\'Carroll', '24/12/1992', 202, 75, 'escolta', 'Academy of Humanities and Economics in Lodz', 'Segunda ronda', 1, 1, 5, 'http://dummyimage.com/189x155.jpg/dddddd/000000', NULL),
(96, 'MacDunleavy', 'Jervis MacDunleavy', '03/05/1988', 196, 55, 'pívot', 'Mount Saint Vincent University', 'Segunda ronda', 5, 1, 1, 'http://dummyimage.com/178x237.png/5fa2dd/ffffff', NULL),
(97, 'Rumens', 'Danyelle Rumens', '01/06/1972', 171, 92, 'pívot', 'E.A.P. Europäische Wirtschaftshochschule Berlin', 'Primera ronda', 3, 0, 7, 'http://dummyimage.com/220x160.jpg/dddddd/000000', NULL),
(98, 'Mattisssen', 'Francoise Mattisssen', '03/02/1974', 154, 146, 'alero', 'Benguet State University', 'Primera ronda', 12, 1, 9, 'http://dummyimage.com/116x164.png/ff4444/ffffff', NULL),
(99, 'Pine', 'Hinda Pine', '10/03/1974', 201, 120, 'pívot', 'Korea National University of Arts', 'Primera ronda', 1, 1, 9, 'http://dummyimage.com/168x158.png/5fa2dd/ffffff', NULL),
(100, 'Filpo', 'Tiebold Filpo', '08/09/1982', 183, 58, 'alero', 'Dimocritus University of Thrace', 'Segunda ronda', 8, 1, 6, 'http://dummyimage.com/126x219.jpg/5fa2dd/ffffff', NULL),
(101, 'Ovell', 'Bobina Ovell', '16/03/1972', 199, 76, 'pívot', 'Beth-El College of Nursing and Health Sciences', 'Primera ronda', 5, 0, 5, 'http://dummyimage.com/188x129.png/ff4444/ffffff', NULL),
(102, 'Skace', 'Jody Skace', '31/03/1976', 211, 118, 'escolta', 'College of William and Mary', 'Primera ronda', 6, 1, 5, 'http://dummyimage.com/215x105.jpg/dddddd/000000', NULL),
(103, 'Kivits', 'Pet Kivits', '30/04/1977', 179, 89, 'escolta', 'Karadeniz Technical University', 'Primera ronda', 7, 0, 10, 'http://dummyimage.com/170x104.jpg/5fa2dd/ffffff', NULL),
(104, 'Aspray', 'Erv Aspray', '18/09/1993', 196, 132, 'escolta', 'Marycrest International University', 'Primera ronda', 9, 0, 6, 'http://dummyimage.com/192x126.png/ff4444/ffffff', NULL),
(105, 'Oldall', 'Karlene Oldall', '27/04/1981', 159, 86, 'alero', 'Mississippi State University', 'Segunda ronda', 10, 0, 3, 'http://dummyimage.com/217x136.bmp/ff4444/ffffff', NULL),
(106, 'Caldron', 'Blake Caldron', '30/11/1999', 155, 57, 'base', 'Arid Agriculture University', 'Segunda ronda', 3, 1, 5, 'http://dummyimage.com/224x141.png/dddddd/000000', NULL),
(107, 'Mullender', 'Merridie Mullender', '22/09/1978', 203, 112, 'alero', 'Ecole Nationale Supérieure des Industries Chimiques de Nancy', 'Primera ronda', 1, 1, 4, 'http://dummyimage.com/123x249.png/dddddd/000000', NULL),
(108, 'Beville', 'Raychel Beville', '15/10/1985', 208, 81, 'alero', 'Universidade da Região da Campanha', 'Segunda ronda', 8, 1, 6, 'http://dummyimage.com/224x169.png/5fa2dd/ffffff', NULL),
(109, 'Brendish', 'Georgeanna Brendish', '10/06/1993', 154, 84, 'escolta', 'Pontificia Università Lateranense', 'Primera ronda', 10, 0, 3, 'http://dummyimage.com/166x165.jpg/cc0000/ffffff', NULL),
(110, 'Rawlin', 'Josh Rawlin', '16/07/1977', 207, 105, 'pívot', 'Huizhou University', 'Primera ronda', 4, 1, 6, 'http://dummyimage.com/197x204.jpg/ff4444/ffffff', NULL),
(111, 'Dionisio', 'Debera Dionisio', '23/10/1995', 185, 77, 'escolta', 'Kanto Gakuen University', 'Segunda ronda', 3, 0, 1, 'http://dummyimage.com/172x124.jpg/cc0000/ffffff', NULL),
(112, 'Matasov', 'Haywood Matasov', '10/01/1986', 217, 74, 'base', 'Nara Medical University', 'Primera ronda', 5, 0, 3, 'http://dummyimage.com/163x113.bmp/cc0000/ffffff', NULL),
(113, 'Topliss', 'Bonita Topliss', '18/05/1993', 219, 63, 'pívot', 'Universidad de La Coruña', 'Primera ronda', 7, 0, 10, 'http://dummyimage.com/164x246.bmp/ff4444/ffffff', NULL),
(114, 'Goult', 'Jody Goult', '12/04/1970', 214, 95, 'ala-pívot', 'Silver Lake College', 'Primera ronda', 6, 0, 8, 'http://dummyimage.com/181x239.jpg/dddddd/000000', NULL),
(115, 'Ruff', 'Barbara-anne Ruff', '15/04/1997', 178, 75, 'ala-pívot', 'University of Petra', 'Segunda ronda', 9, 1, 3, 'http://dummyimage.com/188x104.png/cc0000/ffffff', NULL),
(116, 'Verdon', 'Kevan Verdon', '28/12/1991', 183, 79, 'ala-pívot', 'Belarussian State University', 'Primera ronda', 5, 1, 8, 'http://dummyimage.com/157x159.bmp/5fa2dd/ffffff', NULL),
(117, 'De Roberto', 'Perry De Roberto', '16/11/1979', 181, 132, 'pívot', 'Lagrange College', 'Segunda ronda', 6, 0, 7, 'http://dummyimage.com/152x131.png/ff4444/ffffff', NULL),
(118, 'MacAlinden', 'Charisse MacAlinden', '04/03/1980', 198, 143, 'escolta', 'Universidad Jóse Vasconcelos', 'Segunda ronda', 4, 0, 3, 'http://dummyimage.com/141x250.jpg/ff4444/ffffff', NULL),
(119, 'Leaning', 'Hayward Leaning', '03/08/1996', 194, 138, 'alero', 'Ohio University - Zanesville', 'Segunda ronda', 9, 0, 6, 'http://dummyimage.com/138x183.jpg/cc0000/ffffff', NULL),
(120, 'Haysom', 'Leonora Haysom', '31/10/1991', 199, 100, 'escolta', 'Latvian Academy of Arts', 'Primera ronda', 4, 0, 6, 'http://dummyimage.com/175x183.bmp/5fa2dd/ffffff', NULL),
(121, 'Wolfendale', 'Neala Wolfendale', '28/09/1990', 193, 94, 'ala-pívot', 'International Peoples College', 'Primera ronda', 11, 1, 7, 'http://dummyimage.com/136x156.bmp/ff4444/ffffff', NULL),
(122, 'Kayzer', 'Eadmund Kayzer', '02/11/1992', 153, 117, 'pívot', 'University of Science and Culture', 'Segunda ronda', 7, 0, 1, 'http://dummyimage.com/201x157.png/ff4444/ffffff', NULL),
(123, 'Kelson', 'Juliane Kelson', '25/07/1978', 174, 71, 'base', 'Wonkwang University', 'Segunda ronda', 8, 0, 5, 'http://dummyimage.com/145x197.jpg/dddddd/000000', NULL),
(124, 'Wardrop', 'Lucina Wardrop', '13/12/1988', 150, 149, 'escolta', 'Ecole Supérieure de Commerce de Marseille-Provence', 'Primera ronda', 11, 1, 5, 'http://dummyimage.com/102x195.png/5fa2dd/ffffff', NULL),
(125, 'Gethins', 'Leola Gethins', '17/07/1999', 228, 118, 'pívot', 'Northface University', 'Segunda ronda', 12, 1, 6, 'http://dummyimage.com/185x213.png/cc0000/ffffff', NULL),
(126, 'Byrom', 'Darin Byrom', '05/01/1972', 153, 60, 'ala-pívot', 'Universidad Empresarial', 'Segunda ronda', 7, 0, 5, 'http://dummyimage.com/131x141.png/dddddd/000000', NULL),
(127, 'Kirtland', 'Angelique Kirtland', '11/09/1986', 192, 53, 'alero', 'Beijing University of Chinese Medicine and Pharmacology', 'Primera ronda', 11, 0, 10, 'http://dummyimage.com/123x109.png/dddddd/000000', NULL),
(128, 'Marrill', 'Diandra Marrill', '17/10/1972', 185, 136, 'ala-pívot', 'Asian Medical Institute', 'Primera ronda', 3, 1, 4, 'http://dummyimage.com/231x152.png/dddddd/000000', NULL),
(129, 'Pawlett', 'Merry Pawlett', '30/01/1984', 199, 52, 'ala-pívot', 'Islamic University of Rotterdam', 'Segunda ronda', 3, 0, 10, 'http://dummyimage.com/149x111.jpg/cc0000/ffffff', NULL),
(130, 'Ivery', 'Henriette Ivery', '30/11/1981', 192, 94, 'base', 'University of Texas Pan American', 'Primera ronda', 7, 0, 8, 'http://dummyimage.com/148x174.jpg/cc0000/ffffff', NULL),
(131, 'Turmell', 'Hetti Turmell', '30/08/1995', 199, 99, 'alero', 'Osaka Womens University', 'Segunda ronda', 10, 0, 5, 'http://dummyimage.com/115x204.jpg/5fa2dd/ffffff', NULL),
(132, 'Chue', 'Cass Chue', '19/05/1998', 152, 90, 'alero', 'Fachhochschule Lausitz', 'Primera ronda', 10, 1, 6, 'http://dummyimage.com/127x146.jpg/5fa2dd/ffffff', NULL),
(133, 'Corpes', 'Pattie Corpes', '23/12/1975', 182, 149, 'alero', 'Chongqing Technology and Business University', 'Segunda ronda', 6, 1, 6, 'http://dummyimage.com/211x208.png/cc0000/ffffff', NULL),
(134, 'Chaplin', 'Annora Chaplin', '23/03/1997', 163, 129, 'pívot', 'Bryant and Stratton College', 'Segunda ronda', 2, 1, 8, 'http://dummyimage.com/163x206.png/ff4444/ffffff', NULL),
(135, 'Kilgrew', 'Hazel Kilgrew', '23/08/1992', 184, 126, 'alero', 'Senzoku Gakuen College', 'Primera ronda', 10, 0, 10, 'http://dummyimage.com/195x194.bmp/dddddd/000000', NULL),
(136, 'Grayling', 'Dorree Grayling', '17/08/1981', 224, 58, 'ala-pívot', 'Universität Hamburg', 'Primera ronda', 10, 1, 5, 'http://dummyimage.com/100x207.bmp/dddddd/000000', NULL),
(137, 'Greenshiels', 'Micheil Greenshiels', '15/09/1978', 163, 140, 'alero', 'Columbia International University', 'Segunda ronda', 10, 1, 3, 'http://dummyimage.com/116x174.png/dddddd/000000', NULL),
(138, 'Noone', 'Augy Noone', '09/12/1994', 165, 77, 'pívot', 'Hehai University', 'Primera ronda', 2, 0, 10, 'http://dummyimage.com/166x119.jpg/ff4444/ffffff', NULL),
(139, 'Garvie', 'Paul Garvie', '01/05/1988', 227, 59, 'base', 'Mogilev State University A.A. Kuleshov', 'Segunda ronda', 5, 1, 3, 'http://dummyimage.com/227x138.png/5fa2dd/ffffff', NULL),
(140, 'Fitzgerald', 'Jan Fitzgerald', '26/10/1981', 157, 94, 'ala-pívot', 'Circleville Bible College', 'Primera ronda', 11, 0, 4, 'http://dummyimage.com/187x195.bmp/ff4444/ffffff', NULL),
(141, 'McNaught', 'Deina McNaught', '07/12/1998', 203, 59, 'pívot', 'Ukrainian National Forestry University', 'Segunda ronda', 3, 0, 2, 'http://dummyimage.com/103x116.png/ff4444/ffffff', NULL),
(142, 'Idney', 'Butch Idney', '17/05/1993', 180, 123, 'alero', 'Salem Teikyo University', 'Primera ronda', 2, 0, 6, 'http://dummyimage.com/186x227.png/cc0000/ffffff', NULL),
(143, 'Kirwan', 'Gweneth Kirwan', '05/10/1994', 155, 66, 'alero', 'Alain University of Science and Technology', 'Primera ronda', 10, 1, 2, 'http://dummyimage.com/227x221.png/cc0000/ffffff', NULL),
(144, 'Pendreigh', 'Robenia Pendreigh', '26/08/1976', 182, 79, 'escolta', 'Comrat State University', 'Segunda ronda', 7, 0, 8, 'http://dummyimage.com/225x177.jpg/dddddd/000000', NULL),
(145, 'Thiese', 'Gilburt Thiese', '02/06/1997', 160, 52, 'escolta', 'Nara Medical University', 'Segunda ronda', 10, 1, 9, 'http://dummyimage.com/172x213.jpg/dddddd/000000', NULL),
(146, 'Prendiville', 'Celinka Prendiville', '27/03/1983', 220, 94, 'escolta', 'Shonan Institute of Technology', 'Primera ronda', 8, 1, 8, 'http://dummyimage.com/238x189.png/5fa2dd/ffffff', NULL),
(147, 'Balfour', 'Orelle Balfour', '02/11/1998', 192, 93, 'escolta', 'Nisho Gakusha University', 'Segunda ronda', 11, 1, 10, 'http://dummyimage.com/163x195.png/cc0000/ffffff', NULL),
(148, 'Case', 'Leeann Case', '23/08/1975', 171, 93, 'ala-pívot', 'Universidad Estatal a Distancia', 'Segunda ronda', 1, 1, 3, 'http://dummyimage.com/189x140.png/ff4444/ffffff', NULL),
(149, 'Drain', 'Clim Drain', '16/01/1989', 216, 136, 'base', 'Swiss German University', 'Primera ronda', 4, 0, 10, 'http://dummyimage.com/157x158.bmp/ff4444/ffffff', NULL),
(150, 'Ferriby', 'Adrianna Ferriby', '12/05/1997', 153, 85, 'base', 'University of Vermont', 'Segunda ronda', 5, 1, 2, 'http://dummyimage.com/135x213.png/ff4444/ffffff', NULL),
(151, 'Kilbourne', 'Dulcea Kilbourne', '20/11/1999', 206, 69, 'ala-pívot', 'University of Northern Virginia, Prague Campus', 'Primera ronda', 5, 0, 7, 'http://dummyimage.com/130x192.jpg/cc0000/ffffff', NULL),
(152, 'Madgewick', 'Tiebold Madgewick', '05/10/1991', 184, 83, 'ala-pívot', 'Bangkok University', 'Segunda ronda', 3, 0, 3, 'http://dummyimage.com/243x162.png/ff4444/ffffff', NULL),
(153, 'Caldera', 'Caprice Caldera', '04/02/1988', 169, 76, 'ala-pívot', 'Bournemouth University', 'Primera ronda', 8, 0, 10, 'http://dummyimage.com/109x174.bmp/cc0000/ffffff', NULL),
(154, 'Waylen', 'Jared Waylen', '17/01/1987', 153, 135, 'escolta', 'Mekelle Institute of Technology', 'Primera ronda', 7, 1, 10, 'http://dummyimage.com/159x233.png/dddddd/000000', NULL),
(155, 'Bemand', 'Marietta Bemand', '04/10/1983', 162, 101, 'escolta', 'Falmouth University', 'Primera ronda', 1, 0, 8, 'http://dummyimage.com/173x106.png/5fa2dd/ffffff', NULL),
(156, 'Cowderoy', 'Levon Cowderoy', '18/03/1996', 187, 133, 'escolta', 'Medical Academy in Warszawa', 'Segunda ronda', 6, 1, 2, 'http://dummyimage.com/104x129.png/dddddd/000000', NULL),
(157, 'Gislebert', 'Noah Gislebert', '04/05/1977', 166, 118, 'escolta', 'Galillee College', 'Primera ronda', 8, 0, 2, 'http://dummyimage.com/188x174.jpg/dddddd/000000', NULL),
(158, 'von Grollmann', 'Burnard von Grollmann', '27/04/1996', 186, 102, 'escolta', 'University of Derby', 'Segunda ronda', 6, 1, 2, 'http://dummyimage.com/241x176.bmp/dddddd/000000', NULL),
(159, 'Stoakes', 'Haydon Stoakes', '17/10/1996', 224, 75, 'escolta', 'Otaru University of Commerce', 'Segunda ronda', 5, 0, 6, 'http://dummyimage.com/237x245.bmp/cc0000/ffffff', NULL),
(160, 'Shellsheere', 'Lorilyn Shellsheere', '03/08/1994', 202, 59, 'ala-pívot', 'Nanjing Agricultural University', 'Primera ronda', 7, 0, 6, 'http://dummyimage.com/239x114.png/ff4444/ffffff', NULL),
(161, 'Kingett', 'Elisabet Kingett', '20/01/1991', 182, 149, 'base', 'Universiti Malaysia Sabah', 'Primera ronda', 3, 1, 8, 'http://dummyimage.com/235x169.png/dddddd/000000', NULL),
(162, 'Rosenhaupt', 'Ludwig Rosenhaupt', '07/12/1984', 183, 86, 'base', 'Universidad de Congreso', 'Primera ronda', 9, 0, 2, 'http://dummyimage.com/108x140.jpg/ff4444/ffffff', NULL),
(163, 'Dyers', 'Liva Dyers', '03/08/1975', 222, 132, 'base', 'University of Cyprus', 'Segunda ronda', 10, 1, 8, 'http://dummyimage.com/143x233.png/dddddd/000000', NULL),
(164, 'Peeter', 'Murray Peeter', '27/01/1985', 224, 100, 'base', 'Universidad Politécnica de Cataluna', 'Primera ronda', 7, 0, 5, 'http://dummyimage.com/226x248.jpg/cc0000/ffffff', NULL),
(165, 'Valente', 'Javier Valente', '17/12/1993', 153, 139, 'ala-pívot', 'Nara University of Education', 'Primera ronda', 3, 0, 6, 'http://dummyimage.com/200x213.bmp/dddddd/000000', NULL),
(166, 'Feehan', 'Almeda Feehan', '01/12/1991', 211, 81, 'pívot', 'Central Radio and TV University', 'Segunda ronda', 9, 0, 4, 'http://dummyimage.com/144x195.png/dddddd/000000', NULL),
(167, 'Philpot', 'Clo Philpot', '19/11/1997', 164, 143, 'escolta', 'Colegio de Estudios Superiores de Administración (CESA)', 'Segunda ronda', 9, 1, 5, 'http://dummyimage.com/226x160.bmp/5fa2dd/ffffff', NULL),
(168, 'Novelli', 'Augusta Novelli', '02/09/1991', 226, 67, 'alero', 'University of Food Technology', 'Segunda ronda', 1, 0, 3, 'http://dummyimage.com/125x185.png/cc0000/ffffff', NULL),
(169, 'Mabbs', 'Carol Mabbs', '02/06/1996', 152, 128, 'pívot', 'Universidad de La Habana', 'Segunda ronda', 11, 0, 2, 'http://dummyimage.com/196x168.jpg/dddddd/000000', NULL),
(170, 'Sangar', 'Corinna Sangar', '13/09/1975', 180, 148, 'alero', 'Norways Information Technology University College', 'Segunda ronda', 5, 0, 6, 'http://dummyimage.com/156x112.bmp/ff4444/ffffff', NULL),
(171, 'Binnell', 'Wilbert Binnell', '03/09/1997', 160, 89, 'pívot', 'Dadabhoy Institute of Higher Education', 'Segunda ronda', 4, 0, 5, 'http://dummyimage.com/193x242.jpg/dddddd/000000', NULL),
(172, 'Spooner', 'Rois Spooner', '23/05/1995', 192, 96, 'escolta', 'University of Brighton', 'Segunda ronda', 9, 1, 2, 'http://dummyimage.com/188x172.png/cc0000/ffffff', NULL),
(173, 'Matuszkiewicz', 'Kitti Matuszkiewicz', '14/06/1994', 204, 144, 'pívot', 'Coker College', 'Primera ronda', 3, 1, 5, 'http://dummyimage.com/134x243.jpg/5fa2dd/ffffff', NULL),
(174, 'Pulham', 'Rog Pulham', '12/03/1979', 200, 73, 'pívot', 'Universidade do Estado de Santa Catarina', 'Primera ronda', 4, 0, 5, 'http://dummyimage.com/190x159.jpg/dddddd/000000', NULL),
(175, 'McCreedy', 'Alexander McCreedy', '28/03/1983', 227, 69, 'ala-pívot', 'Allama Iqbal Open University', 'Primera ronda', 1, 1, 3, 'http://dummyimage.com/101x149.bmp/ff4444/ffffff', NULL),
(176, 'Dyson', 'Maxine Dyson', '01/09/1984', 181, 139, 'pívot', 'European Graduate School, Media & Communications', 'Segunda ronda', 5, 0, 7, 'http://dummyimage.com/156x166.jpg/dddddd/000000', NULL),
(177, 'Westberg', 'Charmain Westberg', '25/07/1971', 171, 90, 'alero', 'Kyushu Dental College', 'Segunda ronda', 4, 1, 7, 'http://dummyimage.com/224x178.bmp/cc0000/ffffff', NULL),
(178, 'Broadnicke', 'Konstance Broadnicke', '16/06/1977', 174, 101, 'ala-pívot', 'Dar al Hekma College', 'Segunda ronda', 11, 1, 6, 'http://dummyimage.com/141x169.jpg/dddddd/000000', NULL),
(179, 'Palfreman', 'Debera Palfreman', '07/01/1991', 218, 61, 'alero', 'Semera University', 'Primera ronda', 5, 1, 8, 'http://dummyimage.com/222x123.png/5fa2dd/ffffff', NULL),
(180, 'Bramham', 'Lillis Bramham', '29/10/1990', 196, 63, 'pívot', 'Matn University', 'Segunda ronda', 12, 1, 6, 'http://dummyimage.com/138x165.png/ff4444/ffffff', NULL),
(181, 'Yantsev', 'Abagael Yantsev', '26/06/1993', 195, 72, 'base', 'Lock Haven University of Pennsylvania', 'Segunda ronda', 4, 0, 10, 'http://dummyimage.com/211x117.jpg/5fa2dd/ffffff', NULL),
(182, 'Godleman', 'Lianne Godleman', '21/05/1971', 188, 67, 'ala-pívot', 'University of Kansas', 'Primera ronda', 10, 1, 8, 'http://dummyimage.com/138x145.bmp/ff4444/ffffff', NULL),
(183, 'McGown', 'Jacquelin McGown', '30/03/1971', 218, 87, 'ala-pívot', 'Erasmushogeschool Brussel', 'Segunda ronda', 11, 0, 8, 'http://dummyimage.com/117x215.bmp/5fa2dd/ffffff', NULL),
(184, 'Neles', 'Carce Neles', '23/02/1977', 162, 134, 'pívot', 'AISECT University', 'Segunda ronda', 5, 1, 8, 'http://dummyimage.com/162x239.png/cc0000/ffffff', NULL),
(185, 'Crankshaw', 'Appolonia Crankshaw', '20/09/1992', 217, 119, 'pívot', 'Black Hawk College', 'Segunda ronda', 2, 0, 2, 'http://dummyimage.com/106x114.png/5fa2dd/ffffff', NULL),
(186, 'Tuffell', 'Laurie Tuffell', '16/03/1979', 177, 101, 'base', 'Aga Khan University', 'Primera ronda', 11, 0, 7, 'http://dummyimage.com/188x122.jpg/dddddd/000000', NULL),
(187, 'Burdin', 'Kaspar Burdin', '20/03/1976', 195, 142, 'escolta', 'Technological Education Institute of Kozani', 'Segunda ronda', 3, 1, 5, 'http://dummyimage.com/175x126.jpg/dddddd/000000', NULL),
(188, 'Razoux', 'Ebeneser Razoux', '26/09/1999', 171, 86, 'escolta', 'Surugadai University', 'Segunda ronda', 11, 1, 10, 'http://dummyimage.com/225x218.png/cc0000/ffffff', NULL),
(189, 'Blanchette', 'Andrey Blanchette', '19/09/1977', 218, 131, 'base', 'The New School', 'Primera ronda', 11, 0, 8, 'http://dummyimage.com/132x100.jpg/dddddd/000000', NULL),
(190, 'Agar', 'Morty Agar', '07/01/1981', 152, 101, 'escolta', 'Pontificia Universidad Catolica de Puerto Rico', 'Primera ronda', 1, 0, 4, 'http://dummyimage.com/130x207.jpg/ff4444/ffffff', NULL),
(191, 'Votier', 'Lynnette Votier', '06/05/1990', 198, 92, 'alero', 'Kirkwood Community College', 'Primera ronda', 2, 1, 1, 'http://dummyimage.com/236x245.bmp/5fa2dd/ffffff', NULL),
(192, 'Moden', 'Darrin Moden', '25/09/1984', 204, 147, 'base', 'Universitas Methodist Indonesia', 'Primera ronda', 9, 0, 1, 'http://dummyimage.com/145x143.png/5fa2dd/ffffff', NULL),
(193, 'Puddicombe', 'Corry Puddicombe', '16/04/1994', 156, 146, 'ala-pívot', 'Universidade dos Acores', 'Segunda ronda', 7, 0, 9, 'http://dummyimage.com/184x132.jpg/dddddd/000000', NULL),
(194, 'Budgey', 'Danyelle Budgey', '28/06/1974', 167, 54, 'ala-pívot', 'Sungshin Womens University', 'Segunda ronda', 3, 0, 6, 'http://dummyimage.com/141x219.png/5fa2dd/ffffff', NULL),
(195, 'Emes', 'Isaiah Emes', '30/04/1975', 158, 78, 'escolta', 'Université Alioune Diop de Bambey', 'Segunda ronda', 9, 1, 9, 'http://dummyimage.com/217x217.bmp/cc0000/ffffff', NULL),
(196, 'Greveson', 'Carolyn Greveson', '24/02/1972', 212, 102, 'ala-pívot', 'Universidad de Granma', 'Primera ronda', 9, 1, 10, 'http://dummyimage.com/135x119.png/ff4444/ffffff', NULL),
(197, 'Staddart', 'Ofilia Staddart', '26/05/1985', 174, 57, 'alero', 'Technological University (Taunggyi)', 'Primera ronda', 6, 0, 5, 'http://dummyimage.com/154x223.bmp/cc0000/ffffff', NULL),
(198, 'Sindell', 'Thaine Sindell', '16/03/1972', 197, 130, 'escolta', 'Universidad Central Dominicana de Estudio Profesionales', 'Primera ronda', 12, 1, 3, 'http://dummyimage.com/152x170.jpg/ff4444/ffffff', NULL),
(199, 'Filov', 'Danika Filov', '06/03/1982', 160, 93, 'escolta', 'Tohoku Bunka Gakuen University', 'Segunda ronda', 6, 1, 10, 'http://dummyimage.com/171x168.png/dddddd/000000', NULL),
(200, 'Itzhak', 'Deni Itzhak', '11/07/1995', 183, 150, 'ala-pívot', 'Busitema University', 'Primera ronda', 4, 1, 8, 'http://dummyimage.com/216x194.png/cc0000/ffffff', NULL),
(201, 'Camillo', 'Osbourne Camillo', '02/06/1981', 225, 112, 'pívot', 'SRH University of Applied Sciences', 'Segunda ronda', 3, 0, 3, 'http://dummyimage.com/117x225.jpg/cc0000/ffffff', NULL),
(202, 'Bevans', 'Reilly Bevans', '25/05/1993', 227, 104, 'pívot', 'Technological University of Podillya', 'Primera ronda', 12, 1, 3, 'http://dummyimage.com/169x242.bmp/ff4444/ffffff', NULL),
(203, 'Chesworth', 'Findley Chesworth', '11/05/1988', 198, 88, 'pívot', 'Al Nahrain University', 'Segunda ronda', 12, 1, 1, 'http://dummyimage.com/155x124.bmp/5fa2dd/ffffff', NULL),
(204, 'Hedgeman', 'Adolphus Hedgeman', '14/12/1980', 181, 62, 'ala-pívot', 'The New School', 'Segunda ronda', 2, 0, 5, 'http://dummyimage.com/216x230.jpg/ff4444/ffffff', NULL),
(205, 'Jackways', 'Ingrid Jackways', '03/03/1974', 178, 109, 'alero', 'American University of Beirut', 'Primera ronda', 4, 0, 7, 'http://dummyimage.com/237x238.jpg/ff4444/ffffff', NULL),
(206, 'Romeril', 'Raffaello Romeril', '01/07/1997', 203, 93, 'ala-pívot', 'Free University of Tbilisi', 'Segunda ronda', 12, 1, 9, 'http://dummyimage.com/216x211.bmp/cc0000/ffffff', NULL),
(207, 'Heamus', 'Kerwinn Heamus', '09/12/1990', 168, 124, 'alero', 'University of International Business and Economics', 'Segunda ronda', 3, 0, 2, 'http://dummyimage.com/229x146.jpg/dddddd/000000', NULL),
(208, 'Godrich', 'Dugald Godrich', '08/04/1978', 188, 70, 'pívot', 'Universidad Pedagógica Veracruzana', 'Primera ronda', 2, 0, 8, 'http://dummyimage.com/170x216.bmp/dddddd/000000', NULL),
(209, 'Sends', 'Helsa Sends', '12/07/1981', 196, 81, 'escolta', 'NABA - Nuova Accademia di Belle Arti, Milan', 'Segunda ronda', 1, 1, 5, 'http://dummyimage.com/125x218.jpg/cc0000/ffffff', NULL),
(210, 'Strowan', 'Shay Strowan', '11/10/1987', 175, 68, 'escolta', 'International University of Kagoshima', 'Segunda ronda', 11, 1, 3, 'http://dummyimage.com/180x201.bmp/cc0000/ffffff', NULL),
(211, 'Beedie', 'Gussy Beedie', '04/09/1985', 171, 125, 'pívot', 'Edith Cowan University', 'Primera ronda', 12, 0, 7, 'http://dummyimage.com/181x217.png/cc0000/ffffff', NULL),
(212, 'Andreazzi', 'Flint Andreazzi', '23/07/1975', 202, 93, 'pívot', 'Université Thierno Amadou Diallo', 'Primera ronda', 6, 0, 2, 'http://dummyimage.com/148x202.jpg/ff4444/ffffff', NULL),
(213, 'Gerhold', 'Mattie Gerhold', '11/09/1984', 156, 119, 'ala-pívot', 'Kabardino-Balkarian State University', 'Primera ronda', 10, 1, 4, 'http://dummyimage.com/156x238.bmp/ff4444/ffffff', NULL),
(214, 'Frayne', 'Danita Frayne', '27/06/1991', 175, 72, 'ala-pívot', 'Universidad Michoacana de San Nicolás de Hidalgo', 'Segunda ronda', 5, 0, 2, 'http://dummyimage.com/189x215.png/ff4444/ffffff', NULL),
(215, 'Asif', 'Kinnie Asif', '28/03/1997', 205, 137, 'ala-pívot', 'Northeast University at Qinhuangdao Campus', 'Segunda ronda', 11, 0, 4, 'http://dummyimage.com/243x124.jpg/dddddd/000000', NULL),
(216, 'Murricanes', 'Lynne Murricanes', '02/06/1980', 182, 137, 'alero', 'Al Imam Al-Ouzai University', 'Segunda ronda', 9, 1, 5, 'http://dummyimage.com/241x103.png/ff4444/ffffff', NULL),
(217, 'Bianco', 'Cynthy Bianco', '06/02/1974', 165, 144, 'ala-pívot', 'Odessa National Marine University', 'Primera ronda', 10, 1, 10, 'http://dummyimage.com/169x187.png/cc0000/ffffff', NULL),
(218, 'Bockin', 'Hamil Bockin', '13/01/1986', 202, 102, 'alero', 'Butler University', 'Segunda ronda', 3, 0, 9, 'http://dummyimage.com/228x167.png/dddddd/000000', NULL),
(219, 'Upston', 'Lester Upston', '21/05/1998', 200, 117, 'base', 'Sacred Heart University', 'Segunda ronda', 11, 1, 5, 'http://dummyimage.com/122x220.jpg/cc0000/ffffff', NULL),
(220, 'Straine', 'Colman Straine', '01/05/1976', 205, 118, 'ala-pívot', 'Huachiew Chalermprakiet University', 'Segunda ronda', 3, 0, 1, 'http://dummyimage.com/171x176.bmp/cc0000/ffffff', NULL),
(221, 'Dodswell', 'Davidde Dodswell', '10/07/1998', 223, 80, 'ala-pívot', 'Oklahoma State University - Tulsa', 'Segunda ronda', 12, 0, 3, 'http://dummyimage.com/185x190.png/cc0000/ffffff', NULL),
(222, 'Bramford', 'Fredek Bramford', '05/10/1997', 171, 142, 'escolta', 'Universitat de Barcelona', 'Primera ronda', 8, 0, 8, 'http://dummyimage.com/100x229.bmp/ff4444/ffffff', NULL),
(223, 'Segeswoeth', 'Thorny Segeswoeth', '27/04/1976', 211, 132, 'ala-pívot', 'Cleveland Chiropractic College, Los Angeles', 'Primera ronda', 8, 1, 5, 'http://dummyimage.com/144x238.png/cc0000/ffffff', NULL),
(224, 'Millis', 'Roley Millis', '11/12/1986', 213, 90, 'ala-pívot', 'National University of Arts', 'Segunda ronda', 7, 0, 10, 'http://dummyimage.com/250x182.bmp/5fa2dd/ffffff', NULL),
(225, 'Pomery', 'Beatrix Pomery', '01/09/1991', 161, 59, 'base', 'Universidad Adventista de Centro América', 'Primera ronda', 10, 0, 3, 'http://dummyimage.com/245x250.bmp/ff4444/ffffff', NULL),
(226, 'Deverick', 'Galina Deverick', '19/05/1996', 213, 146, 'base', 'Université de Yaoundé I', 'Segunda ronda', 10, 1, 9, 'http://dummyimage.com/219x126.bmp/dddddd/000000', NULL),
(227, 'Ironside', 'Jermaine Ironside', '04/04/1996', 191, 62, 'pívot', 'Mugla University', 'Segunda ronda', 4, 1, 9, 'http://dummyimage.com/130x174.jpg/dddddd/000000', NULL),
(228, 'Crouse', 'Erminie Crouse', '24/11/1998', 150, 54, 'base', 'Acdemic Center for Law and Business', 'Segunda ronda', 8, 0, 10, 'http://dummyimage.com/121x102.png/cc0000/ffffff', NULL),
(229, 'Awin', 'Lesli Awin', '11/02/1982', 210, 102, 'ala-pívot', 'College of Aeronautics', 'Primera ronda', 2, 1, 5, 'http://dummyimage.com/230x207.bmp/cc0000/ffffff', NULL),
(230, 'Brimm', 'Ula Brimm', '07/08/1977', 223, 78, 'base', 'Cardiff University', 'Segunda ronda', 8, 1, 8, 'http://dummyimage.com/158x235.bmp/cc0000/ffffff', NULL),
(231, 'Westhoff', 'Kevina Westhoff', '20/04/1970', 153, 118, 'pívot', 'Universidad ISALUD', 'Segunda ronda', 4, 1, 2, 'http://dummyimage.com/100x203.png/dddddd/000000', NULL),
(232, 'Terrett', 'Kira Terrett', '04/05/1981', 196, 54, 'alero', 'Kherson State University', 'Primera ronda', 5, 1, 4, 'http://dummyimage.com/131x132.bmp/5fa2dd/ffffff', NULL),
(233, 'Le Fleming', 'Arlen Le Fleming', '28/08/1975', 170, 85, 'alero', 'St. Petersburg State Electrotechnical University', 'Primera ronda', 7, 1, 2, 'http://dummyimage.com/100x184.jpg/5fa2dd/ffffff', NULL),
(234, 'Boorn', 'Drake Boorn', '19/05/1993', 201, 64, 'ala-pívot', 'Université Libre de Tunis', 'Primera ronda', 10, 1, 9, 'http://dummyimage.com/214x100.bmp/5fa2dd/ffffff', NULL),
(235, 'Wehner', 'Trude Wehner', '20/09/1985', 153, 136, 'pívot', 'FPT University', 'Primera ronda', 11, 0, 7, 'http://dummyimage.com/145x133.bmp/5fa2dd/ffffff', NULL),
(236, 'Arnli', 'Free Arnli', '29/11/1998', 217, 84, 'base', 'Fachhochschule Pur', 'Segunda ronda', 6, 0, 6, 'http://dummyimage.com/153x136.png/cc0000/ffffff', NULL),
(237, 'Marks', 'Jodi Marks', '26/06/1981', 174, 116, 'alero', 'Universidad Motolinía del Pedregal', 'Primera ronda', 11, 0, 2, 'http://dummyimage.com/160x151.jpg/cc0000/ffffff', NULL),
(238, 'Longfield', 'Freddi Longfield', '27/04/1982', 174, 127, 'pívot', 'Universidad APEC', 'Primera ronda', 2, 1, 6, 'http://dummyimage.com/230x149.jpg/ff4444/ffffff', NULL),
(239, 'Veel', 'Jasmina Veel', '10/10/1977', 188, 72, 'pívot', 'Concordia University College of Alberta', 'Primera ronda', 11, 1, 9, 'http://dummyimage.com/235x112.jpg/cc0000/ffffff', NULL),
(240, 'Bontein', 'Noak Bontein', '19/01/1982', 214, 141, 'ala-pívot', 'Hanoi University of Science', 'Segunda ronda', 3, 0, 10, 'http://dummyimage.com/142x105.bmp/cc0000/ffffff', NULL),
(241, 'Gislebert', 'Arturo Gislebert', '05/10/1990', 212, 83, 'alero', 'Schiller International University, London', 'Segunda ronda', 12, 0, 8, 'http://dummyimage.com/132x202.bmp/5fa2dd/ffffff', NULL),
(242, 'Hargrave', 'Adelice Hargrave', '26/09/1978', 207, 61, 'base', 'Marquette University', 'Segunda ronda', 6, 0, 7, 'http://dummyimage.com/242x231.jpg/cc0000/ffffff', NULL),
(243, 'Downse', 'Jacki Downse', '20/12/1976', 165, 83, 'ala-pívot', 'Universidade Federal de São Carlos', 'Primera ronda', 3, 0, 4, 'http://dummyimage.com/222x103.png/5fa2dd/ffffff', NULL),
(244, 'Jurgen', 'Catlin Jurgen', '02/07/1993', 169, 53, 'escolta', 'Semera University', 'Primera ronda', 2, 1, 3, 'http://dummyimage.com/154x215.png/dddddd/000000', NULL),
(245, 'Finder', 'Roger Finder', '02/10/1991', 152, 54, 'escolta', 'The Leadership Institute of Seattle', 'Segunda ronda', 2, 1, 1, 'http://dummyimage.com/175x169.bmp/5fa2dd/ffffff', NULL),
(246, 'Nafzger', 'Pyotr Nafzger', '10/08/1978', 155, 100, 'ala-pívot', 'Open University of Israel', 'Segunda ronda', 2, 1, 9, 'http://dummyimage.com/108x194.png/ff4444/ffffff', NULL),
(247, 'Tappor', 'Mariette Tappor', '06/06/1996', 230, 119, 'base', 'Instituto Politécnico de Beja', 'Segunda ronda', 6, 0, 1, 'http://dummyimage.com/206x211.png/ff4444/ffffff', NULL),
(248, 'Urion', 'Electra Urion', '15/11/1984', 225, 114, 'alero', 'Curry College', 'Segunda ronda', 8, 1, 8, 'http://dummyimage.com/248x145.jpg/cc0000/ffffff', NULL),
(249, 'Daniau', 'Andriette Daniau', '30/06/1996', 153, 57, 'escolta', 'Johannes-Gutenberg Universität Mainz', 'Segunda ronda', 1, 0, 5, 'http://dummyimage.com/222x150.jpg/cc0000/ffffff', NULL),
(250, 'Zmitrichenko', 'Dyan Zmitrichenko', '22/11/1971', 220, 70, 'pívot', 'Almustafa Open University', 'Primera ronda', 7, 1, 2, 'http://dummyimage.com/118x118.png/5fa2dd/ffffff', NULL),
(251, 'Faulder', 'Sallyann Faulder', '22/09/1996', 160, 135, 'alero', 'University of Louisville', 'Segunda ronda', 8, 0, 7, 'http://dummyimage.com/207x117.jpg/5fa2dd/ffffff', NULL),
(252, 'Friel', 'Fran Friel', '31/03/1989', 210, 77, 'pívot', 'Moscow State University of Geodesy and Cartography', 'Primera ronda', 12, 0, 1, 'http://dummyimage.com/105x186.jpg/ff4444/ffffff', NULL),
(253, 'Worthy', 'Margeaux Worthy', '03/08/1980', 160, 80, 'ala-pívot', 'Universitas Slamet Riyadi Surakarta', 'Segunda ronda', 6, 1, 2, 'http://dummyimage.com/165x110.png/cc0000/ffffff', NULL),
(254, 'Maryott', 'Yorgo Maryott', '12/02/1985', 216, 121, 'ala-pívot', 'Universidad Regional Miguel Hidalgo', 'Primera ronda', 10, 1, 3, 'http://dummyimage.com/238x181.jpg/ff4444/ffffff', NULL),
(255, 'Dymidowicz', 'Connie Dymidowicz', '20/06/1974', 176, 127, 'pívot', 'Universidad de Flores - Buenos Aires', 'Segunda ronda', 2, 0, 9, 'http://dummyimage.com/198x104.jpg/dddddd/000000', NULL),
(256, 'Norval', 'Natty Norval', '24/04/1982', 171, 145, 'escolta', 'Catholic University of Eastern Africa', 'Segunda ronda', 7, 0, 6, 'http://dummyimage.com/221x136.bmp/5fa2dd/ffffff', NULL),
(257, 'Saffon', 'Aldridge Saffon', '30/07/1980', 158, 90, 'alero', 'International Centre for Isclamic Science', 'Segunda ronda', 12, 1, 7, 'http://dummyimage.com/228x249.jpg/dddddd/000000', NULL),
(258, 'Fri', 'Armstrong Fri', '24/08/1995', 211, 109, 'ala-pívot', 'Universitas Ahmad Dahlan', 'Segunda ronda', 3, 1, 7, 'http://dummyimage.com/153x124.bmp/5fa2dd/ffffff', NULL),
(259, 'Ales0', 'Katalin Ales0', '17/01/1985', 165, 131, 'escolta', 'Illinois School of Professional Psychology - Meadows Campus', 'Primera ronda', 12, 1, 2, 'http://dummyimage.com/229x229.bmp/dddddd/000000', NULL),
(260, 'Behrens', 'Madlen Behrens', '08/04/1986', 213, 122, 'pívot', 'Instituts Supérieurs des Etudes Technologiques', 'Segunda ronda', 12, 1, 9, 'http://dummyimage.com/100x169.bmp/ff4444/ffffff', NULL),
(261, 'Seine', 'Tomasina Seine', '02/02/1988', 223, 50, 'escolta', 'Universidade de Guarulhos', 'Primera ronda', 1, 0, 8, 'http://dummyimage.com/206x128.jpg/5fa2dd/ffffff', NULL),
(262, 'Febry', 'Daphene Febry', '28/06/1988', 174, 139, 'ala-pívot', 'Hebrew University of Jerusalem', 'Segunda ronda', 6, 0, 3, 'http://dummyimage.com/178x135.jpg/cc0000/ffffff', NULL),
(263, 'Derricoat', 'Debi Derricoat', '23/11/1985', 206, 97, 'pívot', 'Universiti Industri Selangor', 'Segunda ronda', 9, 1, 5, 'http://dummyimage.com/228x192.png/ff4444/ffffff', NULL),
(264, 'Pardew', 'Gamaliel Pardew', '05/07/1975', 201, 93, 'escolta', 'California Western School of Law', 'Segunda ronda', 9, 1, 2, 'http://dummyimage.com/121x138.png/cc0000/ffffff', NULL),
(265, 'Waters', 'Marchall Waters', '05/02/1978', 152, 58, 'base', 'Theatre Academy Finland', 'Primera ronda', 3, 0, 9, 'http://dummyimage.com/169x184.png/ff4444/ffffff', NULL),
(266, 'Normadell', 'Ole Normadell', '21/05/1989', 199, 108, 'base', 'Astrakhan State University', 'Segunda ronda', 5, 1, 6, 'http://dummyimage.com/181x155.bmp/dddddd/000000', NULL),
(267, 'Brenard', 'Simone Brenard', '29/03/1973', 178, 72, 'alero', 'Ecole Nationale Supérieure des Industries Textiles de Mulhouse', 'Primera ronda', 4, 1, 1, 'http://dummyimage.com/115x143.png/5fa2dd/ffffff', NULL),
(268, 'Obey', 'Hamil Obey', '27/07/1975', 157, 139, 'pívot', 'Bahir Dar University', 'Segunda ronda', 9, 1, 1, 'http://dummyimage.com/201x154.png/5fa2dd/ffffff', NULL),
(269, 'Wheelwright', 'Halsey Wheelwright', '17/06/1987', 217, 145, 'escolta', 'Florida Metropolitan University, Fort Lauderdale College', 'Segunda ronda', 9, 0, 8, 'http://dummyimage.com/236x217.png/dddddd/000000', NULL);
INSERT INTO `jugadores` (`id_jugador`, `nombre_principal`, `nombre_completo`, `fecha_nacimiento`, `altura`, `peso`, `posicion`, `universidad`, `draft`, `anos_nba`, `campeon_nba`, `num_vec_camp_nba`, `imagen`, `id_franquicia`) VALUES
(270, 'Hook', 'Freeman Hook', '29/07/1995', 218, 56, 'alero', 'Ecole des Hautes Etudes Commerciales du Nord', 'Segunda ronda', 11, 0, 8, 'http://dummyimage.com/219x235.bmp/ff4444/ffffff', NULL),
(271, 'Gritland', 'Gladys Gritland', '21/06/1990', 206, 143, 'ala-pívot', 'Cedarville College', 'Segunda ronda', 4, 1, 2, 'http://dummyimage.com/100x200.bmp/dddddd/000000', NULL),
(272, 'Stott', 'Annmaria Stott', '02/09/1980', 216, 132, 'escolta', 'Moscow State Institute of Steel and Alloys', 'Primera ronda', 9, 1, 3, 'http://dummyimage.com/242x226.png/5fa2dd/ffffff', NULL),
(273, 'Dene', 'Sheelah Dene', '21/09/1980', 170, 70, 'base', 'Shenyang Jianzhu University', 'Primera ronda', 4, 1, 5, 'http://dummyimage.com/118x166.bmp/dddddd/000000', NULL),
(274, 'Muffett', 'Dyanna Muffett', '06/01/1975', 169, 96, 'ala-pívot', 'Al-Asmarya University for Islamic Studies', 'Segunda ronda', 1, 0, 4, 'http://dummyimage.com/137x137.jpg/cc0000/ffffff', NULL),
(275, 'Leynton', 'Sydel Leynton', '06/09/1979', 160, 65, 'escolta', 'Southern Utah University', 'Segunda ronda', 9, 0, 10, 'http://dummyimage.com/183x239.jpg/ff4444/ffffff', NULL),
(276, 'Rodinger', 'Ardelia Rodinger', '02/01/1988', 160, 76, 'base', 'University of Education, Winneba', 'Primera ronda', 9, 0, 3, 'http://dummyimage.com/212x217.jpg/dddddd/000000', NULL),
(277, 'Biddlecombe', 'Cleo Biddlecombe', '26/11/1983', 214, 140, 'pívot', 'Universidad Pública de Navarra', 'Segunda ronda', 6, 1, 1, 'http://dummyimage.com/244x120.jpg/ff4444/ffffff', NULL),
(278, 'Quarrington', 'Claudius Quarrington', '23/10/1982', 163, 123, 'base', 'Tashkent Islam University', 'Segunda ronda', 2, 0, 3, 'http://dummyimage.com/209x118.bmp/dddddd/000000', NULL),
(279, 'Matzeitis', 'Lois Matzeitis', '03/04/1990', 181, 145, 'pívot', 'Principia College', 'Segunda ronda', 2, 1, 9, 'http://dummyimage.com/168x233.jpg/cc0000/ffffff', NULL),
(280, 'Middlebrook', 'Tiena Middlebrook', '17/08/1996', 158, 113, 'ala-pívot', 'Wiley College', 'Segunda ronda', 2, 0, 7, 'http://dummyimage.com/246x104.bmp/cc0000/ffffff', NULL),
(281, 'Milburne', 'Lev Milburne', '18/10/1979', 229, 137, 'pívot', 'Beirut Arab University', 'Segunda ronda', 6, 0, 1, 'http://dummyimage.com/183x246.jpg/5fa2dd/ffffff', NULL),
(282, 'Doctor', 'Kathi Doctor', '17/05/1993', 222, 62, 'ala-pívot', 'Delaware State University', 'Segunda ronda', 12, 0, 10, 'http://dummyimage.com/132x105.jpg/cc0000/ffffff', NULL),
(283, 'Zavattari', 'Matias Zavattari', '13/02/1997', 218, 56, 'alero', 'Mountain State University', 'Primera ronda', 12, 0, 8, 'http://dummyimage.com/131x164.png/dddddd/000000', NULL),
(284, 'Bowra', 'Guss Bowra', '03/11/1984', 188, 64, 'pívot', 'Bamenda University of Science & Technology', 'Segunda ronda', 3, 0, 4, 'http://dummyimage.com/158x172.png/ff4444/ffffff', NULL),
(285, 'Timmens', 'Rozanna Timmens', '22/04/1999', 192, 142, 'alero', 'Universidad INCCA de Colombia', 'Segunda ronda', 12, 1, 10, 'http://dummyimage.com/238x202.png/cc0000/ffffff', NULL),
(286, 'Picker', 'Cherilyn Picker', '12/06/1994', 164, 142, 'ala-pívot', 'Kazak State University of Agriculture', 'Segunda ronda', 11, 0, 9, 'http://dummyimage.com/129x104.png/ff4444/ffffff', NULL),
(287, 'Weetch', 'Clea Weetch', '26/02/1971', 210, 105, 'alero', 'Faculdades Integradas Toledo', 'Segunda ronda', 12, 0, 4, 'http://dummyimage.com/193x229.png/ff4444/ffffff', NULL),
(288, 'Yaldren', 'Elena Yaldren', '31/12/1975', 190, 100, 'pívot', 'Universidad Ciencias Comerciales', 'Primera ronda', 7, 0, 6, 'http://dummyimage.com/107x236.png/dddddd/000000', NULL),
(289, 'Duferie', 'Beverly Duferie', '19/07/1995', 184, 82, 'alero', 'Pennsylvania State University Great Valley', 'Primera ronda', 7, 0, 2, 'http://dummyimage.com/204x196.bmp/cc0000/ffffff', NULL),
(290, 'MacAllaster', 'Jedd MacAllaster', '06/03/1986', 167, 126, 'pívot', 'University Medical School of Debrecen', 'Primera ronda', 5, 0, 3, 'http://dummyimage.com/234x184.jpg/ff4444/ffffff', NULL),
(291, 'Vandenhoff', 'Darrel Vandenhoff', '23/09/1973', 206, 85, 'alero', 'Shaoguan University', 'Segunda ronda', 2, 1, 1, 'http://dummyimage.com/247x110.jpg/5fa2dd/ffffff', NULL),
(292, 'Swainger', 'Webster Swainger', '01/10/1996', 191, 53, 'escolta', 'Instituto Tecnológico de Aeronáutica', 'Primera ronda', 3, 1, 1, 'http://dummyimage.com/117x224.jpg/5fa2dd/ffffff', NULL),
(293, 'Santi', 'Fredia Santi', '09/02/1998', 195, 138, 'ala-pívot', 'University of North Florida', 'Segunda ronda', 3, 0, 8, 'http://dummyimage.com/211x136.png/ff4444/ffffff', NULL),
(294, 'Lammertz', 'Alan Lammertz', '14/04/1996', 186, 108, 'pívot', 'Al Muthanna University', 'Segunda ronda', 9, 0, 10, 'http://dummyimage.com/127x156.bmp/dddddd/000000', NULL),
(295, 'Lennarde', 'Isadora Lennarde', '26/06/1975', 158, 77, 'base', 'University of Arkansas at Pine Bluff', 'Primera ronda', 5, 0, 2, 'http://dummyimage.com/179x199.bmp/cc0000/ffffff', NULL),
(296, 'Sapseed', 'Perkin Sapseed', '10/04/1974', 224, 134, 'alero', 'Nuclear Institute for Agriculture and Biology (NIAB)', 'Segunda ronda', 11, 1, 1, 'http://dummyimage.com/198x119.bmp/dddddd/000000', NULL),
(297, 'Leivers', 'Koral Leivers', '04/01/1987', 219, 65, 'pívot', 'North Carolina Wesleyan College', 'Primera ronda', 2, 0, 5, 'http://dummyimage.com/133x205.jpg/cc0000/ffffff', NULL),
(298, 'Felstead', 'Talya Felstead', '16/02/1997', 181, 79, 'ala-pívot', 'Universitas Tunas Pembangunan', 'Primera ronda', 12, 1, 10, 'http://dummyimage.com/214x102.jpg/ff4444/ffffff', NULL),
(299, 'Tolman', 'Gustave Tolman', '30/10/1993', 209, 124, 'ala-pívot', 'Ecole Nationale de la Météorologie', 'Primera ronda', 5, 0, 1, 'http://dummyimage.com/121x190.png/dddddd/000000', NULL),
(300, 'Kemetz', 'Aurlie Kemetz', '22/08/1978', 181, 74, 'alero', 'Universidad Central del Caribe', 'Primera ronda', 10, 1, 8, 'http://dummyimage.com/128x244.bmp/cc0000/ffffff', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

DROP TABLE IF EXISTS `paises`;
CREATE TABLE IF NOT EXISTS `paises` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(80) COLLATE utf8_bin NOT NULL,
  `nombrebonito` varchar(80) COLLATE utf8_bin NOT NULL,
  `iso3` char(3) COLLATE utf8_bin DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `codigotelefonico` int(5) NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `usuario` varchar(50) COLLATE utf8_bin NOT NULL,
  `contrasena` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `administrador` tinyint(1) NOT NULL,
  `nombre_completo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fecha_nacimiento` varchar(15) COLLATE utf8_bin NOT NULL,
  `pais_origen` varchar(50) COLLATE utf8_bin NOT NULL,
  `id_franquicia` int(2) DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  PRIMARY KEY (`usuario`),
  KEY `id_franquicia` (`id_franquicia`),
  KEY `id_pais` (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `contrasena`, `email`, `administrador`, `nombre_completo`, `fecha_nacimiento`, `pais_origen`, `id_franquicia`, `id_pais`) VALUES
('', '', '', 0, '', '', '', NULL, NULL),
('abastonz', '75ba05388d79d131ac23ffc8170ede34', 'abastonz@kickstarter.com', 0, 'Adela Baston', '31/12/1932', 'Kazakhstan', 14, NULL),
('admin', 'admin', 'admin@admin.com', 1, 'Administrator Admin', '02/09/1945', 'Spain', 9, NULL),
('aedgleyy', '877dc4fbab8bddeade3ed9f1c40de41d', 'aedgleyy@friendfeed.com', 0, 'Audie Edgley', '29/02/1912', 'Indonesia', 15, NULL),
('ahaslehurst2', 'a7f969a501554b924c9612fedb48d1ff', 'ahaslehurst2@mashable.com', 0, 'Austin Haslehurst', '03/12/1976', 'Indonesia', 30, NULL),
('aogilbyq', '4c1b84362b1e75e43aa8da3a0fc7a639', 'aogilbyq@google.com.hk', 0, 'Angel Ogilby', '09/03/1993', 'Panama', 20, NULL),
('as', '', '', 0, '', '', '', NULL, NULL),
('asas', '', '', 0, '', '', '', NULL, NULL),
('asd', '', '', 0, '', '', '', NULL, NULL),
('asd2', 'asd', 'asd@asd.as', 0, 'asd', '2018-02-02', 'asd', NULL, NULL),
('asdas', '', '', 0, '', '', '', NULL, NULL),
('asdfgasdfasdfasf', 'asdqwe', 'sadfasdf@asdfasd.asda', 0, 'asd', '6519', 'adasd', NULL, NULL),
('bkelwickg', 'fa24495aa64c15542c8d7abda94221ac', 'bkelwickg@blog.com', 0, 'Barbey Kelwick', '28/05/2002', 'Russia', 4, NULL),
('bpurvesx', '6d913216d4e78c89cf47525c09260a61', 'bpurvesx@jugem.jp', 0, 'Brena Purves', '30/07/2003', 'China', 30, NULL),
('brufo', 'b6d89a1e7c881fae520ef6faf4e562e3', 'brufo@histats.com', 0, 'Blakeley Ruf', '07/05/1953', 'Honduras', 5, NULL),
('bzorenerb', 'f76c3ab8959f6ad4095c2d3d8b986e1f', 'bzorenerb@npr.org', 0, 'Broddie Zorener', '25/02/1926', 'Russia', 27, NULL),
('ccoppinsl', 'c3f2219c0105715a26c0d0706a350297', 'ccoppinsl@shinystat.com', 0, 'Charla Coppins', '29/03/1963', 'Colombia', 18, NULL),
('ccullipc', 'f0a43d3748081275cbe3c1c5adeb35ee', 'ccullipc@cocolog-nifty.com', 0, 'Cathleen Cullip', '20/03/1944', 'New Zealand', 24, NULL),
('cdunbobbind', '1412482cbdc79684930a67a86e6a0a0a', 'cdunbobbind@usda.gov', 0, 'Collete Dunbobbin', '28/10/1981', 'Poland', 1, NULL),
('cgumbrell12', '5eba50875b356a99dc1403ad2d6eb66e', 'cgumbrell12@youku.com', 0, 'Chrisy Gumbrell', '26/03/1994', 'China', 28, NULL),
('cpattesall6', '8ec29a0556482e0cc2803df1f1d3bdc2', 'cpattesall6@google.co.uk', 0, 'Carolee Pattesall', '09/01/1973', 'Japan', 27, NULL),
('cshireff4', '51cf26a73a4d2a9edc8bbc33717868f2', 'cshireff4@barnesandnoble.com', 0, 'Colline Shireff', '10/06/1992', 'Sweden', 13, NULL),
('cumpi', 'cumpi', 'cumpi@cumpi.cumpi', 0, 'cumpi', '2018-02-12', 'cumpilandia', NULL, NULL),
('dcouthards', 'd808ae5f7ee639d57c8baa4247d82303', 'dcouthards@usatoday.com', 0, 'Daisie Couthard', '15/02/1954', 'Indonesia', 13, NULL),
('ebiffenh', 'fdefdfa59552a36ebfe48d605d5d5e32', 'ebiffenh@studiopress.com', 0, 'Elke Biffen', '23/10/1944', 'Indonesia', 22, NULL),
('edossett1b', '9472e44160c649d98a8a065e5c1bf1a6', 'edossett1b@indiatimes.com', 0, 'Em Dossett', '05/03/2007', 'United States', 7, NULL),
('eh', 'eh', 'eh@eh.eh', 0, 'eh', '1954-01-10', 'eh', NULL, NULL),
('eruckman17', '139aa1b5d8a9884a485d884960cefc13', 'eruckman17@walmart.com', 0, 'Esme Ruckman', '09/04/1915', 'China', 13, NULL),
('fsoeiro19', '18520b9346fefab87a9d7f0b0fd64bd9', 'fsoeiro19@sfgate.com', 0, 'Finlay Soeiro', '15/08/1968', 'Mexico', 14, NULL),
('gdruhan3', '9a6f0bb425f65865963c698dec3de89c', 'gdruhan3@mediafire.com', 0, 'Gerianne Druhan', '12/02/1966', 'Indonesia', 3, NULL),
('gidel10', '58d3e77e855f1dd22c7bb4f1d8f4fe7f', 'gidel10@cnbc.com', 0, 'Germaine Idel', '29/10/1937', 'France', 17, NULL),
('gmcgaughey5', '42e4aa5924f78b7045ad7d26237da530', 'gmcgaughey5@wordpress.org', 0, 'Godfry McGaughey', '24/10/1950', 'Brazil', 25, NULL),
('habreheartm', '9c61f6e5dd86a13d7eb03c45e04c04b5', 'habreheartm@soup.io', 0, 'Hillie Abreheart', '02/12/1954', 'China', 19, NULL),
('hnield1', '3114520aafec99b3152052a3a0aee3d2', 'hnield1@ocn.ne.jp', 0, 'Harriot Nield', '03/08/2009', 'Indonesia', 30, NULL),
('imissen13', '2392012c55455a4ad3d5b18d82194c6b', 'imissen13@scientificamerican.com', 0, 'Isobel Missen', '09/03/1969', 'China', 6, NULL),
('jvolage1a', '957906b431be71c9a1701cf9fbd16bf2', 'jvolage1a@youtu.be', 0, 'Jobie Volage', '29/09/1938', 'Colombia', 3, NULL),
('kbucknall1d', '2021e5e3faf785112f311e066890d02f', 'kbucknall1d@seesaa.net', 0, 'Kerstin Bucknall', '15/10/1991', 'Philippines', 28, NULL),
('kgawkes8', '32e00b89a6ecdce0149c5736b0905d53', 'kgawkes8@virginia.edu', 0, 'Kessiah Gawkes', '14/02/1982', 'Bosnia and Herzegovina', 25, NULL),
('lel', 'lel', 'lel@lel.lel', 0, 'lel', '02/04/2018', 'lelandia', NULL, NULL),
('lelel', 'asd', 'asdasd@asda.es', 0, 'asd', '2018-02-21', 'asd', NULL, NULL),
('lelo', 'lelolelo', 'lelo@lelo.lelo', 0, 'lelo', '07-02-2018', 'lelo', NULL, NULL),
('lludlow9', '98a27fd82ef6e889c584c3e40e3687e6', 'lludlow9@google.de', 0, 'Loella Ludlow', '10/12/2011', 'Ethiopia', 23, NULL),
('lmao', 'lmao', 'lmao@lmao.lmao', 0, 'lmao', '2018-02-25', 'lmaolandia', NULL, NULL),
('lmaolmao', 'lmaolmao', 'lmao@lmaooo.es', 0, 'lmao', '15/12/1954', 'asd', NULL, NULL),
('lmityashevu', 'f03b6db62e7e885abc062b6224c431d5', 'lmityashevu@utexas.edu', 0, 'Lelah Mityashev', '10/01/1920', 'France', 14, NULL),
('lweatherbyk', '1543c06a05a18e41f8727bffd27a3aef', 'lweatherbyk@multiply.com', 0, 'Lenette Weatherby', '05/02/1951', 'China', 4, NULL),
('mcostanza15', '65d6c077d2583d01899c5088bcda1be2', 'mcostanza15@techcrunch.com', 0, 'Marthena Costanza', '13/05/1974', 'Indonesia', 14, NULL),
('mdearl18', 'e8eabe95c9724a7e908006f006321c8b', 'mdearl18@bbc.co.uk', 0, 'Madalena Dearl', '21/05/1932', 'Canada', 30, NULL),
('mfaderi', '0521a2a5aae512d758c9be8a8a1d5b9c', 'mfaderi@theglobeandmail.com', 0, 'Merrile Fader', '07/11/2002', 'Sudan', 15, NULL),
('mfrayn16', '72a5271ed3f908180558751873a2b2a1', 'mfrayn16@europa.eu', 0, 'Margalo Frayn', '05/11/1979', 'Philippines', 16, NULL),
('mgrixr', '2f3578d012bedb93d9be3e27c12839bd', 'mgrixr@sphinn.com', 0, 'Miquela Grix', '07/11/2003', 'Philippines', 1, NULL),
('mlevettp', '72d4a74a39e9e6a67260c39e62d36557', 'mlevettp@free.fr', 0, 'Matti Levett', '05/02/1979', 'Pakistan', 1, NULL),
('mmathelon1c', '3596d09e3fd72cc9af0efb7cdb09b56d', 'mmathelon1c@time.com', 0, 'Maxim Mathelon', '18/07/1957', 'France', 5, NULL),
('mstockwellf', 'b25e82212b929b53b1a631d8f1cc884a', 'mstockwellf@yahoo.com', 0, 'Malissia Stockwell', '11/08/2005', 'Bosnia and Herzegovina', 21, NULL),
('mvoiseyw', '176b9136d55ba7dd6d020d053072553f', 'mvoiseyw@intel.com', 0, 'Meara Voisey', '11/09/1977', 'Philippines', 23, NULL),
('mwoodnuttv', 'cf0e686f2809d5bb0270e0091cb0f4e4', 'mwoodnuttv@hhs.gov', 0, 'Moyna Woodnutt', '11/09/1984', 'United States', 7, NULL),
('nsmaridgea', '5b6ea45c5af580ead3fd2eeb5726e649', 'nsmaridgea@nationalgeographic.com', 0, 'Nil Smaridge', '28/11/1958', 'Indonesia', 4, NULL),
('prueba', 'prueba', 'prueba@prueba.prueba', 0, 'prueba', '06/15/2010', 'prueba', NULL, NULL),
('pruebaa', 'pruebaa', 'pruebaa@pruebaa.pruebaa', 0, 'pruebaa', '2018-02-20', 'pruebaa', NULL, NULL),
('pruebaaa', 'wtf', 'wtf@wtf.wtf', 0, 'wtf', '01/05/1978', 'wtflandia', NULL, NULL),
('smallabar14', 'c2f21433c15484de7bb49b93542c0891', 'smallabar14@meetup.com', 0, 'Sarah Mallabar', '26/09/1936', 'China', 11, NULL),
('sschellen', 'b6f1e1d71a6420f28c6f498d83f3467f', 'sschellen@dell.com', 0, 'Saunders Schelle', '26/08/1954', 'Russia', 27, NULL),
('sstallworthj', '529edf40dd8a4418bd6013d41ea94dce', 'sstallworthj@discuz.net', 0, 'Sebastiano Stallworth', '28/08/1997', 'Philippines', 29, NULL),
('tblackmuir11', '4cc2613f8fee591811bb25ea1a4862f3', 'tblackmuir11@trellian.com', 0, 'Terese Blackmuir', '02/03/1944', 'Venezuela', 23, NULL),
('ttrolleye', '089e29f732aee2c0660d048bdbcf95c7', 'ttrolleye@topsy.com', 0, 'Truda Trolley', '13/04/2002', 'Canada', 17, NULL),
('vbeevor0', '1fb10078e8b59d2156e01c9568070fad', 'vbeevor0@trellian.com', 0, 'Vevay Beevor', '04/01/1958', 'Portugal', 26, NULL),
('wanoleete', 'wanolete', 'wanioas@asd', 0, 'waosnfa', 'asdasdasd', 'asdasd', NULL, NULL),
('wanolito', 'wanolito', 'wanolito@gmail.com', 0, 'wanolito', '5496851', 'wanolitolandia', NULL, NULL),
('wcokayne7', 'f8d1d7d7f60b65a964b56e789f32e231', 'wcokayne7@sitemeter.com', 0, 'Wye Cokayne', '24/04/1944', 'Indonesia', 19, NULL),
('we', 'we', 'we@we.we', 0, 'we', '1995-01-01', 'welandia', NULL, NULL),
('wlimpertzt', '13f0c1567ef40b6d77bc35b6f0f27740', 'wlimpertzt@nba.com', 0, 'Wylie Limpertz', '18/12/1945', 'Russia', 6, NULL),
('wololo', 'wolololo', 'wololo@wololo.wololo', 0, 'adfasdf', 'adfaf', 'asfasf', NULL, NULL),
('wtf', 'wtf', 'wtf@wtf-wtf', 0, 'wtf', '02/21/2018', 'wtf', NULL, NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`id_franquicia`) REFERENCES `equipos` (`id_franquicia`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id_pais`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_franquicia`) REFERENCES `equipos` (`id_franquicia`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
