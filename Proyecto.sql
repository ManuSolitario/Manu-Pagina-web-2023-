-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Proyecto
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `Armamento`
--

DROP TABLE IF EXISTS `Armamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Armamento` (
  `idArmamento` int NOT NULL,
  `Armaduras` varchar(800) DEFAULT NULL,
  `Armas` varchar(800) DEFAULT NULL,
  `Equipo de Asedio` varchar(800) DEFAULT NULL,
  `Tropas basicas` varchar(800) DEFAULT NULL,
  `Tropas regionales` varchar(800) DEFAULT NULL,
  `Descripion` varchar(8000) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idArmamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Armamento`
--

LOCK TABLES `Armamento` WRITE;
/*!40000 ALTER TABLE `Armamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `Armamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Batallas`
--

DROP TABLE IF EXISTS `Batallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Batallas` (
  `idBatallas` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Fecha_Inicio` date DEFAULT NULL,
  `Fecha_Fin` date DEFAULT NULL,
  `Descripion` varchar(8000) DEFAULT NULL,
  `Asedios` varchar(45) DEFAULT NULL,
  `Guerras` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idBatallas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Batallas`
--

LOCK TABLES `Batallas` WRITE;
/*!40000 ALTER TABLE `Batallas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Batallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Civilizaciones`
--

DROP TABLE IF EXISTS `Civilizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Civilizaciones` (
  `idCivilizaciones` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripion` varchar(8000) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `Elementos_idElementos` int NOT NULL,
  PRIMARY KEY (`idCivilizaciones`),
  KEY `fk_Civilizaciones_Elementos1_idx` (`Elementos_idElementos`),
  CONSTRAINT `fk_Civilizaciones_Elementos1` FOREIGN KEY (`Elementos_idElementos`) REFERENCES `Elementos` (`idElementos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Civilizaciones`
--

LOCK TABLES `Civilizaciones` WRITE;
/*!40000 ALTER TABLE `Civilizaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `Civilizaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Elementos`
--

DROP TABLE IF EXISTS `Elementos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Elementos` (
  `idElementos` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Pais` varchar(45) DEFAULT NULL,
  `descripcion` varchar(8000) DEFAULT NULL,
  `Continente` varchar(45) DEFAULT NULL,
  `Categoria` varchar(45) DEFAULT NULL,
  `Introduccion` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idElementos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Elementos`
--

LOCK TABLES `Elementos` WRITE;
/*!40000 ALTER TABLE `Elementos` DISABLE KEYS */;
INSERT INTO `Elementos` VALUES (1,'Castillo de Javier','España','Castillo pequeño el cual resistio muchos asedios, se ubica en españa','Europa','Castillos','En europa se ubican muchos castillos de la epoca medieval'),(2,'Castillo de Leeds','Inglaterra','Castillo enorme en la cual se produjo una gran batalla, esta en Inglaterra','Europa','Castillos','En inglaterra se ubican muchos castillos de la epoca medieval'),(3,'Castillo de Pyonang','China','Castillo en un lago en China','Asia','Castillos','En Asia se ubican los primeros castillos '),(4,'Castillo de Dos pilas','Guatemala','Castillo enorme en la cual se produjo una gran batalla, esta en Guatemala','America','Castillos','Los mayas Tuvieron muchas guerras civiles'),(5,'Castillo de Dos pilas','Mali','Castillo enorme en la cual se produjo una gran batalla, esta en Guatemala','Africa','Castillos','Los malies Tuvieron muchas guerras civiles'),(6,'Castillo de Dos pilas','Camboya','Castillo enorme en la cual se produjo una gran batalla, esta en Guatemala','sudeste asiatico','Castillos','Los jemeres Tuvieron muchas guerras civiles'),(9,'Castillo de Dos pilas','Mali','Castillo enorme en la cual se produjo una gran batalla, esta en Guatemala','Africa','Castillos','Los malies Tuvieron muchas guerras civiles');
/*!40000 ALTER TABLE `Elementos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fotos`
--

DROP TABLE IF EXISTS `Fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fotos` (
  `idFotos` int NOT NULL,
  `Ruta` varchar(150) DEFAULT NULL,
  `Elementos_idElementos` int NOT NULL,
  PRIMARY KEY (`idFotos`),
  KEY `fk_Fotos_Elementos1_idx` (`Elementos_idElementos`),
  CONSTRAINT `fk_Fotos_Elementos1` FOREIGN KEY (`Elementos_idElementos`) REFERENCES `Elementos` (`idElementos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fotos`
--

LOCK TABLES `Fotos` WRITE;
/*!40000 ALTER TABLE `Fotos` DISABLE KEYS */;
INSERT INTO `Fotos` VALUES (1,'../imagenes/Mongolvscruzado.jpeg',1),(2,'../imagenes/gray-red-medieval-knights-z5itki8lwawcasnh.jpg',1),(3,'../imagenes/main-qimg-0af4729420dad161d12a1469c53e3115-lq.jpeg',1),(4,'../imagenes/the-alcazar-of-segovia-castile-and-leon-spain-11th-19th-news-photo-1626953776.jpg',1),(5,'../imagenes/gray-red-medieval-knights-z5itki8lwawcasnh.jpg',2),(6,'../imagenes/main-qimg-0af4729420dad161d12a1469c53e3115-lq.jpeg',2),(7,'../imagenes/the-alcazar-of-segovia-castile-and-leon-spain-11th-19th-news-photo-1626953776.jpg',2),(8,'../imagenes/the-alcazar-of-segovia-castile-and-leon-spain-11th-19th-news-photo-1626953776.jpg',2),(9,'../imagenes/gray-red-medieval-knights-z5itki8lwawcasnh.jpg',3),(10,'../imagenes/main-qimg-0af4729420dad161d12a1469c53e3115-lq.jpeg',3),(17,'../imagenes/gray-red-medieval-knights-z5itki8lwawcasnh.jpg',5),(18,'../imagenes/main-qimg-0af4729420dad161d12a1469c53e3115-lq.jpeg',5),(19,'../imagenes/the-alcazar-of-segovia-castile-and-leon-spain-11th-19th-news-photo-1626953776.jpg',5),(20,'../imagenes/the-alcazar-of-segovia-castile-and-leon-spain-11th-19th-news-photo-1626953776.jpg',5),(21,'../imagenes/Mongolvscruzado.jpeg',3),(22,'../imagenes/gray-red-medieval-knights-z5itki8lwawcasnh.jpg',3),(23,'../imagenes/main-qimg-0af4729420dad161d12a1469c53e3115-lq.jpeg',6),(24,'../imagenes/the-alcazar-of-segovia-castile-and-leon-spain-11th-19th-news-photo-1626953776.jpg',6),(25,'../imagenes/Mongolvscruzado.jpeg',6),(26,'../imagenes/gray-red-medieval-knights-z5itki8lwawcasnh.jpg',6);
/*!40000 ALTER TABLE `Fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fotos2`
--

DROP TABLE IF EXISTS `Fotos2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fotos2` (
  `idFotos2` int NOT NULL,
  `Ruta` varchar(150) DEFAULT NULL,
  `Armamento_idArmamento` int NOT NULL,
  `Batallas_idBatallas` int NOT NULL,
  PRIMARY KEY (`idFotos2`),
  KEY `fk_Fotos2_Armamento1_idx` (`Armamento_idArmamento`),
  KEY `fk_Fotos2_Batallas1_idx` (`Batallas_idBatallas`),
  CONSTRAINT `fk_Fotos2_Armamento1` FOREIGN KEY (`Armamento_idArmamento`) REFERENCES `Armamento` (`idArmamento`),
  CONSTRAINT `fk_Fotos2_Batallas1` FOREIGN KEY (`Batallas_idBatallas`) REFERENCES `Batallas` (`idBatallas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fotos2`
--

LOCK TABLES `Fotos2` WRITE;
/*!40000 ALTER TABLE `Fotos2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fotos2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mas sobre`
--

DROP TABLE IF EXISTS `Mas sobre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mas sobre` (
  `idMas sobre` int NOT NULL,
  `Elementos_idElementos` int NOT NULL,
  PRIMARY KEY (`idMas sobre`),
  KEY `fk_Mas sobre_Elementos1_idx` (`Elementos_idElementos`),
  CONSTRAINT `fk_Mas sobre_Elementos1` FOREIGN KEY (`Elementos_idElementos`) REFERENCES `Elementos` (`idElementos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mas sobre`
--

LOCK TABLES `Mas sobre` WRITE;
/*!40000 ALTER TABLE `Mas sobre` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mas sobre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Suscripciones`
--

DROP TABLE IF EXISTS `Suscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Suscripciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `requerimiento` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suscripciones`
--

LOCK TABLES `Suscripciones` WRITE;
/*!40000 ALTER TABLE `Suscripciones` DISABLE KEYS */;
INSERT INTO `Suscripciones` VALUES (1,'GDFSGDFGDFG','DFGBDFGDFG',17,''),(2,'GDFSGDFGDFG','DFGBDFGDFG',17,''),(3,'GDFSGDFGDFG','DFGBDFGDFG',17,'Dragonbolseta'),(4,'dsfhgtytyhty','utytyjtyjtyj',234234,'hgtrhtyjnhbfgdhgfdn');
/*!40000 ALTER TABLE `Suscripciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-21 17:19:41
