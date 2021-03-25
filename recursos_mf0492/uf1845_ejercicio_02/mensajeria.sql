-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2021 a las 18:04:07
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mensajeria`
--
CREATE DATABASE IF NOT EXISTS `mensajeria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mensajeria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
CREATE TABLE `mensaje` (
  `idmensaje` int(11) NOT NULL,
  `remitente` int(11) DEFAULT NULL,
  `destinatario` int(11) DEFAULT NULL,
  `mensaje` varchar(600) DEFAULT NULL,
  `fechaalta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`idmensaje`, `remitente`, `destinatario`, `mensaje`, `fechaalta`) VALUES
(111, 64, 51, 'mensaje de prueba 2', '2017-05-02 15:38:16'),
(112, 64, 47, 'mensaje de prueba 2', '2017-05-02 15:38:16'),
(113, 64, 64, 'Mensaje 3 de prueba', '2017-05-02 15:45:04'),
(114, 64, 51, 'Mensaje 3 de prueba', '2017-05-02 15:45:04'),
(115, 64, 47, 'Mensaje 3 de prueba', '2017-05-02 15:45:04'),
(116, 64, 45, 'Mensaje 3 de prueba', '2017-05-02 15:45:04'),
(117, 64, 58, 'Mensaje 3 de prueba', '2017-05-02 15:45:04'),
(120, 64, 64, 'Mensaje 5 de prueba', '2017-05-02 16:23:05'),
(121, 64, 51, 'Mensaje 5 de prueba', '2017-05-02 16:23:05'),
(122, 64, 47, 'Mensaje 5 de prueba', '2017-05-02 16:23:05'),
(123, 64, 48, 'Mensaje 6 de prueba', '2017-05-02 16:23:11'),
(124, 64, 64, 'Mensaje 6 de prueba', '2017-05-02 16:23:11'),
(125, 64, 51, 'Mensaje 6 de prueba', '2017-05-02 16:23:11'),
(126, 64, 47, 'Mensaje 6 de prueba', '2017-05-02 16:23:11'),
(127, 64, 48, '', '2017-05-02 16:52:05'),
(128, 64, 64, '', '2017-05-02 16:52:05'),
(129, 64, 51, '', '2017-05-02 16:52:05'),
(130, 64, 47, '', '2017-05-02 16:52:05'),
(131, 64, 45, '', '2017-05-02 16:52:05'),
(132, 19, 48, 'mensaje de prueba', '2020-09-08 11:07:36'),
(133, 19, 64, 'mensaje de prueba', '2020-09-08 11:07:36'),
(134, 19, 51, 'mensaje de prueba', '2020-09-08 11:07:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `tipousuario` char(1) NOT NULL,
  `nif` varchar(10) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fechaalta` date DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `tipousuario`, `nif`, `nombre`, `apellidos`, `fechaalta`, `password`) VALUES
(19, 'A', '40000001A', 'José Luis', 'Torrente', '2012-12-15', 'torrente'),
(36, '', '40000002B', 'Jaimita', 'Pinganillo', '2014-03-03', 'pnganillo'),
(38, '', '40000003C', 'Mariana', 'Cuchufletas', '2003-02-01', 'cuchufleta'),
(40, '', '40000004D', 'Juanito', 'Pepinillo', '2000-02-02', 'pepinillo'),
(45, '', '40000005E', 'Fina', 'Gramenower', '2012-02-02', 'fina'),
(47, '', '40000006F', 'Faemino', ' y Cansado', '1942-01-01', 'faemino'),
(48, '', '40000007G', 'Adolph', 'Suareznegger', '2010-02-03', 'adolph'),
(49, '', '40000008H', 'Perico', 'el de los Palotes', '2008-10-10', 'perico'),
(50, '', '40000009I', 'Johny', 'Mentero', '2001-04-02', 'johny'),
(51, '', '40000010J', 'Doctor', 'Maligno', '2011-01-01', 'maligno'),
(56, '', '40000011K', 'Marianico', 'el Corto', '2000-01-01', 'pepe'),
(57, '', '40000012L', 'Juana', 'Zwiterion', '1900-12-12', 'juana'),
(58, '', '40000013M', 'Igor', 'Fronkonstin', '1980-12-23', 'pepe'),
(63, '', '40000014N', 'Mariana', 'Cuchufleta', '2005-12-22', 'mariana'),
(64, 'A', '40000015O', 'David ', 'Alcolea', '2017-05-02', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`idmensaje`),
  ADD KEY `remitente` (`remitente`),
  ADD KEY `destinatario` (`destinatario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `nif_UNIQUE` (`nif`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `idmensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`remitente`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mensaje_ibfk_2` FOREIGN KEY (`destinatario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
