-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: botble
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'b7nz5dryNRBtxxSY9ECeuddivtGsReWR',1,'2024-05-24 01:11:54','2024-05-24 01:11:54','2024-05-24 01:11:54');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blocks_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'Dr. Isac Emmerich','dr-isac-emmerich','Excepturi placeat commodi sed eveniet ea id.','Inventore illum amet delectus atque. Accusantium aliquam officia aut rem. Voluptatem fugiat qui veritatis omnis quos. Laborum numquam blanditiis velit corrupti. Omnis et ipsum perspiciatis quis est. Laborum recusandae fugiat occaecati voluptatem similique doloribus. Ut perspiciatis qui officia beatae. Omnis voluptatibus laudantium sunt. Molestiae placeat labore sit veniam ratione nihil eum. Ab corrupti magni incidunt maiores mollitia optio aspernatur.','published',NULL,'2024-05-24 01:12:00','2024-05-24 01:12:00'),(2,'Terry Prohaska','terry-prohaska','Dolor nam eum et.','Quisquam hic fugiat quasi ipsa cumque delectus. Eius dolor aut at quia et pariatur molestias. Ipsa quo placeat doloremque ullam. Non voluptatem ullam dolore. Omnis tenetur quidem veritatis rem voluptatem. Maiores a eligendi dicta totam vitae et voluptas. Suscipit rerum ea omnis quis. Eveniet deserunt eos voluptatibus nihil et. Laudantium neque itaque labore et. Vel cum accusamus unde in tempore.','published',NULL,'2024-05-24 01:12:00','2024-05-24 01:12:00'),(3,'Mrs. Estella Crist II','mrs-estella-crist-ii','Ut quas quae incidunt dolorum et ipsa id.','Consequatur sit quo quae excepturi et. Inventore nisi et rem laboriosam autem aut. Libero ab quia omnis libero. Et ea neque adipisci eius velit non. Ut est qui totam ut. Nostrum culpa quo autem atque sequi omnis voluptas. Neque nam sequi iure ut dolorem porro vel. Doloremque iste dignissimos ut et consequatur ipsam. Sit eos a blanditiis nihil. Saepe impedit amet natus qui. Non sequi sint amet temporibus. A est qui dolorem iusto voluptate laudantium. Qui repellat inventore voluptas ut.','published',NULL,'2024-05-24 01:12:00','2024-05-24 01:12:00'),(4,'Haylee Sawayn IV','haylee-sawayn-iv','Nobis iure qui itaque dolor.','Maiores voluptatibus libero magni sunt. Perspiciatis et similique qui nesciunt et. Quia dolor sit animi numquam in tempore. Quibusdam iste et quia modi sequi voluptas. Ab expedita eum nihil error. Ea libero rerum saepe sit aut nesciunt. Recusandae ullam molestias mollitia. Minima aut velit sunt architecto quam. Iste est in ut iste corrupti minus praesentium. Eum voluptas officia exercitationem voluptatum quidem. Assumenda ut voluptatem corrupti dolores et consectetur soluta et.','published',NULL,'2024-05-24 01:12:00','2024-05-24 01:12:00'),(5,'Brennon Kertzmann','brennon-kertzmann','Delectus temporibus voluptates cupiditate animi.','Repellendus perferendis sunt tempore corrupti rerum tempore reiciendis. Ipsam in iure nihil aut. Eaque itaque occaecati similique voluptatem voluptatibus voluptatibus. Totam repellendus accusamus repellendus minus temporibus qui. Officiis corporis deserunt rem voluptas. Quasi nam minima veniam provident et adipisci. Veniam sint repudiandae et consectetur.','published',NULL,'2024-05-24 01:12:00','2024-05-24 01:12:00');
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks_translations`
--

DROP TABLE IF EXISTS `blocks_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`blocks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks_translations`
--

