-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: buildingdb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `beds`
--

DROP TABLE IF EXISTS `beds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ac` bit(1) DEFAULT NULL,
  `bed_id` varchar(255) DEFAULT NULL,
  `bed_name` varchar(255) DEFAULT NULL,
  `bed_status` bit(1) DEFAULT NULL,
  `building_id` int NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `default_rent` double DEFAULT NULL,
  `floor_id` int DEFAULT NULL,
  `guest_id` varchar(255) DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `security_deposit` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beds`
--

LOCK TABLES `beds` WRITE;
/*!40000 ALTER TABLE `beds` DISABLE KEYS */;
/*!40000 ALTER TABLE `beds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildings` (
  `building_id` int NOT NULL AUTO_INCREMENT,
  `building_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`building_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floors`
--

DROP TABLE IF EXISTS `floors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `floors` (
  `floor_id` int NOT NULL AUTO_INCREMENT,
  `building_id` int DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `floor_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`floor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floors`
--

LOCK TABLES `floors` WRITE;
/*!40000 ALTER TABLE `floors` DISABLE KEYS */;
/*!40000 ALTER TABLE `floors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `id` varchar(255) NOT NULL,
  `aadhar_number` varchar(255) DEFAULT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `amount_paid` double NOT NULL,
  `amount_to_be_paid` double NOT NULL,
  `bed_id` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `building_id` int NOT NULL,
  `check_in_date` datetime DEFAULT NULL,
  `check_out_date` datetime DEFAULT NULL,
  `checkin_notes` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `default_rent` double NOT NULL,
  `due_amount` double NOT NULL,
  `duration` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_number` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `guest_status` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `notice_date` date DEFAULT NULL,
  `occupancy_type` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `payment_purpose` varchar(255) DEFAULT NULL,
  `personal_number` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `planned_check_out_date` datetime DEFAULT NULL,
  `secondary_phone_number` varchar(255) DEFAULT NULL,
  `security_deposit` double NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `work_address_line1` varchar(255) DEFAULT NULL,
  `work_address_line2` varchar(255) DEFAULT NULL,
  `work_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_id`
--

DROP TABLE IF EXISTS `guest_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_id`
--

LOCK TABLES `guest_id` WRITE;
/*!40000 ALTER TABLE `guest_id` DISABLE KEYS */;
INSERT INTO `guest_id` VALUES (1);
/*!40000 ALTER TABLE `guest_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL,
  `amount_paid` double NOT NULL,
  `building_id` int NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `guest_id` varchar(255) DEFAULT NULL,
  `occupancy_type` varchar(255) DEFAULT NULL,
  `payment_purpose` varchar(255) DEFAULT NULL,
  `refund_amount` double NOT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `building_id` int DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `floor_id` int DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `pwd_1` varchar(255) DEFAULT NULL,
  `building_id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `flag` bit(1) NOT NULL,
  `last_password_changed_date` datetime DEFAULT NULL,
  `login_status` bit(1) NOT NULL,
  `logout_date` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_loggedin_date` datetime NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_phone_number` bigint DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_5jihngd9j7agdimh55qgpgxh6` (`user_loggedin_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_master`
--

DROP TABLE IF EXISTS `users_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_master` (
  `id` int NOT NULL AUTO_INCREMENT,
  `building_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_phone_number` bigint DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_master`
--

LOCK TABLES `users_master` WRITE;
/*!40000 ALTER TABLE `users_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'buildingdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `buildingwise_summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buildingwise_summary`()
begin
WITH a AS(SELECT building_name,SUM(p.amount_paid) Total,sum(p.refund_amount) Amount
FROM payments p RIGHT JOIN buildings b ON
p.building_id = b.building_id
WHERE p.transaction_date BETWEEN DATE_SUB(curdate(), INTERVAL 30 DAY ) AND
curdate() group by p.building_id),
b AS(SELECT (SELECT building_name FROM buildings
WHERE building_id = b.building_id) buildingname,count(bed_id) Available_Beds
FROM beds b WHERE bed_status = 1 GROUP BY building_id)
SELECT b.buildingname,IFNULL(a.Total,0) Total_Guest_Paid,IFNULL(Amount,0) Total_Refund_to_Guest,Available_Beds
FROM b LEFT JOIN a ON a.building_name =b.buildingname;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BUILDING_WISE_TOTAL_DUE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BUILDING_WISE_TOTAL_DUE`(BUILDING__ID INT)
BEGIN
SELECT
sum(
CASE g.guest_status
WHEN 'Active' THEN
IF( NOW()>=DATE_ADD(g.check_in_date,INTERVAL 30 DAY),(b.default_rent),0)
WHEN 'InNotice' THEN
(round(datediff(planned_check_out_date, check_in_date)*b.default_rent/30)
-IFNULL((SELECT sum(payments.amount_paid) FROM payments WHERE guest_id= g.id),0)
+IFNULL((SELECT sum(payments.refund_amount) FROM payments WHERE guest_id= g.id),0))
END
) Due_Amount
FROM guest g JOIN beds b ON g.bed_id = b.bed_id
WHERE g.guest_status in ('Active','InNotice') AND g.occupancy_type='Regular'  AND g.building_id = BUILDING__ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_out` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_out`(GUEST__ID VARCHAR(25))
BEGIN
DECLARE total_due DOUBLE;
DECLARE CHECK__IN_DATE DATE;
DECLARE CHECK__OUT_DATE DATE;
DECLARE TOTAL_NO_OF_DAYS INT;
SELECT check_in_date,check_out_date INTO CHECK__IN_DATE,CHECK__OUT_DATE FROM guest WHERE id=GUEST__ID and guest_status = 1 ;
SET TOTAL_NO_OF_DAYS =DATEDIFF (CHECK__OUT_DATE ,CHECK__IN_DATE);
SELECT
round(TOTAL_NO_OF_DAYS*b.default_rent/30)-IFNULL(sum(payments.amount_paid),0)+IFNULL(sum(payments.refund_amount),0) INTO total_due
FROM guest join beds b on guest.bed_id = b.bed_id left join payments on guest.id = payments.guest_id
WHERE guest_status = 1 and guest.id=GUEST__ID;
IF total_due=0 THEN
UPDATE guest SET guest_status=0 WHERE id=GUEST__ID;
UPDATE beds SET bed_status = 1,guest_id=NULL WHERE bed_id = (SELECT bed_id FROM guest WHERE id = GUEST__ID);
SELECT 'Due Cleared and Status Updated' AS Status;
ELSEIF total_due<0 THEN
SELECT CONCAT('Manager Needs To Pay: ',total_due) AS Message;
ELSE
SELECT CONCAT('Due to be cleared by Guest: ',total_due) Message ;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_out_func` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_out_func`(GUEST__ID VARCHAR(10))
BEGIN
DECLARE _NOTICE_DATE_ DATE;
DECLARE _CHECK_IN_DATE_ DATE;
DECLARE _CHECK_OUT_DATE_ DATE;
DECLARE TOTAL_NO_OF_DAYS INT;
SELECT check_in_date INTO _CHECK_IN_DATE_ FROM GUEST WHERE ID=GUEST__ID and guest_status = 1 ;
SET _NOTICE_DATE_ = CURDATE();
SET _CHECK_OUT_DATE_ = DATE_ADD(_NOTICE_DATE_,INTERVAL 15 DAY);
SET TOTAL_NO_OF_DAYS =DATEDIFF (_CHECK_OUT_DATE_ ,_CHECK_IN_DATE_);
UPDATE GUEST SET CHECK_OUT_DATE = _CHECK_OUT_DATE_ ,NOTICE_DATE = _NOTICE_DATE_ WHERE ID=GUEST__ID and guest_status = 1 ;
SELECT
sum(payments.amount_paid)-round(TOTAL_NO_OF_DAYS*beds.default_rent/30) Guest_Due_Amount
FROM guest join beds on guest.bed_id = beds.bed_id join payments on guest.id = payments.guest_id
where guest.guest_status = 1 and guest.occupancy_type= 'regular' and guest.id=GUEST__ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUE_AMOUNT_COUNT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUE_AMOUNT_COUNT`(BUILDING__ID INT)
BEGIN
SELECT
count(CASE
WHEN (round(datediff(curdate(), check_in_date)*b.default_rent/30)-
IFNULL((SELECT sum(payments.amount_paid) FROM payments WHERE guest_id= g.id),0)+
IFNULL((SELECT sum(payments.refund_amount) FROM payments WHERE guest_id= g.id),0))>0 THEN 1
ELSE NULL
END ) Guest_Due_Amount_Count
FROM guest g JOIN beds b ON g.bed_id = b.bed_id
WHERE g.building_id = BUILDING__ID;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUE_AMOUNT_GUEST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUE_AMOUNT_GUEST`(GUEST_ID_ VARCHAR(10))
BEGIN
DECLARE _NOTICE_DATE_ DATE;
DECLARE _CHECK_IN_DATE_ DATE;
DECLARE _CHECK_OUT_DATE_ DATE;
DECLARE TOTAL_NO_OF_DAYS INT;
DECLARE Guest_Due_Amount DOUBLE;
SELECT check_in_date INTO _CHECK_IN_DATE_ FROM GUEST WHERE ID=GUEST_ID_ and guest_status = 1 ;
SET _NOTICE_DATE_ = now();
SET _CHECK_OUT_DATE_ = DATE_ADD(_NOTICE_DATE_,INTERVAL 15 DAY);
SET TOTAL_NO_OF_DAYS =DATEDIFF (_CHECK_OUT_DATE_ ,_CHECK_IN_DATE_);
UPDATE GUEST SET CHECK_OUT_DATE = _CHECK_OUT_DATE_ ,NOTICE_DATE = _NOTICE_DATE_ WHERE ID=GUEST_ID_ and guest_status = 1 ;
SELECT
round(TOTAL_NO_OF_DAYS*b.default_rent/30)-sum(payments.amount_paid) INTO Guest_Due_Amount
FROM guest join beds b on guest.bed_id = b.bed_id join payments on guest.id = payments.guest_id
where guest_status = 1 and guest.id=GUEST_ID_;
IF Guest_Due_Amount<0 THEN
SELECT CONCAT('Due to be cleared by guest : ',-Guest_Due_Amount) AS Message;
ELSEIF Guest_Due_Amount>0 THEN
SELECT CONCAT('Manager To Pay : ',-Guest_Due_Amount) AS Message;
ELSE
SELECT 'NO Pending Dues';
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `final_payable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `final_payable`(GUEST__ID VARCHAR(25))
BEGIN
DECLARE total_due DOUBLE;
DECLARE total_amount_paid DOUBLE;
DECLARE CHECK__IN_DATE DATE;
DECLARE CHECK__OUT_DATE DATE;
DECLARE TOTAL_NO_OF_DAYS INT;
SELECT check_in_date,check_out_date INTO CHECK__IN_DATE,CHECK__OUT_DATE FROM guest WHERE id=GUEST__ID and guest_status = 1 ;
SET TOTAL_NO_OF_DAYS =DATEDIFF (CHECK__OUT_DATE ,CHECK__IN_DATE);
SELECT SUM(amount_paid) INTO total_amount_paid FROM payments WHERE guest_id=GUEST__ID;
SELECT
round(TOTAL_NO_OF_DAYS*b.default_rent/30)-sum(payments.amount_paid) INTO total_due
FROM guest join beds b on guest.bed_id = b.bed_id join payments on guest.id = payments.guest_id
WHERE guest.guest_status = 1 and guest.id=GUEST__ID;
IF total_due=0 THEN
UPDATE guest SET guest_status=0 WHERE id=GUEST__ID;
UPDATE beds SET bed_status = 1 WHERE bed_id = (SELECT bed_id FROM guest WHERE id = GUEST__ID);
UPDATE beds SET guest_id= null
WHERE bed_id = (SELECT bed_id FROM guest WHERE id = GUEST__ID);SELECT 'Due Cleared and Status Updated' AS Status,total_due AS Refund_Amount;
ELSE
SELECT CONCAT('Due to be cleared: ',abs(total_due)) Due ;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FINISH_CHECK_OUT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FINISH_CHECK_OUT`(guest__id VARCHAR(10))
BEGIN

	UPDATE guest SET guest_status = 'VACATED' , check_out_date = now() WHERE id = guest__id ;
	UPDATE beds SET bed_status = 1 , guest_id = NULL WHERE bed_id =( SELECT bed_id FROM guest WHERE ID=guest__id );
select 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GUEST_COUNT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GUEST_COUNT`(BUILDING_ID INT)
BEGIN
SELECT IFNULL(COUNT(id),0) FROM guest WHERE guest_status = 'INNOTICE' AND guest.building_id = BUILDING_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `guest_due` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guest_due`(GUEST__ID VARCHAR(10))
BEGIN
DECLARE GUEST__STATUS VARCHAR(10); 
DECLARE OCCUPANCY__TYPE VARCHAR(10);
SELECT guest_status,occupancy_type INTO GUEST__STATUS,OCCUPANCY__TYPE FROM guest WHERE ID=GUEST__ID;
IF OCCUPANCY__TYPE='Daily' OR OCCUPANCY__TYPE='Monthly' THEN
SELECT 0 Guest_Due_Amount ;
ELSEIF OCCUPANCY__TYPE='Regular' THEN
IF GUEST__STATUS='Active' THEN
SELECT
(CEILING(datediff(DATE_ADD(curdate(),INTERVAL 1 DAY  ), check_in_date)/30)*b.default_rent
+ g.security_deposit
-IFNULL((SELECT sum(payments.amount_paid) FROM payments WHERE guest_id= g.id),0)
+IFNULL((SELECT sum(payments.refund_amount) FROM payments WHERE guest_id= g.id),0)) Guest_Due_Amount
FROM guest g JOIN beds b ON g.bed_id = b.bed_id
WHERE g.guest_status ='Active' AND g.occupancy_type='Regular' and g.id=GUEST__ID;

ELSEIF GUEST__STATUS='InNotice' THEN
SELECT
(round(datediff(planned_check_out_date, check_in_date)*b.default_rent/30)
-IFNULL((SELECT sum(payments.amount_paid) FROM payments WHERE guest_id= g.id),0)
+IFNULL((SELECT sum(payments.refund_amount) FROM payments WHERE guest_id= g.id),0)) Guest_Due_Amount
FROM guest g join beds b on g.bed_id = b.bed_id
where g.guest_status ='InNotice' AND g.occupancy_type='Regular' and g.id=GUEST__ID;
END IF;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `initiate_check_out` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `initiate_check_out`(GUEST__ID VARCHAR(10))
BEGIN
DECLARE NOTICE__DATE DATE;
DECLARE CHECK_OUT__DATE DATE;
SET NOTICE__DATE = NOW();
SET CHECK_OUT__DATE = DATE_ADD(NOTICE__DATE,INTERVAL 15 DAY);
UPDATE guest SET planned_check_out_date = CHECK_OUT__DATE ,notice_date = NOTICE__DATE,guest_status='InNotice' WHERE ID=GUEST__ID and guest_status = 'Active' ;
select date(planned_check_out_date) , date(notice_date)  from guest where id = GUEST__ID ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pending_payment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pending_payment`()
BEGIN
SELECT
COUNT(
CASE g.guest_status
WHEN 'Active' THEN
IF((CEILING(datediff(DATE_ADD(curdate(),INTERVAL 1 DAY  ), check_in_date)/30)*b.default_rent
+ g.security_deposit
-IFNULL((SELECT sum(payments.amount_paid) FROM payments WHERE guest_id= g.id),0)
+IFNULL((SELECT sum(payments.refund_amount) FROM payments WHERE guest_id= g.id),0))>0,1,NULL)
WHEN 'InNotice' THEN
IF((round(datediff(planned_check_out_date, check_in_date)*b.default_rent/30)
-IFNULL((SELECT sum(payments.amount_paid) FROM payments WHERE guest_id= g.id),0)
+IFNULL((SELECT sum(payments.refund_amount) FROM payments WHERE guest_id= g.id),0))>0,1,NULL)
END
) Due_Amount
FROM guest g JOIN beds b ON g.bed_id = b.bed_id
WHERE g.guest_status in ('Active','InNotice') AND g.occupancy_type='Regular';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PENDING_PAYMENTS_BY_BUILDING_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PENDING_PAYMENTS_BY_BUILDING_ID`(BUILDING__ID INT)
BEGIN
SELECT
COUNT(
CASE g.guest_status
WHEN 'Active' THEN
IF((CEILING(datediff(DATE_ADD(curdate(),INTERVAL 1 DAY  ), check_in_date)/30)*b.default_rent
+ g.security_deposit
-IFNULL((SELECT sum(payments.amount_paid) FROM payments WHERE guest_id= g.id),0)
+IFNULL((SELECT sum(payments.refund_amount) FROM payments WHERE guest_id= g.id),0))>0,1,NULL)
WHEN 'InNotice' THEN
IF((round(datediff(planned_check_out_date, check_in_date)*b.default_rent/30)
-IFNULL((SELECT sum(payments.amount_paid) FROM payments WHERE guest_id= g.id),0)
+IFNULL((SELECT sum(payments.refund_amount) FROM payments WHERE guest_id= g.id),0))>0,1,NULL)
END
) Due_Amount
FROM guest g JOIN beds b ON g.bed_id = b.bed_id
WHERE g.guest_status in ('Active','InNotice') AND g.occupancy_type='Regular' AND g.building_id=BUILDING__ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `total_amount_building` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `total_amount_building`()
begin
select
sum(IF ((ceiling(IF(datediff(curdate(),check_in_date)>= 31,
datediff(curdate(),check_in_date)/30,0)))*(beds.default_rent)-amount_paid <0,0,(ceiling(IF(datediff(curdate(),check_in_date)>= 31,
datediff(curdate(),check_in_date)/30,0)))*(beds.default_rent)-amount_paid)) as total_dues
from beds join guest on beds.bed_id=guest.bed_id
where guest.guest_status =1 and guest.occupancy_type = 'regular' ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TOTAL_DASHBOARD_DUE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TOTAL_DASHBOARD_DUE`()
BEGIN



SELECT
SUM(
CASE g.guest_status
WHEN 'Active' THEN
(CEILING(datediff(DATE_ADD(curdate(),INTERVAL 1 DAY  ), check_in_date)/30)*b.default_rent
+ g.security_deposit
-IFNULL((SELECT sum(payments.amount_paid) FROM payments WHERE guest_id= g.id),0)
+IFNULL((SELECT sum(payments.refund_amount) FROM payments WHERE guest_id= g.id),0))
WHEN 'InNotice' THEN
(round(datediff(planned_check_out_date, check_in_date)*b.default_rent/30)
-IFNULL((SELECT sum(payments.amount_paid) FROM payments WHERE guest_id= g.id),0)
+IFNULL((SELECT sum(payments.refund_amount) FROM payments WHERE guest_id= g.id),0))
END
) Due_Amount
FROM guest g JOIN beds b ON g.bed_id = b.bed_id
WHERE g.guest_status in ('Active','InNotice') AND g.occupancy_type='Regular';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TOTAL_DUE_AMOUNT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TOTAL_DUE_AMOUNT`(BUILDING_ID INT)
BEGIN
DECLARE AMOUNT DOUBLE ;
SELECT
sum(CASE
WHEN (round(datediff(curdate(), check_in_date)*b.default_rent/30)
-IFNULL((SELECT sum(payments.amount_paid) FROM payments WHERE guest_id= g.id),0)
+IFNULL((SELECT sum(payments.refund_amount) FROM payments WHERE guest_id= g.id),0)) >0 THEN 
(round(datediff(curdate(), check_in_date)*b.default_rent/30)
-IFNULL((SELECT sum(payments.amount_paid) FROM payments WHERE guest_id= g.id),0)
+IFNULL((SELECT sum(payments.refund_amount) FROM payments WHERE guest_id= g.id),0)) ELSE NULL 
END ) Due_Amount INTO AMOUNT
FROM guest g JOIN beds b ON g.bed_id = b.bed_id
WHERE g.building_id = BUILDING_ID;
SELECT ifnull(AMOUNT , 0) DUE ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UPDATE_AMOUNT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_AMOUNT`(GUEST__ID VARCHAR(10))
BEGIN

SELECT SUM(amount_paid) FROM payments where guest_id = GUEST__ID;
 end ;;
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

-- Dump completed on 2022-05-13 21:37:49
