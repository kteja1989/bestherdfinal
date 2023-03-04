-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	5.7.9-log

--
-- Table structure for table `acquiredanimals`
--

DROP TABLE IF EXISTS `acquiredanimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acquiredanimals` (
  `acquiredanimal_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `department` varchar(30) NOT NULL,
  `total_acquired` mediumint(6) NOT NULL,
  `date_acquired` date NOT NULL,
  `species_id` mediumint(6) NOT NULL,
  `sex` varchar(8) NOT NULL,
  `age` int(6) NOT NULL,
  `age_unit` varchar(12) NOT NULL,
  `supplier_code` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`acquiredanimal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) unsigned DEFAULT NULL,
  `properties` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`(191),`subject_id`),
  KEY `causer` (`causer_type`(191),`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2825 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `activitys`
--

DROP TABLE IF EXISTS `activitys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activitys` (
  `activity_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `activity` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `created_by` mediumint(6) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adjuvants`
--

DROP TABLE IF EXISTS `adjuvants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adjuvants` (
  `adjuvant_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `adjuvant_name` varchar(100) NOT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `volume` varchar(8) NOT NULL,
  `volume_unit` varchar(8) NOT NULL,
  `manufacturer` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`adjuvant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `animalsupplies`
--

DROP TABLE IF EXISTS `animalsupplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animalsupplies` (
  `animalsupply_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `date_supplied` date NOT NULL,
  `species_id` mediumint(6) NOT NULL,
  `sex` varchar(8) NOT NULL,
  `total_supplied` mediumint(6) NOT NULL,
  `age` mediumint(6) NOT NULL,
  `age_unit` int(6) NOT NULL,
  `bill_number` varchar(16) NOT NULL,
  `bill_date` date NOT NULL,
  `posted_by` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`animalsupply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `color_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `color_name` varchar(15) NOT NULL,
  `hex_code` varchar(15) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dailyherdrecords`
--

DROP TABLE IF EXISTS `dailyherdrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dailyherdrecords` (
  `dhr_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `sop_id` mediumint(6) NOT NULL,
  `entry_date` date NOT NULL,
  `herd_id` mediumint(6) NOT NULL,
  `temperature` float NOT NULL,
  `humidity` float NOT NULL,
  `dry_cleaned` varchar(5) DEFAULT NULL,
  `water_cleaned` varchar(5) DEFAULT NULL,
  `special` varchar(245) DEFAULT NULL,
  `remarks` varchar(245) DEFAULT NULL,
  `carried_by` varchar(55) DEFAULT NULL,
  `supervised_by` varchar(55) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`dhr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `diagnostics`
--

DROP TABLE IF EXISTS `diagnostics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnostics` (
  `diagnostics_id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `suggested_tests` varchar(200) NOT NULL,
  `test_done` varchar(200) NOT NULL,
  `test_date` date NOT NULL,
  `tested_by` varchar(50) NOT NULL,
  `known_remedy` text NOT NULL,
  `recovery_time` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`diagnostics_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `start_hour` varchar(2) NOT NULL DEFAULT '00',
  `start_min` varchar(2) NOT NULL DEFAULT '00',
  `end_hour` varchar(2) NOT NULL DEFAULT '00',
  `end_min` varchar(2) NOT NULL DEFAULT '00',
  `resource_id` mediumint(6) unsigned DEFAULT NULL,
  `priority` varchar(12) NOT NULL DEFAULT 'normal',
  `created_by` varchar(30) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exitedgoats`
--

DROP TABLE IF EXISTS `exitedgoats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exitedgoats` (
  `exitedgoat_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `goat_id` mediumint(6) unsigned NOT NULL,
  `herd_id` mediumint(6) unsigned NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `age` smallint(3) NOT NULL,
  `age_unit` varchar(12) NOT NULL,
  `exit_age` smallint(3) unsigned DEFAULT NULL,
  `source` text NOT NULL,
  `genetic_background` text NOT NULL,
  `source_reference` text NOT NULL,
  `source_ref_file` varchar(50) NOT NULL,
  `quarantine_start` date NOT NULL,
  `quarantine_end` date NOT NULL,
  `inducted_date` date NOT NULL,
  `status` varchar(200) NOT NULL,
  `remark` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`exitedgoat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `facilityfiles`
--

DROP TABLE IF EXISTS `facilityfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facilityfiles` (
  `goatfile_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `dept_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `date_uploaded` date NOT NULL,
  `path` varchar(100) DEFAULT NULL,
  `filename` varchar(35) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`goatfile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feeds`
--

DROP TABLE IF EXISTS `feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeds` (
  `feed_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `species_id` mediumint(6) unsigned NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `speciality` varchar(200) DEFAULT NULL,
  `supplier_id` mediumint(6) DEFAULT NULL,
  `supply_date` date NOT NULL,
  `quantity` mediumint(6) unsigned NOT NULL,
  `quantity_unit` varchar(6) NOT NULL,
  `batch` varchar(15) DEFAULT NULL,
  `mfd_date` date DEFAULT NULL,
  `received_by` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedsuppliers`
--

DROP TABLE IF EXISTS `feedsuppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedsuppliers` (
  `feedsupplier_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `species_id` int(6) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `contact1` varchar(100) NOT NULL,
  `contact2` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `notes` text,
  `posted_by` varchar(25) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'inactive',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`feedsupplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `goatfiles`
--

DROP TABLE IF EXISTS `goatfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goatfiles` (
  `goatfile_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goat_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `date_uploaded` date NOT NULL,
  `path` varchar(100) DEFAULT NULL,
  `filename` varchar(35) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`goatfile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `goathealth`
--

DROP TABLE IF EXISTS `goathealth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goathealth` (
  `goathealth_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `sop_id` mediumint(6) unsigned NOT NULL,
  `goat_id` mediumint(6) unsigned NOT NULL,
  `hb` decimal(4,1) DEFAULT NULL,
  `weight` decimal(5,1) unsigned DEFAULT NULL,
  `resp_rate` mediumint(3) unsigned DEFAULT NULL,
  `temperature` mediumint(3) unsigned DEFAULT NULL,
  `mucous_membrane` varchar(250) DEFAULT NULL,
  `rumen_contractions` mediumint(3) unsigned DEFAULT NULL,
  `rbc` varchar(12) DEFAULT NULL,
  `platelet` varchar(12) DEFAULT NULL,
  `pcv` varchar(12) DEFAULT NULL,
  `lft` varchar(12) DEFAULT NULL,
  `kft` varchar(12) DEFAULT NULL,
  `rtpcr` varchar(12) DEFAULT NULL,
  `morning` datetime DEFAULT NULL,
  `evening` datetime DEFAULT NULL,
  `observations` text,
  `date_observed` date DEFAULT NULL,
  `action_taken` text,
  `closure` text,
  `closure_date` date DEFAULT NULL,
  `closure_action` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`goathealth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `goats`
--

DROP TABLE IF EXISTS `goats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goats` (
  `goat_id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `herd_id` mediumint(6) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `age` smallint(2) NOT NULL,
  `age_unit` varchar(12) NOT NULL,
  `source` text NOT NULL,
  `genetic_background` text NOT NULL,
  `source_reference` text NOT NULL,
  `source_ref_file` varchar(50) NOT NULL,
  `quarantine_start` date NOT NULL,
  `quarantine_end` date NOT NULL,
  `inducted_date` date DEFAULT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'active',
  `remark` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`goat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=623 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `goatsera`
--

DROP TABLE IF EXISTS `goatsera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goatsera` (
  `goatsera_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `serum_id` mediumint(6) unsigned NOT NULL,
  `goat_id` int(10) unsigned NOT NULL,
  `volume` decimal(5,1) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`goatsera_id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `goattiters`
--

DROP TABLE IF EXISTS `goattiters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goattiters` (
  `goattiter_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `titer_id` mediumint(6) unsigned NOT NULL,
  `serum_id` mediumint(6) unsigned NOT NULL,
  `goat_id` int(10) unsigned NOT NULL,
  `titer_value` decimal(8,0) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`goattiter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `health`
--

DROP TABLE IF EXISTS `health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health` (
  `health_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `herd_id` mediumint(6) NOT NULL,
  `sop_id` mediumint(6) unsigned NOT NULL,
  `scheduled` varchar(15) NOT NULL DEFAULT 'weekly',
  `inspect_type` varchar(30) NOT NULL DEFAULT 'physical',
  `health_notes` text NOT NULL,
  `diagnosis` varchar(245) NOT NULL,
  `suggestions` text NOT NULL,
  `vet_name` varchar(50) NOT NULL,
  `inspected_on` date NOT NULL,
  `action_taken` text,
  `atr_on` date DEFAULT NULL,
  `atr_acted_by` varchar(50) DEFAULT NULL,
  `remarks` text,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`health_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `herd`
--

DROP TABLE IF EXISTS `herd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `herd` (
  `herd_id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `category` varchar(12) NOT NULL DEFAULT 'normal',
  `color` varchar(12) DEFAULT NULL,
  `description` text NOT NULL,
  `location` varchar(100) NOT NULL,
  `total_size` smallint(4) NOT NULL DEFAULT '0',
  `total_count` smallint(4) NOT NULL DEFAULT '0',
  `gender` varchar(10) NOT NULL,
  `feed_description` mediumint(6) DEFAULT '3',
  `incharge_name` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `notes` text,
  `health_check` date DEFAULT NULL,
  `health_check_id` mediumint(6) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`herd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `herdefaults`
--

DROP TABLE IF EXISTS `herdefaults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `herdefaults` (
  `herdefault_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(55) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `old_value` varchar(255) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`herdefault_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `herdefaults`
--

LOCK TABLES `herdefaults` WRITE;
/*!40000 ALTER TABLE `herdefaults` DISABLE KEYS */;
INSERT INTO `herdefaults` VALUES (1,'minimum_goat_age','Minimum Goat Age at Entry','160','days','','Abcd Xyz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'maximum_goat_age','Maximum Goat Age at Entry','570','days','','Abcd Xyz','2022-10-30 05:09:02','2022-10-30 05:09:02'),(3,'exit_age','Retirement Age','1830','days','','Abcd Xyz','2022-10-30 05:29:09','2022-10-30 05:29:09');
/*!40000 ALTER TABLE `herdefaults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `immunedgoats`
--

DROP TABLE IF EXISTS `immunedgoats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `immunedgoats` (
  `immgoat_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `immunization_id` mediumint(6) unsigned NOT NULL,
  `goat_id` mediumint(6) unsigned NOT NULL,
  `booster_due` date DEFAULT NULL,
  `notes` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`immgoat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `immunizations`
--

DROP TABLE IF EXISTS `immunizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `immunizations` (
  `immunization_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` mediumint(6) unsigned NOT NULL,
  `herd_id` mediumint(6) unsigned NOT NULL,
  `posted_by` varchar(50) NOT NULL,
  `sop_id` mediumint(6) unsigned NOT NULL,
  `immunization_date` datetime NOT NULL,
  `immunogen_code` varchar(50) NOT NULL,
  `adjuvent_code` varchar(50) NOT NULL,
  `frequency` mediumint(2) unsigned NOT NULL,
  `frequency_unit` varchar(8) NOT NULL DEFAULT 'days',
  `immunogen_volume` mediumint(3) unsigned NOT NULL DEFAULT '0',
  `immunogen_site` varchar(50) NOT NULL,
  `immunogen_route` varchar(50) NOT NULL,
  `sample_desc` text NOT NULL,
  `sample_volume` decimal(6,0) unsigned NOT NULL,
  `batch_id` varchar(50) NOT NULL,
  `sample_source` varchar(50) NOT NULL,
  `supplied_by` varchar(50) NOT NULL,
  `sample_ref` varchar(50) NOT NULL,
  `auth_by` varchar(50) NOT NULL,
  `total_immunized` mediumint(6) unsigned DEFAULT '0',
  `status` varchar(12) NOT NULL DEFAULT 'incomplete',
  `remark` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`immunization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `immunogens`
--

DROP TABLE IF EXISTS `immunogens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `immunogens` (
  `immunogen_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` mediumint(6) unsigned NOT NULL,
  `name` varchar(25) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `posted_by` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'inactive',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`immunogen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `infrastructure`
--

DROP TABLE IF EXISTS `infrastructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infrastructure` (
  `infra_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `nickName` varchar(100) DEFAULT NULL,
  `description` text,
  `date_acquired` date NOT NULL,
  `make` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `vendor_address` text NOT NULL,
  `vendor_phone` varchar(15) DEFAULT NULL,
  `vendor_email` varchar(30) DEFAULT NULL,
  `building` varchar(100) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `amc` varchar(10) DEFAULT NULL,
  `amc_start` date DEFAULT NULL,
  `amc_end` date DEFAULT NULL,
  `status` varchar(15) DEFAULT 'Active',
  `date_disposal` date DEFAULT NULL,
  `disposal_mode` varchar(200) DEFAULT NULL,
  `supervisor` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`infra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`(191))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenance` (
  `maintenance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supervisor` int(10) unsigned NOT NULL,
  `infra_id` smallint(5) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `done_date` date DEFAULT NULL,
  `description` varchar(250) NOT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`maintenance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mugshots`
--

DROP TABLE IF EXISTS `mugshots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mugshots` (
  `mugshot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goat_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `date_uploaded` date NOT NULL,
  `path` varchar(100) DEFAULT NULL,
  `image` varchar(35) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mugshot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES 
(1,'permission_create','web','2020-09-17 05:44:08','2020-09-17 05:44:08'),
(2,'permission_edit','web','2020-09-17 05:44:44','2020-09-17 05:44:44'),
(3,'permission_delete','web','2020-09-17 05:47:23','2020-09-17 05:47:23'),
(4,'role_create','web','2020-09-17 05:47:58','2020-09-17 05:47:58'),
(5,'role_edit','web','2020-09-17 05:48:10','2020-09-17 05:48:10'),
(6,'role_delete','web','2020-09-17 05:48:22','2020-09-17 05:48:22'),
(7,'project_create','web','2020-09-17 05:48:53','2020-09-17 05:48:53'),
(8,'Project_edit','web','2020-09-17 05:49:07','2020-09-17 05:49:07'),
(9,'project_view','web','2020-09-17 05:49:18','2020-09-17 05:49:18'),
(10,'project_block','web','2020-09-17 05:49:31','2020-09-17 05:49:31'),
(11,'project_delete','web','2020-09-17 05:49:45','2020-09-17 05:49:45'),
(13,'vet_inspector','web','2021-03-14 12:21:52','2021-03-14 12:21:52'),
(14,'facility_helper','web','2021-03-14 13:11:19','2021-03-14 13:11:19'),
(15,'notebook_post','web','2021-03-17 08:01:40','2021-03-17 08:01:40'),
(16,'notebook_edit','web','2021-03-17 08:01:55','2021-03-17 08:01:55'),
(17,'report_post','web','2021-03-17 08:02:18','2021-03-17 08:02:18'),
(18,'report_edit','web','2021-03-17 08:02:30','2021-03-17 08:02:30'),
(19,'cage_update','web','2021-03-17 08:03:05','2021-03-17 08:03:05'),
(20,'request_consumption','web','2021-03-17 08:06:21','2021-03-17 08:06:21'),
(21,'herd_create','web','2022-03-09 23:20:10','2022-03-09 23:20:10'),
(22,'herd_edit','web','2022-03-09 23:20:28','2022-03-09 23:20:28'),
(23,'herd_addmember','web','2022-03-09 23:21:02','2022-03-09 23:21:02'),
(24,'herd_editmember','web','2022-03-09 23:21:24','2022-03-09 23:21:24'),
(25,'herd_modify','web','2022-03-09 23:21:46','2022-03-09 23:21:46'),
(26,'herd_immunize','web','2022-03-09 23:22:16','2022-03-09 23:22:16'),
(27,'herd_editimmunize','web','2022-03-09 23:22:46','2022-03-09 23:22:46'),
(28,'herd_serumcollect','web','2022-03-09 23:23:13','2022-03-09 23:23:13'),
(29,'herd_healthupdate','web','2022-03-09 23:23:41','2022-03-09 23:23:41'),
(30,'herd_atrupdate','web','2022-03-09 23:24:35','2022-03-09 23:24:35');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedures`
--

DROP TABLE IF EXISTS `procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedures` (
  `procedure_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_date` timestamp NULL DEFAULT NULL,
  `approved_reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_authority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validity_date` timestamp NULL DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`procedure_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `protocols`
--

DROP TABLE IF EXISTS `protocols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protocols` (
  `protocol_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_date` timestamp NULL DEFAULT NULL,
  `approved_reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_authority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validity_date` timestamp NULL DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`protocol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocols`
--

LOCK TABLES `protocols` WRITE;
/*!40000 ALTER TABLE `protocols` DISABLE KEYS */;
INSERT INTO `protocols` VALUES (1,1,'Inspection','Inspection of cages by authorized personnel, can report cage observations',1,NULL,'PI','2021-03-29 20:00:00','Abcdef xyz.','IACUC','2023-03-30 20:00:00','Active',2,'2021-03-30 09:19:25','2021-03-30 09:19:25'),(2,1,'Expression of Axdf gene in swfe cells','Isolation of RNA, Real Time-PCR, quantitation',1,NULL,'PI','2022-02-01 07:00:00','none','PI','2023-02-28 07:00:00','Active',2,'2022-02-14 12:15:24','2022-02-14 12:15:24'),(3,1,'Expression of Axdf protein in swfe cells','Isolation of cells, preparation of cell lysates, Q-trap labeling, MALDI- TOF-TOF analysis',1,NULL,'PI','2022-02-01 07:00:00','senior standardized','PI','2023-02-28 07:00:00','Active',2,'2022-02-14 12:17:31','2022-02-14 12:17:31'),(4,1,'Immunization of Mice and Rabbits','Immunization protocols for mice and Rabbits',1,NULL,'Pient ','2022-03-31 07:00:00','INJK meeting','yuoprcd eewwq','2022-12-31 07:00:00','Active',12,'2022-07-30 22:16:44','2022-07-30 22:16:44');
/*!40000 ALTER TABLE `protocols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receivers`
--

DROP TABLE IF EXISTS `receivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receivers` (
  `receiver_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(200) NOT NULL,
  `registration_detail` varchar(240) NOT NULL,
  `valid_date` date NOT NULL,
  `regis_file` varchar(45) NOT NULL,
  `posted_by` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`receiver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receivers`
--

LOCK TABLES `receivers` WRITE;
/*!40000 ALTER TABLE `receivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `receivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL,
  `report_type` varchar(20) NOT NULL DEFAULT 'monthly',
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `filename` varchar(20) NOT NULL,
  `submitted_by` int(10) unsigned NOT NULL,
  `submitted_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,1,'Monthly','2020-10-01','2020-10-31','jsdo7wJH2HS4ulw.pdf',2,'2020-10-20','2020-10-20 12:10:00','2020-10-20 12:10:00');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES 
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(9,1),
(10,1),
(11,1),
(1,2),
(2,2),
(3,2),
(4,2),
(5,2),
(6,2),
(8,2),
(9,2),
(10,2),
(7,3),
(8,3),(9,3),(15,4),(16,4),(17,4),(18,4),(19,4),(14,5),(19,5),(15,6),(16,6),(17,6),(18,6),(19,6),(20,6),(7,7),(8,7),(9,7),(10,7),(11,7),(13,7),(14,7),(15,7),(16,7),(17,7),(18,7),(19,7),(20,7),(7,8),(8,8),(9,8),(10,8),(11,8),(13,8),(14,8),(15,8),(16,8),(17,8),(18,8),(19,8),(20,8),(7,9),(8,9),(9,9),(10,9),(11,9),(13,9),(14,9),(15,9),(16,9),(17,9),(18,9),(19,9),(20,9),(7,10),(8,10),(9,10),(10,10),(11,10),(15,10),(16,10),(17,10),(18,10),(20,10),(21,11),(22,11),(23,11),(24,11),(25,11),(26,11),(27,11),(28,11),(29,11),(30,11),(26,12),(27,12),(28,13),(29,14),(30,14),(1,15),(2,15),(3,15);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES 
(1,'herdmanager','web','2022-03-09 23:25:59','2022-03-09 23:25:59'),
(2,'herdasstimmun','web','2022-03-09 23:27:20','2022-03-09 23:27:20'),
(3,'herdserum','web','2022-03-09 23:28:00','2022-03-09 23:28:00'),
(4,'herdvet','web','2022-03-09 23:28:36','2022-03-09 23:28:36'),
(5,'bestadmin','web','2022-06-11 16:10:07','2022-06-11 16:10:07');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `serum`
--

DROP TABLE IF EXISTS `serum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serum` (
  `serum_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `herd_id` int(10) unsigned NOT NULL,
  `sop_id` int(10) unsigned NOT NULL,
  `number_goats` mediumint(6) unsigned NOT NULL,
  `volume` decimal(5,1) unsigned NOT NULL,
  `date_collected` date NOT NULL,
  `batch_code` varchar(25) NOT NULL,
  `auth_by` varchar(50) NOT NULL,
  `notes` text,
  `status` varchar(12) NOT NULL DEFAULT 'incomplete',
  `posted_by` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`serum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sickhistory`
--

DROP TABLE IF EXISTS `sickhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sickhistory` (
  `sickhistory_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `sop_id` mediumint(6) unsigned NOT NULL,
  `health_id` mediumint(6) unsigned NOT NULL,
  `goathealth_id` mediumint(6) unsigned NOT NULL,
  `goat_id` mediumint(6) unsigned NOT NULL,
  `date_observed` datetime DEFAULT NULL,
  `observations` text,
  `diagnosis` text NOT NULL,
  `medication` text NOT NULL,
  `action_suggested` text,
  `suggested_by` mediumint(8) unsigned DEFAULT NULL,
  `action_taken` text,
  `action_taken_by` mediumint(9) DEFAULT NULL,
  `action_taken_date` datetime DEFAULT NULL,
  `reviewed_by` mediumint(8) unsigned DEFAULT NULL,
  `reviewed_comment` text,
  `date_reviewed` datetime DEFAULT NULL,
  `closure_status` varchar(15) NOT NULL DEFAULT 'open',
  `closure_date` date DEFAULT NULL,
  `closure_action` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`sickhistory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sickhistory`
--

LOCK TABLES `sickhistory` WRITE;
/*!40000 ALTER TABLE `sickhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `sickhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sopfiles`
--

DROP TABLE IF EXISTS `sopfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sopfiles` (
  `sopfile_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `dept_id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `date_uploaded` date NOT NULL,
  `path` varchar(100) DEFAULT NULL,
  `filename` varchar(35) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sopfile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sopfiles`
--

LOCK TABLES `sopfiles` WRITE;
/*!40000 ALTER TABLE `sopfiles` DISABLE KEYS */;
INSERT INTO `sopfiles` VALUES (1,3,15,'Testherd Manager','2022-09-16','goats/sops/23/','mlpSbqNlhL_23.pdf','none','2022-09-16 09:18:42','2022-09-16 09:18:42'),(2,3,15,'Testherd Manager','2022-09-16','public/sops/23/','lSVc33MrjE_23.pdf','none','2022-09-16 11:15:21','2022-09-16 11:15:21'),(3,3,15,'Testherd Manager','2022-09-16','public/sops/23/','Ude5gy8jGV_23.pdf','none','2022-09-16 11:19:07','2022-09-16 11:19:07');
/*!40000 ALTER TABLE `sopfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sops`
--

DROP TABLE IF EXISTS `sops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sops` (
  `sop_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `activity_id` mediumint(6) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repeat_time` mediumint(3) unsigned NOT NULL DEFAULT '0',
  `repeat_unit` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_date` timestamp NULL DEFAULT NULL,
  `approved_reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_authority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validity_date` timestamp NULL DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supplies`
--

DROP TABLE IF EXISTS `supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplies` (
  `supply_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `species_id` mediumint(6) NOT NULL,
  `male` mediumint(6) DEFAULT NULL,
  `female` mediumint(6) DEFAULT NULL,
  `total_supplied` mediumint(6) NOT NULL,
  `ids` text,
  `notes` text,
  `receiver_id` mediumint(6) NOT NULL,
  `valid_date` date NOT NULL,
  `authorized_by` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`supply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

LOCK TABLES `supplies` WRITE;
/*!40000 ALTER TABLE `supplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `task_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `self_id` bigint(20) unsigned NOT NULL,
  `category` varchar(25) NOT NULL,
  `text` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`task_id`)  
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,8,'personal','Tomorrow to change all cages and bedding','2021-03-26 00:00:00','Done','2021-03-26 07:08:13','2021-03-26 08:56:32'),(2,8,'group','All group, tomorrow cages will be changed and hence, now work during 8 to 10am','2021-03-26 00:00:00','Done','2021-03-26 07:09:28','2021-03-31 06:14:51'),(3,8,'group','Day after tomorrow 28th march, not attending the duty','2021-03-26 00:00:00','Done','2021-03-26 07:13:00','2021-03-31 06:15:02'),(4,8,'group','HI, All, I will be on leave tomorrow but all cages have been attended. best','2021-07-14 00:00:00','Active','2021-07-14 06:57:07','2021-07-14 06:57:07');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempgoats`
--

DROP TABLE IF EXISTS `tempgoats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempgoats` (
  `goat_id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `herd_id` mediumint(6) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `age` smallint(2) NOT NULL,
  `age_unit` varchar(12) NOT NULL,
  `source` text NOT NULL,
  `genetic_background` text NOT NULL,
  `source_reference` text,
  `source_ref_file` varchar(50) DEFAULT NULL,
  `quarantine_start` date NOT NULL,
  `quarantine_end` date NOT NULL,
  `inducted_date` date DEFAULT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'active',
  `remark` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`goat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempgoats`
--

LOCK TABLES `tempgoats` WRITE;
/*!40000 ALTER TABLE `tempgoats` DISABLE KEYS */;
INSERT INTO `tempgoats` VALUES (2,2,'2021-07-12','Male',15,'months','OsmanabadiGoatFarmBarshi','Osmanabadi-traits','Local-supplier','YRBENG1281-21-22','2022-02-25','2022-03-18','2022-10-23','active',NULL,'2022-10-23 12:31:23','2022-10-23 12:31:23'),(3,2,'2021-07-12','Male',15,'months','OsmanabadiGoatFarmBarshi','Osmanabadi-traits','Local-supplier','YRBENG1281-21-22','2022-02-25','2022-03-18','2022-10-23','active',NULL,'2022-10-23 12:42:13','2022-10-23 12:42:13'),(4,1,'2022-05-16','Female',5,'months','Abcd-Xyz-1245','TBDx','YBL-234-2022Mar','CPCSEA-345Mar','2022-08-09','2022-08-30','2022-10-24','active',NULL,'2022-10-24 16:56:07','2022-10-24 16:56:07');
/*!40000 ALTER TABLE `tempgoats` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `titers`
--

DROP TABLE IF EXISTS `titers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titers` (
  `titer_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `herd_id` mediumint(6) unsigned NOT NULL,
  `serum_id` mediumint(6) unsigned NOT NULL,
  `sop_id` mediumint(6) unsigned NOT NULL,
  `number_goats` mediumint(6) unsigned NOT NULL,
  `titer_by` varchar(25) NOT NULL,
  `titer_date` date NOT NULL,
  `titer_ref` varchar(25) NOT NULL,
  `auth_by` varchar(50) NOT NULL,
  `notes` text,
  `status` varchar(12) NOT NULL DEFAULT 'incomplete',
  `posted_by` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`titer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `treatments`
--

DROP TABLE IF EXISTS `treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatments` (
  `treatment_id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `goat_id` mediumint(6) unsigned NOT NULL,
  `observation_id` mediumint(8) unsigned NOT NULL,
  `observation_date` date NOT NULL,
  `observation_desc` text NOT NULL,
  `remarks` text NOT NULL,
  `recorded_by` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`treatment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatments`
--

LOCK TABLES `treatments` WRITE;
/*!40000 ALTER TABLE `treatments` DISABLE KEYS */;
/*!40000 ALTER TABLE `treatments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdeptactivitys`
--

DROP TABLE IF EXISTS `userdeptactivitys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdeptactivitys` (
  `uda_id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(6) unsigned NOT NULL,
  `department_id` mediumint(6) unsigned NOT NULL,
  `activity_id` mediumint(6) unsigned NOT NULL,
  `created_by` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text,
  `two_factor_recovery_codes` text,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` varchar(255) DEFAULT NULL,
  `profile_photo_path` text,
  `folder` varchar(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `first_login` date DEFAULT NULL,
  `last_pwchange` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('guest') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'guest',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES 
(13,'Demo Herdman','demoherdmanager@demo.com','2022-03-09 23:51:12','$2y$10$ZEwEviWfQJ.uq8k.9OiS0OLI8a6B51uHw4OmlxNPkBNYnqwBusYQi',NULL,NULL,'hBCsHijrv2TCAhGHDYQlsITMFJLodfPqGnnDillw31ZzVIGfXVaJztrg08pq',NULL,NULL,NULL,'2022-03-09','2025-12-31','2022-03-09',NULL,'2022-03-09 23:51:12','2022-03-09 23:51:12','herdmanager'),
(16,'Immunization Assistant','demoimmasst@demo.com','2022-07-03 00:43:14','$2y$10$ZEwEviWfQJ.uq8k.9OiS0OLI8a6B51uHw4OmlxNPkBNYnqwBusYQi',NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-26','2024-08-31','2022-07-02',NULL,'2022-07-03 00:43:14','2022-07-03 00:43:14','user'),
(17,'Serum Assistant','demoserumasst@demo.com','2022-07-03 00:47:22','$2y$10$ZEwEviWfQJ.uq8k.9OiS0OLI8a6B51uHw4OmlxNPkBNYnqwBusYQi',NULL,NULL,NULL,NULL,NULL,NULL,'2022-07-01','2025-04-30','2022-07-01','2022-07-02','2022-07-02 00:47:22','2022-07-02 00:47:22','user'),
(18,'Vet Assistant','demovetasst@demo.com','2022-07-02 00:59:43','$2y$10$ZEwEviWfQJ.uq8k.9OiS0OLI8a6B51uHw4OmlxNPkBNYnqwBusYQi',NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-30','2025-03-31','2022-07-01','2022-07-01','2022-07-02 00:59:43','2022-07-02 00:59:43','guest'),
(19,'Bestuser Admin','bestuseradmin@demo.com','2022-08-10 16:15:19','$2y$10$ZEwEviWfQJ.uq8k.9OiS0OLI8a6B51uHw4OmlxNPkBNYnqwBusYQi',NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-09','2023-08-31','2022-08-09','2022-08-10','2022-08-08 16:15:19','2022-08-08 16:15:19','bestadmin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