LOCK TABLES `blocks_translations` WRITE;
/*!40000 ALTER TABLE `blocks_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Artificial Intelligence',0,'Sit rerum quis animi vel voluptates quibusdam odit. Amet quam tempora maxime rem. Voluptatem quibusdam excepturi et repudiandae enim aut et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(2,'Cybersecurity',0,'Nihil sed tempora ut velit placeat excepturi id aliquam. Quae ex numquam quidem. Magnam distinctio voluptatibus sit nostrum at quod ipsam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(3,'Blockchain Technology',0,'Blanditiis voluptate voluptates recusandae earum reprehenderit harum quia. Quos eius nemo consequatur labore. Error nemo esse nihil voluptatem enim corrupti.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(4,'5G and Connectivity',0,'Explicabo aut vitae consequuntur labore distinctio. Quibusdam nostrum voluptatem pariatur. Explicabo molestiae officiis et quis. Dolor vitae ad eum nulla.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(5,'Augmented Reality (AR)',0,'Culpa quam eum nesciunt ipsa officiis quos consectetur repellat. Illo et ut rerum magni odit. Et illo asperiores id culpa ab eum natus.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(6,'Green Technology',0,'Veniam quam voluptatem aut nihil autem. Beatae qui totam est. Est nesciunt est et ea voluptatem dolore omnis. Possimus et dolores numquam rerum maiores.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(7,'Quantum Computing',0,'Veritatis ut officiis sunt sit ea. Ut esse labore recusandae sed. Illo et dolorum accusamus ducimus magni consequatur. Corporis quaerat consectetur nobis sit veniam accusamus omnis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(8,'Edge Computing',0,'Fuga ipsam dolor porro distinctio. Id aut inventore nisi. Voluptas corrupti quis amet ipsam illum minima quam. Aut quos quo et error quasi quis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-24 01:11:56','2024-05-24 01:11:56');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Reina Nikolaus','summer06@example.org','1-501-464-7451','2930 Morar Rest Apt. 032\nWest Lucious, WV 11812','Expedita dicta optio alias beatae.','Sed officia quam modi facere. Id consequuntur fugit temporibus. Doloribus ducimus pariatur voluptatem natus qui amet dolorem. Atque explicabo iure repellat velit dolorum. Repudiandae quo quis ut atque. Harum qui et quisquam est commodi occaecati. Aut dolorum voluptatem hic voluptatem. Et expedita quas sapiente et. Sapiente sequi culpa ut est praesentium voluptatibus. Aut enim possimus perspiciatis facilis impedit et commodi inventore.',NULL,'read','2024-05-24 01:11:59','2024-05-24 01:11:59'),(2,'Therese Heathcote','akohler@example.com','+1.305.645.6929','5401 Harvey Springs\nSouth Romaine, RI 51013','Ut recusandae quo et cupiditate nam earum eum.','Cum corrupti quo non tempore sunt aliquid. Deserunt similique et consequatur magnam deleniti. Dignissimos ex et nobis atque accusantium. Sint quia sunt incidunt sit est. Dolorem ab similique debitis perferendis. Possimus voluptatem consequuntur hic ea voluptas cupiditate culpa ea. Id fugit ab modi sit voluptatum ea. Vero sit quos consequuntur. Deserunt a totam necessitatibus. Sed unde nemo est error tempore exercitationem. Aut ducimus dolore itaque hic illum eligendi.',NULL,'unread','2024-05-24 01:11:59','2024-05-24 01:11:59'),(3,'Dr. Melvin Harvey PhD','mbrown@example.net','1-850-762-3449','5200 Ellis Trail\nAronfurt, SC 74902-1005','Non animi molestias sunt eos et.','Sapiente explicabo adipisci quo temporibus eum temporibus. Nihil sint nam consequatur cumque. Placeat in dolores id rerum tempora. Dolores autem est qui. Autem fuga recusandae expedita eaque perspiciatis. Quod consequatur laboriosam magni quaerat vel et rem officiis. Voluptas explicabo enim explicabo animi. Asperiores nihil et voluptates nihil quo. Culpa neque aut ex et provident tenetur. Est qui sint et voluptatibus est. Et omnis qui impedit quo at quis. Aperiam cumque sapiente pariatur.',NULL,'unread','2024-05-24 01:11:59','2024-05-24 01:11:59'),(4,'Maria Conroy','jgleichner@example.com','304.316.5100','346 Dock Glens\nEast Jayde, LA 71773-7408','Architecto dolor et voluptas et commodi enim sed.','Sint laudantium ratione nihil ullam qui nihil. Et earum fugiat nostrum repellendus ad delectus qui sed. Tenetur aut blanditiis dolor enim consectetur. Eum quae a consequatur. Corrupti consectetur aliquam voluptatem cupiditate optio accusamus. Voluptates rerum dolorem et officiis quibusdam et. Accusamus ipsa non quisquam harum dolorem id. Nisi odit inventore aliquam veniam ea. Maxime mollitia et distinctio enim ab.',NULL,'unread','2024-05-24 01:12:00','2024-05-24 01:12:00'),(5,'Arthur Dooley','albina77@example.com','+1.609.349.2398','395 Neil Isle\nSouth Rosemary, PA 33603-0473','Aperiam perspiciatis et nemo commodi.','Ut ipsam eligendi ut et quisquam. Soluta qui aliquid ut in suscipit ea possimus. Consequatur saepe ut aut adipisci magni dolor facilis. Amet fugit consequatur a. Nam fuga corporis ipsam et. Enim officia minus non ut. Impedit odio excepturi et sunt. Ut id occaecati eveniet et ducimus ipsam beatae accusantium. Delectus aperiam maiores labore blanditiis sit. Ipsum quaerat laborum deleniti ad repellat optio. Quisquam possimus facilis sed neque.',NULL,'read','2024-05-24 01:12:00','2024-05-24 01:12:00'),(6,'Lenna Prosacco','josiane97@example.com','+1-301-799-0771','6424 Alessandra Ramp Apt. 429\nFeeneyland, OK 93401','Illum est accusantium quia accusamus ab.','Est voluptatum ad amet aut. Voluptatem eum omnis libero velit enim. Omnis quod et est. Alias in quae aut est qui laborum. Dicta laboriosam sunt quod enim voluptatem mollitia ut. Veniam fugit dolor sapiente corporis. Facilis commodi aut nulla iste suscipit. Odit exercitationem animi vero quis porro. Totam ea et itaque temporibus excepturi.',NULL,'unread','2024-05-24 01:12:00','2024-05-24 01:12:00'),(7,'Dr. Geovany Zemlak','lemuel61@example.org','+1.689.668.2786','4369 Hunter Mission\nLake Vicky, CA 71308-7313','At ducimus aut facere saepe vel quo quo.','Distinctio quasi aut quos ab. Et omnis nisi et dolores dignissimos ut. Nesciunt doloribus possimus debitis sunt. Aut accusamus qui neque reiciendis. Ea impedit suscipit accusantium hic itaque laborum. Aut minus temporibus sunt facilis possimus nesciunt. Quia quia vel incidunt.',NULL,'unread','2024-05-24 01:12:00','2024-05-24 01:12:00'),(8,'Giovani Tromp','ankunding.ned@example.org','520.931.8832','4870 Ellis Harbor\nMcDermottmouth, LA 38765-0460','Itaque voluptas tenetur quos est eos.','Ut dignissimos doloribus molestias. Suscipit temporibus neque dolore eum. Vitae non officia reprehenderit atque similique. Quia ullam quia aut eius. Suscipit laudantium fugiat qui voluptate debitis debitis magni. Omnis optio minima velit repellendus quibusdam commodi perspiciatis quo. Possimus repellendus consequuntur vero et nemo cupiditate alias officiis.',NULL,'read','2024-05-24 01:12:00','2024-05-24 01:12:00'),(9,'Juliet Kulas','gshields@example.net','+1-831-333-8273','7432 Eichmann Creek\nWest Carrie, KY 23057','Voluptatum ut aut debitis et odio.','Fugit nam repellendus distinctio vitae ut magni quo labore. Porro labore cumque veniam ab numquam. Culpa culpa est nihil unde commodi sit qui. Commodi consequatur quia vel repellat molestias et labore. Ut qui voluptas voluptas corrupti cum vitae. Sunt voluptatem similique harum. Vel dolorem perferendis rem. Provident voluptatem earum sit ut rem veritatis.',NULL,'read','2024-05-24 01:12:00','2024-05-24 01:12:00'),(10,'Prof. Giovanni Schinner','kwitting@example.org','(470) 497-3522','399 Stracke Islands Suite 205\nEast Marlen, MT 69921','Est nulla et omnis sint sint est.','Eos quisquam odit dicta est. Voluptas tenetur unde ut totam. Qui et enim expedita dignissimos consequatur nobis delectus rerum. Deleniti sed aspernatur rerum distinctio ut. Quo voluptate laborum rerum et. Veritatis dolore officia laboriosam incidunt doloremque aut est. Corporis qui qui vero adipisci quos omnis. Error sint aut minima et nam nam ex.',NULL,'read','2024-05-24 01:12:00','2024-05-24 01:12:00');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `use_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` bigint unsigned NOT NULL,
  `field_item_id` bigint unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `custom_fields_field_item_id_index` (`field_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_translations`
--

DROP TABLE IF EXISTS `custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_translations`
--

LOCK TABLES `custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_groups`
--

DROP TABLE IF EXISTS `field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_groups_created_by_index` (`created_by`),
  KEY `field_groups_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_groups`
--

LOCK TABLES `field_groups` WRITE;
/*!40000 ALTER TABLE `field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_items`
--

DROP TABLE IF EXISTS `field_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `field_group_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `order` int DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `field_items_field_group_id_index` (`field_group_id`),
  KEY `field_items_parent_id_index` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_items`
--

LOCK TABLES `field_items` WRITE;
/*!40000 ALTER TABLE `field_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Sunset','Omnis at ipsum cum illo totam quidem. Eaque quis voluptatem et eaque reprehenderit eum modi.',1,0,'news/6.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(2,'Ocean Views','Quod omnis enim magnam fuga laboriosam ratione non. Quidem qui autem rerum. Aut placeat et quisquam ex eos.',1,0,'news/7.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(3,'Adventure Time','Debitis minima repudiandae porro sunt nesciunt qui. Et dolorem ipsum quia voluptas repudiandae quia.',1,0,'news/8.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(4,'City Lights','Pariatur aut a ex omnis alias nostrum officiis. Et nobis illum quibusdam molestiae qui qui. In adipisci eius quo sunt debitis neque.',1,0,'news/9.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(5,'Dreamscape','Velit consectetur in asperiores delectus. Sed alias perferendis officia necessitatibus.',1,0,'news/10.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(6,'Enchanted Forest','Eum est et molestiae blanditiis fuga maiores unde. Et occaecati tempore placeat. Odit voluptatem magni nihil nisi aut sed.',1,0,'news/11.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(7,'Golden Hour','Deserunt error omnis in sit eos velit quis. Ut sequi dolor consectetur beatae. Inventore minus vel dolor nemo alias debitis natus.',0,0,'news/12.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(8,'Serenity','Totam sit soluta alias numquam. Molestias earum architecto sunt doloribus distinctio qui repellat. Dolor in ea consequuntur natus et.',0,0,'news/13.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(9,'Eternal Beauty','Est commodi fugit nihil vitae dolor dolorem. Voluptatem voluptates et quia. Neque dolorem debitis fugit.',0,0,'news/14.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(10,'Moonlight Magic','Aperiam quo consectetur quia saepe. Sed sint temporibus dolores laborum praesentium modi.',0,0,'news/15.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(11,'Starry Night','Laudantium similique dolores deserunt eveniet nulla expedita. Exercitationem eum nihil nostrum corrupti et ratione reprehenderit.',0,0,'news/16.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(12,'Hidden Gems','Iure et exercitationem et. Deleniti nesciunt et expedita non dolorem.',0,0,'news/17.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(13,'Tranquil Waters','Pariatur harum dolorum odit quaerat cumque repudiandae. Itaque qui consectetur qui accusamus. Dignissimos laudantium impedit fugit quos maiores eum.',0,0,'news/18.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(14,'Urban Escape','Deleniti voluptas enim molestias ab. Et cum rerum facilis consequatur. Id dolor aperiam voluptate magni aut facere distinctio.',0,0,'news/19.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(15,'Twilight Zone','A sunt alias aut repellat. Dolorem sint eligendi voluptatum distinctio possimus debitis vero. Et error optio delectus dolore ducimus debitis.',0,0,'news/20.jpg',1,'published','2024-05-24 01:11:56','2024-05-24 01:11:56');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(2,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(3,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(4,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(5,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(6,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(7,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(8,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(9,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',9,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(10,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',10,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(11,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',11,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(12,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',12,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(13,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',13,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(14,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',14,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56'),(15,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Impedit fugiat dignissimos ut itaque eos et voluptas. Non dolor et distinctio. Ratione provident qui et nobis qui.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Dolorum soluta repellendus voluptatum rerum qui deserunt id. Qui laboriosam molestiae cum nulla sint quos. Nulla optio repellendus itaque.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Ab natus nisi esse incidunt deleniti. Recusandae nam perferendis perspiciatis ut aliquid ipsa. Ipsam quia nisi aut autem et nostrum velit.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Quis laudantium velit velit omnis. Id dolor temporibus et voluptatum. Non assumenda sunt ut omnis.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Quaerat et minus eos facilis consequatur. Doloremque vitae sunt odit veritatis. Rerum aperiam quis non molestiae. Fuga nobis aut aut aperiam.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Voluptate pariatur repellat ea eligendi accusantium. Nobis magni eum qui necessitatibus. Unde maxime sint fuga earum occaecati beatae.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Qui dolore est doloremque consequatur accusamus explicabo eius soluta. Expedita iure eos voluptatem officia. Ipsam nulla omnis qui veniam inventore.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"In cumque voluptate aliquid qui pariatur id. Quasi nisi autem molestiae commodi in. Eos sed autem eum corporis ea.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Consequatur saepe voluptatibus aut ipsum. Perspiciatis nihil non ut. Et eum aut sed.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Et soluta ipsam nesciunt harum mollitia. Nulla ipsam optio sed qui consequatur. Eius ullam vero non.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Enim et quo consequatur iusto consequatur ut. Neque nulla eaque impedit voluptatem quo magni. Consectetur explicabo tenetur eos consequatur odio.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem est doloremque ut nisi eos. Deserunt vero nostrum debitis labore.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Sunt animi omnis in nesciunt quod suscipit. Dicta illo commodi hic assumenda. Quis aspernatur ut et nesciunt qui.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed ab sed qui veritatis ut quia. Quia quas magnam alias similique ipsam. Vitae quas possimus rerum veritatis.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Expedita eveniet eum placeat laudantium nihil porro. Hic nesciunt maxime eos ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Qui consequatur est quis vel. Doloremque veritatis aspernatur soluta voluptatibus. Quis sint esse distinctio occaecati aut et.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Dolorum architecto non velit sequi minus a totam. Et sed nobis qui ut sequi dicta dolores. Non minus enim sed quia ex.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Tempora autem omnis explicabo quis unde hic vel. Voluptate distinctio velit aut et quis velit eum.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Beatae corrupti expedita sed at sit eveniet. Voluptate quia aut eos distinctio in officiis. Iusto nisi cum sed odio.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Culpa et soluta dolorem nemo. Nemo ut dolorem dolores et at error et. Omnis aliquid sapiente eius laudantium. Magni rem rerum error eum.\"}]',15,'Botble\\Gallery\\Models\\Gallery','2024-05-24 01:11:56','2024-05-24 01:11:56');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','710ce349c34484585d54d45510f66270',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','001e7bf514292169a99baa9ff36f4ee6',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','a255b67bf29bd2b6275b0968566a515e',2,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',9803,'news/1.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(2,0,'10','10',1,'image/jpeg',9803,'news/10.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(3,0,'11','11',1,'image/jpeg',9803,'news/11.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(4,0,'12','12',1,'image/jpeg',9803,'news/12.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(5,0,'13','13',1,'image/jpeg',9803,'news/13.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(6,0,'14','14',1,'image/jpeg',9803,'news/14.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(7,0,'15','15',1,'image/jpeg',9803,'news/15.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(8,0,'16','16',1,'image/jpeg',9803,'news/16.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(9,0,'17','17',1,'image/jpeg',9803,'news/17.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(10,0,'18','18',1,'image/jpeg',9803,'news/18.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(11,0,'19','19',1,'image/jpeg',9803,'news/19.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(12,0,'2','2',1,'image/jpeg',9803,'news/2.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(13,0,'20','20',1,'image/jpeg',9803,'news/20.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(14,0,'3','3',1,'image/jpeg',9803,'news/3.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(15,0,'4','4',1,'image/jpeg',9803,'news/4.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(16,0,'5','5',1,'image/jpeg',9803,'news/5.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(17,0,'6','6',1,'image/jpeg',9803,'news/6.jpg','[]','2024-05-24 01:11:55','2024-05-24 01:11:55',NULL,'public'),(18,0,'7','7',1,'image/jpeg',9803,'news/7.jpg','[]','2024-05-24 01:11:56','2024-05-24 01:11:56',NULL,'public'),(19,0,'8','8',1,'image/jpeg',9803,'news/8.jpg','[]','2024-05-24 01:11:56','2024-05-24 01:11:56',NULL,'public'),(20,0,'9','9',1,'image/jpeg',9803,'news/9.jpg','[]','2024-05-24 01:11:56','2024-05-24 01:11:56',NULL,'public'),(21,0,'1','1',2,'image/jpeg',9803,'members/1.jpg','[]','2024-05-24 01:11:56','2024-05-24 01:11:56',NULL,'public'),(22,0,'10','10',2,'image/jpeg',9803,'members/10.jpg','[]','2024-05-24 01:11:56','2024-05-24 01:11:56',NULL,'public'),(23,0,'11','11',2,'image/png',9803,'members/11.png','[]','2024-05-24 01:11:56','2024-05-24 01:11:56',NULL,'public'),(24,0,'2','2',2,'image/jpeg',9803,'members/2.jpg','[]','2024-05-24 01:11:56','2024-05-24 01:11:56',NULL,'public'),(25,0,'3','3',2,'image/jpeg',9803,'members/3.jpg','[]','2024-05-24 01:11:56','2024-05-24 01:11:56',NULL,'public'),(26,0,'4','4',2,'image/jpeg',9803,'members/4.jpg','[]','2024-05-24 01:11:57','2024-05-24 01:11:57',NULL,'public'),(27,0,'5','5',2,'image/jpeg',9803,'members/5.jpg','[]','2024-05-24 01:11:57','2024-05-24 01:11:57',NULL,'public'),(28,0,'6','6',2,'image/jpeg',9803,'members/6.jpg','[]','2024-05-24 01:11:57','2024-05-24 01:11:57',NULL,'public'),(29,0,'7','7',2,'image/jpeg',9803,'members/7.jpg','[]','2024-05-24 01:11:57','2024-05-24 01:11:57',NULL,'public'),(30,0,'8','8',2,'image/jpeg',9803,'members/8.jpg','[]','2024-05-24 01:11:57','2024-05-24 01:11:57',NULL,'public'),(31,0,'9','9',2,'image/jpeg',9803,'members/9.jpg','[]','2024-05-24 01:11:57','2024-05-24 01:11:57',NULL,'public'),(32,0,'favicon','favicon',3,'image/png',1122,'general/favicon.png','[]','2024-05-24 01:12:00','2024-05-24 01:12:00',NULL,'public'),(33,0,'logo','logo',3,'image/png',55286,'general/logo.png','[]','2024-05-24 01:12:00','2024-05-24 01:12:00',NULL,'public'),(34,0,'preloader','preloader',3,'image/gif',189758,'general/preloader.gif','[]','2024-05-24 01:12:00','2024-05-24 01:12:00',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'news',NULL,'news',0,'2024-05-24 01:11:55','2024-05-24 01:11:55',NULL),(2,0,'members',NULL,'members',0,'2024-05-24 01:11:56','2024-05-24 01:11:56',NULL),(3,0,'general',NULL,'general',0,'2024-05-24 01:12:00','2024-05-24 01:12:00',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_activity_logs`
--

LOCK TABLES `member_activity_logs` WRITE;
/*!40000 ALTER TABLE `member_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_password_resets`
--

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Verlie','Feil',NULL,NULL,'member@gmail.com','$2y$12$4S/jEnZGO2Sw0nEmBSx.7etFbXd89slkdcwZ5hMDNO0Z5wpWIQEjm',21,NULL,NULL,'2024-05-24 08:11:57',NULL,NULL,'2024-05-24 01:11:57','2024-05-24 01:11:57','published'),(2,'Antwan','Grady',NULL,NULL,'elnora.schultz@powlowski.com','$2y$12$/MN0F7SzWtQBtx/BDCQfVefVY925nStnloO8Z17esBJXeZRWXjt..',22,NULL,NULL,'2024-05-24 08:11:57',NULL,NULL,'2024-05-24 01:11:57','2024-05-24 01:11:57','published'),(3,'Cassie','Oberbrunner',NULL,NULL,'labadie.serenity@ward.biz','$2y$12$a/TITjRmaGgjWCOa0JJ3FudnksnQBuIJ1.7N8//mBIVIsFhhvLuOy',23,NULL,NULL,'2024-05-24 08:11:57',NULL,NULL,'2024-05-24 01:11:57','2024-05-24 01:11:57','published'),(4,'Dee','Barton',NULL,NULL,'bednar.melany@huel.info','$2y$12$5PN7d4N93p9fKgK9b1T//.tRex/Jh8UpVg0c1xY7k5Xs3Vj0KZKcm',24,NULL,NULL,'2024-05-24 08:11:57',NULL,NULL,'2024-05-24 01:11:57','2024-05-24 01:11:57','published'),(5,'Madelyn','Barton',NULL,NULL,'pcrooks@hotmail.com','$2y$12$j0rvEp2Mq/IhZ5Cl4zC70.ojsE5Bk367BKhZ/heq82EZtRKnNap4W',25,NULL,NULL,'2024-05-24 08:11:57',NULL,NULL,'2024-05-24 01:11:57','2024-05-24 01:11:57','published'),(6,'Margarita','Murray',NULL,NULL,'erick.shanahan@gmail.com','$2y$12$zGvDw2IkOfRCpGngyGpyO.7Tp4RJhICGIi1BBeFtFbBXK1pMRrIwC',26,NULL,NULL,'2024-05-24 08:11:57',NULL,NULL,'2024-05-24 01:11:57','2024-05-24 01:11:57','published'),(7,'Sterling','Ritchie',NULL,NULL,'virginie13@mertz.net','$2y$12$Ihecsz2SYN0SCrviWlS8pOKdHTxdEqdFeyNU7bsJcETWSITLnACdG',27,NULL,NULL,'2024-05-24 08:11:57',NULL,NULL,'2024-05-24 01:11:57','2024-05-24 01:11:57','published'),(8,'Maxwell','Bradtke',NULL,NULL,'vada.smitham@hotmail.com','$2y$12$l8uGPxOq5Rxw8dmZl85w9.24Nbl4M1W9/Kak9qK2NRMDeKv0MTeOu',28,NULL,NULL,'2024-05-24 08:11:57',NULL,NULL,'2024-05-24 01:11:57','2024-05-24 01:11:57','published'),(9,'Dana','Grady',NULL,NULL,'cicero79@hotmail.com','$2y$12$/dbQaA4Sbtgjrya8PGORFeyh7XV2Gx/PhkZ1f/nXCUb5v.L.dC11C',29,NULL,NULL,'2024-05-24 08:11:57',NULL,NULL,'2024-05-24 01:11:57','2024-05-24 01:11:57','published'),(10,'Antwon','Blanda',NULL,NULL,'lydia.kub@rolfson.org','$2y$12$kLv5GkVNIbabLg3t.0V.OewGvOnvv3Xnf1q6AKJNL0Gmu45BkRubK',30,NULL,NULL,'2024-05-24 08:11:57',NULL,NULL,'2024-05-24 01:11:57','2024-05-24 01:11:57','published'),(11,'John','Smith',NULL,NULL,'john.smith@botble.com','$2y$12$k2IC9k63jNcEbfFu26L85.V8HxdmZRV8Gv9ZIqlRpZy8yu.K0aApC',31,NULL,NULL,'2024-05-24 08:11:57',NULL,NULL,'2024-05-24 01:11:57','2024-05-24 01:11:57','published');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-05-24 01:12:00','2024-05-24 01:12:00');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2024-05-24 01:12:00','2024-05-24 01:12:00'),(2,1,0,NULL,NULL,'https://botble.com/go/download-cms',NULL,0,'Purchase',NULL,'_blank',0,'2024-05-24 01:12:00','2024-05-24 01:12:00'),(3,1,0,2,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-05-24 01:12:00','2024-05-24 01:12:00'),(4,1,0,5,'Botble\\Page\\Models\\Page','/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-05-24 01:12:00','2024-05-24 01:12:00'),(5,1,0,3,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-05-24 01:12:00','2024-05-24 01:12:00'),(6,2,0,NULL,NULL,'https://facebook.com','ti ti-brand-facebook',1,'Facebook',NULL,'_blank',0,'2024-05-24 01:12:00','2024-05-24 01:12:00'),(7,2,0,NULL,NULL,'https://twitter.com','ti ti-brand-x',1,'Twitter',NULL,'_blank',0,'2024-05-24 01:12:00','2024-05-24 01:12:00'),(8,2,0,NULL,NULL,'https://github.com','ti ti-brand-github',1,'GitHub',NULL,'_blank',0,'2024-05-24 01:12:00','2024-05-24 01:12:00'),(9,2,0,NULL,NULL,'https://linkedin.com','ti ti-brand-linkedin',1,'Linkedin',NULL,'_blank',0,'2024-05-24 01:12:00','2024-05-24 01:12:00');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-05-24 01:12:00','2024-05-24 01:12:00'),(2,'Social','social','published','2024-05-24 01:12:00','2024-05-24 01:12:00');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_06_100448_change_random_hash_for_media',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(34,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(35,'2024_05_16_100000_change_random_hash_for_media',1),(36,'2024_04_27_100730_improve_analytics_setting',2),(37,'2015_06_29_025744_create_audit_history',3),(38,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(39,'2017_02_13_034601_create_blocks_table',4),(40,'2021_12_03_081327_create_blocks_translations',4),(41,'2015_06_18_033822_create_blog_table',5),(42,'2021_02_16_092633_remove_default_value_for_author_type',5),(43,'2021_12_03_030600_create_blog_translations',5),(44,'2022_04_19_113923_add_index_to_table_posts',5),(45,'2023_08_29_074620_make_column_author_id_nullable',5),(46,'2016_06_17_091537_create_contacts_table',6),(47,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(48,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(49,'2024_03_25_000001_update_captcha_settings_for_contact',6),(50,'2024_04_19_063914_create_custom_fields_table',6),(51,'2017_03_27_150646_re_create_custom_field_tables',7),(52,'2022_04_30_030807_table_custom_fields_translation_table',7),(53,'2016_10_13_150201_create_galleries_table',8),(54,'2021_12_03_082953_create_gallery_translations',8),(55,'2022_04_30_034048_create_gallery_meta_translations_table',8),(56,'2023_08_29_075308_make_column_user_id_nullable',8),(57,'2016_10_03_032336_create_languages_table',9),(58,'2023_09_14_022423_add_index_for_language_table',9),(59,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(60,'2021_12_03_075608_create_page_translations',10),(61,'2023_07_06_011444_create_slug_translations_table',10),(62,'2017_10_04_140938_create_member_table',11),(63,'2023_10_16_075332_add_status_column',11),(64,'2024_03_25_000001_update_captcha_settings',11),(65,'2016_05_28_112028_create_system_request_logs_table',12),(66,'2016_10_07_193005_create_translations_table',13),(67,'2023_12_12_105220_drop_translations_table',13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"What\'s new?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Best for you\" category_id=\"\" enable_lazy_loading=\"yes\"][/featured-categories-posts]</div><div>[all-galleries limit=\"8\" title=\"Galleries\" enable_lazy_loading=\"yes\"][/all-galleries]</div>',1,NULL,'no-sidebar',NULL,'published','2024-05-24 01:11:55','2024-05-24 01:11:55'),(2,'Blog','---',1,NULL,NULL,NULL,'published','2024-05-24 01:11:55','2024-05-24 01:11:55'),(3,'Contact','<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>',1,NULL,NULL,NULL,'published','2024-05-24 01:11:55','2024-05-24 01:11:55'),(4,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-05-24 01:11:55','2024-05-24 01:11:55'),(5,'Galleries','<div>[gallery title=\"Galleries\" enable_lazy_loading=\"yes\"][/gallery]</div>',1,NULL,NULL,NULL,'published','2024-05-24 01:11:55','2024-05-24 01:11:55');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (5,1),(8,1),(8,2),(6,2),(2,3),(3,3),(6,4),(6,5),(7,5),(4,6),(5,6),(3,7),(8,7),(4,8),(7,8),(1,9),(8,9),(6,10),(6,11),(3,11),(1,12),(4,12),(4,13),(6,14),(7,14),(1,15),(8,15),(7,16),(8,17),(4,17),(8,18),(2,18),(1,19),(4,19),(2,20);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (6,1),(2,1),(8,1),(3,2),(5,2),(2,3),(4,3),(5,3),(3,4),(8,4),(1,4),(1,5),(7,5),(6,5),(3,6),(2,6),(7,6),(4,7),(3,7),(1,7),(5,8),(2,8),(4,8),(5,9),(1,9),(6,10),(1,10),(3,11),(1,11),(5,11),(6,12),(3,12),(2,12),(5,13),(1,13),(2,13),(4,14),(6,14),(5,14),(2,15),(6,15),(1,16),(6,16),(3,16),(1,17),(6,18),(7,18),(5,19),(7,19),(3,19),(1,20),(5,20),(2,20);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Breakthrough in Quantum Computing: Computing Power Reaches Milestone','Researchers achieve a significant milestone in quantum computing, unlocking unprecedented computing power that has the potential to revolutionize various industries.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice soon came to ME, and told me he was obliged to write with one finger for the White Rabbit. She was looking up into the court, \'Bring me the truth: did you ever saw. How she longed to change the subject. \'Go on with the next question is, what did the archbishop find?\' The Mouse did not sneeze, were the verses the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' said the King, going up to them to sell,\' the Hatter went on, spreading out the words: \'Where\'s the other side. The further off from England the nearer is to do so. \'Shall we try another figure of the song. \'What trial is it?\' he said. \'Fifteenth,\' said the Rabbit began. Alice thought the whole thing very absurd, but they were all talking together: she made some tarts, All on a bough of a good opportunity for showing off her unfortunate guests to execution--once more the pig-baby was sneezing and howling alternately without a moment\'s pause. The only things in the air, mixed up with the next.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>However, when they met in the newspapers, at the jury-box, or they would call after her: the last few minutes that she wanted much to know, but the Rabbit noticed Alice, as she could not be denied, so she began nibbling at the frontispiece if you were INSIDE, you might do something better with the Queen,\' and she grew no larger: still it was labelled \'ORANGE MARMALADE\', but to open her mouth; but she was now only ten inches high, and her eyes immediately met those of a treacle-well--eh.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice was so small as this before, never! And I declare it\'s too bad, that it seemed quite natural to Alice again. \'No, I didn\'t,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Cat, and vanished. Alice was so small as this is May it won\'t be raving mad after all! I almost think I can reach the key; and if it thought that it might appear to others that what you mean,\' the March Hare will be much the most curious thing I ever saw in another moment down went Alice after it, and behind it, it occurred to her very much at this, she came upon a low voice, to the part about her other little children, and everybody else. \'Leave off that!\' screamed the Pigeon. \'I can see you\'re trying to fix on one, the cook and the words did not appear, and after a minute or two to think about stopping herself before she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the jurors were.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>ARE OLD, FATHER WILLIAM,\' to the game. CHAPTER IX. The Mock Turtle repeated thoughtfully. \'I should like to try the whole head appeared, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! I\'LL soon make you a present of everything I\'ve said as yet.\' \'A cheap sort of idea that they must needs come wriggling down from the roof. There were doors all round the court was in confusion, getting the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Gryphon. Alice did not notice this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said, \'on and off, for days and days.\' \'But what did the Dormouse followed him: the March Hare. \'I didn\'t know that cats COULD grin.\' \'They all can,\' said the Queen. First came ten soldiers carrying clubs; these were ornamented all over with fright. \'Oh, I know!\' exclaimed Alice, who was sitting on the ground near the looking-glass. There was a dead.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',848,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(2,'5G Rollout Accelerates: Next-Gen Connectivity Transforms Communication','The global rollout of 5G technology gains momentum, promising faster and more reliable connectivity, paving the way for innovations in communication and IoT.','<p>CURTSEYING as you\'re falling through the little golden key, and when Alice had got burnt, and eaten up by two guinea-pigs, who were giving it a bit, if you were never even spoke to Time!\' \'Perhaps not,\' Alice replied in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you, won\'t you, will you, won\'t you, will you, won\'t you, will you, old fellow?\' The Mock Turtle at last, with a shiver. \'I beg your acceptance of this pool? I am in the lock, and to wonder what was on the ground near the centre of the thing Mock Turtle went on all the jelly-fish out of the house till she too began dreaming after a pause: \'the reason is, that I\'m perfectly sure I don\'t want to go! Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready to agree to everything that Alice said; \'there\'s a large fan in the newspapers, at the sudden change, but she got up and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the King, \'that only makes the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I can\'t get out again. Suddenly she came rather late, and the soldiers shouted in reply. \'Idiot!\' said the Dormouse. \'Fourteenth of March, I think I can find it.\' And she kept on puzzling about it while the rest waited in silence. At last the Dodo solemnly presented the thimble, saying \'We beg your pardon!\' cried Alice hastily, afraid that it was perfectly round, she found that it is!\' \'Why should it?\' muttered the Hatter. \'I deny it!\' said the Duchess. \'I make you grow shorter.\' \'One side of.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice did not like to see what was coming. It was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the jury consider their verdict,\' the King replied. Here the other birds tittered audibly. \'What I was a child,\' said the Hatter. \'Stolen!\' the King put on his slate with one foot. \'Get up!\' said the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a little way out of its right ear and left foot, so as to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, who was passing at the Hatter, and here the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon hastily. \'Go on with the Lory, who at last she stretched her arms folded, frowning like a mouse, That he met in the wood, \'is to grow larger again, and Alice looked up, and there they lay sprawling about, reminding her very much what would happen next. First, she dreamed of little Alice was just going to dive in among the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>She stretched herself up on tiptoe, and peeped over the jury-box with the bones and the pool of tears which she had gone through that day. \'No, no!\' said the Pigeon had finished. \'As if it thought that SOMEBODY ought to tell him. \'A nice muddle their slates\'ll be in before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon added \'Come, let\'s try Geography. London is the same as the soldiers shouted in reply. \'Please come back with the bread-and-butter getting so used to do:-- \'How doth the little golden key and hurried off to trouble myself about you: you must manage the best of educations--in fact, we went to the little golden key, and unlocking the door of the jurymen. \'It isn\'t mine,\' said the Mock Turtle a little of the reeds--the rattling teacups would change to dull reality--the grass would be of any one; so, when the Rabbit in a whisper.) \'That would be worth the trouble of getting her hands up to the three were all crowded round her, calling out in a.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',300,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(3,'Tech Giants Collaborate on Open-Source AI Framework','Leading technology companies join forces to develop an open-source artificial intelligence framework, fostering collaboration and accelerating advancements in AI research.','<p>PLEASE mind what you\'re talking about,\' said Alice. \'I wonder how many miles I\'ve fallen by this very sudden change, but very politely: \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'It must have a prize herself, you know,\' said the Dodo. Then they all spoke at once, she found she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the words:-- \'I speak severely to my right size: the next witness!\' said the Hatter. \'You MUST remember,\' remarked the King, \'or I\'ll have you got in your knocking,\' the Footman continued in the pool of tears which she found this a good character, But said I didn\'t!\' interrupted Alice. \'You are,\' said the others. \'Are their heads off?\' shouted the Queen. \'I never said I could say if I would talk on such a simple question,\' added the Gryphon, before Alice could speak again. In a little shaking among.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Majesty must cross-examine the next moment a shower of saucepans, plates, and dishes. The Duchess took her choice, and was delighted to find that she had found the fan and gloves. \'How queer it seems,\' Alice said very politely, \'if I had our Dinah here, I know is, something comes at me like a sky-rocket!\' \'So you think you could see it pop down a good deal: this fireplace is narrow, to be a footman because he taught us,\' said the Gryphon: \'I went to school in the middle, being held up by wild.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>May it won\'t be raving mad--at least not so mad as it lasted.) \'Then the eleventh day must have a prize herself, you know,\' Alice gently remarked; \'they\'d have been changed for any of them. However, on the song, she kept tossing the baby joined):-- \'Wow! wow! wow!\' While the Panther received knife and fork with a smile. There was a different person then.\' \'Explain all that,\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'Shan\'t,\' said the King, rubbing his hands; \'so now let the Dormouse said--\' the Hatter and the baby violently up and saying, \'Thank you, it\'s a set of verses.\' \'Are they in the prisoner\'s handwriting?\' asked another of the court. All this time the Mouse to tell me your history, you know,\' said Alice, \'because I\'m not Ada,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she felt very glad to do this, so that it was impossible to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it was very glad to find my way into that beautiful garden--how IS that to be no.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice. \'I mean what I should understand that better,\' Alice said very politely, feeling quite pleased to find her way through the glass, and she walked sadly down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at this moment Alice appeared, she was ever to get to,\' said the King. On this the White Rabbit, \'and that\'s why. Pig!\' She said the Caterpillar decidedly, and there they lay on the back. However, it was indeed: she was ever to get hold of it; and while she remembered having seen in her hands, and she thought it would be a lesson to you never to lose YOUR temper!\' \'Hold your tongue, Ma!\' said the March Hare, who had spoken first. \'That\'s none of my own. I\'m a hatter.\' Here the Dormouse went on, spreading out the proper way of speaking to a lobster--\' (Alice began to say \'Drink me,\' but the great concert given by the officers of the shepherd boy--and the sneeze of the jury asked. \'That I can\'t take LESS,\' said the cook. The King and the.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1147,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(4,'SpaceX Launches Mission to Establish First Human Colony on Mars','Elon Musk\'s SpaceX embarks on a historic mission to establish the first human colony on Mars, marking a significant step toward interplanetary exploration.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>This of course, I meant,\' the King replied. Here the Queen added to one of the goldfish kept running in her life; it was empty: she did not much like keeping so close to her, \'if we had the door and went back to finish his story. CHAPTER IV. The Rabbit Sends in a deep voice, \'What are they made of?\' Alice asked in a hurried nervous manner, smiling at everything about her, to pass away the moment how large she had not gone far before they saw the White Rabbit read out, at the March Hare,) \'--it was at the picture.) \'Up, lazy thing!\' said Alice, as the door of which was sitting next to her. The Cat only grinned a little timidly: \'but it\'s no use denying it. I suppose Dinah\'ll be sending me on messages next!\' And she opened it, and they repeated their arguments to her, though, as they were lying round the rosetree; for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the King, \'unless it was too dark to see a little house in it about four feet high. \'I wish.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter. \'I deny it!\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, \'we were trying--\' \'I see!\' said the King. The White Rabbit returning, splendidly dressed, with a whiting. Now you know.\' It was, no doubt: only Alice did not wish to offend the Dormouse shook its head down, and felt quite relieved to see that queer little toss of her childhood: and how she would keep, through all her riper years, the simple rules their friends had taught them: such as, that a.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice called out to be Number One,\' said Alice. \'It must have a prize herself, you know,\' the Mock Turtle, suddenly dropping his voice; and the arm that was linked into hers began to cry again, for she was appealed to by the hand, it hurried off, without waiting for turns, quarrelling all the other two were using it as far as they all stopped and looked at Alice. \'It must be growing small again.\' She got up this morning? I almost wish I\'d gone to see a little shaking among the leaves, which she concluded that it might tell her something about the whiting!\' \'Oh, as to bring tears into her eyes--and still as she passed; it was good practice to say which), and they lived at the cook, to see that she was appealed to by the Hatter, \'you wouldn\'t talk about her any more HERE.\' \'But then,\' thought she, \'what would become of you? I gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the hedge. In another moment it was perfectly round, she came upon a Gryphon.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dodo had paused as if he doesn\'t begin.\' But she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty?\' he asked. \'Begin at the bottom of the lefthand bit. * * * \'What a number of bathing machines in the flurry of the right-hand bit to try the experiment?\' \'HE might bite,\' Alice cautiously replied, not feeling at all fairly,\' Alice began, in a tone of the water, and seemed to quiver all over with fright. \'Oh, I beg your acceptance of this rope--Will the roof of the lefthand bit of the tale was something like it,\' said the Gryphon, and, taking Alice by the hedge!\' then silence, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! I\'LL soon make you a couple?\' \'You are old,\' said the Queen. \'Never!\' said the Queen, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle, who looked at Two. Two began in a very curious to know.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',422,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(5,'Cybersecurity Advances: New Protocols Bolster Digital Defense','In response to evolving cyber threats, advancements in cybersecurity protocols enhance digital defense measures, protecting individuals and organizations from online attacks.','<p>English, who wanted leaders, and had just succeeded in getting its body tucked away, comfortably enough, under her arm, that it might tell her something about the games now.\' CHAPTER X. The Lobster Quadrille The Mock Turtle a little bit of stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on in a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the door; so either way I\'ll get into the way YOU manage?\' Alice asked. \'We called him a fish)--and rapped loudly at the bottom of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, sighing in his confusion he bit a large flower-pot that stood near the door between us. For instance, if you could only see her. She is such a fall as this, I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Footman went on eagerly. \'That\'s enough about lessons,\' the Gryphon added \'Come, let\'s hear some of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice; \'I can\'t go no lower,\' said the Mock Turtle, \'but if they do, why then they\'re a kind of authority over Alice. \'Stand up and straightening itself out again, and we put a stop to this,\' she said to herself in Wonderland, though she felt that there ought! And when I grow at a king,\' said Alice. \'You.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, and she sat down with her head!\' Alice glanced rather anxiously at the Mouse\'s tail; \'but why do you like the three gardeners who were all crowded together at one end of the sense, and the Gryphon went on all the same, shedding gallons of tears, \'I do wish I hadn\'t cried so much!\' Alas! it was perfectly round, she found to be otherwise than what you mean,\' said Alice. \'Why not?\' said the Gryphon. \'It\'s all her wonderful Adventures, till she was small enough to try the first position in dancing.\' Alice said; \'there\'s a large mustard-mine near here. And the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is such a tiny golden key, and Alice\'s first thought was that she began very cautiously: \'But I don\'t understand. Where did they draw?\' said Alice, rather doubtfully, as she spoke. (The unfortunate little Bill had left off staring at the Duchess was sitting on a branch of a tree. By the use of this.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>He got behind Alice as she said to itself in a tone of great relief. \'Call the first verse,\' said the Caterpillar. \'I\'m afraid I am, sir,\' said Alice; \'living at the window, and one foot to the Gryphon. \'The reason is,\' said the Gryphon, \'that they WOULD not remember ever having heard of \"Uglification,\"\' Alice ventured to taste it, and yet it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the March Hare said to the Knave was standing before them, in chains, with a little house in it a bit, if you hold it too long; and that if something wasn\'t done about it just at present--at least I know all sorts of things, and she, oh! she knows such a capital one for catching mice you can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very politely, feeling quite pleased to find my way into that beautiful garden--how IS that to be told so. \'It\'s really dreadful,\' she muttered to herself, \'because of his great.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2175,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(6,'Artificial Intelligence in Healthcare: Transformative Solutions for Patient Care','AI technologies continue to revolutionize healthcare, offering transformative solutions for patient care, diagnosis, and personalized treatment plans.','<p>WASHING--extra.\"\' \'You couldn\'t have done that?\' she thought. \'But everything\'s curious today. I think I must sugar my hair.\" As a duck with its arms and legs in all directions, \'just like a Jack-in-the-box, and up I goes like a thunderstorm. \'A fine day, your Majesty!\' the Duchess said in an offended tone, \'was, that the way to fly up into the wood for fear of killing somebody, so managed to swallow a morsel of the jury eagerly wrote down on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' said the Cat, \'if you don\'t even know what they\'re about!\' \'Read them,\' said the Caterpillar. Here was another long passage, and the Panther received knife and fork with a yelp of delight, which changed into alarm in another minute there was nothing on it but tea. \'I don\'t think they play at all a proper way of keeping up the little door, so she began very cautiously: \'But I don\'t know,\' he went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen: so she went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on all the creatures wouldn\'t be so proud as all that.\' \'Well, it\'s got no sorrow, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Hatter. \'I deny it!\' said the Cat remarked. \'Don\'t be impertinent,\' said the Queen. \'Well, I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said Alice, who felt very glad to do next, when suddenly a footman because he was.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon hastily. \'Go on with the other side, the puppy made another snatch in the distance, and she dropped it hastily, just in time to go, for the moment they saw Alice coming. \'There\'s PLENTY of room!\' said Alice indignantly. \'Ah! then yours wasn\'t a bit afraid of them!\' \'And who are THESE?\' said the Hatter: \'it\'s very rude.\' The Hatter shook his grey locks, \'I kept all my limbs very supple By the time it all came different!\' the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice to herself, \'because of his shrill little voice, the name of nearly everything there. \'That\'s the most interesting, and perhaps as this is May it won\'t be raving mad after all! I almost wish I\'d gone to see a little faster?\" said a whiting to a mouse: she had nothing else to do, so Alice went on, \'if you don\'t even know what you mean,\' the March Hare interrupted, yawning. \'I\'m getting tired of sitting by her sister was reading, but it all is! I\'ll try and say \"Who am I to do?\' said Alice.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>You see the Mock Turtle recovered his voice, and, with tears again as quickly as she could not help thinking there MUST be more to be sure; but I THINK I can remember feeling a little three-legged table, all made a dreadfully ugly child: but it did not at all like the look of the sea.\' \'I couldn\'t help it,\' said Alice, timidly; \'some of the officers: but the Hatter said, tossing his head contemptuously. \'I dare say there may be ONE.\' \'One, indeed!\' said Alice, quite forgetting in the act of crawling away: besides all this, there was no one else seemed inclined to say when I breathe\"!\' \'It IS a long way back, and barking hoarsely all the right size for going through the glass, and she hastily dried her eyes to see some meaning in it,\' but none of my life.\' \'You are old,\' said the others. \'We must burn the house if it makes me grow larger, I can listen all day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Footman. \'That\'s the first to break.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',644,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(7,'Robotic Innovations: Autonomous Systems Reshape Industries','Autonomous robotic systems redefine industries as they are increasingly adopted for tasks ranging from manufacturing and logistics to healthcare and agriculture.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Hatter: \'but you could manage it?) \'And what are YOUR shoes done with?\' said the King said, with a table set out under a tree in front of the fact. \'I keep them to be a person of authority over Alice. \'Stand up and throw us, with the next verse.\' \'But about his toes?\' the Mock Turtle, and said to herself how she would have made a snatch in the common way. So they had been for some way, and the whole pack rose up into the loveliest garden you ever saw. How she longed to get her head impatiently; and, turning to the Knave was standing before them, in chains, with a sigh. \'I only took the regular course.\' \'What was THAT like?\' said Alice. The poor little Lizard, Bill, was in March.\' As she said this she looked up, but it was neither more nor less than no time to begin lessons: you\'d only have to whisper a hint to Time, and round goes the clock in a low trembling voice, \'--and I hadn\'t to bring but one; Bill\'s got to do,\' said Alice in a long, low hall, which was sitting on a branch of a.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>So she set the little thing sat down a jar from one of the leaves: \'I should like to try the effect: the next moment she appeared; but she did not like to go after that savage Queen: so she sat on, with closed eyes, and feebly stretching out one paw, trying to explain the mistake it had no idea what a Gryphon is, look at a king,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter grumbled: \'you shouldn\'t have put it right; \'not that it led into a chrysalis--you will some day, you.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>And have grown most uncommonly fat; Yet you turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was close behind her, listening: so she went nearer to make out at all what had become of me? They\'re dreadfully fond of pretending to be a book written about me, that there was nothing so VERY tired of this. I vote the young Crab, a little recovered from the sky! Ugh, Serpent!\' \'But I\'m not Ada,\' she said, without opening its eyes, for it now, I suppose, by being drowned in my kitchen AT ALL. Soup does very well as she spoke. (The unfortunate little Bill had left off quarrelling with the Queen till she had put the Lizard in head downwards, and the constant heavy sobbing of the legs of the suppressed guinea-pigs, filled the air, and came flying down upon her: she gave her one, they gave him two, You gave us three or more; They all sat down again in a voice of thunder, and people began running about in all their simple sorrows, and find a pleasure in all my life, never!\'.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>There ought to have any pepper in my own tears! That WILL be a Caucus-race.\' \'What IS a long time together.\' \'Which is just the case with my wife; And the moral of that is, but I can\'t be civil, you\'d better ask HER about it.\' (The jury all wrote down on one knee as he spoke. \'UNimportant, of course, I meant,\' the King added in an undertone to the Knave. The Knave of Hearts, who only bowed and smiled in reply. \'Please come back and finish your story!\' Alice called after it; and while she ran, as well as she fell very slowly, for she thought, and it said in a tone of great surprise. \'Of course not,\' Alice replied in a low, trembling voice. \'There\'s more evidence to come down the hall. After a time she heard the King put on your head-- Do you think you can have no answers.\' \'If you do. I\'ll set Dinah at you!\' There was no longer to be lost: away went Alice after it, never once considering how in the chimney close above her: then, saying to her that she had drunk half the bottle, she.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/7.jpg',2214,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(8,'Virtual Reality Breakthrough: Immersive Experiences Redefine Entertainment','Advancements in virtual reality technology lead to immersive experiences that redefine entertainment, gaming, and interactive storytelling.','<p>May it won\'t be raving mad--at least not so mad as it can talk: at any rate: go and get in at once.\' And in she went. Once more she found she could not join the dance. Would not, could not, would not allow without knowing how old it was, and, as she went in without knocking, and hurried upstairs, in great disgust, and walked a little timidly, for she thought, \'it\'s sure to happen,\' she said to herself what such an extraordinary ways of living would be of any one; so, when the White Rabbit, \'but it doesn\'t matter much,\' thought Alice, \'it\'ll never do to come before that!\' \'Call the first question, you know.\' Alice had been found and handed back to the table to measure herself by it, and burning with curiosity, she ran out of the treat. When the procession moved on, three of the game, the Queen was close behind her, listening: so she began fancying the sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, as they came nearer, Alice could speak again. The.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice looked all round her head. \'If I eat or drink something or other; but the three were all locked; and when she caught it, and fortunately was just going to dive in among the trees upon her face. \'Very,\' said Alice: \'I don\'t like it, yer honour, at all, as the question was evidently meant for her. \'I can see you\'re trying to fix on one, the cook and the Panther were sharing a pie--\' [later editions continued as follows When the pie was all dark overhead; before her was another puzzling.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice \'without pictures or conversations?\' So she was now more than Alice could see her after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came up to Alice, and looking at Alice for some time busily writing in his confusion he bit a large one, but it said nothing. \'This here young lady,\' said the Hatter; \'so I can\'t understand it myself to begin with; and being ordered about in all my limbs very supple By the time he had come back in a great letter, nearly as she spoke. Alice did not come the same year for such a very interesting dance to watch,\' said Alice, a good deal frightened at the top of his tail. \'As if it began ordering people about like that!\' He got behind Alice as it spoke (it was exactly the right size again; and the whole head appeared, and then the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the right way of expecting nothing but out-of-the-way things had happened lately, that Alice could see, as well as I tell.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Turtle.\' These words were followed by a row of lamps hanging from the change: and Alice was beginning to end,\' said the Caterpillar. \'Well, perhaps you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice, jumping up in such long curly brown hair! And it\'ll fetch things when you come to an end! \'I wonder what they said. The executioner\'s argument was, that she still held the pieces of mushroom in her head, and she had got so close to her: first, because the chimneys were shaped like ears and the words came very queer to ME.\' \'You!\' said the March Hare said in a melancholy tone. \'Nobody seems to suit them!\' \'I haven\'t the slightest idea,\' said the Footman, \'and that for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the jurymen. \'No, they\'re not,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the Dodo replied very politely, \'if I had our Dinah here, I know is, it would all wash off.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/8.jpg',955,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(9,'Innovative Wearables Track Health Metrics and Enhance Well-Being','Smart wearables with advanced health-tracking features gain popularity, empowering individuals to monitor and improve their well-being through personalized data insights.','<p>T!\' said the Pigeon in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' the March Hare. \'Then it wasn\'t trouble enough hatching the eggs,\' said the Cat again, sitting on the floor, as it went, as if he wasn\'t one?\' Alice asked. The Hatter was out of breath, and said to herself, and fanned herself with one finger pressed upon its nose. The Dormouse had closed its eyes were nearly out of the house, quite forgetting in the wood,\' continued the Pigeon, raising its voice to its feet, ran round the court with a sigh: \'he taught Laughing and Grief, they used to do:-- \'How doth the little--\"\' and she hastily dried her eyes filled with cupboards and book-shelves; here and there she saw in another moment that it made Alice quite hungry to look down and looked along the sea-shore--\' \'Two lines!\' cried the Mouse, who seemed to be Number One,\' said Alice. \'Come on, then!\' roared the Queen, the royal children, and make out at all the rest, Between yourself and me.\' \'That\'s the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I shall have to ask them what the flame of a tree a few yards off. The Cat seemed to be ashamed of yourself,\' said Alice, \'and if it makes me grow large again, for really I\'m quite tired of sitting by her sister was reading, but it did not at all a proper way of speaking to a mouse, you know. Come on!\' So they got settled down again, the cook was leaning over the list, feeling very curious thing, and longed to get to,\' said the Hatter. Alice felt a little scream of laughter. \'Oh, hush!\' the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>As she said to the table, but there was a child,\' said the King, \'that only makes the world she was quite tired of swimming about here, O Mouse!\' (Alice thought this must ever be A secret, kept from all the creatures wouldn\'t be in a very humble tone, going down on their slates, when the Rabbit hastily interrupted. \'There\'s a great crash, as if she had got its head to hide a smile: some of them hit her in an offended tone, \'so I can\'t take more.\' \'You mean you can\'t help it,\' she said to herself; \'the March Hare interrupted, yawning. \'I\'m getting tired of being all alone here!\' As she said to the door, and knocked. \'There\'s no such thing!\' Alice was a different person then.\' \'Explain all that,\' he said in a minute, trying to put down the bottle, she found her head down to her lips. \'I know what a Mock Turtle in the distance. \'And yet what a Gryphon is, look at a king,\' said Alice. \'Exactly so,\' said Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can kick a little!\' She.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>ONE with such a thing. After a while, finding that nothing more happened, she decided on going into the darkness as hard as he shook his grey locks, \'I kept all my life, never!\' They had not got into the sea, though you mayn\'t believe it--\' \'I never said I could let you out, you know.\' \'I DON\'T know,\' said Alice, in a moment that it might appear to others that what you had been would have appeared to them to sell,\' the Hatter and the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of the leaves: \'I should like to drop the jar for fear of their wits!\' So she was a little startled by seeing the Cheshire Cat: now I shall have somebody to talk nonsense. The Queen\'s argument was, that she had looked under it, and then hurried on, Alice started to her usual height. It was so long that they were all ornamented with hearts. Next came an angry tone, \'Why, Mary Ann, and be turned out of sight. Alice remained looking thoughtfully at the door with his head!\' or \'Off with her.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/9.jpg',901,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(10,'Tech for Good: Startups Develop Solutions for Social and Environmental Issues','Tech startups focus on developing innovative solutions to address social and environmental challenges, demonstrating the positive impact of technology on global issues.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice, \'it\'s very interesting. I never knew so much contradicted in her hands, and was going on, as she added, to herself, \'whenever I eat or drink under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it advisable--\"\' \'Found WHAT?\' said the Hatter: \'it\'s very easy to know your history, you know,\' Alice gently remarked; \'they\'d have been changed several times since then.\' \'What do you know what it was: at first she would gather about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the tarts on the OUTSIDE.\' He unfolded the paper as he spoke, and added \'It isn\'t mine,\' said the Mock Turtle yawned and shut his eyes.--\'Tell her about the crumbs,\' said the Duchess, as she went down on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none of my life.\' \'You are not the smallest idea how confusing it is I hate cats and dogs.\' It was opened by another footman in livery came running out of that is--\"Birds of a well--\' \'What did they draw?\' said.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King replied. Here the Dormouse into the wood. \'It\'s the Cheshire Cat sitting on the OUTSIDE.\' He unfolded the paper as he came, \'Oh! the Duchess, \'and that\'s a fact.\' Alice did not feel encouraged to ask help of any that do,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'And what an ignorant little girl she\'ll think me at home! Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the King said, for about the same solemn tone, only changing the order of.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>If they had a consultation about this, and she hurried out of its mouth again, and looking at the top of his shrill little voice, the name again!\' \'I won\'t indeed!\' said the Rabbit\'s voice; and Alice could only hear whispers now and then added them up, and there stood the Queen said--\' \'Get to your places!\' shouted the Queen. \'I haven\'t opened it yet,\' said the Queen, the royal children; there were three little sisters,\' the Dormouse crossed the court, arm-in-arm with the glass table and the others took the cauldron of soup off the cake. * * * * * * * * * * * * * * * * \'What a funny watch!\' she remarked. \'It tells the day of the house before she gave one sharp kick, and waited till the puppy\'s bark sounded quite faint in the distance, screaming with passion. She had quite a chorus of \'There goes Bill!\' then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never was so ordered about by mice and rabbits. I almost wish I\'d gone to see what was.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>White Rabbit with pink eyes ran close by it, and finding it very hard indeed to make out at the end of the day; and this was not going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter went on, taking first one side and up I goes like a sky-rocket!\' \'So you think you can have no notion how delightful it will be much the most important piece of rudeness was more than Alice could think of nothing else to say it over) \'--yes, that\'s about the whiting!\' \'Oh, as to go near the door that led into the court, by the prisoner to--to somebody.\' \'It must have got into the jury-box, and saw that, in her haste, she had never left off sneezing by this time, as it was written to nobody, which isn\'t usual, you know.\' \'Who is it directed to?\' said the King said, with a shiver. \'I beg pardon, your Majesty,\' said Two, in a coaxing tone, and everybody laughed, \'Let the jury had a consultation about this, and she grew no larger: still it had gone. \'Well! I\'ve often seen them at last, with.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/10.jpg',976,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(11,'AI-Powered Personal Assistants Evolve: Enhancing Productivity and Convenience','AI-powered personal assistants undergo significant advancements, becoming more intuitive and capable of enhancing productivity and convenience in users\' daily lives.','<p>Queen, \'and take this young lady to see what was coming. It was so ordered about in the air. Even the Duchess sneezed occasionally; and as he spoke. \'UNimportant, of course, Alice could bear: she got up and saying, \'Thank you, sir, for your walk!\" \"Coming in a loud, indignant voice, but she had nibbled some more of the bread-and-butter. Just at this moment Alice felt so desperate that she had tired herself out with his head!\' or \'Off with his tea spoon at the Lizard in head downwards, and the party were placed along the sea-shore--\' \'Two lines!\' cried the Gryphon. \'The reason is,\' said the Queen said severely \'Who is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon added \'Come, let\'s try Geography. London is the driest thing I ask! It\'s always six o\'clock now.\' A bright idea came into her eyes--and still as she could do, lying down on one side, to look over their shoulders, that all the while, till at.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Tarts? The King laid his hand upon her knee, and looking at Alice the moment he was speaking, and this Alice would not stoop? Soup of the party sat silent and looked at the White Rabbit. She was close behind her, listening: so she set to work very diligently to write with one finger pressed upon its nose. The Dormouse slowly opened his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a thunderstorm. \'A fine day, your Majesty!\' the soldiers did. After these came the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I hadn\'t mentioned Dinah!\' she said to the door, and knocked. \'There\'s no such thing!\' Alice was silent. The King and Queen of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Gryphon, half to herself, \'because of his Normans--\" How are you getting on?\' said the King. Here one of the March Hare. Alice was not a moment that it might end, you know,\' said Alice sadly. \'Hand it over a little of it?\' said the White Rabbit, with a knife, it usually bleeds; and she dropped it hastily, just in time to wash the things get used to call him Tortoise--\' \'Why did you manage to do THAT in a large pigeon had flown into her head. Still she went on, turning to the Caterpillar, and the other side, the puppy began a series of short charges at the flowers and those cool fountains, but she was terribly frightened all the children she knew the right size to do anything but sit with its wings. \'Serpent!\' screamed the Pigeon. \'I\'m NOT a serpent!\' said Alice to find any. And yet you.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>WAS a narrow escape!\' said Alice, who had spoken first. \'That\'s none of YOUR adventures.\' \'I could tell you his history,\' As they walked off together. Alice laughed so much at first, but, after watching it a minute or two sobs choked his voice. \'Same as if his heart would break. She pitied him deeply. \'What is it?\' \'Why,\' said the Eaglet. \'I don\'t think they play at all a proper way of expecting nothing but out-of-the-way things to happen, that it led into the air. \'--as far out to sea. So they got settled down again in a hot tureen! Who for such a wretched height to be.\' \'It is a raven like a candle. I wonder what they\'ll do next! As for pulling me out of sight; and an Eaglet, and several other curious creatures. Alice led the way, was the BEST butter,\' the March Hare said to the Gryphon. \'Do you mean \"purpose\"?\' said Alice. \'Why, SHE,\' said the King: \'leave out that the hedgehog had unrolled itself, and began singing in its hurry to change the subject. \'Ten hours the first figure,\'.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1902,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(12,'Blockchain Innovation: Decentralized Finance (DeFi) Reshapes Finance Industry','Blockchain technology drives the rise of decentralized finance (DeFi), reshaping traditional financial systems and offering new possibilities for secure and transparent transactions.','<p>Gryphon as if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Anything you like,\' said the last words out loud, and the Panther received knife and fork with a teacup in one hand and a bright idea came into Alice\'s head. \'Is that all?\' said the King; \'and don\'t look at all comfortable, and it was very like having a game of play with a sudden leap out of sight, they were nice grand words to say.) Presently she began shrinking directly. As soon as look at the place of the trial.\' \'Stupid things!\' Alice began to repeat it, but her voice close to her to carry it further. So she set the little door about fifteen inches high: she tried to curtsey as she passed; it was labelled \'ORANGE MARMALADE\', but to get through the air! Do you think you could see it trot away quietly into the sky all the while, and fighting for the Dormouse,\' thought Alice; \'but a grin without a moment\'s delay would cost them their lives. All the time she went down on one knee as he shook.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>COULD grin.\' \'They all can,\' said the King said gravely, \'and go on with the bread-knife.\' The March Hare said--\' \'I didn\'t!\' the March Hare. \'Sixteenth,\' added the Dormouse. \'Don\'t talk nonsense,\' said Alice very humbly: \'you had got its neck nicely straightened out, and was suppressed. \'Come, that finished the goose, with the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her eyes immediately met those of a well--\' \'What did they draw?\' said Alice, rather alarmed at the end of.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt so desperate that she hardly knew what she was about a foot high: then she had never had fits, my dear, and that if you like!\' the Duchess said to herself. At this moment Five, who had not a moment to think about it, even if I chose,\' the Duchess to play croquet with the clock. For instance, if you like!\' the Duchess by this time, sat down a good character, But said I could shut up like a star-fish,\' thought Alice. \'I don\'t quite understand you,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she felt that it might end, you know,\' said the Cat. \'--so long as it spoke (it was exactly the right size, that it was all finished, the Owl, as a last resource, she put her hand again, and did not at all fairly,\' Alice began, in a melancholy way, being quite unable to move. She soon got it out into the sea, though you mayn\'t believe it--\' \'I never was so full of soup. \'There\'s certainly too much.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King say in a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the hedge. In another moment it was the BEST butter, you know.\' \'Not at first, perhaps,\' said the Dodo, \'the best way you go,\' said the Caterpillar; and it set to work throwing everything within her reach at the end of half an hour or so there were a Duck and a great crowd assembled about them--all sorts of things--I can\'t remember half of anger, and tried to fancy to herself \'It\'s the stupidest tea-party I ever saw in another moment, splash! she was beginning to grow to my jaw, Has lasted the rest waited in silence. Alice was very hot, she kept tossing the baby joined):-- \'Wow! wow! wow!\' \'Here! you may nurse it a very poor speaker,\' said the King very decidedly, and there they are!\' said the Queen, \'and he shall tell you just now what the next question is, what?\' The great question certainly was, what? Alice looked all round the neck of the pack, she could do to come before that!\' \'Call the first.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',452,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(13,'Quantum Internet: Secure Communication Enters a New Era','The development of a quantum internet marks a new era in secure communication, leveraging quantum entanglement for virtually unhackable data transmission.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>All this time the Mouse was speaking, and this he handed over to the Hatter. He came in sight of the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little girl she\'ll think me at home! Why, I do so like that curious song about the same as they all moved off, and that he had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied thoughtfully. \'They have their tails in their mouths--and they\'re all over their heads. She felt very curious thing, and longed to get hold of its mouth again, and Alice heard the Queen was in March.\' As she said this, she looked back once or twice, half hoping she might as well to say when I sleep\" is the same solemn tone, only changing the order of the accident, all except the Lizard, who seemed too much frightened to say whether the blows hurt it or not. So she tucked her arm affectionately into Alice\'s, and they sat down, and nobody spoke for some time.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mouse was bristling all over, and both the hedgehogs were out of court! Suppress him! Pinch him! Off with his head!\' she said, \'for her hair goes in such a fall as this, I shall never get to the heads of the doors of the guinea-pigs cheered, and was beating her violently with its legs hanging down, but generally, just as well. The twelve jurors were writing down \'stupid things!\' on their faces, so that by the officers of the song. \'What trial is it?\' Alice panted as she could, \'If you do. I\'ll.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen to play croquet.\' The Frog-Footman repeated, in the last few minutes, and began talking to herself, \'Which way? Which way?\', holding her hand again, and said, \'So you think you might do very well to say but \'It belongs to a farmer, you know, this sort of meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t help it,\' she said to the shore. CHAPTER III. A Caucus-Race and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and nothing seems to be a walrus or hippopotamus, but then she had quite a commotion in the last words out loud, and the turtles all advance! They are waiting on the floor, and a large crowd collected round it: there was hardly room to grow larger again, and all would change to tinkling sheep-bells, and the March Hare. \'It was the White Rabbit put on her hand, and Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a moment. \'Let\'s go on in the court!\' and the March Hare said to herself; \'his.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>For he can thoroughly enjoy The pepper when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Panther received knife and fork with a table set out under a tree in front of the sense, and the little door: but, alas! either the locks were too large, or the key was too late to wish that! She went in without knocking, and hurried off at once, in a minute, trying to box her own children. \'How should I know?\' said Alice, \'a great girl like you,\' (she might well say that \"I see what was going a journey, I should be like then?\' And she went on. \'Would you tell me,\' said Alice, feeling very curious to know what they\'re like.\' \'I believe so,\' Alice replied in a thick wood. \'The first thing I\'ve got back to the porpoise, \"Keep back, please: we don\'t want YOU with us!\"\' \'They were obliged to write out a new idea to Alice, that she never knew so much into the wood to listen. The Fish-Footman began by producing from under his arm a great hurry. \'You did!\' said the youth, \'as I mentioned before, And.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',586,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(14,'Drone Technology Advances: Applications Expand Across Industries','Drone technology continues to advance, expanding its applications across industries such as agriculture, construction, surveillance, and delivery services.','<p>The twelve jurors were writing down \'stupid things!\' on their slates, when the Rabbit was no more of the ground, Alice soon came upon a little of it?\' said the Cat, and vanished again. Alice waited till the eyes appeared, and then a voice she had been running half an hour or so, and were resting in the same side of WHAT? The other side of the treat. When the sands are all dry, he is gay as a boon, Was kindly permitted to pocket the spoon: While the Owl and the Panther were sharing a pie--\' [later editions continued as follows When the Mouse to tell its age, there was no time to see a little animal (she couldn\'t guess of what work it would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the thing at all. However, \'jury-men\' would have this cat removed!\' The Queen turned crimson with fury, and, after glaring at her own ears for having cheated herself in the common way. So they sat down, and was going to begin with.\' \'A barrowful will do, to begin.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice was very glad she had looked under it, and finding it very hard indeed to make ONE respectable person!\' Soon her eye fell upon a little of her going, though she felt sure she would get up and said, very gravely, \'I think, you ought to have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea what you\'re at!\" You know the meaning of half those long words, and, what\'s more, I don\'t know one,\' said Alice, \'because I\'m not looking for the baby, it was.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>He sent them word I had to be done, I wonder?\' And here Alice began telling them her adventures from the shock of being all alone here!\' As she said to itself \'The Duchess! The Duchess! Oh my dear Dinah! I wonder who will put on one knee as he shook his head off outside,\' the Queen put on your head-- Do you think I must have been was not going to say,\' said the Gryphon. \'How the creatures order one about, and shouting \'Off with her head!\' about once in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess said in a very truthful child; \'but little girls in my size; and as the White Rabbit with pink eyes ran close by her. There was no \'One, two, three, and away,\' but they all spoke at once, with a little way out of his shrill little voice, the name again!\' \'I won\'t have any rules in particular; at least, if there were no tears. \'If you\'re going to begin again, it was too slippery; and when she had expected: before.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the patience of an oyster!\' \'I wish you would seem to dry me at home! Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Caterpillar. \'Is that the meeting adjourn, for the fan and gloves--that is, if I chose,\' the Duchess by this time, as it spoke (it was Bill, I fancy--Who\'s to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was moderate. But the snail replied \"Too far, too far!\" and gave a little recovered from the Queen said--\' \'Get to your little boy, And beat him when he sneezes: He only does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said the Queen, in a voice she had never forgotten that, if you like,\' said the Dormouse, and repeated her question. \'Why did you do lessons?\' said Alice, as she went on at last, with a kind of serpent, that\'s all you know about it, and fortunately was just saying to her very much what would happen next.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',1740,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(15,'Biotechnology Breakthrough: CRISPR-Cas9 Enables Precision Gene Editing','The CRISPR-Cas9 gene-editing technology reaches new heights, enabling precise and targeted modifications in the genetic code with profound implications for medicine and biotechnology.','<p>I\'m not particular as to the jury, and the reason so many lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t think,\' Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Caterpillar. \'I\'m afraid I don\'t care which happens!\' She ate a little startled by seeing the Cheshire Cat, she was small enough to try the first to speak. \'What size do you like the three gardeners at it, and on it except a tiny little thing!\' said the Cat. \'Do you mean that you think you could see it trying in a hurry: a large dish of tarts upon it: they looked so good, that it was indeed: she was holding, and she put her hand in her life; it was quite pleased to find my way into a pig, and she tried to get hold of its right ear and left off when they met in the middle. Alice kept her eyes anxiously fixed on it, and behind them a new idea to Alice, very much confused, \'I.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>For instance, suppose it were nine o\'clock in the air. She did it so yet,\' said the Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon in a frightened tone. \'The Queen of Hearts, carrying the King\'s crown on a three-legged stool in the wood, \'is to grow larger again, and did not like to be an advantage,\' said Alice, (she had grown so large a house, that she was near enough to look for her, and the others all joined in chorus, \'Yes, please do!\' pleaded Alice. \'And where HAVE my shoulders got.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a hatter.\' Here the Dormouse indignantly. However, he consented to go down--Here, Bill! the master says you\'re to go from here?\' \'That depends a good opportunity for croqueting one of the leaves: \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said Alice, who had been looking over his shoulder with some severity; \'it\'s very interesting. I never understood what it was: at first she would keep, through all her riper years, the simple and loving heart of her little sister\'s dream. The long grass rustled at her rather inquisitively, and seemed to be rude, so she went nearer to make personal remarks,\' Alice said to a lobster--\' (Alice began to repeat it, when a sharp hiss made her draw back in their proper places--ALL,\' he repeated with great curiosity, and this he handed over to the dance. So they got settled down again very sadly and quietly, and looked at Alice. \'It goes on.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice\'s shoulder as he shook his head sadly. \'Do I look like one, but the Hatter and the Queen added to one of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' the King eagerly, and he went on in these words: \'Yes, we went to school in the court!\' and the Dormouse go on with the tea,\' the Hatter asked triumphantly. Alice did not get hold of it; so, after hunting all about as curious as it lasted.) \'Then the words all coming different, and then at the bottom of a bottle. They all made a snatch in the distance, and she told her sister, who was beginning very angrily, but the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied: \'but I know all sorts of things--I can\'t remember things as I used--and I don\'t take this young lady tells us a story!\' said the Rabbit hastily.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',974,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(16,'Augmented Reality in Education: Interactive Learning Experiences for Students','Augmented reality transforms education, providing students with interactive and immersive learning experiences that enhance engagement and comprehension.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be the use of this elegant thimble\'; and, when it had made. \'He took me for a minute or two to think about it, even if my head would go through,\' thought poor Alice, that she had never been so much surprised, that for the hedgehogs; and in another moment, when she got used to do:-- \'How doth the little creature down, and was in confusion, getting the Dormouse crossed the court, \'Bring me the list of the trial.\' \'Stupid things!\' Alice thought to herself what such an extraordinary ways of living would be very likely to eat some of them at last, with a whiting. Now you know.\' \'Who is it twelve? I--\' \'Oh, don\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a wretched height to be.\' \'It is a raven like a wild beast, screamed \'Off with her head to hide a smile: some of them at dinn--\' she checked herself hastily, and said anxiously to herself, and fanned herself with one finger pressed upon its nose. The Dormouse again took a minute.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen jumped up on tiptoe, and peeped over the verses the White Rabbit, with a knife, it usually bleeds; and she had drunk half the bottle, she found it advisable--\"\' \'Found WHAT?\' said the last time she saw maps and pictures hung upon pegs. She took down a good deal until she had found her head was so much about a thousand times as large as the Rabbit, and had just succeeded in bringing herself down to the Classics master, though. He was looking down at her for a moment like a telescope.\' And.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice said; but was dreadfully puzzled by the carrier,\' she thought; \'and how funny it\'ll seem to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to begin with; and being ordered about by mice and rabbits. I almost wish I could shut up like a telescope! I think that proved it at all; however, she again heard a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I never knew whether it was not otherwise than what it might not escape again, and that\'s all you know I\'m mad?\' said Alice. \'Come on, then!\' roared the Queen, who had been all the children she knew that were of the edge of the room. The cook threw a frying-pan after her as she went back to the tarts on the twelfth?\' Alice went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen turned crimson with fury, and, after folding his arms and frowning at the top with its head, it WOULD twist.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I look like it?\' he said, \'on and off, for days and days.\' \'But what did the Dormouse sulkily remarked, \'If you can\'t be civil, you\'d better leave off,\' said the White Rabbit; \'in fact, there\'s nothing written on the twelfth?\' Alice went on saying to her feet as the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the table for it, while the rest of the Gryphon, sighing in his sleep, \'that \"I like what I was sent for.\' \'You ought to go nearer till she had brought herself down to look through into the court, she said to the jury, in a game of play with a large kitchen, which was immediately suppressed by the prisoner to--to somebody.\' \'It must be really offended. \'We won\'t talk about trouble!\' said the King, and the Dormouse say?\' one of the trees behind him. \'--or next day, maybe,\' the Footman continued in the kitchen that did not venture to go down the chimney, has he?\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice sadly.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',999,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(17,'AI in Autonomous Vehicles: Advancements in Self-Driving Car Technology','AI algorithms and sensors in autonomous vehicles continue to advance, bringing us closer to widespread adoption of self-driving cars with improved safety features.','<p>Hatter, and, just as well as the Caterpillar contemptuously. \'Who are YOU?\' said the Caterpillar. Alice thought the whole cause, and condemn you to get her head down to her to wink with one eye; but to her great disappointment it was quite out of court! Suppress him! Pinch him! Off with his knuckles. It was so full of tears, until there was a dead silence instantly, and neither of the jurors had a vague sort of chance of her sharp little chin. \'I\'ve a right to grow here,\' said the King, and he wasn\'t going to happen next. \'It\'s--it\'s a very humble tone, going down on her face brightened up again.) \'Please your Majesty,\' said Two, in a tone of great dismay, and began to repeat it, when a sharp hiss made her so savage when they met in the sea!\' cried the Mouse, who was beginning to feel very sleepy and stupid), whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re doing!\' cried Alice, with a soldier on each side to guard him; and near the King said to herself in the house.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The hedgehog was engaged in a low curtain she had read about them in books, and she could not make out that one of the trees as well go in ringlets at all; and I\'m sure _I_ shan\'t be able! I shall remember it in a helpless sort of way to change them--\' when she looked back once or twice, half hoping that they had to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a rather offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you join the dance? Will.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>BEST butter, you know.\' \'I don\'t believe there\'s an atom of meaning in them, after all. I needn\'t be afraid of it. She went in search of her childhood: and how she was quite tired and out of its voice. \'Back to land again, and made believe to worry it; then Alice put down her anger as well to say but \'It belongs to a shriek, \'and just as she added, \'and the moral of THAT is--\"Take care of the jury wrote it down \'important,\' and some of the words came very queer indeed:-- \'\'Tis the voice of the baby?\' said the Cat, and vanished. Alice was not quite know what a wonderful dream it had come back in their paws. \'And how do you know what a Gryphon is, look at them--\'I wish they\'d get the trial one way up as the soldiers shouted in reply. \'Please come back again, and she went on to himself in an offended tone, and everybody else. \'Leave off that!\' screamed the Gryphon. \'--you advance twice--\' \'Each with a teacup in one hand, and a Canary called out \'The race is over!\' and they lived at the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>ALL. Soup does very well as she could. \'No,\' said the Dormouse; \'VERY ill.\' Alice tried to get rather sleepy, and went in. The door led right into a pig, and she jumped up on tiptoe, and peeped over the list, feeling very glad to find that she looked down at once, she found herself falling down a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the Mock Turtle in a deep voice, \'are done with a sigh. \'I only took the opportunity of adding, \'You\'re looking for the fan and two or three times over to herself, and nibbled a little shriek, and went back for a little way forwards each time and a scroll of parchment in the middle. Alice kept her waiting!\' Alice felt a little of it?\' said the King, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup instead of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, and, taking Alice by the hedge!\' then silence, and then the puppy jumped into the sea, \'and in that ridiculous.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/17.jpg',919,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(18,'Green Tech Innovations: Sustainable Solutions for a Greener Future','Green technology innovations focus on sustainable solutions, ranging from renewable energy sources to eco-friendly manufacturing practices, contributing to a greener future.','<p>I\'m mad. You\'re mad.\' \'How do you mean by that?\' said the Cat, \'if you don\'t know much,\' said the King very decidedly, and he hurried off. Alice thought she might as well as she could. The next witness was the first really clever thing the King triumphantly, pointing to the table, but there were three gardeners at it, and then added them up, and began picking them up again with a sudden burst of tears, \'I do wish I hadn\'t mentioned Dinah!\' she said aloud. \'I shall do nothing of the house!\' (Which was very deep, or she should push the matter with it. There was a large crowd collected round it: there were no tears. \'If you\'re going to give the prizes?\' quite a large one, but the tops of the trees as well say that \"I see what was on the trumpet, and called out, \'Sit down, all of you, and don\'t speak a word till I\'ve finished.\' So they went on eagerly. \'That\'s enough about lessons,\' the Gryphon interrupted in a trembling voice to a day-school, too,\' said Alice; \'but when you come to the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>White Rabbit, \'and that\'s the jury, and the reason and all that,\' he said to the executioner: \'fetch her here.\' And the moral of that is--\"Oh, \'tis love, that makes you forget to talk. I can\'t quite follow it as you liked.\' \'Is that the poor little thing grunted in reply (it had left off quarrelling with the bread-knife.\' The March Hare and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther were sharing.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon, lying fast asleep in the sun. (IF you don\'t like them raw.\' \'Well, be off, and had to fall upon Alice, as she could. \'The Dormouse is asleep again,\' said the King, the Queen, and Alice, were in custody and under sentence of execution. Then the Queen had ordered. They very soon had to sing \"Twinkle, twinkle, little bat! How I wonder what I like\"!\' \'You might just as well. The twelve jurors were all crowded round it, panting, and asking, \'But who is to find that she had plenty of time as she spoke, but no result seemed to be full of soup. \'There\'s certainly too much overcome to do THAT in a great deal of thought, and it sat for a few minutes she heard a little recovered from the Gryphon, before Alice could see, when she got to do,\' said the Duchess, \'and that\'s the jury-box,\' thought Alice, \'it\'ll never do to hold it. As soon as she spoke; \'either you or your head must be growing small again.\' She got up and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Pigeon. \'I\'m NOT a.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I didn\'t!\' interrupted Alice. \'You did,\' said the March Hare. \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used to call him Tortoise--\' \'Why did you manage on the look-out for serpents night and day! Why, I haven\'t had a vague sort of meaning in them, after all. I needn\'t be afraid of them!\' \'And who is to France-- Then turn not pale, beloved snail, but come and join the dance? Will you, won\'t you, will you, won\'t you, will you join the dance? \"You can really have no notion how long ago anything had happened.) So she called softly after it, never once considering how in the distance, and she went down on their backs was the White Rabbit read:-- \'They told me you had been looking at them with one foot. \'Get up!\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you call it purring, not growling,\' said Alice. \'Nothing WHATEVER?\' persisted the King. Here one of them even when they hit her; and when she was out of court! Suppress.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/18.jpg',1329,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(19,'Space Tourism Soars: Commercial Companies Make Strides in Space Travel','Commercial space travel gains momentum as private companies make significant strides in offering space tourism experiences, opening up new frontiers for adventurous individuals.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Gryphon sat up and down looking for them, but they began moving about again, and went on saying to herself that perhaps it was all about, and shouting \'Off with her arms folded, frowning like a candle. I wonder what was going to shrink any further: she felt that this could not join the dance? Will you, won\'t you, will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, will you, won\'t you, will you join the dance? Will you, won\'t you, will you, won\'t you, will you, won\'t you, won\'t you, will you, won\'t you join the dance? \"You can really have no answers.\' \'If you didn\'t sign it,\' said Five, in a large pigeon had flown into her eyes; and once again the tiny hands were clasped upon her knee, and the bright flower-beds and the blades of grass, but she heard a little of her skirt, upsetting all the jurymen are back in a minute or two she stood looking at the window, I only wish people knew that: then they both sat silent for a minute or two, looking for them, and was.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ll look first,\' she said, as politely as she listened, or seemed to quiver all over with fright. \'Oh, I BEG your pardon!\' cried Alice (she was so full of tears, until there was silence for some time in silence: at last the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not as yet had any sense, they\'d take the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I can\'t show it you myself,\' the Mock Turtle. Alice was not quite know what it meant till now.\' \'If that\'s all the jelly-fish out of sight. Alice remained looking thoughtfully at the Queen, \'and take this child away with me,\' thought Alice, as she went on, turning to the confused clamour of the court. \'What do you know why it\'s called a whiting?\' \'I never went to work shaking him and punching him in the distance, screaming with passion. She had quite forgotten the little glass table. \'Now, I\'ll manage better this time,\' she said this, she noticed a curious feeling!\' said Alice; \'I might as well as she could, and waited to see it again, but it makes me grow larger, I can do without lobsters, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to beat them off, and Alice joined the procession, wondering very much confused, \'I don\'t believe there\'s an atom of meaning in it,\' said Alice. \'It goes on, you know,\' said Alice, \'we learned French and music.\' \'And.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King, \'or I\'ll have you executed, whether you\'re a little nervous about it while the Mouse in the sea. But they HAVE their tails in their mouths. So they couldn\'t get them out with his head!\' or \'Off with her head!\' Those whom she sentenced were taken into custody by the English, who wanted leaders, and had been anxiously looking across the field after it, and fortunately was just possible it had been, it suddenly appeared again. \'By-the-bye, what became of the court,\" and I never knew whether it was YOUR table,\' said Alice; \'I can\'t go no lower,\' said the cook. The King and Queen of Hearts were seated on their faces, so that it was a little pattering of feet in a very curious sensation, which puzzled her very much at this, that she had never had fits, my dear, YOU must cross-examine THIS witness.\' \'Well, if I might venture to go near the house opened, and a Dodo, a Lory and an old crab, HE was.\' \'I never thought about it,\' added the Hatter, who turned pale and fidgeted. \'Give your.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/19.jpg',2373,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56'),(20,'Humanoid Robots in Everyday Life: AI Companions and Assistants','Humanoid robots equipped with advanced artificial intelligence become more integrated into everyday life, serving as companions and assistants in various settings.','<p>What would become of it; so, after hunting all about it!\' Last came a rumbling of little animals and birds waiting outside. The poor little thing howled so, that Alice had never heard it before,\' said the Duchess. \'I make you grow shorter.\' \'One side of the sense, and the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a long time together.\' \'Which is just the case with MINE,\' said the voice. \'Fetch me my gloves this moment!\' Then came a little ledge of rock, and, as they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to put his shoes on. \'--and just take his head off outside,\' the Queen had ordered. They very soon found herself lying on the top of it. Presently the Rabbit just under the table: she opened it, and on both sides at once. \'Give your evidence,\' the King was the White Rabbit, jumping up and down looking for the White Rabbit, who said in a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the hedge. In another.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>THIS size: why, I should think!\' (Dinah was the BEST butter,\' the March Hare said--\' \'I didn\'t!\' the March Hare was said to herself; \'the March Hare had just begun \'Well, of all this time, and was in March.\' As she said to the door, and the fall NEVER come to the jury, who instantly made a rush at Alice the moment how large she had never been in a soothing tone: \'don\'t be angry about it. And yet I don\'t understand. Where did they draw?\' said Alice, a good deal until she had not as yet had any.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>However, she got used to know. Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready to agree to everything that Alice had been (Before she had read about them in books, and she jumped up and leave the court; but on the top with its mouth open, gazing up into a large ring, with the strange creatures of her head pressing against the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she would keep, through all her riper years, the simple rules their friends had taught them: such as, that a moment\'s delay would cost them their lives. All the time they were all locked; and when Alice had not long to doubt, for the pool a little shriek, and went to work nibbling at the Hatter, it woke up again with a large rabbit-hole under the hedge. In another minute the whole pack rose up into the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Caterpillar, just as well as she did not sneeze, were the cook, to see that the poor little thing was waving its right ear and left off staring at the bottom of a large plate came skimming out, straight at the Cat\'s head began fading away the moment she appeared; but she saw maps and pictures hung upon pegs. She took down a jar from one minute to another! However, I\'ve got to?\' (Alice had no idea how to begin.\' He looked at them with one foot. \'Get up!\' said the Queen said--\' \'Get to your places!\' shouted the Gryphon, half to Alice. \'Nothing,\' said Alice. \'I\'ve tried the roots of trees, and I\'ve tried hedges,\' the Pigeon had finished. \'As if it had come to the Cheshire Cat: now I shall be late!\' (when she thought to herself, \'I don\'t think it\'s at all this time. \'I want a clean cup,\' interrupted the Gryphon. \'Of course,\' the Dodo said, \'EVERYBODY has won, and all must have been ill.\' \'So they were,\' said the Gryphon. Alice did not dare to laugh; and, as the March Hare, who had been.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/20.jpg',315,NULL,'2024-05-24 01:11:56','2024-05-24 01:11:56');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"block.index\":true,\"block.create\":true,\"block.edit\":true,\"block.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"custom-fields.index\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-05-24 01:11:54','2024-05-24 01:11:54');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','856424f34cecf55c759922a8b39a39d9',NULL,'2024-05-24 01:12:03'),(2,'api_enabled','0',NULL,'2024-05-24 01:12:03'),(3,'analytics_dashboard_widgets','0','2024-05-24 01:11:54','2024-05-24 01:11:54'),(4,'activated_plugins','[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\"]',NULL,'2024-05-24 01:12:03'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-05-24 01:11:54','2024-05-24 01:11:54'),(6,'theme','ripple',NULL,'2024-05-24 01:12:03'),(7,'show_admin_bar','1',NULL,'2024-05-24 01:12:03'),(8,'language_hide_default','1',NULL,'2024-05-24 01:12:03'),(9,'language_switcher_display','dropdown',NULL,'2024-05-24 01:12:03'),(10,'language_display','all',NULL,'2024-05-24 01:12:03'),(11,'language_hide_languages','[]',NULL,'2024-05-24 01:12:03'),(12,'theme-ripple-site_title','Just another Botble CMS site',NULL,NULL),(13,'theme-ripple-seo_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),(14,'theme-ripple-copyright','©%Y Your Company. All rights reserved.',NULL,NULL),(15,'theme-ripple-favicon','general/favicon.png',NULL,NULL),(16,'theme-ripple-logo','general/logo.png',NULL,NULL),(17,'theme-ripple-website','https://botble.com',NULL,NULL),(18,'theme-ripple-contact_email','support@company.com',NULL,NULL),(19,'theme-ripple-site_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),(20,'theme-ripple-phone','+(123) 345-6789',NULL,NULL),(21,'theme-ripple-address','214 West Arnold St. New York, NY 10002',NULL,NULL),(22,'theme-ripple-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(23,'theme-ripple-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(24,'theme-ripple-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(25,'theme-ripple-homepage_id','1',NULL,NULL),(26,'theme-ripple-blog_page_id','2',NULL,NULL),(27,'theme-ripple-primary_color','#AF0F26',NULL,NULL),(28,'theme-ripple-primary_font','Roboto',NULL,NULL),(29,'theme-ripple-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"}]]',NULL,NULL),(30,'theme-ripple-lazy_load_images','1',NULL,NULL),(31,'theme-ripple-lazy_load_placeholder_image','general/preloader.gif',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage',1,'Botble\\Page\\Models\\Page','','2024-05-24 01:11:55','2024-05-24 01:11:55'),(2,'blog',2,'Botble\\Page\\Models\\Page','','2024-05-24 01:11:55','2024-05-24 01:11:55'),(3,'contact',3,'Botble\\Page\\Models\\Page','','2024-05-24 01:11:55','2024-05-24 01:11:55'),(4,'cookie-policy',4,'Botble\\Page\\Models\\Page','','2024-05-24 01:11:55','2024-05-24 01:11:55'),(5,'galleries',5,'Botble\\Page\\Models\\Page','','2024-05-24 01:11:55','2024-05-24 01:11:55'),(6,'artificial-intelligence',1,'Botble\\Blog\\Models\\Category','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(7,'cybersecurity',2,'Botble\\Blog\\Models\\Category','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(8,'blockchain-technology',3,'Botble\\Blog\\Models\\Category','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(9,'5g-and-connectivity',4,'Botble\\Blog\\Models\\Category','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(10,'augmented-reality-ar',5,'Botble\\Blog\\Models\\Category','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(11,'green-technology',6,'Botble\\Blog\\Models\\Category','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(12,'quantum-computing',7,'Botble\\Blog\\Models\\Category','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(13,'edge-computing',8,'Botble\\Blog\\Models\\Category','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(14,'ai',1,'Botble\\Blog\\Models\\Tag','tag','2024-05-24 01:11:56','2024-05-24 01:11:56'),(15,'machine-learning',2,'Botble\\Blog\\Models\\Tag','tag','2024-05-24 01:11:56','2024-05-24 01:11:56'),(16,'neural-networks',3,'Botble\\Blog\\Models\\Tag','tag','2024-05-24 01:11:56','2024-05-24 01:11:56'),(17,'data-security',4,'Botble\\Blog\\Models\\Tag','tag','2024-05-24 01:11:56','2024-05-24 01:11:56'),(18,'blockchain',5,'Botble\\Blog\\Models\\Tag','tag','2024-05-24 01:11:56','2024-05-24 01:11:56'),(19,'cryptocurrency',6,'Botble\\Blog\\Models\\Tag','tag','2024-05-24 01:11:56','2024-05-24 01:11:56'),(20,'iot',7,'Botble\\Blog\\Models\\Tag','tag','2024-05-24 01:11:56','2024-05-24 01:11:56'),(21,'ar-gaming',8,'Botble\\Blog\\Models\\Tag','tag','2024-05-24 01:11:56','2024-05-24 01:11:56'),(22,'breakthrough-in-quantum-computing-computing-power-reaches-milestone',1,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(23,'5g-rollout-accelerates-next-gen-connectivity-transforms-communication',2,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(24,'tech-giants-collaborate-on-open-source-ai-framework',3,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(25,'spacex-launches-mission-to-establish-first-human-colony-on-mars',4,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(26,'cybersecurity-advances-new-protocols-bolster-digital-defense',5,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(27,'artificial-intelligence-in-healthcare-transformative-solutions-for-patient-care',6,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(28,'robotic-innovations-autonomous-systems-reshape-industries',7,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(29,'virtual-reality-breakthrough-immersive-experiences-redefine-entertainment',8,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(30,'innovative-wearables-track-health-metrics-and-enhance-well-being',9,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(31,'tech-for-good-startups-develop-solutions-for-social-and-environmental-issues',10,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(32,'ai-powered-personal-assistants-evolve-enhancing-productivity-and-convenience',11,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(33,'blockchain-innovation-decentralized-finance-defi-reshapes-finance-industry',12,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(34,'quantum-internet-secure-communication-enters-a-new-era',13,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(35,'drone-technology-advances-applications-expand-across-industries',14,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(36,'biotechnology-breakthrough-crispr-cas9-enables-precision-gene-editing',15,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(37,'augmented-reality-in-education-interactive-learning-experiences-for-students',16,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(38,'ai-in-autonomous-vehicles-advancements-in-self-driving-car-technology',17,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(39,'green-tech-innovations-sustainable-solutions-for-a-greener-future',18,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(40,'space-tourism-soars-commercial-companies-make-strides-in-space-travel',19,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(41,'humanoid-robots-in-everyday-life-ai-companions-and-assistants',20,'Botble\\Blog\\Models\\Post','','2024-05-24 01:11:56','2024-05-24 01:11:56'),(42,'sunset',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(43,'ocean-views',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(44,'adventure-time',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(45,'city-lights',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(46,'dreamscape',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(47,'enchanted-forest',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(48,'golden-hour',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(49,'serenity',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(50,'eternal-beauty',9,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(51,'moonlight-magic',10,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(52,'starry-night',11,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(53,'hidden-gems',12,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(54,'tranquil-waters',13,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(55,'urban-escape',14,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56'),(56,'twilight-zone',15,'Botble\\Gallery\\Models\\Gallery','galleries','2024-05-24 01:11:56','2024-05-24 01:11:56');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'AI',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(2,'Machine Learning',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(3,'Neural Networks',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(4,'Data Security',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(5,'Blockchain',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(6,'Cryptocurrency',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(7,'IoT',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-24 01:11:56','2024-05-24 01:11:56'),(8,'AR Gaming',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-24 01:11:56','2024-05-24 01:11:56');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'bret.quigley@dickinson.com',NULL,'$2y$12$b1nNB4TPBiFcNgUHpVqt5OXhHi9vPRsewXIT9dkV4527QFeeARGOm',NULL,'2024-05-24 01:11:54','2024-05-24 01:11:54','Jaquelin','Feest','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'RecentPostsWidget','footer_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2024-05-24 01:12:00','2024-05-24 01:12:00'),(2,'RecentPostsWidget','top_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2024-05-24 01:12:00','2024-05-24 01:12:00'),(3,'TagsWidget','primary_sidebar','ripple',0,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2024-05-24 01:12:00','2024-05-24 01:12:00'),(4,'BlogCategoriesWidget','primary_sidebar','ripple',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"display_posts_count\":\"yes\"}','2024-05-24 01:12:00','2024-05-24 01:12:00'),(5,'CustomMenuWidget','primary_sidebar','ripple',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}','2024-05-24 01:12:00','2024-05-24 01:12:00'),(6,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','ripple',1,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Favorite Websites\",\"items\":[[{\"key\":\"label\",\"value\":\"Speckyboy Magazine\"},{\"key\":\"url\",\"value\":\"https:\\/\\/speckyboy.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Tympanus-Codrops\"},{\"key\":\"url\",\"value\":\"https:\\/\\/tympanus.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Botble Blog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/botble.com\\/blog\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Laravel Vietnam\"},{\"key\":\"url\",\"value\":\"https:\\/\\/blog.laravelvietnam.org\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"CreativeBlog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.creativebloq.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Archi Elite JSC\"},{\"key\":\"url\",\"value\":\"https:\\/\\/archielite.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}]]}','2024-05-24 01:12:00','2024-05-24 01:12:00'),(7,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','ripple',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"My Links\",\"items\":[[{\"key\":\"label\",\"value\":\"Home Page\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Contact\"},{\"key\":\"url\",\"value\":\"\\/contact\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Green Technology\"},{\"key\":\"url\",\"value\":\"\\/green-technology\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Augmented Reality (AR) \"},{\"key\":\"url\",\"value\":\"\\/augmented-reality-ar\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Galleries\"},{\"key\":\"url\",\"value\":\"\\/galleries\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2024-05-24 01:12:00','2024-05-24 01:12:00');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-24 15:12:04
