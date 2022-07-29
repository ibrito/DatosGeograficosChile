CREATE DATABASE  IF NOT EXISTS `beteltrix` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `beteltrix`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: beteltrix
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincias` (
  `idprovincias` int NOT NULL AUTO_INCREMENT,
  `provincias_nombre` varchar(255) NOT NULL,
  `provincias_regionId` int NOT NULL,
  PRIMARY KEY (`idprovincias`),
  KEY `fk_provincias_regiones_idx` (`provincias_regionId`),
  CONSTRAINT `fk_provincias_regiones` FOREIGN KEY (`provincias_regionId`) REFERENCES `regiones` (`idregiones`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'Provincia de Arica',1),(2,'Provincia de Parinacota',1),(3,'Provincia de Iquique',2),(4,'Provincia de Tamarugal',2),(5,'Provincia de Antofagasta',3),(6,'Provincia de Tocopilla',3),(7,'Provincia de El Loa',3),(8,'Provincia de Copiapó',4),(9,'Provincia de Huasco',4),(10,'Provincia de Chañaral',4),(11,'Provincia de Choapa',5),(12,'Provincia de Elqui',5),(13,'Provincia de Limarí',5),(14,'Provincia de Isla de Pascua',6),(15,'Provincia de Los Andes',6),(16,'Provincia de Quillota',6),(17,'Provincia de Valparaíso',6),(18,'Provincia de Petorca',6),(19,'Provincia de San Antonio',6),(20,'Provincia de San Felipe de Aconcagua',6),(21,'Provincia de Marga Marga',6),(22,'Provincia de Cachapoal',7),(23,'Provincia de Cardenal Caro',7),(24,'Provincia de Colchagua',7),(25,'Provincia de Linares',8),(26,'Provincia de Curico',8),(27,'Provincia de Cauquenes',8),(28,'Provincia de Talca',8),(29,'Provincia de Itata',9),(30,'Provincia de Punilla',9),(31,'Provincia de Diguillín',9),(32,'Provincia de Concepción',10),(33,'Provincia de Arauco',10),(34,'Provincia de Bio-Bío',10),(35,'Provincia de Malleco',11),(36,'Provincia de Cautín',11),(37,'Provincia de Valdivia',12),(38,'Provincia de Ranco',12),(39,'Provincia de Chiloé',13),(40,'Provincia de Osorno',13),(41,'Provincia de Llanquihue',13),(42,'Provincia de Palena',13),(43,'Provincia de Aysén',14),(44,'Provincia de Coyhaique',14),(45,'Provincia de Capitán Prat',14),(46,'Provincia de General Carrera',14),(47,'Provincia de Tierra del Fuego',15),(48,'Provincia de Magallanes',15),(49,'Provincia de Última Esperanza',15),(50,'Provincia de Antártica Chilena',15),(51,'Provincia de Talagante',16),(52,'Provincia de Santiago',16),(53,'Provincia de Chacabuco',16),(54,'Provincia de Cordillera',16),(55,'Provincia de Maipo',16),(56,'Provincia de Melipilla',16);
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-29  9:35:45
