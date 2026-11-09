-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2026 at 02:16 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lila_pizzeria`
--

-- --------------------------------------------------------

--
-- Table structure for table `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id_detalle` int NOT NULL,
  `id_pedido` int NOT NULL,
  `tamano` varchar(20) NOT NULL,
  `ingredientes` text NOT NULL,
  `cantidad` int NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id_detalle`, `id_pedido`, `tamano`, `ingredientes`, `cantidad`, `subtotal`) VALUES
(1, 1, 'Mediana', 'Jamón', 2, 180.00),
(2, 1, 'Chica', 'Piña', 2, 120.00),
(3, 2, 'Grande', 'Champiñones', 3, 450.00),
(4, 3, 'Chica', 'Jamón', 5, 200.00),
(5, 4, 'Grande', 'Jamón, Piña', 4, 600.00),
(6, 5, 'Mediana', 'Champiñones', 3, 270.00),
(7, 5, 'Chica', 'Ninguno', 2, 80.00),
(8, 6, 'Grande', 'Jamón', 3, 400.00),
(9, 7, 'Grande', 'Piña', 4, 550.00),
(10, 8, 'Mediana', 'Jamón', 3, 300.00),
(11, 9, 'Grande', 'Jamón, Piña, Champiñones', 5, 700.00),
(12, 10, 'Chica', 'Jamón', 5, 250.00),
(13, 11, 'Mediana', 'Jamón', 3, 300.00),
(14, 11, 'Chica', 'Piña', 1, 50.00),
(15, 12, 'Grande', 'Champiñones', 3, 450.00),
(16, 12, 'Chica', 'Ninguno', 1, 50.00),
(17, 13, 'Grande', 'Jamón', 3, 450.00),
(18, 14, 'Grande', 'Piña', 5, 600.00),
(19, 15, 'Mediana', 'Jamón', 2, 180.00),
(20, 15, 'Chica', 'Piña', 2, 120.00),
(21, 16, 'Grande', 'Jamón, Piña, Champiñones', 5, 800.00),
(22, 17, 'Grande', 'Jamón, Piña', 5, 750.00),
(23, 18, 'Grande', 'Champiñones', 3, 400.00),
(24, 19, 'Mediana', 'Jamón', 3, 300.00),
(25, 19, 'Chica', 'Piña', 1, 50.00),
(26, 20, 'Grande', 'Jamón', 4, 500.00),
(27, 21, 'Grande', 'Jamón, Piña', 4, 550.00),
(28, 22, 'Mediana', 'Champiñones', 2, 250.00),
(29, 23, 'Grande', 'Jamón', 3, 400.00),
(30, 24, 'Mediana', 'Jamón, Piña', 3, 300.00),
(31, 25, 'Grande', 'Piña, Champiñones', 4, 600.00),
(32, 26, 'Mediana', 'Jamón', 2, 180.00),
(33, 26, 'Chica', 'Piña', 3, 170.00),
(34, 27, 'Grande', 'Champiñones', 3, 450.00),
(35, 28, 'Chica', 'Jamón', 5, 200.00),
(36, 29, 'Grande', 'Jamón, Champiñones', 5, 700.00),
(37, 30, 'Grande', 'Piña', 4, 500.00),
(38, 31, 'Grande', 'Jamón', 3, 400.00),
(39, 32, 'Grande', 'Jamón, Piña', 5, 650.00),
(40, 33, 'Grande', 'Champiñones', 4, 550.00),
(41, 34, 'Grande', 'Jamón, Piña, Champiñones', 5, 800.00),
(42, 35, 'Mediana', 'Piña', 3, 270.00),
(43, 35, 'Chica', 'Jamón', 2, 80.00),
(44, 36, 'Grande', 'Jamón, Piña, Champiñones', 6, 900.00),
(45, 37, 'Grande', 'Jamón, Piña', 6, 850.00),
(46, 38, 'Grande', 'Jamón, Champiñones', 5, 700.00),
(47, 39, 'Grande', 'Jamón', 5, 600.00),
(48, 40, 'Grande', 'Piña', 4, 500.00),
(49, 41, 'Grande', 'Jamón, Piña, Champiñones', 7, 1050.00),
(50, 42, 'Grande', 'Jamón, Piña, Champiñones', 8, 1200.00),
(51, 43, 'Grande', 'Jamón, Piña, Champiñones', 10, 1500.00),
(52, 44, 'Grande', 'Jamón, Piña', 6, 850.00),
(53, 45, 'Grande', 'Jamón, Champiñones', 6, 850.00),
(54, 45, 'Chica', 'Piña', 2, 100.00),
(55, 46, 'Mediana', 'Jamón', 3, 300.00),
(56, 47, 'Mediana', 'Piña', 3, 300.00),
(57, 47, 'Chica', 'Jamón', 1, 50.00),
(58, 48, 'Grande', 'Champiñones', 3, 400.00),
(59, 49, 'Grande', 'Jamón', 5, 600.00),
(60, 50, 'Grande', 'Piña', 3, 400.00),
(61, 50, 'Chica', 'Jamón', 1, 50.00),
(62, 51, 'Grande', 'Jamón', 4, 500.00),
(63, 52, 'Grande', 'Jamón, Piña', 5, 650.00),
(64, 52, 'Chica', 'Champiñones', 1, 50.00),
(65, 53, 'Grande', 'Jamón, Piña, Champiñones', 5, 800.00),
(66, 54, 'Grande', 'Jamón', 4, 500.00),
(67, 54, 'Chica', 'Piña', 1, 50.00),
(68, 55, 'Grande', 'Champiñones', 5, 600.00),
(69, 56, 'Grande', 'Jamón, Piña, Champiñones', 6, 900.00),
(70, 56, 'Chica', 'Jamón', 2, 100.00),
(71, 57, 'Grande', 'Jamón, Piña', 6, 850.00),
(72, 58, 'Mediana', 'Jamón', 3, 300.00),
(73, 59, 'Grande', 'Jamón', 4, 500.00),
(74, 60, 'Grande', 'Piña', 3, 400.00),
(75, 60, 'Chica', 'Jamón', 1, 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int NOT NULL,
  `nombre_cliente` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `nombre_cliente`, `direccion`, `telefono`, `fecha`, `total`) VALUES
