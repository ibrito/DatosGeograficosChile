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
-- Table structure for table `comunas`
--

DROP TABLE IF EXISTS `comunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comunas` (
  `idcomunas` int NOT NULL AUTO_INCREMENT,
  `comunas_nombre` varchar(255) NOT NULL,
  `comunas_provinciaId` int NOT NULL,
  PRIMARY KEY (`idcomunas`),
  KEY `fk_comunas_provincias1_idx` (`comunas_provinciaId`),
  CONSTRAINT `fk_comunas_provincias1` FOREIGN KEY (`comunas_provinciaId`) REFERENCES `provincias` (`idprovincias`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunas`
--

LOCK TABLES `comunas` WRITE;
/*!40000 ALTER TABLE `comunas` DISABLE KEYS */;
INSERT INTO `comunas` VALUES (1,'Arica',1),(2,'Camarones',1),(3,'Putre',2),(4,'General Lagos',2),(5,'Alto Hospicio',3),(6,'Iquique',3),(7,'Pica',4),(8,'Huara',4),(9,'Colchane',4),(10,'Camiña',4),(11,'Pozo Almonte',4),(12,'Taltal',5),(13,'Sierra Gorda',5),(14,'Mejillones',5),(15,'Antofagasta',5),(16,'María Elena',6),(17,'Tocopilla',6),(18,'San Pedro de Atacama',7),(19,'Ollagüe',7),(20,'Calama',7),(21,'Tierra Amarilla',8),(22,'Caldera',8),(23,'Copiapó',8),(24,'Huasco',9),(25,'Freirina',9),(26,'Alto del Carmen',9),(27,'Vallenar',9),(28,'Chañaral',10),(29,'Diego de Almagro',10),(30,'Illapel',11),(31,'Canela',11),(32,'Los Vilos',11),(33,'Salamanca',11),(34,'La Serena',12),(35,'Coquimbo',12),(36,'Andacollo',12),(37,'La Higuera',12),(38,'Paihuano',12),(39,'Vicuña',12),(40,'Ovalle',13),(41,'Combarbalá',13),(42,'Monte Patria',13),(43,'Punitaqui',13),(44,'Río Hurtado',13),(45,'Isla de Pascua',14),(46,'Los Andes',15),(47,'Calle Larga',15),(48,'Rinconada',15),(49,'San Esteban',15),(50,'Quillota',16),(51,'La Calera',16),(52,'Hijuelas',16),(53,'La Cruz',16),(54,'Nogales',16),(55,'Valparaíso',17),(56,'Casablanca',17),(57,'Concón',17),(58,'Juan Fernández',17),(59,'Puchuncaví',17),(60,'Quintero',17),(61,'Viña del Mar',17),(62,'La Ligua',18),(63,'Cabildo',18),(64,'Papudo',18),(65,'Petorca',18),(66,'Zapallar',18),(67,'San Antonio',19),(68,'Algarrobo',19),(69,'Cartagena',19),(70,'El Quisco',19),(71,'El Tabo',19),(72,'Santo Domingo',19),(73,'San Felipe',20),(74,'Catemu',20),(75,'Llaillay',20),(76,'Panquehue',20),(77,'Putaendo',20),(78,'Santa María',20),(79,'Quilpué',21),(80,'Limache',21),(81,'Olmué',21),(82,'Villa Alemana',21),(83,'Rancagua',22),(84,'Codegua',22),(85,'Coinco',22),(86,'Coltauco',22),(87,'Doñihue',22),(88,'Graneros',22),(89,'Las Cabras',22),(90,'Machalí',22),(91,'Malloa',22),(92,'Mostazal',22),(93,'Olivar',22),(94,'Peumo',22),(95,'Pichidegua',22),(96,'Quinta de Tilcoco',22),(97,'Rengo',22),(98,'Requínoa',22),(99,'San Vicente',22),(100,'Navidad',23),(101,'Paredones',23),(102,'Pichilemu',23),(103,'La Estrella',23),(104,'Litueche',23),(105,'Marchihue',23),(106,'San Fernando',24),(107,'Chépica',24),(108,'Chimbarongo',24),(109,'Lolol',24),(110,'Nancagua',24),(111,'Palmilla',24),(112,'Peralillo',24),(113,'Placilla',24),(114,'Pumanque',24),(115,'Santa Cruz',24),(116,'Parral',25),(117,'Linares',25),(118,'Colbún',25),(119,'Longaví',25),(120,'Retiro',25),(121,'San Javier',25),(122,'Villa Alegre',25),(123,'Yerbas Buenas',25),(124,'Curicó',26),(125,'Hualañé',26),(126,'Licantén',26),(127,'Molina',26),(128,'Rauco',26),(129,'Romeral',26),(130,'Sagrada Familia',26),(131,'Teno',26),(132,'Vichuquén',26),(133,'Cauquenes',27),(134,'Chanco',27),(135,'Pelluhue',27),(136,'Talca',28),(137,'Constitución',28),(138,'Curepto',28),(139,'Empedrado',28),(140,'Maule',28),(141,'Pelarco',28),(142,'Pencahue',28),(143,'Río Claro',28),(144,'San Clemente',28),(145,'San Rafael',28),(146,'Quirihue',29),(147,'Cobquecura',29),(148,'Coelemu',29),(149,'Ninhue',29),(150,'Portezuelo',29),(151,'Ránquil',29),(152,'Treguaco',29),(153,'San Carlos',30),(154,'Coihueco',30),(155,'Ñiquén',30),(156,'San Fabián',30),(157,'San Nicolás',30),(158,'Chillán',31),(159,'Bulnes',31),(160,'Chillán Viejo',31),(161,'El Carmen',31),(162,'Pemuco',31),(163,'Pinto',31),(164,'Quillón',31),(165,'San Ignacio',31),(166,'Yungay',31),(167,'Concepción',32),(168,'Coronel',32),(169,'Chiguayante',32),(170,'Florida',32),(171,'Hualqui',32),(172,'Lota',32),(173,'Penco',32),(174,'San Pedro de la Paz',32),(175,'Santa Juana',32),(176,'Talcahuano',32),(177,'Tomé',32),(178,'Hualpén',32),(179,'Lebu',33),(180,'Arauco',33),(181,'Cañete',33),(182,'Contulmo',33),(183,'Curanilahue',33),(184,'Los Alamos',33),(185,'Tirúa',33),(186,'Los Angeles',34),(187,'Antuco',34),(188,'Laja',34),(189,'Mulchén',34),(190,'Nacimiento',34),(191,'Negrete',34),(192,'Quilaco',34),(193,'Quilleco',34),(194,'San Rosendo',34),(195,'Santa Bárbara',34),(196,'Tucapel',34),(197,'Alto Biobío',34),(198,'Cabrero',34),(199,'Yumbel',34),(200,'Purén',35),(201,'Ercilla',35),(202,'Renaico',35),(203,'Traiguén',35),(204,'Angol',35),(205,'Collipulli',35),(206,'Curacautín',35),(207,'Lonquimay',35),(208,'Los Sauces',35),(209,'Lumaco',35),(210,'Victoria',35),(211,'Gorbea',36),(212,'Lautaro',36),(213,'Loncoche',36),(214,'Melipeuco',36),(215,'Nueva Imperial',36),(216,'Padre Las Casas',36),(217,'Perquenco',36),(218,'Pitrufquén',36),(219,'Pucón',36),(220,'Saavedra',36),(221,'Teodoro Schmidt',36),(222,'Toltén',36),(223,'Vilcún',36),(224,'Villarrica',36),(225,'Cholchol',36),(226,'Temuco',36),(227,'Carahue',36),(228,'Cunco',36),(229,'Curarrehue',36),(230,'Freire',36),(231,'Galvarino',36),(232,'Valdivia',37),(233,'Corral',37),(234,'Lanco',37),(235,'Los Lagos',37),(236,'Máfil',37),(237,'Mariquina',37),(238,'Paillaco',37),(239,'Panguipulli',37),(240,'La Unión',38),(241,'Futrono',38),(242,'Lago Ranco',38),(243,'Río Bueno',38),(244,'Quinchao',39),(245,'Castro',39),(246,'Ancud',39),(247,'Chonchi',39),(248,'Curaco de Vélez',39),(249,'Dalcahue',39),(250,'Puqueldón',39),(251,'Queilén',39),(252,'Quellón',39),(253,'Quemchi',39),(254,'Río Negro',40),(255,'Osorno',40),(256,'Puerto Octay',40),(257,'Purranque',40),(258,'Puyehue',40),(259,'San Juan de la Costa',40),(260,'San Pablo',40),(261,'Puerto Montt',41),(262,'Calbuco',41),(263,'Cochamó',41),(264,'Fresia',41),(265,'Frutillar',41),(266,'Los Muermos',41),(267,'Llanquihue',41),(268,'Maullín',41),(269,'Puerto Varas',41),(270,'Chaitén',42),(271,'Futaleufú',42),(272,'Hualaihué',42),(273,'Palena',42),(274,'Aysén',43),(275,'Cisnes',43),(276,'Guaitecas',43),(277,'Lago Verde',44),(278,'Coyhaique',44),(279,'Cochrane',45),(280,'O\'Higgins',45),(281,'Tortel',45),(282,'Chile Chico',46),(283,'Río Ibáñez',46),(284,'Porvenir',47),(285,'Primavera',47),(286,'Timaukel',47),(287,'Punta Arenas',48),(288,'Laguna Blanca',48),(289,'Río Verde',48),(290,'San Gregorio',48),(291,'Natales',49),(292,'Torres del Paine',49),(293,'Cabo de Hornos',50),(294,'Antártica',50),(295,'Talagante',51),(296,'El Monte',51),(297,'Isla de Maipo',51),(298,'Padre Hurtado',51),(299,'Peñaflor',51),(300,'La Pintana',52),(301,'La Reina',52),(302,'Las Condes',52),(303,'Lo Barnechea',52),(304,'Lo Espejo',52),(305,'Lo Prado',52),(306,'Macul',52),(307,'Maipú',52),(308,'Ñuñoa',52),(309,'Pedro Aguirre Cerda',52),(310,'Peñalolén',52),(311,'Providencia',52),(312,'Pudahuel',52),(313,'Quilicura',52),(314,'Quinta Normal',52),(315,'Recoleta',52),(316,'Renca',52),(317,'San Joaquín',52),(318,'San Miguel',52),(319,'San Ramón',52),(320,'Vitacura',52),(321,'Santiago',52),(322,'Cerrillos',52),(323,'Cerro Navia',52),(324,'Conchalí',52),(325,'El Bosque',52),(326,'Estación Central',52),(327,'Huechuraba',52),(328,'Independencia',52),(329,'La Cisterna',52),(330,'La Florida',52),(331,'La Granja',52),(332,'Colina',53),(333,'Lampa',53),(334,'Tiltil',53),(335,'Puente Alto',54),(336,'Pirque',54),(337,'San José de Maipo',54),(338,'San Bernardo',55),(339,'Buin',55),(340,'Calera de Tango',55),(341,'Paine',55),(342,'Melipilla',56),(343,'Alhué',56),(344,'Curacaví',56),(345,'María Pinto',56),(346,'San Pedro',56);
/*!40000 ALTER TABLE `comunas` ENABLE KEYS */;
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
