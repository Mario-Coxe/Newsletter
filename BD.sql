-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: newsportal
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

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
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `AdminUserName` (`AdminUserName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'Mário Coxe','d0cc5ed8aecb1898032c48af57057b9f','mayuri.infospace@gmail.com',1,'2022-12-12 18:30:00','2023-08-27 23:05:12'),(2,'Sarabh','e10adc3949ba59abbe56e057f20f883e','saurabha@gmail.com',0,'2022-12-16 11:32:06',NULL);
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategory`
--

LOCK TABLES `tblcategory` WRITE;
/*!40000 ALTER TABLE `tblcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcomments`
--

DROP TABLE IF EXISTS `tblcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcomments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postId` int DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `postId` (`postId`),
  CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcomments`
--

LOCK TABLES `tblcomments` WRITE;
/*!40000 ALTER TABLE `tblcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpages`
--

LOCK TABLES `tblpages` WRITE;
/*!40000 ALTER TABLE `tblpages` DISABLE KEYS */;
INSERT INTO `tblpages` VALUES (1,'aboutus','Sobre ','<p style=\"text-align: justify; \">&nbsp;&nbsp;&nbsp;&nbsp;Olá! É ótimo ter vocês aqui no <b>NEWSLATTER</b>, onde estamos empenhados em trazer não apenas as últimas notícias e avanços emocionantes em tecnologia e ciência, mas também em fornecer tutoriais detalhados para ajudá-los a explorar e aproveitar ao máximo esses avanços.</p><p style=\"text-align: justify; \">&nbsp;&nbsp;&nbsp;&nbsp;Nosso compromisso é manter vocês informados sobre as descobertas mais recentes, os lançamentos de produtos mais empolgantes e as inovações que estão moldando o mundo ao nosso redor. Mas isso não é tudo!<br></p><p style=\"text-align: justify; \">&nbsp;&nbsp;&nbsp;&nbsp;Também reconhecemos a importância de ajudar vocês a aproveitar essas tecnologias e conhecimentos. Portanto, vamos trazer uma série de tutoriais escritos abrangendo diversos tópicos, desde dicas para iniciantes em tecnologia até guias avançados para entusiastas mais experientes. Se você deseja aprender a programar, explorar a inteligência artificial, aprimorar suas habilidades de edição de vídeo ou qualquer outra coisa relacionada à tecnologia e ciência, nós estaremos aqui para guiá-los em sua jornada.</p><p style=\"text-align: justify; \">&nbsp;&nbsp;&nbsp;&nbsp;Além disso, estamos sempre abertos a sugestões e perguntas da comunidade. Se houver um tópico específico que você gostaria que cobríssemos ou se tiver dúvidas sobre algo que discutimos, não hesite em nos contatar. Este é um espaço para todos os apaixonados por tecnologia e ciência, e queremos torná-lo o mais útil e envolvente possível para vocês.</p><p style=\"text-align: justify; \">&nbsp;&nbsp;&nbsp;&nbsp;Então, fiquem ligados, pois estamos prestes a embarcar em uma jornada emocionante de descoberta, aprendizado e inovação juntos. Obrigado por fazerem parte do <b>NEWSLATTER</b>, e mal podemos esperar para compartilhar todas essas experiências incríveis com vocês!</p><p style=\"text-align: justify; \">Fique conectado:<br></p><p style=\"text-align: justify; \">- Youtube: <a href=\"https://www.youtube.com/@mariocoxe\">@mariocoxe</a></p><p style=\"text-align: justify; \">- Facebook: <a href=\"http://facebook.com/mario.coxe0/\">Mário Coxe</a></p><p style=\"text-align: justify; \">- Instagram:<a href=\"https://www.instagram.com/@mariocoxe0\"> @mariocoxe0</a></p><p style=\"text-align: justify; \">Estamos ansiosos para compartilhar com vocês as incríveis descobertas e inovações que estão moldando o nosso mundo. Juntos, vamos embarcar nessa emocionante jornada! Ao seguir nossas redes sociais, você também terá acesso a conteúdos exclusivos e interações mais próximas com nossa comunidade apaixonada por tecnologia e ciência. Não deixe de se juntar a nós nas redes para ficar por dentro de todas as novidades!</p>','2021-06-29 18:30:00','2023-09-01 21:37:02'),(2,'contactus','Contacto','<p><br></p><p><br></p><p><b>Phone Number : </b>+244 945047525</p><p>&lt;&lt;<b> Redes Sócias</b> &gt;&gt;</p><p><br></p><p style=\"margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 16px; background-color: rgb(247, 248, 249); text-align: justify;\">- Youtube:&nbsp;<a href=\"https://www.youtube.com/@mariocoxe\" style=\"color: rgb(0, 123, 255);\">@mariocoxe</a></p><p style=\"margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 16px; background-color: rgb(247, 248, 249); text-align: justify;\">- Facebook:&nbsp;<a href=\"http://facebook.com/mario.coxe0/\" style=\"color: rgb(0, 123, 255);\">Mário Coxe</a></p><p style=\"margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 16px; background-color: rgb(247, 248, 249); text-align: justify;\">- Instagram:<a href=\"https://www.instagram.com/@mariocoxe0\" style=\"color: rgb(0, 123, 255);\">&nbsp;@mariocoxe0</a></p><div><br></div><p><br></p>','2021-06-29 18:30:00','2023-09-01 21:40:55');
/*!40000 ALTER TABLE `tblpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblposts`
--

DROP TABLE IF EXISTS `tblposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblposts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `PostTitle` longtext,
  `CategoryId` int DEFAULT NULL,
  `SubCategoryId` int DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `postcatid` (`CategoryId`),
  KEY `postsucatid` (`SubCategoryId`),
  KEY `subadmin` (`postedBy`),
  CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`),
  CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`),
  CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblposts`
--

LOCK TABLES `tblposts` WRITE;
/*!40000 ALTER TABLE `tblposts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsubcategory`
--

DROP TABLE IF EXISTS `tblsubcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int NOT NULL AUTO_INCREMENT,
  `CategoryId` int DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int DEFAULT NULL,
  PRIMARY KEY (`SubCategoryId`),
  KEY `catid` (`CategoryId`),
  CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsubcategory`
--

LOCK TABLES `tblsubcategory` WRITE;
/*!40000 ALTER TABLE `tblsubcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsubcategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-01 23:14:52
