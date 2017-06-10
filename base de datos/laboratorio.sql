-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-06-2017 a las 15:17:21
-- Versión del servidor: 5.5.49-0+deb8u1
-- Versión de PHP: 5.6.27-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `laboratorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hematologias`
--

CREATE TABLE IF NOT EXISTS `hematologias` (
`id` int(11) NOT NULL,
  `id_solicitud` int(11) NOT NULL,
  `hematocritos` varchar(50) NOT NULL,
  `hemoglobina` varchar(50) NOT NULL,
  `leucocitos` varchar(50) NOT NULL,
  `neutrofilos` varchar(50) NOT NULL,
  `linfocitos` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hematologias`
--

INSERT INTO `hematologias` (`id`, `id_solicitud`, `hematocritos`, `hemoglobina`, `leucocitos`, `neutrofilos`, `linfocitos`) VALUES
(1, 3, 'asdasfsd', 'sdfsdf', '', 'sdfsd', 'sdfsdfs');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE IF NOT EXISTS `pacientes` (
`id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `cedula` varchar(8) NOT NULL,
  `fecha_nacimiento` varchar(12) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `sexo` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `nombre`, `apellido`, `cedula`, `fecha_nacimiento`, `direccion`, `telefono`, `sexo`) VALUES
(1, 'carlos', 'silva', '19881315', '30/05/1989', 'lorem ipsum', '04127624857', 'masculino'),
(2, 'asdasd', 'asdasdas', '15561516', '30/05/1989', 'lorem ipsum', '04124565656', 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquias`
--

CREATE TABLE IF NOT EXISTS `parroquias` (
`id` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE IF NOT EXISTS `solicitudes` (
`id` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `observaciones` text NOT NULL,
  `hematologia` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `id_paciente`, `fecha`, `observaciones`, `hematologia`) VALUES
(3, 2, '09/06/2017', 'lorem ipsum', 'a:4:{i:0;s:11:"hematocrito";i:1;s:11:"hemoglobina";i:2;s:11:"neutrofilos";i:3;s:10:"linfocitos";}'),
(4, 2, '09/06/2017', 'segunda solicitud', 'a:4:{i:0;s:11:"hematocrito";i:1;s:11:"hemoglobina";i:2;s:11:"neutrofilos";i:3;s:10:"linfocitos";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_municipio`
--

CREATE TABLE IF NOT EXISTS `tabla_municipio` (
`id` int(11) NOT NULL,
  `municipio` varchar(250) NOT NULL,
  `poblacion` int(11) NOT NULL,
  `abrebiar` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tabla_municipio`
--

INSERT INTO `tabla_municipio` (`id`, `municipio`, `poblacion`, `abrebiar`) VALUES
(2, 'MUNICIPIO ALBERTO ARVELO TORREALBA', 41232, 'AA'),
(3, 'MUNICIPIO ANTONIO JOSE DE SUCRE', 81665, 'AJ'),
(4, 'MUNICIPIO ARISMENDI', 23727, 'AR'),
(5, '  MUNICIPIO BARINAS', 353852, 'BA'),
(6, 'MUNICIPIO BOLIVAR', 52872, 'BO'),
(7, 'MUNICIPIO CRUZ PAREDES', 26042, 'CP'),
(8, 'MUNICIPIO EZEQUIEL ZAMORA', 53580, 'EZ'),
(9, 'MUNICIPIO OBISPOS', 37493, 'OB'),
(10, 'MUNICIPIO PEDRAZA', 65390, 'PE'),
(11, 'MUNICIPIO ROJAS', 40126, 'RO'),
(12, 'MUNICIPIO SOSA', 24142, 'SO'),
(13, 'MUNICIPIO ANDRES ELOY BLANCO', 16144, 'AE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_parroquia`
--

CREATE TABLE IF NOT EXISTS `tabla_parroquia` (
`id` int(11) NOT NULL,
  `parroquia` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `poblacion` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `tabla_parroquia`
--

INSERT INTO `tabla_parroquia` (`id`, `parroquia`, `id_municipio`, `poblacion`) VALUES
(1, 'PARROQUIA SABANETA', 2, 34148),
(2, 'PARROQUIA RODRIGUEZ DOMINGUEZ', 2, 7084),
(3, 'PARROQUIA TICOPORO', 3, 65801),
(4, 'PARROQUIA ANDRES BELLO', 3, 7147),
(5, 'PARROQUIA NICOLAS PULIDO', 3, 8717),
(6, 'PARROQUIA ARISMENDI', 4, 9327),
(7, 'PARROQUIA GUADARRAMA', 4, 2165),
(8, 'PARROQUIA LA UNION', 4, 7280),
(9, 'PARROQUIA SAN ANTONIO', 4, 4955),
(10, 'PARROQUIA BARINAS', 5, 7651),
(11, 'PARROQUIA ALFREDO ARVELO LARRIVA', 5, 9251),
(12, 'PARROQUIA SAN SILVESTRE', 5, 6905),
(13, 'PARROQUIA SANTA INES', 5, 3508),
(14, 'PARROQUIA SANTA LUCIA', 5, 5780),
(15, 'PARROQUIA TORUNOS', 5, 4882),
(16, 'PARROQUIA EL CARMEN', 5, 41527),
(17, 'PARROQUIA ROMULO BETANCOURT', 5, 40647),
(18, 'PARROQUIA CORAZON DE JESUS', 5, 58413),
(19, 'PARROQUIA RAMON IGNACIO MENDEZ', 5, 90464),
(20, 'PARROQUIA ALTO BARINAS', 5, 64194),
(21, 'PARROQUIA MANUEL PALACIO FAJARDO', 5, 9763),
(22, 'PARROQUIA JUAN ANTONIO RODRIGUEZ DOMINGUEZ', 5, 4110),
(23, 'PARROQUIA DOMINGA ORTIZ DE PAEZ', 5, 6748),
(24, 'PARROQUIA BARINITAS', 6, 43863),
(25, 'PARROQUIA ALTAMIRA', 6, 3045),
(26, 'PARROQUIA CALDERAS', 6, 5964),
(27, 'PARROQUIA BARRANCAS', 7, 21121),
(28, 'PARROQUIA EL SOCORRO', 7, 4345),
(29, 'PARROQUIA MASPARRITO', 7, 576),
(30, 'PARROQUIA SANTA BARBARA', 8, 40370),
(31, 'PARROQUIA JOSE IGNACIO DEL PUMAR', 8, 3343),
(32, 'PARROQUIA PEDRO BRICEÑO MENDEZ', 8, 5658),
(33, 'PARROQUIA RAMON IGNACIO MENDEZ', 8, 4209),
(34, 'PARROQUIA OBISPOS', 9, 15696),
(35, 'PARROQUIA EL REAL', 9, 2919),
(36, 'PARROQUIA LA LUZ', 9, 7581),
(37, 'PARROQUIA LOS GUASIMITOS', 9, 11297),
(38, 'PARROQUIA CIUDAD BOLIVIA', 10, 44975),
(39, 'PARROQUIA IGNACIO BRICE?O', 10, 6274),
(40, 'PARROQUIA JOSE FELIX RIBAS', 10, 7573),
(41, 'PARROQUIA PAEZ', 10, 6568),
(42, 'PARROQUIA LIBERTAD', 11, 11415),
(43, 'PARROQUIA DOLORES', 11, 8264),
(44, 'PARROQUIA PALACIOS FAJARDO', 11, 11855),
(45, 'PARROQUIA SANTA ROSA', 11, 8592),
(46, 'PARROQUIA CIUDAD DE NUTRIAS', 12, 15168),
(47, 'PARROQUIA EL REGALO', 12, 5454),
(48, 'PARROQUIA PUERTO DE NUTRIAS', 12, 15168),
(49, 'PARROQUIA SANTA CATALINA', 12, 1183),
(50, 'PARROQUIA EL CANTON', 13, 6466),
(51, 'PARROQUIA SANTA CRUZ DE GUACAS', 13, 5486),
(52, 'PARROQUIA PUERTO VIVAS', 13, 4192);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(11) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `cargo` varchar(25) NOT NULL,
  `rol` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`, `nombre`, `apellido`, `cargo`, `rol`) VALUES
(1, 'ROOT', '$2y$10$lnHW1WQZ9IGXj7nk3e8TQuJrbW1MjTBfM7ofLyiEt/rD5qpGaPqPW', 'carlos', 'silva', 'jefe', 'admin'),
(2, 'yorman@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'yorman', 'villa', 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hematologias`
--
ALTER TABLE `hematologias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parroquias`
--
ALTER TABLE `parroquias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tabla_municipio`
--
ALTER TABLE `tabla_municipio`
 ADD PRIMARY KEY (`id`), ADD KEY `id_municipio` (`id`,`municipio`,`poblacion`,`abrebiar`);

--
-- Indices de la tabla `tabla_parroquia`
--
ALTER TABLE `tabla_parroquia`
 ADD PRIMARY KEY (`id`), ADD KEY `id_parrouia` (`id`,`parroquia`,`id_municipio`,`poblacion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hematologias`
--
ALTER TABLE `hematologias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `parroquias`
--
ALTER TABLE `parroquias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tabla_municipio`
--
ALTER TABLE `tabla_municipio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `tabla_parroquia`
--
ALTER TABLE `tabla_parroquia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
