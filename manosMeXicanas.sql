-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ManosMexicanas
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito` (
  `idCarrito` int NOT NULL AUTO_INCREMENT,
  `idProducto` int DEFAULT NULL,
  `idUsuario` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`idCarrito`),
  KEY `fk_carrito_producto_idx` (`idProducto`),
  KEY `fk_carrito_usuario_idx` (`idUsuario`),
  CONSTRAINT `fk_carrito_producto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`),
  CONSTRAINT `fk_carrito_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_categoria`),
  CONSTRAINT `fk_categoria_producto` FOREIGN KEY (`id_categoria`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id_color` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_color`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  CONSTRAINT `fk_color_producto` FOREIGN KEY (`id_color`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallePedido`
--

DROP TABLE IF EXISTS `detallePedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallePedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idPedido` int NOT NULL,
  `idProducto` int NOT NULL,
  `fecha` datetime NOT NULL,
  `precioTotal` double NOT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detallePedido_pedido_idx` (`idPedido`),
  KEY `fk_detallePedido_producto_idx` (`idProducto`),
  CONSTRAINT `fk_detallePedido_pedido` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`id`),
  CONSTRAINT `fk_detallePedido_producto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallePedido`
--

LOCK TABLES `detallePedido` WRITE;
/*!40000 ALTER TABLE `detallePedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallePedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domicilio`
--

DROP TABLE IF EXISTS `domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domicilio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int DEFAULT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `numeroExterior` varchar(10) DEFAULT NULL,
  `numeroInterior` varchar(10) DEFAULT NULL,
  `cp` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_domicilio_usuario_idx` (`idUsuario`),
  CONSTRAINT `fk_domicilio_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilio`
--

LOCK TABLES `domicilio` WRITE;
/*!40000 ALTER TABLE `domicilio` DISABLE KEYS */;
/*!40000 ALTER TABLE `domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operaciones`
--

DROP TABLE IF EXISTS `operaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idModulo` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_operaciones_modulo_idx` (`idModulo`),
  CONSTRAINT `fk_operaciones_modulo` FOREIGN KEY (`idModulo`) REFERENCES `modulo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operaciones`
--

LOCK TABLES `operaciones` WRITE;
/*!40000 ALTER TABLE `operaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `operaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `total` double NOT NULL,
  `idDomicilio` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_usuario_idx` (`idUsuario`),
  KEY `fk_pedido_domicilio_idx` (`idDomicilio`),
  CONSTRAINT `fk_pedido_domicilio` FOREIGN KEY (`idDomicilio`) REFERENCES `domicilio` (`id`),
  CONSTRAINT `fk_pedido_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) NOT NULL,
  `precio` double NOT NULL,
  `color` int NOT NULL,
  `tamaño` double NOT NULL,
  `categoria` int NOT NULL,
  `descripcion` varchar(70) NOT NULL,
  `imagen` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`, `nombre`) VALUES (1,'ADMIN'),(2,'USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role-operaciones`
--

DROP TABLE IF EXISTS `role-operaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role-operaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idRole` int DEFAULT NULL,
  `idOperacion` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role-operaciones_role_idx` (`idRole`),
  KEY `fk_role-operaciones_operaciones_idx` (`idOperacion`),
  CONSTRAINT `fk_role-operaciones_operaciones` FOREIGN KEY (`idOperacion`) REFERENCES `operaciones` (`id`),
  CONSTRAINT `fk_role-operaciones_role` FOREIGN KEY (`idRole`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role-operaciones`
--

LOCK TABLES `role-operaciones` WRITE;
/*!40000 ALTER TABLE `role-operaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `role-operaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `contraseña` varchar(64) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `apellido` varchar(25) NOT NULL,
  `role` int DEFAULT '2',
  `telefono` varchar(14) NOT NULL,
  `direccion` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_UNIQUE` (`correo`),
  KEY `fk_usuario_role_idx` (`role`),
  CONSTRAINT `fk_usuario_role` FOREIGN KEY (`role`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `nombre`, `correo`, `contraseña`, `create_time`, `apellido`, `role`, `telefono`, `direccion`, `status`) VALUES (2,'Enrique','gonherenrique@gmail.com','ca595a0169c071ca75b032c4d5d0c8f3988b77d67ef27e958fb02bda50f746bd','2024-06-21 14:40:12','Gonzalez',2,'7774670428',NULL,1),(3,'Montse','moon@gmail.com','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','2024-06-25 04:37:53','Pichardo',2,'777980',NULL,1),(4,'Erick','gonher@gmail.com','15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225','2024-06-25 21:19:50','Mireles',2,'7774670429',NULL,1),(5,'Mauro','mautro@gmail.com','15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225','2024-06-28 20:24:34','Bahena',2,'777980',NULL,1),(6,'Erick','manosmexicanasutez@gmail.com','91d1281a89ba8c602afd105eef40902732691e1143af64ab530afb7cce2cd5ea','2024-07-05 00:55:31','Mireles',1,' ',NULL,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ManosMexicanas'
--
/*!50003 DROP PROCEDURE IF EXISTS `loginAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `loginAdmin`(IN correo varchar(60), IN password varchar(64))
BEGIN
    DECLARE roleUser INT DEFAULT 2;
SELECT u.role INTO roleUser
FROM usuario u
WHERE u.correo = correo AND u.contraseña = sha2(password, 256);

IF roleUser = 1 THEN
    SELECT * FROM usuario u
    WHERE u.correo = correo AND u.contraseña = sha2(password, 256);
END IF;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registerUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registerUser`(IN nombre VARCHAR(25),IN apellido VARCHAR(25),
                              IN correo VARCHAR(60),IN telefono VARCHAR(14), contrasena VARCHAR(64))
BEGIN
    INSERT INTO usuario (usuario.nombre, usuario.correo, usuario.contraseña, usuario.apellido, usuario.telefono)
    VALUES (nombre,correo, sha2(contrasena,256), apellido,telefono);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-05 14:09:31
