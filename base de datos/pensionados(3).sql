-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-06-2017 a las 16:05:29
-- Versión del servidor: 5.5.49-0+deb8u1
-- Versión de PHP: 5.6.27-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `pensionados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autorizados`
--

CREATE TABLE IF NOT EXISTS `autorizados` (
`id` int(11) NOT NULL,
  `id_pensionado` int(11) NOT NULL,
  `id_parentesco` int(11) NOT NULL,
  `nacionalidad` varchar(1) NOT NULL,
  `cedula` int(8) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` int(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `autorizados`
--

INSERT INTO `autorizados` (`id`, `id_pensionado`, `id_parentesco`, `nacionalidad`, `cedula`, `nombre`, `apellido`, `direccion`, `telefono`) VALUES
(2, 21, 4, 'V', 7914844, 'nicolasa', 'guevara', 'dominga ortiz', 2147483647);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discapacidades`
--

CREATE TABLE IF NOT EXISTS `discapacidades` (
`id` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `discapacidades`
--

INSERT INTO `discapacidades` (`id`, `tipo`, `descripcion`) VALUES
(1, 'visual', ''),
(2, 'fisica', ''),
(3, 'auditiva', ''),
(4, 'intelectual', ''),
(5, 'psicologica', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE IF NOT EXISTS `municipio` (
`id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE IF NOT EXISTS `nomina` (
`id` int(11) NOT NULL,
  `id_pensionado` int(11) NOT NULL,
  `id_autorizado` int(11) NOT NULL,
  `id_nombre_detalles` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `nomina`
--

INSERT INTO `nomina` (`id`, `id_pensionado`, `id_autorizado`, `id_nombre_detalles`) VALUES
(3, 1, 2, 3),
(4, 2, 3, 4),
(5, 5, 5, 5),
(6, 2, 3, 4),
(7, 5, 5, 5),
(8, 1, 2, 3),
(9, 1, 2, 3),
(10, 1, 2, 3),
(11, 1, 2, 3),
(12, 1, 2, 3),
(13, 1, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina_detalles`
--

CREATE TABLE IF NOT EXISTS `nomina_detalles` (
`id` int(11) NOT NULL,
  `concepto` text NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `fecha` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parentesco`
--

CREATE TABLE IF NOT EXISTS `parentesco` (
`id` int(255) NOT NULL,
  `descripcion` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `parentesco`
--

INSERT INTO `parentesco` (`id`, `descripcion`) VALUES
(1, 'espos@'),
(2, 'hij@'),
(3, 'papa'),
(4, 'mama'),
(5, 'heman@'),
(6, 'abuel@'),
(7, 'ti@'),
(8, 'niet@');

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
-- Estructura de tabla para la tabla `pensionados`
--

CREATE TABLE IF NOT EXISTS `pensionados` (
`id` int(11) NOT NULL,
  `id_autorizado` int(11) NOT NULL,
  `id_discapacidad` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `id_parroquia` int(11) NOT NULL,
  `nacionalidad` varchar(1) NOT NULL,
  `cedula` int(10) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `fecha_nacimiento` varchar(25) NOT NULL,
  `estado_civil` varchar(10) NOT NULL,
  `fecha_registro` varchar(25) NOT NULL,
  `sexo` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `pensionados`
--

INSERT INTO `pensionados` (`id`, `id_autorizado`, `id_discapacidad`, `id_municipio`, `id_parroquia`, `nacionalidad`, `cedula`, `nombre`, `apellido`, `direccion`, `telefono`, `fecha_nacimiento`, `estado_civil`, `fecha_registro`, `sexo`) VALUES
(21, 2, 1, 5, 10, 'V', 1988315, 'carlos', 'silva', 'dominga oritz de paez', '04127624857', '30/05/1989', 'soltero', '05/06/2017', 'M'),
(22, 0, 1, 5, 10, 'V', 19881315, 'carlos', 'silva', 'dominga oritz de paez', '04127624857', '30/05/1989', 'soltero', '06-06-2017', 'M'),
(23, 0, 0, 6, 5, 'V', 234234, 'asdas', 'asdasd', 'sdfsdfd', '324234324', 'asddsad', 'soltero', '06-06-2017', 'M'),
(24, 0, 0, 2, 4, 'V', 511561516, 'asdasd', 'asdsad', 'asdddasd', '0412', '30/05/1989', 'soltero', '06-06-2017', 'M'),
(25, 0, 0, 8, 8, 'V', 1234, 'calasdasd', 'asdasdas', 'dominga oritz de paez', '04127624857', '30/05/1989', 'soltero', '06-06-2017', 'M'),
(26, 0, 0, 3, 10, 'V', 2147483647, 'asdaskodasd', 'asdasdjas', 'asdadqadasd', '041256', '30/05/1989', 'soltero', '06-06-2017', 'M');

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
-- Indices de la tabla `autorizados`
--
ALTER TABLE `autorizados`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `discapacidades`
--
ALTER TABLE `discapacidades`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nomina_detalles`
--
ALTER TABLE `nomina_detalles`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parentesco`
--
ALTER TABLE `parentesco`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parroquias`
--
ALTER TABLE `parroquias`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pensionados`
--
ALTER TABLE `pensionados`
 ADD PRIMARY KEY (`id`), ADD KEY `id_autorizado` (`id_autorizado`), ADD KEY `id_autorizado_2` (`id_autorizado`);

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
-- AUTO_INCREMENT de la tabla `autorizados`
--
ALTER TABLE `autorizados`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `discapacidades`
--
ALTER TABLE `discapacidades`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `nomina`
--
ALTER TABLE `nomina`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `nomina_detalles`
--
ALTER TABLE `nomina_detalles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `parentesco`
--
ALTER TABLE `parentesco`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `parroquias`
--
ALTER TABLE `parroquias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pensionados`
--
ALTER TABLE `pensionados`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
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
