-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-07-2021 a las 19:00:47
-- Versión del servidor: 10.3.29-MariaDB-0ubuntu0.20.04.1
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Libros`
--

CREATE TABLE `Libros` (
  `ID` int(6) NOT NULL,
  `titulo` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `autor` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `editorial` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `genero` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `isbn` int(25) NOT NULL,
  `descripcion` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `Libros`
--

INSERT INTO `Libros` (`ID`, `titulo`, `imagen`, `autor`, `editorial`, `genero`, `isbn`, `descripcion`) VALUES
(1, 'Ni puta ni santa. Las memorias de la Veneno', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1475534533l/32414622._SX318_.jpg', 'Valeria Vegas', 'Autoedición', 'biográfico', 1120160, 'Hay personas que no dejan indifeente a nadie. La Veneno es una de ellas. En cierta forma viene a repesentar aquellos quince minutos de fama que predicaba Andy Warhol, y que ella a golpe de pecho multiplicó por cien.\r\n\r\nSiempre dispuesta a asumir la vida como venga, dejándolo todo en manos del destino. El mismo destino que la llevaría, de la noche a la mañana, de saborear las mieles del éxito al involuntario descenso a los infiernos.\r\n\r\nCristina La Veneno es capaz de abarcar con su peculiar manera, diferentes temas, que van desde la familia, pasando por la cirugía plástica, el sexo o el drama carcelario. Es la historia de un joven que huyó de su pueblo transformándose en mujer. De una prostituta que ve cómo cambia su suerte. De un personaje famoso que jamás luchó por serlo. La Veneno envuelve todo el concepto de la España profunda, a la que parece que todo se le queda grande, pero no duda en ponerse el mundo por montera.\r\n\r\nDeslenguada, sincera y divertida, nos presenta su vida. Una vida nada común, única como su protagonista y que posee cierto aire melodramático, que servirá para conocer un poco más a Cristina, ya, para siempre, La Veneno.\r\n\r\n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Libros`
--
ALTER TABLE `Libros`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Libros`
--
ALTER TABLE `Libros`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
