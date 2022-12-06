-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-08-2022 a las 20:33:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `skollab`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID_Rol` int(10) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ID_Rol`, `tipo`) VALUES 
(1, 'Administrador'),
(2, 'Instructor'),
(3, 'Aprendiz');

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `ID_Tipo_Documento` int(10) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`ID_Tipo_Documento`, `tipo`) VALUES 
(1, 'Cédula de Ciudadanía'),
(2, 'Tarjeta de Identidad'),
(3, 'Cédula de Extranjería'),
(4, 'Pasaporte');


--
-- Estructura de tabla para la tabla `ambiente_virtual`
--

CREATE TABLE `ambiente_virtual` (
  `ID_Persona` int(10) DEFAULT NULL,
  `ID_Programa` bigint(10) DEFAULT NULL,
  `ID_Ficha` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ambiente_virtual`
--

INSERT INTO `ambiente_virtual` (`ID_Persona`, `ID_Programa`, `ID_Ficha`) VALUES
(4, 1000, 3030303),
(4, 3000, 3030303),
(5, 1000, 3030303),
(5, 3000, 3030303),
(6, 1000, 3030303),
(6, 3000, 3030303),
(7, 1000, 3030303),
(7, 3000, 3030303),
(8, 1000, 3030303),
(8, 3000, 3030303),
(9, 1000, 3030303),
(9, 3000, 3030303),
(3, 1000, 3030303),
(2, 3000, 3030303);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evidencia`
--

CREATE TABLE `evidencia` (
  `ID_Evidencia` int(11) NOT NULL,
  `ID_Persona` int(10) NOT NULL,
  `ID_Actividad` int(11) NOT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `fecha` date NOT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `nota` bigint(3) DEFAULT NULL,
  `observacion` varchar(400) DEFAULT NULL,
  `nivelada` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `ID_Ficha` bigint(10) NOT NULL,
  `codigo` bigint(10) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`ID_Ficha`, `codigo`) VALUES
(3030303, 2022);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ID_Persona` int(10) NOT NULL,
  `ID_Tipo_Documento` int(10) NOT NULL,
  `ID_Rol` int(10) NOT NULL,
  `num_documento` bigint(10) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `correo_electronico` varchar(50) NOT NULL,
  `contraseña` varchar(155) NOT NULL,
  `telefono` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ID_Persona`, `num_documento`, `ID_Tipo_Documento`, `nombres`, `apellidos`, `ID_Rol`, `correo_electronico`, `contraseña`, `telefono`) VALUES
