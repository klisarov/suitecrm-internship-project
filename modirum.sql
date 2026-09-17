-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 15, 2026 at 01:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modirum`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('00b6434e-1ee7-4630-a02d-6bea685186c0', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('012de30c-c8a4-43e0-b623-02366a7a96dd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('014c65dc-d736-41f3-a6e2-33d896319b87', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('028e3a21-dc14-4052-bd61-4d76f7278696', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('0312e28c-20c5-4291-bc3e-fe93c0d62276', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('0365f6ec-675e-4c6b-a841-0f64cff876aa', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('037f6224-7775-4ae8-93ae-292e912dfc85', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('03c56a28-4215-4ea5-8885-6418a74f4284', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('044302c2-7c60-4672-9f2e-5088e8c6f008', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Meetings', 'module', 90, 0),
('0482df5c-4282-4d02-a92e-94b1c1942b4b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Bugs', 'module', 90, 0),
('055d3723-25af-4743-b2cf-8bd578a7e0ea', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Cases', 'module', 90, 0),
('073543a4-dd82-4aef-be1f-772e1a225915', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('07d4c475-3fd7-4be2-8ed6-362c6f3cc3ef', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('07ff20ef-20f9-42db-a297-a9d35fe825c5', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'EAPM', 'module', 90, 0),
('082a2188-3ebd-45ad-bcdf-c15e455ae50c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('08e2a4e5-031c-4b43-844d-e376a066a49c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('093bf0c8-e99a-4354-b40f-47e1ac1894e1', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'ExternalOAuthProvider', 'module', 90, 0),
('093ddae7-88b4-4b18-af64-f09ceadb96fd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('0a61945c-e35e-4b9f-83a1-9c3c6f6ffa18', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Accounts', 'module', 90, 0),
('0a9f0296-a05d-4523-8268-1102bc72ad1a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Meetings', 'module', 90, 0),
('0ba622ea-eb9b-4b02-8562-e59ee8e2fc9a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'SurveyQuestionOptions', 'module', 90, 0),
('0cda6ddb-d370-47b7-8b74-f8ab21555d62', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'InboundEmail', 'module', 90, 0),
('0d3f6eaa-8f68-4567-af99-9ad1b81be2dd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('0daade7d-4041-4f9b-8a48-4cc6d6d73e2a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('0f14578e-4523-4645-8447-069b555d325f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('0fc65eef-a5f3-4e46-b857-f6d2f547adc0', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Project', 'module', 90, 0),
('108737d2-46c6-4354-b23b-7c8567177c88', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('114fae4b-0a91-488b-a701-5eb7dfd52947', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Surveys', 'module', 89, 0),
('114fb185-3cf0-4c73-bd4f-eacde165e1c0', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('117e3745-5946-4c42-9560-c746139f9493', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('119b7e1b-eaf3-4914-a0ad-0f293805240b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('123f0aec-f786-4420-8fc6-7596e6033dfd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('15771690-36a2-4029-a8b6-aea00b18e466', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('1632133d-670a-4e76-9c3f-2f1ace7fcaec', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('16a33aca-f77a-4962-9c6c-043a381444d9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('16e6d286-10e8-4097-a0ab-5eb11caae796', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('16fa8530-111c-4546-860d-6db287fa1c91', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('185f039b-ecb5-43bd-b2bd-967ff2b07e0f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Alerts', 'module', 90, 0),
('193c0dbd-1c81-4969-bbc3-f0a71d9344c0', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'CalendarAccount', 'module', 90, 0),
('1a52c43a-7dd7-4c03-86a3-435fd403da2a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Documents', 'module', 90, 0),
('1a577ce4-1020-475e-99a2-80b2a335efd5', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('1a7b6584-98de-424e-b55d-bec4fc962f57', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'FP_events', 'module', 90, 0),
('1b87ab06-c439-4762-9c62-98aee4dcdd00', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('1ba3d20a-2f7f-44f3-a5dd-44aceff5aec9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Accounts', 'module', 90, 0),
('1bb4b004-e4a8-4bfe-bbd4-48e3c1c2a759', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Contacts', 'module', 89, 0),
('1bcccf7a-58cb-46e4-b6db-bc5f7a71c51d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('1ccf35a1-71a7-4c61-b140-a7cb121b325a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('1cdfd960-23ab-442d-b4e3-6f85bcfc6c57', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Emails', 'module', 89, 0),
('1d5d8f18-228b-47ef-a81e-65ccdd0a6f64', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Leads', 'module', 90, 0),
('1eaebb3c-e277-497c-984a-1afbb0cbbc1a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('1ecb0aa4-4484-47e5-b6bf-a305096faac5', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'SurveyQuestionOptions', 'module', 90, 0),
('1edc32e6-d0c7-4277-b12a-180f7a67c0c1', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('1ef207e8-50ec-46a3-bbd9-8aee43e53d8a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('1f82fa95-1081-4d66-a544-57beeacc13bf', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('1ffb9a15-cb22-4036-9a23-f6d1da34714e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('204b4ba5-9175-4713-aa07-8a2dd333d0f4', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('20b503c3-cd40-4aa3-b7ca-d3757cc5db28', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Users', 'module', 90, 0),
('2106bbec-812d-466d-ba27-65bd6dd7a1b5', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('21d4ef0d-c8e2-44b5-9fcc-08ef5c255326', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('21d73382-f191-4f02-aee6-dcb48ec1a405', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('22a32ce9-697a-4958-aa32-95ca3dd38f13', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('22c3dff6-136d-44c8-9693-9d619ab058f5', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('22c6ce5b-3f27-4c40-ad5b-b85a88e1db64', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'InboundEmail', 'module', 90, 0),
('22ffbd59-8a5d-454a-93fe-36a418b182cb', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'SurveyResponses', 'module', 90, 0),
('230073cb-f38e-4bae-be9e-b6909db70ab2', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('230a780e-1dbc-4a21-8748-892eab545d42', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'SurveyQuestionOptions', 'module', 89, 0),
('2410ac4f-d7d4-4111-abc4-4d0d36963115', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('2597a732-dc48-430f-895f-0e31f059035c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('25e14899-6d01-4a81-ad40-66885f19987a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('27a98a23-9bbd-4b05-8292-bc063275c58b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('27fb4981-ea8d-409a-addc-d7e2f821e114', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Calls', 'module', 89, 0),
('2971f1fc-99e9-4e12-8370-f3f618405ca4', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('29e8df7a-72bc-4318-a4e4-973c65fd6763', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Surveys', 'module', 90, 0),
('2a560642-152a-4034-879e-f2caf5ebe9a1', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('2ade00ac-613f-41d1-9d3c-aee33a43e58e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('2bc35b63-2a81-49d1-aac8-041cced64248', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'CalendarAccount', 'module', 90, 0),
('2be33dfd-ed5e-4a63-b2be-685a58f611fa', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('2c3a1a30-1998-4f79-a972-6dd30eaae3ef', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('2c939f17-d6fd-4f99-860a-8e7ebd3d76a0', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('2cbd236f-8ffa-45ef-984b-c13c774d4f82', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'ExternalOAuthConnection', 'module', 90, 0),
('2ccb67db-bda4-471d-9882-82afb1cf534a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('2d23fde0-bcfd-4488-8c83-4ec34222a9ba', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('2d7f0d2b-e83a-4fc5-910a-10a5ec515d43', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('2f015802-5d84-4fc3-b243-d7b4b3a1928a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('2fe4290c-002e-4756-8f2c-3040450b4daa', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('2ffb8518-9485-4293-8315-ca63a3edfb58', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('31990e08-1acf-47a5-aa9d-6613b138c7f2', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'SurveyQuestions', 'module', 90, 0),
('3231c607-48ef-4678-bb20-ca4c31977551', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('33b37ecd-5bfa-4ddf-883b-88fff3f5acb4', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Contacts', 'module', 90, 0),
('344fcdfb-124c-4b2a-baa2-5ffc2486b0f9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('34767616-ab65-48f7-a8f4-338bf44418d8', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('355d5dcf-2a60-46bb-be93-325b2c98c44e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Alerts', 'module', 90, 0),
('35aa632a-90db-44fd-813b-dd925862c27b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Leads', 'module', 90, 0),
('35b0ff7f-c1c8-44a3-86ba-90e4d8f12492', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('361b3657-efc1-491e-a17b-2bb3d9759afe', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('375e0b5a-5a8e-4285-8ee3-92e9bc3cb70d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('37b42694-6c58-4796-839e-e51a6fd78d70', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('382f6d3b-86aa-4153-84de-07b04f342af9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'ExternalOAuthConnection', 'module', 90, 0),
('3842da1d-e6c3-4a00-9d22-4c05ea4c4d1e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('393d6e2d-ea1b-4bc3-9683-1775f33bd14c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('39a07fa3-73de-49c1-baa2-518b8d95de05', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('39ae7ad8-2fbe-4371-94d9-fd5e4748d355', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('39e2c72b-6b89-4664-a94e-11ef6acd3aaf', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('3a8f1bff-7d71-4d5b-817f-edc89fefe00a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('3b0b0d7a-131b-4d54-adf7-10b673b8d35c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Notes', 'module', 90, 0),
('3b3e9508-8003-40ef-94b1-94ac84382d93', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('3bd2da9f-27f1-40ae-a95a-bbcf360c49fd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Cases', 'module', 89, 0),
('3c564732-abb1-40d8-b443-b32f94211fc5', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Calls', 'module', 90, 0),
('3cb85c13-ca5c-4320-8eae-a29d779d0a68', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'SurveyQuestions', 'module', 90, 0),
('3d286890-7bb8-4f5f-a5bd-e46563b8fce2', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Leads', 'module', 90, 0),
('3e84f6b0-5cb7-4c4c-83a7-c6c8e76e14ac', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('3fa51ea0-2457-4101-bf02-d7047230a734', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('3fb95f99-48b5-42d9-8d55-a38dfbc616e3', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('3fe2bd2d-d749-4707-b02c-b9ffc552a5fa', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('4044e1c5-b713-446b-af88-2dc4dec6707e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('411a7093-95b8-49e8-9e30-d4476250ba9a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Documents', 'module', 90, 0),
('415a574d-68e5-456c-bb16-10f5a09efa93', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'SurveyQuestions', 'module', 90, 0),
('4180eacc-abed-44a8-9873-fbd4c4e01cd0', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('41933584-866c-4f9f-bc77-d4aa8663ac49', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('4296d41b-6d69-4d68-adad-7bdba3db4094', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('42eedaa2-8269-4415-b1b4-c1166a5b052b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('43df6160-db4a-4b4d-9ca5-34b62ced6cec', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('43fff420-fb10-46b6-aa07-4228ac1c552b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('441d167a-7fe3-4ab8-8853-4a82e24f281c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('44b099cb-adce-49be-a952-2db1077ece09', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('44b0ca2e-13b3-4e1d-b87c-7153799a2c93', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'SurveyQuestions', 'module', 89, 0),
('451fe568-5b44-4fef-9446-f9c758b0d23c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('45f3ca90-073e-47cb-86ae-d6951d489de6', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'ExternalOAuthConnection', 'module', 90, 0),
('46bed63f-3c24-4804-b894-406c48183445', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('46fa645c-0515-4dd8-8829-6960edd2302e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Notes', 'module', 89, 0),
('46fff897-dc27-467e-bfef-47c4e9d10a9d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'ExternalOAuthProvider', 'module', 89, 0),
('4728dcc3-9932-42da-a682-707de43ab422', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'SurveyQuestionOptions', 'module', 90, 0),
('4787f206-0d57-4dfa-ace5-47910785b89f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'SurveyQuestions', 'module', 90, 0),
('4a231074-841e-4bf1-96e5-f2ba0de5593e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'SurveyQuestions', 'module', 90, 0),
('4ac5869b-ac2a-468b-a7c7-c84d924ae010', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('4bd23147-6aef-4414-b04f-3fe4afe361ac', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('4c57e620-4e66-4bef-a37f-025fe3069452', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('4d264c6b-0929-43bb-8f4f-c039a39776f6', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('4d53d4e9-d571-46a7-8056-a23f853c066a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('4db00201-0fe1-4f88-9ab9-b4ab4f68b643', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'ExternalOAuthProvider', 'module', 90, 0),
('4deb019a-88fc-44f7-aad2-109e3c139fdd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('4dfb90e3-5f62-431f-a085-a6d6229ddb12', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Prospects', 'module', 90, 0),
('4e6df5ee-e848-44a7-98f1-1c1dce38efb9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('4e8dd8f3-4064-46f4-b7fa-b956b88d2737', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('4ea9ae90-d7ec-4bc6-95ac-cc972f1fdd64', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('4f762b1f-4d7b-4321-9aac-9e2e2a78dc7b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Emails', 'module', 90, 0),
('5150ffbc-196c-473d-9270-948971bdeda9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Project', 'module', 90, 0),
('5180b3ff-fdb0-4eef-9a10-281f001a8c39', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Contacts', 'module', 90, 0),
('51bbc3d9-3755-44d7-a0f5-00add3580844', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Calls', 'module', 90, 0),
('53c4ce18-4b3e-406d-bf52-14ea80350266', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Bugs', 'module', 89, 0),
('55368b24-f728-4eb1-b2b5-a2fac603cd43', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('559b13cc-e990-423f-8d6f-b70a6ac09ea1', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'CalendarAccount', 'module', 90, 0),
('560bbdf7-8fa8-4f9c-9800-ebfcea2b910c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'ExternalOAuthConnection', 'module', 90, 0),
('5694694c-2056-46a3-b0de-7431f2c198cf', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Users', 'module', 89, 0),
('56caa174-8bb1-42f8-a4bc-f3f5ff4bada1', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('56cd8129-0b5f-4109-b724-0821ab0f8b81', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('56cfebb0-7625-4871-bd02-53fff71c373d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('571029d0-4e91-4695-b819-c0599c1d783d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'SurveyQuestions', 'module', 90, 0),
('581b3d43-8070-4f9a-9deb-512eb07fc336', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Surveys', 'module', 90, 0),
('58435833-6bcb-4a7c-a0a8-ca8ead0a64a4', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Alerts', 'module', 89, 0),
('589801e5-c8d5-4904-9215-7eb10a943af8', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('5a041823-c5c0-4cec-ad9f-b76b10ebd815', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Accounts', 'module', 90, 0),
('5b6537ce-1014-48b8-8fdc-ec4b3af111fd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('5bb48bec-61fe-490d-b54b-1667378ceb2e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('5bffaea4-d3be-45d0-945d-0db72942aa47', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Cases', 'module', 90, 0),
('5c5ca997-09b6-429c-8137-b7db83424df8', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('5c7ca6b6-22dc-447f-b861-a4349316446c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('5cc0253f-ba41-415b-b5c0-7fbb0090d034', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('5d3b780b-9321-4419-b124-c906a3b4f198', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('5e306565-3f3f-44cb-af94-07ae2a30aadf', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('5ebde80a-107b-4a0f-ae33-bf5cf6fdafab', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Tasks', 'module', 90, 0),
('5ee9317e-a293-4466-b884-1413e5a5706d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('5f090d50-a10c-4906-b7da-2d50b349ac0d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Documents', 'module', 90, 0),
('5f919426-d26a-4839-999b-ecb7cd7a52c7', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('5f9c9a01-4bcf-407f-b078-b55c2fa3f6b7', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Spots', 'module', 90, 0),
('5fe8f3ee-e239-4900-a745-1c7564c8389a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('60ceaca0-e5c3-400c-8210-b159ef567c09', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('60ed7ab0-043c-48a5-b134-6b732a523125', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'SurveyResponses', 'module', 90, 0),
('6106b09f-2bfc-4ba3-99eb-47ed15dc3b12', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'ExternalOAuthConnection', 'module', 90, 0),
('63be29f1-a7c8-49de-b3b8-965d439d49a8', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'SurveyQuestions', 'module', 90, 0),
('63d0b4ae-92bb-4903-a08c-109bde5f1f89', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('647455a8-aead-44a3-b96f-17442e941fc2', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'SurveyQuestionResponses', 'module', 90, 0),
('648a1267-72bf-48ad-8077-84d8284389e9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('648be88b-4152-4c07-a7db-3fe8cfaa35c6', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Calls', 'module', 90, 0),
('650ffdd0-e115-4d70-8252-ab75b3264a13', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Leads', 'module', 90, 0),
('656c72b6-6f63-4550-bb8d-f48e71f88ca6', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'SurveyQuestionResponses', 'module', 90, 0),
('65da7a8a-b745-4254-86af-2ba170631e63', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('65ee0058-1f6e-4b5e-855a-6884e19e9271', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('65f9851a-65d9-4e77-869b-1bbe3d0c9b08', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'EAPM', 'module', 90, 0),
('668850d9-b005-4b37-9611-eaffa6bc6abb', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('66aebe2b-5e5a-487b-a9e8-6e219194447c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Spots', 'module', 90, 0),
('66caef85-63f7-46ad-be0b-1b4281030a3a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Users', 'module', 90, 0),
('6727e244-a991-4acf-b90b-1ad452b2b36b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('6897e5b9-cfa6-4e14-a0d5-40e1f962fe90', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('6a5722fd-e5e4-468f-aba7-c39e79aa3553', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('6a61c129-a96e-4209-9d77-07b2b06683a0', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('6b14d7f7-1c77-4d9b-bb3d-f54e4be1533f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Meetings', 'module', 90, 0),
('6bace320-483d-404e-a717-1bb7a3773ca3', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'ExternalOAuthProvider', 'module', 90, 0),
('6bd7f3ad-de8a-420f-9804-54d033cffcd1', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('6bee8b98-432e-4e98-9bd4-e69c6d4e0da3', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('6df24366-082f-4ba3-a8f7-98cabb609195', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('6e448da0-0fcc-4043-8445-10383873147c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Alerts', 'module', 90, 0),
('6e7192e1-46b3-48dc-809d-dddea9f17f59', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('6ec1a148-f731-4e15-beb4-c6aee518bf0d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('6f1a935b-5f1e-49b0-9c32-4b9bc117a397', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('70b3933d-1bed-4806-b8f6-030226f8c157', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('7106e160-ac09-48d4-84fe-4525791ae80c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'SurveyQuestionOptions', 'module', 90, 0),
('719c6771-10ca-4188-9032-5e32b9a20cd0', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Emails', 'module', 90, 0),
('71cfa879-f924-464a-8260-f22f62c347bf', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('72748a82-afe6-43aa-adab-fc8f075dbdce', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'SurveyResponses', 'module', 89, 0),
('72ab0a63-1cb3-4a45-96bc-4730c80c9203', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('72f81e95-d62b-480b-8f0e-0d51470c498b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('734b2969-f297-4046-ab7d-a4f50420ef55', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Tasks', 'module', 90, 0),
('739193fe-a1b4-4917-ba95-2bca0ba12ab1', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Users', 'module', 90, 0),
('73aa9cff-b94a-428f-af16-acc0457bcf2b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'InboundEmail', 'module', 90, 0),
('73ac3295-d6ad-433c-86d3-c9a14b950742', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'SurveyQuestionResponses', 'module', 89, 0),
('74870946-8872-4d1c-81d7-175b5a47e43c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'SurveyQuestionOptions', 'module', 90, 0),
('74e51caf-53e8-4691-816b-ec71d4aeca75', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'EAPM', 'module', 90, 0),
('757ab6be-d324-4002-856e-758cf66496c7', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'SurveyQuestionResponses', 'module', 90, 0),
('763733cc-208f-4e0a-87f7-ae4b07c94bb8', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('796bc53e-c6bd-4d11-a291-1f082e23db78', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'CalendarAccount', 'module', 90, 0),
('7c391e75-2687-447d-b484-e3dfbbf626ee', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('7cda0616-a193-42ff-83f2-1adc72748bcf', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('7e021ef6-73c0-462b-965e-681641009877', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('7e0603ec-2cf6-4951-908d-97c5d2082fb3', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('7f399923-96db-4cbc-a7b2-c9b233efec46', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('7fa10e18-a67e-4b28-a939-42147b1eda20', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'SurveyQuestionResponses', 'module', 90, 0),
('7fca6e55-0218-454c-8622-de4b677df6dd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('7ffe240c-a4be-423c-bd59-78bda340a79d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'SurveyResponses', 'module', 90, 0),
('811decc3-b915-4e89-adc8-c9504406e72f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Leads', 'module', 90, 0),
('8126022c-ef86-4183-9141-afe42e56e237', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Bugs', 'module', 90, 0),
('81dfc49f-7b1b-496e-b19d-d3d5e50d7b50', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Meetings', 'module', 90, 0),
('8278fb2f-abc2-41e8-b7eb-bb55dce790d4', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('82aa7f79-fe55-43fb-9b27-c62f4739855a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'FP_events', 'module', 90, 0),
('82d52d7c-6ea8-4bd7-b6a1-325ce208803a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('8390cd88-d598-4cdf-9b7f-6f1a99ae320d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('83e3e635-c776-48ee-8f67-32a8c247f8f5', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'SurveyResponses', 'module', 90, 0),
('8532de23-e7b2-4974-9016-07966ed80672', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('858ebf3a-4a0e-40c0-9205-c16f742be27b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('86780f5c-3e9d-41a4-94e8-350fd685bb29', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('86aca98c-a7e4-4a6f-9d30-fc3fc5ebda64', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('87056033-f50f-43e2-b2c2-24f71a3bd2d2', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('87a6a79f-88b9-4414-8869-e5f970b98a28', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('87e92b5d-737b-438a-85ea-ba64053be5ec', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Emails', 'module', 90, 0),
('884a52d6-7770-416b-b9ab-9384e2028d35', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'EAPM', 'module', 90, 0),
('889e2d0a-9a98-4a95-8f2e-699f8ba356bc', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'SurveyQuestionResponses', 'module', 90, 0),
('88af7150-d782-4039-acd8-ad6ab784158f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Spots', 'module', 90, 0),
('8a9fc414-fe5b-4da5-9d44-2a99488e2a4a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('8aa4c72c-3639-464e-8f22-c62243f4c6fc', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('8aecb85e-82e6-4755-a5a4-46916a6b0bbd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'ExternalOAuthConnection', 'module', 90, 0),
('8b0ad417-6ea3-4ea8-9768-d4740baabd8c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Surveys', 'module', 90, 0),
('8b644c0b-fb7b-4bfb-ad4a-c96ccccaa713', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('8bc3b35f-f471-4608-a2d8-de79a0450f40', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('8c04fb2a-9992-43f5-a8bf-7ef741311217', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'EAPM', 'module', 89, 0),
('8f3e76ee-fc7c-467f-a15c-f897a60f120d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('8fadcdc9-48c6-4c93-8238-da9736e889a4', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Prospects', 'module', 90, 0),
('8fe1567c-1c95-4d55-8819-c9f8b22c770d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Project', 'module', 90, 0),
('9003ac47-9cf1-4fa4-a47a-e383c6d1ee81', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('900c0958-c0f6-454f-bda2-447bead0c1ba', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('903c7f0f-5fec-4766-ac34-3f9194107c24', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('9052a450-efa8-42b5-9759-f5ad92b9cf68', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('90e70ff7-56eb-4553-b61a-458f32cc45f2', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('913b4c51-ffc3-4240-983a-c40f1d0bb2fd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('91a9fbb4-784f-4748-97ef-ca495429c3a6', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Bugs', 'module', 90, 0),
('933b0cdf-0b47-47c8-b8bc-8037b73921cb', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Accounts', 'module', 89, 0),
('946a84c9-3f64-44e5-96f9-4563fb3121cf', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Spots', 'module', 89, 0),
('94b313e8-0bb4-4fac-9c2e-b56387378938', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'InboundEmail', 'module', 90, 0),
('95292927-10fe-42ba-a171-d7ed3241d312', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('97694619-5523-4636-ab20-810a76da23df', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('978cc7ec-a56e-417c-a29f-8e9f3c5254fa', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Emails', 'module', 90, 0),
('9818ca33-2156-48d6-bc65-a0025e378288', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('98c98a7c-314c-4f2a-8437-87ba36e27f6c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Contacts', 'module', 90, 0),
('997f9e35-b130-4a55-8e84-6e4afd291235', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('9a0ea409-75ee-41e8-b1cc-54e998cc0ab9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('9aa7a840-2f69-40a4-ba71-3bd6956daf4c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'InboundEmail', 'module', 90, 0),
('9b509d4a-b103-4762-a2f3-68eb7f0ebc90', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Surveys', 'module', 90, 0),
('9b592672-36fc-4104-9f41-9d203b7d8007', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('9bf9f513-59a5-4415-aec6-7a5c9c8f50fa', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('9c2d3104-25ae-4592-afac-d303d0daf6de', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('9c7f289b-8f7c-4bf3-96e3-a13a3d9b6b8d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('9d54a34d-86b5-48f3-ab77-069c016b1045', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('9d878a8a-e8b8-407b-ae4d-0d70aa85c46c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'ExternalOAuthConnection', 'module', 89, 0),
('9d93df17-605e-4034-bfa4-8d18d1ff812e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('9de6a94c-d3e0-45c3-bdbd-3c3ac8fa82d0', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('9df61a5d-68ab-448e-93de-721efe81aceb', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Documents', 'module', 90, 0),
('9e077ae1-a693-4665-8185-4ab3828c1c60', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'InboundEmail', 'module', 90, 0),
('9e7e7ffe-9860-4653-b953-48a7a0db8af2', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('9ee6518b-2c44-4590-8c0a-b5e856bb65bf', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('9ef670fe-f152-42f6-9a33-6d7bd9cbe147', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('9f27af2a-e0bb-4409-b31e-eee2cc3579d5', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'InboundEmail', 'module', 89, 0),
('a0a0300f-c702-4d55-a8fa-cb32550805fa', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('a0ba1597-328f-4e12-bf05-04172ae410d8', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('a10ab10c-e2d6-4773-839e-8c802c44d084', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Surveys', 'module', 90, 0),
('a1247d3a-87da-4890-99ff-057063d5bbab', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'SurveyResponses', 'module', 90, 0),
('a18fe851-0af3-49cd-ae2f-6653f051abcd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'FP_events', 'module', 90, 0),
('a20f32a1-5df4-4b81-a4b3-527efa06aad7', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('a2b85df4-1969-4133-a902-f0cea55ec8ef', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('a2bab5c0-eae8-42b2-8b71-68c63cede2ba', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('a3b39855-7e5f-4a2c-bcd4-501f8cbcc669', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Project', 'module', 90, 0),
('a3e86666-0ac8-4355-9d7e-ff72404de48b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('a47c5cd0-26fe-4b63-9270-095cf1ea1799', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('a4d054ef-89d0-458b-805a-49ce4a494799', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('a4d2f3e6-4d80-425e-baa4-2bf6274e4dbf', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Notes', 'module', 90, 0),
('a4d8df71-761d-43e3-89a9-a5dfa0934b17', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('a54d829e-253d-4ad7-a1c1-6e8f02e876a7', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('a5a5e8e8-56c0-4275-87a5-1f1c299cccd2', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('a5c2e3c0-483e-4fd0-8102-c19d2d64dabd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('a69569ec-5059-4bc8-b3f5-7190a8c1b1b2', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'SurveyQuestionOptions', 'module', 90, 0),
('a7394ba1-ae21-4a6d-9087-4869d4309c1a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('a768b9c3-aac4-4a8a-b661-2ddb5d0613c9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('a7e6be16-8f96-4e6e-a370-378ead5fb184', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('a9078bda-b8a2-4c3d-ae99-37b90f233382', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'ExternalOAuthConnection', 'module', 90, 0),
('a959e887-f178-43fa-bf03-e22292e2e773', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('a9630302-f3b9-41d5-aa47-adeb2efcdfef', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('a9dd037d-b37f-456f-b342-ac172b97b4d9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('aa783221-9ce3-4a83-ac75-b7d09af43795', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('aaa00e49-c1a6-4ae2-b6ae-3ff46f1f20dd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('aacaf769-ba99-41fd-86a4-6dd78f7c4b30', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('abc88619-3562-4a30-85a7-e2a7f967d1eb', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'FP_events', 'module', 90, 0),
('abd78fd7-6459-4297-ac81-f3155afd28fb', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Surveys', 'module', 90, 0),
('ac29dd54-cdbf-4323-8443-7a978f00c8da', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('adfd8e78-a82a-4e63-a3a7-9bfb9fa70a13', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('af694ec6-b3df-493b-bef2-1979f9fbdc59', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'SurveyQuestionOptions', 'module', 90, 0),
('b1ff0b25-6fdd-4c68-a9bc-02a53481c721', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('b23cae0e-b00b-480f-b7c2-11dfefa09e10', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('b240e2cb-0e66-4ad6-a40e-68115470ce6c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Documents', 'module', 90, 0),
('b3f4e0d8-50f7-45cf-b7f9-39f007112016', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('b54c76c1-0212-4f18-82f0-94ac46bc7618', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Documents', 'module', 90, 0),
('b69e0ad7-1ba6-472a-8942-41195e6ab2f7', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('b6f4fead-4c82-4120-bdca-2f591b6d006e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('b707d9c5-62e7-4926-8830-19a72ad81f4c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Contacts', 'module', 90, 0),
('b71a0617-6ca8-4518-a11d-ea1a560d591f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('b7adb7b6-98cd-43ab-bfc4-d91370a50d8b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('b8305738-ddac-46de-95c1-39190100e572', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('b836f872-edbf-4ced-a2bd-679b317d7b0c', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('b8c0039b-8ede-491f-9458-c55609eddcbe', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('b9626399-420a-434d-8ffb-768b5b829257', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('bb05e1f3-1e30-4570-b83a-5cf1fb12289f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('bb078c21-0bee-4c99-bd89-f367788693ad', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('bb760545-08c7-411b-a872-a78a26b503a4', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Spots', 'module', 90, 0),
('bb99ca24-5a33-4cb7-968b-295fd055f11d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('bd7842d4-331b-4a26-86f9-bdfd84fe494d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Users', 'module', 90, 0),
('bddd718a-c4cb-4942-bcef-d96ffd9508a3', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('bdf7dda3-01d0-498d-a070-065347b8f3a7', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('be63ffaf-7573-4230-99d7-c325d9e7ab1b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('beb6ba80-3c37-4190-8c74-a6dc83b89173', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('befa91c6-f98e-45f2-9039-9150cd4d72de', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Prospects', 'module', 89, 0),
('bf03de6b-d20c-45c1-8a03-8aa54ae8dc27', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('bf8a05e1-3aa3-4b25-a20f-a76a90d0ebb4', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('bfe21ceb-7d1c-4d9d-b20d-ac9ae4475780', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'SurveyQuestionResponses', 'module', 90, 0),
('c035c918-421b-42cd-b6b8-c1c658402e5e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'SurveyResponses', 'module', 90, 0),
('c16f19e2-cbd3-4a3b-9a08-e749bda4782f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('c1a97d93-b1ae-4896-9f2a-91b8957acdeb', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Cases', 'module', 90, 0),
('c237d09a-2054-424b-8175-4de85b8b2d00', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('c252db19-36a7-4607-b444-f8720b4bef31', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('c2691059-b377-43a7-bf74-0ce540111f6a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Calls', 'module', 90, 0),
('c2e5decc-c183-4751-bc80-6e38afe446b8', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('c2f3035a-b90b-470c-815f-e68b4ccfbd1d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'ExternalOAuthProvider', 'module', 90, 0),
('c37131d8-bee1-43fd-ad3e-1939e8bc05f8', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('c3ee2372-3748-47f3-bdc7-8540a045a33d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('c449eb6d-099e-4fb9-84a0-7c7d71152267', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Meetings', 'module', 89, 0),
('c492a924-2c97-4adc-8f21-42a71d0c651a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('c4953928-fe41-4c75-83ae-fd6df21b0714', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('c5b97ccd-1126-4c6a-8f69-279b54821b4b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('c6115da6-0e35-456d-8142-05e07387685e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('c61fa8f5-66a2-4a9b-8840-a6231c72d489', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Cases', 'module', 90, 0),
('c62717a5-88e4-4883-8290-d3884953aff1', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('c7f5fff9-9653-48fe-ae8f-c56b8763ee47', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'ExternalOAuthProvider', 'module', 90, 0),
('c885e0cc-24ae-472c-8d13-05b19ba9ec80', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('c8e63bac-9a8e-4288-bcfe-f0b267183a05', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('c93c9913-1a38-4529-beba-b49b9098c121', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('cb1bce84-9f6b-4275-ab46-6869f5675de7', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'ExternalOAuthProvider', 'module', 90, 0),
('cc150aa6-fcaa-4d4d-8d78-e102a2d4a484', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('cc1c5590-bd1c-4500-b665-b42268d6dd77', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('cc76dfed-5e72-46c7-8fea-8135563af2e4', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('cc9a7d98-fb33-4106-8a40-166b1365f65d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('cc9e7c88-3b46-4c0c-80c3-c8ce7c9121d6', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Users', 'module', 90, 0),
('ccd6dae6-5fb5-496c-9250-84258368d53d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('cd579b96-03c0-4868-b3dd-67dd40de4aca', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Bugs', 'module', 90, 0),
('cd6a9098-e7f9-4793-bb85-5f6071b174c8', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('ceb44b82-6790-43ed-b524-39b287f486e6', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('cf3ece08-f68e-4c7e-88c0-bc92700c44cf', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Calls', 'module', 90, 0),
('cf5466b9-2346-47d2-9abc-cc27f76d52a8', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Alerts', 'module', 90, 0),
('cfa68611-317e-4a7f-984f-d0fb207d6b4b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('cfd64e37-affb-490d-9b7d-18d7ecf42f31', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('cfecf3b5-b970-4247-bb6d-310d098c527d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'CalendarAccount', 'module', 90, 0),
('d09c37d9-93aa-4cbd-8768-51e808cb7a56', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Tasks', 'module', 90, 0),
('d16357a8-9f08-4059-9187-ac753232b8e7', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('d249cf3f-7c01-484d-a913-771c2930798e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('d2ff8d1b-1e2a-462b-b901-ad7662ee1716', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('d43dbe76-53fd-436b-96c0-8c43b30121cd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('d4974c3c-27c7-421d-bba7-3daab2edc316', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('d4a648c2-1b2c-4156-89e1-1bac237ffe2e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('d4fe03d5-e230-41f1-aba5-350ec76dd692', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('d5b3b457-c715-4bc4-9d20-4c75ce1a7812', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Prospects', 'module', 90, 0),
('d67141ba-6511-4dbb-af15-ac149e119b18', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('d6a0364c-f93a-4d10-83dc-53e8b4fce7a1', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('d6e6cd7c-69dc-40fa-b02b-a88d1cf8e506', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('d74a6a5e-2233-494e-a253-4a7ed6a14dd0', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('d7cbf0f8-29d8-4995-ba68-3972c7b239cd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('d7dc1950-52a8-4aa2-8d18-a2ebde61f39b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('d802aa44-2a8e-48c9-af2b-653ca3d84f27', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'FP_events', 'module', 89, 0),
('d8773beb-9f20-4ca4-ad87-51943af734fc', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Leads', 'module', 89, 0),
('d96daa3b-7dc2-4fb0-b53c-40dad02a0836', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Tasks', 'module', 89, 0),
('d9ab2fb2-36ea-4674-b5ec-6511b9925cdc', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('d9e79f45-49e0-4f1d-accc-914524da43d3', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Notes', 'module', 90, 0),
('da383fe3-414f-4866-bbc5-2fb0b1e3b5fd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Cases', 'module', 90, 0),
('da547408-d6e1-4357-bd67-49b85b0a3da8', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('da72ac76-20ef-4f6e-86b6-2d768a68c9b5', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('dadcc3b3-96b6-4f38-8215-9177fc8eed39', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('daec19cd-9956-40ff-ba29-420e3bc91a50', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('dc6448f0-b0dd-43ee-be13-11cd71830e42', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('dd53597d-6752-44e6-ab14-184e2dae599d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Documents', 'module', 89, 0),
('dd63cc9a-c297-4df6-9824-0d0906c4538d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('dd9fb83b-e177-4884-982c-57972ee5c147', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'SurveyQuestionResponses', 'module', 90, 0),
('de3608af-7b08-462f-8660-8ab38937da5d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('de71f99e-c383-480f-9ffa-0ef2a57ab23a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('dfd4da18-bf30-4d2c-b7ee-43869984e0cc', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('e0431ea0-0c40-47b6-afe3-cf06abfbf051', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('e043a0da-9657-4b53-a5d6-1808b0d1144e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'CalendarAccount', 'module', 89, 0),
('e0c687ec-63ea-430f-8c3f-b0479124751f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'SurveyResponses', 'module', 90, 0),
('e10a107e-d3bb-4a6a-b0f1-8e7a099b6907', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'Notes', 'module', 90, 0),
('e169c13c-36f0-4455-b5e4-ee75f9246a50', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Project', 'module', 90, 0),
('e21712b9-b9ec-48c0-985a-af54faa109d2', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('e34db6ed-1c64-4d4d-a0f2-833da03c9cc1', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('e3517a2e-8b2c-458d-a1cb-cffe3cc3910a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Surveys', 'module', 90, 0),
('e3a07240-42f1-418f-8e41-d0d95d927341', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('e43c442f-2692-4dd4-9bba-26d7a3c995dd', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('e47e6241-2eab-4203-93fd-59bdbae83da6', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('e48d9a87-ca55-4e76-b8cd-1c59ec8cada0', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('e4b24332-317e-497c-9b07-c1bac74c5c4e', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'Project', 'module', 89, 0),
('e620d0a3-e6d0-45c4-a127-97c70db86962', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('e67dd461-6d96-4982-b412-3eb89af888e6', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('e6d6c805-f9b6-4cb1-93e8-5d2fdf86cef2', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('e74af478-82ff-42aa-a29a-62ad057f9741', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Spots', 'module', 90, 0),
('e82a7df6-da37-4517-b662-62a35c819fa9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Leads', 'module', 90, 0),
('e9647787-1c5c-4379-b7d0-4b53b8dd0255', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('e9dd1d3b-79d0-4869-80f3-8865ac6bc961', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Cases', 'module', 90, 0),
('e9f0d33d-0ad2-4384-99b6-453cf6543208', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('ea893a05-7755-4418-a866-e4449d0dc6be', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('eb150561-ce4d-4946-83a0-0fb6f381ff85', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('eb88dc73-64df-4d11-a772-a3610f5bf67b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('ec3267c0-2236-47b4-bf88-c69e63353ed3', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('ec5b0947-a738-4c44-a564-b08ba447393b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Notes', 'module', 90, 0),
('ed2a7a94-de2b-490f-bfd6-73dd20f209f5', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('ee401047-bd91-4978-9f14-b4df0b39b587', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'InboundEmail', 'module', 90, 0),
('ef4030e7-f63a-4c6b-bd88-bd0f7e2cc63a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('efa81269-97d6-498c-b12f-ead29adaf795', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('efc5e37f-11e5-4635-85de-5a5b4d2f2e10', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('f023f8cb-f31d-46a1-a6d5-f32b0bc25088', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('f03aa90d-4096-47f7-ba85-3b124966165b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Project', 'module', 90, 0),
('f06fb4ac-37e5-4262-9ac1-a327d1ff5a00', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Accounts', 'module', 90, 0),
('f08034ad-2fba-4934-857a-49555d186b2d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('f0925390-9e2d-43ec-840e-1d84dd90851b', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('f09694c4-2575-4bcc-8446-7852b9bba626', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('f1663f59-b6ea-4754-9527-d2321fa22369', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('f3449df8-ddc4-4e0b-9999-8e9881bf2370', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'Calls', 'module', 90, 0),
('f349f615-52d0-45e5-b34c-0da34950ceae', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('f449611d-31ba-4bb5-aedd-b6bce683bf80', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('f4e7cd63-6b71-4551-9285-2d48e85e7c71', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('f589aaee-77b4-495f-b275-caca2720db7d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'CalendarAccount', 'module', 90, 0),
('f6d00bca-5a99-46c2-b8be-2b356a9d8a6a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('f72a2102-2a9a-4f6c-9072-fa070771b9c9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('f762ab4d-c5ba-43c6-a747-4d16697701c8', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('f779d70f-65a5-45da-825c-cd757051251f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('f785b6af-3631-4b35-9445-c6338a33752d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('f7e26781-2ae6-4ed0-95d3-0f8035c6179a', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('f94ff3e5-9497-4739-a6ff-00516b409674', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'Prospects', 'module', 90, 0),
('f962a3ea-b683-4fd3-a349-231813a7d8c1', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('f9e222de-0a31-45bb-8243-d3d7a90aa53f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'list', 'CalendarAccount', 'module', 90, 0),
('f9e7f67c-35c0-46c0-be48-aa5736af16f7', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Emails', 'module', 90, 0),
('fb670c23-fd56-4e93-b4f8-51d443cb39ee', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('fbb44be0-0a73-4a15-a398-115b65ef6ace', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('fbd5cfa2-003d-46a5-85af-fc5749a86c5d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Tasks', 'module', 90, 0),
('fbe5088f-5f84-4a45-898a-81ad20c64693', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('fc914569-60d4-4429-8afa-848f01351903', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'ExternalOAuthProvider', 'module', 90, 0),
('fcb99373-d876-4213-aa66-8d386397d6ad', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Users', 'module', 90, 0),
('fe8832d1-522c-4618-9557-db05e3d211d2', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'edit', 'Emails', 'module', 90, 0),
('fedc5a90-0474-414c-9790-e4d6c722b7e0', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'import', 'Spots', 'module', 90, 0),
('ffd195c2-4f10-417d-b92b-50c6e1761452', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '', 'view', 'Notes', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT 0,
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT 0,
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aobh_businesshours`
--

CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index`
--

CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2026-09-14 13:47:34', '2026-09-14 13:47:34', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT 0,
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext DEFAULT NULL,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` longtext DEFAULT NULL,
  `pdffooter` longtext DEFAULT NULL,
  `margin_left` int(255) DEFAULT 15,
  `margin_right` int(255) DEFAULT 15,
  `margin_top` int(255) DEFAULT 16,
  `margin_bottom` int(255) DEFAULT 16,
  `margin_header` int(255) DEFAULT 9,
  `margin_footer` int(255) DEFAULT 9,
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT 0,
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text DEFAULT NULL,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT 0,
  `run_on_import` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_accounts`
--

CREATE TABLE `calendar_accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'personal',
  `oauth_connection_id` char(36) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `server_url` varchar(500) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `api_endpoint` varchar(500) DEFAULT NULL,
  `calendar_user_id` char(36) NOT NULL,
  `last_connection_status` tinyint(1) DEFAULT 0,
  `last_connection_test` datetime DEFAULT NULL,
  `last_sync_attempt_date` datetime DEFAULT NULL,
  `last_sync_attempt_status` varchar(20) DEFAULT NULL,
  `last_sync_attempt_message` varchar(50) DEFAULT NULL,
  `last_sync_date` datetime DEFAULT NULL,
  `external_calendar_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_accounts_audit`
