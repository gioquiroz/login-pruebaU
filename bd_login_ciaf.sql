-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2024 a las 06:22:30
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
-- Base de datos: `bd_login_ciaf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `cod_pro` int(11) NOT NULL,
  `nom_pro` varchar(100) NOT NULL,
  `precio_prod` decimal(10,2) DEFAULT NULL,
  `catg_pro` varchar(50) DEFAULT 'General',
  `fecha_pro` date NOT NULL,
  `fecha_alta_pro` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `id_usu_alta` int(11) NOT NULL DEFAULT 0,
  `fecha_edit_pro` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `id_usu_edit` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`cod_pro`, `nom_pro`, `precio_prod`, `catg_pro`, `fecha_pro`, `fecha_alta_pro`, `id_usu_alta`, `fecha_edit_pro`, `id_usu_edit`) VALUES
(1, 'Producto A', 100.00, 'Electrónica', '2024-01-01', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(2, 'Producto B', 50.00, 'Electrónica', '2024-01-02', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(3, 'Producto C', 75.50, 'Ropa', '2024-01-03', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(4, 'Producto D', 120.00, 'Alimentos', '2024-01-04', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(5, 'Producto E', 95.00, 'Alimentos', '2024-01-05', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(6, 'Producto F', 80.00, 'Electrónica', '2024-01-06', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(7, 'Producto G', 150.00, 'Ropa', '2024-01-07', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(8, 'Producto H', 40.00, 'Juguetes', '2024-01-08', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(9, 'Producto I', 60.00, 'Juguetes', '2024-01-09', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(10, 'Producto J', 85.00, 'Electrónica', '2024-01-10', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(11, 'Producto K', 110.00, 'Hogar', '2024-01-11', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(12, 'Producto L', 130.00, 'Hogar', '2024-01-12', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(13, 'Producto M', 90.00, 'Ropa', '2024-01-13', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(14, 'Producto N', 115.00, 'Juguetes', '2024-01-14', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(15, 'Producto O', 200.00, 'Alimentos', '2024-01-15', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(16, 'Producto P', 45.00, 'Electrónica', '2024-01-16', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(17, 'Producto Q', 35.00, 'Hogar', '2024-01-17', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(18, 'Producto R', 140.00, 'Electrónica', '2024-01-18', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(19, 'Producto S', 155.00, 'Ropa', '2024-01-19', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(20, 'Producto T', 65.00, 'Alimentos', '2024-01-20', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(21, 'Producto U', 85.00, 'Electrónica', '2024-01-21', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(22, 'Producto V', 105.00, 'Hogar', '2024-01-22', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(23, 'Producto W', 75.00, 'Juguetes', '2024-01-23', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(24, 'Producto X', 125.00, 'Ropa', '2024-01-24', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(25, 'Producto Y', 50.00, 'Alimentos', '2024-01-25', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(26, 'Producto Z', 70.00, 'Electrónica', '2024-01-26', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(27, 'Producto AA', 95.00, 'Juguetes', '2024-01-27', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(28, 'Producto AB', 115.00, 'Hogar', '2024-01-28', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(29, 'Producto AC', 135.00, 'Ropa', '2024-01-29', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(30, 'Producto AD', 145.00, 'Electrónica', '2024-01-30', '2000-01-01 00:00:00', 0, '2000-01-01 00:00:00', 0),
(888, 'MOUSE', 25000.00, 'ELECTRODOMESTICOS', '0000-00-00', '2024-09-24 08:55:32', 1, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `nit_prov` varchar(15) NOT NULL,
  `nom_prov` varchar(100) NOT NULL,
  `email_prov` varchar(100) DEFAULT NULL,
  `telf_prov` varchar(20) DEFAULT NULL,
  `pais_prov` varchar(50) DEFAULT 'Colombia',
  `dire_prov` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`nit_prov`, `nom_prov`, `email_prov`, `telf_prov`, `pais_prov`, `dire_prov`) VALUES
('101010101', 'Proveedor 10', 'proveedor10@example.com', '3010001122', 'Venezuela', 'Calle 10 # 23-34'),
('111223344', 'Proveedor 9', 'proveedor9@example.com', '3009991010', 'Colombia', 'Calle 9 # 01-23'),
('112233445', 'Proveedor 3', 'proveedor3@example.com', '3003334455', 'Mexico', 'Calle 3 # 45-67'),
('121212121', 'Proveedor 19', 'proveedor19@example.com', '3019991010', 'Colombia', 'Calle 19 # 12-23'),
('123456789', 'Proveedor 1', 'proveedor1@example.com', '3001112233', 'Colombia', 'Calle 1 # 23-45'),
('131313131', 'Proveedor 20', 'proveedor20@example.com', '3020001122', 'Uruguay', 'Calle 20 # 23-34'),
('141414141', 'Proveedor Erróneo', NULL, NULL, 'Colombia', 'Calle 5'),
('202020202', 'Proveedor 11', 'proveedor11@example.com', '3011112233', 'Colombia', 'Calle 11 # 34-45'),
('220011223', 'Proveedor 8', 'proveedor8@example.com', '3008889900', 'Uruguay', 'Calle 8 # 90-12'),
('303030303', 'Proveedor 12', 'proveedor12@example.com', '3012223344', 'Colombia', 'Calle 12 # 45-56'),
('404040404', 'Proveedor 13', 'proveedor13@example.com', '3013334455', 'Ecuador', 'Calle 13 # 56-67'),
('443322110', 'Proveedor 7', 'proveedor7@example.com', '3007778899', 'Argentina', 'Calle 7 # 89-01'),
('505050505', 'Proveedor 14', 'proveedor14@example.com', '3014445566', 'Colombia', 'Calle 14 # 67-78'),
('556677889', 'Proveedor 4', 'proveedor4@example.com', '3004445566', 'Chile', 'Calle 4 # 56-78'),
('606060606', 'Proveedor 15', 'proveedor15@example.com', '3015556677', 'Bolivia', 'Calle 15 # 78-89'),
('665544332', 'Proveedor 6', 'proveedor6@example.com', '3006667788', 'Colombia', 'Calle 6 # 78-90'),
('707070707', 'Proveedor 16', 'proveedor16@example.com', '3016667788', 'Colombia', 'Calle 16 # 89-90'),
('808080808', 'Proveedor 17', 'proveedor17@example.com', '3017778899', 'Chile', 'Calle 17 # 90-01'),
('909090909', 'Proveedor 18', 'proveedor18@example.com', '3018889900', 'Paraguay', 'Calle 18 # 01-12'),
('987654321', 'Proveedor 2', 'proveedor2@example.com', '3002223344', 'Colombia', 'Calle 2 # 34-56'),
('998877665', 'Proveedor 5', 'proveedor5@example.com', '3005556677', 'Peru', 'Calle 5 # 67-89');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_productos`
--

