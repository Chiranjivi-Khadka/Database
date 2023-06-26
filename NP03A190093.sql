-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: school_management_system
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `Dip_id` int(11) NOT NULL,
  `Dep_name` varchar(20) DEFAULT NULL,
  `Total_workers` int(11) NOT NULL,
  PRIMARY KEY (`Dip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Music_club',2),(2,'Sport_club',2),(3,'Library',2),(4,'Kitchen',2);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_report`
--

DROP TABLE IF EXISTS `exam_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_report` (
  `Ex_id` int(11) NOT NULL,
  `Stud_id` int(11) NOT NULL,
  `Class` int(11) NOT NULL,
  `GPA` decimal(3,2) NOT NULL,
  `Remarks` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Ex_id`),
  KEY `Stud_id` (`Stud_id`),
  CONSTRAINT `exam_report_ibfk_1` FOREIGN KEY (`Stud_id`) REFERENCES `students` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_report`
--

LOCK TABLES `exam_report` WRITE;
/*!40000 ALTER TABLE `exam_report` DISABLE KEYS */;
INSERT INTO `exam_report` VALUES (1,1,1,3.96,'A+'),(2,2,2,3.56,'A'),(3,3,3,2.98,'B+'),(4,4,4,4.00,'A+'),(5,5,5,3.45,'A'),(6,6,6,3.50,'A'),(7,7,7,3.24,'A'),(8,8,8,2.14,'B'),(9,9,9,3.12,'B+'),(10,10,10,2.22,'B'),(11,11,5,2.75,'B+'),(12,12,7,2.88,'B+'),(13,13,3,3.20,'A'),(14,14,9,3.90,'A+'),(15,15,1,3.21,'A'),(16,16,10,3.50,'A'),(17,17,10,3.50,'A'),(18,18,1,2.68,'B+');
/*!40000 ALTER TABLE `exam_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_account`
--

DROP TABLE IF EXISTS `fee_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_account` (
  `Fe_id` int(11) NOT NULL,
  `Stud_id` int(11) NOT NULL,
  `Monthly_fee` int(11) NOT NULL,
  `Other_charges` int(11) DEFAULT NULL,
  PRIMARY KEY (`Fe_id`),
  KEY `Stud_id` (`Stud_id`),
  CONSTRAINT `fee_account_ibfk_1` FOREIGN KEY (`Stud_id`) REFERENCES `students` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_account`
--

LOCK TABLES `fee_account` WRITE;
/*!40000 ALTER TABLE `fee_account` DISABLE KEYS */;
INSERT INTO `fee_account` VALUES (1,1,800,300),(2,2,900,300),(3,3,1000,400),(4,4,1100,400),(5,5,1200,400),(6,6,1300,500),(7,7,1400,0),(8,8,1500,500),(9,9,1600,500),(10,10,1700,600),(11,11,1200,400),(12,12,1400,500),(13,13,1000,400),(14,14,1600,500),(15,15,800,300),(16,16,1700,600),(17,17,1700,600),(18,18,1400,500);
/*!40000 ALTER TABLE `fee_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gurdian_detail`
--

DROP TABLE IF EXISTS `gurdian_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gurdian_detail` (
  `Gud_id` int(11) NOT NULL,
  `Stud_id` int(11) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `Address` char(30) DEFAULT NULL,
  `Phone` int(11) NOT NULL,
  PRIMARY KEY (`Gud_id`),
  KEY `Stud_id` (`Stud_id`),
  CONSTRAINT `gurdian_detail_ibfk_1` FOREIGN KEY (`Stud_id`) REFERENCES `students` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gurdian_detail`
--

LOCK TABLES `gurdian_detail` WRITE;
/*!40000 ALTER TABLE `gurdian_detail` DISABLE KEYS */;
INSERT INTO `gurdian_detail` VALUES (1,1,'Kesar','Thapa','Khimti',446712),(2,8,'Yadav','Dahal','Khimti',445467),(3,3,'Rajendra','Thokhar','Malu',345644),(4,2,'Baikundha','Rajbanshi','Khimti',443456),(5,5,'Ramsaran','Chauhan','Milti',446745),(6,4,'Hem','Karki','Phulasi',443434),(7,7,'Ramchandra','Kadariya','Khimti',441232),(8,9,'Dipu','Shrestha','Sahare',440967),(9,10,'Padam','Maghi','Pharpu',4408670),(10,6,'Syam','Shrestha','Sivalaye',443564),(11,11,'Hari','Karki','Kirne',441900),(12,12,'Sahadev','Karki','Phulasi',447712),(13,13,'Gopi','Phuyal','Kirne',443462),(14,14,'Ramesh','Kadariya','Khimti',445809),(15,15,'Madhav','Shah','Khimti',442319),(16,16,'Silpa','Chauhan','Milti',441343),(17,17,'Dolma','Tamang','Khimti',445610),(18,18,'Asok','Gajmher','Betali',440990);
/*!40000 ALTER TABLE `gurdian_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library` (
  `Lib_id` int(11) NOT NULL,
  `Stud_id` int(11) NOT NULL,
  `Name_of_book` varchar(30) NOT NULL,
  `Book_category` varchar(20) NOT NULL,
  `Issued_date` varchar(20) NOT NULL,
  `Expire_date` varchar(20) NOT NULL,
  PRIMARY KEY (`Lib_id`),
  KEY `Stud_id` (`Stud_id`),
  CONSTRAINT `library_ibfk_1` FOREIGN KEY (`Stud_id`) REFERENCES `students` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES (1,1,'Nepal_Territory','Geography','12 March','19 March'),(2,2,'Sammer love','Novel','14 March','21 March'),(3,5,'Muna Madan','Poetry','11 March','18 March'),(4,8,'A history of Nepal','History','15 March','22 March'),(5,7,'Footall Fest','Sports','10 March','17 March'),(6,18,'Love triangle','Novel','12 March','19 March'),(7,15,'Fairy Tale','Comics','11 March','17 March'),(8,12,'Social Practise','Knowledge','16 March','23 March');
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `Sal_id` int(11) NOT NULL,
  `Monthly_salary` int(11) NOT NULL,
  `Bonus` int(11) DEFAULT NULL,
  `Tech_id` int(11) NOT NULL,
  PRIMARY KEY (`Sal_id`),
  KEY `Tech_id` (`Tech_id`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`Tech_id`) REFERENCES `teacher` (`Tech_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,25000,5000,1),(2,25000,2000,2),(3,24000,3000,8),(4,27000,1000,6),(5,22000,5000,7),(6,28000,2000,5),(7,25000,3000,8),(8,19000,0,3);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `St_id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Working_dep` int(11) NOT NULL,
  PRIMARY KEY (`St_id`),
  KEY `Working_dep` (`Working_dep`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`Working_dep`) REFERENCES `department` (`Dip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Rajendra Tamang',2),(2,'Hari Karki',2),(3,'Narendra Bhandari',3),(5,'Hari Achhami',1),(6,'Kamala Karki',1),(7,'Subi Subedi',3),(8,'Januka Tamang',4);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_registration`
--

DROP TABLE IF EXISTS `student_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_registration` (
  `Stud_reg_id` int(11) NOT NULL,
  `Present_days` int(11) NOT NULL,
  `Absent_days` int(11) NOT NULL,
  `Total_working_days` int(11) NOT NULL DEFAULT 220,
  `Stud_id` int(11) NOT NULL,
  PRIMARY KEY (`Stud_reg_id`),
  KEY `Stud_id` (`Stud_id`),
  CONSTRAINT `student_registration_ibfk_1` FOREIGN KEY (`Stud_id`) REFERENCES `students` (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_registration`
--

LOCK TABLES `student_registration` WRITE;
/*!40000 ALTER TABLE `student_registration` DISABLE KEYS */;
INSERT INTO `student_registration` VALUES (1,215,5,220,1),(2,211,9,220,2),(3,208,12,220,3),(4,214,6,220,4),(5,217,3,220,5),(6,215,5,220,6),(7,215,5,220,7),(8,218,2,220,8),(9,209,11,220,9),(10,220,0,220,10),(11,219,1,220,11),(12,218,2,220,12),(13,215,5,220,13),(14,217,3,220,14),(15,215,5,220,15),(16,220,0,220,16),(17,217,3,220,17),(18,216,4,220,18);
/*!40000 ALTER TABLE `student_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `Stud_id` int(11) NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `Class` int(11) NOT NULL,
  `Gender` char(5) NOT NULL,
  PRIMARY KEY (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'David','Thapa',7,1,'M'),(2,'Sameer','Rajbanshi',8,2,'M'),(3,'Srijana','Thokhar',9,3,'F'),(4,'Ravi','Karki',10,4,'M'),(5,'Rupak','Chauhan',11,5,'M'),(6,'Suvash','Shrestha',12,6,'M'),(7,'Anil','Kaderiya',13,7,'M'),(8,'Jenish','Dahal',14,8,'M'),(9,'Sumitra','Shrestha',15,9,'F'),(10,'Sansila','Maghi',16,10,'F'),(11,'Suman','Karki',11,5,'M'),(12,'Samip','Karki',13,7,'M'),(13,'Sandeep','Phuyal',9,3,'M'),(14,'Sangita','Kadariya',16,9,'F'),(15,'Sandesh','Shah',8,1,'M'),(16,'Suman','Chauhan',18,10,'M'),(17,'Pramila','Tamang',17,10,'F'),(18,'Apsara','Gajmher',14,7,'F'),(19,'Januka','Thapa',9,2,'F');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_detail`
--

DROP TABLE IF EXISTS `subject_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_detail` (
  `Sub_id` int(11) NOT NULL,
  `Sub_code` int(11) NOT NULL,
  `Sub_name` varchar(20) NOT NULL,
  PRIMARY KEY (`Sub_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_detail`
--

LOCK TABLES `subject_detail` WRITE;
/*!40000 ALTER TABLE `subject_detail` DISABLE KEYS */;
INSERT INTO `subject_detail` VALUES (1,111,'Science'),(2,112,'Math'),(3,113,'Nepali'),(4,114,'English'),(5,115,'Population'),(6,116,'Social'),(7,117,'Opt_math'),(8,118,'Health_studies');
/*!40000 ALTER TABLE `subject_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `Tech_id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `Teaching_subject` varchar(30) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  PRIMARY KEY (`Tech_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Narendra','Dhami','Science','9840142578'),(2,'Purusottham','Achharya','Maths','9840198578'),(3,'Mathura','Rimal','Nepali','9860168478'),(4,'Khila','Achhami','English','9866466478'),(5,'Madan','Dhami','Population','9844234356'),(6,'Hari','Karki','Social','9854062778'),(7,'Khem','Regmi','Opt_maths','9854566778'),(8,'Kul','Ghimire','Health_studies','9844568773');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_registration`
--

DROP TABLE IF EXISTS `teacher_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_registration` (
  `Tech_reg_id` int(11) NOT NULL,
  `Present_days` int(11) NOT NULL,
  `Absent_days` int(11) NOT NULL,
  `Total_working_days` int(11) NOT NULL DEFAULT 220,
  `Tech_id` int(11) NOT NULL,
  PRIMARY KEY (`Tech_reg_id`),
  KEY `Tech_id` (`Tech_id`),
  CONSTRAINT `teacher_registration_ibfk_1` FOREIGN KEY (`Tech_id`) REFERENCES `teacher` (`Tech_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_registration`
--

LOCK TABLES `teacher_registration` WRITE;
/*!40000 ALTER TABLE `teacher_registration` DISABLE KEYS */;
INSERT INTO `teacher_registration` VALUES (1,219,1,220,1),(2,220,0,220,2),(3,218,2,220,3),(4,220,0,220,4),(5,217,3,220,5),(6,215,5,220,6),(7,218,2,220,7),(8,220,0,220,8);
/*!40000 ALTER TABLE `teacher_registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-01 12:14:20
