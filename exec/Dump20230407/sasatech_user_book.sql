-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 43.201.102.210    Database: sasatech
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `user_book`
--

DROP TABLE IF EXISTS `user_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `converted_image_url` varchar(2000) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `book_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK85pwltn867pjxog1gk5smtqcw` (`book_id`),
  KEY `FKbc0bwdnndnxhct38sinbem0n0` (`user_id`),
  CONSTRAINT `FK85pwltn867pjxog1gk5smtqcw` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `FKbc0bwdnndnxhct38sinbem0n0` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_book`
--

LOCK TABLES `user_book` WRITE;
/*!40000 ALTER TABLE `user_book` DISABLE KEYS */;
INSERT INTO `user_book` VALUES (1,NULL,'2023-04-06 16:20:59','2023-04-06 16:20:59',123,1),(2,NULL,'2023-04-06 16:21:03','2023-04-06 16:21:03',423,1),(3,NULL,'2023-04-06 16:21:05','2023-04-06 16:21:05',13,1),(4,NULL,'2023-04-06 16:21:07','2023-04-06 16:21:07',21,1),(5,'https://oaidalleapiprodscus.blob.core.windows.net/private/org-5Wj3fg81BzMfLv31lr7JGo6V/user-MvgooAbE3PWVUFm5vW7UwjIY/img-vyrUz7djllefMfvkDWdYy7yl.png?st=2023-04-07T01%3A30%3A47Z&se=2023-04-07T03%3A30%3A47Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-04-06T20%3A44%3A19Z&ske=2023-04-07T20%3A44%3A19Z&sks=b&skv=2021-08-06&sig=19qlhJNi9jHk3yAxEFDq3a/0%2BmRAycMh//yRNwKZftE%3D','2023-04-07 02:04:07','2023-04-06 16:33:11',123,2),(6,'https://oaidalleapiprodscus.blob.core.windows.net/private/org-5Wj3fg81BzMfLv31lr7JGo6V/user-MvgooAbE3PWVUFm5vW7UwjIY/img-H9LR9gNCHSPWWSTIBzmwzs6A.png?st=2023-04-07T01%3A32%3A44Z&se=2023-04-07T03%3A32%3A44Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-04-06T20%3A44%3A14Z&ske=2023-04-07T20%3A44%3A14Z&sks=b&skv=2021-08-06&sig=yz5QD9Vmpf0eex4cr/yW9kvjClQ8%2Bx9NFSGTwUpxzt4%3D','2023-04-06 16:33:33','2023-04-06 16:33:16',423,2),(8,NULL,'2023-04-06 16:33:21','2023-04-06 16:33:21',21,2),(9,'https://oaidalleapiprodscus.blob.core.windows.net/private/org-5Wj3fg81BzMfLv31lr7JGo6V/user-MvgooAbE3PWVUFm5vW7UwjIY/img-XVPw39X8XeeveQcQxfRqRG8h.png?st=2023-04-06T16%3A07%3A42Z&se=2023-04-06T18%3A07%3A42Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-04-06T16%3A20%3A55Z&ske=2023-04-07T16%3A20%3A55Z&sks=b&skv=2021-08-06&sig=QqgeH5aS5hI4hGjlo01lveX5/OSnABiBPDTqY4KVdn4%3D','2023-04-06 17:06:35','2023-04-06 16:58:17',423,5),(10,'https://oaidalleapiprodscus.blob.core.windows.net/private/org-5Wj3fg81BzMfLv31lr7JGo6V/user-MvgooAbE3PWVUFm5vW7UwjIY/img-FCMRaKRsrhGYPosTjgl0nbdi.png?st=2023-04-06T16%3A08%3A18Z&se=2023-04-06T18%3A08%3A18Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-04-06T14%3A37%3A30Z&ske=2023-04-07T14%3A37%3A30Z&sks=b&skv=2021-08-06&sig=j8KDS/FXor12kZrIL9yDxkZtlYOMwiwpBoPdz7YNZuM%3D','2023-04-06 17:06:52','2023-04-06 16:58:21',123,5),(11,NULL,'2023-04-06 16:58:25','2023-04-06 16:58:25',17,5),(12,NULL,'2023-04-06 16:58:29','2023-04-06 16:58:29',3023,5),(13,'https://oaidalleapiprodscus.blob.core.windows.net/private/org-5Wj3fg81BzMfLv31lr7JGo6V/user-MvgooAbE3PWVUFm5vW7UwjIY/img-TVbfgxf7KejQxCKjl3V9x4SB.png?st=2023-04-06T16%3A11%3A05Z&se=2023-04-06T18%3A11%3A05Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-04-06T16%3A51%3A17Z&ske=2023-04-07T16%3A51%3A17Z&sks=b&skv=2021-08-06&sig=MiyUee4KU%2BpWC%2B4njrZiSHiMliS8YvPL0cEvyfcWPcU%3D','2023-04-06 17:02:57','2023-04-06 16:59:49',423,6),(14,'https://oaidalleapiprodscus.blob.core.windows.net/private/org-5Wj3fg81BzMfLv31lr7JGo6V/user-MvgooAbE3PWVUFm5vW7UwjIY/img-hvu2LDJT9hfSlDOvSRJTyEuU.png?st=2023-04-06T16%3A11%3A40Z&se=2023-04-06T18%3A11%3A40Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-04-06T08%3A27%3A14Z&ske=2023-04-07T08%3A27%3A14Z&sks=b&skv=2021-08-06&sig=pVGag8o3kk4pH2O9ilqRhoAjP1vq%2BwD3jyChm6AT%2BXk%3D','2023-04-06 17:03:03','2023-04-06 16:59:52',123,6),(15,NULL,'2023-04-06 17:00:02','2023-04-06 17:00:02',13,6),(16,NULL,'2023-04-06 17:00:04','2023-04-06 17:00:04',2435,6),(17,NULL,'2023-04-06 17:01:35','2023-04-06 17:01:35',17,6),(18,NULL,'2023-04-06 17:01:38','2023-04-06 17:01:38',1,6),(19,NULL,'2023-04-06 17:01:40','2023-04-06 17:01:40',3,6),(20,NULL,'2023-04-06 17:01:42','2023-04-06 17:01:42',5,6),(21,NULL,'2023-04-06 17:05:53','2023-04-06 17:05:53',2435,5),(22,NULL,'2023-04-06 17:06:00','2023-04-06 17:06:00',1,5),(23,NULL,'2023-04-06 17:06:03','2023-04-06 17:06:03',3,5),(24,NULL,'2023-04-06 17:15:59','2023-04-06 17:15:59',3023,2),(25,NULL,'2023-04-06 17:16:40','2023-04-06 17:16:40',2435,2),(26,NULL,'2023-04-06 17:26:18','2023-04-06 17:26:18',17,2),(27,NULL,'2023-04-06 17:26:54','2023-04-06 17:26:54',243,5),(28,NULL,'2023-04-06 17:26:55','2023-04-06 17:26:55',1633,5),(29,NULL,'2023-04-06 17:26:57','2023-04-06 17:26:57',2345,5),(30,NULL,'2023-04-06 17:28:29','2023-04-06 17:28:29',2345,2),(31,NULL,'2023-04-06 17:29:38','2023-04-06 17:29:38',2345,6),(32,NULL,'2023-04-06 17:30:54','2023-04-06 17:30:54',1,1),(33,NULL,'2023-04-06 17:30:56','2023-04-06 17:30:56',2,1),(34,NULL,'2023-04-06 17:30:58','2023-04-06 17:30:58',3,1),(35,NULL,'2023-04-06 17:30:59','2023-04-06 17:30:59',4,1),(36,NULL,'2023-04-06 17:31:01','2023-04-06 17:31:01',2345,1),(37,NULL,'2023-04-06 17:31:02','2023-04-06 17:31:02',5,1),(38,NULL,'2023-04-06 17:31:03','2023-04-06 17:31:03',6,1),(39,NULL,'2023-04-06 17:41:35','2023-04-06 17:41:35',13,7),(40,NULL,'2023-04-06 17:41:44','2023-04-06 17:41:44',11111,7);
/*!40000 ALTER TABLE `user_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-07 12:04:15
