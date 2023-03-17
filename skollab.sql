-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
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
(2, 'Profesor'),
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
  `ID_Persona` int(10) NOT NULL,
  `ID_Ficha` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ambiente_virtual`
--

INSERT INTO `ambiente_virtual` (`ID_Persona`, `ID_Ficha`) VALUES
(2, 1), (3, 1), (4, 1), (5, 1),
(6, 1), (7, 1), (8, 1), (9, 1),
(10, 1), (11, 1), (12, 1), (13, 1),
(14, 1), (15, 1), (16, 1), (17, 1),
(18, 1), (19, 1), (20, 1), (21, 1),
(22, 1), (23, 1), (24, 1), (25, 1),
(26, 1), (27, 1), (28, 1);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `ID_Ficha` int(10) NOT NULL,
  `ID_Materia` int(10) NOT NULL,
  `ID_Instructor` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`ID_Ficha`, `ID_Materia`, `ID_Instructor`) VALUES
(1, 1, 2),
(1, 2, 3),
(1, 3, 4),
(1, 4, 5),
(1, 5, 6),
(1, 6, 7),
(1, 7, 8);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evidencia`
--

CREATE TABLE `evidencia` (
  `ID_Evidencia` int(10) NOT NULL,
  `ID_Persona` int(10) NOT NULL,
  `ID_Actividad` int(10) NOT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `fecha` date NOT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `nota` int(3) DEFAULT NULL,
  `observacion` varchar(400) DEFAULT NULL,
  `nivelada` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `ID_Ficha` int(10) NOT NULL,
  `numero` int(10) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `codigo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`ID_Ficha`, `numero`, `descripcion`, `codigo`) VALUES
(1, 1101, 'En el grado once de secundaria, los estudiantes continúan con su educación en una amplia variedad de asignaturas, incluyendo matemáticas avanzadas, ciencias, estudios sociales, inglés, idiomas extranjeros y arte y música. Los estudiantes pueden aprender sobre temas como álgebra avanzada, geometría, trigonometría, biología, química, física, historia, geografía, economía, política, literatura, gramática, pronunciación y análisis crítico de obras de arte y música. En general, el grado once es un año importante en la educación secundaria en el que los estudiantes se preparan para la universidad o la educación postsecundaria.', 2022);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ID_Persona` int(10) NOT NULL,
  `ID_Tipo_Documento` int(10) NOT NULL,
  `ID_Rol` int(10) NOT NULL,
  `num_documento` int(10) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `correo_electronico` varchar(50) NOT NULL,
  `contraseña` varchar(155) NOT NULL,
  `telefono` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ID_Persona`, `num_documento`, `ID_Tipo_Documento`, `nombres`, `apellidos`, `ID_Rol`, `correo_electronico`, `contraseña`, `telefono`) VALUES
(1, 1010, 1, 'ADMINISTRADOR', 'AMBIENTE', 1, 'admin@skollab.com', 'a543e8fcda2f0b318826667effe4e4b3ac22705112f9470d7e3d07c71ca1025d235e6d361160b5b2b0b61f7121b84234dd0ddbd00d206f8f4805fef04f595193', 1937248522),
(2, 124059870, 1, 'CAROLINA', 'PINZON GAITAN', 2, 'cpinzon@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3938128394),
(3, 524059870, 1, 'EDWIN DAVID', 'ROA PÉREZ', 2, 'eroa@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 1385748391),
(4, 8391039283, 1, 'LUIS FELIPE', 'VÉLEZ ORTÍZ', 2, 'lvelez@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3216936714),
(5, 193827492, 1, 'LUIS CARLOS', 'PINILLA', 2, 'lpinilla@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3209637418),
(6, 8492019293, 1, 'RAFAEL ANTONIO', 'COLÓN', 2, 'rcolon@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3107465953),
(7, 37281932, 1, 'HECTOR ABAD', 'LÓPEZ MARTÍNEZ', 2, 'hlopez@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3265102580),
(8, 5983169547, 1, 'MARIO ALFREDO', 'MENDOZA ÁVILA', 2, 'mmendoza@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2106326598),
(9, 1328403813, 1, 'ANDRES SEBASTIAN', 'RAMOS MARTINEZ', 3, 'aramos@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 1948503912),
(10, 1023958301, 1, 'JOHAN DAVID', 'PÉREZ VELOSA', 3, 'jperez@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3981238456),
(11, 1049375903, 1, 'CRISTIAN ALEJANDRO', 'CUESTA', 3, 'ccuesta@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3020123023),
(12, 1948302847, 1, 'NICOLAS JAVIER', 'LARA BONILLA', 3, 'nlara@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 1319412341),
(13, 1029385749, 2, 'JUAN DARÍO', 'TORRES', 3, 'jtorres@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2013940123),
(14, 1204932912, 2, 'PEDRO ALEXANDER', 'CASTILLO', 3, 'pcastillo@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2948203948),
(15, 1503469710, 1, 'JUAN SEBASTIAN', 'GONZALES PEÑA', 2, 'jgonzales@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3019482031),
(16, 1021598364, 1, 'GEORGE', 'DE LA ROSA', 2, 'gdelarosa@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3112940293),
(17, 1014025010, 1, 'FLORENTINO', 'CHAPARRO', 2, 'fchaparro@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3124902813),
(18, 1010102369, 1, 'JORGE', 'VAQUERO', 2, 'jvaquero@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3124567416),
(19, 2135036879, 1, 'ADOLFO', 'CARDONA', 2, 'acardona@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3201699658),
(20, 1012023694, 1, 'DANNA VALENTINA', 'LUCENA', 2, 'dlucena@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3216593658),
(21, 1012470031, 1, 'SOFIA', 'VELOZA ANIZ', 2, 'sveloza@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3216336598),
(22, 1056315974, 1, 'VIOLETA', 'CASTILLO', 2, 'vcastillo@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3215414120),
(23, 1021587102, 1, 'SARA MARIA', 'AZNAR', 2, 'saznar@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3102654893),
(24, 1458102201, 1, 'XAVIER', 'SALGADO', 2, 'xsalgado@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3403659721),
(25, 1002544701, 1, 'JOSEPH', 'RODRIGUEZ', 2, 'jrodriguez@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 1236974125),
(26, 1123614782, 1, 'FERMIN', 'VELASCO', 2, 'jvelasco@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 3216549800),
(27, 1012464797, 1, 'TYRONE', 'GONZALES', 2, 'tgonzales@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 32974355102),
(28, 2023202452, 1, 'NICOLAE', 'MANCILLA', 2, 'nmancilla@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2136549714);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `ID_Materia` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `img` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`ID_Materia`, `nombre`, `img`) VALUES
(1, 'ESPAÑOL', "../file-store/subjects/school_logo.png"),
(2, 'MATEMÁTICAS', "../file-store/subjects/school_logo.png"),
(3, 'SOCIALES', "../file-store/subjects/school_logo.png"),
(4, 'INGLÉS', "../file-store/subjects/school_logo.png"),
(5, 'FÍSICA', "../file-store/subjects/school_logo.png"),
(6, 'QUÍMICA', "../file-store/subjects/school_logo.png"),
(7, 'FILOSOFÍA', "../file-store/subjects/school_logo.png");

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `ID_Actividad` int(10) NOT NULL,
  `ID_Persona` int(10) NOT NULL,
  `ID_Ficha` int(10) NOT NULL,
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
  `ID_Anuncio` int(10) NOT NULL,
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
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD KEY `ID_Ficha` (`ID_Ficha`),
  ADD KEY `ID_Materia` (`ID_Materia`),
  ADD KEY `ID_Instructor` (`ID_Instructor`);

--
-- Indices de la tabla `ambiente_virtual`
--
ALTER TABLE `ambiente_virtual`
  ADD KEY `ID_Persona` (`ID_Persona`),
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
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`ID_Materia`);

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
-- AUTO_INCREMENT de la tabla `ficha`
--
ALTER TABLE `ficha`
  MODIFY `ID_Ficha` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `ID_Materia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `ID_Actividad` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `ID_Anuncio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


--
-- AUTO_INCREMENT de la tabla `evidencia`
--
ALTER TABLE `evidencia`
  MODIFY `ID_Evidencia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

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
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`ID_Ficha`) REFERENCES `ficha` (`ID_Ficha`),
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`ID_Materia`) REFERENCES `materia` (`ID_Materia`),
  ADD CONSTRAINT `curso_ibfk_3` FOREIGN KEY (`ID_Instructor`) REFERENCES `persona` (`ID_Persona`);

--
-- Filtros para la tabla `ambiente_virtual`
--
ALTER TABLE `ambiente_virtual`
  ADD CONSTRAINT `ambiente_virtual_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`),
  ADD CONSTRAINT `ambiente_virtual_ibfk_2` FOREIGN KEY (`ID_Ficha`) REFERENCES `ficha` (`ID_Ficha`);


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