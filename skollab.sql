-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-03-2023 a las 22:25:52
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

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
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `ID_Actividad` bigint(10) NOT NULL,
  `ID_Persona` bigint(10) NOT NULL,
  `ID_Ficha` bigint(10) NOT NULL,
  `asunto` varchar(60) NOT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `fecha` date NOT NULL,
  `fecha_limite` date NOT NULL,
  `url` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`ID_Actividad`, `ID_Persona`, `ID_Ficha`, `asunto`, `descripcion`, `fecha`, `fecha_limite`, `url`) VALUES
(1, 3, 1, 'Números decimales', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat nesciunt, amet inventore voluptates consequatur impedit hic quam ex pariatur quae ut dolore quas perspiciatis facere? Veritatis quo illo explicabo ut.', '2023-03-21', '2023-11-03', NULL),
(2, 3, 1, 'Matemáticas con Python', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-21', '2023-09-08', '../file-store/activities/example.png'),
(3, 3, 1, 'Números primos', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-21', '2023-10-07', NULL),
(4, 3, 1, 'Radicación y racionalización', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-21', '2024-02-21', NULL),
(5, 2, 1, 'Grámatica', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-21', '2023-10-28', '../file-store/activities/example.png'),
(7, 2, 1, 'Literatura colombiana', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-22', '2023-12-01', NULL),
(8, 4, 1, 'Igualdad social', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-21', '2023-08-03', NULL),
(9, 4, 1, 'Constitución del 91', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-21', '2024-01-30', NULL),
(10, 3, 1, 'Logaritmos', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-21', '2023-12-15', '../file-store/activities/example.png'),
(11, 3, 1, 'Ecuaciones', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-21', '2024-03-08', NULL),
(12, 3, 1, 'Álgebra', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-21', '2023-11-09', NULL),
(13, 3, 1, 'Evaluación', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-21', '2023-12-22', NULL),
(14, 2, 1, 'Ortografía', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-22', '2024-01-05', NULL),
(15, 2, 1, 'Biografía', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem a nemo fugit iusto reiciendis repellat optio, cumque, reprehenderit dolor tempore laboriosam unde nisi nesciunt, velit commodi deleniti dicta voluptatem porro?', '2023-03-22', '2024-01-06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambiente_virtual`
--

CREATE TABLE `ambiente_virtual` (
  `ID_Persona` bigint(10) NOT NULL,
  `ID_Ficha` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ambiente_virtual`
--

INSERT INTO `ambiente_virtual` (`ID_Persona`, `ID_Ficha`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `ID_Anuncio` bigint(10) NOT NULL,
  `ID_Persona` bigint(10) NOT NULL,
  `asunto` varchar(60) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `fecha` date NOT NULL,
  `url_portada` varchar(1000) DEFAULT NULL,
  `url_file` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`ID_Anuncio`, `ID_Persona`, `asunto`, `descripcion`, `fecha`, `url_portada`, `url_file`) VALUES
(1, 1, 'Apertura de matriculas', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum, nulla. Animi deserunt, fugit totam quaerat quod praesentium tempora ut molestias amet, quos atque officiis dignissimos laboriosam cupiditate! Architecto, iusto voluptatibus! Dolores fugiat, eius debitis excepturi dolore totam adipisci, impedit tempore perspiciatis sunt placeat id voluptas optio laborum porro necessitatibus est face', '0000-00-00', './file-store/announcements/example1.png', './file-store/announcements/example1.png'),
(2, 1, 'Inscripciones Banda Marcial', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum, nulla. Animi deserunt, fugit totam quaerat quod praesentium tempora ut molestias amet, quos atque officiis dignissimos laboriosam cupiditate! Architecto, iusto voluptatibus! Dolores fugiat, eius debitis excepturi dolore totam adipisci, impedit tempore perspiciatis sunt placeat id voluptas optio laborum porro necessitatibus est facere ', '2023-03-21', './file-store/announcements/example2.jpg', './file-store/announcements/example2.jpg'),
(3, 1, 'Noticia importante', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum, nulla. Animi deserunt, fugit totam quaerat quod praesentium tempora ut molestias amet, quos atque officiis dignissimos laboriosam cupiditate! Architecto, iusto voluptatibus!\r\n\r\nDolores fugiat, eius debitis excepturi dolore totam adipisci, impedit tempore perspiciatis sunt placeat id voluptas optio laborum porro necessitatibus est face', '2023-03-21', './file-store/announcements/example3.jpg', './file-store/announcements/example3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `ID_Ficha` bigint(10) NOT NULL,
  `ID_Materia` bigint(10) NOT NULL,
  `ID_Instructor` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`ID_Ficha`, `ID_Materia`, `ID_Instructor`) VALUES
(1, 1, 2),
(1, 2, 3),
(1, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evidencia`
--

CREATE TABLE `evidencia` (
  `ID_Evidencia` bigint(10) NOT NULL,
  `ID_Persona` bigint(10) NOT NULL,
  `ID_Actividad` bigint(10) NOT NULL,
  `descripcion` varchar(400) DEFAULT NULL,
  `fecha` date NOT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `nota` int(3) DEFAULT NULL,
  `observacion` varchar(400) DEFAULT NULL,
  `nivelada` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evidencia`
--

INSERT INTO `evidencia` (`ID_Evidencia`, `ID_Persona`, `ID_Actividad`, `descripcion`, `fecha`, `url`, `nota`, `observacion`, `nivelada`) VALUES
(1, 9, 13, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 100, 'El mejor', 0),
(2, 9, 12, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 80, 'Bien, revisar signos de agrupación.', 0),
(3, 9, 1, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 100, 'Excelente.', 0),
(4, 9, 2, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 80, 'Bien.', 0),
(5, 9, 11, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 100, 'Muy bien!', 0),
(6, 9, 10, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 100, 'Excelente.', 0),
(7, 9, 9, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(8, 5, 13, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(9, 5, 1, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 90, 'Bien.', 0),
(10, 5, 2, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 20, 'Mal', 0),
(11, 5, 3, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 100, 'Excelente.', 0),
(12, 5, 10, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 20, 'Mal', 0),
(13, 5, 5, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(14, 5, 7, '', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(15, 5, 9, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(16, 11, 1, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 70, 'Regular', 0),
(17, 11, 2, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 50, 'Mal', 0),
(18, 11, 3, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 100, 'Super', 0),
(19, 11, 12, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(20, 11, 10, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(21, 11, 13, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(22, 11, 8, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(23, 11, 9, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(24, 11, 7, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(25, 10, 1, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 60, 'Pasable.', 0),
(26, 10, 5, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(27, 10, 7, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(28, 10, 2, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 10, 'Mal', 0),
(29, 10, 8, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(30, 8, 5, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(31, 8, 1, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 40, 'Mal.', 0),
(32, 8, 2, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 100, 'Excelente', 0),
(33, 8, 3, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 95, 'Muy bien', 0),
(34, 8, 4, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 100, 'Excelente.', 0),
(35, 8, 9, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(36, 8, 10, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(37, 8, 8, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(38, 8, 12, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(39, 7, 5, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(40, 7, 1, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 95, 'Muy bien.', 0),
(41, 7, 2, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(42, 7, 3, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 40, 'Revisar procedimiento.', 0),
(43, 7, 4, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(44, 7, 10, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 5, 'Muy mal.', 0),
(45, 7, 12, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(46, 7, 8, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(47, 7, 7, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(48, 7, 9, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(49, 7, 13, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(50, 6, 5, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(51, 6, 7, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(52, 6, 1, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(53, 6, 2, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(54, 6, 3, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(55, 6, 4, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 90, 'Muy bien.', 0),
(56, 6, 10, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', 100, 'Bien hecho!', 0),
(57, 6, 8, 'Entrego actividad.', '2023-03-21', '../file-store/evidences/example.png', NULL, NULL, 0),
(58, 9, 5, 'Entrego actividad.', '2023-03-22', '../file-store/evidences/example.png', 100, 'Excelente', 0),
(59, 9, 7, 'Entrego actividad.', '2023-03-22', '../file-store/evidences/example.png', 80, 'Bien', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `ID_Ficha` bigint(10) NOT NULL,
  `numero` bigint(10) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `codigo` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`ID_Ficha`, `numero`, `descripcion`, `codigo`) VALUES
(1, 1101, 'En el grado once de secundaria, los estudiantes continúan con su educación en una amplia variedad de asignaturas, incluyendo matemáticas avanzadas, ciencias, estudios sociales, inglés, idiomas extranjeros y arte y música. Los estudiantes pueden aprender sobre temas como álgebra avanzada, geometría, trigonometría, biología, química, física, historia, geografía, economía, política, literatura, gramática, pronunciación y análisis crítico de obras de arte y música. En general, el grado once es un año importante en la educación secundaria en el que los estudiantes se preparan para la universidad o la educación postsecundaria.', 2022);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `ID_Materia` bigint(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `img` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`ID_Materia`, `nombre`, `img`) VALUES
(1, 'ESPAÑOL', '../file-store/subjects/school_logo.png'),
(2, 'MATEMÁTICAS', '../file-store/subjects/school_logo.png'),
(3, 'SOCIALES', '../file-store/subjects/school_logo.png'),
(4, 'INGLÉS', '../file-store/subjects/school_logo.png'),
(5, 'FÍSICA', '../file-store/subjects/school_logo.png'),
(6, 'QUÍMICA', '../file-store/subjects/school_logo.png'),
(7, 'FILOSOFÍA', '../file-store/subjects/school_logo.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ID_Persona` bigint(10) NOT NULL,
  `ID_Tipo_Documento` bigint(10) NOT NULL,
  `ID_Rol` bigint(10) NOT NULL,
  `num_documento` bigint(10) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `correo_electronico` varchar(50) NOT NULL,
  `contraseña` varchar(155) NOT NULL,
  `telefono` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ID_Persona`, `ID_Tipo_Documento`, `ID_Rol`, `num_documento`, `nombres`, `apellidos`, `correo_electronico`, `contraseña`, `telefono`) VALUES
(1, 1, 1, 1010, 'ADMINISTRADOR', 'AMBIENTE', 'admin@skollab.com', 'a543e8fcda2f0b318826667effe4e4b3ac22705112f9470d7e3d07c71ca1025d235e6d361160b5b2b0b61f7121b84234dd0ddbd00d206f8f4805fef04f595193', 1937248522),
(2, 1, 2, 124059870, 'CAROLINA', 'PINZON GAITAN', 'cpinzon@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(3, 1, 2, 524059870, 'EDWIN DAVID', 'ROA PÉREZ', 'eroa@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 1385748391),
(4, 1, 2, 2147483647, 'LUIS FELIPE', 'VÉLEZ ORTÍZ', 'lvelez@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(5, 1, 3, 193827492, 'LUIS CARLOS', 'PINILLA', 'lpinilla@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(6, 1, 3, 2147483647, 'RAFAEL ANTONIO', 'COLÓN', 'rcolon@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(7, 1, 3, 37281932, 'HECTOR ABAD', 'LÓPEZ MARTÍNEZ', 'hlopez@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(8, 1, 3, 2147483647, 'MARIO ALFREDO', 'MENDOZA ÁVILA', 'mmendoza@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2106326598),
(9, 1, 3, 1328403813, 'ANDRES SEBASTIAN', 'RAMOS MARTINEZ', 'aramos@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 1948503912),
(10, 1, 3, 1023958301, 'JOHAN DAVID', 'PÉREZ VELOSA', 'jperez@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(11, 1, 3, 1049375903, 'CRISTIAN ALEJANDRO', 'CUESTA', 'ccuesta@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(12, 1, 3, 1948302847, 'NICOLAS JAVIER', 'LARA BONILLA', 'nlara@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 1319412341),
(13, 2, 3, 1029385749, 'JUAN DARÍO', 'TORRES', 'jtorres@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2013940123),
(14, 2, 3, 1204932912, 'PEDRO ALEXANDER', 'CASTILLO', 'pcastillo@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(15, 1, 2, 1503469710, 'JUAN SEBASTIAN', 'GONZALES PEÑA', 'jgonzales@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(16, 1, 2, 1021598364, 'GEORGE', 'DE LA ROSA', 'gdelarosa@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(17, 1, 2, 1014025010, 'FLORENTINO', 'CHAPARRO', 'fchaparro@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(18, 1, 2, 1010102369, 'JORGE', 'VAQUERO', 'jvaquero@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(19, 1, 2, 2135036879, 'ADOLFO', 'CARDONA', 'acardona@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(20, 1, 2, 1012023694, 'DANNA VALENTINA', 'LUCENA', 'dlucena@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(21, 1, 2, 1012470031, 'SOFIA', 'VELOZA ANIZ', 'sveloza@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(22, 1, 2, 1056315974, 'VIOLETA', 'CASTILLO', 'vcastillo@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(23, 1, 2, 1021587102, 'SARA MARIA', 'AZNAR', 'saznar@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647),
(24, 1, 2, 1458102201, 'XAVIER', 'SALGADO', 'xsalgado@skollab.com', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 2147483647);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID_Rol` bigint(10) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ID_Rol`, `tipo`) VALUES
(1, 'Administrador'),
(2, 'Profesor'),
(3, 'Aprendiz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `ID_Tipo_Documento` bigint(10) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`ID_Tipo_Documento`, `tipo`) VALUES
(1, 'Cédula de Ciudadanía'),
(2, 'Tarjeta de Identidad'),
(3, 'Cédula de Extranjería'),
(4, 'Pasaporte');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`ID_Actividad`),
  ADD KEY `ID_Persona` (`ID_Persona`),
  ADD KEY `ID_Ficha` (`ID_Ficha`);

--
-- Indices de la tabla `ambiente_virtual`
--
ALTER TABLE `ambiente_virtual`
  ADD KEY `ID_Persona` (`ID_Persona`),
  ADD KEY `ID_Ficha` (`ID_Ficha`);

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`ID_Anuncio`),
  ADD KEY `ID_Persona` (`ID_Persona`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD KEY `ID_Ficha` (`ID_Ficha`),
  ADD KEY `ID_Materia` (`ID_Materia`),
  ADD KEY `ID_Instructor` (`ID_Instructor`);

--
-- Indices de la tabla `evidencia`
--
ALTER TABLE `evidencia`
  ADD PRIMARY KEY (`ID_Evidencia`),
  ADD KEY `ID_Persona` (`ID_Persona`),
  ADD KEY `ID_Actividad` (`ID_Actividad`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`ID_Ficha`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`ID_Materia`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID_Persona`),
  ADD KEY `persona_ibfk_1` (`ID_Tipo_Documento`),
  ADD KEY `persona_ibfk_2` (`ID_Rol`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `ID_Actividad` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `ID_Anuncio` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `evidencia`
--
ALTER TABLE `evidencia`
  MODIFY `ID_Evidencia` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `ficha`
--
ALTER TABLE `ficha`
  MODIFY `ID_Ficha` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `ID_Materia` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `ID_Persona` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `ID_Rol` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `ID_Tipo_Documento` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `actividad_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`) ON UPDATE CASCADE,
  ADD CONSTRAINT `actividad_ibfk_2` FOREIGN KEY (`ID_Ficha`) REFERENCES `ficha` (`ID_Ficha`);

--
-- Filtros para la tabla `ambiente_virtual`
--
ALTER TABLE `ambiente_virtual`
  ADD CONSTRAINT `ambiente_virtual_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`),
  ADD CONSTRAINT `ambiente_virtual_ibfk_2` FOREIGN KEY (`ID_Ficha`) REFERENCES `ficha` (`ID_Ficha`);

--
-- Filtros para la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `anuncio_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`ID_Ficha`) REFERENCES `ficha` (`ID_Ficha`),
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`ID_Materia`) REFERENCES `materia` (`ID_Materia`),
  ADD CONSTRAINT `curso_ibfk_3` FOREIGN KEY (`ID_Instructor`) REFERENCES `persona` (`ID_Persona`);

--
-- Filtros para la tabla `evidencia`
--
ALTER TABLE `evidencia`
  ADD CONSTRAINT `evidencia_ibfk_1` FOREIGN KEY (`ID_Persona`) REFERENCES `persona` (`ID_Persona`),
  ADD CONSTRAINT `evidencia_ibfk_2` FOREIGN KEY (`ID_Actividad`) REFERENCES `actividad` (`ID_Actividad`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`ID_Tipo_Documento`) REFERENCES `tipo_documento` (`ID_Tipo_Documento`),
  ADD CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`ID_Rol`) REFERENCES `rol` (`ID_Rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
