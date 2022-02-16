-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2022 a las 01:13:08
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldetalleventa`
--

CREATE TABLE `tbldetalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(20,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbldetalleventa`
--

INSERT INTO `tbldetalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(1, 6, 1, '5000.00', 1, 0),
(2, 6, 2, '3000.00', 1, 0),
(3, 7, 1, '5000.00', 1, 0),
(4, 7, 2, '3000.00', 1, 0),
(5, 8, 1, '5000.00', 1, 0),
(6, 8, 2, '3000.00', 1, 0),
(7, 9, 1, '5000.00', 1, 0),
(8, 9, 2, '3000.00', 1, 0),
(9, 10, 1, '5000.00', 1, 0),
(10, 10, 2, '3000.00', 1, 0),
(11, 11, 1, '5000.00', 1, 0),
(12, 11, 2, '3000.00', 1, 0),
(13, 12, 1, '5000.00', 1, 0),
(14, 12, 2, '3000.00', 1, 0),
(15, 13, 1, '5000.00', 1, 0),
(16, 13, 2, '3000.00', 1, 0),
(17, 14, 1, '5000.00', 1, 0),
(18, 14, 2, '3000.00', 1, 0),
(19, 14, 3, '1000.00', 1, 0),
(20, 15, 1, '5000.00', 1, 0),
(21, 15, 2, '3000.00', 1, 0),
(22, 15, 3, '1000.00', 1, 0),
(23, 16, 1, '5000.00', 1, 0),
(24, 16, 2, '3000.00', 1, 0),
(25, 16, 3, '1000.00', 1, 0),
(26, 17, 1, '5000.00', 1, 0),
(27, 17, 2, '3000.00', 1, 0),
(28, 17, 3, '1000.00', 1, 0),
(29, 18, 1, '5000.00', 1, 0),
(30, 18, 2, '3000.00', 1, 0),
(31, 18, 3, '1000.00', 1, 0),
(32, 19, 1, '5000.00', 1, 0),
(33, 19, 2, '3000.00', 1, 0),
(34, 19, 3, '1000.00', 1, 0),
(35, 20, 1, '5000.00', 1, 0),
(36, 20, 2, '3000.00', 1, 0),
(37, 20, 3, '1000.00', 1, 0),
(38, 21, 1, '5000.00', 1, 0),
(39, 21, 2, '3000.00', 1, 0),
(40, 21, 3, '1000.00', 1, 0),
(41, 22, 1, '5000.00', 1, 0),
(42, 22, 2, '3000.00', 1, 0),
(43, 22, 3, '1000.00', 1, 0),
(44, 23, 1, '5000.00', 1, 0),
(45, 23, 2, '3000.00', 1, 0),
(46, 23, 3, '1000.00', 1, 0),
(47, 24, 1, '5000.00', 1, 0),
(48, 24, 2, '3000.00', 1, 0),
(49, 24, 3, '1000.00', 1, 0),
(50, 25, 1, '5000.00', 1, 0),
(51, 25, 2, '3000.00', 1, 0),
(52, 25, 3, '1000.00', 1, 0),
(53, 26, 1, '5000.00', 1, 0),
(54, 26, 2, '3000.00', 1, 0),
(55, 26, 3, '1000.00', 1, 0),
(56, 27, 1, '5000.00', 1, 0),
(57, 27, 2, '3000.00', 1, 0),
(58, 27, 3, '1000.00', 1, 0),
(59, 28, 1, '5000.00', 1, 0),
(60, 28, 2, '3000.00', 1, 0),
(61, 28, 3, '1000.00', 1, 0),
(62, 29, 1, '5000.00', 1, 0),
(63, 29, 2, '3000.00', 1, 0),
(64, 29, 3, '1000.00', 1, 0),
(65, 30, 1, '5000.00', 1, 0),
(66, 30, 2, '3000.00', 1, 0),
(67, 30, 3, '1000.00', 1, 0),
(68, 31, 1, '5000.00', 1, 0),
(69, 31, 2, '3000.00', 1, 0),
(70, 31, 3, '1000.00', 1, 0),
(71, 32, 1, '5000.00', 1, 0),
(72, 32, 2, '3000.00', 1, 0),
(73, 32, 3, '1000.00', 1, 0),
(74, 33, 1, '5000.00', 1, 0),
(75, 33, 2, '3000.00', 1, 0),
(76, 33, 3, '1000.00', 1, 0),
(77, 34, 1, '5000.00', 1, 0),
(78, 34, 2, '3000.00', 1, 0),
(79, 34, 3, '1000.00', 1, 0),
(80, 35, 1, '5000.00', 1, 0),
(81, 35, 2, '3000.00', 1, 0),
(82, 35, 3, '1000.00', 1, 0),
(83, 36, 1, '5000.00', 1, 0),
(84, 36, 2, '3000.00', 1, 0),
(85, 36, 3, '1000.00', 1, 0),
(86, 37, 2, '3000.00', 1, 0),
(87, 38, 2, '3000.00', 1, 0),
(88, 39, 2, '3000.00', 1, 0),
(89, 40, 2, '3000.00', 1, 0),
(90, 41, 2, '3000.00', 1, 0),
(91, 42, 2, '3000.00', 1, 0),
(92, 43, 2, '3000.00', 1, 0),
(93, 44, 2, '3000.00', 1, 0),
(94, 45, 2, '3000.00', 1, 0),
(95, 46, 2, '3000.00', 1, 0),
(96, 47, 2, '3000.00', 1, 0),
(97, 48, 2, '3000.00', 1, 0),
(98, 49, 2, '3000.00', 1, 0),
(99, 50, 3, '1000.00', 1, 0),
(100, 51, 1, '5000.00', 1, 0),
(101, 52, 1, '5000.00', 1, 0),
(102, 53, 1, '5000.00', 1, 0),
(103, 54, 1, '5000.00', 1, 0),
(104, 55, 1, '5000.00', 1, 0),
(105, 56, 1, '5000.00', 1, 0),
(106, 57, 1, '5000.00', 1, 0),
(107, 58, 1, '5000.00', 1, 0),
(108, 59, 1, '5000.00', 1, 0),
(109, 60, 1, '5000.00', 1, 0),
(110, 61, 3, '1000.00', 1, 0),
(111, 62, 1, '5000.00', 1, 0),
(112, 63, 1, '5000.00', 1, 0),
(113, 64, 1, '5000.00', 1, 0),
(114, 65, 1, '5000.00', 1, 0),
(115, 66, 1, '5000.00', 1, 0),
(116, 67, 3, '1000.00', 1, 0),
(117, 68, 3, '1000.00', 1, 0),
(118, 69, 2, '3000.00', 1, 0),
(119, 70, 2, '3000.00', 1, 0),
(120, 71, 2, '3000.00', 1, 0),
(121, 72, 2, '3000.00', 1, 0),
(122, 73, 2, '3000.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,0) NOT NULL,
  `Descripcion` text NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`id`, `Nombre`, `Precio`, `Descripcion`, `imagen`) VALUES
(1, 'Aplicación Personalizada', '5000', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error ipsa eius incidunt autem quia ex, beatae dicta! A, consectetur nulla.', './img/producto1.jpg'),
(2, 'Aplicación Recetario Desarollado en Laravel 8', '3000', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. ', './img/producto2.jpg'),
(3, 'Planos Diseno Interiores', '1000', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsa nostrum qui cumque sed voluptatibus.', './img/producto3.jpg'),
(4, 'Lamparas Minimalistas ', '600', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, nam. Maxime repellat sapiente quidem obcaecati nam quia numquam consectetur .', './img/producto4.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

CREATE TABLE `tblventas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) NOT NULL,
  `PaypalDatos` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) NOT NULL,
  `Total` decimal(60,2) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES
(1, '12345566', '', '2022-02-13 21:18:35', 'tetst@mgial.com', '9000.00', 'pendiente'),
(2, '12345566', '', '2022-02-13 21:18:35', 'tetst@mgial.com', '9000.00', 'pendiente'),
(3, 'e3m4q60hnsvmhfn5odfh97v0c6', '', '2022-02-13 21:28:25', 'test@gmail.com', '8000.00', 'pendiente'),
(4, 'e3m4q60hnsvmhfn5odfh97v0c6', '', '2022-02-13 21:42:52', 'tets333@gmail.com', '8600.00', 'pendiente'),
(5, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 17:47:12', 'test@jmisa.com', '8000.00', 'pendiente'),
(6, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 17:49:00', 'test@jmisa.com', '8000.00', 'pendiente'),
(7, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 18:08:55', 'asdasd@mail.com', '8000.00', 'pendiente'),
(8, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:25:37', 'asdasd@mail.com', '8000.00', 'pendiente'),
(9, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:27:15', 'asdasd@mail.com', '8000.00', 'pendiente'),
(10, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:31:02', 'asdasd@mail.com', '8000.00', 'pendiente'),
(11, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:37:41', 'asdasd@mail.com', '8000.00', 'pendiente'),
(12, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:41:15', 'asdasd@mail.com', '8000.00', 'pendiente'),
(13, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:41:22', 'asdasd@mail.com', '8000.00', 'pendiente'),
(14, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:41:38', 'fasf@gmai.com', '9000.00', 'pendiente'),
(15, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:41:58', 'fasf@gmai.com', '9000.00', 'pendiente'),
(16, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:42:08', 'fasf@gmai.com', '9000.00', 'pendiente'),
(17, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:42:58', 'fasf@gmai.com', '9000.00', 'pendiente'),
(18, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:46:58', 'fasf@gmai.com', '9000.00', 'pendiente'),
(19, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:47:30', 'fasf@gmai.com', '9000.00', 'pendiente'),
(20, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:47:35', 'fasf@gmai.com', '9000.00', 'pendiente'),
(21, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:47:37', 'fasf@gmai.com', '9000.00', 'pendiente'),
(22, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 20:48:54', 'fasf@gmai.com', '9000.00', 'pendiente'),
(23, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:02:11', 'asddas@gmai.com', '9000.00', 'pendiente'),
(24, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:02:44', 'asddas@gmai.com', '9000.00', 'pendiente'),
(25, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:08:44', 'asddas@gmai.com', '9000.00', 'pendiente'),
(26, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:10:39', 'asddas@gmai.com', '9000.00', 'pendiente'),
(27, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:11:51', 'asddas@gmai.com', '9000.00', 'pendiente'),
(28, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:12:56', 'asddas@gmai.com', '9000.00', 'pendiente'),
(29, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:14:35', 'asddas@gmai.com', '9000.00', 'pendiente'),
(30, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:15:09', 'asddas@gmai.com', '9000.00', 'pendiente'),
(31, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:15:38', 'asddas@gmai.com', '9000.00', 'pendiente'),
(32, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:24:03', 'sadasd@mail.com', '9000.00', 'pendiente'),
(33, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:25:09', 'sadasd@mail.com', '9000.00', 'pendiente'),
(34, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:28:10', 'sadasd@mail.com', '9000.00', 'pendiente'),
(35, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:29:29', 'sadasd@mail.com', '9000.00', 'pendiente'),
(36, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:30:14', 'sadasd@mail.com', '9000.00', 'pendiente'),
(37, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:30:35', 'tets2@gmial.com', '3000.00', 'pendiente'),
(38, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:31:23', 'tets2@gmial.com', '3000.00', 'pendiente'),
(39, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:32:33', 'tets2@gmial.com', '3000.00', 'pendiente'),
(40, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:32:54', 'tets2@gmial.com', '3000.00', 'pendiente'),
(41, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:34:52', 'sadasdnt@gmail.com', '3000.00', 'pendiente'),
(42, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:35:25', 'sadasdnt@gmail.com', '3000.00', 'pendiente'),
(43, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:37:11', 'sadasdnt@gmail.com', '3000.00', 'pendiente'),
(44, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:38:27', 'sadasdnt@gmail.com', '3000.00', 'pendiente'),
(45, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:38:42', 'sadasdnt@gmail.com', '3000.00', 'pendiente'),
(46, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:40:45', 'sadasdnt@gmail.com', '3000.00', 'pendiente'),
(47, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:40:51', 'sadasdnt@gmail.com', '3000.00', 'pendiente'),
(48, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:41:07', 'sadasdnt@gmail.com', '3000.00', 'pendiente'),
(49, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:41:29', 'sadasdnt@gmail.com', '3000.00', 'pendiente'),
(50, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:42:03', 'sb-tsprs13781899@personal.example.com', '1000.00', 'pendiente'),
(51, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:42:18', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(52, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:46:27', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(53, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:47:03', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(54, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:47:21', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(55, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:47:51', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(56, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:48:12', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(57, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:48:24', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(58, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:49:23', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(59, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:49:44', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(60, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:50:26', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(61, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 21:52:36', 'dsadasdasopment@gmail.com', '1000.00', 'pendiente'),
(62, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:58:07', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(63, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:58:46', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(64, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:59:07', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(65, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 21:59:58', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(66, 'oao5k8drfk9lhf985gnp0rg1mh', '', '2022-02-14 22:00:41', 'ayalar15@yahoo.com', '5000.00', 'pendiente'),
(67, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 22:02:36', 'sb-tsprs13781899@personal.example.com', '1000.00', 'pendiente'),
(68, 'evokhdijubralvenfhn1a0il5b', '', '2022-02-14 22:05:21', 'sb-tsprs13781899@personal.example.com', '1000.00', 'pendiente'),
(69, 'jm8u8pb15433nvo2v9344qbhlq', '', '2022-02-15 17:47:47', 'wer@gmial.com', '3000.00', 'pendiente'),
(70, 'jm8u8pb15433nvo2v9344qbhlq', '', '2022-02-15 17:49:44', 'wer@gmial.com', '3000.00', 'pendiente'),
(71, 'jm8u8pb15433nvo2v9344qbhlq', '', '2022-02-15 18:04:55', 'wer@gmial.com', '3000.00', 'pendiente'),
(72, 'jm8u8pb15433nvo2v9344qbhlq', '', '2022-02-15 18:06:04', 'wer@gmial.com', '3000.00', 'pendiente'),
(73, 'jm8u8pb15433nvo2v9344qbhlq', '', '2022-02-15 18:06:50', 'wer@gmial.com', '3000.00', 'pendiente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD CONSTRAINT `tbldetalleventa_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `tblventas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbldetalleventa_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tblproductos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
