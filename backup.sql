-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: c1191545c_aai
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `bilans`
--

DROP TABLE IF EXISTS `bilans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bilans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `respoOrga` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respoInfo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reqSatisDelais1` int DEFAULT NULL,
  `reqSatisDelais2` int DEFAULT NULL,
  `reqSatisDelais3` int DEFAULT NULL,
  `reqPartSafDelais1` int DEFAULT NULL,
  `reqPartSafDelais2` int DEFAULT NULL,
  `reqPartSafDelais3` int DEFAULT NULL,
  `nbreReqNonSatisf` int DEFAULT NULL,
  `nbreDocuPub` int DEFAULT NULL,
  `modPub` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comPartielSurPlace` int DEFAULT NULL,
  `comPartielMail` int DEFAULT NULL,
  `comPartielPapier` int DEFAULT NULL,
  `comPartielSiteWeb` int DEFAULT NULL,
  `comPartielAutre` int DEFAULT NULL,
  `commentaire` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisme_id` bigint unsigned NOT NULL,
  `organisme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reqSatisDelais3Motfif` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reqPartSafDelais3Motif` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comTotalSurPlace` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comTotalMail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comTotalPapier` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comTotalSiteWeb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comTotalAutre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `journaliste` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `professeur` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prive` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annee` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bilan_organisme_id_foreign` (`organisme_id`),
  CONSTRAINT `bilan_organisme_id_foreign` FOREIGN KEY (`organisme_id`) REFERENCES `organismes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bilans`
--