(1, 1010, 1, 'ADMINISTRADOR', 'AMBIENTE', 1, 'admin@skollab.com', 'a543e8fcda2f0b318826667effe4e4b3ac22705112f9470d7e3d07c71ca1025d235e6d361160b5b2b0b61f7121b84234dd0ddbd00d206f8f4805fef04f595193', 1937248522),
(2, 124059870, 1, 'CAROLINA', 'PINZON GAITAN', 2, 'cpinzon@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3938128394),
(3, 524059870, 1, 'EDWIN DAVID', 'ROA PÉREZ', 2, 'eroa@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 1385748391),
(3, 1328403813, 1, 'ANDRES SEBASTIAN', 'RAMOS MARTINEZ', 3, 'aramos@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 1948503912),
(4, 1023958301, 1, 'JOHAN DAVID', 'PÉREZ VELOSA', 3, 'jperez@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3981238456),
(5, 1049375903, 1, 'CRISTIAN ALEJANDRO', 'CUESTA', 3, 'ccuesta@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3020123023),
(6, 1948302847, 1, 'NICOLAS JAVIER', 'LARA BONILLA', '2000-09-13', 3, 'nlara@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 1319412341),
(7, 1029385749, 2, 'JUAN DARÍO', 'TORRES', 3, 'jtorres@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2013940123),
(9, 1204932912, 2, 'PEDRO ALEXANDER', 'CASTILLO', 3, 'pcastillo@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2948203948);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa_formacion`
--

CREATE TABLE `programa_formacion` (
  `ID_Programa` bigint(10) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `programa_formacion`
--

INSERT INTO `programa_formacion` (`ID_Programa`, `nombre`) VALUES
(1000, 'ANÁLISIS Y DESARROLLO DE SISTEMAS DE INFORMACIÓN'),
(3000, 'PROMOVER');
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `ID_Actividad` int(11) NOT NULL,
  `ID_Persona` int(10) NOT NULL,
  `ID_Ficha` bigint(10) NOT NULL,
  `asunto` varchar(60) NOT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `fecha` date NOT NULL,
  `fecha_limite` date NOT NULL,
  `url` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `anuncio`
--

CREATE TABLE `anuncio` (
  `ID_Anuncio` int(11) NOT NULL,
  `ID_Persona` int(10) NOT NULL,
  `asunto` varchar(60) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `fecha` date NOT NULL,
  `url_portada` varchar(1000) DEFAULT NULL,
  `url_file` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- --------------------------------------------------------
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambiente_virtual`
--
ALTER TABLE `ambiente_virtual`
  ADD KEY `ID_Persona` (`ID_Persona`),
  ADD KEY `ID_Programa` (`ID_Programa`),
  ADD KEY `ID_Ficha` (`ID_Ficha`);

--
-- Indexes for table `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`ID_Anuncio`),
  ADD KEY `ID_Persona` (`ID_Persona`);


--
-- Indices de la tabla `evidencia`
--
ALTER TABLE `evidencia`
  ADD PRIMARY KEY `ID_Evidencia` (`ID_Evidencia`),
  ADD KEY `ID_Persona` (`ID_Persona`),
  ADD KEY `ID_Actividad` (`ID_Actividad`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`ID_Ficha`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID_Persona`);

--
-- Indices de la tabla `programa_formacion`
--
ALTER TABLE `programa_formacion`
  ADD PRIMARY KEY (`ID_Programa`);

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`ID_Actividad`),
  ADD KEY `ID_Persona` (`ID_Persona`),
  ADD KEY `ID_Ficha` (`ID_Ficha`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ID_Rol`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`ID_Tipo_Documento`);


--
-- AUTO_INCREMENT de las tablas volcadasAUTO_INCREMENT
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `ID_Persona` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `ID_Actividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `ID_Anuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


--
-- AUTO_INCREMENT de la tabla `evidencia`
--
ALTER TABLE `evidencia`
  MODIFY `ID_Evidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `ID_Rol` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `ID_Tipo_Documento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ambiente_virtual`
--
ALTER TABLE `ambiente_virtual`
  ADD CONSTRAINT `ambiente_virtual_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`),
  ADD CONSTRAINT `ambiente_virtual_ibfk_2` FOREIGN KEY (`ID_Programa`) REFERENCES `programa_formacion` (`ID_Programa`),
  ADD CONSTRAINT `ambiente_virtual_ibfk_3` FOREIGN KEY (`ID_Ficha`) REFERENCES `ficha` (`ID_Ficha`);


--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`ID_Tipo_Documento`) REFERENCES `tipo_documento` (`ID_Tipo_Documento`),
  ADD CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`ID_Rol`) REFERENCES `rol` (`ID_Rol`);


--
-- Filtros para la tabla `evidencia`
--
ALTER TABLE `evidencia`
  ADD CONSTRAINT `evidencia_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`),
  ADD CONSTRAINT `evidencia_ibfk_2` FOREIGN KEY (`ID_Actividad`) REFERENCES `actividad` (`ID_Actividad`);

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `actividad_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`) ON UPDATE CASCADE,
  ADD CONSTRAINT `actividad_ibfk_2` FOREIGN KEY (`ID_Ficha`) REFERENCES `ficha` (`ID_Ficha`);
  

--
-- Constraints for table `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `anuncio_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`) ON UPDATE CASCADE;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
