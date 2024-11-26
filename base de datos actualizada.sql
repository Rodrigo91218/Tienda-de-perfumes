/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `pruebas_login` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `pruebas_login`;

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
	(1, 'admin', '1234');

CREATE DATABASE IF NOT EXISTS `tienda_perfumes` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `tienda_perfumes`;

CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `localidad` varchar(100) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `iva` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `cliente` (`id`, `nombre`, `apellido`, `localidad`, `domicilio`, `codigo_postal`, `telefono`, `email`, `iva`) VALUES
	(1, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(2, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1189765678', 'pereira97rodrigo@gmail.com', NULL),
	(3, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(4, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(5, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(6, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(7, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(8, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'castelar 1000', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(9, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(10, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(11, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(12, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(13, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(14, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(15, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(16, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(17, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(18, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL),
	(19, 'Rodrigo', 'de la Rosa', 'San Antonio de Padua', 'Santa fe 2345', '1718', '1132456789', 'pereira97rodrigo@gmail.com', NULL);

CREATE TABLE IF NOT EXISTS `detalle_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `detalle_pedidos` (`id`, `pedido_id`, `cantidad`, `precio_unitario`) VALUES
	(1, 11, 1, 5500.00),
	(2, 12, 1, 5500.00),
	(3, 13, 1, 5500.00),
	(4, 14, 1, 5500.00),
	(5, 15, 1, 5500.00),
	(6, 16, 1, 5500.00),
	(7, 17, 1, 5500.00),
	(8, 18, 1, 5500.00),
	(9, 19, 1, 5500.00);

CREATE TABLE IF NOT EXISTS `entregas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `metodo_entrega` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE IF NOT EXISTS `factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) DEFAULT NULL,
  `tipo_factura` varchar(50) DEFAULT 'B',
  `numero_factura` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `codigo_descripcion` varchar(255) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `precio_total` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `iva` decimal(10,2) DEFAULT 0.21,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `factura` (`id`, `pedido_id`, `tipo_factura`, `numero_factura`, `fecha`, `cantidad`, `codigo_descripcion`, `precio_unitario`, `precio_total`, `subtotal`, `iva`, `total`) VALUES
	(1, 1, 'A', '0000-00000001', '2024-11-24', 3, 'Pedido de perfumes', 16500.00, 16500.00, 16500.00, 3465.00, 19965.00),
	(2, 2, 'A', '0000-00000002', '2024-11-24', 2, 'Pedido de perfumes', 11000.00, 11000.00, 11000.00, 2310.00, 13310.00),
	(3, 3, 'A', '0000-00000003', '2024-11-24', 3, 'Pedido de perfumes', 16500.00, 16500.00, 16500.00, 3465.00, 19965.00),
	(4, 4, 'A', '0000-00000004', '2024-11-24', 2, 'Pedido de perfumes', 11000.00, 11000.00, 11000.00, 2310.00, 13310.00),
	(5, 5, 'A', '0000-00000005', '2024-11-24', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00),
	(6, 6, 'A', '0000-00000006', '2024-11-24', 0, 'Pedido de perfumes', 0.00, 0.00, 0.00, 0.00, 0.00),
	(7, 7, 'A', '0000-00000007', '2024-11-24', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00),
	(8, 8, 'A', '0000-00000008', '2024-11-25', 2, 'Pedido de perfumes', 11000.00, 11000.00, 11000.00, 2310.00, 13310.00),
	(9, 9, 'A', '0000-00000009', '2024-11-25', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00),
	(10, 10, 'A', '0000-00000010', '2024-11-25', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00),
	(11, 11, 'A', '0000-00000011', '2024-11-25', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00),
	(12, 12, 'A', '0000-00000012', '2024-11-25', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00),
	(13, 13, 'A', '0000-00000013', '2024-11-25', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00),
	(14, 14, 'A', '0000-00000014', '2024-11-25', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00),
	(15, 15, 'A', '0000-00000015', '2024-11-25', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00),
	(16, 16, 'A', '0000-00000016', '2024-11-25', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00),
	(17, 17, 'A', '0000-00000017', '2024-11-25', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00),
	(18, 18, 'A', '0000-00000018', '2024-11-25', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00),
	(19, 19, 'A', '0000-00000019', '2024-11-25', 1, 'Pedido de perfumes', 5500.00, 5500.00, 5500.00, 1155.00, 6655.00);

CREATE TABLE IF NOT EXISTS `formas_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `metodo_pago` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `numero_pedido` int(11) DEFAULT NULL,
  `direccion_envio` varchar(255) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `localidad_envio` varchar(100) DEFAULT NULL,
  `metodo_entrega` varchar(100) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `forma_pago_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE IF NOT EXISTS `perfumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `aroma` tinytext NOT NULL,
  `imagen_url` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `perfumes` (`id`, `nombre`, `aroma`, `imagen_url`, `stock`, `precio`) VALUES
	(1, 'Soft Blend Rosa chicle', 'Perfume floral suave con notas de rosa y jazmín.', 'imagen_rosa.jpg', 9, 5500.00),
	(2, 'Soft Blend Citrus extreme', 'Fragancia fresca con cítricos y toques amaderados.', 'softLimon.jpg', 0, 5500.00),
	(3, 'Soft blend Oceanica', 'Marino.', 'oceanica.jpg', 0, 5500.00),
	(6, 'Caramelo', 'Caramelo y miel.', 'caramelo.jpg', 0, 5500.00),
	(7, 'Nardo', 'Floral.', 'nardo.jpg', 0, 5500.00);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
