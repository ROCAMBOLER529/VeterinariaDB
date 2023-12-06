-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2023 a las 08:46:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(10) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `categoria` varchar(40) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `descripcion`, `categoria`, `precio`) VALUES
(2, 'pulgicida', 'regular', 500),
(14, 'vacuna Rabia', 'medicamentos', 200),
(15, 'vacuna triple', 'medicamentos', 500),
(23, 'vacuna triple', 'medicamentos', 1500),
(24, 'vacula', 'medicamentos', 1500),
(25, 'vacula', 'medicamentos', 1500),
(27, 'comida para gato', 'regular', 2300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `id_turnos` int(10) NOT NULL,
  `nom_mascota` varchar(20) NOT NULL,
  `especialidad` varchar(20) NOT NULL,
  `dia` varchar(10) NOT NULL,
  `hora` varchar(6) NOT NULL,
  `nom_dueño` varchar(20) NOT NULL,
  `tel_contacto` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id_turnos`, `nom_mascota`, `especialidad`, `dia`, `hora`, `nom_dueño`, `tel_contacto`) VALUES
(15, 'Rolo', 'gato', 'Jueves', '9:00', 'Manuela', 4567),
(18, 'Ralo', 'perro', 'Jueves', '11:30', 'Jazmin', 65478910),
(26, 'Titin', 'perro', 'Sábado', '11:30', 'Ramiro', 4567),
(27, 'Ruperto', 'perro', 'Jueves', '17:00', 'Luciio', 4521354),
(29, 'Roque', 'gato', 'Martes', '17:30', 'Jose', 7778844),
(31, 'Mario', 'gato', 'Martes', '17:30', 'Romina', 124785),
(32, 'Mario', 'gato', 'Martes', '17:30', 'Romina', 124785),
(34, 'Charly', 'gato', 'Miércoles', '14:00', 'Francisco', 1161528076),
(35, 'Pichula', 'perro', 'Jueves', '9:00', 'Bruno', 212121212);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `clave` varchar(10) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre`, `clave`, `tipo`) VALUES
(1, 'root', '1234', 'administrador'),
(60, 'vet', 'vet', 'veterinario'),
(62, 'recep', 'recep', 'recepcionista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `veterinario`
--

CREATE TABLE `veterinario` (
  `veterinario_id` int(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `especialidad` varchar(20) NOT NULL,
  `dia1` varchar(10) NOT NULL,
  `dia2` varchar(10) NOT NULL,
  `dia3` varchar(10) NOT NULL,
  `usuariovet_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `veterinario`
--

INSERT INTO `veterinario` (`veterinario_id`, `nombre`, `especialidad`, `dia1`, `dia2`, `dia3`, `usuariovet_id`) VALUES
(148, 'vet', 'gato', 'martes', 'miercoles', 'jueves', 60);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id_turnos`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indices de la tabla `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`veterinario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id_turnos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `veterinario`
--
ALTER TABLE `veterinario`
  MODIFY `veterinario_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