(1, 'Ana López', 'Calle 1', '1111111111', '2026-01-05', 300.00),
(2, 'Carlos Ruiz', 'Calle 2', '2222222222', '2026-01-12', 450.00),
(3, 'María García', 'Calle 3', '3333333333', '2026-01-18', 200.00),
(4, 'José Pérez', 'Calle 4', '4444444444', '2026-01-22', 600.00),
(5, 'Luisa Fernanda', 'Calle 5', '5555555555', '2026-01-29', 350.00),
(6, 'Pedro Infante', 'Av. 1', '1111111112', '2026-02-02', 400.00),
(7, 'Cantinflas', 'Av. 2', '2222222223', '2026-02-10', 550.00),
(8, 'Frida Kahlo', 'Av. 3', '3333333334', '2026-02-14', 300.00),
(9, 'Diego Rivera', 'Av. 4', '4444444445', '2026-02-20', 700.00),
(10, 'Sor Juana', 'Av. 5', '5555555556', '2026-02-28', 250.00),
(11, 'Pancho Villa', 'Calle 10', '1111111113', '2026-03-05', 350.00),
(12, 'Emiliano Zapata', 'Calle 11', '2222222224', '2026-03-12', 500.00),
(13, 'Benito Juárez', 'Calle 12', '3333333335', '2026-03-18', 450.00),
(14, 'Miguel Hidalgo', 'Calle 13', '4444444446', '2026-03-25', 600.00),
(15, 'Josefa Ortiz', 'Calle 14', '5555555557', '2026-03-30', 300.00),
(16, 'Luis Miguel', 'Paseo 1', '1111111114', '2026-04-04', 800.00),
(17, 'Alejandro Fernández', 'Paseo 2', '2222222225', '2026-04-11', 750.00),
(18, 'Thalía', 'Paseo 3', '3333333336', '2026-04-17', 400.00),
(19, 'Paulina Rubio', 'Paseo 4', '4444444447', '2026-04-23', 350.00),
(20, 'Gloria Trevi', 'Paseo 5', '5555555558', '2026-04-29', 500.00),
(21, 'Mario Juárez', '5 de Mayo #123', '4777872300', '2026-05-05', 550.00),
(22, 'Juan Ramírez', 'Blvd. Adolfo López Mateos #456', '4771234567', '2026-05-08', 250.00),
(23, 'Luz Meriño', 'Calle Hidalgo #89', '4779876543', '2026-05-15', 400.00),
(24, 'Sofía Ramírez', 'Av. Juárez #101', '4775556677', '2026-05-20', 300.00),
(25, 'Carlos Tenorio', 'Calle Morelos #22', '4774443322', '2026-05-28', 600.00),
(26, 'Laura Sánchez', 'Calle Zaragoza #5', '4771112233', '2026-06-02', 350.00),
(27, 'Pedro Gómez', 'Av. Universidad #100', '4772223344', '2026-06-10', 450.00),
(28, 'Marta Díaz', 'Calle Reforma #50', '4773334455', '2026-06-15', 200.00),
(29, 'Jorge Torres', 'Blvd. Campestre #12', '4774445566', '2026-06-22', 700.00),
(30, 'Elena Ruiz', 'Calle Pino #8', '4775556677', '2026-06-29', 500.00),
(31, 'Roberto Carlos', 'Av. Sol #1', '1111111115', '2026-07-03', 400.00),
(32, 'Shakira', 'Av. Luna #2', '2222222226', '2026-07-10', 650.00),
(33, 'Ricky Martin', 'Av. Estrella #3', '3333333337', '2026-07-16', 550.00),
(34, 'Enrique Iglesias', 'Av. Mar #4', '4444444448', '2026-07-22', 800.00),
(35, 'Jennifer López', 'Av. Cielo #5', '5555555559', '2026-07-28', 350.00),
(36, 'Lionel Messi', 'Estadio 1', '1111111116', '2026-08-05', 900.00),
(37, 'Cristiano Ronaldo', 'Estadio 2', '2222222227', '2026-08-12', 850.00),
(38, 'Neymar Jr', 'Estadio 3', '3333333338', '2026-08-18', 700.00),
(39, 'Kylian Mbappé', 'Estadio 4', '4444444449', '2026-08-24', 600.00),
(40, 'Erling Haaland', 'Estadio 5', '5555555560', '2026-08-30', 500.00),
(41, 'Bill Gates', 'Microsoft 1', '1111111117', '2026-09-04', 1000.00),
(42, 'Steve Jobs', 'Apple 2', '2222222228', '2026-09-11', 1200.00),
(43, 'Elon Musk', 'Tesla 3', '3333333339', '2026-09-17', 1500.00),
(44, 'Mark Zuckerberg', 'Meta 4', '4444444450', '2026-09-23', 800.00),
(45, 'Jeff Bezos', 'Amazon 5', '5555555561', '2026-09-29', 950.00),
(46, 'Mario Bros', 'Hongos 1', '1111111118', '2026-10-02', 300.00),
(47, 'Luigi', 'Hongos 2', '2222222229', '2026-10-09', 350.00),
(48, 'Peach', 'Castillo 3', '3333333340', '2026-10-15', 400.00),
(49, 'Bowser', 'Fuego 4', '4444444451', '2026-10-21', 600.00),
(50, 'Yoshi', 'Isla 5', '5555555562', '2026-10-27', 450.00),
(51, 'Clark Kent', 'Metrópolis 1', '1111111119', '2026-11-05', 500.00),
(52, 'Bruce Wayne', 'Gotham 2', '2222222230', '2026-11-11', 700.00),
(53, 'Diana Prince', 'Isla 3', '3333333341', '2026-11-17', 800.00),
(54, 'Barry Allen', 'Central 4', '4444444452', '2026-11-23', 550.00),
(55, 'Hal Jordan', 'Costa 5', '5555555563', '2026-11-29', 600.00),
(56, 'Santa Claus', 'Polo Norte 1', '1111111120', '2026-12-05', 1000.00),
(57, 'Rudolph', 'Polo Norte 2', '2222222231', '2026-12-12', 850.00),
(58, 'Grinch', 'Monte 3', '3333333342', '2026-12-18', 300.00),
(59, 'Jack Skellington', 'Halloween 4', '4444444453', '2026-12-24', 500.00),
(60, 'Olaf', 'Hielo 5', '5555555564', '2026-12-31', 450.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id_detalle` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
