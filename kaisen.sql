-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2015 a las 20:25:19
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `kaisen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aseguramiento`
--

CREATE TABLE IF NOT EXISTS `aseguramiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'indice',
  `fecha` date NOT NULL COMMENT 'fecha',
  `turno` tinyint(4) NOT NULL COMMENT 'turno',
  `tipo` tinyint(4) NOT NULL COMMENT 'Puede ser Trailer o Thorton',
  `renglon` int(11) NOT NULL COMMENT 'Revisión por día',
  `embarque` varchar(30) NOT NULL COMMENT 'Clave del embarque',
  `transporte` int(11) NOT NULL COMMENT 'Nombre de la compañía transportista',
  `placas` varchar(30) NOT NULL COMMENT 'Placas del transporte',
  `operador` varchar(100) NOT NULL COMMENT 'Nombre del operador del camión',
  `inspeccion` tinyint(1) NOT NULL COMMENT 'Inspección equipo de aseguramiento antes del enlonado (SI/NO)',
  `plataf_malEdo` int(11) NOT NULL COMMENT '¿La plataforma está en mal estado?',
  `plasNyl_loPor` int(11) NOT NULL COMMENT 'Plástico / Nylon (Lo porta, malas condiciones)',
  `plasNyl_malCon` int(11) NOT NULL,
  `lonas_insuf` int(11) NOT NULL COMMENT 'Lonas (Insuficientes, Malas condiciones)',
  `lonas_malCon` int(11) NOT NULL,
  `capuc_loPor` int(11) NOT NULL COMMENT 'Capuchón (Lo porta, malas condiciones (época de lluvia))',
  `capuc_malCon` int(11) NOT NULL,
  `angul_malCon` int(11) NOT NULL COMMENT 'Ángulos metálicos / madera (insuficientes, malas condiciones)',
  `angul_insuf` int(11) NOT NULL,
  `band_malCon` int(11) NOT NULL COMMENT 'Bandas (Insuficientes, Malas condiciones)',
  `band_insuf` int(11) NOT NULL,
  `soga_insuf` int(11) NOT NULL COMMENT 'Sogas (Insuficientes, Malas condiciones)',
  `soga_malCon` int(11) NOT NULL,
  `estac_insuf` int(11) NOT NULL,
  `estac_malCon` int(11) NOT NULL COMMENT 'Estacas (Carga de metales)',
  `chof_desacuerdo` int(11) NOT NULL COMMENT 'Chofer en desacuerdo con el enlonado',
  `tiemp_enlonado` int(11) NOT NULL COMMENT 'Tiempo de enlonado',
  `accio_correct` text NOT NULL COMMENT 'Acciones correctivas',
  `supervisor` varchar(100) NOT NULL COMMENT 'Supervisor en turno',
  `modifEmbarque` timestamp NOT NULL COMMENT 'Fecha de ultima modificación',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `aseguramiento`
--

INSERT INTO `aseguramiento` (`id`, `fecha`, `turno`, `tipo`, `renglon`, `embarque`, `transporte`, `placas`, `operador`, `inspeccion`, `plataf_malEdo`, `plasNyl_loPor`, `plasNyl_malCon`, `lonas_insuf`, `lonas_malCon`, `capuc_loPor`, `capuc_malCon`, `angul_malCon`, `angul_insuf`, `band_malCon`, `band_insuf`, `soga_insuf`, `soga_malCon`, `estac_insuf`, `estac_malCon`, `chof_desacuerdo`, `tiemp_enlonado`, `accio_correct`, `supervisor`, `modifEmbarque`) VALUES
(1, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Jonathan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(2, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Alberto', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(3, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Oscar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(4, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Marcos', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(5, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Carlos', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(6, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Francisco', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(7, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Fernando', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(8, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Federico', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(9, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Miriam', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(10, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Karina', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(11, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Marcela', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(12, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Marcelo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(13, '2015-02-13', 3, 1, 47, '77777', 1, 'ZRUI93', 'María', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(14, '2015-02-13', 3, 1, 47, '77777', 1, 'ZRUI93', 'Malcom', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(15, '2015-02-13', 3, 1, 47, '77777', 1, 'ZRUI93', 'Marina', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(16, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Fermín', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(17, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Rocio', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(18, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Ricardo', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(19, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Roberto', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(20, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'José', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(21, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Ernesto', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(22, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Érika', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(23, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Miranda', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(24, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Mercedes', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(25, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Mónica', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(26, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Jonathan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(27, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Jonathan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(28, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Jonathan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(29, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Jonathan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(30, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Jonathan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00'),
(31, '2015-02-13', 1, 1, 10, '66666', 1, 'ZRUI93', 'Jonathan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indice` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `indice`, `pregunta`) VALUES
(1, 1, '¿Se realizó la inspección del equipo de aseguramiento antes del enlonado?'),
(2, 2, '¿La plataforma está en mal estado?'),
(3, 3, '¿Porta el plástico o Nylon?'),
(4, 4, '¿El plástico o nylon está en malas condiciones?'),
(5, 5, '¿Las lonas cubren los productos al 100%?'),
(6, 6, '¿Las lonas están en malas condiciones?'),
(7, 7, '¿Porta el capuchón? (Solo aplica en temporada de lluvias)'),
(8, 8, '¿El capuchón está en malas condiciones? (Solo aplica en temporada de lluvias)'),
(9, 9, '¿Los ángulos metálicos o de madera son insuficientes?'),
(10, 10, '¿Los ángulos metálicos o de madera están en malas condiciones?'),
(11, 11, '¿Las bandas son insuficientes?'),
(12, 12, '¿Las bandas están en malas condiciones?'),
(13, 13, '¿Las sogas son insuficientes?'),
(14, 14, '¿Las sogas están en malas condiciones?'),
(15, 15, '¿Las estacas (Carga de metales) son insuficientes?'),
(16, 16, '¿Las estacas (Carga de metales) están en malas condiciones?'),
(17, 17, '¿El chofer está en desacuerdo con el enlonado?');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