--

CREATE TABLE `calendar_accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_account_meetings`
--

CREATE TABLE `calendar_account_meetings` (
  `id` varchar(36) NOT NULL,
  `calendar_account_id` varchar(36) DEFAULT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `calendar_account_source` varchar(255) DEFAULT NULL,
  `external_event_id` varchar(255) DEFAULT NULL,
  `last_sync` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT 0,
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT 0,
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `hits` int(11) DEFAULT 0,
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SuiteCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.25'),
('MySettings', 'tab', 'YTozNDp7aTowO3M6NDoiSG9tZSI7aToxO3M6MTM6IklOVF9FbXBsb3llZXMiO2k6MjtzOjExOiJJTlRfRGV2aWNlcyI7aTozO3M6ODoiQWNjb3VudHMiO2k6NDtzOjg6IkNvbnRhY3RzIjtpOjU7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo2O3M6NToiTGVhZHMiO2k6NztzOjEwOiJBT1NfUXVvdGVzIjtpOjg7czo4OiJDYWxlbmRhciI7aTo5O3M6OToiRG9jdW1lbnRzIjtpOjEwO3M6NjoiRW1haWxzIjtpOjExO3M6NToiU3BvdHMiO2k6MTI7czo5OiJDYW1wYWlnbnMiO2k6MTM7czo1OiJDYWxscyI7aToxNDtzOjg6Ik1lZXRpbmdzIjtpOjE1O3M6NToiVGFza3MiO2k6MTY7czo1OiJOb3RlcyI7aToxNztzOjEyOiJBT1NfSW52b2ljZXMiO2k6MTg7czoxMzoiQU9TX0NvbnRyYWN0cyI7aToxOTtzOjU6IkNhc2VzIjtpOjIwO3M6OToiUHJvc3BlY3RzIjtpOjIxO3M6MTM6IlByb3NwZWN0TGlzdHMiO2k6MjI7czo3OiJQcm9qZWN0IjtpOjIzO3M6MTk6IkFNX1Byb2plY3RUZW1wbGF0ZXMiO2k6MjQ7czo5OiJGUF9ldmVudHMiO2k6MjU7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtpOjI2O3M6MTI6IkFPU19Qcm9kdWN0cyI7aToyNztzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtpOjI4O3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtpOjI5O3M6MTE6IkFPUl9SZXBvcnRzIjtpOjMwO3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtpOjMxO3M6Mjk6IkFPS19Lbm93bGVkZ2VfQmFzZV9DYXRlZ29yaWVzIjtpOjMyO3M6MTQ6IkVtYWlsVGVtcGxhdGVzIjtpOjMzO3M6NzoiU3VydmV5cyI7fQ=='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Cases', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'SuiteCRM'),
('system', 'adminwizard', '1'),
('MySettings', 'disable_useredit', 'no'),
('MySettings', 'hide_subpanels', 'YTowOnt9'),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', ''),
('proxy', 'password', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT 0,
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT 0,
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT 0,
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text DEFAULT NULL,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT 0,
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text DEFAULT NULL,
  `cc_addrs` text DEFAULT NULL,
  `bcc_addrs` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `description_html` longtext DEFAULT NULL,
  `raw_source` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT 0,
  `opt_out` tinyint(1) DEFAULT 0,
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses_audit`
--

CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT 0,
  `reply_to_address` tinyint(1) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `body_html` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('694819db-abab-45ee-89be-ec4e36150286', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Description</td><td>$acase_description</td></tr>\n					    </tbody></table>', 0, NULL, NULL, 'system'),
('a73bbf94-0461-401d-a08b-faf00d5c0d8d', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'off', 'Confirmed Opt In', 'Email template to send to a contact to confirm they have opted in.', 'Confirm Opt In', 'Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address', '<p>Hi $contact_first_name $contact_last_name,</p>\n             <p>\n                Please confirm that you have opted in by selecting the following link:\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\n             </p>', 0, NULL, NULL, 'system'),
('a9d3acd9-71a7-45bf-b8c7-e31a77c6337d', '2013-05-24 14:31:45', '2026-09-14 13:47:04', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\n$fp_events_description\nYours Sincerely,\n', '\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n', 0, NULL, NULL, 'system'),
('b19d51d1-d584-41d1-b456-35819f0c39a9', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('b39eb270-2f51-435c-bdb1-a5ad3cd78b85', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'off', 'Two Factor Authentication email', 'This template is used to send a user a code for Two Factor Authentication.', 'Two Factor Authentication Code', 'Two Factor Authentication code is $code.', '<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('bd404dcb-b2df-4779-9a94-c2358c086651', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, 'system'),
('cbc0822f-b22c-4baf-a446-c4639048a02f', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, 'system'),
('cbc2c2cb-5b49-4cf7-8cfc-761789ad8639', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\n					    </tbody></table>', 0, NULL, NULL, 'system'),
('ceb2350c-570a-42d5-89c3-2bac53ef7746', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'off', 'User Case Update', 'Email template to send to a SuiteCRM user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\n					     <p> </p>\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>', 0, NULL, NULL, 'system'),
('dc6de817-a105-4ecb-ab18-89d089194194', '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system');

-- --------------------------------------------------------

--
-- Table structure for table `external_oauth_connections`
--

CREATE TABLE `external_oauth_connections` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `client_id` varchar(32) DEFAULT NULL,
  `client_secret` varchar(32) DEFAULT NULL,
  `token_type` varchar(32) DEFAULT NULL,
  `expires_in` varchar(32) DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `external_oauth_provider_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `external_oauth_providers`
--

CREATE TABLE `external_oauth_providers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `connector` varchar(255) DEFAULT NULL,
  `redirect_uri_type` varchar(50) DEFAULT 'pretty_url',
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` text DEFAULT NULL,
  `url_authorize` varchar(255) DEFAULT NULL,
  `authorize_url_options` text DEFAULT NULL,
  `url_access_token` varchar(255) DEFAULT NULL,
  `extra_provider_params` text DEFAULT NULL,
  `get_token_request_grant` varchar(255) DEFAULT 'authorization_code',
  `get_token_request_options` text DEFAULT NULL,
  `refresh_token_request_grant` varchar(255) DEFAULT 'refresh_token',
  `refresh_token_request_options` text DEFAULT NULL,
  `access_token_mapping` varchar(255) DEFAULT 'access_token',
  `expires_in_mapping` varchar(255) DEFAULT 'expires_in',
  `refresh_token_mapping` varchar(255) DEFAULT 'refresh_token',
  `token_type_mapping` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT 0,
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `audited` tinyint(1) DEFAULT 0,
  `massupdate` tinyint(1) DEFAULT 0,
  `duplicate_merge` smallint(6) DEFAULT 0,
  `reportable` tinyint(1) DEFAULT 1,
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2026-09-14 13:47:04', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT 0,
  `is_group` tinyint(1) DEFAULT 0,
  `is_dynamic` tinyint(1) DEFAULT 0,
  `dynamic_query` text DEFAULT NULL,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `default_values` text DEFAULT NULL,
  `has_header` tinyint(1) DEFAULT 1,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `last_import_run_datetime` datetime DEFAULT NULL,
  `mailbox_last_imported_days` text DEFAULT NULL,
  `email_import_per_run_threshold` int(11) DEFAULT NULL,
  `email_import_timeframe_start` varchar(255) DEFAULT NULL,
  `email_import_unread_only` tinyint(1) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `email_body_filtering` varchar(255) DEFAULT 'multi',
  `server_url` varchar(100) DEFAULT NULL,
  `connection_string` varchar(255) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT 143,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text DEFAULT NULL,
  `primary_folder` varchar(255) DEFAULT NULL,
  `sentFolder` varchar(255) DEFAULT NULL,
  `trashFolder` varchar(255) DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT 0,
  `move_messages_to_trash_after_import` tinyint(1) DEFAULT 0,
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT 0,
  `groupfolder_id` char(36) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `auth_type` varchar(255) DEFAULT 'basic',
  `protocol` varchar(255) DEFAULT 'imap',
  `is_ssl` tinyint(1) DEFAULT 0,
  `distribution_user_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `create_case_template_id` char(36) DEFAULT NULL,
  `external_oauth_connection_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `int_devices`
--

CREATE TABLE `int_devices` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `asset_code` varchar(50) DEFAULT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Active',
  `manufacturer` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `serial_number` varchar(100) DEFAULT NULL,
  `imei` varchar(30) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `int_devices`
--

INSERT INTO `int_devices` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `asset_code`, `device_type`, `status`, `manufacturer`, `model`, `serial_number`, `imei`, `purchase_date`, `notes`) VALUES
('1b328680-09e6-4442-8400-3aff96e70fd0', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'DEV-002', 'Phone', 'Active', 'Apple', 'iPhone 18', '8273-2341-2134-5434', '8273-2341-2134-5436', '2026-09-27', 'iPhone 18 bought for the company');

-- --------------------------------------------------------

--
-- Table structure for table `int_devices_audit`
--

CREATE TABLE `int_devices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `int_employees`
--

CREATE TABLE `int_employees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` varchar(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `employee_code` varchar(50) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Active',
  `hire_date` date DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `int_employees`
--

INSERT INTO `int_employees` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `employee_code`, `first_name`, `last_name`, `email`, `phone`, `job_title`, `status`, `hire_date`, `notes`) VALUES
('a7c25b50-b0a9-11f1-8871-7eea964b83a4', 'Luka Krstev', '2026-09-15 09:57:59', '2026-09-15 11:02:22', '1', NULL, NULL, 0, NULL, 'EMP-001', 'Luka', 'Krstev', 'klisarovluka@gmail.com', '+38971258178', 'PHP Developer', 'Inactive', '2026-07-07', 'PHP Intern learning to work with SuiteCRM 7, going through approaches with PHP Code only.');

-- --------------------------------------------------------

--
-- Table structure for table `int_employees_audit`
--

CREATE TABLE `int_employees_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `int_employees_int_devices_1_c`
--

CREATE TABLE `int_employees_int_devices_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `int_employees_int_devices_1int_employees_ida` varchar(36) DEFAULT NULL,
  `int_employees_int_devices_1int_devices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `int_employees_int_devices_1_c`
--

INSERT INTO `int_employees_int_devices_1_c` (`id`, `date_modified`, `deleted`, `int_employees_int_devices_1int_employees_ida`, `int_employees_int_devices_1int_devices_idb`) VALUES
('515c89f0-4758-432e-ab7a-55a84ae2eb94', '2026-09-15 11:02:22', 1, 'a7c25b50-b0a9-11f1-8871-7eea964b83a4', '1b328680-09e6-4442-8400-3aff96e70fd0'),
('5a55c7ed-bd8d-45b0-84ba-0e9d32cb62e4', '2026-09-15 11:02:22', 1, 'a7c25b50-b0a9-11f1-8871-7eea964b83a4', '1b328680-09e6-4442-8400-3aff96e70fd0');

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_lng` float(11,8) DEFAULT 0.00000000,
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `requeue` tinyint(1) DEFAULT 0,
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT 0,
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT 0,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT 0,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2authcodes`
--

CREATE TABLE `oauth2authcodes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `auth_code_is_revoked` tinyint(1) DEFAULT NULL,
  `auto_authorize` tinyint(1) DEFAULT NULL,
  `auth_code_expires` datetime DEFAULT NULL,
  `auth_code` varchar(4000) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2clients`
--

CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT 1,
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int(11) DEFAULT NULL,
  `duration_amount` int(11) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2tokens`
--

CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) DEFAULT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `reply_to_name` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'SMTP',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '25',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT 0,
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `auth_type` varchar(255) DEFAULT 'no_auth',
  `external_oauth_connection_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `smtp_from_name`, `smtp_from_addr`, `reply_to_name`, `reply_to_addr`, `signature`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`, `auth_type`, `external_oauth_connection_id`) VALUES
('b3e55693-22b6-411b-ab50-6315570c1802', 'system', 'system', '1', NULL, NULL, NULL, NULL, NULL, 'SMTP', 'other', '', '25', '', '', 1, '0', NULL, NULL, NULL, NULL, 0, NULL, 'no_auth', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email_audit`
--

CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `predecessors` text DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text DEFAULT NULL,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT 1,
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `utilization` int(11) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('01012412-9bbe-43b3-94a1-fd154bfd1367', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('011ad016-833b-4dd7-8f18-08757a6593bf', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('0197cda8-a551-4cf2-84b8-99f0e042516f', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('02d8e468-e06a-4913-8060-4e6a303948c5', 'calendar_account_meetings', 'CalendarAccount', 'calendar_accounts', 'id', 'Meetings', 'meetings', 'id', 'calendar_account_meetings', 'calendar_account_id', 'meeting_id', 'one-to-many', NULL, NULL, 0, 0),
('03176684-7420-4fd4-ae92-bf50d38bb5ef', 'securitygroups_externaloauthprovider', 'SecurityGroups', 'securitygroups', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ExternalOAuthProvider', 0, 0),
('03e0c75c-878d-4a97-b5d7-1ede36830138', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('03e926e4-60ef-4ee0-a645-57ea15f5d58b', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('04657252-cf8c-4009-bd09-27fee717771d', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('04eb6e64-5ed1-4de8-adb6-b5450491c9db', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('05cd8b1a-b888-4914-b9bb-3440c631453e', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'ProspectLists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('065923dd-22b6-4630-b09b-e557ec41b410', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('06d46ed4-22e3-4a73-aaf7-23404439a09b', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('06d9f835-2346-42c4-a19b-f44c20fcdc04', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('07da992f-9b5c-460e-893a-8a9881bc7617', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('0812060c-3bef-4a6e-bc3e-d40321f2007e', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('08926f60-fcff-4036-8a47-089c85cc5974', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('0949ee80-ca07-43b7-a1cc-b0e52f01d80a', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('09ce8cc5-095c-462d-8ca3-c3283bbdbdcc', 'oauth2tokens_created_by', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('09fc7fbd-12bb-4432-8013-90371b541752', 'inbound_emails_external_oauth_connections', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'InboundEmail', 'inbound_email', 'external_oauth_connection_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('0abf2965-3cce-4d69-817f-77bec20c554c', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('0aec7fb7-68b2-439d-a55a-0bf6385dfe05', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('0afdfa29-6b9f-44a8-84dd-13814c85af8b', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('0b01f69d-fc30-4138-8e10-6f6a649ec948', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('0b901b6f-3c7f-4ec2-a3dd-9928ed9378c3', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('0bba1f1d-5b0f-4718-91c4-41bd2bb34416', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('0c291f8c-ce97-4150-8acb-9e07e4173f75', 'externaloauthprovider_modified_user', 'Users', 'users', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('0cf8c3c3-5cd7-488b-8375-a1aaa9218086', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('0d6c82e7-176b-48a3-a21b-61664d377e0d', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('0da5efe1-3042-4010-9f6e-f9d23d3fffda', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('0dd712d2-f74f-4e6e-b016-6c6311096cb2', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('0e637643-fad4-49a2-9b75-d5f6175c7012', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('0ea85048-5af6-4ae1-9e50-2ca91a2665e2', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('0f5b4e16-e14b-4795-b3ed-a2e87f9905dd', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('0fae465f-4105-4060-bbb2-9505f2e373a3', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('11050cd2-7a47-4c2d-9d7c-1db356980e0a', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('113fbac0-1bd5-4277-a908-24c05ff7eafd', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('116d953b-99a5-465b-a137-083dbe35b48c', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('11af0406-3a4c-4af8-a1f2-5f8d83b4f33a', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('11c64d31-1270-49c5-a91d-604101494be9', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('11ce321f-ea63-4d7c-891e-5f05ee832860', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('11d2b539-0d8d-4d31-b3ba-0d53bf7d10a8', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('11f5317c-5225-4a45-b083-597f2327af7b', 'surveys_surveyresponses', 'Surveys', 'surveys', 'id', 'SurveyResponses', 'surveyresponses', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('127ca688-2abc-4a10-af0b-3eea901f2b80', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12aae9b8-6413-4ab0-9151-800c25656c1f', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('132b7c16-707a-4d66-b5e1-cdffe599cba9', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('13f576c5-e962-41d9-adbd-55606e7f3558', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('14ad7646-6fb1-4584-871b-f9e1aeaf6aaa', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('158b5c13-ddb4-4470-a3df-2c621c16b53f', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('17d57dbf-a80b-4d82-a764-e8788ffbef97', 'oauth2tokens_modified_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('17f676a3-56d4-4ef9-b279-1800d0b61cef', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('180701c7-ef62-4e6a-8d6d-b5cabc0c22c4', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('181c8c78-1e2f-41e4-8370-d5648f1c2ef6', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('187d6179-8d98-43b4-9be1-71b513110cee', 'campaign_notes', 'Campaigns', 'campaigns', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Campaigns', 0, 0),
('18abaa67-f655-476b-9e10-fdfee12bd696', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('18bdf996-7e47-4995-bddb-8ac35e14333a', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18e6ef18-692f-46c1-bcc2-172bf2ace4f5', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('193a4c1f-0af2-456a-824b-5fa87a225dfa', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('19952610-9619-4297-abe6-701f2e6d415f', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('19e5dbe1-eeb4-42e6-953c-263042f9be45', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b21bdff-135c-46d7-9048-0fe8b9654e54', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('1b232d4b-c48d-4230-8f6b-82c90aa98895', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b3471c5-19c8-4589-8142-a67c6336b7a8', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b558915-4ef4-4b1d-91a3-f436c3483d0f', 'securitygroups_surveyquestionoptions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionOptions', 0, 0),
('1bd702ad-9b67-41bd-af14-2da3a71903d4', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('1d593b72-9d56-43db-af05-f6a85916ba79', 'oauth2clients_oauth2tokens', 'OAuth2Clients', 'oauth2clients', 'id', 'OAuth2Tokens', 'oauth2tokens', 'client', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1d911fb7-43ba-4b98-84c2-53003cc51cf0', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('1d96cac8-2b0e-454d-896d-595c6bda73d6', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('1dd7197f-cb9b-472c-b3ed-2e4b0ad68ab2', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e06c2a0-2a0a-45a6-9fa5-0e9dbb8e2f76', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e65e901-5380-43f2-a2f4-0fb04c4670cc', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f967160-a1e2-41f5-9321-26161170cfa5', 'externaloauthconnection_created_by', 'Users', 'users', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2015934f-3ed1-4a65-b6e3-d89c9277331f', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('201d4468-519b-40e4-814a-74d1b91e4be7', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('20b74464-e5be-4f37-adbe-b36d274386b8', 'surveyquestionoptions_surveyquestionresponses', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'surveyquestionoptions_surveyquestionresponses', 'surveyq72c7options_ida', 'surveyq10d4sponses_idb', 'many-to-many', NULL, NULL, 0, 0),
('20ca70e1-1b69-4196-89fe-52d81dd91bea', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('20edaa2d-b729-420c-8cb3-6e67c2323ac3', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('219a18ef-9383-4a81-a4c6-b411825aac67', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('21f05d15-38c8-432e-bc6a-dab6494862c3', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('22745966-5fc4-4927-9619-ac9292777bf3', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2341af2e-56a4-4148-b03e-81598ad79f9a', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('2533a9e8-b421-4843-8aa5-1d1fee0107fe', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('259363ca-b2da-4908-8b22-6915a384303a', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25b28704-28b0-4a1c-8f16-1bfeef2ff4b9', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25f9a186-ef56-4ed9-bbaa-4f09ab59ba02', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('25fef596-3e5f-463d-b927-6cb8278c47cc', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2719dc60-2d4c-40f1-aceb-394c10d7d3e2', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('282e60fa-ec5b-4f87-b409-ebcaefc794ee', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('282e6801-df05-415e-af8f-d5245361d537', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('2863f03f-fe05-405c-858e-8b51d54b88c8', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('296998d9-5cbd-4d89-9c15-41eea44f7059', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('29e71e4f-cc44-42ec-af3b-4fe580494ec6', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b7a0a2a-61ac-46d6-9f06-f77978acaadd', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2bc87c7e-b0de-4e48-bc08-6c7afd3701c2', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c0168d6-6931-4dcf-ac4c-10c462e59ec3', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('2ccf6cdf-6eb8-4888-bbef-7ed90c638982', 'surveyresponses_campaigns', 'Campaigns', 'campaigns', 'id', 'SurveyResponses', 'surveyresponses', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ce53294-93fb-4130-b7be-7ca6e1117608', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('2cee55db-b43c-4c5e-a173-578a41af3888', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d2f1202-4d1d-4ea8-bb57-605f775532ca', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e46e521-de02-4957-98e2-33e6bd62f04b', 'oauth2clients_modified_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e4b4eab-ecf3-496b-b5b3-fef0090e266f', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2fc7fea4-3fa1-484f-ae58-3d040e1b10d8', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('2fcd1e6a-2de0-4f81-8e15-a3a1422b36a4', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2fd8d183-e32a-43c6-8080-ce3748123684', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('2fd9096a-9595-4615-b563-955d2b1aa780', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('31dba2ec-490d-4474-be61-dd8f4333f2db', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('3247bbca-d47b-4cb4-a1cc-07a280954b52', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('351b3e06-1470-4516-a21b-25d66beaec1a', 'surveyresponses_assigned_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36787683-b750-48c1-8837-63ed05f8cf43', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('369cc97c-617b-48ab-82b5-9f26321791f3', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('374a515d-b2fa-4646-a408-889533f8e3a4', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3899fe2e-9cbf-4612-b2d6-dc68fc7aa9aa', 'securitygroups_aor_scheduled_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Scheduled_Reports', 0, 0),
('38d78dbe-287c-40eb-a4a9-20c4b3838ce6', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38de6b35-0d7c-49e5-9536-feed59485e23', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38f51e4c-42b0-4777-be0b-fdb96405d54e', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('3916da14-3c7f-49ac-9c2f-789505972827', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('393194b8-0b44-4660-bf47-77dbef1df6cb', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('39359d5a-f545-4adc-9cf2-1a54d854cf17', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('396dadbf-a21d-4a5f-b747-29c4f0313b04', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('39c6c273-4be7-4ad2-a9c8-ddc959e6d7ad', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('39ecb91e-2b3d-42a1-a6da-a379a2e90606', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('3acaa966-82ac-4438-b7c4-13bb0db3d34f', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b02a017-74a3-4c91-bf4b-b604e077592d', 'securitygroups_outboundemailaccounts', 'SecurityGroups', 'securitygroups', 'id', 'OutboundEmailAccounts', 'outbound_email', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'OutboundEmailAccounts', 0, 0),
('3b98937a-d856-4810-818f-8271f6d5d415', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('3ba2d1ae-9501-42e2-9282-e8dc73ed3ffa', 'oauth2authcodes_created_by', 'Users', 'users', 'id', 'OAuth2AuthCodes', 'oauth2authcodes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3d6ccb69-afc0-4e59-b405-dc4c6f63f2be', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('3daff53f-dc82-4027-ba8e-dc56c217a8ed', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('3fd0d9e0-265a-4ecf-a688-2456bef87132', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('409b6e2e-d08f-427a-941e-9ad56176d611', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('40f22e83-c207-4a1c-8683-6391f03f3662', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('412714b0-3ec7-46b0-a789-16be3dc0ba7d', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('4166490c-c89a-4512-8b98-b147bd5e2cbe', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4188ee8d-c894-42c7-8b89-dfe39605765b', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('41ae1209-efa3-43f5-b9bd-071ef86e28de', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('43e75c81-3727-4c7d-8e88-61478954024e', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('440b6b3c-da01-49b1-b767-053a1c6496d3', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('44377f02-6981-4887-afc8-96ec74f730bd', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('44635809-57bb-4caa-9ca7-0303cbbafdc6', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('44a50e09-a3d4-46db-bd6d-443734b676c7', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('45ac6465-9745-47d7-80ae-d43e4d624132', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('461b7534-bd6f-4d38-ab26-7611ffe308c2', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('466748ff-cd26-449d-9574-7f2deddc8333', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('478e01a9-6cef-429d-8e01-1d5bd8650112', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('47ab4098-1a11-4a1e-bb02-8d0f33d8ac61', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('489fbbcf-5573-4737-8c5b-f164085b456c', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('48acf1f6-d3ea-4bd7-a5ad-3157e6109ac4', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4975740f-2480-4a54-8303-88bd830539c4', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('4aa6cdb8-099b-436c-a316-2a8677619b01', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('4bb3258c-ba1b-4ac9-99c1-c77d4fe29362', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('4bcbfc7f-0196-4124-ba96-737bbf0c3283', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('4bcfd242-e0a2-4de7-b036-d5ac2618069f', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4c65f6ec-f118-4d09-ad53-d8f9593de318', 'surveys_modified_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d18596a-ed64-4858-b234-6d1bc047e283', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d29fe5d-4d9b-434c-aae9-44524df7f81d', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d4cfb27-7aab-46f7-81e4-a1ad529a7f18', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d7dca6d-8a13-47b5-a3c2-98f2a71c244a', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('4e4cc907-9b08-4ebe-8414-33bbeb31306d', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('4e5c6324-14a3-42d0-97f2-b3a593aa83d3', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4fe10dde-0cb3-4234-9f15-0e5aebbf967a', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('50c646e3-5243-46d4-a1cf-b6c0c7afb588', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('51070208-357d-49ec-83d7-b18911a04ecd', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('51409e0c-aa06-441b-b7fb-c3afeaa385b8', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('522cceaf-ebc0-4c78-a76f-6acc29c7746d', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('52461d27-e7f7-414e-b64a-25c8248ec0c2', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('525da780-dba0-4fa9-b91d-d4a294177bb8', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('53a9e05b-67bd-47a5-ad5c-942cee8dfd67', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('53e6d967-09a5-43cc-a916-c8492611a24f', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('550e56db-e42c-448b-80f5-155efca06e75', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('551dfbbb-ab28-4000-be9f-7eb046d96f3c', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('55620e7b-da91-4ed4-8c66-9967d6b97900', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55b20e0f-912e-444b-8cf8-3f3fe8a331cf', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55b734e3-5a06-4fb7-805c-811b542f1b11', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55c2b1f9-f1e1-4a67-aca0-5cdc289f25c4', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('55cbebd6-4517-467c-b2a7-01430e8758ec', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55dce5b6-d1d3-47ac-a197-c9aadb4ce818', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('55ebf081-4745-4e06-8692-e9c4e27dd1dd', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('561a380f-d838-45b5-a927-34879dd1c25a', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57971544-713f-42f3-ad2b-b21bff4de337', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58551365-742b-4706-a9fc-eb77264e40a4', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58a0d4ee-52ef-4824-977f-f708899cb37e', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('590fec19-6d40-475f-a009-e26e518bd2d4', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('598189e9-5c04-4df6-afef-646cc473500f', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('59e076c5-d6f1-4a15-8c38-d9ce2aaba9f4', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('5c976520-beaa-429f-a9fe-120566e09cc5', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('5cfa1b33-03c2-46bc-93ec-f964f5351369', 'surveyquestions_surveyquestionoptions', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'survey_question_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d061359-ca00-4c29-9dee-a3a509726922', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d4ccc1c-154d-4052-8f2d-eb49c4df38b1', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d72e59e-c264-4c99-a5d2-21950210e3e3', 'surveys_assigned_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5dd00616-50d9-49b4-8927-40dd2c58d9ec', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e306ff4-7721-4698-b34b-0ebfb59a1ace', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('5f5812bb-e2cd-426b-9ca5-a164688c2e9c', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('5fc6e717-2e7f-4a0c-bbcb-4c310b5aacd2', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('5fd232df-33f9-44ef-96ec-8355aee41448', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5feb71c4-a0b5-4b79-bd9f-f0a3526e6389', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('601d41d4-ccad-46cf-a12c-7b6dcb8452d1', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('60646536-bab0-4912-b713-f34ba3b22e96', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('60929860-620e-4608-868e-cae20e3db50e', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('61207181-71ea-4a42-94ff-4e285eb9b737', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('61491fd3-45ce-4a10-bfd2-10112343d4b2', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('6183a5ff-c65a-43fc-944a-feb39d53b184', 'securitygroups_surveys', 'SecurityGroups', 'securitygroups', 'id', 'Surveys', 'surveys', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Surveys', 0, 0),
('62048ac7-4e79-4baa-878d-4d5a45ec02a0', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('62dc4130-6572-4d38-804b-7cb4d5bceac1', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62f2a639-3d66-4627-8c50-3cb69dea9627', 'surveyquestionresponses_created_by', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('63229f6f-5878-416b-ac76-5ad1fb79adc5', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('6335977d-e275-4234-8a04-1cb03e515abc', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('63441699-6e45-45b4-a34d-1789e2dcb7f4', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('634ba35d-cbac-430b-af1e-190eff551c05', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('637bfa09-163e-4a44-b793-1bb783db695f', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('63cd873c-0c3f-4f5d-9585-447d3ca101ba', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('64237549-8a65-4053-8900-b464391799b9', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('64822fde-7bc0-4194-826a-77cf8a5c9188', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('64a3b68b-2ce8-4d97-bbf3-da2c3409f640', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('64be5edb-3629-4390-8299-1d7af0420875', 'oauth2clients_created_by', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('64dc5bdd-158c-4b09-be24-d7f5974ded5a', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('6671ce03-8808-4eb1-87fa-99aec190c6a9', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6688ffad-bda9-4efd-b472-aa3ab3c2ad33', 'surveys_created_by', 'Users', 'users', 'id', 'Surveys', 'surveys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('66b8f9a2-bfe5-4633-b697-0f1a71c88a98', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67dde6b7-c077-44fb-81ba-6222eacda38e', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('68146543-d6c2-4218-82c2-369ede6fa95b', 'surveyquestionresponses_modified_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68287873-2515-410f-8cef-e1f97c33145c', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('691deb94-d2e4-412e-944c-c6701c7385af', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6aa3c2c0-e0b2-47a1-89ed-f4274edcd451', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6bbf8430-f72b-4bb5-9a11-f93cd79fd33d', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6c01c4d1-f38a-4ce0-806f-188a3af4ca3d', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('6cf694b6-147c-4607-9908-1484dcfcdb42', 'calendaraccount_created_by', 'Users', 'users', 'id', 'CalendarAccount', 'calendar_accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d3186c2-ad8e-4958-9072-23cf795fbba8', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('6d56d082-2c63-42ed-a74c-eff28681d61c', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d6693de-8db6-453c-ac7b-cad4c4c68bda', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d987e99-0060-4936-96c7-90e7c89df2b2', 'inbound_emails_distribution_user', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'distribution_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e09a88c-5841-438f-8634-89a7df66d49d', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e15d8f9-b72e-41b8-bef8-ae3931f8f77d', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('6e9aad0e-3724-4100-a288-aae27d7230ac', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('705c06aa-0cf7-4266-82b3-9c227817e012', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('70a12d4b-7477-4fd3-970d-2e23460a8f41', 'externaloauthprovider_created_by', 'Users', 'users', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71c55251-b5a0-40c6-9e11-2ee97ad23662', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('733d8176-bfc3-4b67-923a-1754a1f011b3', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('73a46666-3755-4f47-8bb0-8164582ea3f7', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('75d78132-94bf-45c1-b510-824459a105e2', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75ff1e7f-5b6b-40b6-a3ff-e1e5cc849feb', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76e3ce21-c307-4d52-8fed-ff0c5ab2ca37', 'int_employees_int_devices_1', 'INT_Employees', 'int_employees', 'id', 'INT_Devices', 'int_devices', 'id', 'int_employees_int_devices_1_c', 'int_employees_int_devices_1int_employees_ida', 'int_employees_int_devices_1int_devices_idb', 'many-to-many', NULL, NULL, 0, 0),
('77ff84a2-baad-4673-a573-1a1450932069', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('784c310c-63e9-44e7-8d3b-0179125d83a8', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7850b354-3290-4fb7-8dd6-562abf77c456', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('796e6584-e34c-4c08-8b4d-9883903784cb', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('79fc83fa-491c-4fa0-b329-6db381aab9ea', 'surveyquestionresponses_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a0d9f37-8b8e-4996-82af-89f47d997d98', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a39b108-15e1-4526-a7cc-ffed3a5194d1', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('7b3b84ad-cba5-4942-8a43-edd408235527', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b80bb92-fa35-49eb-94a0-518bb63f299a', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('7bbc1f02-903b-4907-973a-849a73e4e34b', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('7cd96643-333c-4d0b-9bcd-77a4112f85a5', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7cf55726-9cd7-4387-9fb5-4445c693c53b', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d8bb674-c543-4627-a8ac-10a29c511262', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('7f432235-e3be-42a2-970b-3950850d5286', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('7ff21af2-9856-4a33-87ca-fb760c082975', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('804845bb-9479-427d-8c35-12d312a56d3c', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('807defa4-05a3-475f-bb32-1b9e175d1fc9', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80ed4bb2-8232-4c20-9a3e-e855243f6175', 'surveyresponses_created_by', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81310ba0-2704-465f-8fd1-2b171481b089', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('827849ff-ad58-4fe8-83b3-f253796a55c7', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('827de6ce-59bf-45db-83b9-09af8239a68a', 'calendaraccount_modified_user', 'Users', 'users', 'id', 'CalendarAccount', 'calendar_accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82813dc3-d287-4763-ac0d-0feccc88ae89', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('831b2cfd-95fb-4395-920e-c1d4607d5e56', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8481fb66-56a1-4680-85ab-6e5527bb2dcc', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('848abbfc-36e0-476f-a1c0-1bfee5680879', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('849b58e1-d1d5-475a-a2a0-3f073da109db', 'surveyquestions_created_by', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86059a19-a72b-4820-be11-c551847ec67a', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86ac7322-8727-4c27-a90e-6185fde74e74', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('879f3b72-e085-4b92-808a-e8521a1b8150', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('87d8d8d7-3bba-46a6-8cca-012c3ce9f782', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8837c3b3-12a6-4f13-bd93-ced05ab30776', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('8878b408-6a21-4b1e-9aaa-714a79244439', 'calendaraccount_assigned_user', 'Users', 'users', 'id', 'CalendarAccount', 'calendar_accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('88df650c-5a18-4046-a634-b43270d73563', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('897b976e-95ee-451b-9e88-b0f0bc55444c', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('8b07eb2e-53b8-47d6-a1e3-9e8cfd00f5c0', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b1723a0-01ae-46c3-9ad3-5241e78a3b98', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b273fcd-ee87-44b7-b65b-09f516d3d80b', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c11f8fd-6d4e-4509-b0f8-24ed702443c9', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c2d4984-2416-4e42-a46f-c0de09dd2e36', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c4c442c-1b10-4dcf-9b73-88c4653afbca', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c6fa297-024e-4e8b-8260-d5a5f14e1fd8', 'securitygroups_calendaraccount', 'SecurityGroups', 'securitygroups', 'id', 'CalendarAccount', 'calendar_accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'CalendarAccount', 0, 0),
('8cb91ffb-2890-4383-b55f-d7c93178cb00', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8cc9a8cc-5587-46e4-86fe-6deda2504ee0', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d2e66e8-048a-4c79-9ff8-9c1e974a9bbc', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8dba1ccf-ab2b-4e1d-ba0c-4477b89f636e', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('8ea44d37-6d14-4501-be9c-73775e2629cc', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ef1a64a-9ffe-4b21-812d-8698669bd4f0', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('903a0af3-d35a-49e5-a32e-595380a9c7d7', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90dded01-044e-4577-8f0e-c0cb4a55d83c', 'surveys_campaigns', 'Surveys', 'surveys', 'id', 'Campaigns', 'campaigns', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9323c512-de81-447a-af79-d39028c4088d', 'outbound_email_owner_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94dea865-eaca-425d-9442-77eb571dbf75', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('958003c7-afcf-48ca-bed0-aea493cc17a1', 'surveyresponses_surveyquestionresponses', 'SurveyResponses', 'surveyresponses', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyresponse_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95ae2a48-036b-445d-bf7f-648799942136', 'inbound_emails_autoreply_email_templates', 'EmailTemplates', 'email_templates', 'id', 'InboundEmail', 'inbound_email', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('96d37c8c-8a73-4056-8357-e879d7e83a24', 'calendar_accounts_calendar_user', 'Users', 'users', 'id', 'CalendarAccount', 'calendar_accounts', 'calendar_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('96f1d7ee-9ef4-4ee2-9d20-a49e6cc06cbe', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('971288db-b0c9-448e-9b66-8b90fa9efa70', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97c489a2-7a25-4527-a6fa-824654d90781', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98417726-4922-4af7-9493-aae8e1ba99d5', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('984a9a7c-d9f1-480c-9780-436abdc00ae3', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98656560-477e-42df-8b7b-6373c02981ee', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98856a5e-fea6-41ad-b55d-a38607b67d9b', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('996e956f-6533-4768-80a7-ee80b27795c4', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9977c20a-860d-4dfa-805b-a013a52b2ece', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99ca9230-7b26-433f-ae99-31367adefc9e', 'external_oauth_connections_external_oauth_providers', 'ExternalOAuthProvider', 'external_oauth_providers', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'external_oauth_provider_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a6bbc80-95bf-4532-9de0-7781b1272b88', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('9adf7152-e10a-4495-9582-2c58498a033a', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ae462fd-48db-4a4a-8f12-91ba33520e95', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ae68622-56aa-4fc2-b89c-f4f9a4c39d00', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('9c1eb65f-f25a-4b16-aed4-2ba8ae4f18ab', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('9cdd7a61-e9f3-43b3-b2a4-73c7f5c9f561', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d0e5610-2fc1-44a8-aefe-01e063d4a613', 'oauth2clients_assigned_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e6944c6-fbf1-4744-a577-0546c086dda1', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ebf740f-2f57-453b-843f-5c1e6d6ecd14', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('9ed4dd5a-bda5-412a-bee3-58e84e253316', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('9fabd50a-bc4a-49b2-baaf-7981de07081b', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a090c243-c2d0-4008-b80e-d03765a70b42', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1bf0380-538c-4afc-81be-29250ac46c4d', 'securitygroups_surveyquestionresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionResponses', 0, 0),
('a23ba1b1-e623-446b-91b6-f92da48d7b5a', 'inbound_emails_case_email_templates', 'EmailTemplates', 'email_templates', 'id', 'InboundEmail', 'inbound_email', 'create_case_template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a269f790-428b-4db0-adac-6c68e792ef0f', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a3887d62-f6f3-4916-8f77-52804351aa48', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('a423ef22-41cf-41a7-8c9b-2cd86b1e6f53', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('a425f531-99e6-45d9-830e-1694525414db', 'users_users_password_link', 'Users', 'users', 'id', NULL, 'users_signatures', 'user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4bdba00-8224-431a-bb2f-a5838b73bdcc', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('a51d1988-59b9-43c7-8695-b61c1c235488', 'securitygroups_inboundemail', 'SecurityGroups', 'securitygroups', 'id', 'InboundEmail', 'inbound_email', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'InboundEmail', 0, 0),
('a5f835af-6a77-4bda-9f56-87e4fcae87ee', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6082af8-d2c1-48b5-b5d4-d8469e97dc2f', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('a62a810e-14c5-4b44-b8a0-1b17da92503a', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6eb8b71-5b89-426a-8c17-0a534e1b29d3', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('a6f0da4e-01e7-4ffa-9bcf-278052a8c7db', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7d956d7-a912-4d75-b4ce-730abfbd360e', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7e43dad-2610-4e50-bc6b-d9bcf1ce4e43', 'surveyquestions_modified_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a802e92c-136b-47d6-9f1b-f9e9dd0d63c0', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a84c58c3-3365-4848-b63f-a5eb92636d7b', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('a8b9366c-0225-4f51-b017-78713d72b206', 'outbound_emails_external_oauth_connections', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'OutboundEmailAccounts', 'outbound_email', 'external_oauth_connection_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9df269e-2f14-4fca-91ae-061526f9e79f', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('a9fc4298-3c6b-4f62-b6d2-1a303625ce38', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('aa5738e3-c704-44b3-8d55-f87059fa965e', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('abd56f97-5b5c-43f8-93a8-f48c39aa95be', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('ac1eeb1f-1dac-4a23-bdf9-a832dd703c30', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad9523f4-caa0-4cb2-ae14-ef8097989215', 'surveyquestions_surveyquestionresponses', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyquestion_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae1b702f-193e-45c5-a281-3a7747e66e41', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('ae953d1f-5972-4d24-b48a-878790bdef6c', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('aea460a2-e3a4-427e-87df-b2b508fe36e0', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af6233ed-e094-42b8-9f6c-b1929d6420c5', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('b050c64a-e26d-49d6-9d74-50420414e72c', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('b08c18d4-5fff-447d-b8a7-cac5a2eccc0f', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('b0afeb8a-af97-478b-b398-b66202624bc1', 'externaloauthconnection_modified_user', 'Users', 'users', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b0fe2f8e-fb3b-40f3-b9fb-a5c38c6b6f48', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b113dc90-b078-49bf-afa8-a52a6c36fb19', 'surveyquestionoptions_created_by', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b13bd2bf-57bf-46af-8899-fc6a8c0ea89a', 'surveyquestionoptions_modified_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1cb0515-0ada-4b4f-98de-56fd6ca88bba', 'securitygroups_surveyresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyResponses', 'surveyresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyResponses', 0, 0),
('b201e4c0-e4de-4a13-afe5-41984747a5b9', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b26fbdcd-75dd-4052-9fee-e10d341af275', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b44cc688-bfc3-454e-b9f9-962596f7a7fd', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b488f0b9-876a-4ec7-b634-a9287cb60b0d', 'surveys_surveyquestions', 'Surveys', 'surveys', 'id', 'SurveyQuestions', 'surveyquestions', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4ba707e-2d48-4da6-b0e3-35980a57cc5d', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('b4dc5172-f666-44ab-95c2-e005303e4c20', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('b55f8eb1-ac0c-40db-bcd4-00c0dc0b3499', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b587306e-9c5a-42d3-ab44-e72816ff4317', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b58817fd-b426-4b5a-a71a-886b30983b85', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b64a5c74-58da-4499-8a77-aa6902b2075d', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8e3d8c5-39d7-41bc-8b36-cd90afdf5222', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('b9430f44-d93b-4c41-b898-5b66bc0a1b24', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9c1698d-f5e5-4adf-9ecc-4a9c0b547993', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba6e0471-b0d3-4e4f-8427-be1fbcbb448a', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb5bafc6-00a2-4fb5-978e-006aeb0ec920', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('bb9c4f4c-b1fa-4a14-ac8a-43cd933a670d', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('bbda10b2-8d84-44cb-8307-3a2a6da57f80', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('bc350dfa-d6b3-4a1f-bb5d-06ccc7c635b9', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bc8eb814-1d29-4f7c-80b0-d249f8a751f3', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('bcf5b553-f768-4a2d-8efc-7b32a8eb746d', 'surveyquestions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd1c7fbe-f635-4597-87b6-ce5ac05bea36', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be70d62e-cf59-44c9-a5ac-38358b9ab4ca', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bee7e338-84d3-44ba-bfc6-8c090f488e73', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bf1f3ef3-5ceb-4053-85c9-6762b9a9cb14', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Meetings', 0, 0),
('bf8cca2e-f1c5-4b68-85c9-dde7b3362ee0', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c08b9841-b849-4792-a7b4-b1fce32dfc5a', 'surveyquestionoptions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c14bc2cb-4c7f-451d-8f38-6844c3ebd516', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c16aa0de-be05-4de4-b56b-e5ae1246ad11', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c24e92e3-eb06-4981-9170-dfc8eaa1efac', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('c2d97911-2e8e-4511-9fc6-9202294c1201', 'oauth2authcodes_assigned_user', 'Users', 'users', 'id', 'OAuth2AuthCodes', 'oauth2authcodes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c34982c7-bfd2-48ca-b867-329f220888f2', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c3838541-805e-4874-b897-214b73736f59', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c45e34bb-2289-47ac-a221-8b207dd305c4', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('c476709b-172b-46af-9b18-f9ca083dff84', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c5450a97-9518-4a1e-ae18-6bfe6c8e3964', 'securitygroups_externaloauthconnection', 'SecurityGroups', 'securitygroups', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ExternalOAuthConnection', 0, 0),
('c556998b-2be7-47d9-ac70-5f1489aec47c', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c59120d1-2bcb-4a23-b612-f79073801eab', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('c6267dbf-e83b-4aad-be40-84ee8c1eeae9', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('c62e74ea-abc9-4972-a2c1-1485511a3d7a', 'surveyresponses_modified_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c6ee7b23-dbf7-43e6-bd55-80fdc5831dd0', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('c6fa8287-9745-4717-9109-fa5ef8a74f58', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('c75ca1e4-5fa5-4525-9eaa-306166cf8c3b', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c7a2eda8-30af-4d24-bba6-fbfea0c48db8', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('c7b1c967-4272-491b-a552-c0aa4dcbab47', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c83ecf99-df49-454f-b477-610936db72ca', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('c95c78d4-c98c-4793-8c57-7ee3e04c51a8', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9662cdb-ae27-4edf-b872-2acfc49a38e7', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('ca491d57-2833-433b-bede-8970abd3553f', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('ca4cfe5c-bdac-4a02-87e8-efccd6b58abd', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cad30e36-ea21-4716-92ca-0bcddc1169c3', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb2436e5-5858-4051-a78c-4367ec364c75', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('cbd96a45-fcba-4b2e-8496-5ce5162cb3d6', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cc1a69a9-0eaf-4ef9-976d-977539af61c7', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('cc69a492-c2e1-405a-8bd7-b16154911b82', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('ccd9ee34-0a46-4df3-9650-5b60c71316a3', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cd2732e3-456d-4615-8fcb-ff0714c35077', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cdb24e5c-16ba-4dfa-8d3c-b45ddbb5cd24', 'surveyresponses_contacts', 'Contacts', 'contacts', 'id', 'SurveyResponses', 'surveyresponses', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cdb3ddfc-750d-443a-9ddc-0523098f0493', 'oauth2clients_oauth2authcodes', 'OAuth2Clients', 'oauth2clients', 'id', 'Oauth2AuthCodes', 'oauth2authcodes', 'client', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cdee9543-a5e6-49bc-b506-0d992c4b3eba', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ce72414e-4f9c-4d82-a98c-361efc3c0c43', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('cecf50c4-b321-4e57-ad8a-6e6c4e3f187d', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ceffefe6-d67c-4cf9-91bd-01cae62e7177', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cfdcebeb-8587-408c-a822-65a089d06e55', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d0807b45-3cbe-407c-8315-9a16670b1fb2', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('d0be2e2e-6917-4970-8bf3-677faedf02c8', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('d0facaaa-bf02-4984-bf90-93810c35a8c8', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('d2d81e77-bda3-4ed5-8e55-59a4129956b5', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d2f9a333-0daa-452f-b8f2-2157374358b6', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d3e13e31-ba7f-4863-af9c-37059fc820fc', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d587ff22-2db4-4543-ae29-d086b2981839', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d59dcff5-ca39-4af3-8edb-afab3480003d', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('d6533c89-f50e-4626-a83b-898d19c71c33', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('d6cca7a8-764c-4543-92f4-cf2534be15c9', 'securitygroups_emailmarketing', 'SecurityGroups', 'securitygroups', 'id', 'EmailMarketing', 'email_marketing', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailMarketing', 0, 0),
('d78bae0c-b258-4bf8-9361-b31923f74be5', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('d7ea5e26-6b96-4a25-93e4-a0b437861c7d', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('d7fd5281-00b3-4a7e-b301-bb3f92cbc7f0', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d88d829d-e6ed-4ac6-9378-abb9386ced4b', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8ae690b-2b94-4493-b294-aad4f72b5853', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('d92e6a3c-ec41-4a43-ae76-c77f3e8a4075', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d9cd9960-c18e-490e-97b2-7d0864679cef', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da22090c-60ba-4dd7-a8e6-cc3d487a5692', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('db104480-e931-4c30-a63b-0c93fb87d9ee', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dbc331de-ae7d-4c18-93c5-f978900aadcc', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dbd07dab-d424-4298-a8b5-7ca1071a314f', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('dc3268b2-13bd-4bac-9064-ca8edc8441b9', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dca36f82-09ab-4fd5-a0ab-9f3a2e38d245', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ddd1e714-3c15-4fc2-85a9-ac82f707bc2b', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('de677ea7-5681-49b1-a9d0-ca852ad140ae', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('de89605e-7097-48e5-8fa9-ec420c5a770b', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('e0cab33b-2d45-4d0d-a9b4-a93ce0a04d27', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('e0d915ae-f567-4e7b-8052-3ff0cb7dd6da', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e2f9160b-db5c-4f9a-b885-897bf2236857', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('e3064976-b9ab-439d-8091-718cf5ee769a', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3b7bdde-ded7-457a-9e57-828e2469e2a5', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3c021a8-bf12-482b-9b53-3ac354bf0df4', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e422a4fd-2f6f-4b91-976e-ec07fb7a8eeb', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e579550a-5634-41b2-bf65-57e7f8971921', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e60d9f8c-9215-4966-ae81-25243828e497', 'oauth2authcodes_modified_user', 'Users', 'users', 'id', 'OAuth2AuthCodes', 'oauth2authcodes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e696faa3-58c5-4aee-9175-0c308ed40ce5', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e7096a10-5f2d-4863-97ce-dd399b1e7115', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e73cf981-2f0c-485a-baa9-bb74cb8dd160', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('e7639550-a4ba-4410-ae2c-06e3ebb76875', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e773b99d-d902-4bc3-a776-ddccc4a64a93', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('e9183a8c-4643-4ea4-a41c-f07ce269d626', 'surveyresponses_accounts', 'Accounts', 'accounts', 'id', 'SurveyResponses', 'surveyresponses', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e9d5c5f9-bf1c-4d6e-938c-ef20df9af2b3', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('ea76cb92-058a-4a51-82a6-3f4988f913a4', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eac99da0-6953-4100-bea2-98ea03584276', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('ecf39491-ac47-4021-81ca-89617e3e27f1', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ed2a402a-d4f1-4e5e-b73b-7d8399d83af2', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee2b7ee7-bd12-4612-943e-bc2839d7e876', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('ee5163c6-223b-4527-a4de-9a7f34cb5f1b', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eea4c0b8-b38a-41c4-9023-7f9fb4ec3d9a', 'inbound_outbound_email_accounts', 'OutboundEmailAccounts', 'outbound_email', 'id', 'InboundEmail', 'inbound_email', 'outbound_email_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eec633a4-3309-478c-ae2c-b00544cc1b44', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef4f5877-8678-4acc-84e9-720ae17f5ff2', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef921569-15c2-43f3-95cf-32c16d3fd5e7', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('efde9406-99b6-433b-9290-bf44118022f6', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0ec6ca1-252f-4aad-96e9-b41d6dc34d9d', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f21705bb-0ae3-42d4-b4b9-5e598abb6380', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('f2880426-8dc7-4925-a3cd-2362c21c5623', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('f38f3cc3-127f-4193-b84c-95a7576345ca', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f3e23d73-5d52-4198-bea0-03d77b713c47', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f4409363-600d-42f5-8ba1-bac9c5157402', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('f44c0b14-a956-4663-8a50-ab5e8c8b938a', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f48b8560-0fd9-4c18-94a4-466bc947578d', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('f4c7ff2d-5a90-48f6-bad0-a3f93843e35b', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('f5ce9e42-8cb6-4ca6-a404-27e39503e2bc', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f71d1040-6107-46ca-b352-426af8a3213e', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f7bf35ac-48ca-4247-be4e-0e23a6fe000f', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('f8e07837-c165-4f91-b9e8-d1255c980659', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('f9541ff5-4ced-4320-a1db-d84047cbbafa', 'securitygroups_surveyquestions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestions', 'surveyquestions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestions', 0, 0),
('fb12e068-14d0-4640-90c8-33b266a0fb63', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('fba1341b-288d-4f5a-bbec-dd5f35e53df8', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('fbcc671e-32f4-4c46-9a90-e8033fa34804', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('fc2f9974-5d9c-4895-b8bc-3c479a74e8a8', 'oauth2tokens_assigned_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('fc8d770b-7e6b-4b05-9062-8f6050ef2645', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('fca3387f-ef2c-4246-80b0-a8d8a10f7fb3', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('fcb0c172-2a61-42b8-9103-bc0f70db8c4c', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('fe6e8bf2-0acf-4582-b884-85d20e483490', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('febf62e2-7eb2-47e3-b7e5-d0c40c1953b1', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('ff219b71-e405-4071-b6bb-3c2217ceda94', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('ff3fea03-96d4-4f48-a39b-f465a6de088b', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('ff4f68f6-64de-4dbe-8d52-d1bd3b9db029', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('fff9ed51-ca3e-4508-82ac-7f2b57d8769d', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int(60) DEFAULT -1,
  `popup_viewed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `modules` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('10d72959-3f47-4307-8857-a773e465df1a', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 09:45:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('12bcf286-db62-4658-b92a-7e85a4253eca', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 18:45:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('17d61957-f039-4f82-8783-837ab1e34c51', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 16:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('2dcedafe-54bd-4cd4-99b5-7bb0a6f9f27f', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 13:15:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('33dfafbd-d9af-403b-8084-fce79627b748', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 17:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('37a0ca06-9e0d-405b-b85a-207abf8c9110', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 08:15:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('41343fce-7527-4a3d-be28-f42d3b7176ef', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Perform Elasticsearch Index', 'function::runElasticSearchIndexerScheduler', '2015-01-01 12:45:01', NULL, '30::4::*::*::*', NULL, NULL, NULL, 'Active', 0),
('4277280c-28db-4dd4-9802-89205ed67937', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Calendar Accounts Sync', 'function::calendarSyncJob', '2015-01-01 12:15:01', NULL, '*/15::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('9a24323f-9cfc-4f66-afd9-845b962d1f8b', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 14:45:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('9a40b006-aa27-4e0b-a290-d082a606a102', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 12:00:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('ad2ad105-bef4-470e-a97e-c7700f90757c', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 11:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('ad2dd0de-ff76-4ebe-8bda-d6ca32d1e35c', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 10:15:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('e42a2982-3ba0-436d-bf90-32f47a387584', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 09:30:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('e9ffb8ba-e1e2-487c-9d73-4706d8d6da5d', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 13:30:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('efa30ed5-7438-4530-acdf-675b333fd97e', 0, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 15:15:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions`
--

CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions_audit`
--

CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionresponses`
--

CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionresponses_audit`
--

CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions`
--

CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions_audit`
--

CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses`
--

CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses_audit`
--

CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'LBL_DRAFT',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveys_audit`
--

CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT 0,
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT 0,
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templatesectionline`
--

CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(62, 'd4c8ede8-dc64-4e61-94fc-c1ad76a17812', '1', 'INT_Employees', 'a7c25b50-b0a9-11f1-8871-7eea964b83a4', 'Luka Krstev', '2026-09-15 11:02:22', 'detailview', 'b71c3b236e519b962ae30effcb252674', 1, 0),
(64, 'd895ed16-9f14-4ff4-87c3-53d5588361f1', '1', 'INT_Devices', '1b328680-09e6-4442-8400-3aff96e70fd0', 'DEV-002', '2026-09-15 11:12:52', 'editview', 'b71c3b236e519b962ae30effcb252674', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT 1,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `external_auth_only` tinyint(1) DEFAULT 0,
  `receive_notifications` tinyint(1) DEFAULT 1,
  `description` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT 0,
  `show_on_employees` tinyint(1) DEFAULT 1,
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`, `factor_auth`, `factor_auth_interface`) VALUES
('1', 'admin', '$2y$10$EgHc22ZaXtvc3dWOZMUt2uLwD5.0Lw6B8NMzhIWKWSgSeQtHAEQZm', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2026-09-14 13:47:04', '2026-09-14 13:47:04', '1', '1', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `keyhash` varchar(255) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `signature_html` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('1c037f79-5d60-45e0-9cec-6a8adf20b66a', 'Home2_MEETING', 0, '2026-09-14 13:47:34', '2026-09-14 13:47:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1f4c2785-2b2b-4117-848a-164bb9475fbe', 'INT_Devices2_INT_DEVICE', 0, '2026-09-15 07:31:02', '2026-09-15 07:31:02', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('431a0fd6-6546-4396-8744-589596ac22d0', 'Home2_LEAD', 0, '2026-09-14 13:47:34', '2026-09-14 13:47:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4f5c80e6-736b-47ec-b7d2-aa6b587071fa', 'Home', 0, '2026-09-14 13:47:34', '2026-09-14 13:47:34', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjJiZDA3YWM5LTUyZTEtNGVmZC1iMmQ4LTUyY2MwODdiMTZkZiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjE0NDY3YTc2LTlhZDAtNDMzNy1iOTNmLTNjMWM1MDU5YWRmMyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjY2NjY4YmRlLTM1ODEtNGYzMC1hNDMwLTU0ODAzOTNmYWJmZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjUwMmE2YzM3LTk4YTItNDI4My05MjAzLTZjNTAxNGQ3NTY5MCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNzVmNTMyMmItMWI3Ny00MzU4LWFjMGYtNGZlYmMzMTRmOTM4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMTQwMmFiNGItMGI1NS00NmUwLTgxNDMtZDIwN2RiMDhmM2RlIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIxNDQ2N2E3Ni05YWQwLTQzMzctYjkzZi0zYzFjNTA1OWFkZjMiO2k6MTtzOjM2OiI2NjY2OGJkZS0zNTgxLTRmMzAtYTQzMC01NDgwMzkzZmFiZmQiO2k6MjtzOjM2OiI1MDJhNmMzNy05OGEyLTQyODMtOTIwMy02YzUwMTRkNzU2OTAiO2k6MztzOjM2OiI3NWY1MzIyYi0xYjc3LTQzNTgtYWMwZi00ZmViYzMxNGY5MzgiO2k6NDtzOjM2OiIxNDAyYWI0Yi0wYjU1LTQ2ZTAtODE0My1kMjA3ZGIwOGYzZGUiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjJiZDA3YWM5LTUyZTEtNGVmZC1iMmQ4LTUyY2MwODdiMTZkZiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('50d4004e-7aad-4df6-a304-6adfe6a1cd68', 'Home2_OPPORTUNITY', 0, '2026-09-14 13:47:34', '2026-09-14 13:47:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('59448102-8b08-4ebe-b512-b1ab3862efbe', 'Home2_CALL', 0, '2026-09-14 13:47:34', '2026-09-14 13:47:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('75d69117-c6ea-4623-ad42-c69def8e0b0f', 'global', 0, '2026-09-14 13:47:04', '2026-09-15 10:33:06', '1', 'YToyMjp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjNhZWFlNDNkLTU5ZWUtNDMxZS1iNGQ5LTA5OTk4NDgzMzhmZCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7YjowO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtiOjA7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtiOjE7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtiOjA7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjg6InRpbWV6b25lIjtzOjM6IlVUQyI7czoyOiJ1dCI7czoxOiIxIjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7YjoxO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6MTI6IklOVF9EZXZpY2VzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE0OiJJTlRfRW1wbG95ZWVzUSI7YToxNjp7czo2OiJtb2R1bGUiO3M6MTM6IklOVF9FbXBsb3llZXMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7czo3OiJvcmRlckJ5IjtzOjA6IiI7czo5OiJzb3J0T3JkZXIiO3M6MDoiIjtzOjE5OiJlbXBsb3llZV9jb2RlX2Jhc2ljIjtzOjA6IiI7czoxNjoiZmlyc3RfbmFtZV9iYXNpYyI7czo0OiJMdWthIjtzOjE1OiJsYXN0X25hbWVfYmFzaWMiO3M6MDoiIjtzOjY6ImJ1dHRvbiI7czo2OiJTZWFyY2giO3M6OToiUEhQU0VTU0lEIjtzOjMyOiJiNzFjM2IyMzZlNTE5Yjk2MmFlMzBlZmZjYjI1MjY3NCI7czoxNjoic3VnYXJfdXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6ImNrX2xvZ2luX2lkXzIwIjtzOjE6IjEiO3M6MjA6ImNrX2xvZ2luX2xhbmd1YWdlXzIwIjtzOjU6ImVuX3VzIjtzOjIwOiJJTlRfRW1wbG95ZWVzX3NwX3RhYiI7czozOiJBbGwiO3M6NzoiU1BYX0tFWSI7czozMjoiMDgyM2VjZDllMWEyZDExYmJjZjgyZTQwN2ExNTdiNTEiO319'),
('78d332da-b82e-476b-b968-9af2de31c5e9', 'INT_Employees2_INT_EMPLOYEE', 0, '2026-09-15 07:50:28', '2026-09-15 07:50:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7f4ef9b6-4c97-44b6-a6a8-b8a41664d942', 'Home2_SUGARFEED', 0, '2026-09-14 13:47:34', '2026-09-14 13:47:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('901fb9d0-96bf-4ba2-b466-bdfdc7b391b7', 'Home2_ACCOUNT', 0, '2026-09-14 13:47:34', '2026-09-14 13:47:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e6987ec5-af43-47a1-90b9-ce65e4c0ab39', 'Home2_LEAD_1402ab4b-0b55-46e0-8143-d207db08f3de', 0, '2026-09-14 13:47:36', '2026-09-14 13:47:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indexes for table `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indexes for table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indexes for table `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indexes for table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indexes for table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Indexes for table `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Indexes for table `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Indexes for table `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Indexes for table `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Indexes for table `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Indexes for table `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Indexes for table `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Indexes for table `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Indexes for table `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Indexes for table `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Indexes for table `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Indexes for table `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Indexes for table `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Indexes for table `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Indexes for table `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Indexes for table `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Indexes for table `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Indexes for table `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Indexes for table `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Indexes for table `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Indexes for table `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indexes for table `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indexes for table `calendar_accounts`
--
ALTER TABLE `calendar_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cal_acct_user_type_status` (`calendar_user_id`,`type`,`last_connection_status`,`deleted`),
  ADD KEY `idx_cal_acct_external_cal_id` (`external_calendar_id`);

--
-- Indexes for table `calendar_accounts_audit`
--
ALTER TABLE `calendar_accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calendar_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `calendar_account_meetings`
--
ALTER TABLE `calendar_account_meetings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_calendar_account_meeting` (`calendar_account_id`,`meeting_id`),
  ADD KEY `idx_cal_acc_mtg_cal` (`calendar_account_id`),
  ADD KEY `idx_cal_acc_mtg_mtg` (`meeting_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indexes for table `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indexes for table `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Indexes for table `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`),
  ADD KEY `idx_survey_id` (`survey_id`);

--
-- Indexes for table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indexes for table `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indexes for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indexes for table `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indexes for table `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indexes for table `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indexes for table `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indexes for table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indexes for table `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indexes for table `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indexes for table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indexes for table `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indexes for table `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indexes for table `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indexes for table `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indexes for table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indexes for table `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indexes for table `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indexes for table `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  ADD KEY `idx_email_cat` (`category_id`),
  ADD KEY `idx_email_uid` (`uid`),
  ADD KEY `idx_email_uid_mailbox` (`uid`,`mailbox_id`);

--
-- Indexes for table `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indexes for table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indexes for table `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indexes for table `email_addresses_audit`
--
ALTER TABLE `email_addresses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_addresses_parent_id` (`parent_id`);

--
-- Indexes for table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indexes for table `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indexes for table `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indexes for table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`),
  ADD KEY `idx_emp_prospect_list_id` (`prospect_list_id`,`deleted`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indexes for table `external_oauth_connections`
--
ALTER TABLE `external_oauth_connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `external_oauth_providers`
--
ALTER TABLE `external_oauth_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indexes for table `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indexes for table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indexes for table `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Indexes for table `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Indexes for table `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Indexes for table `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Indexes for table `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Indexes for table `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`),
  ADD KEY `idx_events_prospects_prospect_id` (`fp_events_prospects_1prospects_idb`,`deleted`,`fp_events_prospects_1fp_events_ida`);

--
-- Indexes for table `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Indexes for table `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Indexes for table `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indexes for table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `int_devices`
--
ALTER TABLE `int_devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_int_devices_asset_code` (`asset_code`),
  ADD KEY `idx_int_devices_serial` (`serial_number`),
  ADD KEY `idx_int_devices_deleted` (`deleted`);

--
-- Indexes for table `int_devices_audit`
--
ALTER TABLE `int_devices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_int_devices_parent_id` (`parent_id`);

--
-- Indexes for table `int_employees`
--
ALTER TABLE `int_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_int_employees_employee_code` (`employee_code`),
  ADD KEY `idx_int_employees_email` (`email`),
  ADD KEY `idx_int_employees_deleted` (`deleted`);

--
-- Indexes for table `int_employees_audit`
--
ALTER TABLE `int_employees_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_int_employees_parent_id` (`parent_id`);

--
-- Indexes for table `int_employees_int_devices_1_c`
--
ALTER TABLE `int_employees_int_devices_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `int_employees_int_devices_1_ida1` (`int_employees_int_devices_1int_employees_ida`),
  ADD KEY `int_employees_int_devices_1_alt` (`int_employees_int_devices_1int_devices_idb`);

--
-- Indexes for table `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Indexes for table `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Indexes for table `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Indexes for table `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indexes for table `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indexes for table `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indexes for table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indexes for table `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indexes for table `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `oauth2authcodes`
--
ALTER TABLE `oauth2authcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth2clients`
--
ALTER TABLE `oauth2clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth2tokens`
--
ALTER TABLE `oauth2tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indexes for table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indexes for table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indexes for table `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indexes for table `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indexes for table `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indexes for table `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indexes for table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indexes for table `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indexes for table `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Indexes for table `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indexes for table `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indexes for table `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`,`deleted`);

--
-- Indexes for table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`,`related_type`,`related_id`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indexes for table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`,`deleted`),
  ADD KEY `idx_cam_id` (`campaign_id`,`deleted`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Indexes for table `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indexes for table `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indexes for table `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indexes for table `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indexes for table `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Indexes for table `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Indexes for table `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Indexes for table `surveyquestionoptions`
--
ALTER TABLE `surveyquestionoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestionoptions_audit`
--
ALTER TABLE `surveyquestionoptions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionoptions_parent_id` (`parent_id`);

--
-- Indexes for table `surveyquestionoptions_surveyquestionresponses`
--
ALTER TABLE `surveyquestionoptions_surveyquestionresponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`);

--
-- Indexes for table `surveyquestionresponses`
--
ALTER TABLE `surveyquestionresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestionresponses_audit`
--
ALTER TABLE `surveyquestionresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionresponses_parent_id` (`parent_id`);

--
-- Indexes for table `surveyquestions`
--
ALTER TABLE `surveyquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestions_audit`
--
ALTER TABLE `surveyquestions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestions_parent_id` (`parent_id`);

--
-- Indexes for table `surveyresponses`
--
ALTER TABLE `surveyresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyresponses_audit`
--
ALTER TABLE `surveyresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyresponses_parent_id` (`parent_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys_audit`
--
ALTER TABLE `surveys_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveys_parent_id` (`parent_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indexes for table `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indexes for table `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`);

--
-- Indexes for table `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indexes for table `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indexes for table `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