LOCK TABLES `bilans` WRITE;
/*!40000 ALTER TABLE `bilans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bilans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caidps`
--

DROP TABLE IF EXISTS `caidps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caidps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualite` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `civilite` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autreContact` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caidps`
--

LOCK TABLES `caidps` WRITE;
/*!40000 ALTER TABLE `caidps` DISABLE KEYS */;
INSERT INTO `caidps` VALUES (1,NULL,'Admin','admin','admin','Monsieur','07 __ __ __ __','koffi@gm.com',NULL,'2023-12-04 14:32:42','2023-12-04 14:32:42');
/*!40000 ALTER TABLE `caidps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contact` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `responsable_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_responsable_id_foreign` (`responsable_id`),
  CONSTRAINT `contacts_responsable_id_foreign` FOREIGN KEY (`responsable_id`) REFERENCES `responsables` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentieus`
--

DROP TABLE IF EXISTS `contentieus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contentieus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saisine_id` int DEFAULT NULL,
  `actionContentieu` varchar(200) DEFAULT NULL,
  `dateContentieux` date DEFAULT NULL,
  `argument` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `saisine_id` (`saisine_id`),
  CONSTRAINT `contentieus_ibfk_1` FOREIGN KEY (`saisine_id`) REFERENCES `saisines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentieus`
--

LOCK TABLES `contentieus` WRITE;
/*!40000 ALTER TABLE `contentieus` DISABLE KEYS */;
INSERT INTO `contentieus` VALUES (1,6,'demande d\'explication','2023-12-19','<p>demande d&#39;explication</p>','2023-12-19 15:57:12','2023-12-19 15:57:12'),(2,6,'demande d\'explication','2023-12-19','<p>demande d&#39;explication</p>','2023-12-19 16:00:52','2023-12-19 16:00:52'),(3,7,'Sanction','2023-12-22','<p>blobloblo</p>','2023-12-22 23:00:36','2023-12-22 23:00:36');
/*!40000 ALTER TABLE `contentieus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `local_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Côte d\'Ivoire','2023-11-29 05:08:46','2023-11-29 05:08:46'),(2,'Ghana','2023-11-29 05:08:46','2023-11-29 05:08:46'),(3,'Mali','2023-11-29 05:08:46','2023-11-29 05:08:46'),(4,'Sénégal','2023-11-29 05:08:46','2023-11-29 05:08:46');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decisioncaipdps`
--

DROP TABLE IF EXISTS `decisioncaipdps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `decisioncaipdps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `saisine_id` int DEFAULT NULL,
  `decisionFile` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateEnvoie` date DEFAULT NULL,
  `etat` int DEFAULT NULL,
  `typeDecision` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decison` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `decision` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `fk_saisine_id` (`saisine_id`),
  CONSTRAINT `fk_saisine_id` FOREIGN KEY (`saisine_id`) REFERENCES `saisines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decisioncaipdps`
--

LOCK TABLES `decisioncaipdps` WRITE;
/*!40000 ALTER TABLE `decisioncaipdps` DISABLE KEYS */;
INSERT INTO `decisioncaipdps` VALUES (4,'2023-12-19 16:11:39','2023-12-19 16:12:00',6,NULL,'2023-12-19',1,'Sanction','no','<p>sanction</p>');
/*!40000 ALTER TABLE `decisioncaipdps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decisioncaipdpsfiles`
--

DROP TABLE IF EXISTS `decisioncaipdpsfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `decisioncaipdpsfiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `nomFichier` varchar(255) DEFAULT NULL,
  `decisioncaipdp_id` bigint unsigned DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `decisioncaipdp_id` (`decisioncaipdp_id`),
  CONSTRAINT `decisioncaipdpsfiles_ibfk_1` FOREIGN KEY (`decisioncaipdp_id`) REFERENCES `decisioncaipdps` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decisioncaipdpsfiles`
--

LOCK TABLES `decisioncaipdpsfiles` WRITE;
/*!40000 ALTER TABLE `decisioncaipdpsfiles` DISABLE KEYS */;
INSERT INTO `decisioncaipdpsfiles` VALUES (5,'ngannou_2312191139.jpeg','decision',4,'2023-12-19 16:11:39','2023-12-19 16:11:39');
/*!40000 ALTER TABLE `decisioncaipdpsfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decisionpredefinies`
--

DROP TABLE IF EXISTS `decisionpredefinies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `decisionpredefinies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `decisonPredefinie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeDecision` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decisionpredefinies`
--

LOCK TABLES `decisionpredefinies` WRITE;
/*!40000 ALTER TABLE `decisionpredefinies` DISABLE KEYS */;
INSERT INTO `decisionpredefinies` VALUES (1,'<div style=\"float:right\">&nbsp;24 Septembre 2019</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"float:left\">&nbsp; Foxy Digitall</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"float:left\">&nbsp; foxydigital@gmail.com</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"float:left\">&nbsp; 11 11 11 11</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:right\">&nbsp;</div>\r\n\r\n<div style=\"text-align:right\">&nbsp;</div>\r\n\r\n<div style=\"text-align:right\">A</div>\r\n\r\n<div style=\"text-align:right\">[%%nomReq%%]</div>\r\n\r\n<div style=\"text-align:right\">&nbsp;</div>\r\n\r\n<div style=\"text-align:right\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\"><strong><u>OBJET :</u></strong> DECISON</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [%%titre%%]</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:justify\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.<br />\r\n<br />\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.<br />\r\n<br />\r\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br />\r\n<br />\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:right\">Fais &agrave; Abidjan le 24 Septembre 2019</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n','',NULL,NULL);
/*!40000 ALTER TABLE `decisionpredefinies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decisionpredefiniescaidps`
--

DROP TABLE IF EXISTS `decisionpredefiniescaidps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `decisionpredefiniescaidps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decisionpredefiniescaidps`
--

LOCK TABLES `decisionpredefiniescaidps` WRITE;
/*!40000 ALTER TABLE `decisionpredefiniescaidps` DISABLE KEYS */;
INSERT INTO `decisionpredefiniescaidps` VALUES (1,'aaa');
/*!40000 ALTER TABLE `decisionpredefiniescaidps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decisions`
--

DROP TABLE IF EXISTS `decisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `decisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `decison` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `propose_par_ri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valide_par_rh` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateValidation` date NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'si 0 alors la décison n''a pas encore été validé par le responsable hiérachique ',
  `envoye` tinyint(1) DEFAULT NULL COMMENT 'Si 0= Pas encore envoyé, si 1 = envoye',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `demande_id` bigint unsigned NOT NULL,
  `date_envoie` timestamp NULL DEFAULT NULL,
  `isDecision` tinyint(1) DEFAULT NULL,
  `notificationFile` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `decisions_demande_id_foreign` (`demande_id`),
  CONSTRAINT `decisions_demande_id_foreign` FOREIGN KEY (`demande_id`) REFERENCES `demandes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decisions`
--

LOCK TABLES `decisions` WRITE;
/*!40000 ALTER TABLE `decisions` DISABLE KEYS */;
INSERT INTO `decisions` VALUES (79,'<div style=\"float:right\">&nbsp;24 Septembre 2019</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"float:left\">&nbsp; Foxy Digitall</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"float:left\">&nbsp; foxydigital@gmail.com</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"float:left\">&nbsp; 11 11 11 11</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:right\">&nbsp;</div>\r\n\r\n<div style=\"text-align:right\">&nbsp;</div>\r\n\r\n<div style=\"text-align:right\">A</div>\r\n\r\n<div style=\"text-align:right\">TOURE LAKOU</div>\r\n\r\n<div style=\"text-align:right\">&nbsp;</div>\r\n\r\n<div style=\"text-align:right\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\"><strong><u>OBJET :</u></strong> DECISON</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:justify\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.<br />\r\n<br />\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.<br />\r\n<br />\r\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br />\r\n<br />\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:right\">Fais &agrave; Abidjan le 24 Septembre 2019</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n <br><br>','Abi Marc','Abi Marc','2023-12-19',1,1,'2023-12-19 15:31:33','2023-12-19 15:31:33',91,'2023-12-19 15:31:33',0,NULL),(80,'<div style=\"float:right\">&nbsp;24 Septembre 2019</div>\r\n\r\n<div style=\"float:left\">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"float:left\">&nbsp; Foxy Digitall</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"float:left\">&nbsp; foxydigital@gmail.com</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"float:left\">&nbsp; 11 11 11 11</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"text-align:right\">&nbsp;</div>\r\n\r\n<div style=\"text-align:right\">&nbsp;</div>\r\n\r\n<div style=\"text-align:right\">A</div>\r\n\r\n<div style=\"text-align:right\">TOURE LAKOU</div>\r\n\r\n<div style=\"text-align:right\">&nbsp;</div>\r\n\r\n<div style=\"text-align:right\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\"><strong><u>OBJET :</u></strong> DECISON</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; M</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:justify\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.<br />\r\n<br />\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.<br />\r\n<br />\r\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<br />\r\n<br />\r\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:left\">&nbsp;</div>\r\n\r\n<div style=\"text-align:right\">Fais &agrave; Abidjan le 24 Septembre 2019</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n <br><br>  <br><br>','Abi Marc','Abi Marc','2023-12-22',1,1,'2023-12-22 07:53:09','2023-12-22 07:56:06',92,'2023-12-22 07:56:06',1,'becoming-your-best-self-1_2312225606.pdf');
/*!40000 ALTER TABLE `decisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demandes`
--

DROP TABLE IF EXISTS `demandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demandes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `scane` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateDemande` datetime NOT NULL,
  `brouillon` tinyint(1) NOT NULL DEFAULT '1',
  `transmission` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mode de transmission : email, clé, fax, etc',
  `requerant_id` bigint unsigned NOT NULL,
  `mandant_id` int DEFAULT NULL,
  `organisme_id` bigint unsigned NOT NULL,
  `direction` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateProrogation` date DEFAULT NULL,
  `motifProrogation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `autoEnregsitrement` tinyint(1) DEFAULT NULL,
  `favorable` int DEFAULT NULL COMMENT 'Si 1 alors non satisfait, si 2 alors partiellement satisfait, si 3 totalement satisfait',
  `etat` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Si 0 alors pas encors traié, si 1 alors traité ou traiement en cours',
  `liquide` tinyint(1) DEFAULT NULL COMMENT '0=non liquide, 1=liquide',
  `motifliquide` int DEFAULT NULL COMMENT 'SI 1 = traité; si 2 = pas repondu',
  `dateliquide` datetime DEFAULT NULL,
  `numDemande` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autosave` tinyint(1) DEFAULT NULL,
  `savebycaidp` tinyint(1) DEFAULT NULL,
  `savebyorganisme` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `demandes_requerant_id_foreign` (`requerant_id`),
  KEY `demandes_organisme_id_foreign` (`organisme_id`),
  KEY `mandant_id` (`mandant_id`),
  CONSTRAINT `demandes_organisme_id_foreign` FOREIGN KEY (`organisme_id`) REFERENCES `organismes` (`id`),
  CONSTRAINT `demandes_requerant_id_foreign` FOREIGN KEY (`requerant_id`) REFERENCES `requerants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demandes`
--

LOCK TABLES `demandes` WRITE;
/*!40000 ALTER TABLE `demandes` DISABLE KEYS */;
INSERT INTO `demandes` VALUES (91,'Liste de personnel',NULL,NULL,'2023-12-19 15:27:58',0,'[\"email\"]',187,NULL,156,NULL,NULL,NULL,NULL,'2023-12-19 15:27:58','2023-12-19 15:31:33',1,3,1,1,1,'2023-12-19 15:31:33','D-20230649',1,NULL,NULL),(92,'rapport d\'activité 2023',NULL,NULL,'2023-12-22 07:50:47',0,'[\"email\"]',187,NULL,156,NULL,NULL,NULL,NULL,'2023-12-22 07:50:47','2023-12-22 07:56:06',1,3,1,1,1,'2023-12-22 07:56:06','D-20236415',1,NULL,NULL);
/*!40000 ALTER TABLE `demandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doccontentieus`
--

DROP TABLE IF EXISTS `doccontentieus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doccontentieus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `document` varchar(255) DEFAULT NULL,
  `contentieu_id` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `contentieu_id` (`contentieu_id`),
  CONSTRAINT `doccontentieus_ibfk_1` FOREIGN KEY (`contentieu_id`) REFERENCES `contentieus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doccontentieus`
--

LOCK TABLES `doccontentieus` WRITE;
/*!40000 ALTER TABLE `doccontentieus` DISABLE KEYS */;
INSERT INTO `doccontentieus` VALUES (1,'me_2312190052.jpeg',2,'2023-12-19 16:00:52','2023-12-19 16:00:52'),(2,'5s_2312220036.jpg',3,'2023-12-22 23:00:36','2023-12-22 23:00:36');
/*!40000 ALTER TABLE `doccontentieus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docfacilitations`
--

DROP TABLE IF EXISTS `docfacilitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docfacilitations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `document` varchar(255) DEFAULT NULL,
  `facilitation_id` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facilitation_id` (`facilitation_id`),
  CONSTRAINT `docfacilitations_ibfk_1` FOREIGN KEY (`facilitation_id`) REFERENCES `facilitations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docfacilitations`
--

LOCK TABLES `docfacilitations` WRITE;
/*!40000 ALTER TABLE `docfacilitations` DISABLE KEYS */;
INSERT INTO `docfacilitations` VALUES (3,'ngannou_2312194046.jpeg',4,'2023-12-19 15:40:46','2023-12-19 15:40:46'),(4,'5s_2312220242.jpg',6,'2023-12-22 08:02:42','2023-12-22 08:02:42'),(5,'jl_2312272131.jpeg',7,'2023-12-27 20:21:31','2023-12-27 20:21:31');
/*!40000 ALTER TABLE `docfacilitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docsaisines`
--

DROP TABLE IF EXISTS `docsaisines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docsaisines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `saisine_id` bigint NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docsaisines`
--

LOCK TABLES `docsaisines` WRITE;
/*!40000 ALTER TABLE `docsaisines` DISABLE KEYS */;
/*!40000 ALTER TABLE `docsaisines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `demande_id` bigint unsigned DEFAULT NULL,
  `information_id` bigint unsigned NOT NULL,
  `nomFichier` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateCommunication` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_demande_id_foreign` (`demande_id`),
  KEY `documents_information_id_foreign` (`information_id`),
  CONSTRAINT `documents_demande_id_foreign` FOREIGN KEY (`demande_id`) REFERENCES `demandes` (`id`),
  CONSTRAINT `documents_information_id_foreign` FOREIGN KEY (`information_id`) REFERENCES `informations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (7,NULL,'5s_2312193126.jpg','2023-12-19 15:31:26','2023-12-19 15:31:26',NULL,35,NULL,NULL),(8,NULL,'me_2312191751.jpeg','2023-12-19 16:17:51','2023-12-19 16:17:51',NULL,36,NULL,NULL),(9,NULL,'5s_2312225259.jpg','2023-12-22 07:52:59','2023-12-22 07:52:59',NULL,37,NULL,NULL);
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilitations`
--

DROP TABLE IF EXISTS `facilitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilitations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saisine_id` int DEFAULT NULL,
  `actionFacilitation` varchar(200) DEFAULT NULL,
  `dateFacilitation` date DEFAULT NULL,
  `suite` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `saisine_id` (`saisine_id`),
  CONSTRAINT `facilitations_ibfk_1` FOREIGN KEY (`saisine_id`) REFERENCES `saisines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilitations`
--

LOCK TABLES `facilitations` WRITE;
/*!40000 ALTER TABLE `facilitations` DISABLE KEYS */;
INSERT INTO `facilitations` VALUES (4,6,'conf call','2023-12-19','<p>conf call avec sevice juridique</p>','2023-12-19 15:40:46','2023-12-19 15:40:46'),(5,6,'visite dans les locaux de comico','2023-12-19','<p>visite dans les locaux de comico</p>','2023-12-19 15:41:40','2023-12-19 15:41:40'),(6,7,'appel téléphonique','2023-12-22','<p>blablablablablablablablablablablablablablablablablablablablablablablabla</p>','2023-12-22 08:02:42','2023-12-22 08:02:42'),(7,7,'Nouvelle facilitation','2023-12-27','<p>123456789</p>','2023-12-27 20:21:31','2023-12-27 20:21:31');
/*!40000 ALTER TABLE `facilitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals`
--

DROP TABLE IF EXISTS `globals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `globals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `rapport` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals`
--

LOCK TABLES `globals` WRITE;
/*!40000 ALTER TABLE `globals` DISABLE KEYS */;
INSERT INTO `globals` VALUES (73,'rapport xxx');
/*!40000 ALTER TABLE `globals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informations`
--

DROP TABLE IF EXISTS `informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dateCommunication` date DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `demande_id` bigint unsigned DEFAULT NULL,
  `source_id` int NOT NULL,
  `organisme_id` bigint unsigned DEFAULT '113',
  PRIMARY KEY (`id`),
  KEY `informations_demande_id_foreign` (`demande_id`),
  KEY `source_id` (`source_id`),
  KEY `fk_organisme_id` (`organisme_id`),
  CONSTRAINT `fk_organisme_id` FOREIGN KEY (`organisme_id`) REFERENCES `organismes` (`id`),
  CONSTRAINT `informations_demande_id_foreign` FOREIGN KEY (`demande_id`) REFERENCES `demandes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informations`
--

LOCK TABLES `informations` WRITE;
/*!40000 ALTER TABLE `informations` DISABLE KEYS */;
INSERT INTO `informations` VALUES (35,'Liste de personnel ','blablabla','2023-12-19',0,'2023-12-19 15:31:26','2023-12-19 15:31:26',91,8,156),(36,'liste du personnel','blabla','2023-12-19',1,'2023-12-19 16:17:51','2023-12-19 16:17:51',NULL,2,156),(37,'rapport d\'activité 2023 ','blablabla','2023-12-22',0,'2023-12-22 07:52:59','2023-12-22 07:52:59',92,2,156);
/*!40000 ALTER TABLE `informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mandants`
--

DROP TABLE IF EXISTS `mandants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mandants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) NOT NULL,
  `prenom` varchar(191) NOT NULL,
  `sexe` varchar(1) NOT NULL,
  `profession` varchar(150) NOT NULL,
  `pieceMandant` varchar(225) DEFAULT NULL,
  `ville` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ville_id` (`ville`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mandants`
--

LOCK TABLES `mandants` WRITE;
/*!40000 ALTER TABLE `mandants` DISABLE KEYS */;
/*!40000 ALTER TABLE `mandants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messags`
--

DROP TABLE IF EXISTS `messags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `contentieu_id` int DEFAULT NULL,
  `message` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `contentieu_id` (`contentieu_id`),
  CONSTRAINT `messags_ibfk_1` FOREIGN KEY (`contentieu_id`) REFERENCES `contentieus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messags`
--

LOCK TABLES `messags` WRITE;
/*!40000 ALTER TABLE `messags` DISABLE KEYS */;
INSERT INTO `messags` VALUES (11,225,3,'cool','2023-12-28 20:02:05'),(12,227,3,'new','2023-12-28 20:06:22'),(13,225,3,'BlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBla','2023-12-28 20:47:29'),(14,227,3,'bloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblobloblo','2023-12-28 20:48:20'),(15,227,3,'iciiii je me sent','2023-12-28 20:58:37'),(16,227,3,'ici123456','2023-12-28 21:05:49'),(17,227,3,'labas','2023-12-28 21:07:14'),(18,227,3,'ca va','2023-12-28 21:19:59'),(19,227,3,'lakou','2023-12-28 22:29:19'),(20,225,3,'test new','2024-01-02 16:14:19'),(21,225,3,'new test','2024-01-02 16:14:36'),(22,227,3,'j\'ai faim','2024-01-02 16:20:44'),(23,227,3,'1478966366','2024-01-02 16:24:15'),(24,227,3,'test2','2024-01-02 16:31:39'),(25,227,3,'new','2024-01-02 16:35:33'),(26,227,3,'ok1','2024-01-02 16:36:47'),(27,227,3,'ftghjkl;m:','2024-01-02 16:39:34'),(28,227,3,'ici','2024-01-02 16:43:04'),(29,225,3,'oiooo','2024-01-02 17:16:41'),(30,227,3,'yieeeeeeeeeeeeee','2024-01-02 17:18:14'),(31,225,3,'maaaaaaaaaa','2024-01-02 17:18:34'),(32,227,3,'nooooooooooooooooo','2024-01-02 17:19:04'),(33,227,3,'yoooooooooooooooo','2024-01-02 17:21:08'),(34,227,3,'','2024-01-02 17:21:08'),(35,227,3,'yiiiiiiiiiiiii','2024-01-02 17:21:30'),(36,227,3,'uio','2024-01-02 18:02:46'),(37,225,3,'iop22','2024-01-02 18:11:27'),(38,225,3,'aqw77','2024-01-02 18:14:27'),(39,227,3,'joberi','2024-01-02 18:18:44'),(40,227,3,'yier','2024-01-02 18:38:45'),(41,225,3,'noui','2024-01-02 18:38:52'),(42,227,3,'yoooolooooo','2024-01-02 18:48:32'),(43,225,3,'wiloooooo','2024-01-02 18:49:12'),(44,225,3,'youyuuuuuuuu','2024-01-02 18:52:17'),(45,225,3,'miche','2024-01-02 18:53:17'),(46,225,3,'micje','2024-01-02 18:53:28'),(47,225,3,'sousis','2024-01-02 18:54:11'),(48,227,3,'cheri','2024-01-02 18:54:30'),(49,225,3,'oumou','2024-01-02 18:56:17'),(50,225,3,'az789','2024-01-02 18:59:27'),(51,225,3,'azer444','2024-01-02 18:59:39'),(52,225,3,'azer741','2024-01-02 19:00:07'),(53,225,3,'azer 5054','2024-01-02 19:00:37'),(54,225,3,'ohla','2024-01-02 19:03:30'),(55,227,3,'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk','2024-01-02 19:04:04'),(56,225,3,'icooopppp','2024-01-02 19:06:45'),(57,227,3,'aouhhal','2024-01-02 19:07:03'),(58,225,3,'miaouuuu','2024-01-02 19:08:55'),(59,225,3,'ouillllllll','2024-01-02 19:09:28'),(60,225,3,'pyuyuyuy','2024-01-02 19:10:00'),(61,225,3,'moplkjhg','2024-01-02 19:12:23'),(62,227,3,'plus','2024-01-02 19:12:50'),(63,227,3,'miam','2024-01-02 19:20:28'),(64,227,3,'lakou ca va','2024-01-03 20:57:10'),(65,225,3,'soro ca va ????','2024-01-03 20:58:07'),(66,227,3,'ici abidjan est doux?','2024-01-03 20:58:33');
/*!40000 ALTER TABLE `messags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_07_29_124109_add_privilege_users',1),(4,'2019_08_05_154947_create_usagers_table',1),(5,'2019_08_05_155908_create_type-personne_table',1),(6,'2019_08_05_160410_create_qualite_table',1),(7,'2019_08_05_161051_create_oraganisme_table',1),(8,'2019_08_05_161819_create_demandes_table',1),(9,'2019_08_05_165804_create_decision_table',1),(10,'2019_08_06_085524_create_responsables_table',1),(11,'2019_08_06_090011_create_contacts_table',1),(12,'2019_08_06_090154_create_informations_table',1),(13,'2019_08_06_090347_create_documents_table',1),(14,'2019_08_06_090631_create_decisonpredefinies_table',1),(15,'2019_08_06_090832_create_saisines_table',1),(16,'2019_08_06_091130_create_decisionscaidps_table',1),(17,'2019_08_06_092434_add_type-personne_in_requerants',1),(18,'2019_08_06_093100_add_requerants_organisme_on_demandes',1),(19,'2019_08_06_094038_add_demandes_on_decison',1),(20,'2019_08_06_094335_add_respnsables_on_contacts',1),(21,'2019_08_06_094653_add_demande_on_informations',1),(22,'2019_08_06_094803_add_documents_on_informations',1),(23,'2019_08_06_094942_add_demandes_on_saisines',1),(24,'2019_08_06_095727_drop_column_organisme_id_and_droit_on_user',1),(25,'2019_08_06_095944_add_organisme_and_requerant_and_caidp',1),(26,'2019_08_06_103425_remove_column_type_on_users',1),(27,'2019_08_06_120724_change_organisme_to_responsable_in_users',1),(28,'2019_08_08_101126_add_prorogation_table',2),(29,'2019_08_08_101308_remove_date_prorogation_from_demande',2),(31,'2019_08_08_165905_add_organisme_to_responsable',3),(32,'2019_08_08_171352_change_demande_description',3),(33,'2019_08_14_164733_add_date_proro_to_demande',4),(34,'2019_08_14_165045_add_motifpro_to_demande',5),(35,'2019_08_14_170515_add_auto_enregistrement_on_demandes',6),(39,'2019_08_15_123831_modify_documents',7),(40,'2019_08_15_124915_add__demande_id_null_on_informations',7),(45,'2019_08_19_104827_change_demande',8),(46,'2019_08_19_141012_add_refuscommnication_table',9),(47,'2019_08_20_090633_make_information_nullable_on_information',10),(48,'2019_08_20_101000_make_type_decision_nullable_on_decisionpredefinies',11),(49,'2019_08_20_110319_create_notifications_table',12),(50,'2019_08_21_114429_add_email_on_organisme_table',13),(56,'2019_08_25_142901_add_scane_on_documents',14),(57,'2019_08_30_134043_qualite_resposable_table',14),(61,'2019_08_30_134613_add_siege_on_organismes',15),(62,'2019_08_30_134812_remove_situgeo_on_responsable',15),(63,'2019_08_30_140006_add_qualiterespo_id_onresponsable',16),(64,'2019_09_03_103616_logo_set_nullable',16),(65,'2019_09_05_152227_add_mandant_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motifrapports`
--

DROP TABLE IF EXISTS `motifrapports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motifrapports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `organisme_id` bigint unsigned NOT NULL,
  `reqSatisDelais3Motfif` int DEFAULT NULL,
  `reqPartSafDelais3Motif` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `motifsrapport_organisme_id_foreign` (`organisme_id`),
  CONSTRAINT `motifsrapport_organisme_id_foreign` FOREIGN KEY (`organisme_id`) REFERENCES `organismes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motifrapports`
--

LOCK TABLES `motifrapports` WRITE;
/*!40000 ALTER TABLE `motifrapports` DISABLE KEYS */;
/*!40000 ALTER TABLE `motifrapports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('1f18a9e7-21c4-43ee-bf05-35ef0f1cf549','App\\Notifications\\NewAccount','App\\User',227,'{\"message\":\"Bonjour Abi Marc, bienvenu(e) sur la plateforme d\'acc\\u00e8s \\u00e0 l\'information.\",\"etat\":\"success\"}',NULL,'2023-12-18 00:50:04','2023-12-18 00:50:04'),('241f883b-9b28-4a2b-b597-2841907f78d4','App\\Notifications\\NewAccount','App\\User',228,'{\"message\":\"Bonjour DIBO Franck, bienvenu(e) sur la plateforme d\'acc\\u00e8s \\u00e0 l\'information.\",\"etat\":\"success\"}',NULL,'2023-12-18 12:19:18','2023-12-18 12:19:18'),('3de87e54-cab7-45b9-85a2-82a5915016b7','App\\Notifications\\AccuseReception','App\\User',229,'{\"etat\":\"success\",\"message\":\"Vous avez re\\u00e7u un nouvel accus\\u00e9 de r\\u00e9ception.\",\"numDemande\":\"D-20230649\",\"libelle\":\"Liste de personnel\",\"organisme\":\"comico\",\"delaisRequis\":\"2024-01-03\",\"dateDemande\":\"2023-12-19 15:27:58\",\"requerant_id\":187,\"demande_id\":91,\"direction\":null,\"service\":null,\"requerant_nom\":\"TOURE LAKOU\",\"requerant_contact\":\"0748284069\",\"requerant_email\":\"lakou80@gmail.com\"}','2023-12-19 15:33:32','2023-12-19 15:28:01','2023-12-19 15:33:32'),('3f8d219e-77db-428d-b1fa-59616b39b674','App\\Notifications\\AccuseReceptionSaisne','App\\User',229,'{\"etat\":\"success\",\"numDemande\":\"D-20230649\",\"libelle\":\"Liste de personnel\",\"demande_id\":91,\"motif\":\"clarification\",\"created_at\":\"2023-12-19T15:35:28.000000Z\",\"numSaisine\":\"Aff n\\u00b019\\/12\\/2023-1\",\"requerant_nom\":\"TOURE LAKOU\",\"requerant_contact\":\"0748284069\",\"requerant_email\":\"lakou80@gmail.com\"}',NULL,'2023-12-19 15:35:31','2023-12-19 15:35:31'),('607a201c-65d8-4a85-8744-845c62c3f4a6','App\\Notifications\\SendSaisine','App\\User',225,'{\"etat\":\"success\",\"numDemande\":\"D-20236415\",\"libelle\":\"rapport d\'activit\\u00e9 2023\",\"demande_id\":92,\"motif\":\"clarification\",\"created_at\":\"2023-12-22T07:51:29.000000Z\",\"requerant_nom\":\"TOURE LAKOU\",\"requerant_contact\":\"0748284069\",\"requerant_email\":\"lakou80@gmail.com\"}',NULL,'2023-12-22 07:51:35','2023-12-22 07:51:35'),('65a68924-8629-4671-939d-f52417ec656a','App\\Notifications\\SendSaisine','App\\User',225,'{\"etat\":\"success\",\"numDemande\":\"D-20230649\",\"libelle\":\"Liste de personnel\",\"demande_id\":91,\"motif\":\"clarification\",\"created_at\":\"2023-12-19T15:35:28.000000Z\",\"requerant_nom\":\"TOURE LAKOU\",\"requerant_contact\":\"0748284069\",\"requerant_email\":\"lakou80@gmail.com\"}',NULL,'2023-12-19 15:35:34','2023-12-19 15:35:34'),('7b21bcfe-aa5c-4402-95e8-0f98def08d53','App\\Notifications\\AccuseReceptionSaisne','App\\User',229,'{\"etat\":\"success\",\"numDemande\":\"D-20236415\",\"libelle\":\"rapport d\'activit\\u00e9 2023\",\"demande_id\":92,\"motif\":\"clarification\",\"created_at\":\"2023-12-22T07:51:29.000000Z\",\"numSaisine\":\"Aff n\\u00b022\\/12\\/2023-7\",\"requerant_nom\":\"TOURE LAKOU\",\"requerant_contact\":\"0748284069\",\"requerant_email\":\"lakou80@gmail.com\"}',NULL,'2023-12-22 07:51:33','2023-12-22 07:51:33'),('9644f67d-51a0-4808-a581-8be6d1830fec','App\\Notifications\\AccuseReception','App\\Responsable',117,'{\"etat\":\"success\",\"message\":\"Vous avez re\\u00e7u un nouvelle demande\",\"numDemande\":\"D-20230649\",\"libelle\":\"Liste de personnel\",\"organisme\":\"comico\",\"delaisRequis\":\"2024-01-03\",\"dateDemande\":\"2023-12-19 15:27:58\",\"requerant_id\":187,\"demande_id\":91,\"direction\":null,\"service\":null,\"requerant_nom\":\" \",\"requerant_contact\":null,\"requerant_email\":\"lakou80@gmail.com\"}',NULL,'2023-12-19 15:28:03','2023-12-19 15:28:03'),('b47d222b-e27e-4bfe-a699-216ae8725b65','App\\Notifications\\SendSaisine','App\\User',227,'{\"etat\":\"success\",\"numDemande\":\"D-20230649\",\"libelle\":\"Liste de personnel\",\"demande_id\":91,\"motif\":\"clarification\",\"created_at\":\"2023-12-19T15:35:28.000000Z\",\"requerant_nom\":\"TOURE LAKOU\",\"requerant_contact\":\"0748284069\",\"requerant_email\":\"lakou80@gmail.com\"}',NULL,'2023-12-19 15:35:36','2023-12-19 15:35:36'),('b6715201-6828-4ffd-84d6-856ec545a33f','App\\Notifications\\AccuseReception','App\\Responsable',117,'{\"etat\":\"success\",\"message\":\"Vous avez re\\u00e7u un nouvelle demande\",\"numDemande\":\"D-20236415\",\"libelle\":\"rapport d\'activit\\u00e9 2023\",\"organisme\":\"comico\",\"delaisRequis\":\"2024-01-06\",\"dateDemande\":\"2023-12-22 07:50:47\",\"requerant_id\":187,\"demande_id\":92,\"direction\":null,\"service\":null,\"requerant_nom\":\" \",\"requerant_contact\":null,\"requerant_email\":\"lakou80@gmail.com\"}',NULL,'2023-12-22 07:50:53','2023-12-22 07:50:53'),('b9b190db-d6e5-49c1-b5b6-c1af5fb735be','App\\Notifications\\SendDecisionNotification','App\\User',229,'{\"message\":\"Vous avez re\\u00e7u une notification relative \\u00e0 votre demande portant le libell\\u00e9 rapport d\'activit\\u00e9 2023\",\"etat\":\"info\",\"id\":92}',NULL,'2023-12-22 07:56:16','2023-12-22 07:56:16'),('ca35b85f-c179-49d3-98a9-8cb0b25e4e9a','App\\Notifications\\SendSaisine','App\\User',227,'{\"etat\":\"success\",\"numDemande\":\"D-20236415\",\"libelle\":\"rapport d\'activit\\u00e9 2023\",\"demande_id\":92,\"motif\":\"clarification\",\"created_at\":\"2023-12-22T07:51:29.000000Z\",\"requerant_nom\":\"TOURE LAKOU\",\"requerant_contact\":\"0748284069\",\"requerant_email\":\"lakou80@gmail.com\"}',NULL,'2023-12-22 07:51:37','2023-12-22 07:51:37'),('ed503c4e-38d7-46b2-9826-44a84ce30e71','App\\Notifications\\NewAccount','App\\User',229,'{\"message\":\"Bonjour TOURE LAKOU, bienvenu(e) sur la plateforme d\'acc\\u00e8s \\u00e0 l\'information.\",\"etat\":\"success\"}',NULL,'2023-12-19 15:26:48','2023-12-19 15:26:48'),('f3ad4768-07ba-41ad-b01c-d76c9d373252','App\\Notifications\\AccuseReception','App\\User',229,'{\"etat\":\"success\",\"message\":\"Vous avez re\\u00e7u un nouvel accus\\u00e9 de r\\u00e9ception.\",\"numDemande\":\"D-20236415\",\"libelle\":\"rapport d\'activit\\u00e9 2023\",\"organisme\":\"comico\",\"delaisRequis\":\"2024-01-06\",\"dateDemande\":\"2023-12-22 07:50:47\",\"requerant_id\":187,\"demande_id\":92,\"direction\":null,\"service\":null,\"requerant_nom\":\"TOURE LAKOU\",\"requerant_contact\":\"0748284069\",\"requerant_email\":\"lakou80@gmail.com\"}',NULL,'2023-12-22 07:50:50','2023-12-22 07:50:50');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organismes`
--

DROP TABLE IF EXISTS `organismes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organismes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `organisme` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autrecontact` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `siege` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `savebycaidp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `savebyorganisme` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organismes`
--

LOCK TABLES `organismes` WRITE;
/*!40000 ALTER TABLE `organismes` DISABLE KEYS */;
INSERT INTO `organismes` VALUES (156,'comico','65 32 89 65 23','co@co.ci','{\"email\":null,\"contact\":null}','5s_2312185001.jpg','2023-12-18 00:50:01','2023-12-18 00:50:01','Abidjan',NULL,1);
/*!40000 ALTER TABLE `organismes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `params`
--

DROP TABLE IF EXISTS `params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `params` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `params`
--

LOCK TABLES `params` WRITE;
/*!40000 ALTER TABLE `params` DISABLE KEYS */;
INSERT INTO `params` VALUES (1,'aaaa');
/*!40000 ALTER TABLE `params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privileges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `privilege` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `variable` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  `ordre` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
INSERT INTO `privileges` VALUES (1,'créer d\'autre utilisateur','variable1','2019-09-19 11:57:24','2019-09-19 11:57:24',1),(2,'créer une demande','variable2','2019-09-19 11:57:24','2019-09-19 11:57:24',1),(3,'\r\nJoindre documents/informations','variable3','2019-09-19 11:57:56','2019-09-19 11:57:56',1),(4,'Rédiger une décison','variable4','2019-09-19 11:57:56','2019-09-19 11:57:56',1),(5,'Valider une décision','variable5','2019-09-19 11:59:04','2019-09-19 11:59:04',1),(6,'Transmettre la decison','variable6','2019-09-19 11:59:04','2019-09-19 11:59:04',1);
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prorogations`
--

DROP TABLE IF EXISTS `prorogations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prorogations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `dateProrogation` date NOT NULL,
  `motifProrogation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsable_id` bigint unsigned NOT NULL,
  `demande_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prorogation_responsable_id_foreign` (`responsable_id`),
  KEY `prorogation_demande_id_foreign` (`demande_id`),
  CONSTRAINT `prorogation_demande_id_foreign` FOREIGN KEY (`demande_id`) REFERENCES `demandes` (`id`),
  CONSTRAINT `prorogation_responsable_id_foreign` FOREIGN KEY (`responsable_id`) REFERENCES `responsables` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prorogations`
--

LOCK TABLES `prorogations` WRITE;
/*!40000 ALTER TABLE `prorogations` DISABLE KEYS */;
/*!40000 ALTER TABLE `prorogations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualiteresponsable`
--

DROP TABLE IF EXISTS `qualiteresponsable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualiteresponsable` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `qualite` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(1) DEFAULT '1' COMMENT 'si default != 0 alors ajouté par les organismes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `responsable_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_responsable_id` (`responsable_id`),
  CONSTRAINT `fk_responsable_id` FOREIGN KEY (`responsable_id`) REFERENCES `responsables` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualiteresponsable`
--

LOCK TABLES `qualiteresponsable` WRITE;
/*!40000 ALTER TABLE `qualiteresponsable` DISABLE KEYS */;
INSERT INTO `qualiteresponsable` VALUES (49,'CEO',1,'2023-12-18 00:50:01','2023-12-18 00:50:01',NULL);
/*!40000 ALTER TABLE `qualiteresponsable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualites`
--

DROP TABLE IF EXISTS `qualites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualites` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `qualite` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duree` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'durée en jours',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualites`
--

LOCK TABLES `qualites` WRITE;
/*!40000 ALTER TABLE `qualites` DISABLE KEYS */;
INSERT INTO `qualites` VALUES (1,'Journaliste / Chercheur','15',NULL,NULL),(3,'Autre','30',NULL,NULL);
/*!40000 ALTER TABLE `qualites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rapports`
--

DROP TABLE IF EXISTS `rapports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rapports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `respoOrga` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respoInfo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reqSatisDelais1` int DEFAULT NULL,
  `reqSatisDelais2` int DEFAULT NULL,
  `reqSatisDelais3` int DEFAULT NULL,
  `reqPartSafDelais1` int DEFAULT NULL,
  `reqPartSafDelais2` int DEFAULT NULL,
  `reqPartSafDelais3` int DEFAULT NULL,
  `nbreReqNonSatisf` int DEFAULT NULL,
  `nbreDocuPub` int DEFAULT NULL,
  `modPub` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comPartielSurPlace` int DEFAULT NULL,
  `comPartielMail` int DEFAULT NULL,
  `comPartielPapier` int DEFAULT NULL,
  `comPartielSiteWeb` int DEFAULT NULL,
  `comPartielAutre` int DEFAULT NULL,
  `commentaire` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organisme_id` bigint unsigned NOT NULL DEFAULT '1',
  `demande_id` bigint unsigned NOT NULL,
  `organisme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reqSatisDelais3Motfif` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reqPartSafDelais3Motif` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comTotalSurPlace` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comTotalMail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comTotalPapier` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comTotalSiteWeb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comTotalAutre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `journaliste` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `professeur` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prive` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annee` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intitule` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rapport_organisme_id_foreign` (`organisme_id`),
  KEY `rapport_demande_id_foreign` (`demande_id`),
  CONSTRAINT `rapport_demande_id_foreign` FOREIGN KEY (`demande_id`) REFERENCES `demandes` (`id`),
  CONSTRAINT `rapport_organisme_id_foreign` FOREIGN KEY (`organisme_id`) REFERENCES `organismes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rapports`
--

LOCK TABLES `rapports` WRITE;
/*!40000 ALTER TABLE `rapports` DISABLE KEYS */;
/*!40000 ALTER TABLE `rapports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refuscommunications`
--

DROP TABLE IF EXISTS `refuscommunications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refuscommunications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `motif` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `demande_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `refuscommunications_demande_id_foreign` (`demande_id`),
  CONSTRAINT `refuscommunications_demande_id_foreign` FOREIGN KEY (`demande_id`) REFERENCES `demandes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refuscommunications`
--

LOCK TABLES `refuscommunications` WRITE;
/*!40000 ALTER TABLE `refuscommunications` DISABLE KEYS */;
/*!40000 ALTER TABLE `refuscommunications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requerants`
--

DROP TABLE IF EXISTS `requerants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requerants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexe` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adressePostale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denomination` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_id` bigint unsigned NOT NULL,
  `qualite_id` bigint unsigned NOT NULL,
  `typesecteurs_id` bigint unsigned DEFAULT NULL,
  `contact2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `civilite` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secteur_id` bigint unsigned DEFAULT NULL,
  `autosave` tinyint(1) DEFAULT NULL,
  `savebycaidp` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requerants_type_id_foreign` (`type_id`),
  KEY `requerants_qualite_id_foreign` (`qualite_id`),
  KEY `ville_id` (`ville`),
  KEY `requerants_typesecteur_id_foreign` (`typesecteurs_id`),
  KEY `requerants_secteur_id_foreign` (`secteur_id`),
  CONSTRAINT `requerants_qualite_id_foreign` FOREIGN KEY (`qualite_id`) REFERENCES `qualites` (`id`),
  CONSTRAINT `requerants_secteur_id_foreign` FOREIGN KEY (`secteur_id`) REFERENCES `secteurs` (`id`),
  CONSTRAINT `requerants_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`),
  CONSTRAINT `requerants_typesecteur_id_foreign` FOREIGN KEY (`typesecteurs_id`) REFERENCES `typesecteurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requerants`
--

LOCK TABLES `requerants` WRITE;
/*!40000 ALTER TABLE `requerants` DISABLE KEYS */;
INSERT INTO `requerants` VALUES (186,'DIBO','Franck','048963258','franck@co.ci',NULL,NULL,NULL,NULL,NULL,'2023-12-18 12:19:16','2023-12-18 12:19:16',1,1,NULL,NULL,'M',NULL,NULL,NULL),(187,'TOURE','LAKOU','0748284069','lakou80@gmail.com',NULL,NULL,NULL,NULL,NULL,'2023-12-19 15:26:44','2023-12-19 15:26:44',1,1,NULL,NULL,'M',NULL,NULL,NULL);
/*!40000 ALTER TABLE `requerants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsables`
--

DROP TABLE IF EXISTS `responsables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autrecontact` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `etat` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'si true alors il est toujours en fonction',
  `dateInactif` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organisme_id` bigint unsigned NOT NULL,
  `qualiteresponsable_id` bigint unsigned DEFAULT NULL,
  `ri` int DEFAULT '1',
  `rh` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_respo_organisme` (`organisme_id`),
  CONSTRAINT `fk_respo_organisme` FOREIGN KEY (`organisme_id`) REFERENCES `organismes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsables`
--

LOCK TABLES `responsables` WRITE;
/*!40000 ALTER TABLE `responsables` DISABLE KEYS */;
INSERT INTO `responsables` VALUES (117,'Abi','Marc','85 29 65 29 65','abi@co.ci','{\"email\":null,\"contact\":null}',1,NULL,'2023-12-18 00:50:01','2023-12-18 00:50:01',156,49,1,1);
/*!40000 ALTER TABLE `responsables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saisinepredefinies`
--

DROP TABLE IF EXISTS `saisinepredefinies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saisinepredefinies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `typeSaisine` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saisinepredefinies`
--

LOCK TABLES `saisinepredefinies` WRITE;
/*!40000 ALTER TABLE `saisinepredefinies` DISABLE KEYS */;
INSERT INTO `saisinepredefinies` VALUES (1,'2023-11-24 08:00:00','2023-12-05 02:33:20','clarification');
/*!40000 ALTER TABLE `saisinepredefinies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saisines`
--

DROP TABLE IF EXISTS `saisines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saisines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` text,
  `motif` varchar(255) DEFAULT NULL,
  `demande_id` int DEFAULT NULL,
  `autosave` tinyint(1) DEFAULT NULL,
  `numSaisine` varchar(255) DEFAULT NULL,
  `auteurSaisine` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `etat` int DEFAULT NULL,
  `resume` varchar(200) DEFAULT NULL,
  `savebycaidp` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saisines`
--

LOCK TABLES `saisines` WRITE;
/*!40000 ALTER TABLE `saisines` DISABLE KEYS */;
INSERT INTO `saisines` VALUES (6,'<p>Demande non satismiste</p>','clarification',91,1,'Aff n°19/12/2023-1',1,'2023-12-19 16:12:00','2023-12-19 15:35:28',1,NULL,NULL),(7,'<p>blablablablablablablablablablablablablabla</p>','clarification',92,1,'Aff n°22/12/2023-7',1,'2023-12-22 07:51:29','2023-12-22 07:51:29',NULL,NULL,NULL);
/*!40000 ALTER TABLE `saisines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secteurs`
--

DROP TABLE IF EXISTS `secteurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secteurs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `secteur` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secteurs`
--

LOCK TABLES `secteurs` WRITE;
/*!40000 ALTER TABLE `secteurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `secteurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sources`
--

DROP TABLE IF EXISTS `sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sources` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sources`
--

LOCK TABLES `sources` WRITE;
/*!40000 ALTER TABLE `sources` DISABLE KEYS */;
INSERT INTO `sources` VALUES (1,'Media','2019-09-11 15:48:34','2019-09-11 15:48:34'),(2,'Communication','2019-09-12 08:55:43','2019-09-12 08:55:43'),(3,'Marketing ','2019-09-23 09:50:00','2019-09-23 09:50:00'),(4,'Direction des affaires finaciere','2019-10-01 11:06:32','2019-10-01 11:06:32'),(5,'Direction des affaires finacieres','2019-10-01 14:50:14','2019-10-01 14:50:14'),(6,'SIM','2019-10-02 14:27:53','2019-10-02 14:27:53'),(7,'','2023-12-03 18:19:30','2023-12-03 18:19:30'),(8,'DIRECTION DES FINANCES','2023-12-05 01:09:57','2023-12-05 01:09:57');
/*!40000 ALTER TABLE `sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Personne physique',NULL,NULL),(2,'Personne morale',NULL,NULL),(3,'Concerné(e)',NULL,NULL),(4,'Mandataire',NULL,NULL);
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typesecteurs`
--

DROP TABLE IF EXISTS `typesecteurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typesecteurs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typesecteurs`
--

LOCK TABLES `typesecteurs` WRITE;
/*!40000 ALTER TABLE `typesecteurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `typesecteurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `pseudo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `requerant_id` bigint unsigned DEFAULT NULL,
  `responsable_id` bigint unsigned DEFAULT NULL,
  `caidp` tinyint(1) DEFAULT NULL,
  `privilegesOrga` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `caidp_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_requerant_id_foreign` (`requerant_id`),
  KEY `users_responsable_id_foreign` (`responsable_id`),
  KEY `pseudo` (`pseudo`),
  KEY `fk_user_caidp` (`caidp_id`),
  CONSTRAINT `fk_user_caidp` FOREIGN KEY (`caidp_id`) REFERENCES `caidps` (`id`) ON DELETE SET NULL,
  CONSTRAINT `users_requerant_id_foreign` FOREIGN KEY (`requerant_id`) REFERENCES `requerants` (`id`),
  CONSTRAINT `users_responsable_id_foreign` FOREIGN KEY (`responsable_id`) REFERENCES `responsables` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (225,'Admin','koffi@gm.com',NULL,'koffi@gm.com','$2y$10$cJA32.cmpQQDqhlvbk7eAu7mEWiMgXPvGl67MXJhaf/xtVBu9/tEq',NULL,'2023-12-05 00:53:33','2023-12-05 00:53:33',NULL,NULL,1,'{\"createUser\":true,\"createDemande\":true,\"createFile\":true,\"createDecison\":true,\"valideDecison\":true,\"sendDecison\":true}',1),(227,'Abi Marc','abi@co.ci',NULL,'abi@co.ci','$2y$10$KtIzOvkKTjgVLBC/TJCOteGqSrildEnbPzNTXaeVx6xtuUdf0yuMW',NULL,'2023-12-18 00:50:01','2023-12-18 00:50:01',NULL,117,NULL,'{\"createUser\":true,\"createDemande\":true,\"createFile\":true,\"createDecison\":true,\"valideDecison\":true,\"sendDecison\":true}',NULL),(228,'DIBO Franck','franck@co.ci',NULL,'franck@co.ci','$2y$10$3o22AEHq46kGBn7Pz/3UOeNchVBn1a5AhWnriaV.0aCXambwY7jfm',NULL,'2023-12-18 12:19:16','2023-12-18 12:19:16',186,NULL,NULL,NULL,NULL),(229,'TOURE LAKOU','lakou80@gmail.com',NULL,'lakou80@gmail.com','$2y$10$lMy2Gwti3SH1VeVEfIv2rO2hKtVsD7vPO.zFQJp5xGJDoJA9qaIoO',NULL,'2023-12-19 15:26:44','2023-12-19 15:26:44',187,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validations`
--

DROP TABLE IF EXISTS `validations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `validations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `organisme_id` bigint unsigned DEFAULT NULL,
  `typeValide` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `organisme_id` (`organisme_id`),
  CONSTRAINT `validations_ibfk_1` FOREIGN KEY (`organisme_id`) REFERENCES `organismes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validations`
--

LOCK TABLES `validations` WRITE;
/*!40000 ALTER TABLE `validations` DISABLE KEYS */;
INSERT INTO `validations` VALUES (6,156,'imprim','2023-12-18 00:50:01','2023-12-18 00:50:01');
/*!40000 ALTER TABLE `validations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villes`
--

DROP TABLE IF EXISTS `villes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `villes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ville` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villes`
--

LOCK TABLES `villes` WRITE;
/*!40000 ALTER TABLE `villes` DISABLE KEYS */;
INSERT INTO `villes` VALUES (1,'Abidjan','2019-09-05 16:12:28',NULL),(2,'Bouaké','2019-09-05 16:12:49',NULL),(3,'Daloa','2019-09-05 16:12:49',NULL),(4,'Yamoussoukro','2019-09-05 16:13:07',NULL),(5,'San-Pédro','2019-09-05 16:13:07',NULL),(6,'Divo','2019-09-05 16:13:21',NULL),(7,'Korhogo','2019-09-05 16:13:21',NULL),(8,'Anyama','2019-09-05 16:13:41',NULL),(9,'Abengourou','2019-09-05 16:13:41',NULL),(10,'Man','2019-09-05 16:14:00',NULL),(11,'Gagnoa','2019-09-05 16:14:00',NULL),(12,'Soubré','2019-09-05 16:14:14',NULL),(13,'Agboville','2019-09-05 16:14:14',NULL),(14,'Dabou','2019-09-05 16:14:29',NULL),(15,'Grand-Bassam','2019-09-05 16:14:29',NULL),(16,'Bouaflé','2019-09-05 16:14:45',NULL),(17,'Issia','2019-09-05 16:14:45',NULL),(18,'Sinfra','2019-09-05 16:15:05',NULL),(19,'Katiola','2019-09-05 16:15:05',NULL),(20,'Bingerville','2019-09-05 16:15:18',NULL),(21,'Adzopé','2019-09-05 16:15:18',NULL),(22,'Séguéla','2019-09-05 16:15:32',NULL),(23,'Bondoukou','2019-09-05 16:15:32',NULL),(24,'Oumé','2019-09-05 16:15:46',NULL),(25,'Ferkessedougou','2019-09-05 16:15:46',NULL),(26,'Dimbokro1','2019-09-05 16:16:03',NULL),(27,'Odienné','2019-09-05 16:16:03',NULL),(28,'Duékoué','2019-09-05 16:16:17',NULL),(29,'Danané','2019-09-05 16:16:17',NULL),(30,'Tingréla','2019-09-05 16:16:31',NULL),(31,'Guiglo','2019-09-05 16:16:31',NULL),(32,'Boundiali','2019-09-05 16:16:44',NULL),(33,'Agnibilékrou','2019-09-05 16:16:44',NULL),(34,'Daoukro','2019-09-05 16:16:57',NULL),(35,'Vavoua','2019-09-05 16:16:57',NULL),(36,'Zuénoula','2019-09-05 16:17:11',NULL),(37,'Tiassalé','2019-09-05 16:17:11',NULL),(38,'Toumodi','2019-09-05 16:17:28',NULL),(39,'Akoupé','2019-09-05 16:17:28',NULL),(40,'Lakota','2019-09-05 16:17:35',NULL),(41,'Abobo','2019-09-05 16:19:25',NULL),(42,'Adjamé','2019-09-05 16:19:25',NULL),(43,'Attécoubé','2019-09-05 16:19:36',NULL),(44,'Cocody','2019-09-05 16:19:36',NULL),(45,'Plateau','2019-09-05 16:19:59',NULL),(46,'Yopugon','2019-09-05 16:19:59',NULL),(47,'Treichville','2019-09-05 16:20:15',NULL),(48,'Koumassi','2019-09-05 16:20:15',NULL),(49,'Marcory','2019-09-05 16:22:59',NULL),(50,'Port-Bouët','2019-09-05 16:22:59',NULL),(51,'Songon','2019-09-05 16:23:27',NULL),(52,'Bingerville','2019-09-05 16:23:27',NULL);
/*!40000 ALTER TABLE `villes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-12 18:05:32
