-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-01-2018 a las 20:26:37
-- Versión del servidor: 5.7.14
-- Versión de PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_transbank`
--
CREATE DATABASE IF NOT EXISTS `db_transbank` DEFAULT CHARACTER SET ascii COLLATE ascii_general_ci;
USE `db_transbank`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_saldo`
--

CREATE TABLE `tbl_saldo` (
  `idSaldo` int(11) NOT NULL,
  `usuarioSaldo` varchar(50) NOT NULL,
  `abonoDia` int(20) NOT NULL,
  `ventasFechas` int(20) NOT NULL,
  `abonosPendientesFecha1` int(20) NOT NULL,
  `abonosPendientesFecha2` int(20) NOT NULL,
  `abonosPendientesFecha3` int(20) NOT NULL,
  `abonosPendientesFecha4` int(20) NOT NULL,
  `abonosPendientesFecha5` int(20) NOT NULL,
  `abonosPendientesMes` int(20) NOT NULL,
  `totalAbonosPendientesFecha` int(20) NOT NULL,
  `totalAbonosPendientesFechaDolar` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `tbl_saldo`
--

INSERT INTO `tbl_saldo` (`idSaldo`, `usuarioSaldo`, `abonoDia`, `ventasFechas`, `abonosPendientesFecha1`, `abonosPendientesFecha2`, `abonosPendientesFecha3`, `abonosPendientesFecha4`, `abonosPendientesFecha5`, `abonosPendientesMes`, `totalAbonosPendientesFecha`, `totalAbonosPendientesFechaDolar`) VALUES
(1, '1@nubison.cl', 61000, 29749787, 463050, 6295438, 160820, 49168, 13728, 6968476, 7144876, 0),
(2, '2@nubison.cl', 121000, 32749787, 333050, 3995438, 240820, 32168, 23728, 5668476, 8144876, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `websecurityexpired`
--

CREATE TABLE `websecurityexpired` (
  `User_Guid` varchar(36) NOT NULL,
  `Password` varchar(60) DEFAULT NULL,
  `Lastused` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `websecuritygroups`
--

CREATE TABLE `websecuritygroups` (
  `Group_Guid` varchar(36) NOT NULL,
  `Group_Name` varchar(60) NOT NULL,
  `Updweb` datetime DEFAULT NULL,
  `Updlocal` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `websecuritygroups`
--

INSERT INTO `websecuritygroups` (`Group_Guid`, `Group_Name`, `Updweb`, `Updlocal`) VALUES
('e16d674bc97840589420fea10ed771e3', 'Administrators', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `websecuritymembers`
--

CREATE TABLE `websecuritymembers` (
  `Group_Guid` varchar(36) NOT NULL,
  `User_Guid` varchar(36) NOT NULL,
  `Updweb` datetime DEFAULT NULL,
  `Updlocal` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `websecuritymembers`
--

INSERT INTO `websecuritymembers` (`Group_Guid`, `User_Guid`, `Updweb`, `Updlocal`) VALUES
('e16d674bc97840589420fea10ed771e3', '18d1e6e31c644429a731db2b516ef6a8', NULL, '2017-11-30 10:52:02'),
('e16d674bc97840589420fea10ed771e3', '9805f0465ee741f5bbfcbdea31363e76', NULL, '2017-11-30 10:52:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `websecurityusers`
--

CREATE TABLE `websecurityusers` (
  `Guid` varchar(36) NOT NULL,
  `Userid` varchar(250) NOT NULL,
  `Password` varchar(60) DEFAULT NULL,
  `Rememberme` tinyint(1) DEFAULT NULL,
  `Redirpage` varchar(60) DEFAULT NULL,
  `Passent` datetime DEFAULT NULL,
  `Passexp` datetime DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Secques` varchar(100) DEFAULT NULL,
  `Secans` varchar(60) DEFAULT NULL,
  `Updweb` datetime DEFAULT NULL,
  `Updlocal` datetime DEFAULT NULL,
  `Ulink` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

--
-- Volcado de datos para la tabla `websecurityusers`
--

INSERT INTO `websecurityusers` (`Guid`, `Userid`, `Password`, `Rememberme`, `Redirpage`, `Passent`, `Passexp`, `Email`, `Secques`, `Secans`, `Updweb`, `Updlocal`, `Ulink`) VALUES
('18d1e6e31c644429a731db2b516ef6a8', '1@nubison.cl', '123456', NULL, NULL, '2017-11-30 10:51:29', NULL, NULL, NULL, NULL, NULL, '2017-11-30 10:51:29', NULL),
('9805f0465ee741f5bbfcbdea31363e76', '2@nubison.cl', '123456', NULL, NULL, '2017-11-30 10:51:56', NULL, NULL, NULL, NULL, NULL, '2017-11-30 10:51:56', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_saldo`
--
ALTER TABLE `tbl_saldo`
  ADD PRIMARY KEY (`idSaldo`);

--
-- Indices de la tabla `websecurityexpired`
--
ALTER TABLE `websecurityexpired`
  ADD PRIMARY KEY (`User_Guid`,`Lastused`);

--
-- Indices de la tabla `websecuritygroups`
--
ALTER TABLE `websecuritygroups`
  ADD PRIMARY KEY (`Group_Guid`);

--
-- Indices de la tabla `websecuritymembers`
--
ALTER TABLE `websecuritymembers`
  ADD PRIMARY KEY (`Group_Guid`,`User_Guid`);

--
-- Indices de la tabla `websecurityusers`
--
ALTER TABLE `websecurityusers`
  ADD PRIMARY KEY (`Guid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_saldo`
--
ALTER TABLE `tbl_saldo`
  MODIFY `idSaldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
