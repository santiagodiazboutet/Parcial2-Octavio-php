-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2019 a las 16:47:07
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parcial2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `articulo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `tipo_pago` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_usuario`, `articulo`, `precio`, `tipo_pago`, `created_at`, `updated_at`) VALUES
(2, 0, 'algo', 123.45, '', '2019-07-25 16:44:18', '2019-07-25 16:44:18'),
(3, 0, 'algo', 123.45, '', '2019-07-25 16:45:55', '2019-07-25 16:45:55'),
(4, 0, 'algo', 123.45, '', '2019-07-25 16:53:02', '2019-07-25 16:53:02'),
(5, 0, 'algo', 123.45, '', '2019-07-25 16:53:48', '2019-07-25 16:53:48'),
(6, 10, 'algo', 123.45, '', '2019-07-25 16:58:13', '2019-07-25 16:58:13'),
(7, 10, 'algo', 123.45, '', '2019-07-25 17:01:22', '2019-07-25 17:01:22'),
(8, 10, 'algo', 123.45, '', '2019-07-25 17:01:41', '2019-07-25 17:01:41'),
(9, 9, 'algo', 123.45, '', '2019-07-25 18:49:59', '2019-07-25 18:49:59'),
(10, 9, 'algo', 123.45, '', '2019-07-25 18:50:49', '2019-07-25 18:50:49'),
(11, 9, 'algo', 123.45, '', '2019-07-25 18:51:20', '2019-07-25 18:51:20'),
(12, 9, 'algo', 123.45, '', '2019-07-25 19:22:20', '2019-07-25 19:22:20'),
(13, 9, 'algo', 123.45, '', '2019-07-25 19:27:27', '2019-07-25 19:27:27'),
(14, 9, 'algo', 123.45, '', '2019-07-25 19:38:40', '2019-07-25 19:38:40'),
(15, 9, 'algo', 123.45, '', '2019-07-26 14:24:31', '2019-07-26 14:24:31'),
(16, 9, 'algo', 123.45, '', '2019-07-26 14:42:39', '2019-07-26 14:42:39'),
(17, 9, 'algo', 123.45, '', '2019-07-26 14:43:37', '2019-07-26 14:43:37'),
(18, 9, 'algo', 123.45, '', '2019-07-26 14:44:02', '2019-07-26 14:44:02'),
(19, 9, 'algo', 123.45, '', '2019-07-26 14:45:34', '2019-07-26 14:45:34'),
(20, 9, 'algo', 123.45, '', '2019-07-26 14:46:09', '2019-07-26 14:46:09'),
(21, 9, 'algo', 123.45, '', '2019-07-26 14:50:07', '2019-07-26 14:50:07'),
(22, 9, 'algo', 123.45, '', '2019-07-26 14:50:36', '2019-07-26 14:50:36'),
(23, 9, 'algo', 123.45, '', '2019-07-26 14:52:23', '2019-07-26 14:52:23'),
(24, 9, 'algo', 123.45, '', '2019-07-27 16:59:56', '2019-07-27 16:59:56'),
(25, 9, 'algo', 123.45, '', '2019-07-27 17:02:25', '2019-07-27 17:02:25'),
(26, 9, 'algo', 123.45, '', '2019-07-27 17:03:22', '2019-07-27 17:03:22'),
(27, 9, 'algo', 123.45, '', '2019-07-27 17:30:48', '2019-07-27 17:30:48'),
(28, 9, 'algo', 123.45, '', '2019-07-27 17:32:16', '2019-07-27 17:32:16'),
(29, 9, 'algo', 123.45, '', '2019-07-27 17:34:52', '2019-07-27 17:34:52'),
(30, 9, 'algo', 123.45, '', '2019-07-27 17:35:51', '2019-07-27 17:35:51'),
(31, 9, 'algo', 123.45, '', '2019-07-27 17:37:53', '2019-07-27 17:37:53'),
(32, 9, 'algo', 123.45, '', '2019-07-27 17:39:00', '2019-07-27 17:39:00'),
(33, 9, 'algo', 123.45, '', '2019-07-27 17:39:59', '2019-07-27 17:39:59'),
(34, 9, 'algo', 123.45, '', '2019-07-27 17:41:39', '2019-07-27 17:41:39'),
(36, 9, 'algo', 123.45, '', '2019-07-27 17:44:24', '2019-07-27 17:44:24'),
(37, 9, 'algo', 123.45, '', '2019-07-27 17:44:36', '2019-07-27 17:44:36'),
(38, 9, 'algo', 123.45, '', '2019-07-27 17:44:44', '2019-07-27 17:44:44'),
(39, 9, 'algo', 123.45, '', '2019-07-27 17:45:50', '2019-07-27 17:45:50'),
(40, 9, 'algo', 123.45, '', '2019-07-27 17:46:14', '2019-07-27 17:46:14'),
(41, 9, 'algo', 123.45, '', '2019-07-27 17:47:14', '2019-07-27 17:47:14'),
(42, 9, 'algo', 123.45, '', '2019-07-27 17:47:38', '2019-07-27 17:47:38'),
(43, 9, 'algo', 123.45, '', '2019-07-27 17:47:39', '2019-07-27 17:47:39'),
(44, 9, 'algo', 123.45, '', '2019-07-27 17:47:40', '2019-07-27 17:47:40'),
(45, 9, 'algo', 123.45, '', '2019-07-27 17:48:29', '2019-07-27 17:48:29'),
(46, 9, 'algo', 123.45, '', '2019-07-27 17:48:58', '2019-07-27 17:48:58'),
(47, 9, 'algo', 123.45, '', '2019-07-27 17:52:44', '2019-07-27 17:52:44'),
(48, 9, 'algo', 123.45, '', '2019-07-27 17:52:46', '2019-07-27 17:52:46'),
(49, 9, 'algo', 123.45, '', '2019-07-27 17:53:06', '2019-07-27 17:53:06'),
(50, 9, 'algo', 123.45, '', '2019-07-27 17:53:26', '2019-07-27 17:53:26'),
(51, 9, 'algo', 123.45, '', '2019-07-28 15:48:22', '2019-07-28 15:48:22'),
(52, 9, 'algo', 123.45, '', '2019-07-28 15:48:47', '2019-07-28 15:48:47'),
(53, 9, 'algo', 123.45, '', '2019-07-28 15:49:39', '2019-07-28 15:49:39'),
(54, 9, 'algo', 123.45, '', '2019-07-28 15:51:13', '2019-07-28 15:51:13'),
(55, 9, 'algo', 123.45, '', '2019-07-28 15:53:13', '2019-07-28 15:53:13'),
(56, 9, 'algo', 123.45, '', '2019-07-28 15:53:44', '2019-07-28 15:53:44'),
(57, 9, 'algo', 123.45, '', '2019-07-28 16:33:21', '2019-07-28 16:33:21'),
(58, 11, 'La compra en serio', 2323, 'efectivo', '2019-07-30 11:28:16', '2019-07-30 11:28:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `metodo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ruta` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`id`, `usuario`, `metodo`, `ruta`, `created_at`, `updated_at`) VALUES
(1, 'yo2', 'GET', 'compra', '2019-07-25 18:49:38', '2019-07-25 18:49:38'),
(2, 'yo2', 'POST', 'compra', '2019-07-25 18:49:59', '2019-07-25 18:49:59'),
(3, 'yo2', 'POST', 'compra', '2019-07-25 18:50:49', '2019-07-25 18:50:49'),
(4, 'yo2', 'POST', 'compra', '2019-07-25 18:51:20', '2019-07-25 18:51:20'),
(5, 'yo2', 'POST', 'compra', '2019-07-25 19:22:19', '2019-07-25 19:22:19'),
(6, 'yo2', 'POST', 'compra', '2019-07-25 19:25:44', '2019-07-25 19:25:44'),
(7, 'yo2', 'POST', 'compra', '2019-07-25 19:27:11', '2019-07-25 19:27:11'),
(8, 'yo2', 'POST', 'compra', '2019-07-25 19:27:27', '2019-07-25 19:27:27'),
(9, 'yo2', 'POST', 'compra', '2019-07-25 19:28:26', '2019-07-25 19:28:26'),
(10, 'yo2', 'POST', 'compra', '2019-07-25 19:28:51', '2019-07-25 19:28:51'),
(11, 'yo2', 'POST', 'compra', '2019-07-25 19:29:06', '2019-07-25 19:29:06'),
(12, 'yo2', 'POST', 'compra', '2019-07-25 19:30:25', '2019-07-25 19:30:25'),
(13, 'yo2', 'POST', 'compra', '2019-07-25 19:33:04', '2019-07-25 19:33:04'),
(14, 'yo2', 'POST', 'compra', '2019-07-25 19:33:17', '2019-07-25 19:33:17'),
(15, 'yo2', 'POST', 'compra', '2019-07-25 19:33:36', '2019-07-25 19:33:36'),
(16, 'yo2', 'POST', 'compra', '2019-07-25 19:33:52', '2019-07-25 19:33:52'),
(17, 'yo2', 'POST', 'compra', '2019-07-25 19:34:29', '2019-07-25 19:34:29'),
(18, 'yo2', 'POST', 'compra', '2019-07-25 19:34:39', '2019-07-25 19:34:39'),
(19, 'yo2', 'POST', 'compra', '2019-07-25 19:35:01', '2019-07-25 19:35:01'),
(20, 'yo2', 'POST', 'compra', '2019-07-25 19:35:03', '2019-07-25 19:35:03'),
(21, 'yo2', 'POST', 'compra', '2019-07-25 19:35:16', '2019-07-25 19:35:16'),
(22, 'yo2', 'POST', 'compra', '2019-07-25 19:35:52', '2019-07-25 19:35:52'),
(23, 'yo2', 'POST', 'compra', '2019-07-25 19:36:20', '2019-07-25 19:36:20'),
(24, 'yo2', 'POST', 'compra', '2019-07-25 19:36:33', '2019-07-25 19:36:33'),
(25, 'yo2', 'POST', 'compra', '2019-07-25 19:38:10', '2019-07-25 19:38:10'),
(26, 'yo2', 'POST', 'compra', '2019-07-25 19:38:14', '2019-07-25 19:38:14'),
(27, 'yo2', 'POST', 'compra', '2019-07-25 19:38:40', '2019-07-25 19:38:40'),
(28, '', 'POST', 'login', '2019-07-26 13:30:37', '2019-07-26 13:30:37'),
(29, '', 'POST', 'login', '2019-07-26 13:30:51', '2019-07-26 13:30:51'),
(30, '', 'POST', 'login', '2019-07-26 13:31:14', '2019-07-26 13:31:14'),
(31, '', 'POST', 'login', '2019-07-26 13:32:18', '2019-07-26 13:32:18'),
(32, 'yo23', 'GET', 'compra', '2019-07-26 13:32:51', '2019-07-26 13:32:51'),
(33, 'yo23', 'GET', 'compra', '2019-07-26 13:34:26', '2019-07-26 13:34:26'),
(34, 'yo23', 'GET', 'compra', '2019-07-26 13:35:01', '2019-07-26 13:35:01'),
(35, 'yo23', 'GET', 'compra', '2019-07-26 13:35:29', '2019-07-26 13:35:29'),
(36, 'yo23', 'GET', 'compra', '2019-07-26 13:35:58', '2019-07-26 13:35:58'),
(37, 'yo23', 'GET', 'compra', '2019-07-26 13:38:52', '2019-07-26 13:38:52'),
(38, 'yo23', 'GET', 'compra', '2019-07-26 13:39:38', '2019-07-26 13:39:38'),
(39, 'yo23', 'GET', 'compra', '2019-07-26 13:40:37', '2019-07-26 13:40:37'),
(40, 'yo23', 'GET', 'compra', '2019-07-26 13:40:42', '2019-07-26 13:40:42'),
(41, 'yo23', 'GET', 'compra', '2019-07-26 13:42:06', '2019-07-26 13:42:06'),
(42, 'yo23', 'GET', 'compra', '2019-07-26 13:42:31', '2019-07-26 13:42:31'),
(43, 'yo23', 'GET', 'compra', '2019-07-26 13:43:06', '2019-07-26 13:43:06'),
(44, 'yo23', 'GET', 'compra', '2019-07-26 13:44:57', '2019-07-26 13:44:57'),
(45, 'yo23', 'GET', 'compra', '2019-07-26 13:45:36', '2019-07-26 13:45:36'),
(46, 'yo23', 'GET', 'compra', '2019-07-26 13:48:38', '2019-07-26 13:48:38'),
(47, 'yo23', 'GET', 'compra', '2019-07-26 13:49:28', '2019-07-26 13:49:28'),
(48, 'yo23', 'GET', 'compra', '2019-07-26 13:49:44', '2019-07-26 13:49:44'),
(49, 'yo23', 'GET', 'compra', '2019-07-26 13:51:46', '2019-07-26 13:51:46'),
(50, 'yo2', 'GET', 'compra', '2019-07-26 13:53:59', '2019-07-26 13:53:59'),
(51, 'yo2', 'GET', 'compra', '2019-07-26 13:54:14', '2019-07-26 13:54:14'),
(52, 'yo2', 'GET', 'compra', '2019-07-26 13:54:36', '2019-07-26 13:54:36'),
(53, 'yo2', 'GET', 'compra', '2019-07-26 13:55:16', '2019-07-26 13:55:16'),
(54, '', 'GET', 'compra', '2019-07-26 13:55:55', '2019-07-26 13:55:55'),
(55, 'yo2', 'GET', 'compra', '2019-07-26 13:57:28', '2019-07-26 13:57:28'),
(56, 'yo2', 'GET', 'compra', '2019-07-26 13:58:35', '2019-07-26 13:58:35'),
(57, 'yo2', 'GET', 'compra', '2019-07-26 13:59:03', '2019-07-26 13:59:03'),
(58, 'yo2', 'GET', 'compra', '2019-07-26 13:59:21', '2019-07-26 13:59:21'),
(59, 'yo2', 'POST', 'compra', '2019-07-26 14:24:31', '2019-07-26 14:24:31'),
(60, 'yo2', 'GET', 'compra', '2019-07-26 14:24:36', '2019-07-26 14:24:36'),
(61, 'yo2', 'GET', 'compra', '2019-07-26 14:25:52', '2019-07-26 14:25:52'),
(62, 'yo2', 'GET', 'compra', '2019-07-26 14:26:55', '2019-07-26 14:26:55'),
(63, 'yo2', 'GET', 'compra', '2019-07-26 14:42:32', '2019-07-26 14:42:32'),
(64, 'yo2', 'POST', 'compra', '2019-07-26 14:42:39', '2019-07-26 14:42:39'),
(65, 'yo2', 'POST', 'compra', '2019-07-26 14:43:37', '2019-07-26 14:43:37'),
(66, 'yo2', 'POST', 'compra', '2019-07-26 14:44:02', '2019-07-26 14:44:02'),
(67, 'yo2', 'POST', 'compra', '2019-07-26 14:45:34', '2019-07-26 14:45:34'),
(68, 'yo2', 'POST', 'compra', '2019-07-26 14:46:09', '2019-07-26 14:46:09'),
(69, 'yo2', 'POST', 'compra', '2019-07-26 14:50:07', '2019-07-26 14:50:07'),
(70, 'yo2', 'POST', 'compra', '2019-07-26 14:50:36', '2019-07-26 14:50:36'),
(71, 'yo2', 'POST', 'compra', '2019-07-26 14:52:23', '2019-07-26 14:52:23'),
(72, 'yo2', 'POST', 'compra', '2019-07-27 16:59:56', '2019-07-27 16:59:56'),
(73, 'yo2', 'POST', 'compra', '2019-07-27 17:02:25', '2019-07-27 17:02:25'),
(74, 'yo2', 'POST', 'compra', '2019-07-27 17:03:22', '2019-07-27 17:03:22'),
(75, 'yo2', 'POST', 'compra', '2019-07-27 17:30:48', '2019-07-27 17:30:48'),
(76, 'yo2', 'POST', 'compra', '2019-07-27 17:32:16', '2019-07-27 17:32:16'),
(77, 'yo2', 'POST', 'compra', '2019-07-27 17:34:52', '2019-07-27 17:34:52'),
(78, 'yo2', 'POST', 'compra', '2019-07-27 17:35:51', '2019-07-27 17:35:51'),
(79, 'yo2', 'POST', 'compra', '2019-07-27 17:37:53', '2019-07-27 17:37:53'),
(80, 'yo2', 'POST', 'compra', '2019-07-27 17:38:21', '2019-07-27 17:38:21'),
(81, 'yo2', 'POST', 'compra', '2019-07-27 17:39:00', '2019-07-27 17:39:00'),
(82, 'yo2', 'POST', 'compra', '2019-07-27 17:39:59', '2019-07-27 17:39:59'),
(83, 'yo2', 'POST', 'compra', '2019-07-27 17:41:39', '2019-07-27 17:41:39'),
(84, 'yo2', 'POST', 'compra', '2019-07-27 17:42:02', '2019-07-27 17:42:02'),
(85, 'yo2', 'POST', 'compra', '2019-07-27 17:44:24', '2019-07-27 17:44:24'),
(86, 'yo2', 'POST', 'compra', '2019-07-27 17:44:36', '2019-07-27 17:44:36'),
(87, 'yo2', 'POST', 'compra', '2019-07-27 17:44:44', '2019-07-27 17:44:44'),
(88, 'yo2', 'POST', 'compra', '2019-07-27 17:45:34', '2019-07-27 17:45:34'),
(89, 'yo2', 'POST', 'compra', '2019-07-27 17:45:50', '2019-07-27 17:45:50'),
(90, 'yo2', 'POST', 'compra', '2019-07-27 17:46:14', '2019-07-27 17:46:14'),
(91, 'yo2', 'POST', 'compra', '2019-07-27 17:46:41', '2019-07-27 17:46:41'),
(92, 'yo2', 'POST', 'compra', '2019-07-27 17:47:00', '2019-07-27 17:47:00'),
(93, 'yo2', 'POST', 'compra', '2019-07-27 17:47:14', '2019-07-27 17:47:14'),
(94, 'yo2', 'POST', 'compra', '2019-07-27 17:47:38', '2019-07-27 17:47:38'),
(95, 'yo2', 'POST', 'compra', '2019-07-27 17:47:39', '2019-07-27 17:47:39'),
(96, 'yo2', 'POST', 'compra', '2019-07-27 17:47:40', '2019-07-27 17:47:40'),
(97, 'yo2', 'POST', 'compra', '2019-07-27 17:48:29', '2019-07-27 17:48:29'),
(98, 'yo2', 'POST', 'compra', '2019-07-27 17:48:58', '2019-07-27 17:48:58'),
(99, 'yo2', 'POST', 'compra', '2019-07-27 17:52:44', '2019-07-27 17:52:44'),
(100, 'yo2', 'POST', 'compra', '2019-07-27 17:52:46', '2019-07-27 17:52:46'),
(101, 'yo2', 'POST', 'compra', '2019-07-27 17:53:05', '2019-07-27 17:53:05'),
(102, 'yo2', 'POST', 'compra', '2019-07-27 17:53:26', '2019-07-27 17:53:26'),
(103, 'yo2', 'POST', 'compra', '2019-07-27 17:59:40', '2019-07-27 17:59:40'),
(104, 'yo2', 'POST', 'compra', '2019-07-27 18:01:25', '2019-07-27 18:01:25'),
(105, 'yo2', 'POST', 'compra', '2019-07-27 18:01:39', '2019-07-27 18:01:39'),
(106, 'yo2', 'POST', 'compra', '2019-07-27 18:03:24', '2019-07-27 18:03:24'),
(107, 'yo2', 'POST', 'compra', '2019-07-27 18:05:06', '2019-07-27 18:05:06'),
(108, 'yo2', 'POST', 'compra', '2019-07-27 18:09:02', '2019-07-27 18:09:02'),
(109, 'yo2', 'POST', 'compra', '2019-07-28 15:36:42', '2019-07-28 15:36:42'),
(110, 'yo2', 'POST', 'compra', '2019-07-28 15:39:09', '2019-07-28 15:39:09'),
(111, 'yo2', 'POST', 'compra', '2019-07-28 15:45:07', '2019-07-28 15:45:07'),
(112, 'yo2', 'POST', 'compra', '2019-07-28 15:45:32', '2019-07-28 15:45:32'),
(113, 'yo2', 'POST', 'compra', '2019-07-28 15:46:21', '2019-07-28 15:46:21'),
(114, 'yo2', 'POST', 'compra', '2019-07-28 15:46:38', '2019-07-28 15:46:38'),
(115, 'yo2', 'POST', 'compra', '2019-07-28 15:48:02', '2019-07-28 15:48:02'),
(116, 'yo2', 'POST', 'compra', '2019-07-28 15:48:22', '2019-07-28 15:48:22'),
(117, 'yo2', 'POST', 'compra', '2019-07-28 15:48:47', '2019-07-28 15:48:47'),
(118, 'yo2', 'POST', 'compra', '2019-07-28 15:49:39', '2019-07-28 15:49:39'),
(119, 'yo2', 'POST', 'compra', '2019-07-28 15:50:35', '2019-07-28 15:50:35'),
(120, 'yo2', 'POST', 'compra', '2019-07-28 15:51:13', '2019-07-28 15:51:13'),
(121, 'yo2', 'POST', 'compra', '2019-07-28 15:53:13', '2019-07-28 15:53:13'),
(122, 'yo2', 'POST', 'compra', '2019-07-28 15:53:44', '2019-07-28 15:53:44'),
(123, '', 'PUT', 'usuario', '2019-07-28 16:06:19', '2019-07-28 16:06:19'),
(124, '', 'PUT', 'usuario', '2019-07-28 16:07:14', '2019-07-28 16:07:14'),
(125, '', 'PUT', 'usuario', '2019-07-28 16:07:50', '2019-07-28 16:07:50'),
(126, '', 'PUT', 'usuario', '2019-07-28 16:08:27', '2019-07-28 16:08:27'),
(127, '', 'PUT', 'usuario', '2019-07-28 16:11:06', '2019-07-28 16:11:06'),
(128, '', 'PUT', 'usuario', '2019-07-28 16:12:06', '2019-07-28 16:12:06'),
(129, '', 'PUT', 'usuario', '2019-07-28 16:13:43', '2019-07-28 16:13:43'),
(130, '', 'PUT', 'usuario', '2019-07-28 16:14:55', '2019-07-28 16:14:55'),
(131, '', 'PUT', 'usuario', '2019-07-28 16:15:38', '2019-07-28 16:15:38'),
(132, '', 'PUT', 'usuario', '2019-07-28 16:15:57', '2019-07-28 16:15:57'),
(133, '', 'PUT', 'usuario', '2019-07-28 16:17:33', '2019-07-28 16:17:33'),
(134, '', 'PUT', 'usuario', '2019-07-28 16:18:51', '2019-07-28 16:18:51'),
(135, '', 'POST', 'usuario', '2019-07-28 16:19:04', '2019-07-28 16:19:04'),
(136, '', 'POST', 'usuario', '2019-07-28 16:19:10', '2019-07-28 16:19:10'),
(137, '', 'PUT', 'usuario', '2019-07-28 16:19:28', '2019-07-28 16:19:28'),
(138, '', 'PUT', 'usuario', '2019-07-28 16:21:00', '2019-07-28 16:21:00'),
(139, '', 'PUT', 'usuario', '2019-07-28 16:21:06', '2019-07-28 16:21:06'),
(140, '', 'PUT', 'usuario', '2019-07-28 16:21:31', '2019-07-28 16:21:31'),
(141, '', 'PUT', 'usuario', '2019-07-28 16:21:57', '2019-07-28 16:21:57'),
(142, '', 'PUT', 'usuario', '2019-07-28 16:23:26', '2019-07-28 16:23:26'),
(143, '', 'PUT', 'usuario', '2019-07-28 16:25:31', '2019-07-28 16:25:31'),
(144, 'yo23', 'GET', 'compra', '2019-07-28 16:30:50', '2019-07-28 16:30:50'),
(145, 'yo23', 'GET', 'compra', '2019-07-28 16:31:40', '2019-07-28 16:31:40'),
(146, 'yo2', 'POST', 'compra', '2019-07-28 16:33:21', '2019-07-28 16:33:21'),
(147, 'yo23', 'GET', 'compra', '2019-07-28 16:33:40', '2019-07-28 16:33:40'),
(148, '', 'POST', 'login', '2019-07-28 16:33:51', '2019-07-28 16:33:51'),
(149, '', 'POST', 'login', '2019-07-28 16:34:14', '2019-07-28 16:34:14'),
(150, '', 'POST', 'login', '2019-07-28 16:34:20', '2019-07-28 16:34:20'),
(151, 'yo', 'GET', 'compra', '2019-07-28 16:34:33', '2019-07-28 16:34:33'),
(152, 'yo', 'GET', 'compra', '2019-07-28 16:43:39', '2019-07-28 16:43:39'),
(153, 'yo', 'GET', 'compra', '2019-07-28 16:44:06', '2019-07-28 16:44:06'),
(154, 'yo', 'GET', 'compra', '2019-07-28 16:44:15', '2019-07-28 16:44:15'),
(155, 'yo', 'GET', 'compra', '2019-07-28 16:44:36', '2019-07-28 16:44:36'),
(156, '', 'GET', 'logs', '2019-07-28 16:55:10', '2019-07-28 16:55:10'),
(157, '', 'GET', 'logs', '2019-07-28 16:55:44', '2019-07-28 16:55:44'),
(158, '', 'GET', 'logs', '2019-07-28 16:56:37', '2019-07-28 16:56:37'),
(159, '', 'GET', 'logs', '2019-07-28 16:56:51', '2019-07-28 16:56:51'),
(160, '', 'GET', 'logs', '2019-07-28 16:57:34', '2019-07-28 16:57:34'),
(161, '', 'GET', 'logs', '2019-07-28 16:58:56', '2019-07-28 16:58:56'),
(162, '', 'GET', 'logs', '2019-07-28 17:00:02', '2019-07-28 17:00:02'),
(163, '', 'GET', 'logs', '2019-07-28 17:01:01', '2019-07-28 17:01:01'),
(164, '', 'POST', 'logs', '2019-07-28 17:01:15', '2019-07-28 17:01:15'),
(165, '', 'PUT', 'logs', '2019-07-28 17:01:18', '2019-07-28 17:01:18'),
(166, '', 'DELETE', 'logs', '2019-07-28 17:01:24', '2019-07-28 17:01:24'),
(167, '', 'PATCH', 'logs', '2019-07-28 18:24:12', '2019-07-28 18:24:12'),
(168, '', 'GET', 'logs', '2019-07-28 18:24:17', '2019-07-28 18:24:17'),
(169, '', 'POST', 'logs', '2019-07-28 18:24:27', '2019-07-28 18:24:27'),
(170, 'yo2', 'DELETE', 'compra', '2019-07-28 18:28:24', '2019-07-28 18:28:24'),
(171, 'yo2', 'DELETE', 'compra', '2019-07-28 18:30:20', '2019-07-28 18:30:20'),
(172, 'yo2', 'DELETE', 'compra', '2019-07-28 18:31:17', '2019-07-28 18:31:17'),
(173, 'yo2', 'DELETE', 'compra', '2019-07-28 18:32:27', '2019-07-28 18:32:27'),
(174, 'yo2', 'DELETE', 'compra', '2019-07-28 18:32:58', '2019-07-28 18:32:58'),
(175, 'yo2', 'GET', 'compra/porusuario', '2019-07-28 18:37:12', '2019-07-28 18:37:12'),
(176, 'yo2', 'GET', 'compra/porusuario', '2019-07-28 18:37:41', '2019-07-28 18:37:41'),
(177, 'yo2', 'GET', 'porusuario', '2019-07-28 18:38:34', '2019-07-28 18:38:34'),
(178, 'yo2', 'GET', 'porusuario', '2019-07-28 18:39:06', '2019-07-28 18:39:06'),
(179, 'yo2', 'GET', 'porusuario', '2019-07-28 18:39:35', '2019-07-28 18:39:35'),
(180, 'yo2', 'GET', 'porusuario', '2019-07-28 18:41:10', '2019-07-28 18:41:10'),
(181, 'yo2', 'GET', 'porusuario', '2019-07-28 18:41:45', '2019-07-28 18:41:45'),
(182, 'yo2', 'GET', 'porusuario', '2019-07-28 18:45:02', '2019-07-28 18:45:02'),
(183, 'yo2', 'GET', 'porusuario', '2019-07-28 18:45:43', '2019-07-28 18:45:43'),
(184, 'yo2', 'GET', 'porusuario', '2019-07-28 18:46:08', '2019-07-28 18:46:08'),
(185, 'yo2', 'GET', 'porusuario', '2019-07-28 18:46:36', '2019-07-28 18:46:36'),
(186, 'yo2', 'GET', 'porusuario', '2019-07-28 18:46:41', '2019-07-28 18:46:41'),
(187, 'yo2', 'GET', 'filtrado', '2019-07-28 18:59:29', '2019-07-28 18:59:29'),
(188, 'yo2', 'GET', 'filtrado', '2019-07-28 18:59:33', '2019-07-28 18:59:33'),
(189, 'yo2', 'GET', 'filtrado', '2019-07-28 19:00:18', '2019-07-28 19:00:18'),
(190, 'yo2', 'GET', 'filtrado', '2019-07-28 19:00:45', '2019-07-28 19:00:45'),
(191, 'yo2', 'GET', 'filtrado', '2019-07-28 19:00:48', '2019-07-28 19:00:48'),
(192, 'yo2', 'GET', 'filtrado', '2019-07-28 19:01:38', '2019-07-28 19:01:38'),
(193, 'yo2', 'GET', 'filtrado', '2019-07-28 19:01:39', '2019-07-28 19:01:39'),
(194, 'yo2', 'GET', 'filtrado', '2019-07-28 19:01:55', '2019-07-28 19:01:55'),
(195, '', 'POST', 'usuario', '2019-07-30 11:23:08', '2019-07-30 11:23:08'),
(196, '', 'POST', 'usuario', '2019-07-30 11:23:22', '2019-07-30 11:23:22'),
(197, '', 'POST', 'login', '2019-07-30 11:23:34', '2019-07-30 11:23:34'),
(198, '', 'GET', 'login', '2019-07-30 11:23:58', '2019-07-30 11:23:58'),
(199, '', 'GET', 'usuario', '2019-07-30 11:24:05', '2019-07-30 11:24:05'),
(200, 'santiago', 'GET', 'usuario', '2019-07-30 11:25:40', '2019-07-30 11:25:40'),
(201, '', 'POST', 'login', '2019-07-30 11:26:15', '2019-07-30 11:26:15'),
(202, 'yo', 'GET', 'usuario', '2019-07-30 11:26:53', '2019-07-30 11:26:53'),
(203, 'yo', 'POST', 'login', '2019-07-30 11:27:39', '2019-07-30 11:27:39'),
(204, 'santiago', 'POST', 'compra', '2019-07-30 11:27:52', '2019-07-30 11:27:52'),
(205, 'santiago', 'POST', 'compra', '2019-07-30 11:28:16', '2019-07-30 11:28:16'),
(206, 'santiago', 'GET', 'compra', '2019-07-30 11:28:26', '2019-07-30 11:28:26'),
(207, 'yo', 'GET', 'compra', '2019-07-30 11:29:54', '2019-07-30 11:29:54'),
(208, '', 'PUT', 'usuario', '2019-07-30 11:30:49', '2019-07-30 11:30:49'),
(209, 'yo2', 'GET', 'logs', '2019-07-30 11:32:09', '2019-07-30 11:32:09'),
(210, 'yo2', 'POST', 'logs', '2019-07-30 11:32:14', '2019-07-30 11:32:14'),
(211, 'yo2', 'PUT', 'logs', '2019-07-30 11:32:27', '2019-07-30 11:32:27'),
(212, 'yo2', 'DELETE', 'logs', '2019-07-30 11:32:35', '2019-07-30 11:32:35'),
(213, 'yo', 'DELETE', 'compra', '2019-07-30 11:33:18', '2019-07-30 11:33:18'),
(214, 'yo', 'DELETE', 'compra', '2019-07-30 11:33:31', '2019-07-30 11:33:31'),
(215, 'yo', 'GET', 'filtrado', '2019-07-30 11:34:56', '2019-07-30 11:34:56'),
(216, 'yo', 'GET', 'filtrado', '2019-07-30 11:35:38', '2019-07-30 11:35:38'),
(217, 'yo', 'GET', 'filtrado', '2019-07-30 11:35:41', '2019-07-30 11:35:41'),
(218, 'yo', 'GET', 'filtrado', '2019-07-30 11:36:24', '2019-07-30 11:36:24'),
(219, 'yo', 'GET', 'filtrado', '2019-07-30 11:36:53', '2019-07-30 11:36:53'),
(220, 'yo', 'GET', 'filtrado', '2019-07-30 11:37:02', '2019-07-30 11:37:02'),
(221, 'yo', 'GET', 'filtrado', '2019-07-30 11:37:09', '2019-07-30 11:37:09'),
(222, 'yo', 'GET', 'filtrado', '2019-07-30 11:37:25', '2019-07-30 11:37:25'),
(223, 'yo', 'GET', 'filtrado', '2019-07-30 11:37:53', '2019-07-30 11:37:53'),
(224, 'yo', 'GET', 'filtrado', '2019-07-30 11:37:57', '2019-07-30 11:37:57'),
(225, 'yo', 'GET', 'filtrado', '2019-07-30 11:38:24', '2019-07-30 11:38:24'),
(226, 'yo', 'GET', 'filtrado', '2019-07-30 11:38:36', '2019-07-30 11:38:36'),
(227, 'yo', 'GET', 'filtrado', '2019-07-30 11:38:59', '2019-07-30 11:38:59'),
(228, 'yo', 'GET', 'filtrado', '2019-07-30 11:39:11', '2019-07-30 11:39:11'),
(229, 'yo', 'GET', 'filtrado', '2019-07-30 11:39:44', '2019-07-30 11:39:44'),
(230, 'yo', 'GET', 'filtrado', '2019-07-30 11:39:47', '2019-07-30 11:39:47'),
(231, 'yo', 'GET', 'filtrado', '2019-07-30 11:40:11', '2019-07-30 11:40:11'),
(232, 'yo', 'GET', 'filtrado', '2019-07-30 11:40:13', '2019-07-30 11:40:13'),
(233, 'yo', 'GET', 'filtrado', '2019-07-30 11:40:31', '2019-07-30 11:40:31'),
(234, 'yo', 'GET', 'filtrado', '2019-07-30 11:40:46', '2019-07-30 11:40:46'),
(235, 'yo', 'GET', 'filtrado', '2019-07-30 11:40:47', '2019-07-30 11:40:47'),
(236, 'yo', 'GET', 'filtrado', '2019-07-30 11:41:04', '2019-07-30 11:41:04'),
(237, 'yo', 'GET', 'filtrado', '2019-07-30 11:41:49', '2019-07-30 11:41:49'),
(238, 'yo', 'GET', 'filtrado', '2019-07-30 11:42:20', '2019-07-30 11:42:20'),
(239, 'yo', 'GET', 'filtrado', '2019-07-30 11:42:41', '2019-07-30 11:42:41'),
(240, 'yo', 'GET', 'filtrado', '2019-07-30 11:42:54', '2019-07-30 11:42:54'),
(241, 'yo', 'GET', 'filtrado', '2019-07-30 11:43:00', '2019-07-30 11:43:00'),
(242, 'yo', 'GET', 'filtrado', '2019-07-30 11:43:08', '2019-07-30 11:43:08'),
(243, 'yo', 'GET', 'filtrado', '2019-07-30 11:43:15', '2019-07-30 11:43:15'),
(244, 'yo', 'GET', 'filtrado', '2019-07-30 11:43:35', '2019-07-30 11:43:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(257) COLLATE utf8_spanish_ci NOT NULL,
  `sexo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `perfil` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `clave`, `sexo`, `perfil`, `created_at`, `updated_at`) VALUES
(8, 'yo', 'c133cf8c40c407b3e1df8fd9c006a74f6f1d7c0e3e7a7408799c9ed2d7a6639e', 'masculino', 'administrador', '2019-07-24 17:12:38', '2019-07-24 17:12:38'),
(9, 'yo2', 'c133cf8c40c407b3e1df8fd9c006a74f6f1d7c0e3e7a7408799c9ed2d7a6639e', 'masculino', 'cliente', '2019-07-24 18:24:16', '2019-07-28 16:25:31'),
(10, 'yo23', '2c1274c45d4c33c99fe43cd7235c603840a7d540626cb954dd00e023f67596d3', 'masculino', 'cliente', '2019-07-24 19:51:04', '2019-07-24 19:51:04'),
(11, 'santiago', '49faaade493be8b6b6164ee67f7e4d101812a5dda970d6ca693dda8b8cf82e4b', 'masculino', 'administrador', '2019-07-30 11:23:22', '2019-07-30 11:30:49');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
