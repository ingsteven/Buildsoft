-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: buildsoft
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `estado_novedad`
--

DROP TABLE IF EXISTS `estado_novedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_novedad` (
  `id_estado_novedad` int NOT NULL AUTO_INCREMENT,
  `estado_novedad` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado_novedad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_novedad`
--

LOCK TABLES `estado_novedad` WRITE;
/*!40000 ALTER TABLE `estado_novedad` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado_novedad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha`
--

DROP TABLE IF EXISTS `ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ficha` (
  `id_ficha` int NOT NULL AUTO_INCREMENT,
  `nombre_ficha` varchar(45) NOT NULL,
  PRIMARY KEY (`id_ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha`
--

LOCK TABLES `ficha` WRITE;
/*!40000 ALTER TABLE `ficha` DISABLE KEYS */;
/*!40000 ALTER TABLE `ficha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha_has_trimestre`
--

DROP TABLE IF EXISTS `ficha_has_trimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ficha_has_trimestre` (
  `ficha_id_ficha` int NOT NULL,
  `trimestre_id_trimestre` int NOT NULL,
  PRIMARY KEY (`ficha_id_ficha`,`trimestre_id_trimestre`),
  KEY `fk_ficha_has_trimestre_trimestre1_idx` (`trimestre_id_trimestre`),
  KEY `fk_ficha_has_trimestre_ficha1_idx` (`ficha_id_ficha`),
  CONSTRAINT `fk_ficha_has_trimestre_ficha1` FOREIGN KEY (`ficha_id_ficha`) REFERENCES `ficha` (`id_ficha`),
  CONSTRAINT `fk_ficha_has_trimestre_trimestre1` FOREIGN KEY (`trimestre_id_trimestre`) REFERENCES `trimestre` (`id_trimestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha_has_trimestre`
--

LOCK TABLES `ficha_has_trimestre` WRITE;
/*!40000 ALTER TABLE `ficha_has_trimestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `ficha_has_trimestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novedad`
--

DROP TABLE IF EXISTS `novedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novedad` (
  `id_novedad` int NOT NULL AUTO_INCREMENT,
  `feche_novedad` date NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `link_documentos` varchar(45) NOT NULL,
  `estado_novedad_id_estado_novedad` int NOT NULL,
  `tipo_noveda_id_tipo_noveda` int NOT NULL,
  `Usuario_id_Usuario` int NOT NULL,
  PRIMARY KEY (`id_novedad`),
  KEY `fk_novedad_estado_novedad_idx` (`estado_novedad_id_estado_novedad`),
  KEY `fk_novedad_tipo_noveda1_idx` (`tipo_noveda_id_tipo_noveda`),
  KEY `fk_novedad_Usuario1_idx` (`Usuario_id_Usuario`),
  CONSTRAINT `fk_novedad_estado_novedad` FOREIGN KEY (`estado_novedad_id_estado_novedad`) REFERENCES `estado_novedad` (`id_estado_novedad`),
  CONSTRAINT `fk_novedad_tipo_noveda1` FOREIGN KEY (`tipo_noveda_id_tipo_noveda`) REFERENCES `tipo_noveda` (`id_tipo_noveda`),
  CONSTRAINT `fk_novedad_Usuario1` FOREIGN KEY (`Usuario_id_Usuario`) REFERENCES `usuario` (`id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novedad`
--

LOCK TABLES `novedad` WRITE;
/*!40000 ALTER TABLE `novedad` DISABLE KEYS */;
/*!40000 ALTER TABLE `novedad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permisos` (
  `id_permisos` int NOT NULL AUTO_INCREMENT,
  `nombre_permiso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_permisos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol_has_permisos`
--

DROP TABLE IF EXISTS `rol_has_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol_has_permisos` (
  `rol_id_rol` int NOT NULL,
  `permisos_id_permisos` int NOT NULL,
  PRIMARY KEY (`rol_id_rol`,`permisos_id_permisos`),
  KEY `fk_rol_has_permisos_permisos1_idx` (`permisos_id_permisos`),
  KEY `fk_rol_has_permisos_rol1_idx` (`rol_id_rol`),
  CONSTRAINT `fk_rol_has_permisos_permisos1` FOREIGN KEY (`permisos_id_permisos`) REFERENCES `permisos` (`id_permisos`),
  CONSTRAINT `fk_rol_has_permisos_rol1` FOREIGN KEY (`rol_id_rol`) REFERENCES `rol` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol_has_permisos`
--

LOCK TABLES `rol_has_permisos` WRITE;
/*!40000 ALTER TABLE `rol_has_permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol_has_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_documento` (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_noveda`
--

DROP TABLE IF EXISTS `tipo_noveda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_noveda` (
  `id_tipo_noveda` int NOT NULL AUTO_INCREMENT,
  `tipo_noveda` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_noveda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_noveda`
--

LOCK TABLES `tipo_noveda` WRITE;
/*!40000 ALTER TABLE `tipo_noveda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_noveda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trimestre`
--

DROP TABLE IF EXISTS `trimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trimestre` (
  `id_trimestre` int NOT NULL AUTO_INCREMENT,
  `trimestre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_trimestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trimestre`
--

LOCK TABLES `trimestre` WRITE;
/*!40000 ALTER TABLE `trimestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `trimestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_Usuario` int NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `rol_id_rol` int NOT NULL,
  `ficha_id_ficha` int NOT NULL,
  `tipo_documento_id_tipo_documento` int NOT NULL,
  PRIMARY KEY (`id_Usuario`),
  KEY `fk_Usuario_rol1_idx` (`rol_id_rol`),
  KEY `fk_Usuario_ficha1_idx` (`ficha_id_ficha`),
  KEY `fk_Usuario_tipo_documento1_idx` (`tipo_documento_id_tipo_documento`),
  CONSTRAINT `fk_Usuario_ficha1` FOREIGN KEY (`ficha_id_ficha`) REFERENCES `ficha` (`id_ficha`),
  CONSTRAINT `fk_Usuario_rol1` FOREIGN KEY (`rol_id_rol`) REFERENCES `rol` (`id_rol`),
  CONSTRAINT `fk_Usuario_tipo_documento1` FOREIGN KEY (`tipo_documento_id_tipo_documento`) REFERENCES `tipo_documento` (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-09 22:45:54
