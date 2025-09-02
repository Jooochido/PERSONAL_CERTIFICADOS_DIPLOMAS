-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-09-2025 a las 00:36:04
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `certificados_diplomas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_curso_usuario`
--

CREATE TABLE `td_curso_usuario` (
  `curd_id` int(11) NOT NULL,
  `cur_id` int(11) NOT NULL,
  `usu_id` int(11) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `td_curso_usuario`
--

INSERT INTO `td_curso_usuario` (`curd_id`, `cur_id`, `usu_id`, `fech_crea`, `est`) VALUES
(18, 1, 1, '2025-09-02 12:53:06', 1),
(19, 1, 2, '2025-09-02 12:53:06', 1),
(20, 1, 6, '2025-09-02 12:53:06', 1),
(21, 2, 1, '2025-09-02 12:53:19', 1),
(22, 3, 3, '2025-09-02 12:53:25', 1),
(23, 3, 5, '2025-09-02 12:53:25', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_categoria`
--

CREATE TABLE `tm_categoria` (
  `cat_id` int(11) NOT NULL,
  `cat_nom` varchar(150) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_categoria`
--

INSERT INTO `tm_categoria` (`cat_id`, `cat_nom`, `fech_crea`, `est`) VALUES
(1, 'Programacion', '2025-08-28 01:11:38', 1),
(2, 'Marketing', '2025-08-28 01:11:38', 1),
(3, 'Negocios', '2025-08-28 01:12:07', 1),
(4, 'Educacion', '2025-08-28 01:12:07', 1),
(5, 'test', '2025-08-29 16:28:22', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_curso`
--

CREATE TABLE `tm_curso` (
  `cur_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cur_nom` varchar(150) NOT NULL,
  `cur_descrip` varchar(500) NOT NULL,
  `cur_fechini` date NOT NULL,
  `cur_fechfin` date NOT NULL,
  `inst_id` int(11) NOT NULL,
  `cur_img` varchar(255) DEFAULT NULL,
  `fech_crea` datetime NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_curso`
--

INSERT INTO `tm_curso` (`cur_id`, `cat_id`, `cur_nom`, `cur_descrip`, `cur_fechini`, `cur_fechfin`, `inst_id`, `cur_img`, `fech_crea`, `est`) VALUES
(1, 1, 'HTML5', 'Aprenderas lo basico de HTML5', '2025-08-28', '2025-09-28', 1, '65199387.png', '2025-08-28 02:49:14', 1),
(2, 1, 'CSS', 'Aprenderas lo basico de CSS', '2025-08-28', '2025-09-30', 1, '2.png', '2025-08-28 02:49:14', 1),
(3, 1, 'Javascript', 'Aprenderas los basico de Javascript', '2025-08-30', '2025-09-30', 2, '1413220242.png', '2025-08-29 14:13:16', 1),
(4, 1, 'TEST', 'TEST', '2025-08-29', '2025-08-31', 1, '4.png', '2025-08-29 14:22:31', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_instructor`
--

CREATE TABLE `tm_instructor` (
  `inst_id` int(11) NOT NULL,
  `inst_nom` varchar(150) NOT NULL,
  `inst_apep` varchar(150) NOT NULL,
  `inst_apem` varchar(150) NOT NULL,
  `inst_correo` varchar(150) NOT NULL,
  `inst_sex` varchar(1) NOT NULL,
  `inst_telf` varchar(15) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_instructor`
--

INSERT INTO `tm_instructor` (`inst_id`, `inst_nom`, `inst_apep`, `inst_apem`, `inst_correo`, `inst_sex`, `inst_telf`, `fech_crea`, `est`) VALUES
(1, 'Alejandro', 'Ramirez', 'Altamirano', 'inst1@gmail.com', 'M', '1234567890', '2025-08-28 01:07:47', 1),
(2, 'Alejandra', 'Carrillo', 'Garcia', 'inst2@gmail.com', 'F', '1234567890', '2025-08-28 01:07:47', 1),
(3, 'test12345', 'test', 'test', 'test@gmail.com', 'M', '1234567890', '2025-08-29 16:48:39', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_usuario`
--

CREATE TABLE `tm_usuario` (
  `usu_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `usu_dni` varchar(50) DEFAULT NULL,
  `usu_nom` varchar(150) NOT NULL,
  `usu_apep` varchar(150) NOT NULL,
  `usu_apem` varchar(150) NOT NULL,
  `usu_correo` varchar(150) NOT NULL,
  `usu_pass` varchar(20) NOT NULL,
  `usu_sex` varchar(1) NOT NULL,
  `usu_telf` varchar(15) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_usuario`
--

INSERT INTO `tm_usuario` (`usu_id`, `rol_id`, `usu_dni`, `usu_nom`, `usu_apep`, `usu_apem`, `usu_correo`, `usu_pass`, `usu_sex`, `usu_telf`, `fech_crea`, `est`) VALUES
(1, 1, 'JARA2608', 'Jonathan', 'Ramirez', 'Altamirano', 'jooorami2608@gmail.com', '12345678', 'M', '1234567890', '2025-08-28 01:00:51', 1),
(2, 1, 'ALRA2608', 'Alejandro', 'Ramirez', 'Altamirano', 'jooo2608@gmail.com', '12345678', 'M', '1234567890', '2025-08-28 01:00:51', 1),
(3, 2, NULL, 'Correo', 'Desarrollo', 'Pr', 'correo.desarrollopr@gmail.com', '12345678', 'M', '1234567890', '2025-08-28 01:00:51', 1),
(4, 1, NULL, 'test', 'test', 'test', 'test@gmail.com', '12345678', 'M', '1234567890', '2025-08-29 17:11:16', 0),
(5, 1, NULL, 'Ejemplo', '1', '2', 'ejemplo@gmail.com', '12345678', 'M', '1234567890', '2025-08-29 01:00:51', 1),
(6, 1, NULL, 'Otro', '1', '2', 'otro@gmail.com', '12345678', 'M', '1234567890', '2025-08-29 01:00:51', 1),
(11, 1, '654131', 'Test1', 'Paterno1', 'Materno1', 'correo1@correo1.com1', 'password1', 'M', '12345', '2025-09-02 16:35:08', 1),
(12, 1, '654132', 'Test2', 'Paterno2', 'Materno2', 'correo1@correo1.com2', 'password2', 'F', '12345', '2025-09-02 16:35:08', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `td_curso_usuario`
--
ALTER TABLE `td_curso_usuario`
  ADD PRIMARY KEY (`curd_id`);

--
-- Indices de la tabla `tm_categoria`
--
ALTER TABLE `tm_categoria`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `tm_curso`
--
ALTER TABLE `tm_curso`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indices de la tabla `tm_instructor`
--
ALTER TABLE `tm_instructor`
  ADD PRIMARY KEY (`inst_id`);

--
-- Indices de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `td_curso_usuario`
--
ALTER TABLE `td_curso_usuario`
  MODIFY `curd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `tm_categoria`
--
ALTER TABLE `tm_categoria`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tm_curso`
--
ALTER TABLE `tm_curso`
  MODIFY `cur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tm_instructor`
--
ALTER TABLE `tm_instructor`
  MODIFY `inst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