CREATE TABLE `proveedores_productos` (
  `id_prov_prod` int(11) NOT NULL,
  `fecha_prov_prod` date DEFAULT NULL,
  `cant_prov_prod` int(11) DEFAULT NULL,
  `valor_prov_prod` int(11) DEFAULT NULL,
  `nit_prov` varchar(15) DEFAULT NULL,
  `cod_prod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedores_productos`
--

INSERT INTO `proveedores_productos` (`id_prov_prod`, `fecha_prov_prod`, `cant_prov_prod`, `valor_prov_prod`, `nit_prov`, `cod_prod`) VALUES
(1, '2024-02-01', 10, 1000, '123456789', 1),
(2, '2024-02-02', 5, 250, '987654321', 2),
(3, '2024-02-03', 15, 1125, '112233445', 3),
(4, '2024-02-04', 20, 2400, '556677889', 4),
(5, '2024-02-05', 8, 760, '998877665', 5),
(6, '2024-02-06', 12, 960, '665544332', 6),
(7, '2024-02-07', 18, 2700, '443322110', 7),
(8, '2024-02-08', 6, 240, '220011223', 8),
(9, '2024-02-09', 9, 540, '111223344', 9),
(10, '2024-02-10', 3, 255, '101010101', 10),
(11, '2024-02-11', 4, 440, '202020202', 11),
(12, '2024-02-12', 7, 910, '303030303', 12),
(13, '2024-02-13', 11, 1430, '404040404', 13),
(14, '2024-02-14', 13, 1950, '505050505', 14),
(15, '2024-02-15', 2, 90, '606060606', 15),
(16, '2024-02-16', 14, 1260, '707070707', 16),
(17, '2024-02-17', 16, 2240, '808080808', 17),
(18, '2024-02-18', 21, 3255, '909090909', 18),
(19, '2024-02-19', 10, 1300, '121212121', 19),
(20, '2024-02-20', 6, 630, '131313131', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usu` int(11) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `tipo_usu` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usu`, `usuario`, `password`, `nombre`, `tipo_usu`) VALUES
(1, 'nicolasdotcom', '7c222fb2927d828af22f592134e8932480637c0d', 'Nicolas', 1),
(2, 'gioquiroz', '348162101fc6f7e624681b7400b085eeac6df7bd', 'Giovanny Alexander Quiroz Chica', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`cod_pro`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`nit_prov`),
  ADD UNIQUE KEY `email_prov` (`email_prov`);

--
-- Indices de la tabla `proveedores_productos`
--
ALTER TABLE `proveedores_productos`
  ADD PRIMARY KEY (`id_prov_prod`),
  ADD KEY `fk_producto` (`cod_prod`),
  ADD KEY `fk_proveedor` (`nit_prov`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `proveedores_productos`
--
ALTER TABLE `proveedores_productos`
  ADD CONSTRAINT `fk_producto` FOREIGN KEY (`cod_prod`) REFERENCES `productos` (`cod_pro`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_proveedor` FOREIGN KEY (`nit_prov`) REFERENCES `proveedores` (`nit_prov`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
