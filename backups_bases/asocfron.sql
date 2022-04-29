-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2022 a las 23:00:30
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asocfron`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asociado`
--

CREATE TABLE `asociado` (
  `id_asociado` int(11) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `dip` varchar(50) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `celular` varchar(30) DEFAULT NULL,
  `observacion` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `expira` date DEFAULT NULL,
  `id_estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asociado`
--

INSERT INTO `asociado` (`id_asociado`, `codigo`, `nombres`, `apellidos`, `dip`, `ciudad`, `direccion`, `celular`, `observacion`, `foto`, `expira`, `id_estado`) VALUES
(1, '1234abc', 'JUANCITO', 'PINTO', '1234567', 'SANTA CRUZ', 'DIRECCIÓN 112233', '12345678', 'OBSERVACIÓN', '1234567.jpg', '2022-12-31', 1),
(2, '1234abd', 'MARIA', 'PINTO', '1234568', 'SANTA CRUZ', 'DIRECCIÓN 112233', '12345679', 'OBSERVACIÓN', '1234568.jpg', '2022-12-31', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `apodo` varchar(50) NOT NULL,
  `clave` varchar(32) NOT NULL,
  `fecha_caducidad` date NOT NULL,
  `rol` varchar(15) NOT NULL DEFAULT 'invitado',
  `id_estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `apodo`, `clave`, `fecha_caducidad`, `rol`, `id_estado`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-12-31', 'administrador', 1),
(2, 'registro', '688076062d6513e29967e70d2cdade24', '2022-12-31', 'registro', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asociado`
--
ALTER TABLE `asociado`
  ADD PRIMARY KEY (`id_asociado`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `apodo_uk` (`apodo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asociado`
--
ALTER TABLE `asociado`
  MODIFY `id_asociado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
