-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2020 a las 18:56:34
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `comentarios`
--
CREATE DATABASE IF NOT EXISTS `comentarios` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `comentarios`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
`idcomentario` int(11) NOT NULL,
  `comentario` varchar(600) DEFAULT NULL,
  `foto` varchar(60) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
`idusuario` int(11) NOT NULL,
  `nif` varchar(10) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipousuario` char(2) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=122 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nif`, `nombre`, `apellidos`, `email`, `password`, `timestamp`, `tipousuario`) VALUES
(64, '40000001A', 'Pepe', 'Viyuela', 'pepe@mail.com', 'pepe', '2016-05-20 14:53:31', NULL),
(66, '40000001B', 'John', 'Rambo', 'john@mail.com', 'john', '2016-05-20 15:40:35', 'AD'),
(68, '40000001C', 'Petra', 'Pedrusco', 'petra@mail.com', 'petra', '2016-05-27 17:22:06', ''),
(75, '40000001D', 'Johny', 'Mentero', 'johny@mail.com', '4343434', '2017-10-30 10:20:54', NULL),
(120, '40000006G', 'Fina', 'Gamenower', NULL, 'fina', '2020-09-24 16:54:58', NULL),
(121, '40000007H', 'Baster', 'Scroog', NULL, 'baster', '2020-09-24 16:55:39', 'AD');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
 ADD PRIMARY KEY (`idcomentario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`idusuario`), ADD UNIQUE KEY `nif_UNIQUE` (`nif`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
MODIFY `idcomentario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
