-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: Гитарный_конструктор
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `Анкер`
--

DROP TABLE IF EXISTS `Анкер`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Анкер` (
  `Код` int unsigned NOT NULL AUTO_INCREMENT,
  `Тип_анкера` text,
  `Примерная_цена` int DEFAULT NULL,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Анкер`
--

LOCK TABLES `Анкер` WRITE;
/*!40000 ALTER TABLE `Анкер` DISABLE KEYS */;
INSERT INTO `Анкер` VALUES (1,'Kurnik',3500),(2,'Chirik',4500),(3,'Vodyan',10500);
/*!40000 ALTER TABLE `Анкер` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Бридж`
--

DROP TABLE IF EXISTS `Бридж`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Бридж` (
  `Код` int unsigned NOT NULL AUTO_INCREMENT,
  `Фирма` text,
  `Модель` text,
  `Примерная_цена` int DEFAULT NULL,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Бридж`
--

LOCK TABLES `Бридж` WRITE;
/*!40000 ALTER TABLE `Бридж` DISABLE KEYS */;
INSERT INTO `Бридж` VALUES (1,'MAXX_Volume','3x5c21',2000),(2,'Petushara_na_base','zxc322',500),(3,'Zvenyashie_bubenci','dzin2573',1500);
/*!40000 ALTER TABLE `Бридж` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Вид_сборки`
--

DROP TABLE IF EXISTS `Вид_сборки`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Вид_сборки` (
  `Код` int unsigned NOT NULL AUTO_INCREMENT,
  `Сборка` text,
  `Цена` int DEFAULT NULL,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Вид_сборки`
--

LOCK TABLES `Вид_сборки` WRITE;
/*!40000 ALTER TABLE `Вид_сборки` DISABLE KEYS */;
INSERT INTO `Вид_сборки` VALUES (1,'Na_pohuy',200),(2,'Na_otyebis',2000),(3,'Na_zaebis',20000);
/*!40000 ALTER TABLE `Вид_сборки` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Заказ`
--

DROP TABLE IF EXISTS `Заказ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Заказ` (
  `Код` int unsigned NOT NULL AUTO_INCREMENT,
  `ФИО_клиента` text,
  `Номер_телефона` text,
  `Дата_заказа` datetime DEFAULT NULL,
  `Сотрудник` int unsigned DEFAULT NULL,
  `Материал_грифа` int unsigned DEFAULT NULL,
  `Колки` int unsigned DEFAULT NULL,
  `Анкер` int unsigned DEFAULT NULL,
  `Бридж` int unsigned DEFAULT NULL,
  `Электронная_начинка` int unsigned DEFAULT NULL,
  `Покраска` int unsigned DEFAULT NULL,
  `Струны` int unsigned DEFAULT NULL,
  `Дополнительные_пожелания` mediumtext,
  `Вид_сборки` int unsigned DEFAULT NULL,
  `Материал_корпуса` int unsigned DEFAULT NULL,
  `Подтверждение_оплаты` tinyint(1) DEFAULT NULL,
  `3D_Модель` text,
  `Изображение_аэрографии` text,
  `Звукосниматель` int unsigned DEFAULT NULL,
  `Email` text,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Заказ`
--

LOCK TABLES `Заказ` WRITE;
/*!40000 ALTER TABLE `Заказ` DISABLE KEYS */;
INSERT INTO `Заказ` VALUES (1,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(500,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(501,'Забугор','+7911','2030-05-20 20:00:00',1,1,1,1,1,1,1,1,'KUK',1,1,1,'kik','wer',1,'daflmalm@mail.ru');
/*!40000 ALTER TABLE `Заказ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Звукосниматель`
--

DROP TABLE IF EXISTS `Звукосниматель`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Звукосниматель` (
  `Код` int unsigned NOT NULL AUTO_INCREMENT,
  `Фирма` text,
  `Модель` text,
  `Примерная_цена` int DEFAULT NULL,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Звукосниматель`
--

LOCK TABLES `Звукосниматель` WRITE;
/*!40000 ALTER TABLE `Звукосниматель` DISABLE KEYS */;
INSERT INTO `Звукосниматель` VALUES (1,'MAXXX_Zvuk','Razryv_ochka',10000),(2,'Petushara_na_base','Perdyashiy_bass',1000),(3,'Petushara_na_base','Norm_bass',123400),(4,'Petushara_na_base','Norm_bass',123400);
/*!40000 ALTER TABLE `Звукосниматель` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Колки`
--

DROP TABLE IF EXISTS `Колки`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Колки` (
  `Код` int unsigned NOT NULL AUTO_INCREMENT,
  `Фирма` text,
  `Модель` text,
  `Примерная_цена` int DEFAULT NULL,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Колки`
--

LOCK TABLES `Колки` WRITE;
/*!40000 ALTER TABLE `Колки` DISABLE KEYS */;
INSERT INTO `Колки` VALUES (1,'Zvenyashie_bubenci','bonk2981',100),(2,'Zvenyashie_bubenci','bonk0009',200),(3,'MAXXX_Zvuk','Ebash3000',3000);
/*!40000 ALTER TABLE `Колки` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Материал_грифа`
--

DROP TABLE IF EXISTS `Материал_грифа`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Материал_грифа` (
  `Код` int unsigned NOT NULL AUTO_INCREMENT,
  `Материал` text,
  `Примерная_цена` int DEFAULT NULL,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Материал_грифа`
--

LOCK TABLES `Материал_грифа` WRITE;
/*!40000 ALTER TABLE `Материал_грифа` DISABLE KEYS */;
INSERT INTO `Материал_грифа` VALUES (1,'Govno',1000),(2,'Derevo',2000),(3,'Metalllll',12000);
/*!40000 ALTER TABLE `Материал_грифа` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Материал_корпуса`
--

DROP TABLE IF EXISTS `Материал_корпуса`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Материал_корпуса` (
  `Код` int unsigned NOT NULL AUTO_INCREMENT,
  `Материал` text,
  `Примерная_цена` int DEFAULT NULL,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Материал_корпуса`
--

LOCK TABLES `Материал_корпуса` WRITE;
/*!40000 ALTER TABLE `Материал_корпуса` DISABLE KEYS */;
INSERT INTO `Материал_корпуса` VALUES (1,'Govno',100),(2,'Derevo',1000),(3,'Metallllll',10000);
/*!40000 ALTER TABLE `Материал_корпуса` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Покраска`
--

DROP TABLE IF EXISTS `Покраска`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Покраска` (
  `Код` int unsigned NOT NULL AUTO_INCREMENT,
  `Тип` text,
  `Цена` int DEFAULT NULL,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Покраска`
--

LOCK TABLES `Покраска` WRITE;
/*!40000 ALTER TABLE `Покраска` DISABLE KEYS */;
INSERT INTO `Покраска` VALUES (1,'Na_pohui',200),(2,'Na_otyebis',2000),(3,'Na_zaebis',20000);
/*!40000 ALTER TABLE `Покраска` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Сотрудники`
--

DROP TABLE IF EXISTS `Сотрудники`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Сотрудники` (
  `Код` int unsigned NOT NULL AUTO_INCREMENT,
  `ФИО` text,
  `Должность` text,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Сотрудники`
--

LOCK TABLES `Сотрудники` WRITE;
/*!40000 ALTER TABLE `Сотрудники` DISABLE KEYS */;
INSERT INTO `Сотрудники` VALUES (2,'Чернецкий Евгений Сергеевич','Базист'),(3,'Галкин Никита Алексеевич','Программист'),(4,'Смирнов Ярослав Владимирович','Руководитель проекта'),(5,'Гном Гномыч','Дрочила'),(6,'Ванька Встанька','Старший дрочила'),(7,'Курилка 8й общаги','Менеджер по подбору дрочил');
/*!40000 ALTER TABLE `Сотрудники` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Струны`
--

DROP TABLE IF EXISTS `Струны`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Струны` (
  `Код` int unsigned NOT NULL AUTO_INCREMENT,
  `Фирма` text,
  `Модель` text,
  `Примерная_цена` int DEFAULT NULL,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Струны`
--

LOCK TABLES `Струны` WRITE;
/*!40000 ALTER TABLE `Струны` DISABLE KEYS */;
INSERT INTO `Струны` VALUES (1,'MAXX_Volume','Металлический_дрочила',2000),(2,'MAXX_Volume','Нейлоновый_дрочила',1000),(3,'Petushara_na_base','Нейлоновый_петушок',500);
/*!40000 ALTER TABLE `Струны` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Электронная_начинка`
--

DROP TABLE IF EXISTS `Электронная_начинка`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Электронная_начинка` (
  `Код` int unsigned NOT NULL AUTO_INCREMENT,
  `Конфигурация` mediumtext,
  `Примерная_цена` int DEFAULT NULL,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Электронная_начинка`
--

LOCK TABLES `Электронная_начинка` WRITE;
/*!40000 ALTER TABLE `Электронная_начинка` DISABLE KEYS */;
INSERT INTO `Электронная_начинка` VALUES (1,'Strannaya',1500),(2,'Interesnaya',2500),(3,'Nevyebennaya',5500);
/*!40000 ALTER TABLE `Электронная_начинка` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-30 23:56:52
