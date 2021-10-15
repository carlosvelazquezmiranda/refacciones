-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2021 a las 21:18:49
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdrefacciones`
--
CREATE DATABASE IF NOT EXISTS `bdrefacciones` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdrefacciones`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcliente`
--

CREATE TABLE `tblcliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblcliente`
--

INSERT INTO `tblcliente` (`idcliente`, `nombre`, `telefono`) VALUES
(1, 'carlos', '5537529423'),
(3, 'bruno', '5537529465'),
(4, 'Donaji', '5537527346'),
(5, 'Ramon', '5537522586');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcotizacion`
--

CREATE TABLE `tblcotizacion` (
  `idcotizacion` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `detallecotizacion` int(11) NOT NULL,
  `idpiesa` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `expediente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblcotizacion`
--

INSERT INTO `tblcotizacion` (`idcotizacion`, `idcliente`, `detallecotizacion`, `idpiesa`, `cantidad`, `subtotal`, `expediente`) VALUES
(1, 2, 6, 1, 5, 3090, ''),
(2, 2, 10, 1, 4, 2472, ''),
(3, 2, 10, 3, 4, 1836, ''),
(4, 2, 12, 2, 2, 1000, '321a'),
(5, 3, 13, 2, 3, 1500, '234s'),
(6, 3, 13, 2, 3, 1500, '234s'),
(7, 4, 14, 7, 2, 718, '5238k'),
(8, 4, 14, 5, 3, 1554, '5238k'),
(9, 5, 15, 3, 2, 918, '987shj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmarca`
--

CREATE TABLE `tblmarca` (
  `idmarca` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblmarca`
--

INSERT INTO `tblmarca` (`idmarca`, `nombre`) VALUES
(1, 'Ford');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmodelo`
--

CREATE TABLE `tblmodelo` (
  `idmodelo` int(11) NOT NULL,
  `idmarca` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblmodelo`
--

INSERT INTO `tblmodelo` (`idmodelo`, `idmarca`, `nombre`) VALUES
(1, 1, 'explorer'),
(2, 1, 'fiesta'),
(5, 2, 'altima'),
(6, 2, 'platina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpiezas`
--

CREATE TABLE `tblpiezas` (
  `idpiesa` int(11) NOT NULL,
  `idvehiculo` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `cantidad_existencia` int(11) NOT NULL,
  `origen_nueva_o_usada` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblpiezas`
--

INSERT INTO `tblpiezas` (`idpiesa`, `idvehiculo`, `idproveedor`, `descripcion`, `cantidad_existencia`, `origen_nueva_o_usada`, `precio`, `tipo`) VALUES
(1, 6, 2, 'Balatas Hibridas Trasero', 100, 'Nueva', 618, 3),
(2, 6, 1, 'Balatas Hibridas Trasero', 200, 'Nueva', 500, 3),
(3, 6, 3, 'Balatas Hibridas Traseroo', 500, 'Nueva', 459, 3),
(4, 9, 1, 'Balatas Hibridas Trasero', 200, 'Nueva', 400, 3),
(5, 9, 2, 'Balatas Hibridas Trasero', 130, 'Nueva', 518, 3),
(6, 9, 3, 'Balatas Hibridas Trasero', 300, 'Nueva', 359, 3),
(7, 9, 3, 'Balatas Hibridas Trasero', 300, 'Nueva', 359, 3),
(8, 6, 5, 'Balatas Ceramicas Traseras', 200, 'Nueva', 781, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproveedores`
--

CREATE TABLE `tblproveedores` (
  `idproveedor` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` varchar(159) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblproveedores`
--

INSERT INTO `tblproveedores` (`idproveedor`, `nombre`, `telefono`, `correo`) VALUES
(1, 'Fabian Sanchez zz', '5571969999', 'fabian9@gmail.com'),
(2, 'Arturo Sandoval', '5565328934', 'Arturo@gmail.com'),
(3, 'Sandra Hernandez', '5556452488', 'Sandra@gmail.com'),
(4, 'Miguel Peres', '5583754318', 'Miguel@gmail.com'),
(5, 'Pedro', '5537527236', 'pedro@gmail.com'),
(7, 'Isela', '5571967417', 'isela@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltiket`
--

CREATE TABLE `tbltiket` (
  `idtiket` int(11) NOT NULL,
  `x` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbltiket`
--

INSERT INTO `tbltiket` (`idtiket`, `x`) VALUES
(1, 'num'),
(2, 'num'),
(3, 'num'),
(4, 'num'),
(5, 'num'),
(6, 'num'),
(7, 'num'),
(8, 'num'),
(9, 'num'),
(10, 'num'),
(11, 'num'),
(12, 'num'),
(13, 'num'),
(14, 'num'),
(15, 'num');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltipo`
--

CREATE TABLE `tbltipo` (
  `idtipo` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbltipo`
--

INSERT INTO `tbltipo` (`idtipo`, `nombre`) VALUES
(3, 'Frenos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblvehiculo`
--

CREATE TABLE `tblvehiculo` (
  `idvehiculo` int(11) NOT NULL,
  `idmarca` int(11) NOT NULL,
  `idmodelo` int(11) NOT NULL,
  `Anio` int(11) NOT NULL,
  `Tipo_vehiculo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblvehiculo`
--

INSERT INTO `tblvehiculo` (`idvehiculo`, `idmarca`, `idmodelo`, `Anio`, `Tipo_vehiculo`) VALUES
(6, 1, 1, 2018, 'x'),
(9, 1, 1, 2017, 'x'),
(10, 1, 2, 2018, 'x'),
(11, 1, 2, 2017, 'x'),
(12, 2, 5, 2018, 'x'),
(13, 2, 5, 2017, 'x'),
(14, 2, 6, 2018, 'x'),
(15, 2, 6, 2017, 'x');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblcliente`
--
ALTER TABLE `tblcliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `tblcotizacion`
--
ALTER TABLE `tblcotizacion`
  ADD PRIMARY KEY (`idcotizacion`);

--
-- Indices de la tabla `tblmarca`
--
ALTER TABLE `tblmarca`
  ADD PRIMARY KEY (`idmarca`);

--
-- Indices de la tabla `tblmodelo`
--
ALTER TABLE `tblmodelo`
  ADD PRIMARY KEY (`idmodelo`);

--
-- Indices de la tabla `tblpiezas`
--
ALTER TABLE `tblpiezas`
  ADD PRIMARY KEY (`idpiesa`);

--
-- Indices de la tabla `tblproveedores`
--
ALTER TABLE `tblproveedores`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `tbltiket`
--
ALTER TABLE `tbltiket`
  ADD PRIMARY KEY (`idtiket`);

--
-- Indices de la tabla `tbltipo`
--
ALTER TABLE `tbltipo`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `tblvehiculo`
--
ALTER TABLE `tblvehiculo`
  ADD PRIMARY KEY (`idvehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblcliente`
--
ALTER TABLE `tblcliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tblcotizacion`
--
ALTER TABLE `tblcotizacion`
  MODIFY `idcotizacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tblmarca`
--
ALTER TABLE `tblmarca`
  MODIFY `idmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblmodelo`
--
ALTER TABLE `tblmodelo`
  MODIFY `idmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tblpiezas`
--
ALTER TABLE `tblpiezas`
  MODIFY `idpiesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tblproveedores`
--
ALTER TABLE `tblproveedores`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbltiket`
--
ALTER TABLE `tbltiket`
  MODIFY `idtiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tbltipo`
--
ALTER TABLE `tbltipo`
  MODIFY `idtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblvehiculo`
--
ALTER TABLE `tblvehiculo`
  MODIFY `idvehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
