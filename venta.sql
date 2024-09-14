-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2024 a las 13:28:17
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
-- Base de datos: `venta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billetesmonedas`
--

CREATE TABLE `billetesmonedas` (
  `idbillmo` int(15) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `codcaja` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `billetesmonedas`
--

INSERT INTO `billetesmonedas` (`idbillmo`, `descripcion`, `cantidad`, `codcaja`) VALUES
(1, '200', 0, 'tCLxX8'),
(2, '100', 0, 'tCLxX8'),
(3, '50', 1, 'tCLxX8'),
(4, '20', 1, 'tCLxX8'),
(5, '10', 2, 'tCLxX8'),
(6, '5', 2, 'tCLxX8'),
(7, '1', 0, 'tCLxX8'),
(8, '0.50', 0, 'tCLxX8'),
(9, '0.25', 0, 'tCLxX8'),
(10, '200', 0, '2oCGWM'),
(11, '100', 0, '2oCGWM'),
(12, '50', 1, '2oCGWM'),
(13, '20', 0, '2oCGWM'),
(14, '10', 0, '2oCGWM'),
(15, '5', 0, '2oCGWM'),
(16, '1', 0, '2oCGWM'),
(17, '0.50', 0, '2oCGWM'),
(18, '0.25', 0, '2oCGWM'),
(19, '200', 1, '46LQYN'),
(20, '100', 1, '46LQYN'),
(21, '50', 0, '46LQYN'),
(22, '20', 2, '46LQYN'),
(23, '10', 0, '46LQYN'),
(24, '5', 1, '46LQYN'),
(25, '1', 3, '46LQYN'),
(26, '0.50', 0, '46LQYN'),
(27, '0.25', 0, '46LQYN'),
(28, '200', 0, 'fG3Rsj'),
(29, '100', 0, 'fG3Rsj'),
(30, '50', 0, 'fG3Rsj'),
(31, '20', 1, 'fG3Rsj'),
(32, '10', 2, 'fG3Rsj'),
(33, '5', 1, 'fG3Rsj'),
(34, '1', 4, 'fG3Rsj'),
(35, '0.50', 0, 'fG3Rsj'),
(36, '0.25', 0, 'fG3Rsj'),
(37, '200', 0, 'JdDhRd'),
(38, '100', 1, 'JdDhRd'),
(39, '50', 0, 'JdDhRd'),
(40, '20', 0, 'JdDhRd'),
(41, '10', 1, 'JdDhRd'),
(42, '5', 1, 'JdDhRd'),
(43, '1', 4, 'JdDhRd'),
(44, '0.50', 0, 'JdDhRd'),
(45, '0.25', 0, 'JdDhRd'),
(46, '200', 0, 'pFgUnP'),
(47, '100', 1, 'pFgUnP'),
(48, '50', 0, 'pFgUnP'),
(49, '20', 0, 'pFgUnP'),
(50, '10', 0, 'pFgUnP'),
(51, '5', 0, 'pFgUnP'),
(52, '1', 0, 'pFgUnP'),
(53, '0.50', 0, 'pFgUnP'),
(54, '0.25', 0, 'pFgUnP'),
(55, '200', 0, '4dvfD5'),
(56, '100', 1, '4dvfD5'),
(57, '50', 0, '4dvfD5'),
(58, '20', 0, '4dvfD5'),
(59, '10', 0, '4dvfD5'),
(60, '5', 0, '4dvfD5'),
(61, '1', 0, '4dvfD5'),
(62, '0.50', 0, '4dvfD5'),
(63, '0.25', 0, '4dvfD5'),
(64, '200', 0, 'TkmALP'),
(65, '100', 1, 'TkmALP'),
(66, '50', 0, 'TkmALP'),
(67, '20', 0, 'TkmALP'),
(68, '10', 0, 'TkmALP'),
(69, '5', 0, 'TkmALP'),
(70, '1', 0, 'TkmALP'),
(71, '0.50', 0, 'TkmALP'),
(72, '0.25', 0, 'TkmALP'),
(73, '200', 0, 'RNGm5G'),
(74, '100', 0, 'RNGm5G'),
(75, '50', 1, 'RNGm5G'),
(76, '20', 1, 'RNGm5G'),
(77, '10', 1, 'RNGm5G'),
(78, '5', 1, 'RNGm5G'),
(79, '1', 5, 'RNGm5G'),
(80, '0.50', 20, 'RNGm5G'),
(81, '0.25', 0, 'RNGm5G'),
(82, '200', 0, 'KrV3j2'),
(83, '100', 1, 'KrV3j2'),
(84, '50', 0, 'KrV3j2'),
(85, '20', 0, 'KrV3j2'),
(86, '10', 0, 'KrV3j2'),
(87, '5', 0, 'KrV3j2'),
(88, '1', 0, 'KrV3j2'),
(89, '0.50', 0, 'KrV3j2'),
(90, '0.25', 0, 'KrV3j2'),
(91, '200', 0, '3n5XRu'),
(92, '100', 1, '3n5XRu'),
(93, '50', 0, '3n5XRu'),
(94, '20', 0, '3n5XRu'),
(95, '10', 0, '3n5XRu'),
(96, '5', 0, '3n5XRu'),
(97, '1', 0, '3n5XRu'),
(98, '0.50', 0, '3n5XRu'),
(99, '0.25', 0, '3n5XRu'),
(100, '200', 0, 'B3v2E8'),
(101, '100', 0, 'B3v2E8'),
(102, '50', 0, 'B3v2E8'),
(103, '20', 0, 'B3v2E8'),
(104, '10', 0, 'B3v2E8'),
(105, '5', 0, 'B3v2E8'),
(106, '1', 0, 'B3v2E8'),
(107, '0.50', 1, 'B3v2E8'),
(108, '0.25', 2, 'B3v2E8'),
(109, '200', 0, 'hWDqPl'),
(110, '100', 0, 'hWDqPl'),
(111, '50', 0, 'hWDqPl'),
(112, '20', 0, 'hWDqPl'),
(113, '10', 0, 'hWDqPl'),
(114, '5', 0, 'hWDqPl'),
(115, '1', 1, 'hWDqPl'),
(116, '0.50', 0, 'hWDqPl'),
(117, '0.25', 0, 'hWDqPl'),
(118, '200', 0, '6oEc1t'),
(119, '100', 1, '6oEc1t'),
(120, '50', 0, '6oEc1t'),
(121, '20', 0, '6oEc1t'),
(122, '10', 0, '6oEc1t'),
(123, '5', 0, '6oEc1t'),
(124, '1', 0, '6oEc1t'),
(125, '0.50', 0, '6oEc1t'),
(126, '0.25', 0, '6oEc1t'),
(127, '200', 0, '3IT7NM'),
(128, '100', 0, '3IT7NM'),
(129, '50', 2, '3IT7NM'),
(130, '20', 0, '3IT7NM'),
(131, '10', 0, '3IT7NM'),
(132, '5', 0, '3IT7NM'),
(133, '1', 0, '3IT7NM'),
(134, '0.50', 0, '3IT7NM'),
(135, '0.25', 0, '3IT7NM'),
(136, '200', 0, 'VGlDwM'),
(137, '100', 0, 'VGlDwM'),
(138, '50', 1, 'VGlDwM'),
(139, '20', 2, 'VGlDwM'),
(140, '10', 0, 'VGlDwM'),
(141, '5', 0, 'VGlDwM'),
(142, '1', 2, 'VGlDwM'),
(143, '0.50', 1, 'VGlDwM'),
(144, '0.25', 0, 'VGlDwM'),
(145, '0.01', 40, 'VGlDwM'),
(146, '200', 0, 'MSxpw9'),
(147, '100', 1, 'MSxpw9'),
(148, '50', 0, 'MSxpw9'),
(149, '20', 0, 'MSxpw9'),
(150, '10', 1, 'MSxpw9'),
(151, '5', 1, 'MSxpw9'),
(152, '1', 4, 'MSxpw9'),
(153, '0.50', 0, 'MSxpw9'),
(154, '0.25', 0, 'MSxpw9'),
(155, '0.01', 0, 'MSxpw9'),
(156, '200', 0, 'J9Oxrt'),
(157, '100', 1, 'J9Oxrt'),
(158, '50', 0, 'J9Oxrt'),
(159, '20', 1, 'J9Oxrt'),
(160, '10', 1, 'J9Oxrt'),
(161, '5', 1, 'J9Oxrt'),
(162, '1', 1, 'J9Oxrt'),
(163, '0.50', 0, 'J9Oxrt'),
(164, '0.25', 0, 'J9Oxrt'),
(165, '0.01', 90, 'J9Oxrt'),
(166, '200', 0, 'oSXbD4'),
(167, '100', 0, 'oSXbD4'),
(168, '50', 0, 'oSXbD4'),
(169, '20', 0, 'oSXbD4'),
(170, '10', 0, 'oSXbD4'),
(171, '5', 0, 'oSXbD4'),
(172, '1', 123456, 'oSXbD4'),
(173, '0.50', 0, 'oSXbD4'),
(174, '0.25', 0, 'oSXbD4'),
(175, '0.01', 0, 'oSXbD4'),
(176, '200', 0, 'g9Lkdu'),
(177, '100', 1, 'g9Lkdu'),
(178, '50', 0, 'g9Lkdu'),
(179, '20', 0, 'g9Lkdu'),
(180, '10', 0, 'g9Lkdu'),
(181, '5', 0, 'g9Lkdu'),
(182, '1', 0, 'g9Lkdu'),
(183, '0.50', 0, 'g9Lkdu'),
(184, '0.25', 0, 'g9Lkdu'),
(185, '0.01', 0, 'g9Lkdu'),
(186, '200', 0, 'Y3BJcK'),
(187, '100', 0, 'Y3BJcK'),
(188, '50', 0, 'Y3BJcK'),
(189, '20', 0, 'Y3BJcK'),
(190, '10', 0, 'Y3BJcK'),
(191, '5', 0, 'Y3BJcK'),
(192, '1', 1, 'Y3BJcK'),
(193, '0.50', 0, 'Y3BJcK'),
(194, '0.25', 0, 'Y3BJcK'),
(195, '0.01', 0, 'Y3BJcK'),
(196, '200', 0, 'zfQphA'),
(197, '100', 0, 'zfQphA'),
(198, '50', 0, 'zfQphA'),
(199, '20', 0, 'zfQphA'),
(200, '10', 0, 'zfQphA'),
(201, '5', 0, 'zfQphA'),
(202, '1', 9, 'zfQphA'),
(203, '0.50', 0, 'zfQphA'),
(204, '0.25', 0, 'zfQphA'),
(205, '0.01', 0, 'zfQphA'),
(206, '200', 0, 'F6cLAx'),
(207, '100', 0, 'F6cLAx'),
(208, '50', 0, 'F6cLAx'),
(209, '20', 0, 'F6cLAx'),
(210, '10', 0, 'F6cLAx'),
(211, '5', 0, 'F6cLAx'),
(212, '1', 1, 'F6cLAx'),
(213, '0.50', 0, 'F6cLAx'),
(214, '0.25', 0, 'F6cLAx'),
(215, '0.01', 0, 'F6cLAx'),
(216, '200', 0, 'PpzPXE'),
(217, '100', 1, 'PpzPXE'),
(218, '50', 0, 'PpzPXE'),
(219, '20', 0, 'PpzPXE'),
(220, '10', 0, 'PpzPXE'),
(221, '5', 0, 'PpzPXE'),
(222, '1', 0, 'PpzPXE'),
(223, '0.50', 0, 'PpzPXE'),
(224, '0.25', 0, 'PpzPXE'),
(225, '0.01', 0, 'PpzPXE'),
(226, '200', 0, 'tktNsm'),
(227, '100', 0, 'tktNsm'),
(228, '50', 0, 'tktNsm'),
(229, '20', 0, 'tktNsm'),
(230, '10', 0, 'tktNsm'),
(231, '5', 0, 'tktNsm'),
(232, '1', 20, 'tktNsm'),
(233, '0.50', 0, 'tktNsm'),
(234, '0.25', 0, 'tktNsm'),
(235, '0.01', 0, 'tktNsm'),
(236, '200', 0, '1aKeJc'),
(237, '100', 1, '1aKeJc'),
(238, '50', 0, '1aKeJc'),
(239, '20', 0, '1aKeJc'),
(240, '10', 0, '1aKeJc'),
(241, '5', 0, '1aKeJc'),
(242, '1', 1, '1aKeJc'),
(243, '0.50', 0, '1aKeJc'),
(244, '0.25', 0, '1aKeJc'),
(245, '0.01', 0, '1aKeJc'),
(246, '200', 0, 'ymofDV'),
(247, '100', 1, 'ymofDV'),
(248, '50', 0, 'ymofDV'),
(249, '20', 0, 'ymofDV'),
(250, '10', 0, 'ymofDV'),
(251, '5', 0, 'ymofDV'),
(252, '1', 0, 'ymofDV'),
(253, '0.50', 0, 'ymofDV'),
(254, '0.25', 0, 'ymofDV'),
(255, '0.01', 0, 'ymofDV'),
(256, '200', 0, 'F3gfAz'),
(257, '100', 1, 'F3gfAz'),
(258, '50', 0, 'F3gfAz'),
(259, '20', 0, 'F3gfAz'),
(260, '10', 0, 'F3gfAz'),
(261, '5', 0, 'F3gfAz'),
(262, '1', 0, 'F3gfAz'),
(263, '0.50', 0, 'F3gfAz'),
(264, '0.25', 0, 'F3gfAz'),
(265, '0.01', 0, 'F3gfAz'),
(266, '200', 0, 'GIBVdq'),
(267, '100', 1, 'GIBVdq'),
(268, '50', 0, 'GIBVdq'),
(269, '20', 0, 'GIBVdq'),
(270, '10', 0, 'GIBVdq'),
(271, '5', 0, 'GIBVdq'),
(272, '1', 0, 'GIBVdq'),
(273, '0.50', 0, 'GIBVdq'),
(274, '0.25', 0, 'GIBVdq'),
(275, '0.01', 0, 'GIBVdq'),
(276, '200', 0, 'uH22Gg'),
(277, '100', 1, 'uH22Gg'),
(278, '50', 0, 'uH22Gg'),
(279, '20', 0, 'uH22Gg'),
(280, '10', 0, 'uH22Gg'),
(281, '5', 0, 'uH22Gg'),
(282, '1', 0, 'uH22Gg'),
(283, '0.50', 0, 'uH22Gg'),
(284, '0.25', 0, 'uH22Gg'),
(285, '0.01', 0, 'uH22Gg'),
(286, '200', 0, 'ss87Bi'),
(287, '100', 1, 'ss87Bi'),
(288, '50', 0, 'ss87Bi'),
(289, '20', 0, 'ss87Bi'),
(290, '10', 0, 'ss87Bi'),
(291, '5', 0, 'ss87Bi'),
(292, '1', 0, 'ss87Bi'),
(293, '0.50', 0, 'ss87Bi'),
(294, '0.25', 0, 'ss87Bi'),
(295, '0.01', 0, 'ss87Bi'),
(296, '200', 0, 'lNKigI'),
(297, '100', 1, 'lNKigI'),
(298, '50', 0, 'lNKigI'),
(299, '20', 0, 'lNKigI'),
(300, '10', 0, 'lNKigI'),
(301, '5', 0, 'lNKigI'),
(302, '1', 0, 'lNKigI'),
(303, '0.50', 0, 'lNKigI'),
(304, '0.25', 0, 'lNKigI'),
(305, '0.01', 0, 'lNKigI'),
(306, '200', 0, '1LV4pe'),
(307, '100', 1, '1LV4pe'),
(308, '50', 0, '1LV4pe'),
(309, '20', 0, '1LV4pe'),
(310, '10', 0, '1LV4pe'),
(311, '5', 0, '1LV4pe'),
(312, '1', 0, '1LV4pe'),
(313, '0.50', 0, '1LV4pe'),
(314, '0.25', 0, '1LV4pe'),
(315, '0.01', 0, '1LV4pe'),
(316, '200', 0, '81qAdx'),
(317, '100', 1, '81qAdx'),
(318, '50', 0, '81qAdx'),
(319, '20', 0, '81qAdx'),
(320, '10', 0, '81qAdx'),
(321, '5', 0, '81qAdx'),
(322, '1', 9, '81qAdx'),
(323, '0.50', 0, '81qAdx'),
(324, '0.25', 0, '81qAdx'),
(325, '0.01', 90, '81qAdx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `idcaja` int(10) NOT NULL,
  `codigo_caja` varchar(6) NOT NULL,
  `idusuario` int(10) NOT NULL,
  `fechahora` datetime NOT NULL,
  `tipo_movimiento` varchar(100) NOT NULL,
  `valor` decimal(50,0) DEFAULT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`idcaja`, `codigo_caja`, `idusuario`, `fechahora`, `tipo_movimiento`, `valor`, `estado`) VALUES
(1, 'oROWUr', 1, '2024-05-16 18:30:38', 'Apertura', 40000, 'activa'),
(2, 'oROWUr', 1, '2024-05-16 18:30:54', 'Cierre', 40000, 'inactiva'),
(3, 'LxcDzU', 1, '2024-05-16 19:00:25', 'Apertura', 4500, 'activa'),
(4, 'LxcDzU', 1, '2024-05-16 19:00:59', 'Cierre', 4500, 'inactiva'),
(5, '3tFKos', 1, '2024-05-16 19:16:15', 'Apertura', 5000, 'activa'),
(6, '3tFKos', 1, '2024-05-16 19:18:37', 'Cierre', 5000, 'inactiva'),
(7, 'pEue54', 1, '2024-05-16 19:36:43', 'Apertura', 100, 'activa'),
(8, 'pEue54', 1, '2024-05-16 19:37:16', 'Compra', 50, 'activa'),
(9, 'pEue54', 1, '2024-05-16 19:38:13', 'Cierre', 100, 'inactiva'),
(10, 'xIxr9D', 1, '2024-05-16 19:40:32', 'Apertura', 50, 'activa'),
(11, 'xIxr9D', 1, '2024-05-16 19:40:50', 'Compra', 5, 'activa'),
(12, 'xIxr9D', 1, '2024-05-16 19:41:03', 'Cierre', 5, 'inactiva'),
(13, '8makjk', 1, '2024-05-16 23:08:37', 'Apertura', 5000, 'activa'),
(14, '8makjk', 1, '2024-05-16 23:08:43', 'Cierre', 5000, 'inactiva'),
(15, '39Pddk', 1, '2024-05-16 23:13:25', 'Apertura', 4000, 'activa'),
(16, 'J6z27Q', 1, '2024-05-17 11:29:03', 'Apertura', 50000, 'activa'),
(17, 'J6z27Q', 1, '2024-05-17 11:29:26', 'Compra', 49500, 'activa'),
(18, 'J6z27Q', 1, '2024-05-17 11:29:46', 'Cierre', 49500, 'inactiva'),
(19, '0rux8j', 1, '2024-05-17 14:20:25', 'Apertura', 4000, 'activa'),
(20, '0rux8j', 1, '2024-05-17 14:31:49', 'Cierre', 4000, 'inactiva'),
(21, 'a17qU3', 1, '2024-05-17 14:45:44', 'Apertura', 100, 'activa'),
(22, 'a17qU3', 1, '2024-05-17 14:46:05', 'Compra', 50, 'activa'),
(23, 'a17qU3', 1, '2024-05-17 14:46:50', 'Venta', 100, 'activa'),
(24, 'a17qU3', 1, '2024-05-17 14:47:16', 'Cierre', 100, 'inactiva'),
(25, 'Neyfpd', 1, '2024-05-18 15:04:24', 'Apertura', 100, 'activa'),
(26, 'Neyfpd', 1, '2024-05-18 15:05:00', 'Compra', 50, 'activa'),
(27, 'Neyfpd', 1, '2024-05-18 15:06:14', 'Venta', 150, 'activa'),
(28, 'Neyfpd', 1, '2024-05-18 15:06:36', 'Cierre', 150, 'inactiva'),
(29, 'tAzvhF', 1, '2024-05-18 15:06:59', 'Apertura', 100, 'activa'),
(30, 'tAzvhF', 1, '2024-05-18 15:07:12', 'Cierre', 100, 'inactiva'),
(31, '<br />', 1, '2024-05-18 15:27:10', 'Cierre', NULL, 'inactiva'),
(32, '<br />', 1, '2024-05-18 15:27:23', 'Cierre', 0, 'inactiva'),
(33, 'egFRTZ', 1, '2024-05-18 15:27:53', 'Apertura', 400, 'activa'),
(34, 'egFRTZ', 1, '2024-05-18 15:28:07', 'Cierre', 400, 'inactiva'),
(35, 'qptcoY', 1, '2024-05-18 15:32:24', 'Apertura', 100, 'activa'),
(36, 'qptcoY', 1, '2024-05-18 15:32:45', 'Compra', 50, 'activa'),
(37, 'qptcoY', 1, '2024-05-18 15:33:25', 'Venta', 150, 'activa'),
(38, 'qptcoY', 1, '2024-05-18 15:33:45', 'Cierre', 150, 'inactiva'),
(39, '<br />', 1, '2024-05-21 22:38:59', 'Cierre', NULL, 'inactiva'),
(40, 'gZnvQ5', 1, '2024-05-21 23:24:41', 'Apertura', 400, 'activa'),
(41, 'gZnvQ5', 1, '2024-05-21 23:40:54', 'Venta', 410, 'activa'),
(42, 'gZnvQ5', 1, '2024-05-21 23:40:58', 'Venta', 420, 'activa'),
(43, 'gZnvQ5', 1, '2024-05-21 23:41:04', 'Venta', 430, 'activa'),
(44, 'gZnvQ5', 1, '2024-05-21 23:41:24', 'Venta', 440, 'activa'),
(45, 'gZnvQ5', 1, '2024-05-21 23:41:55', 'Cierre', 440, 'inactiva'),
(46, 'gZnvQ5', 1, '2024-05-21 23:43:27', 'Cierre', 0, 'inactiva'),
(47, 'TuZjDL', 1, '2024-05-21 23:43:32', 'Apertura', 10, 'activa'),
(48, 'TuZjDL', 1, '2024-05-21 23:43:46', 'Venta', 20, 'activa'),
(49, 'TuZjDL', 1, '2024-05-21 23:45:31', 'Venta', 30, 'activa'),
(50, 'TuZjDL', 1, '2024-05-21 23:45:37', 'Venta', 40, 'activa'),
(51, 'TuZjDL', 1, '2024-05-21 23:48:52', 'Venta', 50, 'activa'),
(52, 'TuZjDL', 1, '2024-05-21 23:51:00', 'Venta', 60, 'activa'),
(53, 'TuZjDL', 1, '2024-05-21 23:52:12', 'Venta', 70, 'activa'),
(54, 'TuZjDL', 1, '2024-05-21 23:56:30', 'Venta', 80, 'activa'),
(55, 'TuZjDL', 1, '2024-05-21 23:59:46', 'Venta', 90, 'activa'),
(56, 'TuZjDL', 1, '2024-05-22 00:00:36', 'Venta', 100, 'activa'),
(57, 'MV9nBh', 1, '2024-05-23 22:01:31', 'Apertura', 100, 'activa'),
(58, 'MV9nBh', 1, '2024-05-23 22:10:35', 'Venta', 110, 'activa'),
(59, 'MV9nBh', 1, '2024-05-23 22:11:37', 'Venta', 120, 'activa'),
(60, 'MV9nBh', 1, '2024-05-23 22:14:30', 'Venta', 130, 'activa'),
(61, 'MV9nBh', 1, '2024-05-23 22:20:21', 'Venta', 140, 'activa'),
(62, 'MV9nBh', 1, '2024-05-23 22:21:15', 'Venta', 150, 'activa'),
(63, 'MV9nBh', 1, '2024-05-23 22:21:54', 'Venta', 160, 'activa'),
(64, 'MV9nBh', 1, '2024-05-23 22:23:03', 'Compra', 100, 'activa'),
(65, 'MV9nBh', 1, '2024-05-23 22:23:25', 'Cierre', 100, 'inactiva'),
(66, 'i7wUro', 1, '2024-05-23 22:24:07', 'Apertura', 100, 'activa'),
(67, 'i7wUro', 1, '2024-05-23 22:24:18', 'Venta', 110, 'activa'),
(68, 'i7wUro', 1, '2024-05-23 22:30:37', 'Venta', 120, 'activa'),
(69, 'i7wUro', 1, '2024-05-23 22:31:17', 'Venta', 130, 'activa'),
(70, 'i7wUro', 1, '2024-05-23 22:34:42', 'Venta', 140, 'activa'),
(71, 'i7wUro', 1, '2024-05-23 22:38:39', 'Venta', 150, 'activa'),
(72, 'i7wUro', 1, '2024-05-23 22:42:24', 'Cierre', 150, 'inactiva'),
(73, 'ubUond', 1, '2024-05-24 20:05:51', 'Apertura', 500, 'activa'),
(74, 'ubUond', 1, '2024-05-24 20:06:08', 'Venta', 510, 'activa'),
(75, 'ubUond', 1, '2024-05-24 20:06:51', 'Cierre', 510, 'inactiva'),
(76, '7AobHW', 1, '2024-05-25 07:29:57', 'Apertura', 45, 'activa'),
(77, '7AobHW', 1, '2024-05-25 07:30:08', 'Cierre', 45, 'inactiva'),
(78, 'cQHxgq', 1, '2024-05-25 07:38:55', 'Apertura', 100, 'activa'),
(79, 'cQHxgq', 1, '2024-05-25 07:39:31', 'Cierre', 100, 'inactiva'),
(80, 'Blzbd0', 1, '2024-05-25 07:51:05', 'Apertura', 100, 'activa'),
(81, 'Blzbd0', 1, '2024-05-25 07:51:22', 'Cierre', 100, 'inactiva'),
(82, 'jcuF1A', 1, '2024-05-25 07:51:32', 'Apertura', 10, 'activa'),
(83, 'jcuF1A', 1, '2024-05-25 07:52:05', 'Cierre', 10, 'inactiva'),
(84, 'tCLxX8', 1, '2024-05-25 08:11:03', 'Apertura', 100, 'activa'),
(85, 'tCLxX8', 1, '2024-05-25 08:12:00', 'Cierre', 100, 'inactiva'),
(86, 'x7OToa', 1, '2024-05-25 08:12:59', 'Apertura', 100, 'activa'),
(87, 'x7OToa', 1, '2024-05-25 08:17:59', 'Compra', -100, 'activa'),
(88, '2oCGWM', 1, '2024-05-25 08:19:48', 'Apertura', 100, 'activa'),
(89, '2oCGWM', 1, '2024-05-25 08:20:19', 'Compra', 50, 'activa'),
(90, '2oCGWM', 1, '2024-05-25 08:20:41', 'Cierre', 50, 'inactiva'),
(91, '46LQYN', 1, '2024-05-25 08:30:53', 'Apertura', 100, 'activa'),
(92, '46LQYN', 1, '2024-05-25 09:07:55', 'Venta', 110, 'activa'),
(93, '46LQYN', 1, '2024-05-25 09:08:44', 'Venta', 120, 'activa'),
(94, '46LQYN', 1, '2024-05-25 09:10:20', 'Venta', 130, 'activa'),
(95, '46LQYN', 1, '2024-05-25 09:17:04', 'Venta', 140, 'activa'),
(96, '46LQYN', 1, '2024-05-25 09:17:53', 'Venta', 150, 'activa'),
(97, '46LQYN', 1, '2024-05-25 09:19:37', 'Venta', 160, 'activa'),
(98, '46LQYN', 1, '2024-05-25 09:24:42', 'Venta', 200, 'activa'),
(99, '46LQYN', 1, '2024-05-25 09:25:10', 'Venta', 210, 'activa'),
(100, '46LQYN', 1, '2024-05-25 09:25:17', 'Venta', 220, 'activa'),
(101, '46LQYN', 1, '2024-05-25 09:25:31', 'Venta', 230, 'activa'),
(102, '46LQYN', 1, '2024-05-25 09:31:31', 'Venta', 240, 'activa'),
(103, '46LQYN', 1, '2024-05-25 09:45:21', 'Venta', 250, 'activa'),
(104, '46LQYN', 1, '2024-05-25 09:54:16', 'Venta', 260, 'activa'),
(105, '46LQYN', 1, '2024-05-25 09:55:09', 'Venta', 270, 'activa'),
(106, '46LQYN', 1, '2024-05-25 10:19:08', 'Venta', 330, 'activa'),
(107, '46LQYN', 1, '2024-05-25 10:22:11', 'Venta', 348, 'activa'),
(108, '46LQYN', 1, '2024-05-25 10:26:17', 'Cierre', 348, 'inactiva'),
(109, 'fG3Rsj', 1, '2024-05-25 10:28:32', 'Apertura', 1, 'activa'),
(110, 'fG3Rsj', 1, '2024-05-25 10:28:48', 'Venta', 10, 'activa'),
(111, 'fG3Rsj', 1, '2024-05-25 10:31:25', 'Venta', 19, 'activa'),
(112, 'fG3Rsj', 1, '2024-05-25 10:56:57', 'Venta', 39, 'activa'),
(113, 'fG3Rsj', 1, '2024-05-25 10:57:41', 'Venta', 49, 'activa'),
(114, 'fG3Rsj', 1, '2024-05-25 10:58:52', 'Cierre', 49, 'inactiva'),
(115, 'Haw1cV', 1, '2024-05-25 11:00:52', 'Apertura', 100, 'activa'),
(116, 'Haw1cV', 1, '2024-05-25 11:01:13', 'Compra', 0, 'activa'),
(117, 'JdDhRd', 1, '2024-05-25 14:38:40', 'Apertura', 100, 'activa'),
(118, 'JdDhRd', 1, '2024-05-25 14:38:51', 'Venta', 109, 'activa'),
(119, 'JdDhRd', 1, '2024-05-25 14:39:38', 'Venta', 119, 'activa'),
(120, 'JdDhRd', 1, '2024-05-25 14:53:14', 'Cierre', 119, 'inactiva'),
(121, 'pFgUnP', 1, '2024-05-25 14:53:54', 'Apertura', 100, 'activa'),
(122, 'pFgUnP', 1, '2024-05-25 15:06:01', 'Cierre', 100, 'inactiva'),
(123, '4dvfD5', 1, '2024-05-25 15:46:10', 'Apertura', 100, 'activa'),
(124, '4dvfD5', 1, '2024-05-25 15:46:22', 'Cierre', 100, 'inactiva'),
(125, 'TkmALP', 1, '2024-05-25 15:57:46', 'Apertura', 100, 'activa'),
(126, 'TkmALP', 1, '2024-05-25 15:58:07', 'Cierre', 100, 'inactiva'),
(127, 'RNGm5G', 1, '2024-05-26 19:32:37', 'Apertura', 100, 'activa'),
(128, 'RNGm5G', 1, '2024-05-26 19:33:47', 'Cierre', 100, 'inactiva'),
(129, 'KrV3j2', 1, '2024-05-26 19:49:08', 'Apertura', 100, 'activa'),
(130, 'KrV3j2', 1, '2024-05-26 19:49:27', 'Cierre', 100, 'inactiva'),
(131, '3n5XRu', 1, '2024-05-26 20:14:00', 'Apertura', 100, 'activa'),
(132, '3n5XRu', 1, '2024-05-26 20:15:51', 'Cierre', 100, 'inactiva'),
(133, 'B3v2E8', 1, '2024-05-26 20:16:30', 'Apertura', 1, 'activa'),
(134, 'B3v2E8', 1, '2024-05-26 20:16:45', 'Cierre', 1, 'inactiva'),
(135, 'hWDqPl', 1, '2024-05-26 20:18:30', 'Apertura', 1, 'activa'),
(136, 'hWDqPl', 1, '2024-05-26 20:18:46', 'Apertura', 1, 'activa'),
(137, 'hWDqPl', 1, '2024-05-26 20:20:54', 'Cierre', 1, 'inactiva'),
(138, '6oEc1t', 1, '2024-05-26 21:05:38', 'Apertura', 100, 'activa'),
(139, '6oEc1t', 1, '2024-05-26 21:05:52', 'Apertura', 100, 'activa'),
(140, '6oEc1t', 1, '2024-05-26 21:06:45', 'Apertura', 100, 'activa'),
(141, '6oEc1t', 1, '2024-05-26 21:07:41', 'Cierre', 100, 'inactiva'),
(142, '3IT7NM', 1, '2024-05-27 18:01:24', 'Apertura', 100, 'activa'),
(143, '3IT7NM', 1, '2024-05-27 18:01:52', 'Cierre', 100, 'inactiva'),
(144, 'j2HG0x', 1, '2024-05-28 00:34:46', 'Apertura', 100, 'activa'),
(145, 'j2HG0x', 1, '2024-05-28 00:35:05', 'Venta', 101, 'activa'),
(146, 'j2HG0x', 1, '2024-05-28 00:43:49', 'Venta', 110, 'activa'),
(147, 'j2HG0x', 1, '2024-05-28 00:44:20', 'Venta', 111, 'activa'),
(148, 'VGlDwM', 1, '2024-05-28 00:55:31', 'Apertura', 100, 'activa'),
(149, 'VGlDwM', 1, '2024-05-28 00:55:56', 'Compra', 92, 'activa'),
(150, 'VGlDwM', 1, '2024-05-28 00:56:33', 'Venta', 93, 'activa'),
(151, 'VGlDwM', 1, '2024-05-28 00:57:22', 'Cierre', 93, 'inactiva'),
(152, 'MSxpw9', 1, '2024-05-28 22:53:11', 'Apertura', 100, 'activa'),
(153, 'MSxpw9', 1, '2024-05-28 22:53:38', 'Venta', 110, 'activa'),
(154, 'MSxpw9', 1, '2024-05-28 23:16:02', 'Venta', 119, 'activa'),
(155, 'MSxpw9', 1, '2024-05-28 23:46:41', 'Cierre', 119, 'inactiva'),
(156, 'J9Oxrt', 1, '2024-05-29 00:08:26', 'Apertura', 100, 'activa'),
(157, 'J9Oxrt', 1, '2024-05-29 00:08:39', 'Venta', 109, 'activa'),
(158, 'J9Oxrt', 1, '2024-05-29 00:21:51', 'Venta', 118, 'activa'),
(159, 'J9Oxrt', 1, '2024-05-29 00:28:11', 'Venta', 127, 'activa'),
(160, 'J9Oxrt', 1, '2024-05-29 00:34:09', 'Venta', 137, 'activa'),
(161, 'J9Oxrt', 1, '2024-05-29 01:05:54', 'Cierre', 137, 'inactiva'),
(162, 'oSXbD4', 1, '2024-05-29 17:14:10', 'Apertura', 123456, 'activa'),
(163, 'oSXbD4', 1, '2024-05-29 17:14:38', 'Cierre', 123456, 'inactiva'),
(164, 'g9Lkdu', 1, '2024-05-29 18:21:29', 'Apertura', 100, 'activa'),
(165, 'g9Lkdu', 1, '2024-05-29 18:22:09', 'Cierre', 100, 'inactiva'),
(166, 'Y3BJcK', 1, '2024-05-29 18:24:06', 'Apertura', 1, 'activa'),
(167, 'Y3BJcK', 1, '2024-05-29 18:24:42', 'Cierre', 1, 'inactiva'),
(168, 'zfQphA', 1, '2024-05-29 18:39:59', 'Apertura', 100, 'activa'),
(169, 'zfQphA', 1, '2024-05-29 18:40:13', 'Compra', 0, 'activa'),
(170, 'zfQphA', 1, '2024-05-29 18:41:46', 'Venta', 9, 'activa'),
(171, 'zfQphA', 1, '2024-05-29 18:42:08', 'Cierre', 9, 'inactiva'),
(172, 'F6cLAx', 1, '2024-05-29 18:43:14', 'Apertura', 1, 'activa'),
(173, 'F6cLAx', 1, '2024-05-29 18:43:29', 'Cierre', 1, 'inactiva'),
(174, 'AG4qkf', 1, '2024-06-01 13:44:31', 'Apertura', 100, 'activa'),
(175, 'AG4qkf', 1, '2024-06-01 13:45:12', 'Venta', 109, 'activa'),
(176, 'PpzPXE', 1, '2024-07-30 20:42:02', 'Apertura', 100, 'activa'),
(177, 'PpzPXE', 1, '2024-07-30 20:42:24', 'Cierre', 100, 'inactiva'),
(178, 'tktNsm', 1, '2024-09-02 21:35:37', 'Apertura', 20, 'activa'),
(179, 'tktNsm', 1, '2024-09-02 21:37:18', 'Cierre', 20, 'inactiva'),
(180, '1aKeJc', 1, '2024-09-04 22:11:11', 'Apertura', 100, 'activa'),
(181, '1aKeJc', 1, '2024-09-04 22:11:34', 'Venta', 101, 'activa'),
(182, '1aKeJc', 1, '2024-09-04 22:13:53', 'Cierre', 101, 'inactiva'),
(183, 'ymofDV', 1, '2024-09-07 12:53:24', 'Apertura', 100, 'activa'),
(184, 'ymofDV', 1, '2024-09-07 12:56:49', 'Cierre', 100, 'inactiva'),
(185, 'F3gfAz', 1, '2024-09-10 18:39:32', 'Apertura', 100, 'activa'),
(186, 'F3gfAz', 1, '2024-09-10 18:46:09', 'Cierre', 100, 'inactiva'),
(187, 'GIBVdq', 1, '2024-09-10 18:46:23', 'Apertura', 100, 'activa'),
(188, 'GIBVdq', 1, '2024-09-10 20:45:36', 'Cierre', 100, 'inactiva'),
(189, 'uH22Gg', 1, '2024-09-11 21:27:56', 'Apertura', 100, 'activa'),
(190, 'uH22Gg', 1, '2024-09-11 22:07:14', 'Cierre', 100, 'inactiva'),
(191, 'ss87Bi', 1, '2024-09-11 22:07:49', 'Apertura', 100, 'activa'),
(192, 'ss87Bi', 1, '2024-09-11 22:14:02', 'Cierre', 100, 'inactiva'),
(193, 'lNKigI', 1, '2024-09-11 22:14:31', 'Apertura', 100, 'activa'),
(194, 'lNKigI', 1, '2024-09-11 22:20:42', 'Cierre', 100, 'inactiva'),
(195, '1LV4pe', 1, '2024-09-11 22:21:18', 'Apertura', 100, 'activa'),
(196, '1LV4pe', 1, '2024-09-11 22:31:44', 'Cierre', 100, 'inactiva'),
(197, '81qAdx', 1, '2024-09-11 22:34:59', 'Apertura', 100, 'activa'),
(198, '81qAdx', 1, '2024-09-11 22:36:51', 'Venta', 110, 'activa'),
(199, '81qAdx', 1, '2024-09-11 22:38:09', 'Cierre', 110, 'inactiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `nit` int(20) NOT NULL,
  `cui` int(20) NOT NULL,
  `sgm` varchar(20) NOT NULL,
  `npoliza` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `direccion`, `correo`, `sexo`, `nit`, `cui`, `sgm`, `npoliza`, `telefono`, `status`) VALUES
(8, 'Mateo Caba', 'zona 7', '4}', 'masculion', 4555, 4545, '45454', '454545', '4545454', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `fecha` date NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `total`, `fecha`, `id_proveedor`, `id_usuario`, `estado`) VALUES
(1, 6.00, '2024-05-17', 1, 1, 1),
(2, 5.00, '2024-05-17', 1, 1, 1),
(3, 7.00, '2024-05-17', 1, 1, 1),
(4, 6.00, '2024-05-17', 1, 1, 1),
(5, 50.00, '2024-05-16', 1, 1, 1),
(6, 45.00, '2024-05-16', 1, 1, 1),
(7, 500.00, '2024-05-17', 1, 1, 1),
(8, 50.00, '2024-05-17', 1, 1, 1),
(9, 50.00, '2024-05-18', 1, 1, 1),
(10, 50.00, '2024-05-18', 1, 1, 1),
(11, 60.00, '2024-05-23', 1, 1, 1),
(12, 200.00, '2024-05-25', 1, 1, 1),
(13, 50.00, '2024-05-25', 1, 1, 1),
(14, 100.00, '2024-05-25', 1, 1, 1),
(15, 8.00, '2024-05-28', 1, 1, 1),
(16, 100.00, '2024-05-29', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `direccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `nombre`, `telefono`, `email`, `direccion`) VALUES
(1, 'SISTEMAS FREE', '66657765', 'ana.info1999@gmail.com', 'Quetzaltenango');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `id` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `cantidad` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_compras`
--

INSERT INTO `detalle_compras` (`id`, `precio`, `cantidad`, `id_producto`, `id_compra`) VALUES
(1, 1.00, 6, 1, 1),
(2, 1.00, 5, 1, 2),
(3, 1.00, 7, 1, 3),
(4, 1.00, 6, 1, 4),
(5, 1.00, 50, 1, 5),
(6, 1.00, 45, 1, 6),
(15, 1.00, 8, 1, 15),
(16, 10.00, 10, 3, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_permisos`
--

CREATE TABLE `detalle_permisos` (
  `id` int(11) NOT NULL,
  `id_permiso` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_permisos`
--

INSERT INTO `detalle_permisos` (`id`, `id_permiso`, `id_usuario`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 1, 6),
(11, 2, 6),
(12, 3, 6),
(13, 4, 6),
(14, 5, 6),
(15, 6, 6),
(16, 7, 6),
(17, 8, 6),
(18, 9, 6),
(19, 3, 7),
(20, 4, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id`, `id_producto`, `id_venta`, `cantidad`, `precio`) VALUES
(97, 1, 96, 1, 1.00),
(98, 3, 96, 1, 10.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `nombre`) VALUES
(1, 'Configuracion'),
(2, 'Usuarios'),
(3, 'Clientes'),
(4, 'Productos'),
(5, 'Ventas'),
(6, 'Nueva venta'),
(7, 'Compras'),
(8, 'Nueva compra'),
(9, 'Proveedores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codproducto` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `existencia` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codproducto`, `codigo`, `descripcion`, `precio`, `existencia`, `status`) VALUES
(1, '45556', 'Borrador', 1.00, 2, 1),
(3, '1234', 'Cuadernos', 10.00, 39, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL DEFAULT '',
  `telefono` varchar(15) NOT NULL DEFAULT '',
  `direccion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `nombre`, `telefono`, `direccion`, `status`) VALUES
(1, 'Tucan SA', '59463214', 'zona 10', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temp_compras`
--

CREATE TABLE `temp_compras` (
  `id` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `cantidad` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temp_ventas`
--

CREATE TABLE `temp_ventas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descuento` decimal(10,2) NOT NULL DEFAULT 0.00,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(150) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `correo`, `clave`, `status`) VALUES
(1, 'William', 'ana.info1999@gmail.com', '$2y$10$vS5ajG877UWuW1dFDbA2ZehRJk0MKD8G/5gnlfauELXVYOQ6pk5y6', 1),
(2, 'ANA LOPEZ', 'info@sistemasfree.com', '$2y$10$KqXvy1kiVGnu5CeL0UfuHe9cxf.QpH3AC5grBqqx4NijaLw2bV8N.', 1),
(6, 'Mateo Caba', 'william@gmail.com', '$2y$10$l69uZEvo4DuNoY1G06wL6uOiZ/3kyivi5ZwY42AvO2.cOCpfeZZGe', 1),
(7, 'pedro', 'pedro123@gmail.com', '$2y$10$Rb.cyhlBnZgN5MC.fA2ba.raIEM3I5yKQBXy2rgcyEOk.sG2FikV6', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `mayorista` varchar(50) NOT NULL,
  `metodo` varchar(80) NOT NULL DEFAULT '',
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `id_cliente`, `descuento`, `subtotal`, `total`, `mayorista`, `metodo`, `id_usuario`, `fecha`) VALUES
(96, 8, 1.10, 11.00, 9.90, 'Si', 'CASH', 1, '2024-09-11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `billetesmonedas`
--
ALTER TABLE `billetesmonedas`
  ADD PRIMARY KEY (`idbillmo`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`idcaja`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_compra` (`id_compra`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `detalle_permisos`
--
ALTER TABLE `detalle_permisos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_permiso` (`id_permiso`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codproducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `temp_compras`
--
ALTER TABLE `temp_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_temp_compras_producto` (`id_producto`),
  ADD KEY `FK_temp_compras_usuario` (`id_usuario`);

--
-- Indices de la tabla `temp_ventas`
--
ALTER TABLE `temp_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `billetesmonedas`
--
ALTER TABLE `billetesmonedas`
  MODIFY `idbillmo` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `idcaja` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `detalle_permisos`
--
ALTER TABLE `detalle_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `codproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `temp_compras`
--
ALTER TABLE `temp_compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `temp_ventas`
--
ALTER TABLE `temp_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caja`
--
ALTER TABLE `caja`
  ADD CONSTRAINT `caja_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`idproveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `detalle_compras_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_compras_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`codproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_permisos`
--
ALTER TABLE `detalle_permisos`
  ADD CONSTRAINT `detalle_permisos_ibfk_1` FOREIGN KEY (`id_permiso`) REFERENCES `permisos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_permisos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`codproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `temp_compras`
--
ALTER TABLE `temp_compras`
  ADD CONSTRAINT `temp_compras_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `temp_compras_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`codproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `temp_ventas`
--
ALTER TABLE `temp_ventas`
  ADD CONSTRAINT `temp_ventas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `temp_ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`codproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`idcliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
