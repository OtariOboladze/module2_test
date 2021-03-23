-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2020 a las 18:40:37
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `discos`
--
CREATE DATABASE IF NOT EXISTS `discos_er` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `discos_er`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE IF NOT EXISTS `album` (
`idalbum` int(11) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `year` year(4) NOT NULL,
  `genero` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

DROP TABLE IF EXISTS `artista`;
CREATE TABLE IF NOT EXISTS `artista` (
`idartista` int(11) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `nacionalidad` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
 ADD PRIMARY KEY (`idalbum`);

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
 ADD PRIMARY KEY (`idartista`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album`
--
ALTER TABLE `album`
MODIFY `idalbum` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
MODIFY `idartista` int(11) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
